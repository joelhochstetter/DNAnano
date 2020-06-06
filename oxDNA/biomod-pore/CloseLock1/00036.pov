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
	<23.810745, 34.841396, 34.764965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158766, 34.982346, 34.902859>,  <24.367579, 35.066914, 34.985596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158766, 34.982346, 34.902859>,  <23.810745, 34.841396, 34.764965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158766, 34.982346, 34.902859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147724, -0.480819, 0.864286,
		0.470304, -0.802901, -0.366285,
		0.870053, 0.352368, 0.344739,
		24.419781, 35.088055, 35.006279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322796, 34.303604, 35.016003>,  <23.810745, 34.841396, 34.764965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322796, 34.303604, 35.016003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347290, 34.637325, 35.235165>,  <24.361986, 34.837559, 35.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347290, 34.637325, 35.235165>,  <24.322796, 34.303604, 35.016003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347290, 34.637325, 35.235165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223531, -0.523526, 0.822165,
		0.972771, -0.172817, 0.154434,
		0.061234, 0.834299, 0.547901,
		24.365660, 34.887615, 35.399536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764692, 34.074570, 35.637047>,  <24.322796, 34.303604, 35.016003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764692, 34.074570, 35.637047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533634, 34.396801, 35.689774>,  <24.395000, 34.590137, 35.721409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533634, 34.396801, 35.689774>,  <24.764692, 34.074570, 35.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533634, 34.396801, 35.689774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423436, -0.433767, 0.795329,
		0.697875, 0.403601, 0.591673,
		-0.577644, 0.805576, 0.131816,
		24.360340, 34.638474, 35.729317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089300, 34.096016, 34.964470>,  <24.764692, 34.074570, 35.637047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089300, 34.096016, 34.964470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084696, 34.312172, 35.301003>,  <25.081932, 34.441868, 35.502922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084696, 34.312172, 35.301003>,  <25.089300, 34.096016, 34.964470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084696, 34.312172, 35.301003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168092, 0.828371, -0.534366,
		-0.985704, -0.147573, 0.081300,
		-0.011512, 0.540392, 0.841334,
		25.081242, 34.474289, 35.553402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610855, 34.334473, 34.360535>,  <25.089300, 34.096016, 34.964470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610855, 34.334473, 34.360535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641382, 34.277554, 33.965782>,  <24.659698, 34.243401, 33.728931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641382, 34.277554, 33.965782>,  <24.610855, 34.334473, 34.360535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641382, 34.277554, 33.965782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020824, -0.989320, 0.144264,
		-0.996866, -0.031561, -0.072541,
		0.076319, -0.142301, -0.986877,
		24.664278, 34.234863, 33.669720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106281, 33.844601, 34.081547>,  <24.610855, 34.334473, 34.360535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106281, 33.844601, 34.081547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461477, 33.867203, 33.898994>,  <24.674595, 33.880764, 33.789463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461477, 33.867203, 33.898994>,  <24.106281, 33.844601, 34.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461477, 33.867203, 33.898994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044266, -0.998317, -0.037468,
		-0.457731, 0.013069, -0.888995,
		0.887988, 0.056503, -0.456382,
		24.727873, 33.884155, 33.762081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061951, 33.317459, 33.586948>,  <24.106281, 33.844601, 34.081547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061951, 33.317459, 33.586948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458342, 33.369541, 33.599659>,  <24.696177, 33.400791, 33.607285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458342, 33.369541, 33.599659>,  <24.061951, 33.317459, 33.586948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458342, 33.369541, 33.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132062, -0.989055, -0.065795,
		0.022857, 0.069397, -0.997327,
		0.990978, 0.130205, 0.031772,
		24.755634, 33.408604, 33.609192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.368671, 32.864498, 33.134220>,  <24.061951, 33.317459, 33.586948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.368671, 32.864498, 33.134220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660717, 32.944679, 33.395527>,  <24.835943, 32.992786, 33.552311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660717, 32.944679, 33.395527>,  <24.368671, 32.864498, 33.134220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660717, 32.944679, 33.395527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267219, -0.963631, -0.002964,
		0.628912, 0.176728, -0.757124,
		0.730112, 0.200454, 0.653264,
		24.879751, 33.004814, 33.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799419, 32.303474, 32.991753>,  <24.368671, 32.864498, 33.134220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799419, 32.303474, 32.991753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966419, 32.451908, 33.323536>,  <25.066618, 32.540966, 33.522606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966419, 32.451908, 33.323536>,  <24.799419, 32.303474, 32.991753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966419, 32.451908, 33.323536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546474, -0.831830, 0.097081,
		0.725990, 0.412744, -0.550073,
		0.417498, 0.371080, 0.829455,
		25.091669, 32.563232, 33.572372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463902, 32.277191, 32.906326>,  <24.799419, 32.303474, 32.991753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463902, 32.277191, 32.906326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402817, 32.269184, 33.301552>,  <25.366167, 32.264381, 33.538689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402817, 32.269184, 33.301552>,  <25.463902, 32.277191, 32.906326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402817, 32.269184, 33.301552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494532, -0.867164, 0.058865,
		0.855639, 0.497620, 0.142324,
		-0.152710, -0.020017, 0.988068,
		25.357004, 32.263180, 33.597973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922590, 31.757498, 33.163643>,  <25.463902, 32.277191, 32.906326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922590, 31.757498, 33.163643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688866, 31.813774, 33.483341>,  <25.548632, 31.847540, 33.675159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.688866, 31.813774, 33.483341>,  <25.922590, 31.757498, 33.163643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688866, 31.813774, 33.483341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396801, -0.809572, 0.432600,
		0.707906, 0.569913, 0.417215,
		-0.584310, 0.140689, 0.799243,
		25.513573, 31.855980, 33.723114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462770, 31.715460, 33.765755>,  <25.922590, 31.757498, 33.163643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462770, 31.715460, 33.765755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093922, 31.668505, 33.913219>,  <25.872612, 31.640331, 34.001698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093922, 31.668505, 33.913219>,  <26.462770, 31.715460, 33.765755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093922, 31.668505, 33.913219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303170, -0.811235, 0.499987,
		0.240381, 0.572816, 0.783645,
		-0.922120, -0.117390, 0.368666,
		25.817286, 31.633287, 34.023819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661539, 31.568279, 34.471020>,  <26.462770, 31.715460, 33.765755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661539, 31.568279, 34.471020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280163, 31.448666, 34.455383>,  <26.051336, 31.376898, 34.446003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280163, 31.448666, 34.455383>,  <26.661539, 31.568279, 34.471020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280163, 31.448666, 34.455383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197113, -0.716011, 0.669683,
		-0.228244, 0.630799, 0.741618,
		-0.953442, -0.299034, -0.039087,
		25.994131, 31.358955, 34.443657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460457, 31.680719, 35.088825>,  <26.661539, 31.568279, 34.471020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460457, 31.680719, 35.088825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226690, 31.405512, 34.916740>,  <26.086430, 31.240387, 34.813488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226690, 31.405512, 34.916740>,  <26.460457, 31.680719, 35.088825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226690, 31.405512, 34.916740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177578, -0.625767, 0.759527,
		-0.791784, 0.367485, 0.487887,
		-0.584418, -0.688019, -0.430214,
		26.051365, 31.199106, 34.787678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947271, 31.493391, 35.608559>,  <26.460457, 31.680719, 35.088825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947271, 31.493391, 35.608559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975264, 31.184561, 35.355892>,  <25.992060, 30.999264, 35.204292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975264, 31.184561, 35.355892>,  <25.947271, 31.493391, 35.608559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975264, 31.184561, 35.355892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180688, -0.612936, 0.769195,
		-0.981047, -0.167965, 0.096609,
		0.069983, -0.772073, -0.631668,
		25.996258, 30.952938, 35.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623917, 30.895399, 35.954704>,  <25.947271, 31.493391, 35.608559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623917, 30.895399, 35.954704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841221, 30.736103, 35.659061>,  <25.971603, 30.640526, 35.481678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841221, 30.736103, 35.659061>,  <25.623917, 30.895399, 35.954704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841221, 30.736103, 35.659061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345372, -0.696396, 0.629086,
		-0.765234, -0.597025, -0.240786,
		0.543263, -0.398237, -0.739102,
		26.004200, 30.616632, 35.437332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466623, 30.156723, 35.929516>,  <25.623917, 30.895399, 35.954704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466623, 30.156723, 35.929516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817711, 30.195625, 35.741833>,  <26.028362, 30.218967, 35.629223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817711, 30.195625, 35.741833>,  <25.466623, 30.156723, 35.929516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817711, 30.195625, 35.741833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351572, -0.796038, 0.492666,
		-0.325589, -0.597381, -0.732890,
		0.877718, 0.097257, -0.469204,
		26.081026, 30.224802, 35.601070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609087, 29.545494, 35.643414>,  <25.466623, 30.156723, 35.929516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609087, 29.545494, 35.643414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959513, 29.734854, 35.680088>,  <26.169767, 29.848469, 35.702091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959513, 29.734854, 35.680088>,  <25.609087, 29.545494, 35.643414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959513, 29.734854, 35.680088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386123, -0.802611, 0.454670,
		0.288827, -0.362919, -0.885928,
		0.876064, 0.473398, 0.091684,
		26.222332, 29.876873, 35.707592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066090, 29.067255, 35.533768>,  <25.609087, 29.545494, 35.643414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066090, 29.067255, 35.533768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298450, 29.352648, 35.690479>,  <26.437868, 29.523884, 35.784508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298450, 29.352648, 35.690479>,  <26.066090, 29.067255, 35.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298450, 29.352648, 35.690479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545407, -0.698474, 0.463320,
		0.604220, -0.055464, -0.794885,
		0.580904, 0.713483, 0.391781,
		26.472721, 29.566692, 35.808014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758547, 28.866402, 35.399353>,  <26.066090, 29.067255, 35.533768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758547, 28.866402, 35.399353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769245, 29.111877, 35.714993>,  <26.775663, 29.259163, 35.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769245, 29.111877, 35.714993>,  <26.758547, 28.866402, 35.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769245, 29.111877, 35.714993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571781, -0.656888, 0.491492,
		0.819970, 0.438045, -0.368464,
		0.026744, 0.613690, 0.789094,
		26.777269, 29.295984, 35.951721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498878, 28.958277, 35.590225>,  <26.758547, 28.866402, 35.399353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498878, 28.958277, 35.590225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306656, 29.058184, 35.926483>,  <27.191322, 29.118128, 36.128239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306656, 29.058184, 35.926483>,  <27.498878, 28.958277, 35.590225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306656, 29.058184, 35.926483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535365, -0.675680, 0.506795,
		0.694587, 0.693595, 0.190985,
		-0.480555, 0.249766, 0.840645,
		27.162489, 29.133114, 36.178677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032558, 28.763124, 36.161289>,  <27.498878, 28.958277, 35.590225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032558, 28.763124, 36.161289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686354, 28.816298, 36.354458>,  <27.478630, 28.848202, 36.470360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686354, 28.816298, 36.354458>,  <28.032558, 28.763124, 36.161289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686354, 28.816298, 36.354458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266739, -0.693735, 0.669016,
		0.423954, 0.707857, 0.564978,
		-0.865513, 0.132930, 0.482925,
		27.426701, 28.856176, 36.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173950, 29.054008, 36.835278>,  <28.032558, 28.763124, 36.161289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173950, 29.054008, 36.835278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816282, 28.881575, 36.883648>,  <27.601681, 28.778114, 36.912670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816282, 28.881575, 36.883648>,  <28.173950, 29.054008, 36.835278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816282, 28.881575, 36.883648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405563, -0.665455, 0.626648,
		-0.189669, 0.609373, 0.769864,
		-0.894172, -0.431084, 0.120923,
		27.548031, 28.752249, 36.919926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012779, 28.941673, 37.644371>,  <28.173950, 29.054008, 36.835278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012779, 28.941673, 37.644371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832632, 28.673788, 37.408184>,  <27.724545, 28.513058, 37.266472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832632, 28.673788, 37.408184>,  <28.012779, 28.941673, 37.644371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832632, 28.673788, 37.408184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351738, -0.740939, 0.572092,
		-0.820640, 0.049960, 0.569257,
		-0.450367, -0.669712, -0.590471,
		27.697521, 28.472874, 37.231041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506624, 28.638823, 38.038982>,  <28.012779, 28.941673, 37.644371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506624, 28.638823, 38.038982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694942, 28.440794, 37.746883>,  <27.807934, 28.321978, 37.571625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694942, 28.440794, 37.746883>,  <27.506624, 28.638823, 38.038982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694942, 28.440794, 37.746883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481812, -0.549102, 0.682894,
		-0.739059, -0.673344, -0.019984,
		0.470796, -0.495070, -0.730244,
		27.836182, 28.292273, 37.527809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530081, 27.862597, 38.247383>,  <27.506624, 28.638823, 38.038982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530081, 27.862597, 38.247383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822695, 27.989784, 38.006134>,  <27.998262, 28.066097, 37.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822695, 27.989784, 38.006134>,  <27.530081, 27.862597, 38.247383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822695, 27.989784, 38.006134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672507, -0.482105, 0.561524,
		-0.112219, -0.816375, -0.566514,
		0.731534, 0.317971, -0.603119,
		28.042154, 28.085176, 37.825199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903322, 27.212587, 38.046276>,  <27.530081, 27.862597, 38.247383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903322, 27.212587, 38.046276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152142, 27.506783, 37.938858>,  <28.301434, 27.683300, 37.874405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152142, 27.506783, 37.938858>,  <27.903322, 27.212587, 38.046276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152142, 27.506783, 37.938858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782971, -0.582713, 0.217718,
		0.003643, -0.345695, -0.938340,
		0.622047, 0.735486, -0.268547,
		28.338757, 27.727428, 37.858295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374262, 26.751789, 38.029690>,  <27.903322, 27.212587, 38.046276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374262, 26.751789, 38.029690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564054, 26.943306, 37.734226>,  <28.677931, 27.058216, 37.556946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564054, 26.943306, 37.734226>,  <28.374262, 26.751789, 38.029690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564054, 26.943306, 37.734226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693358, 0.720272, 0.021492,
		0.542328, 0.501960, 0.673734,
		0.474484, 0.478794, -0.738662,
		28.706400, 27.086945, 37.512627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068420, 26.856390, 38.180759>,  <28.374262, 26.751789, 38.029690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068420, 26.856390, 38.180759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839333, 26.528688, 38.192184>,  <28.701880, 26.332067, 38.199039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839333, 26.528688, 38.192184>,  <29.068420, 26.856390, 38.180759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839333, 26.528688, 38.192184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235298, -0.197665, -0.951611,
		0.785256, -0.538286, 0.305975,
		-0.572720, -0.819254, 0.028560,
		28.667517, 26.282913, 38.200752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532055, 26.374441, 37.789936>,  <29.068420, 26.856390, 38.180759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532055, 26.374441, 37.789936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139759, 26.305384, 37.753395>,  <28.904381, 26.263950, 37.731472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139759, 26.305384, 37.753395>,  <29.532055, 26.374441, 37.789936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139759, 26.305384, 37.753395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054373, 0.207885, -0.976641,
		0.187589, -0.962799, -0.194495,
		-0.980742, -0.172632, -0.091347,
		28.845537, 26.253592, 37.725990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368883, 25.941278, 37.128708>,  <29.532055, 26.374441, 37.789936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368883, 25.941278, 37.128708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030918, 26.130831, 37.227951>,  <28.828138, 26.244562, 37.287498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030918, 26.130831, 37.227951>,  <29.368883, 25.941278, 37.128708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030918, 26.130831, 37.227951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151460, 0.232911, -0.960631,
		-0.513012, -0.849229, -0.125016,
		-0.844913, 0.473881, 0.248110,
		28.777445, 26.272995, 37.302383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766472, 25.718796, 36.706989>,  <29.368883, 25.941278, 37.128708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766472, 25.718796, 36.706989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808817, 26.102055, 36.813381>,  <28.834225, 26.332010, 36.877216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808817, 26.102055, 36.813381>,  <28.766472, 25.718796, 36.706989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808817, 26.102055, 36.813381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289836, 0.226140, -0.929976,
		-0.951203, 0.175541, -0.253766,
		0.105862, 0.958147, 0.265983,
		28.840576, 26.389500, 36.893177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172167, 26.098604, 36.352592>,  <28.766472, 25.718796, 36.706989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172167, 26.098604, 36.352592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545757, 26.222530, 36.423813>,  <28.769911, 26.296886, 36.466545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545757, 26.222530, 36.423813>,  <28.172167, 26.098604, 36.352592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545757, 26.222530, 36.423813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197613, -0.032667, -0.979736,
		-0.297722, 0.950235, -0.091734,
		0.933976, 0.309817, 0.178053,
		28.825951, 26.315475, 36.477230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341133, 26.791866, 36.162384>,  <28.172167, 26.098604, 36.352592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341133, 26.791866, 36.162384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679613, 26.583828, 36.115993>,  <28.882700, 26.459005, 36.088158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679613, 26.583828, 36.115993>,  <28.341133, 26.791866, 36.162384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679613, 26.583828, 36.115993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028292, 0.173493, -0.984429,
		0.532116, 0.836303, 0.132095,
		0.846198, -0.520094, -0.115979,
		28.933472, 26.427799, 36.081200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998217, 27.174288, 36.033249>,  <28.341133, 26.791866, 36.162384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998217, 27.174288, 36.033249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007275, 26.836916, 35.818546>,  <29.012711, 26.634493, 35.689724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007275, 26.836916, 35.818546>,  <28.998217, 27.174288, 36.033249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007275, 26.836916, 35.818546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015620, 0.537130, -0.843355,
		0.999621, 0.010716, 0.025339,
		0.022648, -0.843431, -0.536760,
		29.014069, 26.583887, 35.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672899, 27.050066, 35.536003>,  <28.998217, 27.174288, 36.033249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672899, 27.050066, 35.536003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336773, 26.904175, 35.375584>,  <29.135098, 26.816641, 35.279331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336773, 26.904175, 35.375584>,  <29.672899, 27.050066, 35.536003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336773, 26.904175, 35.375584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035113, 0.701638, -0.711668,
		0.540955, -0.612109, -0.576792,
		-0.840318, -0.364728, -0.401048,
		29.084677, 26.794756, 35.255268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788660, 26.878567, 34.931023>,  <29.672899, 27.050066, 35.536003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788660, 26.878567, 34.931023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393307, 26.939245, 34.927334>,  <29.156094, 26.975653, 34.925121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393307, 26.939245, 34.927334>,  <29.788660, 26.878567, 34.931023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393307, 26.939245, 34.927334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124003, 0.769890, -0.626013,
		-0.087863, -0.619885, -0.779758,
		-0.988384, 0.151696, -0.009223,
		29.096792, 26.984755, 34.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666847, 27.115612, 34.255215>,  <29.788660, 26.878567, 34.931023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666847, 27.115612, 34.255215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338242, 27.233150, 34.450672>,  <29.141079, 27.303675, 34.567947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338242, 27.233150, 34.450672>,  <29.666847, 27.115612, 34.255215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338242, 27.233150, 34.450672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008665, 0.850446, -0.525991,
		-0.570124, -0.436342, -0.696107,
		-0.821513, 0.293848, 0.488640,
		29.091787, 27.321304, 34.597263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138958, 27.480331, 33.822609>,  <29.666847, 27.115612, 34.255215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138958, 27.480331, 33.822609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046976, 27.593779, 34.194992>,  <28.991787, 27.661848, 34.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046976, 27.593779, 34.194992>,  <29.138958, 27.480331, 33.822609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046976, 27.593779, 34.194992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205423, 0.920894, -0.331295,
		-0.951274, -0.267422, -0.153502,
		-0.229955, 0.283620, 0.930957,
		28.977989, 27.678865, 34.474277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411095, 27.864201, 33.762852>,  <29.138958, 27.480331, 33.822609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411095, 27.864201, 33.762852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597469, 27.988205, 34.094345>,  <28.709293, 28.062609, 34.293240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597469, 27.988205, 34.094345>,  <28.411095, 27.864201, 33.762852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597469, 27.988205, 34.094345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164540, 0.950633, -0.263104,
		-0.869385, -0.013770, 0.493943,
		0.465936, 0.310013, 0.828732,
		28.737249, 28.081209, 34.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939184, 28.241108, 34.196423>,  <28.411095, 27.864201, 33.762852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939184, 28.241108, 34.196423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305634, 28.356848, 34.307411>,  <28.525503, 28.426292, 34.374004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305634, 28.356848, 34.307411>,  <27.939184, 28.241108, 34.196423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305634, 28.356848, 34.307411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253249, 0.954253, -0.158953,
		-0.310772, 0.075351, 0.947493,
		0.916125, 0.289350, 0.277473,
		28.580471, 28.443653, 34.390652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818104, 28.766716, 34.637913>,  <27.939184, 28.241108, 34.196423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818104, 28.766716, 34.637913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202755, 28.827702, 34.546673>,  <28.433546, 28.864294, 34.491928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202755, 28.827702, 34.546673>,  <27.818104, 28.766716, 34.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202755, 28.827702, 34.546673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167819, 0.984580, -0.049380,
		0.217053, 0.085764, 0.972385,
		0.961626, 0.152466, -0.228099,
		28.491243, 28.873442, 34.478245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962616, 29.418613, 34.885422>,  <27.818104, 28.766716, 34.637913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962616, 29.418613, 34.885422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275810, 29.377411, 34.640041>,  <28.463728, 29.352690, 34.492813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275810, 29.377411, 34.640041>,  <27.962616, 29.418613, 34.885422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275810, 29.377411, 34.640041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005202, 0.987244, -0.159129,
		0.622017, 0.121405, 0.773535,
		0.782987, -0.103004, -0.613451,
		28.510706, 29.346510, 34.456005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463604, 29.930347, 35.100204>,  <27.962616, 29.418613, 34.885422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463604, 29.930347, 35.100204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551706, 29.836998, 34.721359>,  <28.604568, 29.780989, 34.494053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551706, 29.836998, 34.721359>,  <28.463604, 29.930347, 35.100204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551706, 29.836998, 34.721359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066415, 0.972293, -0.224131,
		0.973178, -0.013536, 0.229655,
		0.220258, -0.233372, -0.947113,
		28.617785, 29.766987, 34.437225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981340, 30.367090, 34.912361>,  <28.463604, 29.930347, 35.100204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981340, 30.367090, 34.912361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816095, 30.244316, 34.569401>,  <28.716948, 30.170652, 34.363625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816095, 30.244316, 34.569401>,  <28.981340, 30.367090, 34.912361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816095, 30.244316, 34.569401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141465, 0.951691, -0.272528,
		0.899624, 0.008707, -0.436578,
		-0.413115, -0.306933, -0.857396,
		28.692162, 30.152237, 34.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305891, 30.742926, 34.423145>,  <28.981340, 30.367090, 34.912361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305891, 30.742926, 34.423145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983900, 30.627403, 34.215836>,  <28.790707, 30.558090, 34.091450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983900, 30.627403, 34.215836>,  <29.305891, 30.742926, 34.423145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983900, 30.627403, 34.215836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147719, 0.943579, -0.296376,
		0.574624, -0.162017, -0.802221,
		-0.804976, -0.288808, -0.518270,
		28.742407, 30.540760, 34.060356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231874, 31.013214, 33.724392>,  <29.305891, 30.742926, 34.423145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231874, 31.013214, 33.724392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846205, 30.915970, 33.766853>,  <28.614803, 30.857624, 33.792332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846205, 30.915970, 33.766853>,  <29.231874, 31.013214, 33.724392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846205, 30.915970, 33.766853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258424, 0.770408, -0.582828,
		0.059908, -0.589380, -0.805631,
		-0.964172, -0.243111, 0.106157,
		28.556953, 30.843037, 33.798698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866035, 31.103598, 33.017532>,  <29.231874, 31.013214, 33.724392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866035, 31.103598, 33.017532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615368, 31.119844, 33.328823>,  <28.464968, 31.129593, 33.515598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615368, 31.119844, 33.328823>,  <28.866035, 31.103598, 33.017532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615368, 31.119844, 33.328823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436787, 0.808723, -0.393935,
		-0.645370, -0.586786, -0.489060,
		-0.626670, 0.040619, 0.778226,
		28.427366, 31.132030, 33.562290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281488, 31.272003, 32.646912>,  <28.866035, 31.103598, 33.017532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281488, 31.272003, 32.646912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175535, 31.348433, 33.024975>,  <28.111963, 31.394291, 33.251812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175535, 31.348433, 33.024975>,  <28.281488, 31.272003, 32.646912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175535, 31.348433, 33.024975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627837, 0.709773, -0.319441,
		-0.731887, -0.678021, -0.068042,
		-0.264882, 0.191075, 0.945160,
		28.096071, 31.405754, 33.308521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522707, 31.324625, 32.705231>,  <28.281488, 31.272003, 32.646912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522707, 31.324625, 32.705231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703260, 31.533493, 32.994667>,  <27.811592, 31.658813, 33.168331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703260, 31.533493, 32.994667>,  <27.522707, 31.324625, 32.705231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703260, 31.533493, 32.994667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468095, 0.828936, -0.306189,
		-0.759697, -0.200501, 0.618595,
		0.451384, 0.522172, 0.723594,
		27.838676, 31.690145, 33.211746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990072, 31.778870, 32.838875>,  <27.522707, 31.324625, 32.705231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990072, 31.778870, 32.838875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307756, 31.915386, 33.039970>,  <27.498367, 31.997295, 33.160629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307756, 31.915386, 33.039970>,  <26.990072, 31.778870, 32.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307756, 31.915386, 33.039970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316772, 0.938592, -0.136748,
		-0.518540, -0.050647, 0.853552,
		0.794212, 0.341290, 0.502741,
		27.546021, 32.017773, 33.190792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669191, 32.325432, 33.270699>,  <26.990072, 31.778870, 32.838875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669191, 32.325432, 33.270699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065979, 32.374935, 33.260239>,  <27.304050, 32.404636, 33.253963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065979, 32.374935, 33.260239>,  <26.669191, 32.325432, 33.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065979, 32.374935, 33.260239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124534, 0.991750, -0.030366,
		0.022179, 0.033379, 0.999197,
		0.991967, 0.123761, -0.026152,
		27.363569, 32.412064, 33.252392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819458, 32.832211, 33.764759>,  <26.669191, 32.325432, 33.270699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819458, 32.832211, 33.764759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122473, 32.844372, 33.503925>,  <27.304281, 32.851669, 33.347424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122473, 32.844372, 33.503925>,  <26.819458, 32.832211, 33.764759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122473, 32.844372, 33.503925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155300, 0.978630, -0.134780,
		0.634052, 0.203370, 0.746069,
		0.757536, 0.030407, -0.652085,
		27.349733, 32.853493, 33.308300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224869, 33.366779, 33.973148>,  <26.819458, 32.832211, 33.764759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224869, 33.366779, 33.973148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305336, 33.291260, 33.588673>,  <27.353617, 33.245949, 33.357986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305336, 33.291260, 33.588673>,  <27.224869, 33.366779, 33.973148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305336, 33.291260, 33.588673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066456, 0.976358, -0.205690,
		0.977300, 0.105255, 0.183864,
		0.201167, -0.188802, -0.961190,
		27.365686, 33.234619, 33.300316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808643, 33.784313, 33.759319>,  <27.224869, 33.366779, 33.973148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808643, 33.784313, 33.759319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641794, 33.675602, 33.412415>,  <27.541685, 33.610374, 33.204273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641794, 33.675602, 33.412415>,  <27.808643, 33.784313, 33.759319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641794, 33.675602, 33.412415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182667, 0.909698, -0.372937,
		0.890304, -0.313981, -0.329810,
		-0.417123, -0.271782, -0.867261,
		27.516657, 33.594067, 33.152237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322569, 33.929897, 33.160061>,  <27.808643, 33.784313, 33.759319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322569, 33.929897, 33.160061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939730, 33.949886, 33.045895>,  <27.710026, 33.961880, 32.977394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939730, 33.949886, 33.045895>,  <28.322569, 33.929897, 33.160061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939730, 33.949886, 33.045895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111744, 0.972481, -0.204434,
		0.267345, -0.227557, -0.936346,
		-0.957100, 0.049977, -0.285416,
		27.652599, 33.964878, 32.960270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400999, 34.298561, 32.665924>,  <28.322569, 33.929897, 33.160061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400999, 34.298561, 32.665924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009922, 34.300438, 32.749920>,  <27.775276, 34.301563, 32.800320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009922, 34.300438, 32.749920>,  <28.400999, 34.298561, 32.665924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009922, 34.300438, 32.749920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042881, 0.974236, -0.221418,
		-0.205621, -0.225483, -0.952301,
		-0.977692, 0.004693, 0.209992,
		27.716614, 34.301846, 32.812916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681808, 34.834145, 32.286770>,  <28.400999, 34.298561, 32.665924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681808, 34.834145, 32.286770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896130, 34.613422, 32.031136>,  <29.024721, 34.480988, 31.877756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896130, 34.613422, 32.031136>,  <28.681808, 34.834145, 32.286770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896130, 34.613422, 32.031136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076884, 0.721867, -0.687748,
		0.840837, 0.417631, 0.344352,
		0.535801, -0.551809, -0.639081,
		29.056870, 34.447880, 31.839411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866747, 35.523354, 32.395386>,  <28.681808, 34.834145, 32.286770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866747, 35.523354, 32.395386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815226, 35.353058, 32.037132>,  <28.784313, 35.250881, 31.822180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815226, 35.353058, 32.037132>,  <28.866747, 35.523354, 32.395386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815226, 35.353058, 32.037132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930704, 0.363685, -0.039031,
		0.342345, 0.828541, -0.443080,
		-0.128802, -0.425738, -0.895632,
		28.776585, 35.225338, 31.768442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362242, 36.090496, 32.476635>,  <28.866747, 35.523354, 32.395386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362242, 36.090496, 32.476635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428366, 36.151711, 32.086918>,  <29.468040, 36.188438, 31.853086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428366, 36.151711, 32.086918>,  <29.362242, 36.090496, 32.476635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428366, 36.151711, 32.086918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864515, 0.497921, -0.068476,
		0.474644, 0.853613, 0.214610,
		0.165311, 0.153031, -0.974296,
		29.477959, 36.197620, 31.794628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736221, 36.719994, 32.320023>,  <29.362242, 36.090496, 32.476635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736221, 36.719994, 32.320023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123203, 36.790989, 32.247883>,  <30.355392, 36.833588, 32.204597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123203, 36.790989, 32.247883>,  <29.736221, 36.719994, 32.320023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123203, 36.790989, 32.247883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161547, 0.981820, 0.099665,
		0.194760, -0.067287, 0.978540,
		0.967456, 0.177491, -0.180349,
		30.413441, 36.844234, 32.193779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180912, 36.885086, 32.965790>,  <29.736221, 36.719994, 32.320023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180912, 36.885086, 32.965790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268883, 37.071327, 32.622898>,  <30.321665, 37.183071, 32.417164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268883, 37.071327, 32.622898>,  <30.180912, 36.885086, 32.965790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268883, 37.071327, 32.622898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316489, 0.865267, 0.388776,
		0.922749, 0.185801, 0.337656,
		0.219927, 0.465607, -0.857229,
		30.334862, 37.211010, 32.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088017, 37.573292, 33.251060>,  <30.180912, 36.885086, 32.965790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088017, 37.573292, 33.251060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126066, 37.586895, 32.853107>,  <30.148895, 37.595058, 32.614334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126066, 37.586895, 32.853107>,  <30.088017, 37.573292, 33.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126066, 37.586895, 32.853107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375491, 0.926817, -0.004220,
		0.921932, 0.373971, 0.100932,
		0.095124, 0.034008, -0.994884,
		30.154604, 37.597099, 32.554642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614164, 37.713383, 33.768368>,  <30.088017, 37.573292, 33.251060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614164, 37.713383, 33.768368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951847, 37.927242, 33.783669>,  <31.154457, 38.055557, 33.792847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951847, 37.927242, 33.783669>,  <30.614164, 37.713383, 33.768368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951847, 37.927242, 33.783669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530738, -0.843749, 0.080027,
		0.075059, -0.047260, -0.996058,
		0.844206, 0.534653, 0.038248,
		31.205109, 38.087639, 33.795143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125172, 37.390167, 33.365314>,  <30.614164, 37.713383, 33.768368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125172, 37.390167, 33.365314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229387, 37.602398, 33.687954>,  <31.291916, 37.729736, 33.881538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229387, 37.602398, 33.687954>,  <31.125172, 37.390167, 33.365314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229387, 37.602398, 33.687954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405606, -0.818303, 0.407265,
		0.876130, 0.221054, -0.428406,
		0.260538, 0.530581, 0.806600,
		31.307549, 37.761574, 33.929935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840485, 37.579212, 33.252445>,  <31.125172, 37.390167, 33.365314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840485, 37.579212, 33.252445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239727, 37.592953, 33.272869>,  <32.479271, 37.601196, 33.285126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239727, 37.592953, 33.272869>,  <31.840485, 37.579212, 33.252445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239727, 37.592953, 33.272869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050050, -0.029760, 0.998303,
		0.035820, -0.998966, -0.027984,
		0.998104, 0.034358, 0.051064,
		32.539158, 37.603260, 33.288189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024841, 36.985546, 33.712513>,  <31.840485, 37.579212, 33.252445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024841, 36.985546, 33.712513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330883, 37.242893, 33.701984>,  <32.514507, 37.397301, 33.695667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330883, 37.242893, 33.701984>,  <32.024841, 36.985546, 33.712513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330883, 37.242893, 33.701984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099846, -0.078162, 0.991928,
		0.636120, -0.761555, -0.124040,
		0.765103, 0.643370, -0.026318,
		32.560413, 37.435905, 33.694088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560493, 36.607063, 33.954395>,  <32.024841, 36.985546, 33.712513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560493, 36.607063, 33.954395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648270, 36.995106, 33.995834>,  <32.700935, 37.227932, 34.020699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648270, 36.995106, 33.995834>,  <32.560493, 36.607063, 33.954395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648270, 36.995106, 33.995834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214909, -0.151643, 0.964789,
		0.951662, -0.189450, -0.241762,
		0.219441, 0.970110, 0.103599,
		32.714104, 37.286140, 34.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118351, 36.643875, 34.352165>,  <32.560493, 36.607063, 33.954395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118351, 36.643875, 34.352165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006905, 37.025654, 34.394875>,  <32.940037, 37.254723, 34.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006905, 37.025654, 34.394875>,  <33.118351, 36.643875, 34.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006905, 37.025654, 34.394875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265468, -0.030305, 0.963643,
		0.922984, 0.296829, -0.244933,
		-0.278615, 0.954449, 0.106770,
		32.923321, 37.311989, 34.426907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639889, 36.873768, 34.877087>,  <33.118351, 36.643875, 34.352165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639889, 36.873768, 34.877087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354343, 37.153133, 34.897587>,  <33.183018, 37.320751, 34.909885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354343, 37.153133, 34.897587>,  <33.639889, 36.873768, 34.877087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354343, 37.153133, 34.897587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085452, 0.014236, 0.996240,
		0.695056, 0.715555, -0.069843,
		-0.713860, 0.698411, 0.051250,
		33.140186, 37.362656, 34.912960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837017, 37.410095, 35.385849>,  <33.639889, 36.873768, 34.877087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837017, 37.410095, 35.385849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439823, 37.444786, 35.353691>,  <33.201508, 37.465599, 35.334396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439823, 37.444786, 35.353691>,  <33.837017, 37.410095, 35.385849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439823, 37.444786, 35.353691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083291, -0.030275, 0.996065,
		0.083952, 0.995772, 0.037287,
		-0.992983, 0.086727, -0.080398,
		33.141930, 37.470802, 35.329571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679337, 37.794525, 35.953957>,  <33.837017, 37.410095, 35.385849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679337, 37.794525, 35.953957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345055, 37.592690, 35.867252>,  <33.144485, 37.471588, 35.815231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345055, 37.592690, 35.867252>,  <33.679337, 37.794525, 35.953957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345055, 37.592690, 35.867252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169196, -0.138926, 0.975742,
		-0.522464, 0.852108, 0.030726,
		-0.835706, -0.504591, -0.216757,
		33.094341, 37.441311, 35.802227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380814, 38.007149, 36.583839>,  <33.679337, 37.794525, 35.953957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380814, 38.007149, 36.583839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153091, 37.717594, 36.427952>,  <33.016457, 37.543861, 36.334419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153091, 37.717594, 36.427952>,  <33.380814, 38.007149, 36.583839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153091, 37.717594, 36.427952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409237, -0.161615, 0.898001,
		-0.713033, 0.670726, -0.204232,
		-0.569306, -0.723884, -0.389723,
		32.982300, 37.500427, 36.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632030, 38.106995, 36.852638>,  <33.380814, 38.007149, 36.583839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632030, 38.106995, 36.852638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640221, 37.729355, 36.721027>,  <32.645134, 37.502769, 36.642063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640221, 37.729355, 36.721027>,  <32.632030, 38.106995, 36.852638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640221, 37.729355, 36.721027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528337, -0.289608, 0.798115,
		-0.848788, 0.157493, -0.504733,
		0.020477, -0.944099, -0.329025,
		32.646362, 37.446125, 36.622318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894138, 37.856457, 36.712353>,  <32.632030, 38.106995, 36.852638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894138, 37.856457, 36.712353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106525, 37.532516, 36.812122>,  <32.233959, 37.338154, 36.871986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106525, 37.532516, 36.812122>,  <31.894138, 37.856457, 36.712353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106525, 37.532516, 36.812122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619751, -0.170384, 0.766080,
		-0.577912, -0.561347, -0.592374,
		0.530968, -0.809851, 0.249428,
		32.265816, 37.289562, 36.886951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381540, 37.351238, 37.072609>,  <31.894138, 37.856457, 36.712353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381540, 37.351238, 37.072609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745193, 37.201660, 37.145973>,  <31.963385, 37.111912, 37.189991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745193, 37.201660, 37.145973>,  <31.381540, 37.351238, 37.072609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745193, 37.201660, 37.145973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355035, -0.465526, 0.810701,
		-0.217775, -0.802154, -0.555989,
		0.909134, -0.373946, 0.183413,
		32.017933, 37.089478, 37.200996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309603, 36.640606, 37.177589>,  <31.381540, 37.351238, 37.072609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309603, 36.640606, 37.177589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615526, 36.784039, 37.391685>,  <31.799080, 36.870098, 37.520145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615526, 36.784039, 37.391685>,  <31.309603, 36.640606, 37.177589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615526, 36.784039, 37.391685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364126, -0.444783, 0.818279,
		0.531487, -0.820723, -0.209606,
		0.764810, 0.358582, 0.535243,
		31.844969, 36.891613, 37.552258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493961, 36.147949, 37.543781>,  <31.309603, 36.640606, 37.177589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493961, 36.147949, 37.543781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613144, 36.442837, 37.786343>,  <31.684654, 36.619770, 37.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613144, 36.442837, 37.786343>,  <31.493961, 36.147949, 37.543781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613144, 36.442837, 37.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482713, -0.431689, 0.761993,
		0.823536, -0.519760, 0.227242,
		0.297956, 0.737221, 0.606406,
		31.702530, 36.664001, 37.968266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239836, 36.187538, 38.163746>,  <31.493961, 36.147949, 37.543781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239836, 36.187538, 38.163746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550554, 36.311420, 38.383076>,  <31.736986, 36.385750, 38.514675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550554, 36.311420, 38.383076>,  <31.239836, 36.187538, 38.163746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550554, 36.311420, 38.383076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613817, 0.177744, 0.769179,
		0.140758, -0.934071, 0.328174,
		0.776798, 0.309707, 0.548330,
		31.783594, 36.404331, 38.547573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443447, 35.691029, 38.739853>,  <31.239836, 36.187538, 38.163746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443447, 35.691029, 38.739853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508734, 36.073601, 38.836685>,  <31.547907, 36.303143, 38.894787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508734, 36.073601, 38.836685>,  <31.443447, 35.691029, 38.739853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508734, 36.073601, 38.836685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501705, -0.130817, 0.855090,
		0.849501, -0.261022, 0.458493,
		0.163219, 0.956428, 0.242085,
		31.557699, 36.360531, 38.909309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780218, 35.766018, 39.391117>,  <31.443447, 35.691029, 38.739853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780218, 35.766018, 39.391117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557316, 36.093819, 39.337635>,  <31.423574, 36.290501, 39.305546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557316, 36.093819, 39.337635>,  <31.780218, 35.766018, 39.391117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557316, 36.093819, 39.337635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525051, -0.223028, 0.821328,
		0.643264, 0.527890, 0.554566,
		-0.557254, 0.819506, -0.133704,
		31.390139, 36.339672, 39.297523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787563, 36.085796, 40.031410>,  <31.780218, 35.766018, 39.391117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787563, 36.085796, 40.031410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474596, 36.215694, 39.818859>,  <31.286816, 36.293633, 39.691326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474596, 36.215694, 39.818859>,  <31.787563, 36.085796, 40.031410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474596, 36.215694, 39.818859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588425, -0.106114, 0.801559,
		0.203915, 0.939830, 0.274113,
		-0.782416, 0.324744, -0.531381,
		31.239872, 36.313118, 39.659443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323954, 36.532066, 40.543415>,  <31.787563, 36.085796, 40.031410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323954, 36.532066, 40.543415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079082, 36.455944, 40.236423>,  <30.932159, 36.410271, 40.052227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079082, 36.455944, 40.236423>,  <31.323954, 36.532066, 40.543415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079082, 36.455944, 40.236423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751503, -0.161861, 0.639566,
		-0.245935, 0.968291, -0.043925,
		-0.612176, -0.190301, -0.767480,
		30.895430, 36.398853, 40.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746557, 36.888630, 40.754761>,  <31.323954, 36.532066, 40.543415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746557, 36.888630, 40.754761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623936, 36.623760, 40.481251>,  <30.550362, 36.464840, 40.317142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623936, 36.623760, 40.481251>,  <30.746557, 36.888630, 40.754761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623936, 36.623760, 40.481251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781074, -0.235568, 0.578300,
		-0.544010, 0.711362, -0.444990,
		-0.306555, -0.662171, -0.683778,
		30.531969, 36.425110, 40.276115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097286, 37.006416, 40.821095>,  <30.746557, 36.888630, 40.754761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097286, 37.006416, 40.821095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089632, 36.649094, 40.641476>,  <30.085039, 36.434700, 40.533707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089632, 36.649094, 40.641476>,  <30.097286, 37.006416, 40.821095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089632, 36.649094, 40.641476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699395, -0.308991, 0.644493,
		-0.714480, 0.326392, -0.618860,
		-0.019135, -0.893304, -0.449045,
		30.083891, 36.381104, 40.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440174, 36.867889, 40.810509>,  <30.097286, 37.006416, 40.821095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440174, 36.867889, 40.810509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639610, 36.522808, 40.776680>,  <29.759272, 36.315758, 40.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639610, 36.522808, 40.776680>,  <29.440174, 36.867889, 40.810509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639610, 36.522808, 40.776680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615053, -0.420830, 0.666793,
		-0.610833, -0.280442, -0.740429,
		0.498591, -0.862702, -0.084570,
		29.789188, 36.263996, 40.751308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894739, 36.327984, 40.761921>,  <29.440174, 36.867889, 40.810509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894739, 36.327984, 40.761921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226883, 36.140987, 40.883217>,  <29.426168, 36.028790, 40.955994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226883, 36.140987, 40.883217>,  <28.894739, 36.327984, 40.761921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226883, 36.140987, 40.883217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537596, -0.528909, 0.656693,
		-0.146614, -0.708311, -0.690506,
		0.830358, -0.467494, 0.303240,
		29.475990, 36.000740, 40.974190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625607, 35.658699, 40.735359>,  <28.894739, 36.327984, 40.761921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625607, 35.658699, 40.735359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958372, 35.675861, 40.956657>,  <29.158031, 35.686157, 41.089436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958372, 35.675861, 40.956657>,  <28.625607, 35.658699, 40.735359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958372, 35.675861, 40.956657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369190, -0.701528, 0.609555,
		0.414271, -0.711349, -0.567769,
		0.831912, 0.042907, 0.553246,
		29.207945, 35.688732, 41.122631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941647, 34.912804, 40.718349>,  <28.625607, 35.658699, 40.735359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941647, 34.912804, 40.718349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092962, 35.096241, 41.039993>,  <29.183752, 35.206303, 41.232979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092962, 35.096241, 41.039993>,  <28.941647, 34.912804, 40.718349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092962, 35.096241, 41.039993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353225, -0.731421, 0.583314,
		0.855646, -0.504691, -0.114700,
		0.378288, 0.458596, 0.804107,
		29.206450, 35.233818, 41.281227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136690, 34.344742, 41.101017>,  <28.941647, 34.912804, 40.718349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136690, 34.344742, 41.101017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146748, 34.643673, 41.366608>,  <29.152782, 34.823032, 41.525963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146748, 34.643673, 41.366608>,  <29.136690, 34.344742, 41.101017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146748, 34.643673, 41.366608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254727, -0.637474, 0.727146,
		0.966686, -0.187416, 0.174336,
		0.025144, 0.747330, 0.663977,
		29.154291, 34.867870, 41.565800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573309, 34.182827, 41.733154>,  <29.136690, 34.344742, 41.101017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573309, 34.182827, 41.733154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321741, 34.464523, 41.864914>,  <29.170801, 34.633541, 41.943970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321741, 34.464523, 41.864914>,  <29.573309, 34.182827, 41.733154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321741, 34.464523, 41.864914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248913, -0.583767, 0.772825,
		0.736548, 0.404053, 0.542437,
		-0.628919, 0.704243, 0.329398,
		29.133066, 34.675797, 41.963734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764090, 34.295490, 42.492847>,  <29.573309, 34.182827, 41.733154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764090, 34.295490, 42.492847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384001, 34.403320, 42.430359>,  <29.155947, 34.468018, 42.392868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384001, 34.403320, 42.430359>,  <29.764090, 34.295490, 42.492847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384001, 34.403320, 42.430359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284557, -0.546664, 0.787519,
		0.126897, 0.792772, 0.596163,
		-0.950223, 0.269576, -0.156219,
		29.098934, 34.484192, 42.383492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603668, 34.278908, 43.148636>,  <29.764090, 34.295490, 42.492847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603668, 34.278908, 43.148636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244711, 34.315151, 42.975903>,  <29.029337, 34.336899, 42.872265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244711, 34.315151, 42.975903>,  <29.603668, 34.278908, 43.148636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244711, 34.315151, 42.975903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429319, -0.405192, 0.807158,
		-0.101839, 0.909731, 0.402516,
		-0.897393, 0.090607, -0.431829,
		28.975492, 34.342335, 42.846355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089745, 34.647591, 43.654682>,  <29.603668, 34.278908, 43.148636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089745, 34.647591, 43.654682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884668, 34.404022, 43.412571>,  <28.761623, 34.257881, 43.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884668, 34.404022, 43.412571>,  <29.089745, 34.647591, 43.654682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884668, 34.404022, 43.412571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343513, -0.500612, 0.794598,
		-0.786859, 0.615303, 0.047485,
		-0.512690, -0.608925, -0.605276,
		28.730862, 34.221344, 43.230988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372353, 34.618050, 43.897900>,  <29.089745, 34.647591, 43.654682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372353, 34.618050, 43.897900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389544, 34.299793, 43.656204>,  <28.399858, 34.108837, 43.511189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389544, 34.299793, 43.656204>,  <28.372353, 34.618050, 43.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389544, 34.299793, 43.656204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336271, -0.581028, 0.741167,
		-0.940784, 0.171333, -0.292524,
		0.042978, -0.795646, -0.604236,
		28.402437, 34.061100, 43.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610622, 34.254097, 43.864868>,  <28.372353, 34.618050, 43.897900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610622, 34.254097, 43.864868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920868, 34.011269, 43.795723>,  <28.107016, 33.865570, 43.754234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920868, 34.011269, 43.795723>,  <27.610622, 34.254097, 43.864868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920868, 34.011269, 43.795723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332802, -0.626014, 0.705230,
		-0.536340, -0.489459, -0.687582,
		0.775617, -0.607072, -0.172863,
		28.153553, 33.829147, 43.743862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329359, 33.592945, 43.922291>,  <27.610622, 34.254097, 43.864868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329359, 33.592945, 43.922291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722025, 33.526237, 43.959225>,  <27.957624, 33.486214, 43.981384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722025, 33.526237, 43.959225>,  <27.329359, 33.592945, 43.922291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722025, 33.526237, 43.959225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187745, -0.762016, 0.619744,
		-0.032996, -0.625715, -0.779353,
		0.981663, -0.166769, 0.092332,
		28.016523, 33.476208, 43.986923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378323, 32.868275, 43.940426>,  <27.329359, 33.592945, 43.922291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378323, 32.868275, 43.940426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717409, 33.001442, 44.105614>,  <27.920860, 33.081341, 44.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717409, 33.001442, 44.105614>,  <27.378323, 32.868275, 43.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717409, 33.001442, 44.105614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069382, -0.702253, 0.708539,
		0.525894, -0.629292, -0.572213,
		0.847716, 0.332915, 0.412972,
		27.971724, 33.101318, 44.229504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792030, 32.402607, 43.867874>,  <27.378323, 32.868275, 43.940426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792030, 32.402607, 43.867874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941647, 32.615952, 44.171352>,  <28.031416, 32.743958, 44.353439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941647, 32.615952, 44.171352>,  <27.792030, 32.402607, 43.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941647, 32.615952, 44.171352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050244, -0.828532, 0.557683,
		0.926051, -0.170475, -0.336702,
		0.374039, 0.533360, 0.758698,
		28.053858, 32.775959, 44.398960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336309, 31.893093, 44.219433>,  <27.792030, 32.402607, 43.867874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336309, 31.893093, 44.219433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249157, 32.184448, 44.479271>,  <28.196865, 32.359261, 44.635174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249157, 32.184448, 44.479271>,  <28.336309, 31.893093, 44.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249157, 32.184448, 44.479271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051959, -0.673301, 0.737541,
		0.974592, 0.126943, 0.184545,
		-0.217880, 0.728390, 0.649597,
		28.183792, 32.402966, 44.674149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734322, 31.669512, 44.841030>,  <28.336309, 31.893093, 44.219433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734322, 31.669512, 44.841030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425194, 31.911169, 44.918758>,  <28.239717, 32.056164, 44.965393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425194, 31.911169, 44.918758>,  <28.734322, 31.669512, 44.841030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425194, 31.911169, 44.918758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313251, -0.629434, 0.711117,
		0.551929, 0.488694, 0.675687,
		-0.772819, 0.604145, 0.194319,
		28.193348, 32.092411, 44.977055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787119, 31.681499, 45.604912>,  <28.734322, 31.669512, 44.841030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787119, 31.681499, 45.604912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419155, 31.790922, 45.492535>,  <28.198376, 31.856575, 45.425106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419155, 31.790922, 45.492535>,  <28.787119, 31.681499, 45.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419155, 31.790922, 45.492535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390941, -0.584131, 0.711306,
		0.030473, 0.764171, 0.644293,
		-0.919911, 0.273556, -0.280946,
		28.143181, 31.872990, 45.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490959, 31.457378, 46.194405>,  <28.787119, 31.681499, 45.604912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490959, 31.457378, 46.194405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164951, 31.578035, 45.996513>,  <27.969347, 31.650429, 45.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164951, 31.578035, 45.996513>,  <28.490959, 31.457378, 46.194405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164951, 31.578035, 45.996513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573404, -0.542693, 0.613752,
		-0.083351, 0.783898, 0.615269,
		-0.815022, 0.301641, -0.494725,
		27.920444, 31.668528, 45.848095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941349, 31.863934, 46.587345>,  <28.490959, 31.457378, 46.194405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941349, 31.863934, 46.587345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757446, 31.671444, 46.288803>,  <27.647104, 31.555950, 46.109676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757446, 31.671444, 46.288803>,  <27.941349, 31.863934, 46.587345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757446, 31.671444, 46.288803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650813, -0.389243, 0.651868,
		-0.604208, 0.785440, -0.134229,
		-0.459756, -0.481222, -0.746358,
		27.619520, 31.527077, 46.064896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298241, 32.045929, 46.703384>,  <27.941349, 31.863934, 46.587345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298241, 32.045929, 46.703384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281023, 31.729448, 46.459370>,  <27.270693, 31.539560, 46.312962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281023, 31.729448, 46.459370>,  <27.298241, 32.045929, 46.703384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281023, 31.729448, 46.459370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689895, -0.418109, 0.590957,
		-0.722629, 0.446299, -0.527849,
		-0.043045, -0.791203, -0.610037,
		27.268110, 31.492088, 46.276360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831524, 31.758411, 47.024464>,  <27.298241, 32.045929, 46.703384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831524, 31.758411, 47.024464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919403, 31.457716, 46.775749>,  <26.972132, 31.277298, 46.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919403, 31.457716, 46.775749>,  <26.831524, 31.758411, 47.024464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919403, 31.457716, 46.775749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594874, -0.608387, 0.525347,
		-0.773212, 0.254468, -0.580853,
		0.219699, -0.751739, -0.621788,
		26.985313, 31.232195, 46.589214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203417, 31.517267, 46.952877>,  <26.831524, 31.758411, 47.024464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203417, 31.517267, 46.952877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455975, 31.236954, 46.820065>,  <26.607510, 31.068766, 46.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455975, 31.236954, 46.820065>,  <26.203417, 31.517267, 46.952877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455975, 31.236954, 46.820065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478552, -0.689038, 0.544256,
		-0.610185, -0.184749, -0.770417,
		0.631397, -0.700781, -0.332029,
		26.645393, 31.026720, 46.720455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846399, 30.888044, 46.842903>,  <26.203417, 31.517267, 46.952877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846399, 30.888044, 46.842903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216591, 30.761082, 46.925598>,  <26.438705, 30.684904, 46.975216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216591, 30.761082, 46.925598>,  <25.846399, 30.888044, 46.842903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216591, 30.761082, 46.925598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373456, -0.855868, 0.357800,
		0.063371, -0.408343, -0.910626,
		0.925481, -0.317404, 0.206736,
		26.494236, 30.665861, 46.987617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171467, 30.301678, 46.366661>,  <25.846399, 30.888044, 46.842903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171467, 30.301678, 46.366661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254133, 30.331238, 46.756908>,  <26.303732, 30.348974, 46.991058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254133, 30.331238, 46.756908>,  <26.171467, 30.301678, 46.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254133, 30.331238, 46.756908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501219, -0.848370, 0.170436,
		0.840279, -0.524221, -0.138287,
		0.206665, 0.073901, 0.975617,
		26.316133, 30.353409, 47.049595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538761, 29.640654, 46.670502>,  <26.171467, 30.301678, 46.366661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538761, 29.640654, 46.670502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285843, 29.825668, 46.919102>,  <26.134092, 29.936676, 47.068260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285843, 29.825668, 46.919102>,  <26.538761, 29.640654, 46.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285843, 29.825668, 46.919102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558168, -0.828305, 0.048580,
		0.537260, -0.316183, 0.781907,
		-0.632297, 0.462536, 0.621499,
		26.096153, 29.964430, 47.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941399, 29.582623, 47.244473>,  <26.538761, 29.640654, 46.670502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941399, 29.582623, 47.244473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143269, 29.237398, 47.252758>,  <27.264391, 29.030264, 47.257729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143269, 29.237398, 47.252758>,  <26.941399, 29.582623, 47.244473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143269, 29.237398, 47.252758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158231, -0.116064, -0.980557,
		0.848685, 0.491583, -0.195137,
		0.504674, -0.863061, 0.020718,
		27.294670, 28.978479, 47.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472597, 29.626524, 46.851143>,  <26.941399, 29.582623, 47.244473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472597, 29.626524, 46.851143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329035, 29.253214, 46.845718>,  <27.242897, 29.029228, 46.842464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329035, 29.253214, 46.845718>,  <27.472597, 29.626524, 46.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329035, 29.253214, 46.845718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085485, 0.047334, -0.995214,
		0.929451, -0.356028, -0.096770,
		-0.358905, -0.933276, -0.013559,
		27.221363, 28.973230, 46.841652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833418, 29.159311, 46.434944>,  <27.472597, 29.626524, 46.851143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833418, 29.159311, 46.434944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449427, 29.047617, 46.426254>,  <27.219032, 28.980600, 46.421040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449427, 29.047617, 46.426254>,  <27.833418, 29.159311, 46.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449427, 29.047617, 46.426254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018391, 0.014551, -0.999725,
		0.279478, -0.960111, -0.008833,
		-0.959976, -0.279239, -0.021725,
		27.161434, 28.963846, 46.419739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730310, 28.542501, 46.021095>,  <27.833418, 29.159311, 46.434944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730310, 28.542501, 46.021095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388523, 28.750292, 46.019077>,  <27.183451, 28.874966, 46.017868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388523, 28.750292, 46.019077>,  <27.730310, 28.542501, 46.021095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388523, 28.750292, 46.019077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167130, -0.284076, -0.944123,
		-0.491882, -0.805882, 0.329555,
		-0.854470, 0.519476, -0.005045,
		27.132181, 28.906134, 46.017563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341675, 28.088217, 45.635494>,  <27.730310, 28.542501, 46.021095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341675, 28.088217, 45.635494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209455, 28.465307, 45.617603>,  <27.130123, 28.691563, 45.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209455, 28.465307, 45.617603>,  <27.341675, 28.088217, 45.635494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209455, 28.465307, 45.617603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137158, 0.001098, -0.990548,
		-0.933769, -0.333560, -0.129666,
		-0.330550, 0.942728, -0.044725,
		27.110291, 28.748125, 45.604187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818577, 28.111809, 45.053371>,  <27.341675, 28.088217, 45.635494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818577, 28.111809, 45.053371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972105, 28.477798, 45.103172>,  <27.064222, 28.697393, 45.133053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972105, 28.477798, 45.103172>,  <26.818577, 28.111809, 45.053371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972105, 28.477798, 45.103172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033487, 0.148534, -0.988340,
		-0.922800, 0.375176, 0.087650,
		0.383821, 0.914976, 0.124503,
		27.087252, 28.752291, 45.140522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456999, 28.639494, 44.541000>,  <26.818577, 28.111809, 45.053371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456999, 28.639494, 44.541000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819218, 28.766537, 44.653507>,  <27.036549, 28.842762, 44.721012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819218, 28.766537, 44.653507>,  <26.456999, 28.639494, 44.541000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819218, 28.766537, 44.653507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186305, 0.297929, -0.936231,
		-0.381149, 0.900203, 0.210617,
		0.905547, 0.317605, 0.281268,
		27.090881, 28.861818, 44.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486231, 29.232119, 44.239845>,  <26.456999, 28.639494, 44.541000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486231, 29.232119, 44.239845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858507, 29.131704, 44.346279>,  <27.081873, 29.071455, 44.410137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858507, 29.131704, 44.346279>,  <26.486231, 29.232119, 44.239845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858507, 29.131704, 44.346279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341568, 0.335958, -0.877761,
		0.130956, 0.907807, 0.398418,
		0.930689, -0.251035, 0.266082,
		27.137714, 29.056395, 44.426105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849037, 29.583141, 43.654804>,  <26.486231, 29.232119, 44.239845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849037, 29.583141, 43.654804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155056, 29.379515, 43.812565>,  <27.338667, 29.257338, 43.907223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155056, 29.379515, 43.812565>,  <26.849037, 29.583141, 43.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155056, 29.379515, 43.812565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556562, 0.214595, -0.802613,
		0.323947, 0.833546, 0.447503,
		0.765047, -0.509068, 0.394403,
		27.384569, 29.226795, 43.930885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410950, 30.102997, 43.669670>,  <26.849037, 29.583141, 43.654804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410950, 30.102997, 43.669670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594309, 29.750618, 43.716663>,  <27.704325, 29.539190, 43.744858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594309, 29.750618, 43.716663>,  <27.410950, 30.102997, 43.669670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594309, 29.750618, 43.716663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651321, 0.243051, -0.718823,
		0.604692, 0.406026, 0.685194,
		0.458398, -0.880948, 0.117482,
		27.731829, 29.486334, 43.751907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217381, 30.184063, 43.744175>,  <27.410950, 30.102997, 43.669670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217381, 30.184063, 43.744175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151619, 29.809475, 43.620243>,  <28.112162, 29.584723, 43.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151619, 29.809475, 43.620243>,  <28.217381, 30.184063, 43.744175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151619, 29.809475, 43.620243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637575, 0.138778, -0.757785,
		0.752642, -0.322120, 0.574255,
		-0.164404, -0.936472, -0.309826,
		28.102297, 29.528534, 43.527294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925232, 29.930286, 43.749126>,  <28.217381, 30.184063, 43.744175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925232, 29.930286, 43.749126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676794, 29.705824, 43.530277>,  <28.527731, 29.571146, 43.398968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676794, 29.705824, 43.530277>,  <28.925232, 29.930286, 43.749126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676794, 29.705824, 43.530277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669082, -0.016116, -0.743014,
		0.408130, -0.827553, 0.385469,
		-0.621095, -0.561156, -0.547123,
		28.490465, 29.537477, 43.366138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228762, 29.349052, 43.422318>,  <28.925232, 29.930286, 43.749126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228762, 29.349052, 43.422318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914072, 29.373011, 43.176559>,  <28.725258, 29.387384, 43.029106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914072, 29.373011, 43.176559>,  <29.228762, 29.349052, 43.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914072, 29.373011, 43.176559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609736, -0.080005, -0.788556,
		-0.096388, -0.994993, 0.026420,
		-0.786721, 0.059898, -0.614394,
		28.678055, 29.390980, 42.992241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173351, 28.668190, 42.973404>,  <29.228762, 29.349052, 43.422318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173351, 28.668190, 42.973404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956778, 28.941254, 42.777107>,  <28.826834, 29.105091, 42.659328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956778, 28.941254, 42.777107>,  <29.173351, 28.668190, 42.973404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956778, 28.941254, 42.777107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487549, -0.220589, -0.844770,
		-0.684941, -0.696648, -0.213395,
		-0.541435, 0.682658, -0.490740,
		28.794348, 29.146051, 42.629887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037502, 28.377073, 42.336102>,  <29.173351, 28.668190, 42.973404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037502, 28.377073, 42.336102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963449, 28.764317, 42.268578>,  <28.919018, 28.996662, 42.228065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963449, 28.764317, 42.268578>,  <29.037502, 28.377073, 42.336102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963449, 28.764317, 42.268578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466988, -0.064474, -0.881910,
		-0.864667, -0.242099, -0.440158,
		-0.185131, 0.968107, -0.168806,
		28.907909, 29.054749, 42.217937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904711, 28.445395, 41.539253>,  <29.037502, 28.377073, 42.336102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904711, 28.445395, 41.539253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940077, 28.831839, 41.636261>,  <28.961296, 29.063705, 41.694466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940077, 28.831839, 41.636261>,  <28.904711, 28.445395, 41.539253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940077, 28.831839, 41.636261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423651, 0.183883, -0.886965,
		-0.901500, 0.181165, -0.393036,
		0.088415, 0.966109, 0.242521,
		28.966600, 29.121672, 41.709019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666304, 28.885895, 40.964172>,  <28.904711, 28.445395, 41.539253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666304, 28.885895, 40.964172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897047, 29.130402, 41.180908>,  <29.035494, 29.277105, 41.310951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897047, 29.130402, 41.180908>,  <28.666304, 28.885895, 40.964172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897047, 29.130402, 41.180908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379753, 0.386600, -0.840433,
		-0.723203, 0.690575, -0.009116,
		0.576858, 0.611266, 0.541838,
		29.070105, 29.313782, 41.343460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631016, 29.538345, 40.697090>,  <28.666304, 28.885895, 40.964172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631016, 29.538345, 40.697090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984583, 29.526571, 40.883774>,  <29.196724, 29.519506, 40.995785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984583, 29.526571, 40.883774>,  <28.631016, 29.538345, 40.697090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984583, 29.526571, 40.883774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437797, 0.402901, -0.803744,
		-0.164380, 0.914770, 0.369019,
		0.883919, -0.029436, 0.466713,
		29.249758, 29.517740, 41.023788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904375, 30.041817, 40.367199>,  <28.631016, 29.538345, 40.697090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904375, 30.041817, 40.367199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215965, 29.856056, 40.535736>,  <29.402920, 29.744600, 40.636860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215965, 29.856056, 40.535736>,  <28.904375, 30.041817, 40.367199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215965, 29.856056, 40.535736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604151, 0.375889, -0.702644,
		0.167931, 0.801897, 0.573377,
		0.778974, -0.464402, 0.421343,
		29.449657, 29.716736, 40.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179274, 30.653378, 40.518761>,  <28.904375, 30.041817, 40.367199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179274, 30.653378, 40.518761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422001, 30.335592, 40.508972>,  <29.567636, 30.144920, 40.503098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422001, 30.335592, 40.508972>,  <29.179274, 30.653378, 40.518761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422001, 30.335592, 40.508972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664303, 0.523824, -0.533207,
		0.436432, 0.307304, 0.845631,
		0.606819, -0.794464, -0.024471,
		29.604046, 30.097254, 40.501633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776731, 31.018881, 40.694004>,  <29.179274, 30.653378, 40.518761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776731, 31.018881, 40.694004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858397, 30.672218, 40.511917>,  <29.907396, 30.464220, 40.402664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858397, 30.672218, 40.511917>,  <29.776731, 31.018881, 40.694004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858397, 30.672218, 40.511917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424073, 0.497412, -0.756798,
		0.882315, -0.038534, 0.469080,
		0.204164, -0.866658, -0.455215,
		29.919645, 30.412220, 40.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465923, 31.117432, 40.535614>,  <29.776731, 31.018881, 40.694004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465923, 31.117432, 40.535614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345949, 30.827253, 40.287819>,  <30.273966, 30.653147, 40.139141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345949, 30.827253, 40.287819>,  <30.465923, 31.117432, 40.535614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345949, 30.827253, 40.287819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648519, 0.321193, -0.690114,
		0.699616, -0.608740, 0.374128,
		-0.299933, -0.725444, -0.619492,
		30.255970, 30.609619, 40.101971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101929, 31.061026, 40.197788>,  <30.465923, 31.117432, 40.535614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101929, 31.061026, 40.197788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805235, 30.904837, 39.979664>,  <30.627218, 30.811123, 39.848789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805235, 30.904837, 39.979664>,  <31.101929, 31.061026, 40.197788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805235, 30.904837, 39.979664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382768, 0.421198, -0.822241,
		0.550746, -0.818611, -0.162957,
		-0.741733, -0.390471, -0.545311,
		30.582714, 30.787695, 39.816071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335060, 30.866632, 39.562984>,  <31.101929, 31.061026, 40.197788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335060, 30.866632, 39.562984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944181, 30.875164, 39.478481>,  <30.709654, 30.880283, 39.427780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944181, 30.875164, 39.478481>,  <31.335060, 30.866632, 39.562984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944181, 30.875164, 39.478481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202513, 0.392725, -0.897082,
		0.063833, -0.919409, -0.388090,
		-0.977197, 0.021330, -0.211261,
		30.651022, 30.881563, 39.415104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237324, 30.440098, 38.853947>,  <31.335060, 30.866632, 39.562984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237324, 30.440098, 38.853947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972996, 30.728613, 38.936954>,  <30.814400, 30.901722, 38.986759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972996, 30.728613, 38.936954>,  <31.237324, 30.440098, 38.853947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972996, 30.728613, 38.936954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162808, 0.407659, -0.898503,
		-0.732675, -0.559962, -0.386820,
		-0.660818, 0.721289, 0.207515,
		30.774750, 30.945000, 38.999210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188873, 30.733212, 38.187550>,  <31.237324, 30.440098, 38.853947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188873, 30.733212, 38.187550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026768, 30.993763, 38.444134>,  <30.929504, 31.150093, 38.598083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026768, 30.993763, 38.444134>,  <31.188873, 30.733212, 38.187550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026768, 30.993763, 38.444134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200337, 0.747883, -0.632880,
		-0.891979, -0.127976, -0.433585,
		-0.405264, 0.651378, 0.641457,
		30.905188, 31.189177, 38.636570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584593, 31.076244, 37.753277>,  <31.188873, 30.733212, 38.187550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584593, 31.076244, 37.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704311, 31.297104, 38.064545>,  <30.776142, 31.429621, 38.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704311, 31.297104, 38.064545>,  <30.584593, 31.076244, 37.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704311, 31.297104, 38.064545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109470, 0.790302, -0.602860,
		-0.947860, 0.265620, 0.176090,
		0.299295, 0.552150, 0.778173,
		30.794100, 31.462749, 38.297997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301090, 31.832657, 37.754681>,  <30.584593, 31.076244, 37.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301090, 31.832657, 37.754681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625282, 31.864662, 37.986790>,  <30.819798, 31.883865, 38.126057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625282, 31.864662, 37.986790>,  <30.301090, 31.832657, 37.754681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625282, 31.864662, 37.986790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208081, 0.886693, -0.412891,
		-0.547562, 0.455384, 0.701998,
		0.810480, 0.080011, 0.580276,
		30.868427, 31.888666, 38.160873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285423, 32.528507, 38.039242>,  <30.301090, 31.832657, 37.754681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285423, 32.528507, 38.039242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662109, 32.408661, 38.100430>,  <30.888121, 32.336754, 38.137142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662109, 32.408661, 38.100430>,  <30.285423, 32.528507, 38.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662109, 32.408661, 38.100430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336339, 0.829269, -0.446307,
		0.006867, 0.471744, 0.881709,
		0.941716, -0.299618, 0.152971,
		30.944624, 32.318775, 38.146320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586248, 33.117424, 38.299522>,  <30.285423, 32.528507, 38.039242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586248, 33.117424, 38.299522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879070, 32.884666, 38.157825>,  <31.054764, 32.745010, 38.072807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879070, 32.884666, 38.157825>,  <30.586248, 33.117424, 38.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879070, 32.884666, 38.157825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278149, 0.729986, -0.624302,
		0.621874, 0.358491, 0.696245,
		0.732056, -0.581897, -0.354245,
		31.098686, 32.710098, 38.051552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239546, 33.560177, 38.136974>,  <30.586248, 33.117424, 38.299522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239546, 33.560177, 38.136974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332434, 33.234383, 37.924301>,  <31.388166, 33.038906, 37.796696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332434, 33.234383, 37.924301>,  <31.239546, 33.560177, 38.136974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332434, 33.234383, 37.924301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255935, 0.578532, -0.774467,
		0.938388, 0.043768, 0.342801,
		0.232218, -0.814485, -0.531686,
		31.402100, 32.990036, 37.764797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901173, 33.706310, 37.742096>,  <31.239546, 33.560177, 38.136974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901173, 33.706310, 37.742096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704609, 33.424706, 37.537010>,  <31.586670, 33.255741, 37.413960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704609, 33.424706, 37.537010>,  <31.901173, 33.706310, 37.742096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704609, 33.424706, 37.537010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257946, 0.444638, -0.857765,
		0.831853, -0.553768, -0.036902,
		-0.491411, -0.704016, -0.512716,
		31.557186, 33.213501, 37.383194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435871, 33.534256, 37.308395>,  <31.901173, 33.706310, 37.742096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435871, 33.534256, 37.308395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080421, 33.440086, 37.150955>,  <31.867151, 33.383587, 37.056492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080421, 33.440086, 37.150955>,  <32.435871, 33.534256, 37.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080421, 33.440086, 37.150955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287276, 0.383280, -0.877821,
		0.357511, -0.893128, -0.272964,
		-0.888628, -0.235415, -0.393600,
		31.813833, 33.369461, 37.032875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619591, 33.359581, 36.680672>,  <32.435871, 33.534256, 37.308395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619591, 33.359581, 36.680672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229267, 33.442524, 36.652939>,  <31.995073, 33.492290, 36.636299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229267, 33.442524, 36.652939>,  <32.619591, 33.359581, 36.680672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229267, 33.442524, 36.652939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141477, 0.357063, -0.923304,
		-0.166699, -0.910773, -0.377761,
		-0.975805, 0.207359, -0.069332,
		31.936525, 33.504730, 36.632141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373035, 33.123245, 35.962688>,  <32.619591, 33.359581, 36.680672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373035, 33.123245, 35.962688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094414, 33.382881, 36.085003>,  <31.927242, 33.538662, 36.158390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094414, 33.382881, 36.085003>,  <32.373035, 33.123245, 35.962688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094414, 33.382881, 36.085003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017094, 0.411044, -0.911455,
		-0.717303, -0.640102, -0.275218,
		-0.696551, 0.649086, 0.305785,
		31.885448, 33.577606, 36.176739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805910, 32.985977, 35.512760>,  <32.373035, 33.123245, 35.962688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805910, 32.985977, 35.512760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733246, 33.352573, 35.655334>,  <31.689648, 33.572533, 35.740879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733246, 33.352573, 35.655334>,  <31.805910, 32.985977, 35.512760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733246, 33.352573, 35.655334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120314, 0.380460, -0.916938,
		-0.975974, -0.123686, -0.179381,
		-0.181660, 0.916489, 0.356438,
		31.678747, 33.627522, 35.762264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339560, 33.212063, 35.063694>,  <31.805910, 32.985977, 35.512760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339560, 33.212063, 35.063694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463057, 33.541523, 35.253967>,  <31.537155, 33.739201, 35.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463057, 33.541523, 35.253967>,  <31.339560, 33.212063, 35.063694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463057, 33.541523, 35.253967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073588, 0.477929, -0.875311,
		-0.948295, 0.305249, 0.086946,
		0.308742, 0.823655, 0.475680,
		31.555679, 33.788620, 35.396671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859957, 33.854168, 34.920109>,  <31.339560, 33.212063, 35.063694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859957, 33.854168, 34.920109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209539, 34.010509, 35.035645>,  <31.419289, 34.104313, 35.104965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209539, 34.010509, 35.035645>,  <30.859957, 33.854168, 34.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209539, 34.010509, 35.035645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049767, 0.519227, -0.853186,
		-0.483446, 0.760024, 0.434332,
		0.873959, 0.390854, 0.288842,
		31.471727, 34.127766, 35.122295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831236, 34.575302, 34.728558>,  <30.859957, 33.854168, 34.920109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831236, 34.575302, 34.728558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216785, 34.473225, 34.759087>,  <31.448114, 34.411976, 34.777405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216785, 34.473225, 34.759087>,  <30.831236, 34.575302, 34.728558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216785, 34.473225, 34.759087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178477, 0.406052, -0.896252,
		0.197728, 0.877495, 0.436928,
		0.963872, -0.255196, 0.076324,
		31.505947, 34.396667, 34.781982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157547, 35.187416, 34.508533>,  <30.831236, 34.575302, 34.728558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157547, 35.187416, 34.508533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401503, 34.874611, 34.457157>,  <31.547876, 34.686928, 34.426331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401503, 34.874611, 34.457157>,  <31.157547, 35.187416, 34.508533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401503, 34.874611, 34.457157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321999, 0.392617, -0.861492,
		0.724121, 0.484058, 0.491260,
		0.609889, -0.782010, -0.128437,
		31.584469, 34.640007, 34.418625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821411, 35.392895, 34.250443>,  <31.157547, 35.187416, 34.508533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821411, 35.392895, 34.250443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827913, 35.006153, 34.148518>,  <31.831814, 34.774109, 34.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827913, 35.006153, 34.148518>,  <31.821411, 35.392895, 34.250443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827913, 35.006153, 34.148518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359593, 0.243447, -0.900792,
		0.932968, -0.076987, 0.351631,
		0.016254, -0.966854, -0.254812,
		31.832790, 34.716099, 34.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472858, 35.220776, 34.116074>,  <31.821411, 35.392895, 34.250443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472858, 35.220776, 34.116074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256523, 34.943947, 33.924850>,  <32.126724, 34.777851, 33.810116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256523, 34.943947, 33.924850>,  <32.472858, 35.220776, 34.116074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256523, 34.943947, 33.924850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478731, 0.214046, -0.851470,
		0.691604, -0.689363, 0.215553,
		-0.540833, -0.692072, -0.478054,
		32.094273, 34.736324, 33.781433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923103, 34.910358, 33.624405>,  <32.472858, 35.220776, 34.116074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923103, 34.910358, 33.624405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551079, 34.853043, 33.489082>,  <32.327862, 34.818653, 33.407890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551079, 34.853043, 33.489082>,  <32.923103, 34.910358, 33.624405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551079, 34.853043, 33.489082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293235, 0.265258, -0.918505,
		0.221349, -0.953471, -0.204690,
		-0.930063, -0.143288, -0.338306,
		32.272060, 34.810055, 33.387592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013031, 34.693573, 32.978607>,  <32.923103, 34.910358, 33.624405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013031, 34.693573, 32.978607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618111, 34.754223, 32.959614>,  <32.381161, 34.790611, 32.948219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618111, 34.754223, 32.959614>,  <33.013031, 34.693573, 32.978607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618111, 34.754223, 32.959614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087709, 0.270924, -0.958596,
		-0.132485, -0.950584, -0.280782,
		-0.987296, 0.151627, -0.047481,
		32.321922, 34.799709, 32.945370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854908, 34.376530, 32.433086>,  <33.013031, 34.693573, 32.978607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854908, 34.376530, 32.433086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537815, 34.609646, 32.504570>,  <32.347561, 34.749516, 32.547459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537815, 34.609646, 32.504570>,  <32.854908, 34.376530, 32.433086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537815, 34.609646, 32.504570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153632, 0.474722, -0.866624,
		-0.589895, -0.659544, -0.465861,
		-0.792730, 0.582788, 0.178709,
		32.299995, 34.784481, 32.558182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537804, 34.236244, 32.197090>,  <32.854908, 34.376530, 32.433086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537804, 34.236244, 32.197090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 34.298355, 32.429104>,  <34.049583, 34.335621, 32.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 34.298355, 32.429104>,  <33.537804, 34.236244, 32.197090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857666, 34.298355, 32.429104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139348, -0.891625, 0.430799,
		0.584066, -0.425317, -0.691355,
		0.799656, 0.155276, 0.580035,
		34.097561, 34.344936, 32.603115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072598, 33.597507, 32.228420>,  <33.537804, 34.236244, 32.197090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072598, 33.597507, 32.228420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138454, 33.784122, 32.576038>,  <34.177967, 33.896091, 32.784607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138454, 33.784122, 32.576038>,  <34.072598, 33.597507, 32.228420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138454, 33.784122, 32.576038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110991, -0.884234, 0.453665,
		0.980088, 0.021763, -0.197365,
		0.164644, 0.466538, 0.869043,
		34.187847, 33.924084, 32.836750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633778, 33.183064, 32.540989>,  <34.072598, 33.597507, 32.228420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633778, 33.183064, 32.540989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524235, 33.409801, 32.851780>,  <34.458508, 33.545845, 33.038254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524235, 33.409801, 32.851780>,  <34.633778, 33.183064, 32.540989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524235, 33.409801, 32.851780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097325, -0.787380, 0.608737,
		0.956833, 0.242328, 0.160464,
		-0.273860, 0.566843, 0.776975,
		34.442078, 33.579853, 33.084873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107105, 32.993176, 33.057800>,  <34.633778, 33.183064, 32.540989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107105, 32.993176, 33.057800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 33.140076, 33.228249>,  <34.577972, 33.228214, 33.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 33.140076, 33.228249>,  <35.107105, 32.993176, 33.057800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776398, 33.140076, 33.228249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132169, -0.609471, 0.781714,
		0.546792, 0.702618, 0.455353,
		-0.826771, 0.367252, 0.426118,
		34.528366, 33.250252, 33.356083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278465, 33.107761, 33.723736>,  <35.107105, 32.993176, 33.057800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278465, 33.107761, 33.723736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879028, 33.089321, 33.734226>,  <34.639366, 33.078255, 33.740520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879028, 33.089321, 33.734226>,  <35.278465, 33.107761, 33.723736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879028, 33.089321, 33.734226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050453, -0.672990, 0.737928,
		-0.016371, 0.738213, 0.674369,
		-0.998592, -0.046104, 0.026227,
		34.579453, 33.075489, 33.742096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135479, 33.354706, 34.445690>,  <35.278465, 33.107761, 33.723736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135479, 33.354706, 34.445690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822395, 33.156712, 34.294773>,  <34.634544, 33.037914, 34.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822395, 33.156712, 34.294773>,  <35.135479, 33.354706, 34.445690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822395, 33.156712, 34.294773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145320, -0.444112, 0.884108,
		-0.605180, 0.746831, 0.275681,
		-0.782713, -0.494983, -0.377297,
		34.587582, 33.008217, 34.181583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620701, 33.401516, 34.884052>,  <35.135479, 33.354706, 34.445690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620701, 33.401516, 34.884052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498180, 33.077858, 34.683468>,  <34.424667, 32.883663, 34.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498180, 33.077858, 34.683468>,  <34.620701, 33.401516, 34.884052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498180, 33.077858, 34.683468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244361, -0.442295, 0.862939,
		-0.920037, 0.386854, -0.062250,
		-0.306299, -0.809147, -0.501460,
		34.406292, 32.835114, 34.533031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908710, 33.232727, 35.143993>,  <34.620701, 33.401516, 34.884052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908710, 33.232727, 35.143993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017982, 32.897675, 34.954788>,  <34.083546, 32.696644, 34.841267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017982, 32.897675, 34.954788>,  <33.908710, 33.232727, 35.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017982, 32.897675, 34.954788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313335, -0.542381, 0.779516,
		-0.909502, -0.064738, -0.410628,
		0.273181, -0.837635, -0.473012,
		34.099937, 32.646385, 34.812885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459518, 32.723309, 35.435196>,  <33.908710, 33.232727, 35.143993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459518, 32.723309, 35.435196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773216, 32.522137, 35.289860>,  <33.961437, 32.401436, 35.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773216, 32.522137, 35.289860>,  <33.459518, 32.723309, 35.435196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773216, 32.522137, 35.289860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177984, -0.743364, 0.644772,
		-0.594370, -0.440992, -0.672496,
		0.784248, -0.502927, -0.363343,
		34.008492, 32.371258, 35.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232357, 32.107109, 35.374157>,  <33.459518, 32.723309, 35.435196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232357, 32.107109, 35.374157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618656, 32.005962, 35.350861>,  <33.850437, 31.945274, 35.336884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618656, 32.005962, 35.350861>,  <33.232357, 32.107109, 35.374157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618656, 32.005962, 35.350861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185707, -0.830282, 0.525494,
		-0.181233, -0.496679, -0.848801,
		0.965747, -0.252866, -0.058238,
		33.908379, 31.930103, 35.333389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222218, 31.383240, 35.508602>,  <33.232357, 32.107109, 35.374157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222218, 31.383240, 35.508602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594524, 31.504293, 35.590660>,  <33.817909, 31.576925, 35.639893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594524, 31.504293, 35.590660>,  <33.222218, 31.383240, 35.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594524, 31.504293, 35.590660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000310, -0.560443, 0.828193,
		0.365610, -0.770919, -0.521549,
		0.930768, 0.302634, 0.205143,
		33.873756, 31.595083, 35.652203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633224, 30.799646, 35.615612>,  <33.222218, 31.383240, 35.508602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633224, 30.799646, 35.615612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830662, 31.089134, 35.808525>,  <33.949123, 31.262827, 35.924274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830662, 31.089134, 35.808525>,  <33.633224, 30.799646, 35.615612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830662, 31.089134, 35.808525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054560, -0.527685, 0.847686,
		0.867982, -0.444722, -0.220973,
		0.493589, 0.723720, 0.482285,
		33.978737, 31.306250, 35.953209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127392, 30.455641, 36.047646>,  <33.633224, 30.799646, 35.615612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127392, 30.455641, 36.047646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110386, 30.824141, 36.202305>,  <34.100182, 31.045240, 36.295101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110386, 30.824141, 36.202305>,  <34.127392, 30.455641, 36.047646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110386, 30.824141, 36.202305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044658, -0.388362, 0.920424,
		0.998097, 0.021866, 0.057653,
		-0.042516, 0.921247, 0.386646,
		34.097630, 31.100515, 36.318298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603458, 30.424454, 36.637615>,  <34.127392, 30.455641, 36.047646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603458, 30.424454, 36.637615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338928, 30.718311, 36.698212>,  <34.180210, 30.894627, 36.734570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338928, 30.718311, 36.698212>,  <34.603458, 30.424454, 36.637615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338928, 30.718311, 36.698212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163082, -0.337947, 0.926928,
		0.732157, 0.588295, 0.343300,
		-0.661324, 0.734643, 0.151489,
		34.140530, 30.938704, 36.743660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716793, 30.731207, 37.272209>,  <34.603458, 30.424454, 36.637615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716793, 30.731207, 37.272209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331520, 30.815126, 37.204960>,  <34.100357, 30.865479, 37.164608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331520, 30.815126, 37.204960>,  <34.716793, 30.731207, 37.272209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331520, 30.815126, 37.204960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226637, -0.297181, 0.927534,
		0.144630, 0.931487, 0.333787,
		-0.963181, 0.209798, -0.168128,
		34.042564, 30.878065, 37.154522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401722, 30.894079, 37.900894>,  <34.716793, 30.731207, 37.272209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401722, 30.894079, 37.900894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077816, 30.797216, 37.687111>,  <33.883472, 30.739100, 37.558842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077816, 30.797216, 37.687111>,  <34.401722, 30.894079, 37.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077816, 30.797216, 37.687111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427581, -0.380241, 0.820117,
		-0.401819, 0.892624, 0.204364,
		-0.809763, -0.242156, -0.534457,
		33.834888, 30.724569, 37.526775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818233, 31.191957, 38.316654>,  <34.401722, 30.894079, 37.900894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818233, 31.191957, 38.316654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674526, 30.911467, 38.070332>,  <33.588303, 30.743172, 37.922539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674526, 30.911467, 38.070332>,  <33.818233, 31.191957, 38.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674526, 30.911467, 38.070332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596951, -0.334532, 0.729204,
		-0.717341, 0.629581, -0.298412,
		-0.359265, -0.701225, -0.615802,
		33.566746, 30.701099, 37.885590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119095, 31.278963, 38.382496>,  <33.818233, 31.191957, 38.316654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119095, 31.278963, 38.382496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201832, 30.917831, 38.231701>,  <33.251472, 30.701153, 38.141224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201832, 30.917831, 38.231701>,  <33.119095, 31.278963, 38.382496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201832, 30.917831, 38.231701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693140, -0.407162, 0.594791,
		-0.690488, 0.138276, -0.710004,
		0.206842, -0.902828, -0.376985,
		33.263885, 30.646982, 38.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515686, 30.950209, 38.392010>,  <33.119095, 31.278963, 38.382496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515686, 30.950209, 38.392010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752823, 30.633631, 38.332466>,  <32.895103, 30.443684, 38.296741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752823, 30.633631, 38.332466>,  <32.515686, 30.950209, 38.392010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752823, 30.633631, 38.332466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489292, -0.500800, 0.713998,
		-0.639638, -0.350449, -0.684141,
		0.592837, -0.791445, -0.148858,
		32.930676, 30.396196, 38.287807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054005, 30.452326, 38.560398>,  <32.515686, 30.950209, 38.392010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054005, 30.452326, 38.560398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401951, 30.256403, 38.583824>,  <32.610718, 30.138849, 38.597878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401951, 30.256403, 38.583824>,  <32.054005, 30.452326, 38.560398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401951, 30.256403, 38.583824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335629, -0.500651, 0.797936,
		-0.361515, -0.713750, -0.599891,
		0.869863, -0.489806, 0.058562,
		32.662910, 30.109461, 38.601395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778023, 29.855549, 38.767990>,  <32.054005, 30.452326, 38.560398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778023, 29.855549, 38.767990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168751, 29.841547, 38.852459>,  <32.403187, 29.833147, 38.903141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168751, 29.841547, 38.852459>,  <31.778023, 29.855549, 38.767990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168751, 29.841547, 38.852459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203375, -0.459469, 0.864597,
		0.066764, -0.887504, -0.455938,
		0.976822, -0.035002, 0.211172,
		32.461796, 29.831047, 38.915810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875530, 29.169724, 38.992989>,  <31.778023, 29.855549, 38.767990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875530, 29.169724, 38.992989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189800, 29.378435, 39.125931>,  <32.378361, 29.503662, 39.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189800, 29.378435, 39.125931>,  <31.875530, 29.169724, 38.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189800, 29.378435, 39.125931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083544, -0.442828, 0.892706,
		0.612975, -0.729142, -0.304326,
		0.785673, 0.521781, 0.332358,
		32.425503, 29.534969, 39.225639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198009, 28.650597, 39.391068>,  <31.875530, 29.169724, 38.992989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198009, 28.650597, 39.391068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339706, 28.999796, 39.525166>,  <32.424725, 29.209316, 39.605625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339706, 28.999796, 39.525166>,  <32.198009, 28.650597, 39.391068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339706, 28.999796, 39.525166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051384, -0.339777, 0.939101,
		0.933742, -0.349894, -0.075505,
		0.354241, 0.872998, 0.335243,
		32.445980, 29.261696, 39.625740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671757, 28.504292, 39.885288>,  <32.198009, 28.650597, 39.391068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671757, 28.504292, 39.885288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568527, 28.880169, 39.975063>,  <32.506588, 29.105696, 40.028931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568527, 28.880169, 39.975063>,  <32.671757, 28.504292, 39.885288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568527, 28.880169, 39.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306127, -0.299878, 0.903526,
		0.916342, 0.164471, 0.365057,
		-0.258077, 0.939693, 0.224442,
		32.491104, 29.162077, 40.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962433, 28.612860, 40.640656>,  <32.671757, 28.504292, 39.885288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962433, 28.612860, 40.640656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700497, 28.909883, 40.584385>,  <32.543335, 29.088097, 40.550621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700497, 28.909883, 40.584385>,  <32.962433, 28.612860, 40.640656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700497, 28.909883, 40.584385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346956, -0.130008, 0.928827,
		0.671418, 0.657044, 0.342770,
		-0.654843, 0.742557, -0.140676,
		32.504044, 29.132650, 40.542183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091167, 29.157684, 41.201096>,  <32.962433, 28.612860, 40.640656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091167, 29.157684, 41.201096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726517, 29.214457, 41.046799>,  <32.507725, 29.248520, 40.954220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726517, 29.214457, 41.046799>,  <33.091167, 29.157684, 41.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726517, 29.214457, 41.046799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396934, -0.060404, 0.915857,
		0.106688, 0.988032, 0.111403,
		-0.911625, 0.141931, -0.385739,
		32.453030, 29.257036, 40.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751060, 29.713184, 41.469296>,  <33.091167, 29.157684, 41.201096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751060, 29.713184, 41.469296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440708, 29.487406, 41.356575>,  <32.254498, 29.351938, 41.288940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440708, 29.487406, 41.356575>,  <32.751060, 29.713184, 41.469296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440708, 29.487406, 41.356575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334559, -0.010578, 0.942315,
		-0.534868, 0.825401, -0.180633,
		-0.775878, -0.564447, -0.281804,
		32.207947, 29.318071, 41.272034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137108, 29.982468, 41.754517>,  <32.751060, 29.713184, 41.469296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137108, 29.982468, 41.754517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039040, 29.600531, 41.687386>,  <31.980200, 29.371368, 41.647106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039040, 29.600531, 41.687386>,  <32.137108, 29.982468, 41.754517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039040, 29.600531, 41.687386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446390, -0.042484, 0.893830,
		-0.860598, 0.294052, -0.415817,
		-0.245167, -0.954845, -0.167823,
		31.965490, 29.314077, 41.637039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636635, 29.887474, 42.212921>,  <32.137108, 29.982468, 41.754517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636635, 29.887474, 42.212921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738787, 29.508732, 42.134693>,  <31.800077, 29.281487, 42.087757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738787, 29.508732, 42.134693>,  <31.636635, 29.887474, 42.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738787, 29.508732, 42.134693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348470, -0.278828, 0.894887,
		-0.901859, -0.160384, -0.401158,
		0.255380, -0.946854, -0.195575,
		31.815401, 29.224676, 42.076019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039066, 29.439934, 42.400642>,  <31.636635, 29.887474, 42.212921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039066, 29.439934, 42.400642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356607, 29.197020, 42.413265>,  <31.547132, 29.051271, 42.420841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356607, 29.197020, 42.413265>,  <31.039066, 29.439934, 42.400642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356607, 29.197020, 42.413265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352237, -0.416901, 0.837928,
		-0.495706, -0.676309, -0.544868,
		0.793854, -0.607289, 0.031560,
		31.594765, 29.014833, 42.422733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804487, 28.772770, 42.654625>,  <31.039066, 29.439934, 42.400642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804487, 28.772770, 42.654625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196787, 28.747044, 42.728374>,  <31.432167, 28.731607, 42.772625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196787, 28.747044, 42.728374>,  <30.804487, 28.772770, 42.654625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196787, 28.747044, 42.728374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189872, -0.534605, 0.823496,
		0.045605, -0.842651, -0.536525,
		0.980749, -0.064316, 0.184376,
		31.491013, 28.727749, 42.783688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956577, 28.017992, 42.768917>,  <30.804487, 28.772770, 42.654625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956577, 28.017992, 42.768917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250360, 28.242435, 42.921612>,  <31.426630, 28.377102, 43.013229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250360, 28.242435, 42.921612>,  <30.956577, 28.017992, 42.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250360, 28.242435, 42.921612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023376, -0.541244, 0.840541,
		0.678250, -0.626267, -0.384405,
		0.734459, 0.561111, 0.381738,
		31.470697, 28.410769, 43.036133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325132, 27.497698, 43.189011>,  <30.956577, 28.017992, 42.768917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325132, 27.497698, 43.189011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492416, 27.851805, 43.270401>,  <31.592787, 28.064268, 43.319237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492416, 27.851805, 43.270401>,  <31.325132, 27.497698, 43.189011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492416, 27.851805, 43.270401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298945, -0.345669, 0.889463,
		0.857748, -0.311154, -0.409209,
		0.418211, 0.885266, 0.203479,
		31.617880, 28.117384, 43.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074215, 27.362772, 43.311981>,  <31.325132, 27.497698, 43.189011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074215, 27.362772, 43.311981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962713, 27.697508, 43.500450>,  <31.895813, 27.898350, 43.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962713, 27.697508, 43.500450>,  <32.074215, 27.362772, 43.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962713, 27.697508, 43.500450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289443, -0.394595, 0.872077,
		0.915708, 0.379470, -0.132222,
		-0.278752, 0.836838, 0.471169,
		31.879087, 27.948559, 43.641800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569454, 27.491318, 43.934948>,  <32.074215, 27.362772, 43.311981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569454, 27.491318, 43.934948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247345, 27.713518, 44.017849>,  <32.054081, 27.846838, 44.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247345, 27.713518, 44.017849>,  <32.569454, 27.491318, 43.934948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247345, 27.713518, 44.017849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039071, -0.398508, 0.916332,
		0.591615, 0.729800, 0.342612,
		-0.805273, 0.555502, 0.207250,
		32.005764, 27.880169, 44.080025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754494, 27.813885, 44.502991>,  <32.569454, 27.491318, 43.934948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754494, 27.813885, 44.502991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356178, 27.848835, 44.514141>,  <32.117191, 27.869804, 44.520832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356178, 27.848835, 44.514141>,  <32.754494, 27.813885, 44.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356178, 27.848835, 44.514141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000681, -0.310943, 0.950428,
		0.091710, 0.946404, 0.309692,
		-0.995785, 0.087375, 0.027872,
		32.057442, 27.875048, 44.522503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539253, 28.208921, 45.114880>,  <32.754494, 27.813885, 44.502991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539253, 28.208921, 45.114880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197433, 28.021255, 45.025772>,  <31.992342, 27.908655, 44.972309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197433, 28.021255, 45.025772>,  <32.539253, 28.208921, 45.114880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197433, 28.021255, 45.025772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131230, -0.219947, 0.966645,
		-0.502514, 0.855281, 0.126387,
		-0.854551, -0.469167, -0.222766,
		31.941069, 27.880505, 44.958942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000038, 28.449528, 45.551025>,  <32.539253, 28.208921, 45.114880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000038, 28.449528, 45.551025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896004, 28.087683, 45.415947>,  <31.833584, 27.870577, 45.334900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896004, 28.087683, 45.415947>,  <32.000038, 28.449528, 45.551025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896004, 28.087683, 45.415947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174899, -0.299809, 0.937830,
		-0.949614, 0.302976, -0.080240,
		-0.260083, -0.904610, -0.337693,
		31.817978, 27.816299, 45.314640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887058, 29.096622, 45.894661>,  <32.000038, 28.449528, 45.551025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887058, 29.096622, 45.894661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172871, 29.107187, 46.174305>,  <32.344357, 29.113527, 46.342091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172871, 29.107187, 46.174305>,  <31.887058, 29.096622, 45.894661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172871, 29.107187, 46.174305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572169, 0.552963, -0.605685,
		-0.402578, 0.832787, 0.379996,
		0.714530, 0.026414, 0.699106,
		32.387230, 29.115110, 46.384037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094643, 29.762590, 45.863136>,  <31.887058, 29.096622, 45.894661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094643, 29.762590, 45.863136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406784, 29.587696, 46.041962>,  <32.594070, 29.482759, 46.149258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406784, 29.587696, 46.041962>,  <32.094643, 29.762590, 45.863136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406784, 29.587696, 46.041962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624051, 0.498724, -0.601528,
		0.040049, 0.748397, 0.662041,
		0.780357, -0.437238, 0.447064,
		32.640892, 29.456524, 46.176083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601482, 30.273115, 46.165516>,  <32.094643, 29.762590, 45.863136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601482, 30.273115, 46.165516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807453, 29.934025, 46.114582>,  <32.931034, 29.730572, 46.084023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807453, 29.934025, 46.114582>,  <32.601482, 30.273115, 46.165516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807453, 29.934025, 46.114582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673962, 0.492141, -0.550974,
		0.529743, 0.197889, 0.824750,
		0.514925, -0.847725, -0.127339,
		32.961929, 29.679707, 46.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301800, 30.510878, 46.156166>,  <32.601482, 30.273115, 46.165516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301800, 30.510878, 46.156166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321053, 30.137808, 46.013168>,  <33.332603, 29.913965, 45.927372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321053, 30.137808, 46.013168>,  <33.301800, 30.510878, 46.156166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321053, 30.137808, 46.013168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639691, 0.303659, -0.706107,
		0.767124, -0.194698, 0.611239,
		0.048130, -0.932676, -0.357491,
		33.335491, 29.858006, 45.905922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971619, 30.389580, 46.084782>,  <33.301800, 30.510878, 46.156166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971619, 30.389580, 46.084782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802555, 30.123903, 45.838139>,  <33.701115, 29.964497, 45.690151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802555, 30.123903, 45.838139>,  <33.971619, 30.389580, 46.084782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802555, 30.123903, 45.838139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606368, 0.298402, -0.737072,
		0.673555, -0.685423, 0.276622,
		-0.422661, -0.664193, -0.616608,
		33.675758, 29.924646, 45.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541267, 30.063211, 45.735508>,  <33.971619, 30.389580, 46.084782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541267, 30.063211, 45.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218304, 30.009392, 45.505730>,  <34.024525, 29.977100, 45.367863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218304, 30.009392, 45.505730>,  <34.541267, 30.063211, 45.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218304, 30.009392, 45.505730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533722, 0.248424, -0.808348,
		0.251564, -0.959246, -0.128700,
		-0.807376, -0.134661, -0.574465,
		33.976082, 29.969027, 45.333393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810284, 29.810862, 44.994297>,  <34.541267, 30.063211, 45.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810284, 29.810862, 44.994297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432804, 29.930149, 44.937038>,  <34.206314, 30.001722, 44.902683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432804, 29.930149, 44.937038>,  <34.810284, 29.810862, 44.994297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432804, 29.930149, 44.937038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241250, 0.324404, -0.914637,
		-0.226327, -0.897678, -0.378087,
		-0.943703, 0.298221, -0.143144,
		34.149693, 30.019615, 44.894096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661674, 29.649551, 44.368000>,  <34.810284, 29.810862, 44.994297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661674, 29.649551, 44.368000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400036, 29.935987, 44.465466>,  <34.243053, 30.107849, 44.523945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400036, 29.935987, 44.465466>,  <34.661674, 29.649551, 44.368000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400036, 29.935987, 44.465466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261590, 0.516401, -0.815415,
		-0.709740, -0.469619, -0.525098,
		-0.654095, 0.716092, 0.243663,
		34.203808, 30.150816, 44.538563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425156, 29.827839, 43.657356>,  <34.661674, 29.649551, 44.368000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425156, 29.827839, 43.657356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287106, 30.114847, 43.899364>,  <34.204273, 30.287052, 44.044571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287106, 30.114847, 43.899364>,  <34.425156, 29.827839, 43.657356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287106, 30.114847, 43.899364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136929, 0.676226, -0.723857,
		-0.928513, -0.166979, -0.331634,
		-0.345129, 0.717521, 0.605020,
		34.183567, 30.330103, 44.080872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877956, 30.123264, 43.288940>,  <34.425156, 29.827839, 43.657356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877956, 30.123264, 43.288940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979965, 30.399168, 43.559998>,  <34.041172, 30.564711, 43.722630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979965, 30.399168, 43.559998>,  <33.877956, 30.123264, 43.288940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979965, 30.399168, 43.559998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054050, 0.709886, -0.702240,
		-0.965422, 0.142464, 0.218321,
		0.255027, 0.689758, 0.677639,
		34.056473, 30.606096, 43.763290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407463, 30.669348, 43.209240>,  <33.877956, 30.123264, 43.288940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407463, 30.669348, 43.209240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724754, 30.826984, 43.394920>,  <33.915127, 30.921566, 43.506329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724754, 30.826984, 43.394920>,  <33.407463, 30.669348, 43.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724754, 30.826984, 43.394920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174381, 0.583388, -0.793252,
		-0.583426, 0.710176, 0.394035,
		0.793224, 0.394092, 0.464205,
		33.962723, 30.945211, 43.534184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326912, 31.391531, 43.090839>,  <33.407463, 30.669348, 43.209240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326912, 31.391531, 43.090839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707191, 31.366371, 43.212303>,  <33.935360, 31.351274, 43.285183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707191, 31.366371, 43.212303>,  <33.326912, 31.391531, 43.090839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707191, 31.366371, 43.212303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264124, 0.677358, -0.686603,
		-0.162501, 0.732959, 0.660579,
		0.950701, -0.062901, 0.303664,
		33.992401, 31.347502, 43.303402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592617, 32.051746, 43.183685>,  <33.326912, 31.391531, 43.090839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592617, 32.051746, 43.183685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915813, 31.825602, 43.117336>,  <34.109734, 31.689915, 43.077526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915813, 31.825602, 43.117336>,  <33.592617, 32.051746, 43.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915813, 31.825602, 43.117336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240445, 0.573412, -0.783189,
		0.537896, 0.592930, 0.599251,
		0.807994, -0.565362, -0.165869,
		34.158211, 31.655993, 43.067577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181240, 32.546356, 42.955566>,  <33.592617, 32.051746, 43.183685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181240, 32.546356, 42.955566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244568, 32.176983, 42.815739>,  <34.282562, 31.955359, 42.731842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244568, 32.176983, 42.815739>,  <34.181240, 32.546356, 42.955566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244568, 32.176983, 42.815739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232923, 0.378972, -0.895616,
		0.959522, 0.060367, 0.275087,
		0.158316, -0.923437, -0.349571,
		34.292061, 31.899952, 42.710869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952919, 32.406490, 42.782768>,  <34.181240, 32.546356, 42.955566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952919, 32.406490, 42.782768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728653, 32.146217, 42.577923>,  <34.594093, 31.990053, 42.455017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728653, 32.146217, 42.577923>,  <34.952919, 32.406490, 42.782768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728653, 32.146217, 42.577923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315639, 0.403825, -0.858660,
		0.765523, -0.643065, -0.021029,
		-0.560666, -0.650687, -0.512113,
		34.560452, 31.951012, 42.424290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274769, 32.302090, 42.090218>,  <34.952919, 32.406490, 42.782768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274769, 32.302090, 42.090218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923489, 32.124023, 42.020252>,  <34.712719, 32.017185, 41.978275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923489, 32.124023, 42.020252>,  <35.274769, 32.302090, 42.090218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923489, 32.124023, 42.020252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048876, 0.280259, -0.958679,
		0.475788, -0.850462, -0.224366,
		-0.878201, -0.445162, -0.174911,
		34.660027, 31.990475, 41.967777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380581, 31.968380, 41.511379>,  <35.274769, 32.302090, 42.090218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380581, 31.968380, 41.511379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982437, 32.006634, 41.515812>,  <34.743553, 32.029587, 41.518471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982437, 32.006634, 41.515812>,  <35.380581, 31.968380, 41.511379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982437, 32.006634, 41.515812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014615, 0.263839, -0.964456,
		-0.095159, -0.959814, -0.264011,
		-0.995355, 0.095636, 0.011079,
		34.683830, 32.035324, 41.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141243, 31.614246, 40.905941>,  <35.380581, 31.968380, 41.511379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141243, 31.614246, 40.905941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848541, 31.868519, 41.004280>,  <34.672920, 32.021084, 41.063286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848541, 31.868519, 41.004280>,  <35.141243, 31.614246, 40.905941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848541, 31.868519, 41.004280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059928, 0.299306, -0.952273,
		-0.678926, -0.711565, -0.180925,
		-0.731756, 0.635681, 0.245849,
		34.629013, 32.059223, 41.078033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643120, 31.443651, 40.404655>,  <35.141243, 31.614246, 40.905941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643120, 31.443651, 40.404655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547264, 31.807117, 40.541420>,  <34.489750, 32.025196, 40.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547264, 31.807117, 40.541420>,  <34.643120, 31.443651, 40.404655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547264, 31.807117, 40.541420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072786, 0.334364, -0.939629,
		-0.968131, -0.250055, -0.013987,
		-0.239635, 0.908666, 0.341909,
		34.475372, 32.079716, 40.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985508, 31.605234, 40.173168>,  <34.643120, 31.443651, 40.404655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985508, 31.605234, 40.173168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180946, 31.947538, 40.241215>,  <34.298210, 32.152920, 40.282043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180946, 31.947538, 40.241215>,  <33.985508, 31.605234, 40.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180946, 31.947538, 40.241215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041917, 0.217773, -0.975099,
		-0.871501, 0.469302, 0.142275,
		0.488600, 0.855763, 0.170118,
		34.327526, 32.204266, 40.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789017, 32.021854, 39.638721>,  <33.985508, 31.605234, 40.173168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789017, 32.021854, 39.638721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098644, 32.235001, 39.775471>,  <34.284420, 32.362888, 39.857521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098644, 32.235001, 39.775471>,  <33.789017, 32.021854, 39.638721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098644, 32.235001, 39.775471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217901, 0.282765, -0.934111,
		-0.594420, 0.797561, 0.102769,
		0.774070, 0.532861, 0.341871,
		34.330864, 32.394859, 39.878033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693871, 32.675411, 39.290188>,  <33.789017, 32.021854, 39.638721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693871, 32.675411, 39.290188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077751, 32.634209, 39.394768>,  <34.308079, 32.609486, 39.457516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077751, 32.634209, 39.394768>,  <33.693871, 32.675411, 39.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077751, 32.634209, 39.394768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280187, 0.279797, -0.918264,
		0.021437, 0.954517, 0.297385,
		0.959706, -0.103008, 0.261445,
		34.365662, 32.603306, 39.473202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955883, 33.252693, 39.081631>,  <33.693871, 32.675411, 39.290188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955883, 33.252693, 39.081631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286442, 33.033195, 39.132137>,  <34.484779, 32.901497, 39.162441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286442, 33.033195, 39.132137>,  <33.955883, 33.252693, 39.081631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286442, 33.033195, 39.132137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268715, 0.187278, -0.944838,
		0.494827, 0.814744, 0.302222,
		0.826401, -0.548743, 0.126264,
		34.534363, 32.868572, 39.170017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416473, 33.545242, 38.677887>,  <33.955883, 33.252693, 39.081631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416473, 33.545242, 38.677887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562511, 33.175667, 38.723560>,  <34.650135, 32.953922, 38.750965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562511, 33.175667, 38.723560>,  <34.416473, 33.545242, 38.677887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562511, 33.175667, 38.723560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100430, -0.082850, -0.991489,
		0.925538, 0.373455, 0.062543,
		0.365094, -0.923941, 0.114187,
		34.672039, 32.898483, 38.757816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962826, 33.639122, 38.447445>,  <34.416473, 33.545242, 38.677887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962826, 33.639122, 38.447445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949688, 33.239426, 38.439114>,  <34.941807, 32.999607, 38.434116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949688, 33.239426, 38.439114>,  <34.962826, 33.639122, 38.447445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949688, 33.239426, 38.439114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462286, 0.003284, -0.886725,
		0.886122, -0.038752, 0.461828,
		-0.032846, -0.999243, -0.020824,
		34.939835, 32.939651, 38.432865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725510, 33.383255, 38.314964>,  <34.962826, 33.639122, 38.447445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725510, 33.383255, 38.314964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502892, 33.066822, 38.213425>,  <35.369320, 32.876961, 38.152500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502892, 33.066822, 38.213425>,  <35.725510, 33.383255, 38.314964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502892, 33.066822, 38.213425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517977, -0.091493, -0.850488,
		0.649584, -0.604823, 0.460685,
		-0.556544, -0.791087, -0.253851,
		35.335930, 32.829494, 38.137268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155506, 32.806747, 38.262276>,  <35.725510, 33.383255, 38.314964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155506, 32.806747, 38.262276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829159, 32.788162, 38.031727>,  <35.633350, 32.777012, 37.893398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829159, 32.788162, 38.031727>,  <36.155506, 32.806747, 38.262276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829159, 32.788162, 38.031727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578145, -0.047412, -0.814556,
		0.010522, -0.997794, 0.065545,
		-0.815866, -0.046465, -0.576370,
		35.584400, 32.774223, 37.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175766, 32.157017, 37.753296>,  <36.155506, 32.806747, 38.262276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175766, 32.157017, 37.753296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936096, 32.443558, 37.610287>,  <35.792294, 32.615482, 37.524479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936096, 32.443558, 37.610287>,  <36.175766, 32.157017, 37.753296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936096, 32.443558, 37.610287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571859, 0.070396, -0.817326,
		-0.560327, -0.694176, -0.451834,
		-0.599175, 0.716355, -0.357526,
		35.756344, 32.658463, 37.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159939, 32.014652, 37.038712>,  <36.175766, 32.157017, 37.753296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159939, 32.014652, 37.038712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042988, 32.396786, 37.055908>,  <35.972816, 32.626068, 37.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042988, 32.396786, 37.055908>,  <36.159939, 32.014652, 37.038712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042988, 32.396786, 37.055908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664919, 0.235397, -0.708852,
		-0.687311, -0.178669, -0.704046,
		-0.292380, 0.955335, 0.042990,
		35.955273, 32.683388, 37.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089741, 32.328434, 36.328003>,  <36.159939, 32.014652, 37.038712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089741, 32.328434, 36.328003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123390, 32.651585, 36.561329>,  <36.143581, 32.845474, 36.701324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123390, 32.651585, 36.561329>,  <36.089741, 32.328434, 36.328003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123390, 32.651585, 36.561329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675741, 0.383964, -0.629242,
		-0.732322, 0.447106, -0.513615,
		0.084128, 0.807879, 0.583313,
		36.148628, 32.893948, 36.736324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183014, 32.906082, 35.865635>,  <36.089741, 32.328434, 36.328003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183014, 32.906082, 35.865635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299072, 33.070560, 36.211288>,  <36.368710, 33.169247, 36.418682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299072, 33.070560, 36.211288>,  <36.183014, 32.906082, 35.865635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299072, 33.070560, 36.211288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668592, 0.558951, -0.490468,
		-0.684688, 0.720063, -0.112743,
		0.290150, 0.411197, 0.864136,
		36.386116, 33.193920, 36.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215363, 33.624920, 35.712936>,  <36.183014, 32.906082, 35.865635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215363, 33.624920, 35.712936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447945, 33.551647, 36.030014>,  <36.587494, 33.507683, 36.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447945, 33.551647, 36.030014>,  <36.215363, 33.624920, 35.712936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447945, 33.551647, 36.030014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698662, 0.611665, -0.371130,
		-0.416876, 0.769617, 0.483636,
		0.581451, -0.183183, 0.792691,
		36.622379, 33.496693, 36.267822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420212, 34.294514, 35.928371>,  <36.215363, 33.624920, 35.712936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420212, 34.294514, 35.928371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670742, 34.015900, 36.068401>,  <36.821060, 33.848732, 36.152420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670742, 34.015900, 36.068401>,  <36.420212, 34.294514, 35.928371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670742, 34.015900, 36.068401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776313, 0.516344, -0.361563,
		0.071083, 0.498223, 0.864130,
		0.626327, -0.696536, 0.350074,
		36.858639, 33.806938, 36.173424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995251, 34.726486, 36.216484>,  <36.420212, 34.294514, 35.928371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995251, 34.726486, 36.216484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160572, 34.366352, 36.161976>,  <37.259766, 34.150272, 36.129269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160572, 34.366352, 36.161976>,  <36.995251, 34.726486, 36.216484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160572, 34.366352, 36.161976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861227, 0.435103, -0.262626,
		0.295745, -0.008818, 0.955226,
		0.413306, -0.900337, -0.136274,
		37.284565, 34.096252, 36.121094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588146, 34.765137, 36.576965>,  <36.995251, 34.726486, 36.216484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588146, 34.765137, 36.576965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643013, 34.485527, 36.296238>,  <37.675934, 34.317760, 36.127804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643013, 34.485527, 36.296238>,  <37.588146, 34.765137, 36.576965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643013, 34.485527, 36.296238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858778, 0.437014, -0.267429,
		0.493643, -0.566020, 0.660256,
		0.137171, -0.699028, -0.701815,
		37.684166, 34.275818, 36.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156460, 34.325279, 36.669415>,  <37.588146, 34.765137, 36.576965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156460, 34.325279, 36.669415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111267, 34.277519, 36.274857>,  <38.084152, 34.248863, 36.038120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111267, 34.277519, 36.274857>,  <38.156460, 34.325279, 36.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111267, 34.277519, 36.274857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882192, 0.444694, -0.154872,
		0.457136, -0.887689, 0.055088,
		-0.112981, -0.119396, -0.986398,
		38.077374, 34.241699, 35.978939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859913, 34.155121, 36.492844>,  <38.156460, 34.325279, 36.669415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859913, 34.155121, 36.492844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662632, 34.203495, 36.148258>,  <38.544262, 34.232517, 35.941505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662632, 34.203495, 36.148258>,  <38.859913, 34.155121, 36.492844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662632, 34.203495, 36.148258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844946, 0.302150, -0.441329,
		0.206921, -0.945559, -0.251202,
		-0.493203, 0.120932, -0.861468,
		38.514671, 34.239773, 35.889816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239044, 33.781265, 36.093197>,  <38.859913, 34.155121, 36.492844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239044, 33.781265, 36.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041306, 34.069164, 35.898224>,  <38.922665, 34.241901, 35.781239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041306, 34.069164, 35.898224>,  <39.239044, 33.781265, 36.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041306, 34.069164, 35.898224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858736, 0.317334, -0.402333,
		-0.134897, -0.617470, -0.774941,
		-0.494344, 0.719743, -0.487436,
		38.893002, 34.285088, 35.751991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593727, 33.755436, 35.435959>,  <39.239044, 33.781265, 36.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593727, 33.755436, 35.435959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376427, 34.091255, 35.433525>,  <39.246044, 34.292747, 35.432064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376427, 34.091255, 35.433525>,  <39.593727, 33.755436, 35.435959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376427, 34.091255, 35.433525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774618, 0.498420, -0.389288,
		-0.323793, -0.216196, -0.921096,
		-0.543255, 0.839546, -0.006085,
		39.213451, 34.343121, 35.431698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643475, 33.974815, 34.751129>,  <39.593727, 33.755436, 35.435959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643475, 33.974815, 34.751129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557495, 34.275734, 35.000240>,  <39.505905, 34.456284, 35.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557495, 34.275734, 35.000240>,  <39.643475, 33.974815, 34.751129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557495, 34.275734, 35.000240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717745, 0.554129, -0.421644,
		-0.662298, 0.356359, -0.659067,
		-0.214952, 0.752296, 0.622773,
		39.493011, 34.501423, 35.187073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596325, 34.634884, 34.380302>,  <39.643475, 33.974815, 34.751129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596325, 34.634884, 34.380302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702488, 34.697876, 34.760777>,  <39.766186, 34.735672, 34.989063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702488, 34.697876, 34.760777>,  <39.596325, 34.634884, 34.380302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702488, 34.697876, 34.760777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877538, 0.369192, -0.305982,
		-0.399357, 0.915913, -0.040211,
		0.265408, 0.157483, 0.951188,
		39.782112, 34.745121, 35.046131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774311, 35.294231, 34.567390>,  <39.596325, 34.634884, 34.380302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774311, 35.294231, 34.567390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033867, 35.048100, 34.746418>,  <40.189602, 34.900421, 34.853832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033867, 35.048100, 34.746418>,  <39.774311, 35.294231, 34.567390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033867, 35.048100, 34.746418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733265, 0.662752, -0.151927,
		-0.203139, 0.426767, 0.881252,
		0.648889, -0.615329, 0.447564,
		40.228535, 34.863503, 34.880688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303688, 35.770554, 34.975227>,  <39.774311, 35.294231, 34.567390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303688, 35.770554, 34.975227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476013, 35.417137, 34.901737>,  <40.579407, 35.205086, 34.857643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476013, 35.417137, 34.901737>,  <40.303688, 35.770554, 34.975227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476013, 35.417137, 34.901737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899335, 0.437216, 0.006232,
		0.074820, -0.167913, 0.982958,
		0.430812, -0.883543, -0.183723,
		40.605255, 35.152073, 34.846619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686184, 35.453938, 35.622330>,  <40.303688, 35.770554, 34.975227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686184, 35.453938, 35.622330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838383, 35.357262, 35.265274>,  <40.929703, 35.299255, 35.051041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838383, 35.357262, 35.265274>,  <40.686184, 35.453938, 35.622330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838383, 35.357262, 35.265274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795512, 0.577748, 0.182668,
		0.471572, -0.779611, 0.412100,
		0.380500, -0.241689, -0.892640,
		40.952534, 35.284756, 34.997482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309258, 35.117935, 35.676208>,  <40.686184, 35.453938, 35.622330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309258, 35.117935, 35.676208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318130, 35.317787, 35.329826>,  <41.323456, 35.437698, 35.121998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318130, 35.317787, 35.329826>,  <41.309258, 35.117935, 35.676208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318130, 35.317787, 35.329826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921501, 0.325715, 0.211534,
		0.387743, -0.802672, -0.453182,
		0.022185, 0.499628, -0.865956,
		41.324787, 35.467674, 35.070038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939243, 34.897610, 35.456600>,  <41.309258, 35.117935, 35.676208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939243, 34.897610, 35.456600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846092, 35.255180, 35.303417>,  <41.790199, 35.469723, 35.211506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846092, 35.255180, 35.303417>,  <41.939243, 34.897610, 35.456600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846092, 35.255180, 35.303417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885441, 0.357757, 0.296656,
		0.402196, -0.270003, -0.874835,
		-0.232880, 0.893929, -0.382960,
		41.776230, 35.523357, 35.188530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481911, 35.110748, 34.965687>,  <41.939243, 34.897610, 35.456600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481911, 35.110748, 34.965687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288586, 35.421570, 35.126984>,  <42.172592, 35.608063, 35.223763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288586, 35.421570, 35.126984>,  <42.481911, 35.110748, 34.965687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288586, 35.421570, 35.126984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856783, 0.514451, 0.035554,
		-0.179819, 0.362673, -0.914403,
		-0.483310, 0.777051, 0.403240,
		42.143593, 35.654686, 35.247955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219002, 34.963741, 35.101337>,  <42.481911, 35.110748, 34.965687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219002, 34.963741, 35.101337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538792, 34.910339, 35.335606>,  <43.730667, 34.878300, 35.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538792, 34.910339, 35.335606>,  <43.219002, 34.963741, 35.101337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538792, 34.910339, 35.335606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311735, 0.741210, 0.594499,
		-0.513473, -0.657863, 0.550964,
		0.799479, -0.133505, 0.585671,
		43.778637, 34.870289, 35.511307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936852, 34.750809, 35.870888>,  <43.219002, 34.963741, 35.101337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936852, 34.750809, 35.870888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295788, 34.927303, 35.866859>,  <43.511150, 35.033199, 35.864441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295788, 34.927303, 35.866859>,  <42.936852, 34.750809, 35.870888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295788, 34.927303, 35.866859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337170, 0.700075, 0.629453,
		0.284788, -0.561434, 0.776973,
		0.897336, 0.441233, -0.010074,
		43.564987, 35.059673, 35.863838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132717, 34.716492, 36.517063>,  <42.936852, 34.750809, 35.870888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132717, 34.716492, 36.517063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356380, 35.010864, 36.364357>,  <43.490578, 35.187489, 36.272736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356380, 35.010864, 36.364357>,  <43.132717, 34.716492, 36.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356380, 35.010864, 36.364357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549317, 0.673765, 0.494258,
		0.620959, -0.066661, 0.781003,
		0.559161, 0.735933, -0.381763,
		43.524128, 35.231644, 36.249828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442200, 35.056324, 37.120331>,  <43.132717, 34.716492, 36.517063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442200, 35.056324, 37.120331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388241, 35.304741, 36.811497>,  <43.355865, 35.453789, 36.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388241, 35.304741, 36.811497>,  <43.442200, 35.056324, 37.120331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388241, 35.304741, 36.811497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543893, 0.604912, 0.581603,
		0.828240, 0.498389, 0.256177,
		-0.134900, 0.621039, -0.772083,
		43.347771, 35.491055, 36.579872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309902, 35.604317, 37.452374>,  <43.442200, 35.056324, 37.120331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309902, 35.604317, 37.452374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250416, 35.734856, 37.078983>,  <43.214725, 35.813179, 36.854950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250416, 35.734856, 37.078983>,  <43.309902, 35.604317, 37.452374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250416, 35.734856, 37.078983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604400, 0.717142, 0.347000,
		0.782679, 0.615798, 0.090596,
		-0.148712, 0.326345, -0.933479,
		43.205803, 35.832760, 36.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601822, 36.366852, 37.342506>,  <43.309902, 35.604317, 37.452374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601822, 36.366852, 37.342506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301319, 36.300941, 37.086864>,  <43.121017, 36.261395, 36.933479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301319, 36.300941, 37.086864>,  <43.601822, 36.366852, 37.342506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301319, 36.300941, 37.086864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458263, 0.827094, 0.325440,
		0.474976, 0.537368, -0.696874,
		-0.751262, -0.164775, -0.639105,
		43.075939, 36.251511, 36.895134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370636, 37.031368, 37.152782>,  <43.601822, 36.366852, 37.342506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370636, 37.031368, 37.152782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054749, 36.813042, 37.040768>,  <42.865215, 36.682045, 36.973560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054749, 36.813042, 37.040768>,  <43.370636, 37.031368, 37.152782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054749, 36.813042, 37.040768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597224, 0.788380, 0.147580,
		0.140220, 0.283789, -0.948579,
		-0.789722, -0.545821, -0.280032,
		42.817833, 36.649296, 36.956757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057182, 37.420826, 36.661961>,  <43.370636, 37.031368, 37.152782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057182, 37.420826, 36.661961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770813, 37.168953, 36.782593>,  <42.598991, 37.017830, 36.854973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770813, 37.168953, 36.782593>,  <43.057182, 37.420826, 36.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770813, 37.168953, 36.782593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624991, 0.770535, 0.125144,
		-0.311182, -0.098893, -0.945191,
		-0.715927, -0.629678, 0.301584,
		42.556034, 36.980049, 36.873070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474209, 37.674980, 36.398743>,  <43.057182, 37.420826, 36.661961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474209, 37.674980, 36.398743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361301, 37.457916, 36.715183>,  <42.293556, 37.327679, 36.905048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361301, 37.457916, 36.715183>,  <42.474209, 37.674980, 36.398743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361301, 37.457916, 36.715183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550804, 0.766846, 0.329489,
		-0.785453, -0.342736, -0.515359,
		-0.282273, -0.542659, 0.791102,
		42.276619, 37.295120, 36.952515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700939, 37.646080, 36.370819>,  <42.474209, 37.674980, 36.398743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700939, 37.646080, 36.370819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839275, 37.577095, 36.739742>,  <41.922276, 37.535706, 36.961098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839275, 37.577095, 36.739742>,  <41.700939, 37.646080, 36.370819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839275, 37.577095, 36.739742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507054, 0.792722, 0.338362,
		-0.789488, -0.584679, 0.186708,
		0.345840, -0.172462, 0.922308,
		41.943027, 37.525356, 37.016434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167847, 37.563709, 36.900822>,  <41.700939, 37.646080, 36.370819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167847, 37.563709, 36.900822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452007, 37.653431, 37.167664>,  <41.622501, 37.707264, 37.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452007, 37.653431, 37.167664>,  <41.167847, 37.563709, 36.900822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452007, 37.653431, 37.167664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650050, 0.572422, 0.499768,
		-0.269763, -0.788683, 0.552456,
		0.710397, 0.224305, 0.667101,
		41.665127, 37.720722, 37.367794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883854, 37.565437, 37.612793>,  <41.167847, 37.563709, 36.900822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883854, 37.565437, 37.612793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229847, 37.759312, 37.664772>,  <41.437443, 37.875637, 37.695961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229847, 37.759312, 37.664772>,  <40.883854, 37.565437, 37.612793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229847, 37.759312, 37.664772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492376, 0.769814, 0.406143,
		0.096816, -0.415289, 0.904523,
		0.864981, 0.484687, 0.129948,
		41.489342, 37.904716, 37.703758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826694, 37.659531, 38.338123>,  <40.883854, 37.565437, 37.612793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826694, 37.659531, 38.338123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125511, 37.906780, 38.240269>,  <41.304802, 38.055130, 38.181557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125511, 37.906780, 38.240269>,  <40.826694, 37.659531, 38.338123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125511, 37.906780, 38.240269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360326, 0.685751, 0.632385,
		0.558650, -0.384273, 0.735013,
		0.747045, 0.618126, -0.244631,
		41.349625, 38.092216, 38.166878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905155, 37.992870, 38.972500>,  <40.826694, 37.659531, 38.338123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905155, 37.992870, 38.972500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102802, 38.220520, 38.709610>,  <41.221390, 38.357109, 38.551876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102802, 38.220520, 38.709610>,  <40.905155, 37.992870, 38.972500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102802, 38.220520, 38.709610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196355, 0.809478, 0.553345,
		0.846933, -0.144366, 0.511726,
		0.494115, 0.569126, -0.657226,
		41.251038, 38.391258, 38.512444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425484, 38.399857, 39.351074>,  <40.905155, 37.992870, 38.972500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425484, 38.399857, 39.351074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340088, 38.596519, 39.013390>,  <41.288849, 38.714520, 38.810780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340088, 38.596519, 39.013390>,  <41.425484, 38.399857, 39.351074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340088, 38.596519, 39.013390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156948, 0.835649, 0.526364,
		0.964256, 0.244871, -0.101237,
		-0.213490, 0.491661, -0.844211,
		41.276039, 38.744019, 38.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929531, 38.975853, 39.340809>,  <41.425484, 38.399857, 39.351074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929531, 38.975853, 39.340809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622448, 39.062084, 39.099430>,  <41.438198, 39.113823, 38.954601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622448, 39.062084, 39.099430>,  <41.929531, 38.975853, 39.340809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622448, 39.062084, 39.099430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171277, 0.838417, 0.517418,
		0.617484, 0.500583, -0.606737,
		-0.767709, 0.215577, -0.603447,
		41.392136, 39.126759, 38.918396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078979, 39.629566, 39.224224>,  <41.929531, 38.975853, 39.340809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078979, 39.629566, 39.224224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693317, 39.623913, 39.118244>,  <41.461918, 39.620522, 39.054657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693317, 39.623913, 39.118244>,  <42.078979, 39.629566, 39.224224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693317, 39.623913, 39.118244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131877, 0.892024, 0.432321,
		0.230227, 0.451767, -0.861918,
		-0.964160, -0.014135, -0.264946,
		41.404068, 39.619671, 39.038761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963074, 40.254128, 38.913666>,  <42.078979, 39.629566, 39.224224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963074, 40.254128, 38.913666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603676, 40.122730, 39.030155>,  <41.388039, 40.043892, 39.100048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603676, 40.122730, 39.030155>,  <41.963074, 40.254128, 38.913666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603676, 40.122730, 39.030155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250765, 0.928548, 0.273706,
		-0.360322, 0.172894, -0.916666,
		-0.898490, -0.328490, 0.291221,
		41.334129, 40.024181, 39.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410767, 40.534519, 38.428852>,  <41.963074, 40.254128, 38.913666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410767, 40.534519, 38.428852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259670, 40.432743, 38.784958>,  <41.169014, 40.371677, 38.998623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259670, 40.432743, 38.784958>,  <41.410767, 40.534519, 38.428852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259670, 40.432743, 38.784958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308507, 0.941147, 0.138080,
		-0.873005, -0.222495, -0.434003,
		-0.377738, -0.254438, 0.890267,
		41.146347, 40.356411, 39.052036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787270, 40.862823, 38.478252>,  <41.410767, 40.534519, 38.428852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787270, 40.862823, 38.478252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857704, 40.759747, 38.858273>,  <40.899967, 40.697903, 39.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857704, 40.759747, 38.858273>,  <40.787270, 40.862823, 38.478252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857704, 40.759747, 38.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379337, 0.872824, 0.307054,
		-0.908348, -0.414456, 0.055944,
		0.176089, -0.257690, 0.950046,
		40.910530, 40.682438, 39.143288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161545, 40.985603, 38.883968>,  <40.787270, 40.862823, 38.478252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161545, 40.985603, 38.883968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456066, 41.006371, 39.153831>,  <40.632778, 41.018829, 39.315750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456066, 41.006371, 39.153831>,  <40.161545, 40.985603, 38.883968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456066, 41.006371, 39.153831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535205, 0.654745, 0.533727,
		-0.414019, -0.754065, 0.509877,
		0.736304, 0.051915, 0.674656,
		40.676956, 41.021946, 39.356228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938923, 40.702263, 39.563072>,  <40.161545, 40.985603, 38.883968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938923, 40.702263, 39.563072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231602, 40.973885, 39.586754>,  <40.407207, 41.136860, 39.600964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231602, 40.973885, 39.586754>,  <39.938923, 40.702263, 39.563072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231602, 40.973885, 39.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569461, 0.561244, 0.600599,
		0.374615, -0.473168, 0.797356,
		0.731695, 0.679057, 0.059200,
		40.451111, 41.177601, 39.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295979, 41.012360, 39.907848>,  <39.938923, 40.702263, 39.563072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295979, 41.012360, 39.907848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180969, 40.868725, 40.263012>,  <39.111965, 40.782543, 40.476112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180969, 40.868725, 40.263012>,  <39.295979, 41.012360, 39.907848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180969, 40.868725, 40.263012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877508, -0.272740, -0.394453,
		0.383814, -0.892561, -0.236688,
		-0.287519, -0.359092, 0.887911,
		39.094715, 40.760998, 40.529385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382778, 41.562550, 39.395596>,  <39.295979, 41.012360, 39.907848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382778, 41.562550, 39.395596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476952, 41.807869, 39.697174>,  <39.533455, 41.955059, 39.878120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476952, 41.807869, 39.697174>,  <39.382778, 41.562550, 39.395596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476952, 41.807869, 39.697174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721440, -0.630084, 0.287260,
		0.651226, 0.476297, -0.590801,
		0.235433, 0.613299, 0.753946,
		39.547581, 41.991859, 39.923359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144672, 41.648506, 39.458340>,  <39.382778, 41.562550, 39.395596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144672, 41.648506, 39.458340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916290, 41.664509, 39.786343>,  <39.779259, 41.674110, 39.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916290, 41.664509, 39.786343>,  <40.144672, 41.648506, 39.458340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916290, 41.664509, 39.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648685, -0.590218, 0.480469,
		0.503205, 0.806252, 0.311035,
		-0.570957, 0.040011, 0.820004,
		39.745003, 41.676514, 40.032345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504051, 41.896824, 40.108025>,  <40.144672, 41.648506, 39.458340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504051, 41.896824, 40.108025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199360, 41.649960, 40.186890>,  <40.016544, 41.501842, 40.234211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199360, 41.649960, 40.186890>,  <40.504051, 41.896824, 40.108025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199360, 41.649960, 40.186890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619118, -0.603696, 0.502239,
		-0.190935, 0.504641, 0.841951,
		-0.761733, -0.617162, 0.197165,
		39.970840, 41.464809, 40.246040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513851, 41.901325, 40.799606>,  <40.504051, 41.896824, 40.108025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513851, 41.901325, 40.799606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412182, 41.573483, 40.594223>,  <40.351181, 41.376778, 40.470993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412182, 41.573483, 40.594223>,  <40.513851, 41.901325, 40.799606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412182, 41.573483, 40.594223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562342, -0.557171, 0.611009,
		-0.786872, -0.133437, 0.602517,
		-0.254174, -0.819607, -0.513459,
		40.335930, 41.327602, 40.440186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048752, 42.391960, 40.618862>,  <40.513851, 41.901325, 40.799606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048752, 42.391960, 40.618862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296864, 42.574715, 40.873894>,  <41.445732, 42.684368, 41.026913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296864, 42.574715, 40.873894>,  <41.048752, 42.391960, 40.618862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296864, 42.574715, 40.873894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770060, -0.509323, -0.384184,
		0.149203, 0.729275, -0.667755,
		0.620279, 0.456890, 0.637578,
		41.482948, 42.711781, 41.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645142, 42.370041, 40.191952>,  <41.048752, 42.391960, 40.618862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645142, 42.370041, 40.191952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749214, 42.456371, 40.568405>,  <41.811657, 42.508171, 40.794277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749214, 42.456371, 40.568405>,  <41.645142, 42.370041, 40.191952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749214, 42.456371, 40.568405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903006, -0.399509, -0.158024,
		0.341884, 0.890961, -0.298838,
		0.260182, 0.215827, 0.941129,
		41.827271, 42.521118, 40.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299377, 42.860256, 40.208736>,  <41.645142, 42.370041, 40.191952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299377, 42.860256, 40.208736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266476, 42.572346, 40.484463>,  <42.246735, 42.399601, 40.649899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266476, 42.572346, 40.484463>,  <42.299377, 42.860256, 40.208736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266476, 42.572346, 40.484463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809163, -0.452011, -0.375422,
		0.581798, 0.526888, 0.619596,
		-0.082259, -0.719774, 0.689317,
		42.241798, 42.356415, 40.691257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995907, 42.627651, 40.381260>,  <42.299377, 42.860256, 40.208736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995907, 42.627651, 40.381260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729000, 42.342361, 40.467106>,  <42.568855, 42.171188, 40.518612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729000, 42.342361, 40.467106>,  <42.995907, 42.627651, 40.381260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729000, 42.342361, 40.467106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566040, -0.672880, -0.476268,
		0.484096, -0.196319, 0.852707,
		-0.667270, -0.713226, 0.214614,
		42.528820, 42.128395, 40.531490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433887, 42.085964, 40.707806>,  <42.995907, 42.627651, 40.381260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433887, 42.085964, 40.707806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109207, 41.953426, 40.515408>,  <42.914398, 41.873905, 40.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109207, 41.953426, 40.515408>,  <43.433887, 42.085964, 40.707806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109207, 41.953426, 40.515408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575640, -0.593295, -0.562707,
		-0.098926, -0.733630, 0.672310,
		-0.811697, -0.331342, -0.480999,
		42.865700, 41.854023, 40.371109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519756, 41.412468, 40.646503>,  <43.433887, 42.085964, 40.707806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519756, 41.412468, 40.646503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241810, 41.475685, 40.365879>,  <43.075043, 41.513615, 40.197506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241810, 41.475685, 40.365879>,  <43.519756, 41.412468, 40.646503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241810, 41.475685, 40.365879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466955, -0.642764, -0.607296,
		-0.546914, -0.749585, 0.372837,
		-0.694866, 0.158040, -0.701558,
		43.033348, 41.523098, 40.155411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371304, 40.712730, 40.399384>,  <43.519756, 41.412468, 40.646503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371304, 40.712730, 40.399384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256229, 40.976681, 40.121735>,  <43.187187, 41.135052, 39.955143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256229, 40.976681, 40.121735>,  <43.371304, 40.712730, 40.399384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256229, 40.976681, 40.121735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525895, -0.496881, -0.690322,
		-0.800421, -0.563629, -0.204079,
		-0.287683, 0.659872, -0.694124,
		43.169926, 41.174641, 39.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050037, 40.295330, 39.878517>,  <43.371304, 40.712730, 40.399384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050037, 40.295330, 39.878517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147907, 40.627159, 39.677742>,  <43.206631, 40.826256, 39.557278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147907, 40.627159, 39.677742>,  <43.050037, 40.295330, 39.878517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147907, 40.627159, 39.677742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256995, -0.554644, -0.791406,
		-0.934926, 0.064643, -0.348905,
		0.244677, 0.829573, -0.501938,
		43.221310, 40.876030, 39.527161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787434, 40.259892, 39.162777>,  <43.050037, 40.295330, 39.878517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787434, 40.259892, 39.162777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100990, 40.507977, 39.151066>,  <43.289124, 40.656826, 39.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100990, 40.507977, 39.151066>,  <42.787434, 40.259892, 39.162777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100990, 40.507977, 39.151066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424071, -0.569240, -0.704364,
		-0.453519, 0.539728, -0.709235,
		0.783891, 0.620209, -0.029278,
		43.336159, 40.694038, 39.142281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950249, 40.474293, 38.436935>,  <42.787434, 40.259892, 39.162777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950249, 40.474293, 38.436935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292652, 40.536690, 38.634079>,  <43.498096, 40.574127, 38.752365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292652, 40.536690, 38.634079>,  <42.950249, 40.474293, 38.436935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292652, 40.536690, 38.634079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495700, -0.518257, -0.696916,
		0.146709, 0.840877, -0.520962,
		0.856013, 0.155997, 0.492856,
		43.549458, 40.583488, 38.781937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404148, 40.352024, 37.947552>,  <42.950249, 40.474293, 38.436935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404148, 40.352024, 37.947552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659538, 40.344135, 38.255306>,  <43.812775, 40.339401, 38.439960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659538, 40.344135, 38.255306>,  <43.404148, 40.352024, 37.947552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659538, 40.344135, 38.255306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626336, -0.567631, -0.534320,
		0.447265, 0.823047, -0.350069,
		0.638480, -0.019722, 0.769386,
		43.851082, 40.338219, 38.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959133, 40.326740, 37.567844>,  <43.404148, 40.352024, 37.947552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959133, 40.326740, 37.567844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054890, 40.201122, 37.935337>,  <44.112343, 40.125751, 38.155830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054890, 40.201122, 37.935337>,  <43.959133, 40.326740, 37.567844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054890, 40.201122, 37.935337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575764, -0.715994, -0.394776,
		0.781783, 0.623479, 0.009412,
		0.239396, -0.314049, 0.918729,
		44.126709, 40.106907, 38.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824005, 40.170101, 37.584053>,  <43.959133, 40.326740, 37.567844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824005, 40.170101, 37.584053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654552, 39.975346, 37.889595>,  <44.552883, 39.858494, 38.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654552, 39.975346, 37.889595>,  <44.824005, 40.170101, 37.584053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654552, 39.975346, 37.889595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577704, -0.794731, -0.186174,
		0.697708, 0.362417, 0.617946,
		-0.423628, -0.486886, 0.763860,
		44.527466, 39.829281, 38.118752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284676, 39.840481, 37.798870>,  <44.824005, 40.170101, 37.584053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284676, 39.840481, 37.798870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 39.616795, 37.935448>,  <44.801193, 39.482582, 38.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 39.616795, 37.935448>,  <45.284676, 39.840481, 37.798870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982498, 39.616795, 37.935448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511223, -0.829018, -0.226673,
		0.409824, 0.003317, 0.912159,
		-0.755444, -0.559213, 0.341447,
		44.755863, 39.449032, 38.037880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592785, 39.403961, 38.222126>,  <45.284676, 39.840481, 37.798870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592785, 39.403961, 38.222126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256897, 39.203266, 38.139046>,  <45.055367, 39.082851, 38.089199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256897, 39.203266, 38.139046>,  <45.592785, 39.403961, 38.222126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256897, 39.203266, 38.139046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539473, -0.727110, -0.424594,
		0.062015, -0.468585, 0.881239,
		-0.839716, -0.501736, -0.207697,
		45.004982, 39.052746, 38.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658916, 38.750160, 38.443447>,  <45.592785, 39.403961, 38.222126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658916, 38.750160, 38.443447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348064, 38.701851, 38.196392>,  <45.161552, 38.672867, 38.048157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348064, 38.701851, 38.196392>,  <45.658916, 38.750160, 38.443447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348064, 38.701851, 38.196392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449074, -0.793985, -0.409782,
		-0.440905, -0.595821, 0.671268,
		-0.777133, -0.120774, -0.617639,
		45.114925, 38.665619, 38.011101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738960, 38.045162, 38.277462>,  <45.658916, 38.750160, 38.443447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738960, 38.045162, 38.277462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452412, 38.166065, 38.025921>,  <45.280483, 38.238609, 37.874996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452412, 38.166065, 38.025921>,  <45.738960, 38.045162, 38.277462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452412, 38.166065, 38.025921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140192, -0.820556, -0.554107,
		-0.683494, -0.485104, 0.545445,
		-0.716367, 0.302262, -0.628852,
		45.237503, 38.256744, 37.837265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319485, 37.519417, 38.371971>,  <45.738960, 38.045162, 38.277462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319485, 37.519417, 38.371971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213905, 37.710876, 38.037014>,  <45.150558, 37.825752, 37.836040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213905, 37.710876, 38.037014>,  <45.319485, 37.519417, 38.371971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213905, 37.710876, 38.037014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096917, -0.850625, -0.516763,
		-0.959655, -0.217557, 0.178133,
		-0.263950, 0.478651, -0.837391,
		45.134720, 37.854473, 37.785797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898876, 37.030487, 38.034874>,  <45.319485, 37.519417, 38.371971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898876, 37.030487, 38.034874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025230, 37.261589, 37.733829>,  <45.101044, 37.400249, 37.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025230, 37.261589, 37.733829>,  <44.898876, 37.030487, 38.034874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025230, 37.261589, 37.733829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235299, -0.816146, -0.527769,
		-0.919157, -0.010371, -0.393756,
		0.315889, 0.577753, -0.752606,
		45.119995, 37.434914, 37.508049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736206, 36.674831, 37.450340>,  <44.898876, 37.030487, 38.034874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736206, 36.674831, 37.450340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017647, 36.929829, 37.324768>,  <45.186512, 37.082829, 37.249424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017647, 36.929829, 37.324768>,  <44.736206, 36.674831, 37.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017647, 36.929829, 37.324768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409749, -0.724915, -0.553719,
		-0.580563, 0.260965, -0.771261,
		0.703600, 0.637492, -0.313928,
		45.228725, 37.121075, 37.230591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636852, 36.812916, 36.697033>,  <44.736206, 36.674831, 37.450340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636852, 36.812916, 36.697033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014320, 36.890617, 36.804176>,  <45.240803, 36.937237, 36.868462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014320, 36.890617, 36.804176>,  <44.636852, 36.812916, 36.697033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014320, 36.890617, 36.804176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318586, -0.752043, -0.577004,
		0.089358, 0.629839, -0.771568,
		0.943673, 0.194251, 0.267859,
		45.297421, 36.948895, 36.884533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952011, 36.823524, 36.138134>,  <44.636852, 36.812916, 36.697033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952011, 36.823524, 36.138134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245483, 36.781853, 36.406715>,  <45.421566, 36.756851, 36.567863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245483, 36.781853, 36.406715>,  <44.952011, 36.823524, 36.138134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245483, 36.781853, 36.406715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462677, -0.647109, -0.605954,
		0.497633, 0.755246, -0.426573,
		0.733684, -0.104178, 0.671458,
		45.465588, 36.750599, 36.608154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539158, 36.793560, 35.722263>,  <44.952011, 36.823524, 36.138134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539158, 36.793560, 35.722263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618874, 36.609272, 36.068218>,  <45.666702, 36.498699, 36.275791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618874, 36.609272, 36.068218>,  <45.539158, 36.793560, 35.722263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618874, 36.609272, 36.068218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525615, -0.694631, -0.491138,
		0.827052, 0.552472, 0.103731,
		0.199285, -0.460719, 0.864884,
		45.678658, 36.471058, 36.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127670, 36.593197, 35.620052>,  <45.539158, 36.793560, 35.722263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127670, 36.593197, 35.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022091, 36.357151, 35.925232>,  <45.958744, 36.215523, 36.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022091, 36.357151, 35.925232>,  <46.127670, 36.593197, 35.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022091, 36.357151, 35.925232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522249, -0.752460, -0.401323,
		0.810916, 0.292520, 0.506800,
		-0.263952, -0.590115, 0.762950,
		45.942905, 36.180115, 36.154118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749485, 36.358463, 35.855206>,  <46.127670, 36.593197, 35.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749485, 36.358463, 35.855206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461918, 36.110420, 35.980831>,  <46.289379, 35.961594, 36.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.461918, 36.110420, 35.980831>,  <46.749485, 36.358463, 35.855206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461918, 36.110420, 35.980831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539837, -0.782718, -0.309722,
		0.437881, -0.053122, 0.897462,
		-0.718913, -0.620105, 0.314060,
		46.246243, 35.924389, 36.075050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.050903, 35.717770, 36.171059>,  <46.749485, 36.358463, 35.855206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.050903, 35.717770, 36.171059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692471, 35.621323, 36.021980>,  <46.477409, 35.563454, 35.932533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.692471, 35.621323, 36.021980>,  <47.050903, 35.717770, 36.171059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692471, 35.621323, 36.021980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397728, -0.808946, -0.432919,
		-0.197106, -0.536162, 0.820780,
		-0.896081, -0.241116, -0.372695,
		46.423645, 35.548988, 35.910172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.733723, 35.521748, 36.519596>,  <47.050903, 35.717770, 36.171059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.733723, 35.521748, 36.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403873, 35.297211, 36.491646>,  <47.205963, 35.162487, 36.474876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403873, 35.297211, 36.491646>,  <47.733723, 35.521748, 36.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403873, 35.297211, 36.491646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200946, -0.175226, -0.963803,
		0.528782, -0.808819, 0.257296,
		-0.824627, -0.561345, -0.069873,
		47.156487, 35.128807, 36.470684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911350, 35.261208, 35.913235>,  <47.733723, 35.521748, 36.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911350, 35.261208, 35.913235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580746, 35.056187, 36.006336>,  <47.382385, 34.933174, 36.062195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580746, 35.056187, 36.006336>,  <47.911350, 35.261208, 35.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580746, 35.056187, 36.006336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205763, -0.659936, -0.722597,
		0.523969, -0.549341, 0.650907,
		-0.826509, -0.512551, 0.232752,
		47.332794, 34.902420, 36.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.979893, 34.819881, 35.361374>,  <47.911350, 35.261208, 35.913235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.979893, 34.819881, 35.361374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758919, 34.976254, 35.066895>,  <47.626335, 35.070076, 34.890205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758919, 34.976254, 35.066895>,  <47.979893, 34.819881, 35.361374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758919, 34.976254, 35.066895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073917, 0.902701, 0.423872,
		0.830271, 0.179745, -0.527582,
		-0.552437, 0.390926, -0.736200,
		47.593189, 35.093533, 34.846035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.997406, 35.721542, 42.930702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647537, 35.746204, 42.738388>,  <32.437618, 35.761002, 42.623001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647537, 35.746204, 42.738388>,  <32.997406, 35.721542, 42.930702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647537, 35.746204, 42.738388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448710, 0.478162, -0.754997,
		0.183339, -0.876105, -0.445900,
		-0.874669, 0.061659, -0.480783,
		32.385136, 35.764702, 42.594154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197502, 35.646095, 42.154049>,  <32.997406, 35.721542, 42.930702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197502, 35.646095, 42.154049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830181, 35.803829, 42.140114>,  <32.609787, 35.898472, 42.131752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830181, 35.803829, 42.140114>,  <33.197502, 35.646095, 42.154049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830181, 35.803829, 42.140114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262305, 0.540184, -0.799623,
		-0.296502, -0.743436, -0.599491,
		-0.918304, 0.394339, -0.034841,
		32.554691, 35.922131, 42.129662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056519, 35.501461, 41.430485>,  <33.197502, 35.646095, 42.154049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056519, 35.501461, 41.430485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834469, 35.799809, 41.577740>,  <32.701241, 35.978817, 41.666092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834469, 35.799809, 41.577740>,  <33.056519, 35.501461, 41.430485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834469, 35.799809, 41.577740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193465, 0.546237, -0.814982,
		-0.808955, -0.381195, -0.447529,
		-0.555124, 0.745865, 0.368133,
		32.667931, 36.023567, 41.688179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638245, 35.695473, 40.937851>,  <33.056519, 35.501461, 41.430485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638245, 35.695473, 40.937851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664810, 35.997086, 41.199238>,  <32.680748, 36.178055, 41.356071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664810, 35.997086, 41.199238>,  <32.638245, 35.695473, 40.937851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664810, 35.997086, 41.199238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182228, 0.634733, -0.750937,
		-0.981011, 0.168952, -0.095252,
		0.066413, 0.754035, 0.653468,
		32.684734, 36.223297, 41.395279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130508, 36.186508, 40.833023>,  <32.638245, 35.695473, 40.937851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130508, 36.186508, 40.833023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438076, 36.374840, 41.006035>,  <32.622616, 36.487839, 41.109840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438076, 36.374840, 41.006035>,  <32.130508, 36.186508, 40.833023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438076, 36.374840, 41.006035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155946, 0.517968, -0.841065,
		-0.620035, 0.714163, 0.324852,
		0.768920, 0.470830, 0.432529,
		32.668751, 36.516090, 41.135792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229744, 36.681942, 40.386177>,  <32.130508, 36.186508, 40.833023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229744, 36.681942, 40.386177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.532600, 36.750309, 40.638374>,  <32.714314, 36.791328, 40.789692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.532600, 36.750309, 40.638374>,  <32.229744, 36.681942, 40.386177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532600, 36.750309, 40.638374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472810, 0.522618, -0.709451,
		-0.450765, 0.835259, 0.314885,
		0.757140, 0.170915, 0.630497,
		32.759743, 36.801582, 40.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334919, 37.339340, 40.226784>,  <32.229744, 36.681942, 40.386177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334919, 37.339340, 40.226784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.666138, 37.191814, 40.395695>,  <32.864868, 37.103298, 40.497040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.666138, 37.191814, 40.395695>,  <32.334919, 37.339340, 40.226784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666138, 37.191814, 40.395695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544833, 0.351655, -0.761246,
		0.132261, 0.860417, 0.492128,
		0.828048, -0.368810, 0.422274,
		32.914551, 37.081173, 40.522377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909863, 37.875862, 40.206608>,  <32.334919, 37.339340, 40.226784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909863, 37.875862, 40.206608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088886, 37.519238, 40.234322>,  <33.196301, 37.305264, 40.250950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.088886, 37.519238, 40.234322>,  <32.909863, 37.875862, 40.206608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088886, 37.519238, 40.234322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707250, 0.305496, -0.637549,
		0.547251, 0.334343, 0.767288,
		0.447564, -0.891564, 0.069281,
		33.223156, 37.251770, 40.255104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544498, 38.058483, 40.003517>,  <32.909863, 37.875862, 40.206608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544498, 38.058483, 40.003517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.566475, 37.659107, 40.007584>,  <33.579659, 37.419483, 40.010025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.566475, 37.659107, 40.007584>,  <33.544498, 38.058483, 40.003517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566475, 37.659107, 40.007584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749327, 0.034497, -0.661302,
		0.659918, 0.043950, 0.750051,
		0.054938, -0.998438, 0.010168,
		33.582958, 37.359577, 40.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295944, 37.786819, 40.221416>,  <33.544498, 38.058483, 40.003517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295944, 37.786819, 40.221416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.125603, 37.505264, 39.994015>,  <34.023399, 37.336330, 39.857574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.125603, 37.505264, 39.994015>,  <34.295944, 37.786819, 40.221416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125603, 37.505264, 39.994015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694382, 0.148573, -0.704102,
		0.580070, -0.694603, 0.425495,
		-0.425854, -0.703885, -0.568502,
		33.997845, 37.294098, 39.823463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834629, 37.339893, 40.023933>,  <34.295944, 37.786819, 40.221416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834629, 37.339893, 40.023933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.534500, 37.292927, 39.763710>,  <34.354424, 37.264748, 39.607574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.534500, 37.292927, 39.763710>,  <34.834629, 37.339893, 40.023933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534500, 37.292927, 39.763710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649522, 0.052221, -0.758547,
		0.123038, -0.991709, 0.037082,
		-0.750322, -0.117416, -0.650562,
		34.309402, 37.257702, 39.568542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139717, 36.982235, 39.632126>,  <34.834629, 37.339893, 40.023933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139717, 36.982235, 39.632126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854889, 37.159615, 39.414387>,  <34.683994, 37.266045, 39.283745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854889, 37.159615, 39.414387>,  <35.139717, 36.982235, 39.632126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854889, 37.159615, 39.414387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640548, 0.092833, -0.762286,
		-0.287504, -0.891477, -0.350156,
		-0.712067, 0.443452, -0.544345,
		34.641270, 37.292648, 39.251083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227222, 36.606888, 39.000648>,  <35.139717, 36.982235, 39.632126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227222, 36.606888, 39.000648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037128, 36.947979, 38.913929>,  <34.923073, 37.152634, 38.861897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037128, 36.947979, 38.913929>,  <35.227222, 36.606888, 39.000648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037128, 36.947979, 38.913929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608726, 0.140733, -0.780799,
		-0.635300, -0.503036, -0.585960,
		-0.475234, 0.852731, -0.216803,
		34.894558, 37.203796, 38.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063007, 36.595585, 38.221149>,  <35.227222, 36.606888, 39.000648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063007, 36.595585, 38.221149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.053360, 36.981075, 38.327473>,  <35.047573, 37.212368, 38.391266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.053360, 36.981075, 38.327473>,  <35.063007, 36.595585, 38.221149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053360, 36.981075, 38.327473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509708, 0.240584, -0.826025,
		-0.860009, 0.115561, -0.497021,
		-0.024119, 0.963725, 0.265806,
		35.046124, 37.270191, 38.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025169, 36.900204, 37.566231>,  <35.063007, 36.595585, 38.221149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025169, 36.900204, 37.566231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137825, 37.200169, 37.805668>,  <35.205418, 37.380146, 37.949329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137825, 37.200169, 37.805668>,  <35.025169, 36.900204, 37.566231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137825, 37.200169, 37.805668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568491, 0.372147, -0.733706,
		-0.772978, 0.546935, -0.321506,
		0.281642, 0.749912, 0.598590,
		35.222317, 37.425144, 37.985245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015591, 37.545509, 37.160244>,  <35.025169, 36.900204, 37.566231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015591, 37.545509, 37.160244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237354, 37.637093, 37.480297>,  <35.370415, 37.692043, 37.672329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237354, 37.637093, 37.480297>,  <35.015591, 37.545509, 37.160244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237354, 37.637093, 37.480297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708419, 0.374731, -0.598096,
		-0.436771, 0.898418, 0.045559,
		0.554413, 0.228956, 0.800128,
		35.403679, 37.705780, 37.720337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259048, 38.148643, 37.018223>,  <35.015591, 37.545509, 37.160244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259048, 38.148643, 37.018223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515518, 37.990845, 37.281513>,  <35.669399, 37.896168, 37.439487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515518, 37.990845, 37.281513>,  <35.259048, 38.148643, 37.018223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515518, 37.990845, 37.281513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757466, 0.187826, -0.625274,
		0.123033, 0.899498, 0.419245,
		0.641178, -0.394493, 0.658230,
		35.707870, 37.872498, 37.478981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900391, 38.534702, 36.972672>,  <35.259048, 38.148643, 37.018223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900391, 38.534702, 36.972672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020874, 38.199917, 37.155430>,  <36.093166, 37.999046, 37.265087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020874, 38.199917, 37.155430>,  <35.900391, 38.534702, 36.972672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020874, 38.199917, 37.155430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868924, 0.043572, -0.493024,
		0.392737, 0.545515, 0.740386,
		0.301212, -0.836968, 0.456898,
		36.111237, 37.948826, 37.292500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608223, 38.717571, 37.219563>,  <35.900391, 38.534702, 36.972672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608223, 38.717571, 37.219563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578384, 38.318905, 37.206314>,  <36.560482, 38.079704, 37.198364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578384, 38.318905, 37.206314>,  <36.608223, 38.717571, 37.219563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578384, 38.318905, 37.206314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751333, -0.034333, -0.659030,
		0.655694, -0.074043, 0.751387,
		-0.074594, -0.996664, -0.033118,
		36.556007, 38.019905, 37.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218197, 38.592064, 37.124130>,  <36.608223, 38.717571, 37.219563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218197, 38.592064, 37.124130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025547, 38.269215, 36.987553>,  <36.909958, 38.075504, 36.905605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025547, 38.269215, 36.987553>,  <37.218197, 38.592064, 37.124130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025547, 38.269215, 36.987553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748569, -0.176287, -0.639192,
		0.455718, -0.563443, 0.689095,
		-0.481627, -0.807127, -0.341439,
		36.881058, 38.027077, 36.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750469, 38.008213, 37.210495>,  <37.218197, 38.592064, 37.124130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750469, 38.008213, 37.210495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447353, 37.902020, 36.972076>,  <37.265484, 37.838303, 36.829025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447353, 37.902020, 36.972076>,  <37.750469, 38.008213, 37.210495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447353, 37.902020, 36.972076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643208, -0.150363, -0.750782,
		0.109694, -0.952319, 0.284703,
		-0.757793, -0.265480, -0.596045,
		37.220016, 37.822376, 36.793262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938766, 37.401806, 36.791325>,  <37.750469, 38.008213, 37.210495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938766, 37.401806, 36.791325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688931, 37.613834, 36.561920>,  <37.539028, 37.741051, 36.424278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688931, 37.613834, 36.561920>,  <37.938766, 37.401806, 36.791325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688931, 37.613834, 36.561920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589040, -0.162415, -0.791615,
		-0.512761, -0.832252, -0.210792,
		-0.624587, 0.530073, -0.573510,
		37.501553, 37.772858, 36.389866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366104, 37.180195, 36.164551>,  <37.938766, 37.401806, 36.791325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366104, 37.180195, 36.164551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700085, 36.982845, 36.262066>,  <38.900475, 36.864437, 36.320576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700085, 36.982845, 36.262066>,  <38.366104, 37.180195, 36.164551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700085, 36.982845, 36.262066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538101, -0.639117, 0.549524,
		-0.115310, -0.590012, -0.799118,
		0.834955, -0.493372, 0.243790,
		38.950573, 36.834835, 36.335201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192207, 36.480553, 36.150063>,  <38.366104, 37.180195, 36.164551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192207, 36.480553, 36.150063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520477, 36.499027, 36.377876>,  <38.717438, 36.510113, 36.514565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520477, 36.499027, 36.377876>,  <38.192207, 36.480553, 36.150063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520477, 36.499027, 36.377876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437039, -0.591359, 0.677711,
		0.368098, -0.805085, -0.465126,
		0.820671, 0.046186, 0.569531,
		38.766678, 36.512882, 36.548737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236919, 35.863602, 36.407940>,  <38.192207, 36.480553, 36.150063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236919, 35.863602, 36.407940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485535, 36.067085, 36.646236>,  <38.634705, 36.189175, 36.789215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485535, 36.067085, 36.646236>,  <38.236919, 35.863602, 36.407940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485535, 36.067085, 36.646236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376427, -0.472986, 0.796609,
		0.687021, -0.719374, -0.102485,
		0.621534, 0.508709, 0.595744,
		38.671993, 36.219696, 36.824959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570671, 35.364494, 36.861820>,  <38.236919, 35.863602, 36.407940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570671, 35.364494, 36.861820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576031, 35.707508, 37.067524>,  <38.579247, 35.913315, 37.190945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576031, 35.707508, 37.067524>,  <38.570671, 35.364494, 36.861820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576031, 35.707508, 37.067524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427966, -0.459897, 0.778036,
		0.903695, -0.230514, 0.360830,
		0.013403, 0.857530, 0.514259,
		38.580051, 35.964767, 37.221802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859959, 35.146118, 37.503975>,  <38.570671, 35.364494, 36.861820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859959, 35.146118, 37.503975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691734, 35.505779, 37.552402>,  <38.590801, 35.721577, 37.581459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691734, 35.505779, 37.552402>,  <38.859959, 35.146118, 37.503975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691734, 35.505779, 37.552402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390196, -0.299726, 0.870581,
		0.819071, 0.318890, 0.476898,
		-0.420558, 0.899152, 0.121068,
		38.565567, 35.775524, 37.588722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944889, 35.282291, 38.189533>,  <38.859959, 35.146118, 37.503975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944889, 35.282291, 38.189533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644909, 35.524944, 38.084026>,  <38.464920, 35.670536, 38.020721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.644909, 35.524944, 38.084026>,  <38.944889, 35.282291, 38.189533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644909, 35.524944, 38.084026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406988, -0.108800, 0.906931,
		0.521471, 0.787506, 0.328485,
		-0.749952, 0.606627, -0.263769,
		38.419922, 35.706932, 38.004894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888702, 35.736610, 38.839645>,  <38.944889, 35.282291, 38.189533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888702, 35.736610, 38.839645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547722, 35.764046, 38.632332>,  <38.343132, 35.780506, 38.507946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547722, 35.764046, 38.632332>,  <38.888702, 35.736610, 38.839645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547722, 35.764046, 38.632332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522702, -0.131134, 0.842369,
		-0.010185, 0.988989, 0.147639,
		-0.852455, 0.068592, -0.518282,
		38.291985, 35.784622, 38.476849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456062, 36.046364, 39.253487>,  <38.888702, 35.736610, 38.839645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456062, 36.046364, 39.253487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212223, 35.907719, 38.968319>,  <38.065922, 35.824532, 38.797218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212223, 35.907719, 38.968319>,  <38.456062, 36.046364, 39.253487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212223, 35.907719, 38.968319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622780, -0.347017, 0.701231,
		-0.490449, 0.871459, -0.004323,
		-0.609593, -0.346611, -0.712922,
		38.029346, 35.803734, 38.754444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869469, 36.308426, 39.450600>,  <38.456062, 36.046364, 39.253487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869469, 36.308426, 39.450600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755405, 36.010792, 39.208931>,  <37.686970, 35.832211, 39.063931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755405, 36.010792, 39.208931>,  <37.869469, 36.308426, 39.450600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755405, 36.010792, 39.208931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835201, -0.116357, 0.537494,
		-0.470241, 0.657875, -0.588280,
		-0.285154, -0.744084, -0.604174,
		37.669861, 35.787567, 39.027679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064281, 36.347797, 39.289280>,  <37.869469, 36.308426, 39.450600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064281, 36.347797, 39.289280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165016, 35.964558, 39.234695>,  <37.225456, 35.734615, 39.201946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165016, 35.964558, 39.234695>,  <37.064281, 36.347797, 39.289280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165016, 35.964558, 39.234695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765927, -0.283510, 0.577042,
		-0.591551, -0.040804, -0.805234,
		0.251838, -0.958100, -0.136458,
		37.240566, 35.677128, 39.193760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310169, 35.983505, 39.312981>,  <37.064281, 36.347797, 39.289280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310169, 35.983505, 39.312981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609482, 35.730297, 39.392334>,  <36.789070, 35.578373, 39.439945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609482, 35.730297, 39.392334>,  <36.310169, 35.983505, 39.312981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609482, 35.730297, 39.392334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539612, -0.406875, 0.737070,
		-0.385862, -0.658588, -0.646043,
		0.748285, -0.633020, 0.198384,
		36.833969, 35.540390, 39.451851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976601, 35.258247, 39.275646>,  <36.310169, 35.983505, 39.312981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976601, 35.258247, 39.275646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317337, 35.227955, 39.482967>,  <36.521778, 35.209778, 39.607361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317337, 35.227955, 39.482967>,  <35.976601, 35.258247, 39.275646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317337, 35.227955, 39.482967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508292, -0.358540, 0.782999,
		0.126531, -0.930437, -0.343914,
		0.851838, -0.075736, 0.518301,
		36.572887, 35.205235, 39.638458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017338, 34.525639, 39.436340>,  <35.976601, 35.258247, 39.275646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017338, 34.525639, 39.436340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247536, 34.723534, 39.696812>,  <36.385654, 34.842270, 39.853096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247536, 34.723534, 39.696812>,  <36.017338, 34.525639, 39.436340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247536, 34.723534, 39.696812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498478, -0.419034, 0.758901,
		0.648326, -0.761343, 0.005466,
		0.575493, 0.494740, 0.651183,
		36.420185, 34.871956, 39.892166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261890, 34.024796, 40.044460>,  <36.017338, 34.525639, 39.436340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261890, 34.024796, 40.044460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365921, 34.379013, 40.198437>,  <36.428341, 34.591541, 40.290821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365921, 34.379013, 40.198437>,  <36.261890, 34.024796, 40.044460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365921, 34.379013, 40.198437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229340, -0.330598, 0.915482,
		0.937956, -0.326379, 0.117109,
		0.260078, 0.885540, 0.384939,
		36.443943, 34.644676, 40.313919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646046, 33.823948, 40.701778>,  <36.261890, 34.024796, 40.044460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646046, 33.823948, 40.701778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489262, 34.191463, 40.720497>,  <36.395191, 34.411972, 40.731728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489262, 34.191463, 40.720497>,  <36.646046, 33.823948, 40.701778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489262, 34.191463, 40.720497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327800, -0.187010, 0.926053,
		0.859602, 0.347634, 0.374480,
		-0.391959, 0.918792, 0.046800,
		36.371674, 34.467102, 40.734535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750690, 33.990700, 41.423328>,  <36.646046, 33.823948, 40.701778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750690, 33.990700, 41.423328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470188, 34.248821, 41.302124>,  <36.301888, 34.403694, 41.229401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470188, 34.248821, 41.302124>,  <36.750690, 33.990700, 41.423328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470188, 34.248821, 41.302124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469105, -0.097625, 0.877730,
		0.536823, 0.757660, 0.371177,
		-0.701257, 0.645306, -0.303014,
		36.259811, 34.442413, 41.211220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586777, 34.313324, 42.043865>,  <36.750690, 33.990700, 41.423328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586777, 34.313324, 42.043865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277206, 34.402084, 41.806614>,  <36.091465, 34.455341, 41.664265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277206, 34.402084, 41.806614>,  <36.586777, 34.313324, 42.043865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277206, 34.402084, 41.806614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565278, 0.180151, 0.804989,
		0.285477, 0.958283, -0.013991,
		-0.773928, 0.221897, -0.593125,
		36.045029, 34.468655, 41.628677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297913, 34.967323, 42.222492>,  <36.586777, 34.313324, 42.043865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297913, 34.967323, 42.222492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003948, 34.748245, 42.062523>,  <35.827572, 34.616798, 41.966541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003948, 34.748245, 42.062523>,  <36.297913, 34.967323, 42.222492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003948, 34.748245, 42.062523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625435, 0.319381, 0.711917,
		-0.262189, 0.773318, -0.577266,
		-0.734906, -0.547700, -0.399922,
		35.783478, 34.583935, 41.942547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.643505, 35.402332, 42.259518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503471, 35.030704, 42.211742>,  <35.419453, 34.807728, 42.183079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503471, 35.030704, 42.211742>,  <35.643505, 35.402332, 42.259518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503471, 35.030704, 42.211742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493674, 0.074635, 0.866439,
		-0.796069, 0.362292, -0.484787,
		-0.350086, -0.929072, -0.119440,
		35.398445, 34.751984, 42.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913853, 35.410866, 42.401348>,  <35.643505, 35.402332, 42.259518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913853, 35.410866, 42.401348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976223, 35.015827, 42.408634>,  <35.013645, 34.778801, 42.413006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.976223, 35.015827, 42.408634>,  <34.913853, 35.410866, 42.401348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976223, 35.015827, 42.408634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716310, -0.100357, 0.690528,
		-0.680139, -0.120715, -0.723076,
		0.155923, -0.987601, 0.018212,
		35.022999, 34.719547, 42.414097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289974, 35.088299, 42.634827>,  <34.913853, 35.410866, 42.401348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289974, 35.088299, 42.634827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540901, 34.780109, 42.680145>,  <34.691460, 34.595196, 42.707336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540901, 34.780109, 42.680145>,  <34.289974, 35.088299, 42.634827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540901, 34.780109, 42.680145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568442, -0.353584, 0.742868,
		-0.532301, -0.530419, -0.659781,
		0.627319, -0.770477, 0.113300,
		34.729095, 34.548965, 42.714134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818035, 34.497250, 42.387119>,  <34.289974, 35.088299, 42.634827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818035, 34.497250, 42.387119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120224, 34.416145, 42.636326>,  <34.301537, 34.367485, 42.785851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.120224, 34.416145, 42.636326>,  <33.818035, 34.497250, 42.387119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120224, 34.416145, 42.636326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651765, -0.329523, 0.683093,
		0.066797, -0.922119, -0.381096,
		0.755473, -0.202757, 0.623017,
		34.346867, 34.355316, 42.823231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670094, 33.839180, 42.705952>,  <33.818035, 34.497250, 42.387119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670094, 33.839180, 42.705952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964191, 33.977039, 42.939407>,  <34.140652, 34.059753, 43.079483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964191, 33.977039, 42.939407>,  <33.670094, 33.839180, 42.705952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964191, 33.977039, 42.939407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421481, -0.441880, 0.791894,
		0.530821, -0.828228, -0.179628,
		0.735243, 0.344645, 0.583642,
		34.184765, 34.080433, 43.114498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860542, 33.236160, 43.060131>,  <33.670094, 33.839180, 42.705952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860542, 33.236160, 43.060131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987751, 33.545300, 43.279793>,  <34.064075, 33.730782, 43.411591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987751, 33.545300, 43.279793>,  <33.860542, 33.236160, 43.060131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987751, 33.545300, 43.279793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418626, -0.405231, 0.812736,
		0.850656, -0.488356, 0.194663,
		0.318021, 0.772850, 0.549150,
		34.083157, 33.777153, 43.444538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236340, 32.947628, 43.641953>,  <33.860542, 33.236160, 43.060131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236340, 32.947628, 43.641953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121941, 33.313431, 43.756420>,  <34.053303, 33.532913, 43.825100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121941, 33.313431, 43.756420>,  <34.236340, 32.947628, 43.641953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121941, 33.313431, 43.756420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527542, -0.399574, 0.749693,
		0.799942, 0.063442, 0.596714,
		-0.285993, 0.914503, 0.286168,
		34.036144, 33.587780, 43.842270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395458, 33.005951, 44.348602>,  <34.236340, 32.947628, 43.641953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395458, 33.005951, 44.348602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103279, 33.271957, 44.286377>,  <33.927971, 33.431561, 44.249043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.103279, 33.271957, 44.286377>,  <34.395458, 33.005951, 44.348602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103279, 33.271957, 44.286377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470114, -0.324351, 0.820847,
		0.495423, 0.672714, 0.549556,
		-0.730444, 0.665020, -0.155561,
		33.884148, 33.471462, 44.239708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390144, 33.393497, 44.981827>,  <34.395458, 33.005951, 44.348602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390144, 33.393497, 44.981827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029602, 33.459511, 44.821663>,  <33.813278, 33.499119, 44.725567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029602, 33.459511, 44.821663>,  <34.390144, 33.393497, 44.981827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029602, 33.459511, 44.821663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429189, -0.216669, 0.876842,
		0.057955, 0.962194, 0.266127,
		-0.901354, 0.165036, -0.400406,
		33.759197, 33.509022, 44.701542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087608, 33.869907, 45.435863>,  <34.390144, 33.393497, 44.981827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087608, 33.869907, 45.435863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795200, 33.677799, 45.241978>,  <33.619755, 33.562534, 45.125648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795200, 33.677799, 45.241978>,  <34.087608, 33.869907, 45.435863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795200, 33.677799, 45.241978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431151, -0.225472, 0.873654,
		-0.528882, 0.847643, -0.042246,
		-0.731021, -0.480274, -0.484710,
		33.575893, 33.533718, 45.096565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361542, 34.142784, 45.806320>,  <34.087608, 33.869907, 45.435863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361542, 34.142784, 45.806320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280678, 33.808453, 45.602158>,  <33.232159, 33.607853, 45.479660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280678, 33.808453, 45.602158>,  <33.361542, 34.142784, 45.806320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280678, 33.808453, 45.602158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374239, -0.415688, 0.828944,
		-0.905029, 0.358592, -0.228767,
		-0.202157, -0.835832, -0.510409,
		33.220032, 33.557701, 45.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706306, 33.998089, 46.160969>,  <33.361542, 34.142784, 45.806320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706306, 33.998089, 46.160969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804932, 33.663845, 45.964615>,  <32.864105, 33.463299, 45.846802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804932, 33.663845, 45.964615>,  <32.706306, 33.998089, 46.160969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804932, 33.663845, 45.964615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486275, -0.544816, 0.683163,
		-0.838298, 0.070265, -0.540665,
		0.246561, -0.835606, -0.490887,
		32.878899, 33.413162, 45.817348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000763, 33.690311, 46.044018>,  <32.706306, 33.998089, 46.160969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000763, 33.690311, 46.044018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292461, 33.416828, 46.033150>,  <32.467480, 33.252739, 46.026630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292461, 33.416828, 46.033150>,  <32.000763, 33.690311, 46.044018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292461, 33.416828, 46.033150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518907, -0.578477, 0.629365,
		-0.446018, -0.444866, -0.776635,
		0.729248, -0.683710, -0.027168,
		32.511234, 33.211716, 46.024998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693594, 32.992126, 46.027218>,  <32.000763, 33.690311, 46.044018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693594, 32.992126, 46.027218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058117, 32.911358, 46.170742>,  <32.276833, 32.862896, 46.256855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058117, 32.911358, 46.170742>,  <31.693594, 32.992126, 46.027218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058117, 32.911358, 46.170742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378966, -0.752028, 0.539295,
		0.160936, -0.627440, -0.761852,
		0.911309, -0.201924, 0.358807,
		32.331509, 32.850780, 46.278385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906403, 32.354691, 45.814129>,  <31.693594, 32.992126, 46.027218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906403, 32.354691, 45.814129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139137, 32.424847, 46.131798>,  <32.278778, 32.466942, 46.322399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139137, 32.424847, 46.131798>,  <31.906403, 32.354691, 45.814129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139137, 32.424847, 46.131798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296740, -0.863376, 0.408077,
		0.757241, -0.473095, -0.450296,
		0.581835, 0.175392, 0.794170,
		32.313686, 32.477463, 46.370049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266556, 31.717499, 45.917763>,  <31.906403, 32.354691, 45.814129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266556, 31.717499, 45.917763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322304, 31.903986, 46.267212>,  <32.355755, 32.015877, 46.476883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.322304, 31.903986, 46.267212>,  <32.266556, 31.717499, 45.917763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322304, 31.903986, 46.267212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209057, -0.848495, 0.486160,
		0.967920, -0.250395, -0.020791,
		0.139374, 0.466218, 0.873622,
		32.364117, 32.043850, 46.529297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751328, 31.297501, 46.379002>,  <32.266556, 31.717499, 45.917763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751328, 31.297501, 46.379002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537704, 31.544674, 46.609806>,  <32.409531, 31.692978, 46.748287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537704, 31.544674, 46.609806>,  <32.751328, 31.297501, 46.379002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537704, 31.544674, 46.609806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237199, -0.764593, 0.599278,
		0.811493, 0.183182, 0.554909,
		-0.534056, 0.617933, 0.577012,
		32.377487, 31.730053, 46.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980824, 31.092440, 47.092228>,  <32.751328, 31.297501, 46.379002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980824, 31.092440, 47.092228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641617, 31.288574, 47.172665>,  <32.438091, 31.406254, 47.220924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641617, 31.288574, 47.172665>,  <32.980824, 31.092440, 47.092228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641617, 31.288574, 47.172665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266473, -0.722490, 0.637966,
		0.458102, 0.487421, 0.743346,
		-0.848018, 0.490335, 0.201089,
		32.387211, 31.435675, 47.232990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861801, 30.871456, 47.772030>,  <32.980824, 31.092440, 47.092228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861801, 30.871456, 47.772030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.518494, 31.029799, 47.641388>,  <32.312508, 31.124804, 47.563004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.518494, 31.029799, 47.641388>,  <32.861801, 30.871456, 47.772030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518494, 31.029799, 47.641388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512656, -0.632133, 0.581026,
		0.023543, 0.666114, 0.745478,
		-0.858271, 0.395854, -0.326605,
		32.261013, 31.148554, 47.543407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432537, 31.056488, 48.406734>,  <32.861801, 30.871456, 47.772030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432537, 31.056488, 48.406734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178757, 31.023123, 48.099354>,  <32.026489, 31.003103, 47.914925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178757, 31.023123, 48.099354>,  <32.432537, 31.056488, 48.406734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178757, 31.023123, 48.099354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594263, -0.583101, 0.553936,
		-0.494288, 0.808106, 0.320381,
		-0.634453, -0.083413, -0.768447,
		31.988420, 30.998098, 47.868820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797382, 31.357624, 48.602913>,  <32.432537, 31.056488, 48.406734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797382, 31.357624, 48.602913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709812, 31.098749, 48.310825>,  <31.657270, 30.943424, 48.135574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709812, 31.098749, 48.310825>,  <31.797382, 31.357624, 48.602913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709812, 31.098749, 48.310825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394242, -0.625894, 0.672926,
		-0.892549, 0.435204, -0.118125,
		-0.218926, -0.647189, -0.730217,
		31.644135, 30.904593, 48.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042456, 31.266815, 48.517876>,  <31.797382, 31.357624, 48.602913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042456, 31.266815, 48.517876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276049, 30.958282, 48.416672>,  <31.416204, 30.773163, 48.355949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276049, 30.958282, 48.416672>,  <31.042456, 31.266815, 48.517876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276049, 30.958282, 48.416672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345796, -0.518359, 0.782131,
		-0.734431, -0.369261, -0.569435,
		0.583982, -0.771330, -0.253010,
		31.451244, 30.726883, 48.340767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634115, 31.853928, 48.632019>,  <31.042456, 31.266815, 48.517876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634115, 31.853928, 48.632019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399660, 31.685299, 48.355259>,  <30.258987, 31.584122, 48.189205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399660, 31.685299, 48.355259>,  <30.634115, 31.853928, 48.632019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399660, 31.685299, 48.355259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809612, 0.271899, 0.520192,
		-0.031173, 0.865071, -0.500680,
		-0.586137, -0.421573, -0.691896,
		30.223820, 31.558826, 48.147690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972977, 32.264164, 48.574322>,  <30.634115, 31.853928, 48.632019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972977, 32.264164, 48.574322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913733, 31.895670, 48.430435>,  <29.878185, 31.674574, 48.344105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.913733, 31.895670, 48.430435>,  <29.972977, 32.264164, 48.574322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913733, 31.895670, 48.430435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858531, -0.060778, 0.509147,
		-0.490905, 0.384238, -0.781904,
		-0.148111, -0.921231, -0.359717,
		29.869299, 31.619301, 48.322521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549650, 32.869774, 48.932774>,  <29.972977, 32.264164, 48.574322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549650, 32.869774, 48.932774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.217234, 33.088299, 48.974548>,  <29.017784, 33.219414, 48.999611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.217234, 33.088299, 48.974548>,  <29.549650, 32.869774, 48.932774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217234, 33.088299, 48.974548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220793, 0.496359, -0.839570,
		-0.510507, -0.674661, -0.533119,
		-0.831043, 0.546315, 0.104434,
		28.967920, 33.252193, 49.005878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130505, 32.853504, 48.297775>,  <29.549650, 32.869774, 48.932774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130505, 32.853504, 48.297775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.959890, 33.169296, 48.474312>,  <28.857521, 33.358772, 48.580235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.959890, 33.169296, 48.474312>,  <29.130505, 32.853504, 48.297775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959890, 33.169296, 48.474312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095056, 0.446127, -0.889907,
		-0.899462, -0.421529, -0.115244,
		-0.426535, 0.789483, 0.441343,
		28.831930, 33.406139, 48.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421076, 32.891579, 47.954990>,  <29.130505, 32.853504, 48.297775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421076, 32.891579, 47.954990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561838, 33.245186, 48.078064>,  <28.646296, 33.457352, 48.151909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561838, 33.245186, 48.078064>,  <28.421076, 32.891579, 47.954990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561838, 33.245186, 48.078064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029056, 0.318232, -0.947568,
		-0.935584, 0.342394, 0.086301,
		0.351905, 0.884022, 0.307681,
		28.667410, 33.510391, 48.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140388, 33.387337, 47.432327>,  <28.421076, 32.891579, 47.954990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140388, 33.387337, 47.432327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430723, 33.579113, 47.629627>,  <28.604925, 33.694180, 47.748009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.430723, 33.579113, 47.629627>,  <28.140388, 33.387337, 47.432327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430723, 33.579113, 47.629627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187198, 0.552332, -0.812334,
		-0.661904, 0.681958, 0.311154,
		0.725838, 0.479439, 0.493252,
		28.648474, 33.722946, 47.777603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157824, 33.936504, 46.984890>,  <28.140388, 33.387337, 47.432327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157824, 33.936504, 46.984890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495127, 33.938824, 47.199879>,  <28.697510, 33.940216, 47.328873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495127, 33.938824, 47.199879>,  <28.157824, 33.936504, 46.984890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495127, 33.938824, 47.199879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491251, 0.397497, -0.775028,
		-0.218141, 0.917585, 0.332343,
		0.843260, 0.005801, 0.537475,
		28.748104, 33.940563, 47.361122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547180, 34.551769, 46.682858>,  <28.157824, 33.936504, 46.984890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547180, 34.551769, 46.682858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817972, 34.345989, 46.893398>,  <28.980448, 34.222523, 47.019722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817972, 34.345989, 46.893398>,  <28.547180, 34.551769, 46.682858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817972, 34.345989, 46.893398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700991, 0.232736, -0.674126,
		0.224304, 0.825333, 0.518182,
		0.676978, -0.514450, 0.526348,
		29.021065, 34.191654, 47.051304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190077, 34.998806, 46.742168>,  <28.547180, 34.551769, 46.682858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190077, 34.998806, 46.742168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290195, 34.613823, 46.784157>,  <29.350266, 34.382832, 46.809349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290195, 34.613823, 46.784157>,  <29.190077, 34.998806, 46.742168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290195, 34.613823, 46.784157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680482, 0.097760, -0.726214,
		0.688692, 0.253199, 0.679407,
		0.250296, -0.962462, 0.104971,
		29.365284, 34.325085, 46.815647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941593, 35.040443, 46.879463>,  <29.190077, 34.998806, 46.742168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941593, 35.040443, 46.879463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870193, 34.662701, 46.768948>,  <29.827354, 34.436054, 46.702637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870193, 34.662701, 46.768948>,  <29.941593, 35.040443, 46.879463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870193, 34.662701, 46.768948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728909, 0.061704, -0.681825,
		0.660932, -0.323094, 0.677333,
		-0.178499, -0.944353, -0.276288,
		29.816645, 34.379395, 46.686062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580296, 34.743298, 46.685322>,  <29.941593, 35.040443, 46.879463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580296, 34.743298, 46.685322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349720, 34.465656, 46.512840>,  <30.211374, 34.299072, 46.409351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349720, 34.465656, 46.512840>,  <30.580296, 34.743298, 46.685322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349720, 34.465656, 46.512840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493455, 0.124932, -0.860752,
		0.651321, -0.708953, 0.270492,
		-0.576440, -0.694102, -0.431207,
		30.176788, 34.257427, 46.383476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035795, 34.281174, 46.435223>,  <30.580296, 34.743298, 46.685322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035795, 34.281174, 46.435223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695318, 34.233562, 46.230751>,  <30.491032, 34.204994, 46.108067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695318, 34.233562, 46.230751>,  <31.035795, 34.281174, 46.435223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695318, 34.233562, 46.230751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518128, -0.035153, -0.854580,
		0.083753, -0.992268, 0.091595,
		-0.851192, -0.119032, -0.511177,
		30.439960, 34.197853, 46.077396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261471, 33.812798, 46.007511>,  <31.035795, 34.281174, 46.435223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261471, 33.812798, 46.007511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934153, 33.939892, 45.815910>,  <30.737762, 34.016148, 45.700951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934153, 33.939892, 45.815910>,  <31.261471, 33.812798, 46.007511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934153, 33.939892, 45.815910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501032, -0.014134, -0.865313,
		-0.281710, -0.948075, -0.147629,
		-0.818295, 0.317734, -0.478998,
		30.688663, 34.035213, 45.672211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274849, 33.402969, 45.345428>,  <31.261471, 33.812798, 46.007511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274849, 33.402969, 45.345428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019121, 33.706097, 45.293297>,  <30.865685, 33.887974, 45.262020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019121, 33.706097, 45.293297>,  <31.274849, 33.402969, 45.345428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019121, 33.706097, 45.293297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294624, 0.084862, -0.951838,
		-0.710261, -0.646923, -0.277525,
		-0.639317, 0.757818, -0.130325,
		30.827326, 33.933441, 45.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903505, 33.296459, 44.703766>,  <31.274849, 33.402969, 45.345428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903505, 33.296459, 44.703766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875908, 33.688618, 44.777588>,  <30.859348, 33.923912, 44.821880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875908, 33.688618, 44.777588>,  <30.903505, 33.296459, 44.703766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875908, 33.688618, 44.777588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178420, 0.194135, -0.964613,
		-0.981532, -0.033626, -0.188317,
		-0.068995, 0.980398, 0.184551,
		30.855209, 33.982738, 44.832954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473259, 33.640732, 44.172382>,  <30.903505, 33.296459, 44.703766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473259, 33.640732, 44.172382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668102, 33.952652, 44.329678>,  <30.785009, 34.139805, 44.424053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668102, 33.952652, 44.329678>,  <30.473259, 33.640732, 44.172382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668102, 33.952652, 44.329678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102061, 0.396355, -0.912407,
		-0.867356, 0.484577, 0.113481,
		0.487110, 0.779800, 0.393238,
		30.814236, 34.186592, 44.447647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331070, 34.166656, 43.690781>,  <30.473259, 33.640732, 44.172382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331070, 34.166656, 43.690781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648495, 34.288189, 43.901665>,  <30.838949, 34.361107, 44.028194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648495, 34.288189, 43.901665>,  <30.331070, 34.166656, 43.690781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648495, 34.288189, 43.901665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363025, 0.458944, -0.810915,
		-0.488339, 0.834900, 0.253903,
		0.793560, 0.303829, 0.527210,
		30.886562, 34.379337, 44.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561304, 34.575550, 43.231503>,  <30.331070, 34.166656, 43.690781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561304, 34.575550, 43.231503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880079, 34.566154, 43.472942>,  <31.071344, 34.560516, 43.617805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880079, 34.566154, 43.472942>,  <30.561304, 34.575550, 43.231503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880079, 34.566154, 43.472942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523437, 0.525592, -0.670646,
		-0.301500, 0.850412, 0.431157,
		0.796939, -0.023484, 0.603604,
		31.119162, 34.559109, 43.654022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656412, 35.233665, 43.555397>,  <30.561304, 34.575550, 43.231503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656412, 35.233665, 43.555397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997023, 35.026310, 43.523952>,  <31.201389, 34.901897, 43.505085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997023, 35.026310, 43.523952>,  <30.656412, 35.233665, 43.555397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997023, 35.026310, 43.523952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407945, 0.749231, -0.521760,
		0.329374, 0.412221, 0.849463,
		0.851524, -0.518388, -0.078614,
		31.252480, 34.870792, 43.500370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161104, 35.728943, 43.733383>,  <30.656412, 35.233665, 43.555397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161104, 35.728943, 43.733383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375563, 35.452244, 43.539875>,  <31.504238, 35.286224, 43.423771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.375563, 35.452244, 43.539875>,  <31.161104, 35.728943, 43.733383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375563, 35.452244, 43.539875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382976, 0.710057, -0.590887,
		0.752249, 0.131529, 0.645617,
		0.536144, -0.691750, -0.483768,
		31.536406, 35.244720, 43.394745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837997, 35.978458, 43.764824>,  <31.161104, 35.728943, 43.733383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837997, 35.978458, 43.764824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811670, 35.725178, 43.456352>,  <31.795874, 35.573208, 43.271271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811670, 35.725178, 43.456352>,  <31.837997, 35.978458, 43.764824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811670, 35.725178, 43.456352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397873, 0.692106, -0.602234,
		0.915077, -0.346469, 0.206383,
		-0.065816, -0.633205, -0.771181,
		31.791925, 35.535217, 43.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393509, 36.077869, 43.478039>,  <31.837997, 35.978458, 43.764824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393509, 36.077869, 43.478039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176868, 35.914013, 43.184410>,  <32.046883, 35.815701, 43.008232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176868, 35.914013, 43.184410>,  <32.393509, 36.077869, 43.478039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176868, 35.914013, 43.184410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343819, 0.688914, -0.638111,
		0.767107, -0.597991, -0.232277,
		-0.541604, -0.409639, -0.734072,
		32.014389, 35.791122, 42.964188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.532043, 40.852242, 40.274929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235268, 40.909489, 40.012924>,  <41.057201, 40.943836, 39.855721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.235268, 40.909489, 40.012924>,  <41.532043, 40.852242, 40.274929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235268, 40.909489, 40.012924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058254, -0.959499, -0.275624,
		-0.667931, -0.242653, 0.703553,
		-0.741939, 0.143113, -0.655015,
		41.012688, 40.952423, 39.816422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125332, 40.269966, 40.340981>,  <41.532043, 40.852242, 40.274929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125332, 40.269966, 40.340981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065063, 40.409973, 39.971161>,  <41.028904, 40.493977, 39.749268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.065063, 40.409973, 39.971161>,  <41.125332, 40.269966, 40.340981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065063, 40.409973, 39.971161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084053, -0.927302, -0.364756,
		-0.985005, -0.132668, 0.110295,
		-0.150669, 0.350015, -0.924547,
		41.019863, 40.514977, 39.693798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549732, 39.872005, 40.171688>,  <41.125332, 40.269966, 40.340981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549732, 39.872005, 40.171688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707127, 40.033234, 39.841187>,  <40.801563, 40.129971, 39.642883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707127, 40.033234, 39.841187>,  <40.549732, 39.872005, 40.171688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707127, 40.033234, 39.841187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009112, -0.900426, -0.434914,
		-0.919284, 0.163606, -0.357982,
		0.393490, 0.403072, -0.826256,
		40.825172, 40.154156, 39.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214859, 39.519444, 39.541031>,  <40.549732, 39.872005, 40.171688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214859, 39.519444, 39.541031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556763, 39.687347, 39.418922>,  <40.761906, 39.788090, 39.345657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.556763, 39.687347, 39.418922>,  <40.214859, 39.519444, 39.541031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556763, 39.687347, 39.418922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152947, -0.765757, -0.624679,
		-0.495980, 0.487259, -0.718737,
		0.854758, 0.419757, -0.305275,
		40.813190, 39.813274, 39.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126331, 39.496960, 38.815109>,  <40.214859, 39.519444, 39.541031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126331, 39.496960, 38.815109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518642, 39.532326, 38.884686>,  <40.754028, 39.553543, 38.926430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518642, 39.532326, 38.884686>,  <40.126331, 39.496960, 38.815109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518642, 39.532326, 38.884686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180837, -0.746654, -0.640161,
		0.073275, 0.659312, -0.748291,
		0.980780, 0.088411, 0.173939,
		40.812878, 39.558849, 38.936867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454391, 39.578613, 38.137196>,  <40.126331, 39.496960, 38.815109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454391, 39.578613, 38.137196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732994, 39.428009, 38.381531>,  <40.900154, 39.337646, 38.528130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.732994, 39.428009, 38.381531>,  <40.454391, 39.578613, 38.137196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732994, 39.428009, 38.381531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240982, -0.679094, -0.693368,
		0.675875, 0.630135, -0.382260,
		0.696506, -0.376513, 0.610834,
		40.941944, 39.315056, 38.564781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911339, 39.257866, 37.667572>,  <40.454391, 39.578613, 38.137196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911339, 39.257866, 37.667572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048851, 39.111217, 38.013382>,  <41.131359, 39.023228, 38.220867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048851, 39.111217, 38.013382>,  <40.911339, 39.257866, 37.667572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048851, 39.111217, 38.013382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478198, -0.723975, -0.497179,
		0.808171, 0.584335, -0.073571,
		0.343782, -0.366624, 0.864523,
		41.151985, 39.001228, 38.272739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540703, 39.086346, 37.479000>,  <40.911339, 39.257866, 37.667572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540703, 39.086346, 37.479000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469463, 38.877872, 37.812862>,  <41.426720, 38.752789, 38.013180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469463, 38.877872, 37.812862>,  <41.540703, 39.086346, 37.479000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469463, 38.877872, 37.812862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491709, -0.781860, -0.383298,
		0.852352, 0.342144, 0.395516,
		-0.178096, -0.521183, 0.834656,
		41.416035, 38.721516, 38.063259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239201, 38.937481, 37.659248>,  <41.540703, 39.086346, 37.479000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239201, 38.937481, 37.659248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976006, 38.686954, 37.826477>,  <41.818089, 38.536640, 37.926815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976006, 38.686954, 37.826477>,  <42.239201, 38.937481, 37.659248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976006, 38.686954, 37.826477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603788, -0.770569, -0.204117,
		0.449992, 0.118118, 0.885187,
		-0.657987, -0.626316, 0.418068,
		41.778610, 38.499058, 37.951897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627903, 38.479431, 38.072697>,  <42.239201, 38.937481, 37.659248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627903, 38.479431, 38.072697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284397, 38.313374, 37.952579>,  <42.078293, 38.213737, 37.880508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284397, 38.313374, 37.952579>,  <42.627903, 38.479431, 38.072697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284397, 38.313374, 37.952579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491391, -0.833319, -0.253210,
		-0.145121, -0.365009, 0.919624,
		-0.858764, -0.415149, -0.300295,
		42.026768, 38.188828, 37.862492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584064, 37.699726, 38.298241>,  <42.627903, 38.479431, 38.072697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584064, 37.699726, 38.298241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325378, 37.733273, 37.994999>,  <42.170166, 37.753403, 37.813053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.325378, 37.733273, 37.994999>,  <42.584064, 37.699726, 38.298241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325378, 37.733273, 37.994999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333050, -0.863123, -0.379600,
		-0.686178, -0.497980, 0.530260,
		-0.646713, 0.083870, -0.758108,
		42.131363, 37.758434, 37.767567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161877, 37.096722, 38.255527>,  <42.584064, 37.699726, 38.298241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161877, 37.096722, 38.255527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123741, 37.240894, 37.884365>,  <42.100861, 37.327396, 37.661667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123741, 37.240894, 37.884365>,  <42.161877, 37.096722, 38.255527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123741, 37.240894, 37.884365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192362, -0.907907, -0.372427,
		-0.976682, -0.213999, 0.017224,
		-0.095336, 0.360430, -0.927902,
		42.095139, 37.349022, 37.605995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887245, 36.496601, 37.921570>,  <42.161877, 37.096722, 38.255527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887245, 36.496601, 37.921570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029274, 36.740284, 37.637936>,  <42.114491, 36.886494, 37.467754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029274, 36.740284, 37.637936>,  <41.887245, 36.496601, 37.921570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029274, 36.740284, 37.637936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356062, -0.789463, -0.499969,
		-0.864376, -0.074953, -0.497228,
		0.355069, 0.609205, -0.709081,
		42.135796, 36.923046, 37.425213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664024, 36.112995, 37.290310>,  <41.887245, 36.496601, 37.921570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664024, 36.112995, 37.290310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937386, 36.373142, 37.157658>,  <42.101402, 36.529232, 37.078064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.937386, 36.373142, 37.157658>,  <41.664024, 36.112995, 37.290310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937386, 36.373142, 37.157658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473974, -0.740779, -0.476020,
		-0.555256, 0.168128, -0.814508,
		0.683403, 0.650369, -0.331634,
		42.142406, 36.568253, 37.058167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805740, 35.967556, 36.626522>,  <41.664024, 36.112995, 37.290310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805740, 35.967556, 36.626522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.131874, 36.180256, 36.718151>,  <42.327553, 36.307877, 36.773129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.131874, 36.180256, 36.718151>,  <41.805740, 35.967556, 36.626522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131874, 36.180256, 36.718151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561940, -0.631434, -0.534335,
		-0.139486, 0.564388, -0.813640,
		0.815332, 0.531749, 0.229076,
		42.376472, 36.339779, 36.786873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182545, 36.076630, 35.975761>,  <41.805740, 35.967556, 36.626522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182545, 36.076630, 35.975761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460358, 36.129845, 36.258583>,  <42.627045, 36.161774, 36.428276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460358, 36.129845, 36.258583>,  <42.182545, 36.076630, 35.975761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460358, 36.129845, 36.258583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657333, -0.516849, -0.548435,
		0.292478, 0.845676, -0.446418,
		0.694529, 0.133040, 0.707057,
		42.668716, 36.169758, 36.470699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896290, 36.188530, 35.593861>,  <42.182545, 36.076630, 35.975761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896290, 36.188530, 35.593861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992226, 36.083881, 35.967819>,  <43.049786, 36.021091, 36.192196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992226, 36.083881, 35.967819>,  <42.896290, 36.188530, 35.593861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992226, 36.083881, 35.967819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837521, -0.431245, -0.335539,
		0.490953, 0.863471, 0.115684,
		0.239841, -0.261622, 0.934896,
		43.064178, 36.005394, 36.248287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664898, 36.344032, 35.633633>,  <42.896290, 36.188530, 35.593861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664898, 36.344032, 35.633633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557491, 36.085773, 35.919582>,  <43.493046, 35.930820, 36.091152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557491, 36.085773, 35.919582>,  <43.664898, 36.344032, 35.633633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557491, 36.085773, 35.919582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716878, -0.629642, -0.299395,
		0.643416, 0.432082, 0.631919,
		-0.268520, -0.645644, 0.714871,
		43.476936, 35.892078, 36.134045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409100, 36.067966, 35.911877>,  <43.664898, 36.344032, 35.633633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409100, 36.067966, 35.911877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127209, 35.811348, 36.033058>,  <43.958073, 35.657379, 36.105766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127209, 35.811348, 36.033058>,  <44.409100, 36.067966, 35.911877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127209, 35.811348, 36.033058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530287, -0.759980, -0.375802,
		0.471329, -0.104188, 0.875782,
		-0.704730, -0.641542, 0.302951,
		43.915791, 35.618885, 36.123943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811665, 35.416206, 36.034939>,  <44.409100, 36.067966, 35.911877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811665, 35.416206, 36.034939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427181, 35.327724, 35.969040>,  <44.196491, 35.274635, 35.929501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.427181, 35.327724, 35.969040>,  <44.811665, 35.416206, 36.034939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427181, 35.327724, 35.969040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266225, -0.900244, -0.344506,
		-0.072106, -0.375003, 0.924215,
		-0.961210, -0.221208, -0.164748,
		44.138817, 35.261364, 35.919617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788445, 34.857422, 36.322052>,  <44.811665, 35.416206, 36.034939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788445, 34.857422, 36.322052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493561, 34.866566, 36.051941>,  <44.316631, 34.872051, 35.889874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493561, 34.866566, 36.051941>,  <44.788445, 34.857422, 36.322052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493561, 34.866566, 36.051941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272992, -0.904142, -0.328638,
		-0.618064, -0.426620, 0.660297,
		-0.737206, 0.022864, -0.675281,
		44.272400, 34.873425, 35.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476761, 35.067593, 36.651745>,  <44.788445, 34.857422, 36.322052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476761, 35.067593, 36.651745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722580, 35.333683, 36.482132>,  <45.870071, 35.493336, 36.380363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.722580, 35.333683, 36.482132>,  <45.476761, 35.067593, 36.651745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722580, 35.333683, 36.482132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381245, 0.721025, 0.578598,
		0.690633, -0.193919, 0.696721,
		0.614555, 0.665221, -0.424033,
		45.906944, 35.533249, 36.354923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720657, 35.421471, 37.195759>,  <45.476761, 35.067593, 36.651745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720657, 35.421471, 37.195759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782070, 35.657768, 36.878914>,  <45.818916, 35.799549, 36.688805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782070, 35.657768, 36.878914>,  <45.720657, 35.421471, 37.195759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782070, 35.657768, 36.878914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314045, 0.789228, 0.527726,
		0.936912, 0.167737, 0.306693,
		0.153531, 0.590748, -0.792114,
		45.828129, 35.834991, 36.641281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077663, 35.960575, 37.437725>,  <45.720657, 35.421471, 37.195759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077663, 35.960575, 37.437725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924591, 36.102463, 37.096497>,  <45.832748, 36.187595, 36.891762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.924591, 36.102463, 37.096497>,  <46.077663, 35.960575, 37.437725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924591, 36.102463, 37.096497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298001, 0.826610, 0.477401,
		0.874499, 0.436909, -0.210622,
		-0.382683, 0.354721, -0.853069,
		45.809788, 36.208878, 36.840576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436371, 36.583500, 37.483398>,  <46.077663, 35.960575, 37.437725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436371, 36.583500, 37.483398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.130016, 36.631886, 37.230801>,  <45.946205, 36.660915, 37.079243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.130016, 36.631886, 37.230801>,  <46.436371, 36.583500, 37.483398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130016, 36.631886, 37.230801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159322, 0.915813, 0.368650,
		0.622926, 0.382954, -0.682136,
		-0.765885, 0.120962, -0.631497,
		45.900249, 36.668175, 37.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.563457, 37.198872, 37.055946>,  <46.436371, 36.583500, 37.483398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.563457, 37.198872, 37.055946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168941, 37.148346, 37.013458>,  <45.932232, 37.118031, 36.987965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168941, 37.148346, 37.013458>,  <46.563457, 37.198872, 37.055946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168941, 37.148346, 37.013458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150473, 0.952612, 0.264364,
		0.067798, 0.276723, -0.958555,
		-0.986287, -0.126313, -0.106225,
		45.873055, 37.110451, 36.981590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267189, 37.812794, 36.837193>,  <46.563457, 37.198872, 37.055946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267189, 37.812794, 36.837193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945351, 37.613808, 36.966908>,  <45.752247, 37.494415, 37.044735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945351, 37.613808, 36.966908>,  <46.267189, 37.812794, 36.837193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945351, 37.613808, 36.966908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355607, 0.840983, 0.407788,
		-0.475578, 0.212785, -0.853550,
		-0.804592, -0.497464, 0.324285,
		45.703972, 37.464569, 37.064194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731236, 38.177711, 36.722694>,  <46.267189, 37.812794, 36.837193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731236, 38.177711, 36.722694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516010, 37.949635, 36.971004>,  <45.386875, 37.812786, 37.119991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516010, 37.949635, 36.971004>,  <45.731236, 38.177711, 36.722694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516010, 37.949635, 36.971004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367020, 0.821478, 0.436428,
		-0.758804, 0.006990, -0.651282,
		-0.538065, -0.570197, 0.620775,
		45.354591, 37.778576, 37.157238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016548, 38.396034, 36.537655>,  <45.731236, 38.177711, 36.722694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016548, 38.396034, 36.537655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045284, 38.248783, 36.908455>,  <45.062527, 38.160431, 37.130936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045284, 38.248783, 36.908455>,  <45.016548, 38.396034, 36.537655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045284, 38.248783, 36.908455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479293, 0.802318, 0.355759,
		-0.874710, -0.469860, -0.118802,
		0.071840, -0.368127, 0.926996,
		45.066837, 38.138344, 37.186554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537331, 38.760384, 36.880684>,  <45.016548, 38.396034, 36.537655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537331, 38.760384, 36.880684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728279, 38.582851, 37.184032>,  <44.842850, 38.476334, 37.366043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728279, 38.582851, 37.184032>,  <44.537331, 38.760384, 36.880684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728279, 38.582851, 37.184032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386444, 0.669072, 0.634825,
		-0.789161, -0.596117, 0.147881,
		0.477374, -0.443832, 0.758372,
		44.871490, 38.449703, 37.411545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080608, 38.490105, 37.271618>,  <44.537331, 38.760384, 36.880684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080608, 38.490105, 37.271618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405460, 38.521809, 37.502846>,  <44.600372, 38.540833, 37.641582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405460, 38.521809, 37.502846>,  <44.080608, 38.490105, 37.271618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405460, 38.521809, 37.502846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467530, 0.681144, 0.563435,
		-0.349092, -0.727847, 0.590232,
		0.812127, 0.079261, 0.578072,
		44.649097, 38.545586, 37.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792000, 38.730728, 37.783409>,  <44.080608, 38.490105, 37.271618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792000, 38.730728, 37.783409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170204, 38.800133, 37.893604>,  <44.397129, 38.841774, 37.959721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170204, 38.800133, 37.893604>,  <43.792000, 38.730728, 37.783409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170204, 38.800133, 37.893604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318679, 0.666486, 0.673974,
		-0.066668, -0.725045, 0.685467,
		0.945516, 0.173511, 0.275490,
		44.453857, 38.852184, 37.976250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866928, 38.700928, 38.538391>,  <43.792000, 38.730728, 37.783409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866928, 38.700928, 38.538391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132397, 38.940895, 38.359669>,  <44.291679, 39.084877, 38.252434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.132397, 38.940895, 38.359669>,  <43.866928, 38.700928, 38.538391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132397, 38.940895, 38.359669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178020, 0.706829, 0.684618,
		0.726535, -0.374818, 0.575898,
		0.663669, 0.599920, -0.446811,
		44.331497, 39.120869, 38.225628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070110, 39.064457, 39.064548>,  <43.866928, 38.700928, 38.538391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070110, 39.064457, 39.064548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189350, 39.297367, 38.762001>,  <44.260895, 39.437115, 38.580471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189350, 39.297367, 38.762001>,  <44.070110, 39.064457, 39.064548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189350, 39.297367, 38.762001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185061, 0.812614, 0.552640,
		0.936424, -0.024766, 0.349994,
		0.298097, 0.582276, -0.756368,
		44.278778, 39.472050, 38.535091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472534, 39.634068, 39.450977>,  <44.070110, 39.064457, 39.064548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472534, 39.634068, 39.450977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351707, 39.786083, 39.101276>,  <44.279209, 39.877293, 38.891457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351707, 39.786083, 39.101276>,  <44.472534, 39.634068, 39.450977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351707, 39.786083, 39.101276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201225, 0.871013, 0.448158,
		0.931806, 0.311298, -0.186633,
		-0.302070, 0.380041, -0.874256,
		44.261086, 39.900097, 38.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660503, 40.379562, 39.483017>,  <44.472534, 39.634068, 39.450977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660503, 40.379562, 39.483017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413597, 40.383736, 39.168343>,  <44.265453, 40.386238, 38.979538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413597, 40.383736, 39.168343>,  <44.660503, 40.379562, 39.483017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413597, 40.383736, 39.168343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391169, 0.863496, 0.318374,
		0.682624, 0.504248, -0.528922,
		-0.617261, 0.010431, -0.786689,
		44.228420, 40.386864, 38.932335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636280, 41.013805, 39.412350>,  <44.660503, 40.379562, 39.483017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636280, 41.013805, 39.412350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298317, 40.887344, 39.239754>,  <44.095539, 40.811466, 39.136196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298317, 40.887344, 39.239754>,  <44.636280, 41.013805, 39.412350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298317, 40.887344, 39.239754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516042, 0.694136, 0.501873,
		0.140841, 0.646701, -0.749628,
		-0.844905, -0.316156, -0.431488,
		44.044846, 40.792500, 39.110306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319168, 41.588451, 39.303997>,  <44.636280, 41.013805, 39.412350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319168, 41.588451, 39.303997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010307, 41.342274, 39.240730>,  <43.824993, 41.194569, 39.202770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010307, 41.342274, 39.240730>,  <44.319168, 41.588451, 39.303997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010307, 41.342274, 39.240730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598154, 0.619953, 0.507809,
		-0.214471, 0.486712, -0.846826,
		-0.772149, -0.615442, -0.158166,
		43.778664, 41.157642, 39.193279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661255, 41.988510, 39.030376>,  <44.319168, 41.588451, 39.303997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661255, 41.988510, 39.030376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514774, 41.643658, 39.170448>,  <43.426884, 41.436749, 39.254494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514774, 41.643658, 39.170448>,  <43.661255, 41.988510, 39.030376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514774, 41.643658, 39.170448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749658, 0.496282, 0.437856,
		-0.551277, -0.102172, -0.828043,
		-0.366206, -0.862128, 0.350183,
		43.404911, 41.385017, 39.275501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962627, 42.094852, 39.006008>,  <43.661255, 41.988510, 39.030376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962627, 42.094852, 39.006008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007343, 41.810951, 39.284218>,  <43.034172, 41.640610, 39.451145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007343, 41.810951, 39.284218>,  <42.962627, 42.094852, 39.006008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007343, 41.810951, 39.284218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690616, 0.447773, 0.567933,
		-0.714530, -0.543828, -0.440111,
		0.111788, -0.709754, 0.695524,
		43.040878, 41.598026, 39.492874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266251, 41.784367, 39.182056>,  <42.962627, 42.094852, 39.006008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266251, 41.784367, 39.182056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511623, 41.711689, 39.489483>,  <42.658848, 41.668083, 39.673939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511623, 41.711689, 39.489483>,  <42.266251, 41.784367, 39.182056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511623, 41.711689, 39.489483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739329, 0.210038, 0.639747,
		-0.277666, -0.960662, -0.005488,
		0.613428, -0.181694, 0.768566,
		42.695652, 41.657181, 39.720051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928967, 41.359280, 39.634586>,  <42.266251, 41.784367, 39.182056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928967, 41.359280, 39.634586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204723, 41.534561, 39.865314>,  <42.370178, 41.639729, 40.003750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204723, 41.534561, 39.865314>,  <41.928967, 41.359280, 39.634586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204723, 41.534561, 39.865314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714922, 0.283267, 0.639254,
		0.116727, -0.853077, 0.508561,
		0.689392, 0.438200, 0.576819,
		42.411541, 41.666019, 40.038361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.644428, 34.977516, 40.322456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316433, 35.039261, 40.101990>,  <37.119637, 35.076309, 39.969711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316433, 35.039261, 40.101990>,  <37.644428, 34.977516, 40.322456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316433, 35.039261, 40.101990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572271, 0.202724, -0.794612,
		-0.010927, -0.966992, -0.254571,
		-0.819992, 0.154367, -0.551167,
		37.070435, 35.085571, 39.936638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605827, 34.584675, 39.757599>,  <37.644428, 34.977516, 40.322456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605827, 34.584675, 39.757599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374397, 34.896641, 39.662109>,  <37.235538, 35.083820, 39.604816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374397, 34.896641, 39.662109>,  <37.605827, 34.584675, 39.757599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374397, 34.896641, 39.662109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622814, 0.233473, -0.746722,
		-0.526643, -0.580713, -0.620822,
		-0.578576, 0.779912, -0.238719,
		37.200825, 35.130615, 39.590492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539547, 34.441879, 39.006020>,  <37.605827, 34.584675, 39.757599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539547, 34.441879, 39.006020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462273, 34.828358, 39.074303>,  <37.415909, 35.060246, 39.115273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462273, 34.828358, 39.074303>,  <37.539547, 34.441879, 39.006020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462273, 34.828358, 39.074303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530610, 0.249230, -0.810146,
		-0.825307, -0.065931, -0.560823,
		-0.193188, 0.966197, 0.170707,
		37.404316, 35.118217, 39.125515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516373, 34.753384, 38.282219>,  <37.539547, 34.441879, 39.006020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516373, 34.753384, 38.282219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537319, 35.086655, 38.502426>,  <37.549889, 35.286617, 38.634552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537319, 35.086655, 38.502426>,  <37.516373, 34.753384, 38.282219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537319, 35.086655, 38.502426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525853, 0.445648, -0.724483,
		-0.848961, 0.327434, -0.414790,
		0.052370, 0.833177, 0.550521,
		37.553032, 35.336609, 38.667583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305122, 35.263657, 37.848396>,  <37.516373, 34.753384, 38.282219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305122, 35.263657, 37.848396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523411, 35.440289, 38.133266>,  <37.654385, 35.546268, 38.304188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523411, 35.440289, 38.133266>,  <37.305122, 35.263657, 37.848396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523411, 35.440289, 38.133266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422599, 0.588869, -0.688944,
		-0.723601, 0.676937, 0.134748,
		0.545721, 0.441577, 0.712179,
		37.687126, 35.572762, 38.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217552, 36.040489, 37.776577>,  <37.305122, 35.263657, 37.848396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217552, 36.040489, 37.776577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553818, 35.952950, 37.974728>,  <37.755577, 35.900425, 38.093616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553818, 35.952950, 37.974728>,  <37.217552, 36.040489, 37.776577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553818, 35.952950, 37.974728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540502, 0.396289, -0.742168,
		-0.033888, 0.891661, 0.451433,
		0.840660, -0.218850, 0.495374,
		37.806015, 35.887295, 38.123341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558174, 36.612892, 37.881332>,  <37.217552, 36.040489, 37.776577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558174, 36.612892, 37.881332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836163, 36.325386, 37.889198>,  <38.002956, 36.152882, 37.893917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836163, 36.325386, 37.889198>,  <37.558174, 36.612892, 37.881332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836163, 36.325386, 37.889198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479169, 0.442575, -0.757974,
		0.536105, 0.536193, 0.651989,
		0.694974, -0.718766, 0.019661,
		38.044655, 36.109756, 37.895096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090923, 36.997505, 37.857773>,  <37.558174, 36.612892, 37.881332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090923, 36.997505, 37.857773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219379, 36.630383, 37.764381>,  <38.296452, 36.410110, 37.708347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219379, 36.630383, 37.764381>,  <38.090923, 36.997505, 37.857773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219379, 36.630383, 37.764381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539049, 0.379849, -0.751759,
		0.778651, 0.115562, 0.616723,
		0.321136, -0.917802, -0.233476,
		38.315720, 36.355042, 37.694340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726910, 37.123055, 37.746056>,  <38.090923, 36.997505, 37.857773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726910, 37.123055, 37.746056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690121, 36.757385, 37.588150>,  <38.668049, 36.537983, 37.493408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690121, 36.757385, 37.588150>,  <38.726910, 37.123055, 37.746056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690121, 36.757385, 37.588150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631516, 0.252966, -0.732936,
		0.769889, -0.316708, 0.554047,
		-0.091972, -0.914168, -0.394762,
		38.662529, 36.483135, 37.469723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425461, 36.895012, 37.619953>,  <38.726910, 37.123055, 37.746056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425461, 36.895012, 37.619953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185822, 36.674870, 37.387337>,  <39.042038, 36.542782, 37.247768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185822, 36.674870, 37.387337>,  <39.425461, 36.895012, 37.619953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185822, 36.674870, 37.387337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620031, 0.140661, -0.771865,
		0.506604, -0.822993, 0.256972,
		-0.599094, -0.550360, -0.581541,
		39.006092, 36.509762, 37.212875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824963, 36.375961, 37.304726>,  <39.425461, 36.895012, 37.619953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824963, 36.375961, 37.304726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505150, 36.438313, 37.072708>,  <39.313263, 36.475723, 36.933498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505150, 36.438313, 37.072708>,  <39.824963, 36.375961, 37.304726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505150, 36.438313, 37.072708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593196, 0.356321, -0.721910,
		0.094148, -0.921269, -0.377359,
		-0.799534, 0.155881, -0.580040,
		39.265289, 36.485077, 36.898697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955345, 36.076954, 36.616302>,  <39.824963, 36.375961, 37.304726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955345, 36.076954, 36.616302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668594, 36.349091, 36.555347>,  <39.496544, 36.512371, 36.518776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668594, 36.349091, 36.555347>,  <39.955345, 36.076954, 36.616302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668594, 36.349091, 36.555347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483759, 0.327995, -0.811416,
		-0.502054, -0.655408, -0.564253,
		-0.716881, 0.680337, -0.152388,
		39.453529, 36.553192, 36.509632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904388, 36.083431, 35.933582>,  <39.955345, 36.076954, 36.616302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904388, 36.083431, 35.933582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818665, 36.444450, 36.082973>,  <39.767231, 36.661060, 36.172607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818665, 36.444450, 36.082973>,  <39.904388, 36.083431, 35.933582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818665, 36.444450, 36.082973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487728, -0.232403, 0.841493,
		0.846282, 0.362497, -0.390389,
		-0.214311, 0.902544, 0.373478,
		39.754372, 36.715214, 36.195019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641598, 35.702583, 35.243454>,  <39.904388, 36.083431, 35.933582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641598, 35.702583, 35.243454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627895, 36.102345, 35.244812>,  <39.619675, 36.342201, 35.245628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627895, 36.102345, 35.244812>,  <39.641598, 35.702583, 35.243454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627895, 36.102345, 35.244812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599180, -0.017816, -0.800416,
		-0.799882, -0.029455, 0.599435,
		-0.034256, 0.999407, 0.003398,
		39.617619, 36.402168, 35.245831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219498, 35.560066, 35.882565>,  <39.641598, 35.702583, 35.243454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219498, 35.560066, 35.882565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319931, 35.246227, 35.655807>,  <39.380192, 35.057922, 35.519753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319931, 35.246227, 35.655807>,  <39.219498, 35.560066, 35.882565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319931, 35.246227, 35.655807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938601, -0.340503, 0.055555,
		-0.236616, 0.518133, -0.821919,
		0.251081, -0.784599, -0.566889,
		39.395256, 35.010849, 35.485741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683506, 35.504013, 35.257343>,  <39.219498, 35.560066, 35.882565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683506, 35.504013, 35.257343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836868, 35.139160, 35.315338>,  <38.928886, 34.920250, 35.350136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836868, 35.139160, 35.315338>,  <38.683506, 35.504013, 35.257343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836868, 35.139160, 35.315338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913273, -0.397815, -0.087604,
		0.137583, -0.098823, -0.985548,
		0.383409, -0.912128, 0.144985,
		38.951893, 34.865520, 35.358833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189854, 35.030056, 35.001675>,  <38.683506, 35.504013, 35.257343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189854, 35.030056, 35.001675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416698, 34.772869, 35.207577>,  <38.552807, 34.618557, 35.331120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416698, 34.772869, 35.207577>,  <38.189854, 35.030056, 35.001675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416698, 34.772869, 35.207577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815909, -0.523989, 0.244391,
		0.112593, -0.558595, -0.821763,
		0.567111, -0.642967, 0.514760,
		38.586830, 34.579979, 35.362003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058865, 34.290264, 34.709892>,  <38.189854, 35.030056, 35.001675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058865, 34.290264, 34.709892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178230, 34.283508, 35.091606>,  <38.249851, 34.279457, 35.320633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178230, 34.283508, 35.091606>,  <38.058865, 34.290264, 34.709892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178230, 34.283508, 35.091606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714861, -0.666434, 0.211754,
		0.632393, -0.745373, -0.210945,
		0.298417, -0.016884, 0.954286,
		38.267754, 34.278442, 35.377892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731556, 33.714989, 34.853886>,  <38.058865, 34.290264, 34.709892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731556, 33.714989, 34.853886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867584, 33.877464, 35.193146>,  <37.949203, 33.974949, 35.396702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867584, 33.877464, 35.193146>,  <37.731556, 33.714989, 34.853886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867584, 33.877464, 35.193146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643383, -0.557295, 0.524862,
		0.685863, -0.724179, 0.071813,
		0.340073, 0.406186, 0.848152,
		37.969604, 33.999321, 35.447590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817123, 33.223969, 35.263447>,  <37.731556, 33.714989, 34.853886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817123, 33.223969, 35.263447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772751, 33.547993, 35.493752>,  <37.746128, 33.742405, 35.631935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772751, 33.547993, 35.493752>,  <37.817123, 33.223969, 35.263447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772751, 33.547993, 35.493752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609949, -0.512886, 0.604078,
		0.784638, -0.284175, 0.550988,
		-0.110930, 0.810057, 0.575762,
		37.739471, 33.791008, 35.666481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751095, 32.836609, 35.860416>,  <37.817123, 33.223969, 35.263447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751095, 32.836609, 35.860416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624886, 33.208805, 35.934860>,  <37.549160, 33.432121, 35.979527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624886, 33.208805, 35.934860>,  <37.751095, 32.836609, 35.860416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624886, 33.208805, 35.934860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623363, -0.351120, 0.698665,
		0.715448, 0.104428, 0.690818,
		-0.315521, 0.930489, 0.186112,
		37.530228, 33.487953, 35.990692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739330, 32.942947, 36.630424>,  <37.751095, 32.836609, 35.860416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739330, 32.942947, 36.630424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481339, 33.218216, 36.497505>,  <37.326542, 33.383377, 36.417755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481339, 33.218216, 36.497505>,  <37.739330, 32.942947, 36.630424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481339, 33.218216, 36.497505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666151, -0.293213, 0.685761,
		0.374488, 0.663662, 0.647543,
		-0.644982, 0.688171, -0.332295,
		37.287846, 33.424667, 36.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413933, 33.115196, 37.246544>,  <37.739330, 32.942947, 36.630424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413933, 33.115196, 37.246544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171478, 33.233887, 36.951366>,  <37.026005, 33.305099, 36.774261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171478, 33.233887, 36.951366>,  <37.413933, 33.115196, 37.246544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171478, 33.233887, 36.951366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791900, -0.138648, 0.594703,
		0.074150, 0.944844, 0.319016,
		-0.606132, 0.296726, -0.737941,
		36.989639, 33.322903, 36.729984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974697, 33.666977, 37.515842>,  <37.413933, 33.115196, 37.246544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974697, 33.666977, 37.515842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783634, 33.500576, 37.206318>,  <36.668995, 33.400734, 37.020603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783634, 33.500576, 37.206318>,  <36.974697, 33.666977, 37.515842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783634, 33.500576, 37.206318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840726, -0.039197, 0.540040,
		-0.254991, 0.908516, -0.331024,
		-0.477660, -0.416006, -0.773809,
		36.640335, 33.375774, 36.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256306, 33.947014, 37.471962>,  <36.974697, 33.666977, 37.515842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256306, 33.947014, 37.471962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218327, 33.618969, 37.246258>,  <36.195541, 33.422142, 37.110836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218327, 33.618969, 37.246258>,  <36.256306, 33.947014, 37.471962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218327, 33.618969, 37.246258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962547, -0.068966, 0.262196,
		-0.253946, 0.568025, -0.782853,
		-0.094943, -0.820116, -0.564265,
		36.189842, 33.372932, 37.076977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535057, 33.903027, 37.142918>,  <36.256306, 33.947014, 37.471962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535057, 33.903027, 37.142918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661663, 33.524139, 37.122532>,  <35.737625, 33.296806, 37.110302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661663, 33.524139, 37.122532>,  <35.535057, 33.903027, 37.142918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661663, 33.524139, 37.122532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799244, -0.295233, 0.523494,
		-0.510908, -0.124964, -0.850504,
		0.316515, -0.947218, -0.050961,
		35.756618, 33.239975, 37.107243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945633, 33.551128, 36.994518>,  <35.535057, 33.903027, 37.142918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945633, 33.551128, 36.994518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207550, 33.289356, 37.145763>,  <35.364700, 33.132294, 37.236511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207550, 33.289356, 37.145763>,  <34.945633, 33.551128, 36.994518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207550, 33.289356, 37.145763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683705, -0.299624, 0.665411,
		-0.322186, -0.694211, -0.643636,
		0.654785, -0.654444, 0.378101,
		35.403988, 33.093025, 37.259197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578289, 32.907368, 37.024872>,  <34.945633, 33.551128, 36.994518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578289, 32.907368, 37.024872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876968, 32.873878, 37.288822>,  <35.056175, 32.853783, 37.447193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876968, 32.873878, 37.288822>,  <34.578289, 32.907368, 37.024872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876968, 32.873878, 37.288822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658637, -0.231701, 0.715900,
		0.092953, -0.969177, -0.228156,
		0.746698, -0.083726, 0.659873,
		35.100979, 32.848759, 37.486786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691162, 32.159531, 36.665493>,  <34.578289, 32.907368, 37.024872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691162, 32.159531, 36.665493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489384, 31.904297, 36.432812>,  <34.368317, 31.751156, 36.293205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489384, 31.904297, 36.432812>,  <34.691162, 32.159531, 36.665493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489384, 31.904297, 36.432812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242492, 0.541891, -0.804706,
		0.828691, -0.546991, -0.118625,
		-0.504449, -0.638087, -0.581701,
		34.338047, 31.712872, 36.258301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048485, 32.049511, 35.985767>,  <34.691162, 32.159531, 36.665493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048485, 32.049511, 35.985767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714302, 31.868773, 35.860645>,  <34.513794, 31.760330, 35.785572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714302, 31.868773, 35.860645>,  <35.048485, 32.049511, 35.985767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714302, 31.868773, 35.860645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177474, 0.316874, -0.931715,
		0.520111, -0.833923, -0.184545,
		-0.835457, -0.451843, -0.312810,
		34.463665, 31.733219, 35.766804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198608, 31.718687, 35.368732>,  <35.048485, 32.049511, 35.985767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198608, 31.718687, 35.368732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807716, 31.803349, 35.374790>,  <34.573181, 31.854145, 35.378426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807716, 31.803349, 35.374790>,  <35.198608, 31.718687, 35.368732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807716, 31.803349, 35.374790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073336, 0.403862, -0.911876,
		-0.199118, -0.890000, -0.410187,
		-0.977228, 0.211652, 0.015147,
		34.514549, 31.866844, 35.379333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033913, 31.722120, 34.682377>,  <35.198608, 31.718687, 35.368732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033913, 31.722120, 34.682377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711380, 31.897926, 34.840694>,  <34.517860, 32.003410, 34.935684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711380, 31.897926, 34.840694>,  <35.033913, 31.722120, 34.682377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711380, 31.897926, 34.840694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185486, 0.447517, -0.874828,
		-0.561628, -0.778815, -0.279322,
		-0.806331, 0.439517, 0.395797,
		34.469482, 32.029781, 34.959435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514603, 31.534786, 34.184616>,  <35.033913, 31.722120, 34.682377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514603, 31.534786, 34.184616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382015, 31.861933, 34.372753>,  <34.302464, 32.058220, 34.485638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382015, 31.861933, 34.372753>,  <34.514603, 31.534786, 34.184616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382015, 31.861933, 34.372753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188643, 0.431009, -0.882409,
		-0.924414, -0.381220, 0.011419,
		-0.331470, 0.817865, 0.470345,
		34.282574, 32.107292, 34.513855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909580, 31.839184, 33.869202>,  <34.514603, 31.534786, 34.184616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909580, 31.839184, 33.869202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073162, 32.147942, 34.063904>,  <34.171310, 32.333195, 34.180725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073162, 32.147942, 34.063904>,  <33.909580, 31.839184, 33.869202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073162, 32.147942, 34.063904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019025, 0.526071, -0.850228,
		-0.912355, 0.356968, 0.200455,
		0.408958, 0.771896, 0.486755,
		34.195850, 32.379509, 34.209930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561821, 32.455959, 33.556221>,  <33.909580, 31.839184, 33.869202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561821, 32.455959, 33.556221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881321, 32.592361, 33.754498>,  <34.073021, 32.674202, 33.873463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881321, 32.592361, 33.754498>,  <33.561821, 32.455959, 33.556221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881321, 32.592361, 33.754498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170010, 0.662374, -0.729628,
		-0.577138, 0.667066, 0.471099,
		0.798754, 0.341004, 0.495689,
		34.120949, 32.694664, 33.903206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296227, 33.105865, 33.702950>,  <33.561821, 32.455959, 33.556221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296227, 33.105865, 33.702950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693985, 33.066803, 33.719170>,  <33.932640, 33.043365, 33.728901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693985, 33.066803, 33.719170>,  <33.296227, 33.105865, 33.702950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693985, 33.066803, 33.719170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105735, 0.918040, -0.382129,
		0.000092, 0.384274, 0.923219,
		0.994394, -0.097652, 0.040546,
		33.992302, 33.037506, 33.731335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485924, 33.750454, 33.960464>,  <33.296227, 33.105865, 33.702950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485924, 33.750454, 33.960464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805218, 33.595573, 33.775902>,  <33.996796, 33.502647, 33.665165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805218, 33.595573, 33.775902>,  <33.485924, 33.750454, 33.960464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805218, 33.595573, 33.775902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174109, 0.881639, -0.438633,
		0.576630, 0.269799, 0.771172,
		0.798238, -0.387197, -0.461405,
		34.044689, 33.479416, 33.637482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863506, 34.308250, 33.995899>,  <33.485924, 33.750454, 33.960464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863506, 34.308250, 33.995899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054367, 34.082222, 33.726673>,  <34.168884, 33.946606, 33.565136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054367, 34.082222, 33.726673>,  <33.863506, 34.308250, 33.995899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054367, 34.082222, 33.726673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, 0.794485, -0.599850,
		0.873702, 0.222460, 0.432617,
		0.477150, -0.565071, -0.673069,
		34.197514, 33.912701, 33.524754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579559, 34.608238, 33.862450>,  <33.863506, 34.308250, 33.995899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579559, 34.608238, 33.862450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433823, 34.407120, 33.548901>,  <34.346382, 34.286449, 33.360771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433823, 34.407120, 33.548901>,  <34.579559, 34.608238, 33.862450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433823, 34.407120, 33.548901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342250, 0.710531, -0.614825,
		0.866095, -0.492286, -0.086794,
		-0.364340, -0.502792, -0.783873,
		34.324520, 34.256283, 33.313740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090420, 34.636707, 33.432373>,  <34.579559, 34.608238, 33.862450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090420, 34.636707, 33.432373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754097, 34.583435, 33.222492>,  <34.552303, 34.551472, 33.096565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754097, 34.583435, 33.222492>,  <35.090420, 34.636707, 33.432373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754097, 34.583435, 33.222492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238764, 0.778655, -0.580248,
		0.485841, -0.613154, -0.622897,
		-0.840803, -0.133182, -0.524702,
		34.501858, 34.543480, 33.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.708855, 29.716480, 39.282585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325729, 29.734901, 39.169113>,  <33.095856, 29.745955, 39.101028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325729, 29.734901, 39.169113>,  <33.708855, 29.716480, 39.282585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325729, 29.734901, 39.169113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287394, 0.156411, -0.944955,
		0.000851, -0.986618, -0.163048,
		-0.957812, 0.046055, -0.283682,
		33.038387, 29.748718, 39.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757084, 29.433348, 38.726398>,  <33.708855, 29.716480, 39.282585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757084, 29.433348, 38.726398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410408, 29.631451, 38.702507>,  <33.202404, 29.750313, 38.688171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410408, 29.631451, 38.702507>,  <33.757084, 29.433348, 38.726398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410408, 29.631451, 38.702507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188911, 0.215034, -0.958161,
		-0.461695, -0.841711, -0.279928,
		-0.866689, 0.495260, -0.059728,
		33.150402, 29.780029, 38.684589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508083, 29.224855, 38.093590>,  <33.757084, 29.433348, 38.726398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508083, 29.224855, 38.093590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353336, 29.590580, 38.141544>,  <33.260490, 29.810015, 38.170319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353336, 29.590580, 38.141544>,  <33.508083, 29.224855, 38.093590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353336, 29.590580, 38.141544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232855, 0.222656, -0.946680,
		-0.892253, -0.338320, -0.299039,
		-0.386863, 0.914311, 0.119886,
		33.237278, 29.864874, 38.177509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561794, 29.487888, 37.485111>,  <33.508083, 29.224855, 38.093590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561794, 29.487888, 37.485111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431137, 29.814657, 37.675243>,  <33.352741, 30.010717, 37.789322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431137, 29.814657, 37.675243>,  <33.561794, 29.487888, 37.485111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431137, 29.814657, 37.675243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303287, 0.566922, -0.765909,
		-0.895164, -0.106020, -0.432944,
		-0.326647, 0.816921, 0.475334,
		33.333141, 30.059734, 37.817844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074833, 29.856371, 37.041679>,  <33.561794, 29.487888, 37.485111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074833, 29.856371, 37.041679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.203564, 30.125317, 37.308319>,  <33.280804, 30.286684, 37.468304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.203564, 30.125317, 37.308319>,  <33.074833, 29.856371, 37.041679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203564, 30.125317, 37.308319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199146, 0.640236, -0.741916,
		-0.925618, 0.371518, 0.072146,
		0.321826, 0.672363, 0.666600,
		33.300110, 30.327026, 37.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770161, 30.460636, 36.817745>,  <33.074833, 29.856371, 37.041679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770161, 30.460636, 36.817745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088623, 30.538857, 37.046795>,  <33.279701, 30.585789, 37.184223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088623, 30.538857, 37.046795>,  <32.770161, 30.460636, 36.817745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088623, 30.538857, 37.046795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345324, 0.630260, -0.695359,
		-0.496881, 0.751354, 0.434255,
		0.796154, 0.195551, 0.572625,
		33.327469, 30.597523, 37.218582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802685, 31.237263, 36.751976>,  <32.770161, 30.460636, 36.817745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802685, 31.237263, 36.751976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155842, 31.138941, 36.912018>,  <33.367737, 31.079948, 37.008045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155842, 31.138941, 36.912018>,  <32.802685, 31.237263, 36.751976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155842, 31.138941, 36.912018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467606, 0.538285, -0.701138,
		-0.043029, 0.806120, 0.590185,
		0.882889, -0.245805, 0.400109,
		33.420708, 31.065199, 37.032051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190796, 31.864038, 36.967724>,  <32.802685, 31.237263, 36.751976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190796, 31.864038, 36.967724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462212, 31.581326, 36.887684>,  <33.625061, 31.411697, 36.839661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.462212, 31.581326, 36.887684>,  <33.190796, 31.864038, 36.967724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462212, 31.581326, 36.887684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516106, 0.652557, -0.554801,
		0.522700, 0.273183, 0.807562,
		0.678543, -0.706781, -0.200100,
		33.665775, 31.369291, 36.827652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981976, 32.193676, 36.976276>,  <33.190796, 31.864038, 36.967724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981976, 32.193676, 36.976276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.978294, 31.859028, 36.757195>,  <33.976086, 31.658237, 36.625748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.978294, 31.859028, 36.757195>,  <33.981976, 32.193676, 36.976276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978294, 31.859028, 36.757195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508333, 0.467756, -0.723050,
		0.861111, -0.285070, 0.420978,
		-0.009205, -0.836624, -0.547701,
		33.975533, 31.608040, 36.592884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478928, 31.988619, 37.623592>,  <33.981976, 32.193676, 36.976276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478928, 31.988619, 37.623592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734909, 32.252785, 37.780724>,  <34.888496, 32.411285, 37.875004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.734909, 32.252785, 37.780724>,  <34.478928, 31.988619, 37.623592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734909, 32.252785, 37.780724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421272, -0.126016, 0.898137,
		0.642645, -0.740252, 0.197570,
		0.639950, 0.660414, 0.392831,
		34.926895, 32.450909, 37.898575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905800, 31.703503, 38.318913>,  <34.478928, 31.988619, 37.623592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905800, 31.703503, 38.318913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937111, 32.098488, 38.373741>,  <34.955898, 32.335480, 38.406639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937111, 32.098488, 38.373741>,  <34.905800, 31.703503, 38.318913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937111, 32.098488, 38.373741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261281, -0.112365, 0.958700,
		0.962084, -0.110856, 0.249210,
		0.078275, 0.987464, 0.137069,
		34.960594, 32.394726, 38.414864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342136, 31.759035, 38.899040>,  <34.905800, 31.703503, 38.318913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342136, 31.759035, 38.899040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121258, 32.091404, 38.871769>,  <34.988731, 32.290825, 38.855408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121258, 32.091404, 38.871769>,  <35.342136, 31.759035, 38.899040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121258, 32.091404, 38.871769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040774, 0.054759, 0.997667,
		0.832716, 0.553688, 0.003642,
		-0.552197, 0.830922, -0.068174,
		34.955597, 32.340679, 38.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632153, 32.165527, 39.412590>,  <35.342136, 31.759035, 38.899040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632153, 32.165527, 39.412590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287884, 32.349735, 39.325729>,  <35.081322, 32.460262, 39.273613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.287884, 32.349735, 39.325729>,  <35.632153, 32.165527, 39.412590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287884, 32.349735, 39.325729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216855, 0.054324, 0.974691,
		0.460664, 0.885984, 0.053112,
		-0.860676, 0.460522, -0.217155,
		35.029682, 32.487892, 39.260582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596359, 32.745861, 39.927933>,  <35.632153, 32.165527, 39.412590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596359, 32.745861, 39.927933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229771, 32.673847, 39.785007>,  <35.009819, 32.630638, 39.699253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229771, 32.673847, 39.785007>,  <35.596359, 32.745861, 39.927933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229771, 32.673847, 39.785007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353143, -0.055824, 0.933902,
		-0.188083, 0.982074, -0.012418,
		-0.916469, -0.180037, -0.357312,
		34.954830, 32.619835, 39.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210556, 33.087559, 40.425781>,  <35.596359, 32.745861, 39.927933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210556, 33.087559, 40.425781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931465, 32.872540, 40.236374>,  <34.764011, 32.743530, 40.122730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931465, 32.872540, 40.236374>,  <35.210556, 33.087559, 40.425781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931465, 32.872540, 40.236374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416509, -0.233387, 0.878664,
		-0.582836, 0.810293, -0.061052,
		-0.697727, -0.537546, -0.473521,
		34.722149, 32.711277, 40.094318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570560, 33.419609, 40.607880>,  <35.210556, 33.087559, 40.425781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570560, 33.419609, 40.607880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.497299, 33.038685, 40.510254>,  <34.453342, 32.810131, 40.451679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.497299, 33.038685, 40.510254>,  <34.570560, 33.419609, 40.607880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497299, 33.038685, 40.510254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399107, -0.154857, 0.903733,
		-0.898426, 0.262927, -0.351710,
		-0.183151, -0.952307, -0.244064,
		34.442352, 32.752995, 40.437035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007351, 33.226250, 40.994717>,  <34.570560, 33.419609, 40.607880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007351, 33.226250, 40.994717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171848, 32.875828, 40.893993>,  <34.270546, 32.665577, 40.833557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171848, 32.875828, 40.893993>,  <34.007351, 33.226250, 40.994717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171848, 32.875828, 40.893993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264064, -0.378907, 0.886961,
		-0.872437, -0.298265, -0.387159,
		0.411246, -0.876052, -0.251812,
		34.295223, 32.613010, 40.818451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715023, 32.861713, 41.483017>,  <34.007351, 33.226250, 40.994717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715023, 32.861713, 41.483017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992954, 32.605400, 41.352409>,  <34.159714, 32.451614, 41.274044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.992954, 32.605400, 41.352409>,  <33.715023, 32.861713, 41.483017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992954, 32.605400, 41.352409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130918, -0.559129, 0.818679,
		-0.707159, -0.526094, -0.472388,
		0.694828, -0.640781, -0.326518,
		34.201405, 32.413166, 41.254456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475662, 32.201893, 41.767147>,  <33.715023, 32.861713, 41.483017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475662, 32.201893, 41.767147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850964, 32.140842, 41.642960>,  <34.076145, 32.104214, 41.568447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.850964, 32.140842, 41.642960>,  <33.475662, 32.201893, 41.767147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850964, 32.140842, 41.642960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096964, -0.745441, 0.659482,
		-0.332087, -0.648864, -0.684612,
		0.938252, -0.152623, -0.310468,
		34.132439, 32.095055, 41.549820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535923, 31.517813, 41.695679>,  <33.475662, 32.201893, 41.767147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535923, 31.517813, 41.695679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907631, 31.636080, 41.784256>,  <34.130657, 31.707041, 41.837402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907631, 31.636080, 41.784256>,  <33.535923, 31.517813, 41.695679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907631, 31.636080, 41.784256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011935, -0.575118, 0.817984,
		0.369205, -0.762772, -0.530911,
		0.929271, 0.295667, 0.221440,
		34.186413, 31.724779, 41.850689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904510, 30.972969, 41.892239>,  <33.535923, 31.517813, 41.695679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904510, 30.972969, 41.892239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103489, 31.283476, 42.047138>,  <34.222874, 31.469780, 42.140079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.103489, 31.283476, 42.047138>,  <33.904510, 30.972969, 41.892239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103489, 31.283476, 42.047138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070345, -0.481023, 0.873881,
		0.864640, -0.407465, -0.293888,
		0.497443, 0.776266, 0.387249,
		34.252724, 31.516356, 42.163311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393078, 30.656372, 42.346695>,  <33.904510, 30.972969, 41.892239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393078, 30.656372, 42.346695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378750, 31.038578, 42.463799>,  <34.370152, 31.267902, 42.534061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378750, 31.038578, 42.463799>,  <34.393078, 30.656372, 42.346695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378750, 31.038578, 42.463799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111818, -0.287270, 0.951300,
		0.993083, 0.066814, -0.096553,
		-0.035823, 0.955516, 0.292754,
		34.368004, 31.325233, 42.551624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123436, 30.863440, 42.817787>,  <34.393078, 30.656372, 42.346695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123436, 30.863440, 42.817787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806767, 31.094267, 42.898033>,  <34.616764, 31.232763, 42.946182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806767, 31.094267, 42.898033>,  <35.123436, 30.863440, 42.817787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806767, 31.094267, 42.898033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040086, -0.278602, 0.959570,
		0.609630, 0.767706, 0.197429,
		-0.791672, 0.577069, 0.200618,
		34.569263, 31.267387, 42.958218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.422798, 35.647007, 42.372990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.639528, 35.339024, 42.238174>,  <28.769566, 35.154236, 42.157284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.639528, 35.339024, 42.238174>,  <28.422798, 35.647007, 42.372990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639528, 35.339024, 42.238174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436545, 0.600472, -0.669971,
		0.718231, 0.215873, 0.661470,
		0.541823, -0.769956, -0.337039,
		28.802074, 35.108036, 42.137062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969738, 35.886627, 42.398472>,  <28.422798, 35.647007, 42.372990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969738, 35.886627, 42.398472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.030605, 35.572742, 42.158115>,  <29.067125, 35.384411, 42.013901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.030605, 35.572742, 42.158115>,  <28.969738, 35.886627, 42.398472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030605, 35.572742, 42.158115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625390, 0.547228, -0.556264,
		0.765332, -0.291146, 0.574022,
		0.152167, -0.784714, -0.600890,
		29.076256, 35.337330, 41.977848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723345, 35.835331, 42.346207>,  <28.969738, 35.886627, 42.398472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723345, 35.835331, 42.346207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.565451, 35.652447, 42.027424>,  <29.470715, 35.542717, 41.836155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.565451, 35.652447, 42.027424>,  <29.723345, 35.835331, 42.346207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565451, 35.652447, 42.027424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689820, 0.425474, -0.585764,
		0.606903, -0.780980, 0.147443,
		-0.394736, -0.457211, -0.796957,
		29.447029, 35.515282, 41.788338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263851, 35.695942, 41.904469>,  <29.723345, 35.835331, 42.346207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263851, 35.695942, 41.904469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946024, 35.662758, 41.663876>,  <29.755327, 35.642845, 41.519520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946024, 35.662758, 41.663876>,  <30.263851, 35.695942, 41.904469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946024, 35.662758, 41.663876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533563, 0.377380, -0.756898,
		0.289784, -0.922335, -0.255586,
		-0.794566, -0.082965, -0.601482,
		29.707653, 35.637867, 41.483433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577991, 35.481083, 41.226582>,  <30.263851, 35.695942, 41.904469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577991, 35.481083, 41.226582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209326, 35.618095, 41.153687>,  <29.988127, 35.700302, 41.109947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.209326, 35.618095, 41.153687>,  <30.577991, 35.481083, 41.226582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209326, 35.618095, 41.153687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318497, 0.399683, -0.859542,
		-0.221578, -0.850252, -0.477467,
		-0.921663, 0.342527, -0.182242,
		29.932827, 35.720852, 41.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332190, 35.078659, 40.658520>,  <30.577991, 35.481083, 41.226582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332190, 35.078659, 40.658520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162045, 35.440014, 40.680241>,  <30.059958, 35.656826, 40.693272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162045, 35.440014, 40.680241>,  <30.332190, 35.078659, 40.658520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162045, 35.440014, 40.680241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354366, 0.221464, -0.908504,
		-0.832761, -0.367202, -0.414334,
		-0.425364, 0.903392, 0.054303,
		30.034435, 35.711033, 40.696533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155663, 35.201092, 39.985592>,  <30.332190, 35.078659, 40.658520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155663, 35.201092, 39.985592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138927, 35.574226, 40.128735>,  <30.128887, 35.798107, 40.214622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138927, 35.574226, 40.128735>,  <30.155663, 35.201092, 39.985592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138927, 35.574226, 40.128735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488264, 0.331579, -0.807251,
		-0.871693, 0.140958, -0.469342,
		-0.041835, 0.932838, 0.357860,
		30.126377, 35.854076, 40.236092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034306, 35.579330, 39.454594>,  <30.155663, 35.201092, 39.985592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034306, 35.579330, 39.454594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193823, 35.843006, 39.709602>,  <30.289534, 36.001213, 39.862606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.193823, 35.843006, 39.709602>,  <30.034306, 35.579330, 39.454594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193823, 35.843006, 39.709602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548382, 0.385777, -0.741925,
		-0.735011, 0.645480, -0.207643,
		0.398794, 0.659190, 0.637520,
		30.313461, 36.040764, 39.900860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184368, 36.089603, 39.004234>,  <30.034306, 35.579330, 39.454594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184368, 36.089603, 39.004234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387173, 36.213123, 39.326126>,  <30.508856, 36.287235, 39.519260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387173, 36.213123, 39.326126>,  <30.184368, 36.089603, 39.004234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387173, 36.213123, 39.326126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686302, 0.420208, -0.593645,
		-0.521469, 0.853269, 0.001121,
		0.507010, 0.308798, 0.804726,
		30.539276, 36.305763, 39.567543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248022, 36.801151, 39.005692>,  <30.184368, 36.089603, 39.004234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248022, 36.801151, 39.005692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555191, 36.653652, 39.215195>,  <30.739492, 36.565155, 39.340897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555191, 36.653652, 39.215195>,  <30.248022, 36.801151, 39.005692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555191, 36.653652, 39.215195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638023, 0.512757, -0.574462,
		-0.056730, 0.775311, 0.629027,
		0.767925, -0.368745, 0.523755,
		30.785568, 36.543030, 39.372322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686182, 37.382671, 39.137650>,  <30.248022, 36.801151, 39.005692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686182, 37.382671, 39.137650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909252, 37.051281, 39.158142>,  <31.043095, 36.852448, 39.170437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909252, 37.051281, 39.158142>,  <30.686182, 37.382671, 39.137650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909252, 37.051281, 39.158142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713506, 0.446918, -0.539605,
		0.424154, 0.337479, 0.840358,
		0.557676, -0.828476, 0.051232,
		31.076555, 36.802738, 39.173512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484507, 37.583195, 39.222710>,  <30.686182, 37.382671, 39.137650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484507, 37.583195, 39.222710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516043, 37.200195, 39.111732>,  <31.534966, 36.970394, 39.045147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516043, 37.200195, 39.111732>,  <31.484507, 37.583195, 39.222710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516043, 37.200195, 39.111732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756515, 0.238715, -0.608851,
		0.649206, -0.161890, 0.743184,
		0.078842, -0.957500, -0.277448,
		31.539696, 36.912945, 39.028500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181347, 37.424080, 39.217430>,  <31.484507, 37.583195, 39.222710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181347, 37.424080, 39.217430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002560, 37.181927, 38.953999>,  <31.895287, 37.036633, 38.795940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002560, 37.181927, 38.953999>,  <32.181347, 37.424080, 39.217430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002560, 37.181927, 38.953999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755939, 0.138029, -0.639925,
		0.478305, -0.783872, 0.395940,
		-0.446968, -0.605386, -0.658580,
		31.868469, 37.000313, 38.756424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718716, 36.801441, 39.162411>,  <32.181347, 37.424080, 39.217430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718716, 36.801441, 39.162411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509647, 36.963188, 38.862194>,  <32.384209, 37.060234, 38.682064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509647, 36.963188, 38.862194>,  <32.718716, 36.801441, 39.162411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509647, 36.963188, 38.862194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851220, 0.198610, -0.485776,
		-0.047366, -0.892773, -0.448010,
		-0.522667, 0.404365, -0.750539,
		32.352848, 37.084496, 38.637032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421513, 36.489346, 39.058167>,  <32.718716, 36.801441, 39.162411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421513, 36.489346, 39.058167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595444, 36.758080, 39.298023>,  <33.699802, 36.919319, 39.441936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595444, 36.758080, 39.298023>,  <33.421513, 36.489346, 39.058167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595444, 36.758080, 39.298023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668548, -0.205270, 0.714779,
		0.603299, -0.711692, 0.359895,
		0.434827, 0.671832, 0.599639,
		33.725891, 36.959629, 39.477917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559448, 36.164825, 39.680317>,  <33.421513, 36.489346, 39.058167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559448, 36.164825, 39.680317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551575, 36.544609, 39.805622>,  <33.546852, 36.772480, 39.880806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551575, 36.544609, 39.805622>,  <33.559448, 36.164825, 39.680317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551575, 36.544609, 39.805622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399859, -0.294648, 0.867926,
		0.916366, -0.108179, 0.385450,
		-0.019680, 0.949463, 0.313262,
		33.545670, 36.829449, 39.899601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862152, 36.116585, 40.331219>,  <33.559448, 36.164825, 39.680317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862152, 36.116585, 40.331219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663101, 36.463345, 40.319553>,  <33.543671, 36.671402, 40.312553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663101, 36.463345, 40.319553>,  <33.862152, 36.116585, 40.331219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663101, 36.463345, 40.319553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355113, -0.172943, 0.918687,
		0.791370, 0.467514, 0.393910,
		-0.497623, 0.866903, -0.029159,
		33.513813, 36.723415, 40.310806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983765, 36.528065, 40.980736>,  <33.862152, 36.116585, 40.331219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983765, 36.528065, 40.980736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639992, 36.664688, 40.828568>,  <33.433727, 36.746662, 40.737267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639992, 36.664688, 40.828568>,  <33.983765, 36.528065, 40.980736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639992, 36.664688, 40.828568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410127, -0.016329, 0.911882,
		0.305252, 0.939717, 0.154117,
		-0.859428, 0.341562, -0.380419,
		33.382164, 36.767159, 40.714443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823692, 36.885067, 41.553581>,  <33.983765, 36.528065, 40.980736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823692, 36.885067, 41.553581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489357, 36.871078, 41.334435>,  <33.288757, 36.862686, 41.202946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489357, 36.871078, 41.334435>,  <33.823692, 36.885067, 41.553581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489357, 36.871078, 41.334435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538645, -0.140500, 0.830735,
		-0.106028, 0.989463, 0.098597,
		-0.835835, -0.034972, -0.547866,
		33.238605, 36.860588, 41.170074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390457, 37.233601, 41.932442>,  <33.823692, 36.885067, 41.553581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390457, 37.233601, 41.932442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169823, 37.016144, 41.679394>,  <33.037441, 36.885670, 41.527565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169823, 37.016144, 41.679394>,  <33.390457, 37.233601, 41.932442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169823, 37.016144, 41.679394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552306, -0.330308, 0.765412,
		-0.625072, 0.771586, -0.118067,
		-0.551582, -0.543647, -0.632618,
		33.004349, 36.853050, 41.489609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650303, 37.309361, 42.137539>,  <33.390457, 37.233601, 41.932442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650303, 37.309361, 42.137539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.665756, 36.988560, 41.899113>,  <32.675026, 36.796078, 41.756058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.665756, 36.988560, 41.899113>,  <32.650303, 37.309361, 42.137539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665756, 36.988560, 41.899113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650703, -0.472894, 0.594102,
		-0.758349, 0.364912, -0.540135,
		0.038632, -0.802004, -0.596068,
		32.677345, 36.747959, 41.720291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001209, 37.099583, 42.086380>,  <32.650303, 37.309361, 42.137539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001209, 37.099583, 42.086380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224655, 36.778446, 42.003059>,  <32.358723, 36.585766, 41.953068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224655, 36.778446, 42.003059>,  <32.001209, 37.099583, 42.086380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224655, 36.778446, 42.003059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616948, -0.570056, 0.542596,
		-0.554361, -0.174596, -0.813757,
		0.558623, -0.802840, -0.208300,
		32.392242, 36.537594, 41.940567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455906, 36.597500, 42.044491>,  <32.001209, 37.099583, 42.086380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455906, 36.597500, 42.044491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793064, 36.383808, 42.070183>,  <31.995359, 36.255592, 42.085598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793064, 36.383808, 42.070183>,  <31.455906, 36.597500, 42.044491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793064, 36.383808, 42.070183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457825, -0.649345, 0.607246,
		-0.282701, -0.541251, -0.791914,
		0.842897, -0.534227, 0.064228,
		32.045933, 36.223541, 42.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278585, 35.992058, 41.967670>,  <31.455906, 36.597500, 42.044491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278585, 35.992058, 41.967670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631763, 35.910294, 42.136723>,  <31.843670, 35.861233, 42.238155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.631763, 35.910294, 42.136723>,  <31.278585, 35.992058, 41.967670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631763, 35.910294, 42.136723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422521, -0.738412, 0.525569,
		0.204645, -0.642622, -0.738348,
		0.882947, -0.204413, 0.422634,
		31.896648, 35.848969, 42.263512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498709, 35.175739, 41.904881>,  <31.278585, 35.992058, 41.967670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498709, 35.175739, 41.904881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638020, 35.353642, 42.234947>,  <31.721607, 35.460381, 42.432987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638020, 35.353642, 42.234947>,  <31.498709, 35.175739, 41.904881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638020, 35.353642, 42.234947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373807, -0.741365, 0.557357,
		0.859634, -0.502568, -0.091950,
		0.348278, 0.444752, 0.825166,
		31.742502, 35.487068, 42.482498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767046, 34.672646, 42.290508>,  <31.498709, 35.175739, 41.904881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767046, 34.672646, 42.290508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788643, 34.941166, 42.586193>,  <31.801601, 35.102280, 42.763603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788643, 34.941166, 42.586193>,  <31.767046, 34.672646, 42.290508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788643, 34.941166, 42.586193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132852, -0.728885, 0.671622,
		0.989664, -0.134469, 0.049829,
		0.053993, 0.671301, 0.739216,
		31.804840, 35.142555, 42.807957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193630, 34.307144, 42.839661>,  <31.767046, 34.672646, 42.290508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193630, 34.307144, 42.839661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.983526, 34.603073, 43.007835>,  <31.857464, 34.780628, 43.108742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.983526, 34.603073, 43.007835>,  <32.193630, 34.307144, 42.839661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983526, 34.603073, 43.007835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212839, -0.592604, 0.776866,
		0.823893, 0.318573, 0.468735,
		-0.525262, 0.739819, 0.420437,
		31.825947, 34.825020, 43.133965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393078, 34.307983, 43.591759>,  <32.193630, 34.307144, 42.839661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393078, 34.307983, 43.591759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.040245, 34.494026, 43.561817>,  <31.828545, 34.605652, 43.543854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.040245, 34.494026, 43.561817>,  <32.393078, 34.307983, 43.591759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040245, 34.494026, 43.561817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317209, -0.468935, 0.824305,
		0.348285, 0.750852, 0.561176,
		-0.882086, 0.465104, -0.074854,
		31.775620, 34.633556, 43.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982769, 34.398624, 44.032879>,  <32.393078, 34.307983, 43.591759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982769, 34.398624, 44.032879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247658, 34.110455, 44.115299>,  <33.406590, 33.937553, 44.164753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247658, 34.110455, 44.115299>,  <32.982769, 34.398624, 44.032879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247658, 34.110455, 44.115299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600679, 0.346013, -0.720736,
		0.447937, 0.601057, 0.661878,
		0.662222, -0.720420, 0.206050,
		33.446323, 33.894329, 44.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656338, 34.771942, 44.229084>,  <32.982769, 34.398624, 44.032879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656338, 34.771942, 44.229084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761810, 34.405163, 44.109303>,  <33.825092, 34.185093, 44.037434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761810, 34.405163, 44.109303>,  <33.656338, 34.771942, 44.229084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761810, 34.405163, 44.109303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608860, 0.398997, -0.685631,
		0.748172, -0.001538, 0.663503,
		0.263682, -0.916951, -0.299455,
		33.840916, 34.130077, 44.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429798, 34.769379, 44.192757>,  <33.656338, 34.771942, 44.229084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429798, 34.769379, 44.192757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309837, 34.473251, 43.952095>,  <34.237862, 34.295574, 43.807697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309837, 34.473251, 43.952095>,  <34.429798, 34.769379, 44.192757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309837, 34.473251, 43.952095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656377, 0.297535, -0.693283,
		0.692264, -0.602829, 0.396697,
		-0.299900, -0.740318, -0.601656,
		34.219868, 34.251156, 43.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046635, 34.628056, 43.877052>,  <34.429798, 34.769379, 44.192757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046635, 34.628056, 43.877052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784443, 34.430370, 43.648632>,  <34.627129, 34.311760, 43.511581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784443, 34.430370, 43.648632>,  <35.046635, 34.628056, 43.877052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784443, 34.430370, 43.648632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544769, 0.214261, -0.810752,
		0.523038, -0.842523, 0.128788,
		-0.655483, -0.494214, -0.571047,
		34.587799, 34.282104, 43.477318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308716, 34.047371, 43.590832>,  <35.046635, 34.628056, 43.877052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308716, 34.047371, 43.590832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017414, 34.156364, 43.339310>,  <34.842632, 34.221760, 43.188396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017414, 34.156364, 43.339310>,  <35.308716, 34.047371, 43.590832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017414, 34.156364, 43.339310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661758, 0.041162, -0.748587,
		-0.178093, -0.961280, -0.210293,
		-0.728258, 0.272481, -0.628804,
		34.798935, 34.238110, 43.150669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543476, 33.615543, 43.065617>,  <35.308716, 34.047371, 43.590832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543476, 33.615543, 43.065617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288826, 33.890190, 42.925175>,  <35.136036, 34.054977, 42.840912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288826, 33.890190, 42.925175>,  <35.543476, 33.615543, 43.065617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288826, 33.890190, 42.925175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442395, -0.047755, -0.895548,
		-0.631662, -0.725452, -0.273353,
		-0.636623, 0.686614, -0.351101,
		35.097839, 34.096176, 42.819843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144367, 33.435410, 42.557739>,  <35.543476, 33.615543, 43.065617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144367, 33.435410, 42.557739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121353, 33.830418, 42.499088>,  <35.107544, 34.067421, 42.463898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121353, 33.830418, 42.499088>,  <35.144367, 33.435410, 42.557739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121353, 33.830418, 42.499088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338808, -0.118843, -0.933320,
		-0.939094, -0.103380, -0.327741,
		-0.057537, 0.987516, -0.146631,
		35.104092, 34.126671, 42.455097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893211, 33.526466, 41.873455>,  <35.144367, 33.435410, 42.557739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893211, 33.526466, 41.873455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036842, 33.888573, 41.964283>,  <35.123020, 34.105835, 42.018780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036842, 33.888573, 41.964283>,  <34.893211, 33.526466, 41.873455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036842, 33.888573, 41.964283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309650, 0.113957, -0.943997,
		-0.880441, 0.409284, -0.239395,
		0.359082, 0.905263, 0.227067,
		35.144566, 34.160152, 42.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898499, 33.959038, 41.204861>,  <34.893211, 33.526466, 41.873455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898499, 33.959038, 41.204861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153610, 34.168110, 41.431152>,  <35.306675, 34.293552, 41.566925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153610, 34.168110, 41.431152>,  <34.898499, 33.959038, 41.204861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153610, 34.168110, 41.431152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539879, 0.220493, -0.812351,
		-0.549338, 0.823522, -0.141559,
		0.637776, 0.522680, 0.565727,
		35.344944, 34.324913, 41.600872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017887, 34.554386, 40.859566>,  <34.898499, 33.959038, 41.204861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017887, 34.554386, 40.859566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326248, 34.546238, 41.114216>,  <35.511265, 34.541348, 41.267006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326248, 34.546238, 41.114216>,  <35.017887, 34.554386, 40.859566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326248, 34.546238, 41.114216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607030, 0.326226, -0.724632,
		-0.192920, 0.945072, 0.263857,
		0.770906, -0.020373, 0.636623,
		35.557522, 34.540127, 41.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280037, 35.122410, 40.711464>,  <35.017887, 34.554386, 40.859566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280037, 35.122410, 40.711464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594173, 34.950344, 40.889542>,  <35.782654, 34.847103, 40.996387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594173, 34.950344, 40.889542>,  <35.280037, 35.122410, 40.711464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594173, 34.950344, 40.889542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605597, 0.384629, -0.696645,
		0.128436, 0.816712, 0.562570,
		0.785339, -0.430165, 0.445198,
		35.829777, 34.821293, 41.023102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836842, 35.643101, 40.903118>,  <35.280037, 35.122410, 40.711464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836842, 35.643101, 40.903118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994480, 35.279354, 40.849834>,  <36.089066, 35.061108, 40.817863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994480, 35.279354, 40.849834>,  <35.836842, 35.643101, 40.903118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994480, 35.279354, 40.849834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660617, 0.381050, -0.646828,
		0.638961, 0.166915, 0.750912,
		0.394100, -0.909363, -0.133209,
		36.112709, 35.006546, 40.809872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539108, 35.823299, 40.810791>,  <35.836842, 35.643101, 40.903118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539108, 35.823299, 40.810791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489063, 35.457039, 40.657986>,  <36.459034, 35.237282, 40.566303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489063, 35.457039, 40.657986>,  <36.539108, 35.823299, 40.810791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489063, 35.457039, 40.657986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749631, 0.164980, -0.640964,
		0.649923, -0.366560, 0.665758,
		-0.125115, -0.915650, -0.382009,
		36.451530, 35.182343, 40.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159119, 35.521801, 40.752724>,  <36.539108, 35.823299, 40.810791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159119, 35.521801, 40.752724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943169, 35.303226, 40.496616>,  <36.813599, 35.172081, 40.342953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.943169, 35.303226, 40.496616>,  <37.159119, 35.521801, 40.752724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943169, 35.303226, 40.496616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692405, 0.144247, -0.706943,
		0.478656, -0.824984, 0.300481,
		-0.539874, -0.546437, -0.640268,
		36.781208, 35.139294, 40.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.388651, 27.348610, 36.640373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396105, 27.610628, 36.942516>,  <27.400578, 27.767839, 37.123802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.396105, 27.610628, 36.942516>,  <27.388651, 27.348610, 36.640373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396105, 27.610628, 36.942516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323413, 0.718825, -0.615382,
		-0.946074, -0.232828, 0.225243,
		0.018633, 0.655043, 0.755362,
		27.401695, 27.807140, 37.169125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717684, 27.742611, 36.795597>,  <27.388651, 27.348610, 36.640373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717684, 27.742611, 36.795597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.018467, 27.975281, 36.919666>,  <27.198936, 28.114883, 36.994110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.018467, 27.975281, 36.919666>,  <26.717684, 27.742611, 36.795597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018467, 27.975281, 36.919666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413626, 0.782707, -0.465063,
		-0.513294, 0.221411, 0.829160,
		0.751959, 0.581676, 0.310177,
		27.244055, 28.149784, 37.012718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431969, 28.278042, 37.122471>,  <26.717684, 27.742611, 36.795597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431969, 28.278042, 37.122471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789820, 28.433010, 37.033432>,  <27.004530, 28.525990, 36.980007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.789820, 28.433010, 37.033432>,  <26.431969, 28.278042, 37.122471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789820, 28.433010, 37.033432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446721, 0.785655, -0.428002,
		0.009068, 0.482341, 0.875937,
		0.894627, 0.387418, -0.222596,
		27.058208, 28.549236, 36.966652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363646, 28.977737, 37.250816>,  <26.431969, 28.278042, 37.122471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363646, 28.977737, 37.250816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686985, 28.941357, 37.018162>,  <26.880989, 28.919527, 36.878571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686985, 28.941357, 37.018162>,  <26.363646, 28.977737, 37.250816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686985, 28.941357, 37.018162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278796, 0.811033, -0.514294,
		0.518502, 0.577886, 0.630241,
		0.808349, -0.090954, -0.581635,
		26.929489, 28.914070, 36.843670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592068, 29.605202, 37.243725>,  <26.363646, 28.977737, 37.250816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592068, 29.605202, 37.243725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747997, 29.441856, 36.913567>,  <26.841555, 29.343849, 36.715473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747997, 29.441856, 36.913567>,  <26.592068, 29.605202, 37.243725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747997, 29.441856, 36.913567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167337, 0.849967, -0.499554,
		0.905559, 0.332857, 0.263001,
		0.389822, -0.408365, -0.825395,
		26.864944, 29.319347, 36.665947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848871, 30.141455, 36.941536>,  <26.592068, 29.605202, 37.243725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848871, 30.141455, 36.941536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820368, 29.871635, 36.647621>,  <26.803267, 29.709743, 36.471272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820368, 29.871635, 36.647621>,  <26.848871, 30.141455, 36.941536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820368, 29.871635, 36.647621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169559, 0.734128, -0.657499,
		0.982940, 0.077736, -0.166688,
		-0.071259, -0.674546, -0.734785,
		26.798990, 29.669271, 36.427185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222088, 30.468237, 36.434059>,  <26.848871, 30.141455, 36.941536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222088, 30.468237, 36.434059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993576, 30.206739, 36.235561>,  <26.856468, 30.049841, 36.116463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993576, 30.206739, 36.235561>,  <27.222088, 30.468237, 36.434059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993576, 30.206739, 36.235561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119880, 0.664593, -0.737526,
		0.811954, -0.361844, -0.458039,
		-0.571280, -0.653746, -0.496241,
		26.822191, 30.010616, 36.086689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300335, 30.576662, 35.715527>,  <27.222088, 30.468237, 36.434059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300335, 30.576662, 35.715527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974857, 30.345133, 35.694111>,  <26.779572, 30.206215, 35.681259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974857, 30.345133, 35.694111>,  <27.300335, 30.576662, 35.715527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974857, 30.345133, 35.694111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396629, 0.620177, -0.676806,
		0.424955, -0.529477, -0.734212,
		-0.813694, -0.578822, -0.053541,
		26.730749, 30.171486, 35.678047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147741, 30.609926, 35.012104>,  <27.300335, 30.576662, 35.715527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147741, 30.609926, 35.012104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820139, 30.465265, 35.190289>,  <26.623577, 30.378468, 35.297199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820139, 30.465265, 35.190289>,  <27.147741, 30.609926, 35.012104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820139, 30.465265, 35.190289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573049, 0.554915, -0.603062,
		-0.029095, -0.749183, -0.661723,
		-0.819004, -0.361653, 0.445464,
		26.574438, 30.356770, 35.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811642, 30.161118, 34.544235>,  <27.147741, 30.609926, 35.012104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811642, 30.161118, 34.544235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539410, 30.280567, 34.811859>,  <26.376070, 30.352238, 34.972431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539410, 30.280567, 34.811859>,  <26.811642, 30.161118, 34.544235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539410, 30.280567, 34.811859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500292, 0.477730, -0.722137,
		-0.535275, -0.826195, -0.175733,
		-0.680579, 0.298624, 0.669056,
		26.335236, 30.370155, 35.012577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008268, 30.088568, 34.263794>,  <26.811642, 30.161118, 34.544235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008268, 30.088568, 34.263794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031202, 30.372129, 34.544983>,  <26.044964, 30.542267, 34.713696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031202, 30.372129, 34.544983>,  <26.008268, 30.088568, 34.263794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031202, 30.372129, 34.544983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418416, 0.656369, -0.627780,
		-0.906444, -0.258140, 0.334249,
		0.057336, 0.708903, 0.702972,
		26.048403, 30.584801, 34.755875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295898, 30.274244, 34.307438>,  <26.008268, 30.088568, 34.263794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295898, 30.274244, 34.307438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544609, 30.560192, 34.435413>,  <25.693836, 30.731760, 34.512199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.544609, 30.560192, 34.435413>,  <25.295898, 30.274244, 34.307438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544609, 30.560192, 34.435413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361184, 0.624194, -0.692769,
		-0.694939, 0.315192, 0.646308,
		0.621777, 0.714868, 0.319934,
		25.731142, 30.774652, 34.531395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870481, 30.810459, 34.148746>,  <25.295898, 30.274244, 34.307438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870481, 30.810459, 34.148746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216854, 30.987579, 34.241776>,  <25.424677, 31.093851, 34.297592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216854, 30.987579, 34.241776>,  <24.870481, 30.810459, 34.148746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216854, 30.987579, 34.241776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390180, 0.888970, -0.239776,
		-0.312926, 0.116883, 0.942558,
		0.865931, 0.442799, 0.232576,
		25.476633, 31.120419, 34.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589401, 31.337259, 34.342251>,  <24.870481, 30.810459, 34.148746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589401, 31.337259, 34.342251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963858, 31.441006, 34.247288>,  <25.188532, 31.503254, 34.190308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963858, 31.441006, 34.247288>,  <24.589401, 31.337259, 34.342251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963858, 31.441006, 34.247288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298530, 0.943027, -0.146902,
		0.185784, 0.208396, 0.960237,
		0.936143, 0.259368, -0.237412,
		25.244701, 31.518816, 34.176064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798193, 31.900517, 34.799618>,  <24.589401, 31.337259, 34.342251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798193, 31.900517, 34.799618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.015615, 31.919163, 34.464386>,  <25.146069, 31.930349, 34.263248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.015615, 31.919163, 34.464386>,  <24.798193, 31.900517, 34.799618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015615, 31.919163, 34.464386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005756, 0.998640, 0.051811,
		0.839354, -0.023338, 0.543083,
		0.543554, 0.046614, -0.838079,
		25.178682, 31.933147, 34.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320974, 32.407471, 34.861958>,  <24.798193, 31.900517, 34.799618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320974, 32.407471, 34.861958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.326141, 32.370224, 34.463730>,  <25.329241, 32.347878, 34.224792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.326141, 32.370224, 34.463730>,  <25.320974, 32.407471, 34.861958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326141, 32.370224, 34.463730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081029, 0.992477, -0.091777,
		0.996628, -0.079485, 0.020364,
		0.012915, -0.093118, -0.995571,
		25.330015, 32.342289, 34.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771675, 32.924000, 34.637444>,  <25.320974, 32.407471, 34.861958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771675, 32.924000, 34.637444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545835, 32.835133, 34.319485>,  <25.410332, 32.781811, 34.128708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545835, 32.835133, 34.319485>,  <25.771675, 32.924000, 34.637444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545835, 32.835133, 34.319485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000793, 0.962945, -0.269697,
		0.825364, -0.152901, -0.543503,
		-0.564601, -0.222167, -0.794901,
		25.376455, 32.768482, 34.081013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950741, 33.351025, 34.233852>,  <25.771675, 32.924000, 34.637444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950741, 33.351025, 34.233852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610582, 33.243671, 34.052834>,  <25.406487, 33.179260, 33.944221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610582, 33.243671, 34.052834>,  <25.950741, 33.351025, 34.233852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610582, 33.243671, 34.052834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086660, 0.919818, -0.382655,
		0.518955, -0.286192, -0.805469,
		-0.850398, -0.268382, -0.452543,
		25.355463, 33.163158, 33.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039768, 33.582253, 33.592316>,  <25.950741, 33.351025, 34.233852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039768, 33.582253, 33.592316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642944, 33.552589, 33.632938>,  <25.404850, 33.534790, 33.657310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642944, 33.552589, 33.632938>,  <26.039768, 33.582253, 33.592316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642944, 33.552589, 33.632938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107823, 0.917248, -0.383446,
		-0.064717, -0.391352, -0.917962,
		-0.992061, -0.074162, 0.101558,
		25.345325, 33.530342, 33.663406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845207, 33.866959, 33.003368>,  <26.039768, 33.582253, 33.592316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845207, 33.866959, 33.003368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521404, 33.887394, 33.237320>,  <25.327122, 33.899654, 33.377693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521404, 33.887394, 33.237320>,  <25.845207, 33.866959, 33.003368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521404, 33.887394, 33.237320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139645, 0.950861, -0.276337,
		-0.570261, -0.305373, -0.762594,
		-0.809507, 0.051092, 0.584883,
		25.278553, 33.902721, 33.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385063, 34.417217, 32.983376>,  <25.845207, 33.866959, 33.003368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385063, 34.417217, 32.983376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775681, 34.370346, 32.911118>,  <27.010052, 34.342224, 32.867764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775681, 34.370346, 32.911118>,  <26.385063, 34.417217, 32.983376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775681, 34.370346, 32.911118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114612, -0.993106, 0.024589,
		-0.182281, -0.003308, -0.983241,
		0.976544, -0.117174, -0.180645,
		27.068644, 34.335194, 32.856926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453609, 33.793068, 32.509319>,  <26.385063, 34.417217, 32.983376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453609, 33.793068, 32.509319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818348, 33.862473, 32.658146>,  <27.037191, 33.904114, 32.747440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818348, 33.862473, 32.658146>,  <26.453609, 33.793068, 32.509319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818348, 33.862473, 32.658146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202124, -0.978583, -0.039008,
		0.357330, 0.110773, -0.927386,
		0.911845, 0.173508, 0.372067,
		27.091902, 33.914524, 32.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881641, 33.328728, 32.089172>,  <26.453609, 33.793068, 32.509319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881641, 33.328728, 32.089172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085348, 33.407955, 32.424175>,  <27.207573, 33.455494, 32.625175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085348, 33.407955, 32.424175>,  <26.881641, 33.328728, 32.089172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085348, 33.407955, 32.424175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247057, -0.965841, 0.078193,
		0.824384, 0.167090, -0.540806,
		0.509268, 0.198071, 0.837505,
		27.238129, 33.467377, 32.675426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563805, 32.934219, 32.037640>,  <26.881641, 33.328728, 32.089172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563805, 32.934219, 32.037640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533922, 33.046722, 32.420326>,  <27.515993, 33.114223, 32.649940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533922, 33.046722, 32.420326>,  <27.563805, 32.934219, 32.037640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533922, 33.046722, 32.420326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323077, -0.900828, 0.290051,
		0.943419, 0.330763, -0.023570,
		-0.074706, 0.281255, 0.956721,
		27.511511, 33.131100, 32.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173054, 32.744110, 32.370632>,  <27.563805, 32.934219, 32.037640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173054, 32.744110, 32.370632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917185, 32.788578, 32.674858>,  <27.763664, 32.815258, 32.857395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917185, 32.788578, 32.674858>,  <28.173054, 32.744110, 32.370632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917185, 32.788578, 32.674858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423469, -0.774809, 0.469408,
		0.641479, 0.622343, 0.448545,
		-0.639670, 0.111171, 0.760568,
		27.725285, 32.821930, 32.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608135, 32.745766, 32.934162>,  <28.173054, 32.744110, 32.370632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608135, 32.745766, 32.934162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248066, 32.639252, 33.072021>,  <28.032024, 32.575344, 33.154736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248066, 32.639252, 33.072021>,  <28.608135, 32.745766, 32.934162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248066, 32.639252, 33.072021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410722, -0.782292, 0.468323,
		0.144909, 0.563126, 0.813567,
		-0.900171, -0.266286, 0.344649,
		27.978014, 32.559364, 33.175415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668074, 32.525173, 33.737919>,  <28.608135, 32.745766, 32.934162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668074, 32.525173, 33.737919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317780, 32.382824, 33.607418>,  <28.107603, 32.297413, 33.529118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317780, 32.382824, 33.607418>,  <28.668074, 32.525173, 33.737919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317780, 32.382824, 33.607418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250399, -0.912565, 0.323304,
		-0.412782, 0.201436, 0.888276,
		-0.875735, -0.355878, -0.326251,
		28.055059, 32.276062, 33.509544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222700, 32.263611, 34.288174>,  <28.668074, 32.525173, 33.737919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222700, 32.263611, 34.288174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079227, 32.076015, 33.965336>,  <27.993143, 31.963459, 33.771633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079227, 32.076015, 33.965336>,  <28.222700, 32.263611, 34.288174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079227, 32.076015, 33.965336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044341, -0.872208, 0.487121,
		-0.932406, 0.138934, 0.333641,
		-0.358682, -0.468989, -0.807091,
		27.971622, 31.935318, 33.723209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756958, 31.793102, 34.508526>,  <28.222700, 32.263611, 34.288174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756958, 31.793102, 34.508526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859463, 31.651264, 34.148838>,  <27.920965, 31.566162, 33.933025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859463, 31.651264, 34.148838>,  <27.756958, 31.793102, 34.508526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859463, 31.651264, 34.148838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169729, -0.899321, 0.403005,
		-0.951590, -0.255898, -0.170275,
		0.256260, -0.354595, -0.899218,
		27.936340, 31.544886, 33.879074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442093, 31.119856, 34.514946>,  <27.756958, 31.793102, 34.508526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442093, 31.119856, 34.514946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726980, 31.136503, 34.234657>,  <27.897913, 31.146492, 34.066483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726980, 31.136503, 34.234657>,  <27.442093, 31.119856, 34.514946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726980, 31.136503, 34.234657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317887, -0.909138, 0.269103,
		-0.625853, -0.414411, -0.660736,
		0.712220, 0.041620, -0.700722,
		27.940645, 31.148989, 34.024441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334583, 30.578842, 34.026512>,  <27.442093, 31.119856, 34.514946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334583, 30.578842, 34.026512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722265, 30.657513, 33.967239>,  <27.954874, 30.704716, 33.931675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722265, 30.657513, 33.967239>,  <27.334583, 30.578842, 34.026512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722265, 30.657513, 33.967239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188720, -0.979803, -0.066111,
		-0.158195, 0.036109, -0.986748,
		0.969205, 0.196678, -0.148185,
		28.013027, 30.716516, 33.922783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623869, 30.091042, 33.560978>,  <27.334583, 30.578842, 34.026512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623869, 30.091042, 33.560978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972443, 30.239361, 33.689419>,  <28.181587, 30.328352, 33.766483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972443, 30.239361, 33.689419>,  <27.623869, 30.091042, 33.560978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972443, 30.239361, 33.689419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377258, -0.925044, 0.044376,
		0.313491, 0.082469, -0.946003,
		0.871435, 0.370798, 0.321105,
		28.233873, 30.350601, 33.785751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203323, 29.669189, 33.134640>,  <27.623869, 30.091042, 33.560978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203323, 29.669189, 33.134640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353914, 29.813713, 33.475864>,  <28.444269, 29.900427, 33.680599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353914, 29.813713, 33.475864>,  <28.203323, 29.669189, 33.134640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353914, 29.813713, 33.475864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413243, -0.889625, 0.194417,
		0.829152, 0.279329, -0.484233,
		0.376480, 0.361307, 0.853065,
		28.466858, 29.922106, 33.731785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919460, 29.401049, 33.258469>,  <28.203323, 29.669189, 33.134640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919460, 29.401049, 33.258469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820782, 29.519915, 33.627430>,  <28.761574, 29.591234, 33.848808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820782, 29.519915, 33.627430>,  <28.919460, 29.401049, 33.258469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820782, 29.519915, 33.627430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480922, -0.788809, 0.382745,
		0.841341, 0.538028, 0.051684,
		-0.246697, 0.297163, 0.922407,
		28.746773, 29.609064, 33.904152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453527, 29.131945, 33.613163>,  <28.919460, 29.401049, 33.258469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453527, 29.131945, 33.613163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155663, 29.215843, 33.866615>,  <28.976944, 29.266182, 34.018684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155663, 29.215843, 33.866615>,  <29.453527, 29.131945, 33.613163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155663, 29.215843, 33.866615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166769, -0.860756, 0.480923,
		0.646270, 0.463795, 0.605994,
		-0.744663, 0.209746, 0.633628,
		28.932264, 29.278767, 34.056702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734123, 29.120575, 34.237026>,  <29.453527, 29.131945, 33.613163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734123, 29.120575, 34.237026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346581, 29.041229, 34.296314>,  <29.114056, 28.993622, 34.331886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346581, 29.041229, 34.296314>,  <29.734123, 29.120575, 34.237026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346581, 29.041229, 34.296314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246843, -0.821159, 0.514554,
		0.019641, 0.535116, 0.844550,
		-0.968856, -0.198365, 0.148218,
		29.055923, 28.981720, 34.340778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717625, 28.910891, 34.972668>,  <29.734123, 29.120575, 34.237026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717625, 28.910891, 34.972668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392794, 28.750267, 34.803303>,  <29.197895, 28.653893, 34.701683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392794, 28.750267, 34.803303>,  <29.717625, 28.910891, 34.972668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392794, 28.750267, 34.803303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168271, -0.855903, 0.488994,
		-0.558759, 0.325854, 0.762632,
		-0.812079, -0.401559, -0.423411,
		29.149170, 28.629799, 34.676281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355276, 28.462425, 35.475658>,  <29.717625, 28.910891, 34.972668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355276, 28.462425, 35.475658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158253, 28.358044, 35.143566>,  <29.040039, 28.295414, 34.944309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158253, 28.358044, 35.143566>,  <29.355276, 28.462425, 35.475658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158253, 28.358044, 35.143566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251302, -0.870699, 0.422765,
		-0.833206, 0.416876, 0.363292,
		-0.492559, -0.260955, -0.830234,
		29.010485, 28.279757, 34.894497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782677, 28.122934, 35.629322>,  <29.355276, 28.462425, 35.475658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782677, 28.122934, 35.629322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823576, 27.993202, 35.253162>,  <28.848116, 27.915363, 35.027466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823576, 27.993202, 35.253162>,  <28.782677, 28.122934, 35.629322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823576, 27.993202, 35.253162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269118, -0.919123, 0.287730,
		-0.957664, 0.223660, -0.181260,
		0.102246, -0.324329, -0.940402,
		28.854250, 27.895903, 34.971043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145340, 27.702614, 35.412632>,  <28.782677, 28.122934, 35.629322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145340, 27.702614, 35.412632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426668, 27.588434, 35.152214>,  <28.595465, 27.519926, 34.995964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426668, 27.588434, 35.152214>,  <28.145340, 27.702614, 35.412632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426668, 27.588434, 35.152214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144229, -0.954090, 0.262509,
		-0.696089, -0.090728, -0.712200,
		0.703319, -0.285449, -0.651046,
		28.637665, 27.502800, 34.956902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828966, 27.135288, 35.005226>,  <28.145340, 27.702614, 35.412632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828966, 27.135288, 35.005226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224934, 27.094555, 34.965851>,  <28.462515, 27.070114, 34.942226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224934, 27.094555, 34.965851>,  <27.828966, 27.135288, 35.005226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224934, 27.094555, 34.965851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068074, -0.951559, 0.299837,
		-0.124199, -0.290113, -0.948899,
		0.989919, -0.101835, -0.098434,
		28.521910, 27.064005, 34.936321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850279, 26.553385, 34.521519>,  <27.828966, 27.135288, 35.005226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850279, 26.553385, 34.521519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183928, 26.580702, 34.740456>,  <28.384117, 26.597092, 34.871819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183928, 26.580702, 34.740456>,  <27.850279, 26.553385, 34.521519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183928, 26.580702, 34.740456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100366, -0.956949, 0.272352,
		0.542374, -0.282109, -0.791357,
		0.834121, 0.068292, 0.547338,
		28.434164, 26.601189, 34.904655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.287491, 31.161163, 43.520061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892601, 31.185863, 43.461319>,  <34.655666, 31.200684, 43.426075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892601, 31.185863, 43.461319>,  <35.287491, 31.161163, 43.520061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892601, 31.185863, 43.461319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156708, -0.210428, 0.964968,
		0.028684, 0.975657, 0.217417,
		-0.987228, 0.061750, -0.146858,
		34.596432, 31.204388, 43.417263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067650, 31.393723, 44.102654>,  <35.287491, 31.161163, 43.520061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067650, 31.393723, 44.102654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729515, 31.246599, 43.947670>,  <34.526634, 31.158325, 43.854679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729515, 31.246599, 43.947670>,  <35.067650, 31.393723, 44.102654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729515, 31.246599, 43.947670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216462, -0.427239, 0.877845,
		-0.488412, 0.825945, 0.281545,
		-0.845339, -0.367806, -0.387455,
		34.475914, 31.136257, 43.831432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515495, 31.491480, 44.608231>,  <35.067650, 31.393723, 44.102654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515495, 31.491480, 44.608231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380768, 31.213095, 44.354557>,  <34.299931, 31.046062, 44.202354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380768, 31.213095, 44.354557>,  <34.515495, 31.491480, 44.608231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380768, 31.213095, 44.354557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269821, -0.573946, 0.773164,
		-0.902080, 0.431533, 0.005531,
		-0.336820, -0.695964, -0.634182,
		34.279720, 31.004305, 44.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863453, 31.339020, 44.801178>,  <34.515495, 31.491480, 44.608231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863453, 31.339020, 44.801178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965942, 31.017370, 44.586613>,  <34.027435, 30.824381, 44.457874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965942, 31.017370, 44.586613>,  <33.863453, 31.339020, 44.801178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965942, 31.017370, 44.586613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384025, -0.593944, 0.706933,
		-0.887058, 0.024858, -0.460989,
		0.256228, -0.804122, -0.536409,
		34.042812, 30.776134, 44.425690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201756, 30.909245, 44.802071>,  <33.863453, 31.339020, 44.801178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201756, 30.909245, 44.802071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527897, 30.692547, 44.720379>,  <33.723583, 30.562529, 44.671364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527897, 30.692547, 44.720379>,  <33.201756, 30.909245, 44.802071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527897, 30.692547, 44.720379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384481, -0.770399, 0.508586,
		-0.432862, -0.336156, -0.836439,
		0.815356, -0.541743, -0.204230,
		33.772503, 30.530024, 44.659111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028103, 30.323048, 44.423889>,  <33.201756, 30.909245, 44.802071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028103, 30.323048, 44.423889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359009, 30.258791, 44.639229>,  <33.557552, 30.220238, 44.768433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359009, 30.258791, 44.639229>,  <33.028103, 30.323048, 44.423889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359009, 30.258791, 44.639229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478747, -0.703018, 0.525896,
		0.293991, -0.692791, -0.658490,
		0.827267, -0.160641, 0.538353,
		33.607189, 30.210598, 44.800735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138969, 29.575495, 44.494648>,  <33.028103, 30.323048, 44.423889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138969, 29.575495, 44.494648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375977, 29.731630, 44.776516>,  <33.518181, 29.825312, 44.945637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.375977, 29.731630, 44.776516>,  <33.138969, 29.575495, 44.494648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375977, 29.731630, 44.776516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296670, -0.707541, 0.641384,
		0.748936, -0.589087, -0.303432,
		0.592521, 0.390337, 0.704667,
		33.553734, 29.848732, 44.987915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380466, 29.009048, 44.736458>,  <33.138969, 29.575495, 44.494648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380466, 29.009048, 44.736458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426338, 29.290192, 45.017269>,  <33.453861, 29.458878, 45.185757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426338, 29.290192, 45.017269>,  <33.380466, 29.009048, 44.736458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426338, 29.290192, 45.017269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375296, -0.623662, 0.685710,
		0.919783, -0.342105, 0.192258,
		0.114681, 0.702858, 0.702025,
		33.460743, 29.501049, 45.227875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492821, 28.682547, 45.356785>,  <33.380466, 29.009048, 44.736458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492821, 28.682547, 45.356785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435604, 29.038267, 45.530537>,  <33.401276, 29.251699, 45.634789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435604, 29.038267, 45.530537>,  <33.492821, 28.682547, 45.356785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435604, 29.038267, 45.530537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337380, -0.456418, 0.823321,
		0.930438, -0.028781, 0.365319,
		-0.143042, 0.889300, 0.434378,
		33.392693, 29.305058, 45.660851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723404, 28.660219, 46.020672>,  <33.492821, 28.682547, 45.356785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723404, 28.660219, 46.020672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482128, 28.979025, 46.032848>,  <33.337360, 29.170307, 46.040154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482128, 28.979025, 46.032848>,  <33.723404, 28.660219, 46.020672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482128, 28.979025, 46.032848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460800, -0.379382, 0.802330,
		0.651015, 0.469936, 0.596104,
		-0.603194, 0.797013, 0.030437,
		33.301170, 29.218128, 46.041981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681702, 28.901993, 46.779873>,  <33.723404, 28.660219, 46.020672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681702, 28.901993, 46.779873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371368, 29.073853, 46.595058>,  <33.185169, 29.176968, 46.484169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371368, 29.073853, 46.595058>,  <33.681702, 28.901993, 46.779873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371368, 29.073853, 46.595058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626776, -0.440885, 0.642474,
		0.072331, 0.788050, 0.611348,
		-0.775835, 0.429649, -0.462041,
		33.138618, 29.202747, 46.456448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273792, 29.136631, 47.284260>,  <33.681702, 28.901993, 46.779873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273792, 29.136631, 47.284260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035931, 29.083790, 46.967037>,  <32.893215, 29.052086, 46.776703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035931, 29.083790, 46.967037>,  <33.273792, 29.136631, 47.284260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035931, 29.083790, 46.967037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584898, -0.605697, 0.539468,
		-0.551616, 0.784653, 0.282914,
		-0.594655, -0.132103, -0.793054,
		32.857533, 29.044159, 46.729122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561283, 29.124128, 47.507561>,  <33.273792, 29.136631, 47.284260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561283, 29.124128, 47.507561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564304, 28.914896, 47.166660>,  <32.566116, 28.789356, 46.962120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564304, 28.914896, 47.166660>,  <32.561283, 29.124128, 47.507561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564304, 28.914896, 47.166660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775171, -0.541464, 0.325462,
		-0.631706, 0.658183, -0.409565,
		0.007551, -0.523079, -0.852251,
		32.566570, 28.757973, 46.910984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973576, 29.162884, 47.106400>,  <32.561283, 29.124128, 47.507561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973576, 29.162884, 47.106400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128460, 28.798603, 47.048862>,  <32.221390, 28.580034, 47.014339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128460, 28.798603, 47.048862>,  <31.973576, 29.162884, 47.106400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128460, 28.798603, 47.048862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879515, -0.411656, 0.238732,
		-0.276626, 0.034071, -0.960373,
		0.387210, -0.910702, -0.143841,
		32.244621, 28.525393, 47.005711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656046, 29.809088, 47.515224>,  <31.973576, 29.162884, 47.106400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656046, 29.809088, 47.515224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449034, 30.097792, 47.699059>,  <31.324825, 30.271015, 47.809361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449034, 30.097792, 47.699059>,  <31.656046, 29.809088, 47.515224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449034, 30.097792, 47.699059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377530, 0.674614, -0.634324,
		-0.767874, -0.154776, -0.621622,
		-0.517533, 0.721762, 0.459586,
		31.293774, 30.314320, 47.836933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212749, 30.208509, 47.053268>,  <31.656046, 29.809088, 47.515224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212749, 30.208509, 47.053268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342836, 30.428810, 47.360752>,  <31.420889, 30.560991, 47.545242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342836, 30.428810, 47.360752>,  <31.212749, 30.208509, 47.053268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342836, 30.428810, 47.360752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397242, 0.658126, -0.639586,
		-0.858157, 0.513365, -0.004748,
		0.325216, 0.550751, 0.768705,
		31.440401, 30.594036, 47.591362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205349, 30.931240, 46.852036>,  <31.212749, 30.208509, 47.053268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205349, 30.931240, 46.852036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434988, 30.967413, 47.177547>,  <31.572771, 30.989117, 47.372856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434988, 30.967413, 47.177547>,  <31.205349, 30.931240, 46.852036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434988, 30.967413, 47.177547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570993, 0.668115, -0.477063,
		-0.586838, 0.738543, 0.331927,
		0.574097, 0.090431, 0.813778,
		31.607218, 30.994543, 47.421680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131096, 31.579607, 47.042988>,  <31.205349, 30.931240, 46.852036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131096, 31.579607, 47.042988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473164, 31.440689, 47.196911>,  <31.678404, 31.357338, 47.289265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473164, 31.440689, 47.196911>,  <31.131096, 31.579607, 47.042988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473164, 31.440689, 47.196911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488673, 0.787744, -0.375045,
		-0.172876, 0.508770, 0.843367,
		0.855168, -0.347295, 0.384804,
		31.729713, 31.336500, 47.312351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367514, 32.165554, 47.287693>,  <31.131096, 31.579607, 47.042988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367514, 32.165554, 47.287693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678074, 31.913725, 47.276108>,  <31.864410, 31.762627, 47.269157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678074, 31.913725, 47.276108>,  <31.367514, 32.165554, 47.287693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678074, 31.913725, 47.276108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564763, 0.715401, -0.411392,
		0.279725, 0.303045, 0.910998,
		0.776399, -0.629575, -0.028967,
		31.910994, 31.724852, 47.267418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838196, 32.475571, 47.718792>,  <31.367514, 32.165554, 47.287693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838196, 32.475571, 47.718792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008068, 32.255535, 47.431168>,  <32.109993, 32.123512, 47.258595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008068, 32.255535, 47.431168>,  <31.838196, 32.475571, 47.718792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008068, 32.255535, 47.431168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382440, 0.828898, -0.408249,
		0.820601, -0.101622, 0.562393,
		0.424680, -0.550091, -0.719060,
		32.135471, 32.090508, 47.215450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522682, 32.795376, 47.648422>,  <31.838196, 32.475571, 47.718792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522682, 32.795376, 47.648422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474682, 32.549374, 47.336689>,  <32.445881, 32.401772, 47.149647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474682, 32.549374, 47.336689>,  <32.522682, 32.795376, 47.648422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474682, 32.549374, 47.336689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489259, 0.646423, -0.585459,
		0.863843, -0.451555, 0.223324,
		-0.120005, -0.615008, -0.779336,
		32.438679, 32.364872, 47.102890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116119, 32.773640, 47.300961>,  <32.522682, 32.795376, 47.648422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116119, 32.773640, 47.300961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868904, 32.656349, 47.009197>,  <32.720573, 32.585976, 46.834137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868904, 32.656349, 47.009197>,  <33.116119, 32.773640, 47.300961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868904, 32.656349, 47.009197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591594, 0.437560, -0.677169,
		0.517728, -0.850034, -0.096957,
		-0.618041, -0.293230, -0.729411,
		32.683491, 32.568382, 46.790375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550529, 32.722759, 46.630783>,  <33.116119, 32.773640, 47.300961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550529, 32.722759, 46.630783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176689, 32.733673, 46.488930>,  <32.952385, 32.740223, 46.403816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176689, 32.733673, 46.488930>,  <33.550529, 32.722759, 46.630783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176689, 32.733673, 46.488930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336361, 0.391981, -0.856278,
		0.115645, -0.919568, -0.375526,
		-0.934606, 0.027288, -0.354638,
		32.896309, 32.741859, 46.382538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509457, 32.387016, 45.942879>,  <33.550529, 32.722759, 46.630783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509457, 32.387016, 45.942879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176468, 32.608482, 45.951366>,  <32.976677, 32.741364, 45.956459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176468, 32.608482, 45.951366>,  <33.509457, 32.387016, 45.942879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176468, 32.608482, 45.951366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156161, 0.271206, -0.949769,
		-0.531609, -0.787339, -0.312232,
		-0.832469, 0.553664, 0.021224,
		32.926727, 32.774582, 45.957733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306061, 32.312477, 45.271667>,  <33.509457, 32.387016, 45.942879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306061, 32.312477, 45.271667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135067, 32.638355, 45.428398>,  <33.032471, 32.833881, 45.522434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135067, 32.638355, 45.428398>,  <33.306061, 32.312477, 45.271667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135067, 32.638355, 45.428398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228869, 0.516831, -0.824927,
		-0.874573, -0.262966, -0.407396,
		-0.427482, 0.814699, 0.391822,
		33.006821, 32.882767, 45.545944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779991, 32.534904, 44.785522>,  <33.306061, 32.312477, 45.271667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779991, 32.534904, 44.785522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905590, 32.855408, 44.989246>,  <32.980949, 33.047710, 45.111481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905590, 32.855408, 44.989246>,  <32.779991, 32.534904, 44.785522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905590, 32.855408, 44.989246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274308, 0.437004, -0.856611,
		-0.908934, 0.408680, -0.082573,
		0.313995, 0.801254, 0.509312,
		32.999790, 33.095783, 45.142040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574768, 33.097843, 44.438572>,  <32.779991, 32.534904, 44.785522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574768, 33.097843, 44.438572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895561, 33.213993, 44.647381>,  <33.088036, 33.283684, 44.772667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895561, 33.213993, 44.647381>,  <32.574768, 33.097843, 44.438572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895561, 33.213993, 44.647381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408546, 0.370915, -0.833974,
		-0.435794, 0.882101, 0.178833,
		0.801981, 0.290379, 0.522021,
		33.136154, 33.301105, 44.803986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608898, 33.744343, 44.149883>,  <32.574768, 33.097843, 44.438572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608898, 33.744343, 44.149883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963821, 33.665539, 44.316669>,  <33.176777, 33.618256, 44.416740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963821, 33.665539, 44.316669>,  <32.608898, 33.744343, 44.149883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963821, 33.665539, 44.316669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461165, 0.382536, -0.800620,
		-0.001774, 0.902692, 0.430284,
		0.887313, -0.197012, 0.416969,
		33.230015, 33.606434, 44.441761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203819, 34.389648, 44.377926>,  <32.608898, 33.744343, 44.149883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203819, 34.389648, 44.377926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862091, 34.454639, 44.180443>,  <31.657055, 34.493633, 44.061954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862091, 34.454639, 44.180443>,  <32.203819, 34.389648, 44.377926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862091, 34.454639, 44.180443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502665, -0.016728, 0.864319,
		0.132173, 0.986571, 0.095962,
		-0.854317, 0.162477, -0.493704,
		31.605797, 34.503384, 44.032333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926308, 34.757683, 44.798668>,  <32.203819, 34.389648, 44.377926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926308, 34.757683, 44.798668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623135, 34.634663, 44.568554>,  <31.441231, 34.560848, 44.430485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623135, 34.634663, 44.568554>,  <31.926308, 34.757683, 44.798668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623135, 34.634663, 44.568554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572158, -0.110170, 0.812710,
		-0.313331, 0.945131, -0.092468,
		-0.757931, -0.307553, -0.575284,
		31.395756, 34.542397, 44.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458078, 35.142857, 44.985168>,  <31.926308, 34.757683, 44.798668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458078, 35.142857, 44.985168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262239, 34.836353, 44.818729>,  <31.144735, 34.652451, 44.718864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262239, 34.836353, 44.818729>,  <31.458078, 35.142857, 44.985168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262239, 34.836353, 44.818729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532457, -0.115163, 0.838586,
		-0.690495, 0.632125, -0.351617,
		-0.489597, -0.766261, -0.416099,
		31.115360, 34.606476, 44.693901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702749, 35.263378, 44.993954>,  <31.458078, 35.142857, 44.985168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702749, 35.263378, 44.993954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762348, 34.869751, 44.955162>,  <30.798107, 34.633575, 44.931885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.762348, 34.869751, 44.955162>,  <30.702749, 35.263378, 44.993954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762348, 34.869751, 44.955162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513150, -0.160784, 0.843105,
		-0.845267, -0.075853, -0.528932,
		0.148996, -0.984071, -0.096981,
		30.807047, 34.574532, 44.926067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141508, 35.021275, 45.227840>,  <30.702749, 35.263378, 44.993954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141508, 35.021275, 45.227840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344168, 34.676937, 45.246799>,  <30.465763, 34.470333, 45.258175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344168, 34.676937, 45.246799>,  <30.141508, 35.021275, 45.227840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344168, 34.676937, 45.246799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552453, -0.281953, 0.784409,
		-0.661892, -0.423609, -0.618430,
		0.506651, -0.860847, 0.047401,
		30.496162, 34.418682, 45.261021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610510, 34.502762, 45.128841>,  <30.141508, 35.021275, 45.227840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610510, 34.502762, 45.128841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940790, 34.359711, 45.303345>,  <30.138958, 34.273880, 45.408047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940790, 34.359711, 45.303345>,  <29.610510, 34.502762, 45.128841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940790, 34.359711, 45.303345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541479, -0.285622, 0.790709,
		-0.158174, -0.889114, -0.429485,
		0.825701, -0.357626, 0.436259,
		30.188501, 34.252422, 45.434223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383373, 33.921520, 45.296196>,  <29.610510, 34.502762, 45.128841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383373, 33.921520, 45.296196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.696426, 33.993786, 45.534470>,  <29.884258, 34.037144, 45.677433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.696426, 33.993786, 45.534470>,  <29.383373, 33.921520, 45.296196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696426, 33.993786, 45.534470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508287, -0.366951, 0.779096,
		0.359343, -0.912528, -0.195359,
		0.782634, 0.180665, 0.595688,
		29.931217, 34.047985, 45.713177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098560, 33.604908, 44.641830>,  <29.383373, 33.921520, 45.296196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098560, 33.604908, 44.641830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.756378, 33.436161, 44.521687>,  <28.551069, 33.334911, 44.449600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.756378, 33.436161, 44.521687>,  <29.098560, 33.604908, 44.641830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756378, 33.436161, 44.521687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045981, 0.515829, -0.855457,
		0.515829, -0.745618, -0.421871,
		0.855457, 0.421871, 0.300364,
		28.499741, 33.309601, 44.431576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267698, 33.225109, 44.036903>,  <29.098560, 33.604908, 44.641830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267698, 33.225109, 44.036903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.880220, 33.324368, 44.034100>,  <28.647734, 33.383923, 44.032417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.880220, 33.324368, 44.034100>,  <29.267698, 33.225109, 44.036903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880220, 33.324368, 44.034100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084821, 0.304314, -0.948788,
		-0.233309, -0.919682, -0.315836,
		-0.968696, 0.248151, -0.007009,
		28.589611, 33.398811, 44.031998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163324, 33.020489, 43.401897>,  <29.267698, 33.225109, 44.036903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163324, 33.020489, 43.401897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.863026, 33.264729, 43.502731>,  <28.682846, 33.411274, 43.563232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.863026, 33.264729, 43.502731>,  <29.163324, 33.020489, 43.401897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863026, 33.264729, 43.502731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015953, 0.364730, -0.930976,
		-0.660397, -0.702949, -0.264079,
		-0.750747, 0.610601, 0.252081,
		28.637802, 33.447910, 43.578354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582752, 32.934319, 42.873535>,  <29.163324, 33.020489, 43.401897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582752, 32.934319, 42.873535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.547846, 33.289810, 43.053551>,  <28.526901, 33.503105, 43.161560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.547846, 33.289810, 43.053551>,  <28.582752, 32.934319, 42.873535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547846, 33.289810, 43.053551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149209, 0.458331, -0.876167,
		-0.984947, -0.009308, -0.172603,
		-0.087265, 0.888733, 0.450043,
		28.521666, 33.556431, 43.188564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199745, 33.454193, 42.407818>,  <28.582752, 32.934319, 42.873535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199745, 33.454193, 42.407818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.372175, 33.711349, 42.661072>,  <28.475634, 33.865643, 42.813023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.372175, 33.711349, 42.661072>,  <28.199745, 33.454193, 42.407818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372175, 33.711349, 42.661072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108584, 0.659619, -0.743715,
		-0.895759, 0.389346, 0.214538,
		0.431075, 0.642894, 0.633136,
		28.501497, 33.904217, 42.851013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875288, 34.135323, 42.114330>,  <28.199745, 33.454193, 42.407818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875288, 34.135323, 42.114330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191984, 34.214535, 42.345478>,  <28.382002, 34.262062, 42.484165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.191984, 34.214535, 42.345478>,  <27.875288, 34.135323, 42.114330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191984, 34.214535, 42.345478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213925, 0.796201, -0.565950,
		-0.572175, 0.571706, 0.588021,
		0.791740, 0.198030, 0.577869,
		28.429506, 34.273945, 42.518837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876606, 34.868080, 42.304703>,  <27.875288, 34.135323, 42.114330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876606, 34.868080, 42.304703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.256475, 34.742973, 42.311573>,  <28.484398, 34.667908, 42.315693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.256475, 34.742973, 42.311573>,  <27.876606, 34.868080, 42.304703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256475, 34.742973, 42.311573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284235, 0.837408, -0.466861,
		0.131639, 0.448247, 0.884164,
		0.949674, -0.312768, 0.017172,
		28.541378, 34.649143, 42.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.405720, 26.718441, 44.770535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.512125, 27.053299, 44.961712>,  <31.575968, 27.254213, 45.076420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.512125, 27.053299, 44.961712>,  <31.405720, 26.718441, 44.770535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512125, 27.053299, 44.961712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017553, 0.491518, -0.870690,
		-0.963810, 0.240003, 0.116055,
		0.266011, 0.837143, 0.477943,
		31.591928, 27.304441, 45.105095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831533, 27.266205, 44.660793>,  <31.405720, 26.718441, 44.770535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831533, 27.266205, 44.660793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.164984, 27.466570, 44.753876>,  <31.365053, 27.586790, 44.809727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.164984, 27.466570, 44.753876>,  <30.831533, 27.266205, 44.660793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164984, 27.466570, 44.753876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151892, 0.612981, -0.775360,
		-0.531033, 0.611014, 0.587082,
		0.833626, 0.500915, 0.232705,
		31.415071, 27.616844, 44.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751009, 27.957996, 44.500996>,  <30.831533, 27.266205, 44.660793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751009, 27.957996, 44.500996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.150681, 27.960339, 44.517025>,  <31.390484, 27.961744, 44.526642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.150681, 27.960339, 44.517025>,  <30.751009, 27.957996, 44.500996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150681, 27.960339, 44.517025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026450, 0.654982, -0.755181,
		-0.030667, 0.755622, 0.654290,
		0.999180, 0.005853, 0.040072,
		31.450434, 27.962095, 44.529045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985769, 28.585182, 44.389950>,  <30.751009, 27.957996, 44.500996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985769, 28.585182, 44.389950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303667, 28.363111, 44.291840>,  <31.494406, 28.229870, 44.232975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303667, 28.363111, 44.291840>,  <30.985769, 28.585182, 44.389950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303667, 28.363111, 44.291840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192746, 0.614053, -0.765367,
		0.575525, 0.560996, 0.595024,
		0.794745, -0.555177, -0.245273,
		31.542091, 28.196558, 44.218258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443604, 29.077250, 44.116035>,  <30.985769, 28.585182, 44.389950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443604, 29.077250, 44.116035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.598839, 28.738237, 43.971218>,  <31.691980, 28.534830, 43.884327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.598839, 28.738237, 43.971218>,  <31.443604, 29.077250, 44.116035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598839, 28.738237, 43.971218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254872, 0.476211, -0.841584,
		0.885679, 0.234334, 0.400824,
		0.388089, -0.847532, -0.362046,
		31.715265, 28.483978, 43.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063461, 29.260538, 43.859135>,  <31.443604, 29.077250, 44.116035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063461, 29.260538, 43.859135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960320, 28.917879, 43.680397>,  <31.898434, 28.712284, 43.573154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960320, 28.917879, 43.680397>,  <32.063461, 29.260538, 43.859135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960320, 28.917879, 43.680397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172538, 0.414222, -0.893673,
		0.950653, -0.307537, 0.040994,
		-0.257857, -0.856645, -0.446843,
		31.882963, 28.660885, 43.546345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548908, 29.112459, 43.307800>,  <32.063461, 29.260538, 43.859135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548908, 29.112459, 43.307800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229023, 28.881617, 43.241581>,  <32.037090, 28.743111, 43.201847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229023, 28.881617, 43.241581>,  <32.548908, 29.112459, 43.307800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229023, 28.881617, 43.241581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087244, 0.161114, -0.983072,
		0.594010, -0.800619, -0.078496,
		-0.799713, -0.577107, -0.165552,
		31.989109, 28.708485, 43.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792992, 28.593922, 42.867886>,  <32.548908, 29.112459, 43.307800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792992, 28.593922, 42.867886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.397278, 28.641279, 42.833706>,  <32.159851, 28.669693, 42.813198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.397278, 28.641279, 42.833706>,  <32.792992, 28.593922, 42.867886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397278, 28.641279, 42.833706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092402, 0.054528, -0.994228,
		-0.113049, -0.991469, -0.064883,
		-0.989284, 0.118392, -0.085449,
		32.100494, 28.676796, 42.808071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536469, 28.134697, 42.353432>,  <32.792992, 28.593922, 42.867886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536469, 28.134697, 42.353432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253674, 28.415791, 42.385258>,  <32.083996, 28.584446, 42.404354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253674, 28.415791, 42.385258>,  <32.536469, 28.134697, 42.353432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253674, 28.415791, 42.385258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047389, 0.065173, -0.996748,
		-0.705633, -0.708462, -0.012775,
		-0.706991, 0.702733, 0.079562,
		32.041576, 28.626610, 42.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149658, 28.015259, 41.697220>,  <32.536469, 28.134697, 42.353432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149658, 28.015259, 41.697220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037704, 28.377491, 41.824715>,  <31.970533, 28.594830, 41.901211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037704, 28.377491, 41.824715>,  <32.149658, 28.015259, 41.697220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037704, 28.377491, 41.824715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037062, 0.341951, -0.938987,
		-0.959319, -0.250993, -0.129269,
		-0.279883, 0.905578, 0.318738,
		31.953739, 28.649164, 41.920338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639387, 28.203699, 41.202347>,  <32.149658, 28.015259, 41.697220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639387, 28.203699, 41.202347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.736208, 28.560362, 41.355373>,  <31.794300, 28.774361, 41.447189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.736208, 28.560362, 41.355373>,  <31.639387, 28.203699, 41.202347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736208, 28.560362, 41.355373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035439, 0.385901, -0.921859,
		-0.969615, 0.236697, 0.061809,
		0.242054, 0.891659, 0.382564,
		31.808825, 28.827860, 41.470142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148300, 28.699821, 40.888382>,  <31.639387, 28.203699, 41.202347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148300, 28.699821, 40.888382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.470881, 28.899876, 41.014557>,  <31.664429, 29.019909, 41.090263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.470881, 28.899876, 41.014557>,  <31.148300, 28.699821, 40.888382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470881, 28.899876, 41.014557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170580, 0.314008, -0.933971,
		-0.566162, 0.807009, 0.167919,
		0.806451, 0.500136, 0.315439,
		31.712816, 29.049917, 41.109188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488770, 29.100277, 41.148731>,  <31.148300, 28.699821, 40.888382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488770, 29.100277, 41.148731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.184824, 29.334633, 41.036060>,  <30.002457, 29.475246, 40.968460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.184824, 29.334633, 41.036060>,  <30.488770, 29.100277, 41.148731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184824, 29.334633, 41.036060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487040, -0.226083, 0.843610,
		0.430582, 0.778214, 0.457145,
		-0.759862, 0.585891, -0.281674,
		29.956865, 29.510401, 40.951557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345636, 29.485954, 41.743023>,  <30.488770, 29.100277, 41.148731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345636, 29.485954, 41.743023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016472, 29.519518, 41.518250>,  <29.818974, 29.539656, 41.383385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016472, 29.519518, 41.518250>,  <30.345636, 29.485954, 41.743023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016472, 29.519518, 41.518250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567017, -0.058370, 0.821635,
		0.036142, 0.994762, 0.095612,
		-0.822913, 0.083909, -0.561937,
		29.769598, 29.544691, 41.349667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948235, 29.977531, 42.081856>,  <30.345636, 29.485954, 41.743023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948235, 29.977531, 42.081856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683912, 29.785967, 41.850693>,  <29.525320, 29.671028, 41.711994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683912, 29.785967, 41.850693>,  <29.948235, 29.977531, 42.081856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683912, 29.785967, 41.850693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660029, 0.004188, 0.751228,
		-0.357352, 0.877853, -0.318864,
		-0.660804, -0.478912, -0.577912,
		29.485672, 29.642294, 41.677319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261711, 30.360369, 41.982582>,  <29.948235, 29.977531, 42.081856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261711, 30.360369, 41.982582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161194, 29.977427, 41.925556>,  <29.100883, 29.747662, 41.891342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161194, 29.977427, 41.925556>,  <29.261711, 30.360369, 41.982582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161194, 29.977427, 41.925556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804160, 0.124532, 0.581222,
		-0.538682, 0.260699, -0.801160,
		-0.251294, -0.957355, -0.142561,
		29.085806, 29.690220, 41.882790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564793, 30.289326, 41.858578>,  <29.261711, 30.360369, 41.982582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564793, 30.289326, 41.858578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671255, 29.929625, 41.997437>,  <28.735132, 29.713804, 42.080750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.671255, 29.929625, 41.997437>,  <28.564793, 30.289326, 41.858578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671255, 29.929625, 41.997437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801669, -0.006529, 0.597733,
		-0.535245, -0.437384, -0.722639,
		0.266157, -0.899251, 0.347143,
		28.751102, 29.659849, 42.101578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966396, 29.976454, 42.031273>,  <28.564793, 30.289326, 41.858578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966396, 29.976454, 42.031273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.231754, 29.748241, 42.224934>,  <28.390968, 29.611315, 42.341129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.231754, 29.748241, 42.224934>,  <27.966396, 29.976454, 42.031273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231754, 29.748241, 42.224934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587591, 0.003414, 0.809151,
		-0.463297, -0.821270, -0.332973,
		0.663395, -0.570529, 0.484153,
		28.430773, 29.577084, 42.370178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575771, 29.453108, 42.369267>,  <27.966396, 29.976454, 42.031273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575771, 29.453108, 42.369267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.924421, 29.399466, 42.557854>,  <28.133612, 29.367281, 42.671005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.924421, 29.399466, 42.557854>,  <27.575771, 29.453108, 42.369267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924421, 29.399466, 42.557854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487863, -0.330552, 0.807914,
		0.047500, -0.934212, -0.353543,
		0.871627, -0.134104, 0.471469,
		28.185909, 29.359234, 42.699295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695398, 28.662958, 42.576530>,  <27.575771, 29.453108, 42.369267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695398, 28.662958, 42.576530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.898523, 28.919266, 42.806850>,  <28.020397, 29.073050, 42.945042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.898523, 28.919266, 42.806850>,  <27.695398, 28.662958, 42.576530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898523, 28.919266, 42.806850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253486, -0.527661, 0.810752,
		0.823330, -0.557666, -0.105526,
		0.507811, 0.640767, 0.575800,
		28.050867, 29.111496, 42.979591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090523, 28.320051, 43.036339>,  <27.695398, 28.662958, 42.576530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090523, 28.320051, 43.036339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071953, 28.685829, 43.197155>,  <28.060810, 28.905296, 43.293644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071953, 28.685829, 43.197155>,  <28.090523, 28.320051, 43.036339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071953, 28.685829, 43.197155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227624, -0.401572, 0.887089,
		0.972642, -0.050332, 0.226792,
		-0.046424, 0.914444, 0.402042,
		28.058025, 28.960163, 43.317768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216583, 28.238920, 43.707691>,  <28.090523, 28.320051, 43.036339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216583, 28.238920, 43.707691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056093, 28.605307, 43.709641>,  <27.959799, 28.825138, 43.710812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056093, 28.605307, 43.709641>,  <28.216583, 28.238920, 43.707691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056093, 28.605307, 43.709641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488921, -0.218660, 0.844479,
		0.774581, 0.336441, 0.535567,
		-0.401224, 0.915967, 0.004876,
		27.935726, 28.880096, 43.711105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323526, 28.509712, 44.380516>,  <28.216583, 28.238920, 43.707691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323526, 28.509712, 44.380516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.025845, 28.737907, 44.241543>,  <27.847237, 28.874825, 44.158161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.025845, 28.737907, 44.241543>,  <28.323526, 28.509712, 44.380516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025845, 28.737907, 44.241543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458458, -0.057978, 0.886823,
		0.485777, 0.819258, 0.304691,
		-0.744203, 0.570486, -0.347431,
		27.802584, 28.909054, 44.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398006, 29.064962, 44.770229>,  <28.323526, 28.509712, 44.380516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398006, 29.064962, 44.770229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.018970, 29.044268, 44.644119>,  <27.791550, 29.031851, 44.568455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.018970, 29.044268, 44.644119>,  <28.398006, 29.064962, 44.770229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018970, 29.044268, 44.644119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317716, 0.048752, 0.946932,
		-0.033619, 0.997470, -0.062634,
		-0.947590, -0.051735, -0.315273,
		27.734694, 29.028748, 44.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132711, 29.471889, 45.160004>,  <28.398006, 29.064962, 44.770229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132711, 29.471889, 45.160004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.809824, 29.273308, 45.032299>,  <27.616091, 29.154158, 44.955677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.809824, 29.273308, 45.032299>,  <28.132711, 29.471889, 45.160004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809824, 29.273308, 45.032299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416614, 0.096056, 0.903994,
		-0.418126, 0.862731, -0.284369,
		-0.807219, -0.496456, -0.319262,
		27.567657, 29.124371, 44.936520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532633, 29.953190, 45.213215>,  <28.132711, 29.471889, 45.160004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532633, 29.953190, 45.213215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423897, 29.568693, 45.231625>,  <27.358654, 29.337996, 45.242672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.423897, 29.568693, 45.231625>,  <27.532633, 29.953190, 45.213215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423897, 29.568693, 45.231625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396943, 0.155567, 0.904564,
		-0.876663, 0.227629, -0.423847,
		-0.271841, -0.961241, 0.046024,
		27.342344, 29.280321, 45.245430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492401, 30.590284, 45.463356>,  <27.532633, 29.953190, 45.213215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492401, 30.590284, 45.463356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291637, 30.857622, 45.682957>,  <27.171179, 31.018024, 45.814716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291637, 30.857622, 45.682957>,  <27.492401, 30.590284, 45.463356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291637, 30.857622, 45.682957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566697, 0.733629, -0.375024,
		-0.653409, 0.122890, -0.746964,
		-0.501908, 0.668346, 0.549001,
		27.141066, 31.058126, 45.847656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998247, 31.051600, 45.009445>,  <27.492401, 30.590284, 45.463356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998247, 31.051600, 45.009445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.163385, 31.225824, 45.329407>,  <27.262468, 31.330359, 45.521385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.163385, 31.225824, 45.329407>,  <26.998247, 31.051600, 45.009445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163385, 31.225824, 45.329407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512795, 0.614663, -0.599359,
		-0.752728, 0.657629, 0.030407,
		0.412846, 0.435561, 0.799903,
		27.287239, 31.356493, 45.569378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816521, 31.761101, 45.031342>,  <26.998247, 31.051600, 45.009445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816521, 31.761101, 45.031342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.138878, 31.753967, 45.268059>,  <27.332293, 31.749687, 45.410088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.138878, 31.753967, 45.268059>,  <26.816521, 31.761101, 45.031342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138878, 31.753967, 45.268059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381050, 0.780637, -0.495386,
		-0.453137, 0.624731, 0.635907,
		0.805895, -0.017835, 0.591789,
		27.380646, 31.748617, 45.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938292, 32.390526, 45.311520>,  <26.816521, 31.761101, 45.031342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938292, 32.390526, 45.311520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.306011, 32.233112, 45.312958>,  <27.526644, 32.138664, 45.313820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.306011, 32.233112, 45.312958>,  <26.938292, 32.390526, 45.311520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306011, 32.233112, 45.312958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363303, 0.845089, -0.392219,
		0.151314, 0.361874, 0.919865,
		0.919301, -0.393538, 0.003596,
		27.581802, 32.115051, 45.314037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342205, 32.965500, 45.452244>,  <26.938292, 32.390526, 45.311520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342205, 32.965500, 45.452244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609274, 32.702423, 45.312729>,  <27.769514, 32.544579, 45.229019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609274, 32.702423, 45.312729>,  <27.342205, 32.965500, 45.452244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609274, 32.702423, 45.312729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530750, 0.749069, -0.396484,
		0.522034, 0.079600, 0.849202,
		0.667671, -0.657692, -0.348792,
		27.809576, 32.505116, 45.208092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905077, 33.413895, 45.341461>,  <27.342205, 32.965500, 45.452244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905077, 33.413895, 45.341461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.016676, 33.075096, 45.160461>,  <28.083635, 32.871819, 45.051861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.016676, 33.075096, 45.160461>,  <27.905077, 33.413895, 45.341461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016676, 33.075096, 45.160461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534546, 0.528440, -0.659554,
		0.797760, -0.057871, 0.600191,
		0.278996, -0.846996, -0.452503,
		28.100374, 32.820999, 45.024712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706326, 33.428673, 45.380966>,  <27.905077, 33.413895, 45.341461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706326, 33.428673, 45.380966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.495155, 33.255066, 45.088959>,  <28.368452, 33.150902, 44.913754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.495155, 33.255066, 45.088959>,  <28.706326, 33.428673, 45.380966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495155, 33.255066, 45.088959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447958, 0.587972, -0.673515,
		0.721545, -0.682583, -0.115985,
		-0.527926, -0.434015, -0.730017,
		28.336777, 33.124863, 44.869953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403233, 33.378017, 45.749386>,  <28.706326, 33.428673, 45.380966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403233, 33.378017, 45.749386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.605227, 33.660213, 45.948292>,  <29.726423, 33.829533, 46.067635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.605227, 33.660213, 45.948292>,  <29.403233, 33.378017, 45.749386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605227, 33.660213, 45.948292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491506, -0.238543, 0.837567,
		0.709515, -0.667368, 0.226293,
		0.504985, 0.705491, 0.497265,
		29.756721, 33.871861, 46.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736706, 33.074810, 46.428280>,  <29.403233, 33.378017, 45.749386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736706, 33.074810, 46.428280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719074, 33.471134, 46.479431>,  <29.708496, 33.708927, 46.510124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719074, 33.471134, 46.479431>,  <29.736706, 33.074810, 46.428280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719074, 33.471134, 46.479431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480785, -0.133247, 0.866655,
		0.875730, -0.023282, 0.482239,
		-0.044080, 0.990809, 0.127882,
		29.705851, 33.768375, 46.517796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835495, 33.169571, 47.103722>,  <29.736706, 33.074810, 46.428280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835495, 33.169571, 47.103722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.673882, 33.521465, 47.003471>,  <29.576914, 33.732601, 46.943321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.673882, 33.521465, 47.003471>,  <29.835495, 33.169571, 47.103722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673882, 33.521465, 47.003471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484162, 0.026797, 0.874568,
		0.776108, 0.474701, 0.415109,
		-0.404035, 0.879739, -0.250630,
		29.552671, 33.785385, 46.928284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920242, 33.473366, 47.682804>,  <29.835495, 33.169571, 47.103722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920242, 33.473366, 47.682804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650723, 33.685158, 47.476639>,  <29.489010, 33.812233, 47.352940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650723, 33.685158, 47.476639>,  <29.920242, 33.473366, 47.682804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650723, 33.685158, 47.476639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639564, -0.068563, 0.765674,
		0.370070, 0.845548, 0.384834,
		-0.673800, 0.529479, -0.515409,
		29.448582, 33.844002, 47.322018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816988, 34.052425, 47.991398>,  <29.920242, 33.473366, 47.682804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816988, 34.052425, 47.991398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465210, 34.003468, 47.807400>,  <29.254143, 33.974094, 47.697002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465210, 34.003468, 47.807400>,  <29.816988, 34.052425, 47.991398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465210, 34.003468, 47.807400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465200, 0.016353, 0.885054,
		-0.100805, 0.992346, -0.071320,
		-0.879447, -0.122396, -0.459991,
		29.201376, 33.966747, 47.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490129, 34.481236, 48.367077>,  <29.816988, 34.052425, 47.991398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490129, 34.481236, 48.367077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223356, 34.240250, 48.191700>,  <29.063292, 34.095657, 48.086475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223356, 34.240250, 48.191700>,  <29.490129, 34.481236, 48.367077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223356, 34.240250, 48.191700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409164, -0.195642, 0.891240,
		-0.622722, 0.773793, -0.116028,
		-0.666935, -0.602469, -0.438438,
		29.023275, 34.059509, 48.060169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879936, 34.659977, 48.716808>,  <29.490129, 34.481236, 48.367077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879936, 34.659977, 48.716808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.837761, 34.299831, 48.547939>,  <28.812456, 34.083744, 48.446617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.837761, 34.299831, 48.547939>,  <28.879936, 34.659977, 48.716808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837761, 34.299831, 48.547939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408240, -0.347920, 0.843974,
		-0.906765, 0.261333, -0.330881,
		-0.105438, -0.900365, -0.422168,
		28.806129, 34.029720, 48.421288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279701, 34.486374, 48.970474>,  <28.879936, 34.659977, 48.716808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279701, 34.486374, 48.970474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439226, 34.134293, 48.867565>,  <28.534941, 33.923042, 48.805820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439226, 34.134293, 48.867565>,  <28.279701, 34.486374, 48.970474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439226, 34.134293, 48.867565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303947, -0.391563, 0.868501,
		-0.865197, -0.268171, -0.423695,
		0.398811, -0.880206, -0.257269,
		28.558868, 33.870232, 48.790386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887808, 33.954254, 49.167049>,  <28.279701, 34.486374, 48.970474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887808, 33.954254, 49.167049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214605, 33.726254, 49.132133>,  <28.410685, 33.589455, 49.111183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214605, 33.726254, 49.132133>,  <27.887808, 33.954254, 49.167049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214605, 33.726254, 49.132133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185021, -0.402487, 0.896533,
		-0.546160, -0.716310, -0.434292,
		0.816992, -0.570004, -0.087290,
		28.459703, 33.555252, 49.105946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.086155, 38.043434, 36.417648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340343, 37.965260, 36.118855>,  <36.492855, 37.918354, 35.939579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340343, 37.965260, 36.118855>,  <36.086155, 38.043434, 36.417648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340343, 37.965260, 36.118855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756223, -0.352865, -0.551011,
		-0.155894, 0.915036, -0.372030,
		0.635472, -0.195438, -0.746981,
		36.530987, 37.906628, 35.894760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276680, 37.393387, 36.025494>,  <36.086155, 38.043434, 36.417648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276680, 37.393387, 36.025494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567886, 37.522442, 36.267452>,  <36.742611, 37.599876, 36.412628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567886, 37.522442, 36.267452>,  <36.276680, 37.393387, 36.025494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567886, 37.522442, 36.267452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584657, -0.168587, 0.793571,
		0.358014, -0.931388, 0.065899,
		0.728013, 0.322638, 0.604899,
		36.786289, 37.619232, 36.448921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231808, 36.881851, 36.595623>,  <36.276680, 37.393387, 36.025494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231808, 36.881851, 36.595623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409492, 37.224232, 36.701462>,  <36.516106, 37.429661, 36.764965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409492, 37.224232, 36.701462>,  <36.231808, 36.881851, 36.595623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409492, 37.224232, 36.701462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441811, -0.047642, 0.895842,
		0.779408, -0.514849, 0.357007,
		0.444215, 0.855956, 0.264598,
		36.542759, 37.481018, 36.780842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409561, 36.758682, 37.247448>,  <36.231808, 36.881851, 36.595623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409561, 36.758682, 37.247448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481346, 37.152187, 37.246292>,  <36.524418, 37.388290, 37.245598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481346, 37.152187, 37.246292>,  <36.409561, 36.758682, 37.247448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481346, 37.152187, 37.246292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566897, 0.105818, 0.816964,
		0.804002, -0.144980, 0.576681,
		0.179467, 0.983760, -0.002889,
		36.535187, 37.447315, 37.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538979, 36.924610, 37.910488>,  <36.409561, 36.758682, 37.247448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538979, 36.924610, 37.910488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410870, 37.256699, 37.727993>,  <36.334003, 37.455952, 37.618496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410870, 37.256699, 37.727993>,  <36.538979, 36.924610, 37.910488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410870, 37.256699, 37.727993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649102, 0.158455, 0.744015,
		0.689992, 0.534434, 0.488151,
		-0.320277, 0.830225, -0.456235,
		36.314785, 37.505768, 37.591122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453781, 37.385574, 38.402016>,  <36.538979, 36.924610, 37.910488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453781, 37.385574, 38.402016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228680, 37.549046, 38.114601>,  <36.093620, 37.647129, 37.942154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228680, 37.549046, 38.114601>,  <36.453781, 37.385574, 38.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228680, 37.549046, 38.114601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765854, 0.069356, 0.639263,
		0.311086, 0.910040, 0.273956,
		-0.562754, 0.408676, -0.718534,
		36.059853, 37.671650, 37.899040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197025, 37.986202, 38.731899>,  <36.453781, 37.385574, 38.402016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197025, 37.986202, 38.731899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961842, 37.889332, 38.423183>,  <35.820732, 37.831211, 38.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961842, 37.889332, 38.423183>,  <36.197025, 37.986202, 38.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961842, 37.889332, 38.423183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800654, 0.038412, 0.597894,
		-0.115147, 0.969472, -0.216481,
		-0.587957, -0.242173, -0.771789,
		35.785454, 37.816681, 38.191647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566933, 38.426571, 38.671352>,  <36.197025, 37.986202, 38.731899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566933, 38.426571, 38.671352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473728, 38.084587, 38.485989>,  <35.417805, 37.879398, 38.374771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473728, 38.084587, 38.485989>,  <35.566933, 38.426571, 38.671352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473728, 38.084587, 38.485989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876113, -0.022256, 0.481592,
		-0.422055, 0.518217, -0.743856,
		-0.233014, -0.854960, -0.463409,
		35.403824, 37.828098, 38.346966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836922, 38.513077, 38.661362>,  <35.566933, 38.426571, 38.671352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836922, 38.513077, 38.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895145, 38.123920, 38.589485>,  <34.930080, 37.890427, 38.546360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895145, 38.123920, 38.589485>,  <34.836922, 38.513077, 38.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895145, 38.123920, 38.589485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882344, -0.209815, 0.421245,
		-0.447529, 0.097238, -0.888967,
		0.145557, -0.972894, -0.179695,
		34.938812, 37.832054, 38.535576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175278, 38.248688, 38.428703>,  <34.836922, 38.513077, 38.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175278, 38.248688, 38.428703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402161, 37.943710, 38.553253>,  <34.538292, 37.760723, 38.627983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402161, 37.943710, 38.553253>,  <34.175278, 38.248688, 38.428703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402161, 37.943710, 38.553253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763249, -0.344614, 0.546528,
		-0.309396, -0.547646, -0.777404,
		0.567208, -0.762447, 0.311368,
		34.572323, 37.714977, 38.646664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649681, 37.775307, 38.562073>,  <34.175278, 38.248688, 38.428703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649681, 37.775307, 38.562073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972858, 37.619404, 38.738853>,  <34.166763, 37.525860, 38.844921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972858, 37.619404, 38.738853>,  <33.649681, 37.775307, 38.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972858, 37.619404, 38.738853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589255, -0.530014, 0.609806,
		-0.003440, -0.753107, -0.657889,
		0.807940, -0.389762, 0.441949,
		34.215240, 37.502476, 38.871437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514748, 37.090969, 38.582096>,  <33.649681, 37.775307, 38.562073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514748, 37.090969, 38.582096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756519, 37.161594, 38.892838>,  <33.901581, 37.203968, 39.079281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756519, 37.161594, 38.892838>,  <33.514748, 37.090969, 38.582096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756519, 37.161594, 38.892838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700017, -0.347819, 0.623697,
		0.380323, -0.920787, -0.086637,
		0.604426, 0.176559, 0.776850,
		33.937847, 37.214561, 39.125893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888714, 37.324509, 38.191338>,  <33.514748, 37.090969, 38.582096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888714, 37.324509, 38.191338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594288, 37.140621, 37.992599>,  <32.417633, 37.030289, 37.873356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594288, 37.140621, 37.992599>,  <32.888714, 37.324509, 38.191338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594288, 37.140621, 37.992599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464860, 0.190237, -0.864705,
		0.492044, -0.867447, 0.073679,
		-0.736069, -0.459723, -0.496847,
		32.373466, 37.002705, 37.843544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171471, 36.747997, 37.657566>,  <32.888714, 37.324509, 38.191338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171471, 36.747997, 37.657566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809826, 36.853737, 37.523281>,  <32.592838, 36.917183, 37.442711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809826, 36.853737, 37.523281>,  <33.171471, 36.747997, 37.657566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809826, 36.853737, 37.523281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375646, 0.117262, -0.919315,
		-0.203656, -0.957271, -0.205321,
		-0.904109, 0.264352, -0.335714,
		32.538593, 36.933041, 37.422565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916298, 36.275768, 37.187450>,  <33.171471, 36.747997, 37.657566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916298, 36.275768, 37.187450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747459, 36.631634, 37.117775>,  <32.646156, 36.845154, 37.075970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747459, 36.631634, 37.117775>,  <32.916298, 36.275768, 37.187450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747459, 36.631634, 37.117775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436046, 0.030779, -0.899398,
		-0.794796, -0.455586, -0.400924,
		-0.422094, 0.889659, -0.174193,
		32.620831, 36.898533, 37.065517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739037, 36.158962, 36.490635>,  <32.916298, 36.275768, 37.187450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739037, 36.158962, 36.490635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704834, 36.556160, 36.523239>,  <32.684315, 36.794479, 36.542801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704834, 36.556160, 36.523239>,  <32.739037, 36.158962, 36.490635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704834, 36.556160, 36.523239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172811, 0.095348, -0.980329,
		-0.981237, -0.069736, -0.179753,
		-0.085504, 0.992998, 0.081508,
		32.679184, 36.854061, 36.547691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349327, 36.452007, 35.936771>,  <32.739037, 36.158962, 36.490635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349327, 36.452007, 35.936771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558704, 36.777462, 36.037960>,  <32.684330, 36.972736, 36.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558704, 36.777462, 36.037960>,  <32.349327, 36.452007, 35.936771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558704, 36.777462, 36.037960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169750, 0.191366, -0.966728,
		-0.834979, 0.548972, -0.037946,
		0.523445, 0.813639, 0.252975,
		32.715736, 37.021553, 36.113853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905001, 36.943596, 35.612080>,  <32.349327, 36.452007, 35.936771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905001, 36.943596, 35.612080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272224, 37.090488, 35.671825>,  <32.492558, 37.178623, 35.707672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272224, 37.090488, 35.671825>,  <31.905001, 36.943596, 35.612080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272224, 37.090488, 35.671825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102007, 0.145271, -0.984119,
		-0.383097, 0.918716, 0.095908,
		0.918059, 0.367230, 0.149368,
		32.547642, 37.200657, 35.716637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843098, 37.546833, 35.305775>,  <31.905001, 36.943596, 35.612080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843098, 37.546833, 35.305775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240456, 37.500938, 35.306396>,  <32.478870, 37.473400, 35.306770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240456, 37.500938, 35.306396>,  <31.843098, 37.546833, 35.305775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240456, 37.500938, 35.306396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036895, 0.306513, -0.951151,
		0.108658, 0.944926, 0.308722,
		0.993394, -0.114741, 0.001558,
		32.538475, 37.466515, 35.306866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044575, 38.106861, 34.863544>,  <31.843098, 37.546833, 35.305775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044575, 38.106861, 34.863544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385422, 37.897717, 34.872578>,  <32.589931, 37.772228, 34.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385422, 37.897717, 34.872578>,  <32.044575, 38.106861, 34.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385422, 37.897717, 34.872578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110706, 0.137915, -0.984238,
		0.511506, 0.841187, 0.175404,
		0.852118, -0.522862, 0.022580,
		32.641056, 37.740856, 34.879353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610661, 38.488457, 34.644791>,  <32.044575, 38.106861, 34.863544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610661, 38.488457, 34.644791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656090, 38.098129, 34.570084>,  <32.683350, 37.863934, 34.525261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656090, 38.098129, 34.570084>,  <32.610661, 38.488457, 34.644791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656090, 38.098129, 34.570084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064859, 0.194861, -0.978684,
		0.991410, 0.099041, 0.085421,
		0.113575, -0.975818, -0.186763,
		32.690163, 37.805386, 34.514053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057549, 38.531681, 34.152473>,  <32.610661, 38.488457, 34.644791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057549, 38.531681, 34.152473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937321, 38.152100, 34.114208>,  <32.865185, 37.924351, 34.091251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937321, 38.152100, 34.114208>,  <33.057549, 38.531681, 34.152473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937321, 38.152100, 34.114208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022352, 0.093263, -0.995390,
		0.953497, -0.301325, -0.006822,
		-0.300572, -0.948950, -0.095661,
		32.847149, 37.867416, 34.085510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554405, 38.263187, 33.664913>,  <33.057549, 38.531681, 34.152473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554405, 38.263187, 33.664913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240463, 38.016212, 33.686008>,  <33.052097, 37.868027, 33.698666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240463, 38.016212, 33.686008>,  <33.554405, 38.263187, 33.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240463, 38.016212, 33.686008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145486, -0.266316, -0.952843,
		0.602361, -0.740170, 0.298847,
		-0.784853, -0.617433, 0.052734,
		33.005009, 37.830982, 33.701828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807068, 37.643425, 33.351994>,  <33.554405, 38.263187, 33.664913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807068, 37.643425, 33.351994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407879, 37.626503, 33.332935>,  <33.168365, 37.616348, 33.321499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407879, 37.626503, 33.332935>,  <33.807068, 37.643425, 33.351994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407879, 37.626503, 33.332935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056840, -0.253137, -0.965759,
		0.028798, -0.966505, 0.255027,
		-0.997968, -0.042308, -0.047646,
		33.108490, 37.613811, 33.318642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575710, 36.901184, 33.074234>,  <33.807068, 37.643425, 33.351994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575710, 36.901184, 33.074234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301323, 37.185299, 33.011063>,  <33.136692, 37.355766, 32.973160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301323, 37.185299, 33.011063>,  <33.575710, 36.901184, 33.074234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301323, 37.185299, 33.011063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149688, -0.350160, -0.924652,
		-0.712071, -0.610639, 0.346519,
		-0.685966, 0.710288, -0.157933,
		33.095531, 37.398384, 32.963684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112473, 36.588730, 32.518093>,  <33.575710, 36.901184, 33.074234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112473, 36.588730, 32.518093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009224, 36.974911, 32.532345>,  <32.947277, 37.206619, 32.540894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009224, 36.974911, 32.532345>,  <33.112473, 36.588730, 32.518093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009224, 36.974911, 32.532345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436488, -0.083640, -0.895814,
		-0.861889, -0.246776, 0.442999,
		-0.258118, 0.965456, 0.035626,
		32.931789, 37.264549, 32.543034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345253, 36.725796, 32.449013>,  <33.112473, 36.588730, 32.518093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345253, 36.725796, 32.449013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587067, 37.008446, 32.301926>,  <32.732155, 37.178036, 32.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587067, 37.008446, 32.301926>,  <32.345253, 36.725796, 32.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587067, 37.008446, 32.301926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344655, -0.184143, -0.920491,
		-0.718155, 0.683207, 0.132221,
		0.604538, 0.706626, -0.367714,
		32.768429, 37.220432, 32.191612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860439, 36.004112, 32.677925>,  <32.345253, 36.725796, 32.449013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860439, 36.004112, 32.677925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930969, 35.662170, 32.482731>,  <31.973288, 35.457005, 32.365616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930969, 35.662170, 32.482731>,  <31.860439, 36.004112, 32.677925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930969, 35.662170, 32.482731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356733, -0.517548, 0.777744,
		-0.917416, 0.036946, -0.396212,
		0.176324, -0.854856, -0.487987,
		31.983866, 35.405712, 32.336334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309486, 35.561745, 32.934322>,  <31.860439, 36.004112, 32.677925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309486, 35.561745, 32.934322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598801, 35.337357, 32.773239>,  <31.772388, 35.202724, 32.676590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598801, 35.337357, 32.773239>,  <31.309486, 35.561745, 32.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598801, 35.337357, 32.773239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203437, -0.730388, 0.652033,
		-0.659901, -0.389681, -0.642401,
		0.723287, -0.560966, -0.402708,
		31.815786, 35.169067, 32.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060068, 34.938610, 32.963890>,  <31.309486, 35.561745, 32.934322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060068, 34.938610, 32.963890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456596, 34.888199, 32.948940>,  <31.694513, 34.857952, 32.939972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456596, 34.888199, 32.948940>,  <31.060068, 34.938610, 32.963890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456596, 34.888199, 32.948940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040167, -0.561097, 0.826775,
		-0.125168, -0.818099, -0.561290,
		0.991322, -0.126031, -0.037371,
		31.753992, 34.850388, 32.937729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261578, 34.189411, 32.905029>,  <31.060068, 34.938610, 32.963890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261578, 34.189411, 32.905029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555513, 34.398209, 33.078251>,  <31.731874, 34.523487, 33.182182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555513, 34.398209, 33.078251>,  <31.261578, 34.189411, 32.905029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555513, 34.398209, 33.078251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040099, -0.603935, 0.796024,
		0.677056, -0.602314, -0.422863,
		0.734838, 0.521996, 0.433050,
		31.775965, 34.554806, 33.208164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731857, 33.650543, 33.216557>,  <31.261578, 34.189411, 32.905029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731857, 33.650543, 33.216557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791500, 33.999054, 33.403591>,  <31.827286, 34.208160, 33.515812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791500, 33.999054, 33.403591>,  <31.731857, 33.650543, 33.216557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791500, 33.999054, 33.403591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044993, -0.478363, 0.877009,
		0.987797, -0.109729, -0.110528,
		0.149106, 0.871280, 0.467589,
		31.836231, 34.260437, 33.543869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035549, 33.423199, 33.847561>,  <31.731857, 33.650543, 33.216557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035549, 33.423199, 33.847561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973511, 33.814602, 33.901913>,  <31.936289, 34.049446, 33.934525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973511, 33.814602, 33.901913>,  <32.035549, 33.423199, 33.847561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973511, 33.814602, 33.901913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107236, -0.153407, 0.982327,
		0.982062, 0.137780, 0.128724,
		-0.155093, 0.978511, 0.135880,
		31.926983, 34.108154, 33.942677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329765, 33.579514, 34.460064>,  <32.035549, 33.423199, 33.847561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329765, 33.579514, 34.460064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138599, 33.929523, 34.429249>,  <32.023899, 34.139530, 34.410759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138599, 33.929523, 34.429249>,  <32.329765, 33.579514, 34.460064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138599, 33.929523, 34.429249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058814, 0.055625, 0.996718,
		0.876435, 0.480877, 0.024879,
		-0.477914, 0.875022, -0.077034,
		31.995226, 34.192032, 34.406139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735874, 34.127102, 34.867222>,  <32.329765, 33.579514, 34.460064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735874, 34.127102, 34.867222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345139, 34.211414, 34.852486>,  <32.110699, 34.262001, 34.843643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345139, 34.211414, 34.852486>,  <32.735874, 34.127102, 34.867222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345139, 34.211414, 34.852486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036636, 0.004870, 0.999317,
		0.210812, 0.977522, 0.002965,
		-0.976840, 0.210777, -0.036839,
		32.052086, 34.274647, 34.841434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614582, 34.621452, 35.389824>,  <32.735874, 34.127102, 34.867222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614582, 34.621452, 35.389824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263584, 34.452827, 35.298355>,  <32.052986, 34.351650, 35.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263584, 34.452827, 35.298355>,  <32.614582, 34.621452, 35.389824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263584, 34.452827, 35.298355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230509, -0.047400, 0.971915,
		-0.420566, 0.905558, -0.055582,
		-0.877491, -0.421567, -0.228674,
		32.000336, 34.326359, 35.229752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155502, 34.878086, 35.865871>,  <32.614582, 34.621452, 35.389824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155502, 34.878086, 35.865871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952089, 34.561939, 35.729214>,  <31.830042, 34.372250, 35.647221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952089, 34.561939, 35.729214>,  <32.155502, 34.878086, 35.865871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952089, 34.561939, 35.729214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232506, -0.255991, 0.938301,
		-0.829059, 0.556587, -0.053586,
		-0.508529, -0.790366, -0.341641,
		31.799530, 34.324829, 35.626720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508253, 34.815571, 36.353401>,  <32.155502, 34.878086, 35.865871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508253, 34.815571, 36.353401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544577, 34.453541, 36.187222>,  <31.566370, 34.236324, 36.087513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544577, 34.453541, 36.187222>,  <31.508253, 34.815571, 36.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544577, 34.453541, 36.187222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170379, -0.425144, 0.888945,
		-0.981186, -0.009939, -0.192812,
		0.090808, -0.905072, -0.415451,
		31.571819, 34.182018, 36.062588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946222, 34.389275, 36.542885>,  <31.508253, 34.815571, 36.353401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946222, 34.389275, 36.542885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228725, 34.132141, 36.424255>,  <31.398228, 33.977859, 36.353077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228725, 34.132141, 36.424255>,  <30.946222, 34.389275, 36.542885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228725, 34.132141, 36.424255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179814, -0.568066, 0.803099,
		-0.684737, -0.513868, -0.516793,
		0.706260, -0.642838, -0.296575,
		31.440603, 33.939289, 36.335281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635296, 33.708076, 36.594341>,  <30.946222, 34.389275, 36.542885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635296, 33.708076, 36.594341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030897, 33.649014, 36.591030>,  <31.268257, 33.613575, 36.589043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030897, 33.649014, 36.591030>,  <30.635296, 33.708076, 36.594341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030897, 33.649014, 36.591030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096654, -0.687710, 0.719523,
		-0.111936, -0.710811, -0.694420,
		0.989004, -0.147659, -0.008277,
		31.327599, 33.604717, 36.588547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744108, 33.030289, 36.426067>,  <30.635296, 33.708076, 36.594341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744108, 33.030289, 36.426067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076607, 33.147202, 36.615211>,  <31.276106, 33.217350, 36.728699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076607, 33.147202, 36.615211>,  <30.744108, 33.030289, 36.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076607, 33.147202, 36.615211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075534, -0.783343, 0.616984,
		0.550748, -0.548583, -0.629074,
		0.831247, 0.292286, 0.472861,
		31.325981, 33.234886, 36.757069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135361, 32.343006, 36.543125>,  <30.744108, 33.030289, 36.426067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135361, 32.343006, 36.543125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303802, 32.585388, 36.813084>,  <31.404867, 32.730820, 36.975060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303802, 32.585388, 36.813084>,  <31.135361, 32.343006, 36.543125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303802, 32.585388, 36.813084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091627, -0.711860, 0.696318,
		0.902373, -0.355061, -0.244245,
		0.421103, 0.605959, 0.674897,
		31.430134, 32.767178, 37.015553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649694, 31.971798, 36.992729>,  <31.135361, 32.343006, 36.543125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649694, 31.971798, 36.992729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553839, 32.280804, 37.227947>,  <31.496325, 32.466206, 37.369076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553839, 32.280804, 37.227947>,  <31.649694, 31.971798, 36.992729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553839, 32.280804, 37.227947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075628, -0.618703, 0.781976,
		0.967912, 0.142920, 0.206690,
		-0.239640, 0.772515, 0.588041,
		31.481947, 32.512558, 37.404358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135452, 32.075592, 37.604191>,  <31.649694, 31.971798, 36.992729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135452, 32.075592, 37.604191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803595, 32.253685, 37.738926>,  <31.604481, 32.360542, 37.819767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803595, 32.253685, 37.738926>,  <32.135452, 32.075592, 37.604191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803595, 32.253685, 37.738926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035668, -0.559825, 0.827842,
		0.557155, 0.698827, 0.448574,
		-0.829642, 0.445237, 0.336836,
		31.554703, 32.387257, 37.839977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166065, 31.977867, 38.260223>,  <32.135452, 32.075592, 37.604191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166065, 31.977867, 38.260223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787291, 32.103416, 38.232536>,  <31.560026, 32.178745, 38.215923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787291, 32.103416, 38.232536>,  <32.166065, 31.977867, 38.260223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787291, 32.103416, 38.232536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233354, -0.523272, 0.819593,
		0.221029, 0.792256, 0.568750,
		-0.946938, 0.313873, -0.069218,
		31.503208, 32.197578, 38.211773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875477, 32.040604, 38.913483>,  <32.166065, 31.977867, 38.260223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875477, 32.040604, 38.913483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558506, 31.982485, 38.676521>,  <31.368322, 31.947613, 38.534344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558506, 31.982485, 38.676521>,  <31.875477, 32.040604, 38.913483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558506, 31.982485, 38.676521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427259, -0.560923, 0.709095,
		-0.435323, 0.815018, 0.382412,
		-0.792429, -0.145296, -0.592407,
		31.320778, 31.938896, 38.498798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202848, 32.049549, 39.352802>,  <31.875477, 32.040604, 38.913483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202848, 32.049549, 39.352802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091452, 31.865049, 39.015831>,  <31.024614, 31.754349, 38.813648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091452, 31.865049, 39.015831>,  <31.202848, 32.049549, 39.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091452, 31.865049, 39.015831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614718, -0.588335, 0.525342,
		-0.737946, 0.664160, -0.119695,
		-0.278490, -0.461253, -0.842430,
		31.007904, 31.726673, 38.763103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432339, 32.072304, 39.405804>,  <31.202848, 32.049549, 39.352802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432339, 32.072304, 39.405804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573109, 31.788282, 39.161846>,  <30.657572, 31.617868, 39.015472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573109, 31.788282, 39.161846>,  <30.432339, 32.072304, 39.405804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573109, 31.788282, 39.161846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446983, -0.699968, 0.557001,
		-0.822407, 0.076589, -0.563720,
		0.351926, -0.710055, -0.609893,
		30.678686, 31.575266, 38.978878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792360, 31.745554, 39.232235>,  <30.432339, 32.072304, 39.405804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792360, 31.745554, 39.232235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091976, 31.487740, 39.170902>,  <30.271746, 31.333052, 39.134102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091976, 31.487740, 39.170902>,  <29.792360, 31.745554, 39.232235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091976, 31.487740, 39.170902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498343, -0.700628, 0.510661,
		-0.436566, -0.306096, -0.845999,
		0.749042, -0.644535, -0.153330,
		30.316689, 31.294378, 39.124905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473576, 31.120007, 39.144279>,  <29.792360, 31.745554, 39.232235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473576, 31.120007, 39.144279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856625, 31.029507, 39.215572>,  <30.086454, 30.975206, 39.258347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856625, 31.029507, 39.215572>,  <29.473576, 31.120007, 39.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856625, 31.029507, 39.215572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287534, -0.786898, 0.545999,
		0.016717, -0.574110, -0.818608,
		0.957625, -0.226250, 0.178231,
		30.143911, 30.961632, 39.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560844, 30.363985, 39.107552>,  <29.473576, 31.120007, 39.144279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560844, 30.363985, 39.107552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876259, 30.476887, 39.326107>,  <30.065508, 30.544628, 39.457241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876259, 30.476887, 39.326107>,  <29.560844, 30.363985, 39.107552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876259, 30.476887, 39.326107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206955, -0.714852, 0.667950,
		0.579119, -0.639781, -0.505274,
		0.788537, 0.282254, 0.546390,
		30.112820, 30.561563, 39.490025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888422, 29.684851, 39.291527>,  <29.560844, 30.363985, 39.107552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888422, 29.684851, 39.291527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014059, 29.957493, 39.555878>,  <30.089441, 30.121078, 39.714489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014059, 29.957493, 39.555878>,  <29.888422, 29.684851, 39.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014059, 29.957493, 39.555878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395351, -0.538972, 0.743779,
		0.863158, -0.494895, 0.100186,
		0.314095, 0.681607, 0.660875,
		30.108288, 30.161976, 39.754139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278503, 29.329414, 39.728870>,  <29.888422, 29.684851, 39.291527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278503, 29.329414, 39.728870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159174, 29.646978, 39.940796>,  <30.087576, 29.837517, 40.067951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159174, 29.646978, 39.940796>,  <30.278503, 29.329414, 39.728870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159174, 29.646978, 39.940796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248361, -0.600542, 0.760044,
		0.921585, 0.095153, 0.376333,
		-0.298324, 0.793912, 0.529818,
		30.069677, 29.885151, 40.099743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458403, 29.034706, 40.381481>,  <30.278503, 29.329414, 39.728870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458403, 29.034706, 40.381481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225750, 29.355448, 40.436234>,  <30.086159, 29.547894, 40.469086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225750, 29.355448, 40.436234>,  <30.458403, 29.034706, 40.381481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225750, 29.355448, 40.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468720, -0.467889, 0.749254,
		0.664835, 0.371633, 0.647984,
		-0.581632, 0.801853, 0.136876,
		30.051260, 29.596004, 40.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223740, 29.271757, 40.371632>,  <30.458403, 29.034706, 40.381481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223740, 29.271757, 40.371632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573587, 29.280546, 40.565357>,  <31.783497, 29.285820, 40.681591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573587, 29.280546, 40.565357>,  <31.223740, 29.271757, 40.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573587, 29.280546, 40.565357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439056, 0.387735, -0.810489,
		-0.205593, 0.921509, 0.329473,
		0.874621, 0.021973, 0.484310,
		31.835974, 29.287138, 40.710651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486387, 29.996340, 40.460472>,  <31.223740, 29.271757, 40.371632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486387, 29.996340, 40.460472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783171, 29.728249, 40.453671>,  <31.961241, 29.567394, 40.449589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783171, 29.728249, 40.453671>,  <31.486387, 29.996340, 40.460472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783171, 29.728249, 40.453671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504250, 0.574570, -0.644672,
		0.441845, 0.469749, 0.764270,
		0.741960, -0.670228, -0.017000,
		32.005760, 29.527180, 40.448570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041656, 30.346670, 40.338490>,  <31.486387, 29.996340, 40.460472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041656, 30.346670, 40.338490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186810, 29.985153, 40.247738>,  <32.273903, 29.768244, 40.193287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186810, 29.985153, 40.247738>,  <32.041656, 30.346670, 40.338490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186810, 29.985153, 40.247738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496903, 0.393656, -0.773383,
		0.788290, 0.167914, 0.591950,
		0.362887, -0.903792, -0.226878,
		32.295677, 29.714016, 40.179676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767658, 30.449055, 40.025654>,  <32.041656, 30.346670, 40.338490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767658, 30.449055, 40.025654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653469, 30.086111, 39.902237>,  <32.584953, 29.868345, 39.828186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653469, 30.086111, 39.902237>,  <32.767658, 30.449055, 40.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653469, 30.086111, 39.902237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337523, 0.206127, -0.918472,
		0.896985, -0.366343, 0.247411,
		-0.285477, -0.907361, -0.308542,
		32.567825, 29.813902, 39.809673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385952, 30.127470, 39.816334>,  <32.767658, 30.449055, 40.025654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385952, 30.127470, 39.816334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063732, 29.984213, 39.627518>,  <32.870399, 29.898258, 39.514229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063732, 29.984213, 39.627518>,  <33.385952, 30.127470, 39.816334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063732, 29.984213, 39.627518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353835, 0.348257, -0.868054,
		0.475281, -0.866285, -0.153814,
		-0.805549, -0.358145, -0.472041,
		32.822067, 29.876770, 39.485905>
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
