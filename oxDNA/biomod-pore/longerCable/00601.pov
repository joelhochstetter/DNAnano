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
	<24.426037, 34.957664, 34.777405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296696, 34.982014, 35.155132>,  <24.219091, 34.996624, 35.381767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296696, 34.982014, 35.155132>,  <24.426037, 34.957664, 34.777405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296696, 34.982014, 35.155132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731208, 0.649507, 0.208509,
		-0.600647, 0.757915, -0.254534,
		-0.323354, 0.060877, 0.944318,
		24.199690, 35.000278, 35.438427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237822, 35.626217, 34.876869>,  <24.426037, 34.957664, 34.777405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237822, 35.626217, 34.876869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444317, 35.884850, 35.101521>,  <24.568214, 36.040031, 35.236313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444317, 35.884850, 35.101521>,  <24.237822, 35.626217, 34.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444317, 35.884850, 35.101521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027256, 0.643035, -0.765352,
		-0.856012, 0.410410, 0.314334,
		0.516236, 0.646583, 0.561632,
		24.599188, 36.078823, 35.270012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.862997, 36.268299, 34.916840>,  <24.237822, 35.626217, 34.876869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.862997, 36.268299, 34.916840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257563, 36.306263, 34.970474>,  <24.494303, 36.329041, 35.002655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.257563, 36.306263, 34.970474>,  <23.862997, 36.268299, 34.916840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.257563, 36.306263, 34.970474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024748, 0.721074, -0.692416,
		-0.162403, 0.686328, 0.708929,
		0.986414, 0.094906, 0.134090,
		24.553488, 36.334736, 35.010700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066530, 37.077816, 34.809608>,  <23.862997, 36.268299, 34.916840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066530, 37.077816, 34.809608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378418, 36.838329, 34.736320>,  <24.565552, 36.694637, 34.692348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378418, 36.838329, 34.736320>,  <24.066530, 37.077816, 34.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378418, 36.838329, 34.736320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333100, 0.644436, -0.688293,
		0.530169, 0.475645, 0.701913,
		0.779721, -0.598719, -0.183223,
		24.612335, 36.658714, 34.681355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726709, 37.304550, 34.852058>,  <24.066530, 37.077816, 34.809608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726709, 37.304550, 34.852058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704945, 37.063618, 34.533501>,  <24.691885, 36.919060, 34.342365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704945, 37.063618, 34.533501>,  <24.726709, 37.304550, 34.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704945, 37.063618, 34.533501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536839, 0.654850, -0.531955,
		0.841929, -0.456479, 0.287721,
		-0.054412, -0.602328, -0.796392,
		24.688622, 36.882919, 34.294582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457058, 37.393879, 34.565216>,  <24.726709, 37.304550, 34.852058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457058, 37.393879, 34.565216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310560, 37.739723, 34.427631>,  <25.222662, 37.947231, 34.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310560, 37.739723, 34.427631>,  <25.457058, 37.393879, 34.565216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310560, 37.739723, 34.427631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556318, 0.499763, 0.663888,
		0.745906, 0.051794, -0.664035,
		-0.366245, 0.864612, -0.343962,
		25.200687, 37.999107, 34.324444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073780, 37.788918, 34.611450>,  <25.457058, 37.393879, 34.565216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073780, 37.788918, 34.611450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764162, 38.037975, 34.565544>,  <25.578392, 38.187408, 34.537998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764162, 38.037975, 34.565544>,  <26.073780, 37.788918, 34.611450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764162, 38.037975, 34.565544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437693, 0.657222, 0.613582,
		0.457471, 0.424706, -0.781246,
		-0.774045, 0.622642, -0.114769,
		25.531948, 38.224770, 34.531113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357697, 38.339123, 34.387661>,  <26.073780, 37.788918, 34.611450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357697, 38.339123, 34.387661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019445, 38.426537, 34.582455>,  <25.816494, 38.478985, 34.699329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019445, 38.426537, 34.582455>,  <26.357697, 38.339123, 34.387661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019445, 38.426537, 34.582455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530905, 0.438775, 0.724994,
		-0.055239, 0.871618, -0.487063,
		-0.845629, 0.218536, 0.486984,
		25.765757, 38.492096, 34.728550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349014, 39.115845, 34.460880>,  <26.357697, 38.339123, 34.387661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349014, 39.115845, 34.460880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147923, 38.917900, 34.744392>,  <26.027267, 38.799133, 34.914501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147923, 38.917900, 34.744392>,  <26.349014, 39.115845, 34.460880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147923, 38.917900, 34.744392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455450, 0.545265, 0.703740,
		-0.734730, 0.676607, -0.048736,
		-0.502730, -0.494862, 0.708784,
		25.997103, 38.769440, 34.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888912, 38.723587, 34.797943>,  <26.349014, 39.115845, 34.460880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888912, 38.723587, 34.797943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231653, 38.917778, 34.728531>,  <27.437298, 39.034294, 34.686882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231653, 38.917778, 34.728531>,  <26.888912, 38.723587, 34.797943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231653, 38.917778, 34.728531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279421, -0.720166, -0.635048,
		-0.433272, 0.495655, -0.752729,
		0.856854, 0.485477, -0.173531,
		27.488710, 39.063419, 34.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987440, 38.982525, 34.055176>,  <26.888912, 38.723587, 34.797943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987440, 38.982525, 34.055176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358736, 38.878807, 34.161861>,  <27.581514, 38.816578, 34.225872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358736, 38.878807, 34.161861>,  <26.987440, 38.982525, 34.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358736, 38.878807, 34.161861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059148, -0.605004, -0.794022,
		0.367245, 0.752820, -0.546254,
		0.928242, -0.259291, 0.266712,
		27.637209, 38.801022, 34.241875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084229, 38.965076, 33.303280>,  <26.987440, 38.982525, 34.055176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084229, 38.965076, 33.303280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154503, 39.174953, 32.970093>,  <27.196667, 39.300880, 32.770180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154503, 39.174953, 32.970093>,  <27.084229, 38.965076, 33.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154503, 39.174953, 32.970093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883081, 0.289961, 0.368904,
		0.435088, -0.800389, -0.412402,
		0.175686, 0.524691, -0.832967,
		27.207209, 39.332359, 32.720203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731874, 39.078529, 33.262012>,  <27.084229, 38.965076, 33.303280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731874, 39.078529, 33.262012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641617, 39.336712, 32.970131>,  <27.587461, 39.491623, 32.795002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641617, 39.336712, 32.970131>,  <27.731874, 39.078529, 33.262012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641617, 39.336712, 32.970131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891363, 0.439051, 0.112725,
		0.393137, -0.624995, -0.674407,
		-0.225646, 0.645458, -0.729704,
		27.573923, 39.530350, 32.751221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200006, 38.974915, 32.752491>,  <27.731874, 39.078529, 33.262012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200006, 38.974915, 32.752491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043049, 39.342773, 32.745937>,  <27.948874, 39.563488, 32.742004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043049, 39.342773, 32.745937>,  <28.200006, 38.974915, 32.752491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043049, 39.342773, 32.745937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919335, 0.392701, 0.024674,
		0.029127, -0.005384, -0.999561,
		-0.392396, 0.919651, -0.016388,
		27.925331, 39.618668, 32.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603714, 39.335808, 32.253174>,  <28.200006, 38.974915, 32.752491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603714, 39.335808, 32.253174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454718, 39.573586, 32.538239>,  <28.365320, 39.716251, 32.709278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454718, 39.573586, 32.538239>,  <28.603714, 39.335808, 32.253174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454718, 39.573586, 32.538239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906351, 0.398056, 0.141701,
		-0.199448, 0.698708, -0.687043,
		-0.372489, 0.594440, 0.712666,
		28.342972, 39.751919, 32.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730850, 39.978546, 32.019951>,  <28.603714, 39.335808, 32.253174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730850, 39.978546, 32.019951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711649, 40.034840, 32.415504>,  <28.700129, 40.068615, 32.652836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711649, 40.034840, 32.415504>,  <28.730850, 39.978546, 32.019951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711649, 40.034840, 32.415504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802887, 0.594384, -0.045614,
		-0.594196, 0.791772, -0.141522,
		-0.048002, 0.140730, 0.988884,
		28.697248, 40.077057, 32.712170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735825, 40.749664, 32.206470>,  <28.730850, 39.978546, 32.019951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735825, 40.749664, 32.206470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876188, 40.505508, 32.490524>,  <28.960407, 40.359016, 32.660957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876188, 40.505508, 32.490524>,  <28.735825, 40.749664, 32.206470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876188, 40.505508, 32.490524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771499, 0.618252, 0.150178,
		-0.530710, 0.495170, 0.687862,
		0.350908, -0.610385, 0.710136,
		28.981461, 40.322392, 32.703564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760328, 40.955452, 32.902557>,  <28.735825, 40.749664, 32.206470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760328, 40.955452, 32.902557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069048, 40.701969, 32.923512>,  <29.254280, 40.549881, 32.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069048, 40.701969, 32.923512>,  <28.760328, 40.955452, 32.902557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069048, 40.701969, 32.923512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540147, 0.696857, 0.471838,
		-0.335509, -0.335870, 0.880128,
		0.771800, -0.633704, 0.052383,
		29.300589, 40.511856, 32.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092613, 40.998775, 33.577194>,  <28.760328, 40.955452, 32.902557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092613, 40.998775, 33.577194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389257, 40.849583, 33.354160>,  <29.567244, 40.760067, 33.220341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389257, 40.849583, 33.354160>,  <29.092613, 40.998775, 33.577194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389257, 40.849583, 33.354160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657044, 0.571520, 0.491587,
		0.135317, -0.730922, 0.668911,
		0.741609, -0.372984, -0.557584,
		29.611740, 40.737686, 33.186886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526758, 41.049305, 34.037338>,  <29.092613, 40.998775, 33.577194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526758, 41.049305, 34.037338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760113, 40.989357, 33.718040>,  <29.900126, 40.953388, 33.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760113, 40.989357, 33.718040>,  <29.526758, 41.049305, 34.037338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760113, 40.989357, 33.718040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799255, 0.280660, 0.531433,
		0.144392, -0.948034, 0.283516,
		0.583388, -0.149867, -0.798247,
		29.935129, 40.944397, 33.478565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131731, 40.566795, 34.232925>,  <29.526758, 41.049305, 34.037338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131731, 40.566795, 34.232925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192768, 40.821655, 33.930733>,  <30.229391, 40.974571, 33.749416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192768, 40.821655, 33.930733>,  <30.131731, 40.566795, 34.232925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192768, 40.821655, 33.930733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811331, 0.355735, 0.463891,
		0.564320, -0.683733, -0.462658,
		0.152594, 0.637152, -0.755482,
		30.238546, 41.012802, 33.704086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815254, 41.018764, 34.351944>,  <30.131731, 40.566795, 34.232925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815254, 41.018764, 34.351944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951904, 40.743305, 34.096111>,  <31.033894, 40.578030, 33.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951904, 40.743305, 34.096111>,  <30.815254, 41.018764, 34.351944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951904, 40.743305, 34.096111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814385, -0.122774, 0.567188,
		-0.469115, -0.714629, 0.518880,
		0.341624, -0.688645, -0.639579,
		31.054392, 40.536713, 33.904236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920774, 40.438602, 34.594944>,  <30.815254, 41.018764, 34.351944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920774, 40.438602, 34.594944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183569, 40.420918, 34.293903>,  <31.341246, 40.410309, 34.113277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183569, 40.420918, 34.293903>,  <30.920774, 40.438602, 34.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183569, 40.420918, 34.293903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702244, -0.327283, 0.632250,
		-0.274265, -0.943892, -0.183975,
		0.656988, -0.044208, -0.752604,
		31.380665, 40.407654, 34.068123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429472, 39.735786, 34.620110>,  <30.920774, 40.438602, 34.594944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429472, 39.735786, 34.620110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596897, 40.053638, 34.444214>,  <31.697351, 40.244350, 34.338676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596897, 40.053638, 34.444214>,  <31.429472, 39.735786, 34.620110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596897, 40.053638, 34.444214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858410, -0.188052, 0.477252,
		0.296545, -0.577234, -0.760830,
		0.418561, 0.794630, -0.439737,
		31.722466, 40.292027, 34.312294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089798, 39.481464, 34.564262>,  <31.429472, 39.735786, 34.620110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089798, 39.481464, 34.564262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116501, 39.874477, 34.494781>,  <32.132523, 40.110287, 34.453091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116501, 39.874477, 34.494781>,  <32.089798, 39.481464, 34.564262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116501, 39.874477, 34.494781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865504, 0.029592, 0.500028,
		0.496434, -0.183724, -0.848410,
		0.066761, 0.982532, -0.173705,
		32.136528, 40.169235, 34.442669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680508, 39.749516, 34.237640>,  <32.089798, 39.481464, 34.564262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680508, 39.749516, 34.237640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545780, 40.034992, 34.483307>,  <32.464943, 40.206276, 34.630707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545780, 40.034992, 34.483307>,  <32.680508, 39.749516, 34.237640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545780, 40.034992, 34.483307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862902, -0.027040, 0.504648,
		0.376768, 0.699943, -0.606734,
		-0.336818, 0.713687, 0.614170,
		32.444736, 40.249100, 34.667557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305336, 39.286469, 33.984245>,  <32.680508, 39.749516, 34.237640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305336, 39.286469, 33.984245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991146, 39.113445, 34.161301>,  <32.802631, 39.009632, 34.267536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991146, 39.113445, 34.161301>,  <33.305336, 39.286469, 33.984245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991146, 39.113445, 34.161301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149882, -0.826865, -0.542061,
		0.600477, -0.359428, 0.714310,
		-0.785470, -0.432557, 0.442641,
		32.755505, 38.983677, 34.294094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511246, 38.681797, 34.235119>,  <33.305336, 39.286469, 33.984245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511246, 38.681797, 34.235119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119106, 38.668240, 34.157391>,  <32.883823, 38.660107, 34.110752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119106, 38.668240, 34.157391>,  <33.511246, 38.681797, 34.235119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119106, 38.668240, 34.157391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139456, -0.815807, -0.561258,
		-0.139506, -0.577330, 0.804505,
		-0.980352, -0.033894, -0.194322,
		32.825001, 38.658070, 34.099094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279606, 37.893852, 34.295303>,  <33.511246, 38.681797, 34.235119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279606, 37.893852, 34.295303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037376, 38.111176, 34.062721>,  <32.892040, 38.241570, 33.923172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037376, 38.111176, 34.062721>,  <33.279606, 37.893852, 34.295303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037376, 38.111176, 34.062721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030420, -0.714330, -0.699148,
		-0.795208, -0.441073, 0.416051,
		-0.605573, 0.543312, -0.581458,
		32.855705, 38.274170, 33.888283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009178, 37.366402, 33.800446>,  <33.279606, 37.893852, 34.295303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009178, 37.366402, 33.800446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918930, 37.711014, 33.618519>,  <32.864780, 37.917782, 33.509365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918930, 37.711014, 33.618519>,  <33.009178, 37.366402, 33.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918930, 37.711014, 33.618519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177914, -0.495438, -0.850228,
		-0.957832, -0.110913, 0.265060,
		-0.225622, 0.861533, -0.454813,
		32.851242, 37.969475, 33.482075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522400, 36.954346, 33.461384>,  <33.009178, 37.366402, 33.800446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522400, 36.954346, 33.461384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678364, 37.271423, 33.273937>,  <32.771942, 37.461670, 33.161469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678364, 37.271423, 33.273937>,  <32.522400, 36.954346, 33.461384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678364, 37.271423, 33.273937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050864, -0.489579, -0.870474,
		-0.919445, 0.363246, -0.150574,
		0.389914, 0.792695, -0.468617,
		32.795338, 37.509232, 33.133350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253578, 37.010582, 32.866074>,  <32.522400, 36.954346, 33.461384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253578, 37.010582, 32.866074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587341, 37.210541, 32.773239>,  <32.787601, 37.330517, 32.717541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587341, 37.210541, 32.773239>,  <32.253578, 37.010582, 32.866074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587341, 37.210541, 32.773239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093340, -0.543183, -0.834410,
		-0.543183, 0.674577, -0.499898,
		0.834410, 0.499898, -0.232083,
		32.837666, 37.360512, 32.703613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232346, 37.169407, 32.194157>,  <32.253578, 37.010582, 32.866074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232346, 37.169407, 32.194157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620338, 37.188465, 32.289543>,  <32.853134, 37.199898, 32.346775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620338, 37.188465, 32.289543>,  <32.232346, 37.169407, 32.194157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620338, 37.188465, 32.289543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222017, -0.573593, -0.788479,
		0.099218, 0.817754, -0.566952,
		0.969982, 0.047642, 0.238466,
		32.911331, 37.202759, 32.361084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685349, 37.525288, 31.658144>,  <32.232346, 37.169407, 32.194157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685349, 37.525288, 31.658144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857937, 37.235561, 31.873251>,  <32.961491, 37.061726, 32.002316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857937, 37.235561, 31.873251>,  <32.685349, 37.525288, 31.658144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857937, 37.235561, 31.873251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212873, -0.497533, -0.840920,
		0.876650, 0.477312, -0.060486,
		0.431475, -0.724316, 0.537769,
		32.987381, 37.018265, 32.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293358, 37.277626, 31.341814>,  <32.685349, 37.525288, 31.658144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293358, 37.277626, 31.341814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146824, 36.963058, 31.540752>,  <33.058903, 36.774319, 31.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146824, 36.963058, 31.540752>,  <33.293358, 37.277626, 31.341814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146824, 36.963058, 31.540752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429250, -0.617058, -0.659533,
		0.825558, -0.028122, 0.563617,
		-0.366332, -0.786415, 0.497345,
		33.036922, 36.727135, 31.689957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527462, 37.518497, 32.015022>,  <33.293358, 37.277626, 31.341814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527462, 37.518497, 32.015022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831741, 37.736809, 31.874472>,  <34.014309, 37.867794, 31.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831741, 37.736809, 31.874472>,  <33.527462, 37.518497, 32.015022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831741, 37.736809, 31.874472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577688, -0.322400, 0.749890,
		0.295988, -0.773427, -0.560538,
		0.760702, 0.545774, -0.351372,
		34.059952, 37.900539, 31.769060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253437, 37.108063, 31.932671>,  <33.527462, 37.518497, 32.015022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253437, 37.108063, 31.932671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334930, 37.462490, 32.099224>,  <34.383827, 37.675148, 32.199158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334930, 37.462490, 32.099224>,  <34.253437, 37.108063, 31.932671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334930, 37.462490, 32.099224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550768, -0.455353, 0.699506,
		0.809411, 0.086817, -0.580790,
		0.203735, 0.886068, 0.416384,
		34.396049, 37.728310, 32.224140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183884, 37.197567, 32.702831>,  <34.253437, 37.108063, 31.932671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183884, 37.197567, 32.702831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803665, 37.186481, 32.579090>,  <33.575535, 37.179832, 32.504845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803665, 37.186481, 32.579090>,  <34.183884, 37.197567, 32.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803665, 37.186481, 32.579090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259213, 0.619479, 0.740983,
		0.171104, 0.784524, -0.596024,
		-0.950543, -0.027712, -0.309354,
		33.518501, 37.178169, 32.486282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882881, 38.008198, 32.576244>,  <34.183884, 37.197567, 32.702831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882881, 38.008198, 32.576244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587723, 37.745686, 32.639248>,  <33.410629, 37.588177, 32.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587723, 37.745686, 32.639248>,  <33.882881, 38.008198, 32.576244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587723, 37.745686, 32.639248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368001, 0.586864, 0.721225,
		-0.565763, 0.474224, -0.674555,
		-0.737894, -0.656279, 0.157511,
		33.366356, 37.548801, 32.686501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082905, 37.833748, 33.280598>,  <33.882881, 38.008198, 32.576244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082905, 37.833748, 33.280598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982140, 37.530220, 33.520844>,  <33.921680, 37.348106, 33.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982140, 37.530220, 33.520844>,  <34.082905, 37.833748, 33.280598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982140, 37.530220, 33.520844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445477, 0.460044, 0.768056,
		-0.859123, 0.461042, 0.222145,
		-0.251910, -0.758815, 0.600618,
		33.906567, 37.302574, 33.701027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108170, 38.090973, 34.033916>,  <34.082905, 37.833748, 33.280598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108170, 38.090973, 34.033916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351929, 38.389122, 34.142029>,  <34.498184, 38.568012, 34.206898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351929, 38.389122, 34.142029>,  <34.108170, 38.090973, 34.033916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351929, 38.389122, 34.142029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333112, 0.068648, -0.940385,
		-0.719491, 0.663105, -0.206458,
		0.609401, 0.745372, 0.270280,
		34.534748, 38.612732, 34.223114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036823, 38.788094, 33.743351>,  <34.108170, 38.090973, 34.033916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036823, 38.788094, 33.743351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418980, 38.699486, 33.821491>,  <34.648273, 38.646320, 33.868374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418980, 38.699486, 33.821491>,  <34.036823, 38.788094, 33.743351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418980, 38.699486, 33.821491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260716, 0.321747, -0.910223,
		0.138781, 0.920547, 0.365148,
		0.955388, -0.221522, 0.195349,
		34.705597, 38.633030, 33.880096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510456, 39.420486, 33.748138>,  <34.036823, 38.788094, 33.743351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510456, 39.420486, 33.748138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756329, 39.125767, 33.635498>,  <34.903851, 38.948936, 33.567913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756329, 39.125767, 33.635498>,  <34.510456, 39.420486, 33.748138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756329, 39.125767, 33.635498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296360, 0.546580, -0.783211,
		0.730987, 0.397967, 0.554328,
		0.614677, -0.736799, -0.281602,
		34.940731, 38.904728, 33.551018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206417, 39.548061, 33.685848>,  <34.510456, 39.420486, 33.748138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206417, 39.548061, 33.685848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090260, 39.288567, 33.404476>,  <35.020565, 39.132870, 33.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090260, 39.288567, 33.404476>,  <35.206417, 39.548061, 33.685848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090260, 39.288567, 33.404476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349226, 0.612550, -0.709100,
		0.890906, -0.451572, 0.048677,
		-0.290393, -0.648741, -0.703426,
		35.003143, 39.093945, 33.193447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565308, 39.704319, 33.191494>,  <35.206417, 39.548061, 33.685848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565308, 39.704319, 33.191494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349983, 39.444870, 32.976273>,  <35.220787, 39.289200, 32.847137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349983, 39.444870, 32.976273>,  <35.565308, 39.704319, 33.191494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349983, 39.444870, 32.976273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342838, 0.414692, -0.842908,
		0.769859, -0.638213, -0.000860,
		-0.538311, -0.648625, -0.538058,
		35.188488, 39.250282, 32.814854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997761, 39.512802, 32.576290>,  <35.565308, 39.704319, 33.191494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997761, 39.512802, 32.576290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611771, 39.458683, 32.486393>,  <35.380177, 39.426212, 32.432453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611771, 39.458683, 32.486393>,  <35.997761, 39.512802, 32.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611771, 39.458683, 32.486393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113928, 0.555575, -0.823624,
		0.236300, -0.820384, -0.520703,
		-0.964978, -0.135300, -0.224747,
		35.322277, 39.418095, 32.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993191, 39.357010, 31.880512>,  <35.997761, 39.512802, 32.576290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993191, 39.357010, 31.880512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644814, 39.508862, 32.005306>,  <35.435787, 39.599972, 32.080181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644814, 39.508862, 32.005306>,  <35.993191, 39.357010, 31.880512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644814, 39.508862, 32.005306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098554, 0.756969, -0.645976,
		-0.481395, -0.531862, -0.696693,
		-0.870945, 0.379632, 0.311984,
		35.383530, 39.622749, 32.098900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649082, 39.423512, 32.089405>,  <35.993191, 39.357010, 31.880512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649082, 39.423512, 32.089405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908371, 39.308022, 32.371243>,  <37.063942, 39.238728, 32.540344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908371, 39.308022, 32.371243>,  <36.649082, 39.423512, 32.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908371, 39.308022, 32.371243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485364, -0.869650, 0.090172,
		0.586714, -0.400435, -0.703860,
		0.648219, -0.288723, 0.704593,
		37.102837, 39.221405, 32.582619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227909, 38.831894, 32.001411>,  <36.649082, 39.423512, 32.089405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227909, 38.831894, 32.001411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081005, 38.857979, 32.372543>,  <36.992863, 38.873631, 32.595222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081005, 38.857979, 32.372543>,  <37.227909, 38.831894, 32.001411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081005, 38.857979, 32.372543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204341, -0.978825, -0.012091,
		0.907393, -0.194034, 0.372812,
		-0.367264, 0.065209, 0.927828,
		36.970825, 38.877541, 32.650890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319202, 38.261475, 32.165539>,  <37.227909, 38.831894, 32.001411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319202, 38.261475, 32.165539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031792, 38.404720, 32.404022>,  <36.859344, 38.490669, 32.547112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031792, 38.404720, 32.404022>,  <37.319202, 38.261475, 32.165539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031792, 38.404720, 32.404022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365557, -0.923745, 0.114298,
		0.591678, -0.135823, 0.794650,
		-0.718530, 0.358117, 0.596211,
		36.816235, 38.512154, 32.582886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400909, 37.990208, 32.729115>,  <37.319202, 38.261475, 32.165539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400909, 37.990208, 32.729115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010113, 38.074944, 32.719238>,  <36.775635, 38.125786, 32.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010113, 38.074944, 32.719238>,  <37.400909, 37.990208, 32.729115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010113, 38.074944, 32.719238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213113, -0.965115, 0.152107,
		0.008390, 0.153870, 0.988055,
		-0.976992, 0.211843, -0.024694,
		36.717014, 38.138496, 32.711830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176723, 37.428684, 33.309349>,  <37.400909, 37.990208, 32.729115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176723, 37.428684, 33.309349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250954, 37.491482, 33.697353>,  <37.295490, 37.529160, 33.930157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250954, 37.491482, 33.697353>,  <37.176723, 37.428684, 33.309349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250954, 37.491482, 33.697353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453786, -0.861894, 0.226310,
		0.871574, -0.482173, -0.088700,
		0.185571, 0.156995, 0.970008,
		37.306625, 37.538582, 33.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547768, 36.825600, 33.715302>,  <37.176723, 37.428684, 33.309349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547768, 36.825600, 33.715302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314182, 37.041637, 33.957718>,  <37.174030, 37.171261, 34.103168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314182, 37.041637, 33.957718>,  <37.547768, 36.825600, 33.715302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314182, 37.041637, 33.957718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541995, -0.815187, 0.204234,
		0.604345, -0.209208, 0.768765,
		-0.583960, 0.540095, 0.606044,
		37.138996, 37.203667, 34.139530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277863, 36.447220, 34.326641>,  <37.547768, 36.825600, 33.715302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277863, 36.447220, 34.326641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991474, 36.717564, 34.256672>,  <36.819641, 36.879772, 34.214691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991474, 36.717564, 34.256672>,  <37.277863, 36.447220, 34.326641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991474, 36.717564, 34.256672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691691, -0.720691, 0.046559,
		-0.094596, 0.154325, 0.983481,
		-0.715971, 0.675861, -0.174920,
		36.776684, 36.920322, 34.204197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820492, 36.488174, 34.914223>,  <37.277863, 36.447220, 34.326641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820492, 36.488174, 34.914223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599430, 36.605759, 34.602283>,  <36.466793, 36.676308, 34.415119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599430, 36.605759, 34.602283>,  <36.820492, 36.488174, 34.914223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599430, 36.605759, 34.602283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741273, -0.601049, 0.298756,
		-0.380904, 0.743188, 0.550076,
		-0.552654, 0.293959, -0.779847,
		36.433632, 36.693947, 34.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107723, 36.936905, 34.997772>,  <36.820492, 36.488174, 34.914223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107723, 36.936905, 34.997772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111958, 36.696144, 34.678375>,  <36.114498, 36.551685, 34.486736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111958, 36.696144, 34.678375>,  <36.107723, 36.936905, 34.997772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111958, 36.696144, 34.678375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811652, -0.471583, 0.344717,
		-0.584045, 0.644453, -0.493530,
		0.010586, -0.601906, -0.798497,
		36.115135, 36.515572, 34.438828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378223, 36.831959, 35.015709>,  <36.107723, 36.936905, 34.997772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378223, 36.831959, 35.015709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545795, 36.550381, 34.786285>,  <35.646339, 36.381435, 34.648632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545795, 36.550381, 34.786285>,  <35.378223, 36.831959, 35.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545795, 36.550381, 34.786285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785952, -0.597441, 0.159198,
		-0.454731, 0.384094, -0.803549,
		0.418926, -0.703944, -0.573554,
		35.671474, 36.339199, 34.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778633, 36.415623, 34.698082>,  <35.378223, 36.831959, 35.015709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778633, 36.415623, 34.698082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100647, 36.180481, 34.666206>,  <35.293854, 36.039394, 34.647083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100647, 36.180481, 34.666206>,  <34.778633, 36.415623, 34.698082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100647, 36.180481, 34.666206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546156, -0.786875, 0.287300,
		-0.231592, -0.187766, -0.954520,
		0.805033, -0.587853, -0.079685,
		35.342155, 36.004124, 34.642300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520836, 35.837769, 34.362846>,  <34.778633, 36.415623, 34.698082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520836, 35.837769, 34.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849297, 35.688183, 34.535297>,  <35.046371, 35.598431, 34.638767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849297, 35.688183, 34.535297>,  <34.520836, 35.837769, 34.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849297, 35.688183, 34.535297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491778, -0.846962, 0.202014,
		0.289601, -0.377901, -0.879387,
		0.821149, -0.373960, 0.431124,
		35.095642, 35.575996, 34.664635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627934, 35.208218, 34.162582>,  <34.520836, 35.837769, 34.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627934, 35.208218, 34.162582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886391, 35.178871, 34.466454>,  <35.041466, 35.161263, 34.648777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886391, 35.178871, 34.466454>,  <34.627934, 35.208218, 34.162582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886391, 35.178871, 34.466454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436071, -0.852388, 0.288575,
		0.626371, -0.517736, -0.582760,
		0.646144, -0.073370, 0.759681,
		35.080235, 35.156860, 34.694359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047672, 34.590557, 34.103222>,  <34.627934, 35.208218, 34.162582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047672, 34.590557, 34.103222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033909, 34.690807, 34.490211>,  <35.025650, 34.750957, 34.722404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033909, 34.690807, 34.490211>,  <35.047672, 34.590557, 34.103222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033909, 34.690807, 34.490211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586477, -0.788904, 0.183510,
		0.809235, -0.561087, 0.174127,
		-0.034404, 0.250624, 0.967473,
		35.023586, 34.765995, 34.780453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397110, 34.101086, 34.536854>,  <35.047672, 34.590557, 34.103222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397110, 34.101086, 34.536854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095947, 34.283463, 34.726692>,  <34.915249, 34.392891, 34.840595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095947, 34.283463, 34.726692>,  <35.397110, 34.101086, 34.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095947, 34.283463, 34.726692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423985, -0.887584, 0.180085,
		0.503352, -0.065633, 0.861585,
		-0.752910, 0.455945, 0.474595,
		34.870075, 34.420246, 34.869072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026096, 33.932766, 34.064671>,  <35.397110, 34.101086, 34.536854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026096, 33.932766, 34.064671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230320, 34.251343, 34.194294>,  <36.352856, 34.442490, 34.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230320, 34.251343, 34.194294>,  <36.026096, 33.932766, 34.064671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230320, 34.251343, 34.194294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741374, -0.216853, -0.635089,
		-0.435536, 0.564500, -0.701176,
		0.510561, 0.796438, 0.324059,
		36.383488, 34.490273, 34.291512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186211, 34.267796, 33.451012>,  <36.026096, 33.932766, 34.064671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186211, 34.267796, 33.451012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896286, 34.510769, 33.320984>,  <35.722332, 34.656551, 33.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896286, 34.510769, 33.320984>,  <36.186211, 34.267796, 33.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896286, 34.510769, 33.320984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304336, -0.141000, -0.942072,
		-0.618080, -0.781757, -0.082665,
		-0.724815, 0.607433, -0.325066,
		35.678841, 34.692997, 33.223465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900723, 33.993771, 32.829712>,  <36.186211, 34.267796, 33.451012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900723, 33.993771, 32.829712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831448, 34.387695, 32.834488>,  <35.789883, 34.624050, 32.837353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831448, 34.387695, 32.834488>,  <35.900723, 33.993771, 32.829712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831448, 34.387695, 32.834488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190540, 0.045399, -0.980629,
		-0.966281, -0.167560, -0.195510,
		-0.173190, 0.984816, 0.011941,
		35.779491, 34.683140, 32.838070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729595, 34.191765, 32.110931>,  <35.900723, 33.993771, 32.829712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729595, 34.191765, 32.110931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769432, 34.564308, 32.251019>,  <35.793335, 34.787834, 32.335072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769432, 34.564308, 32.251019>,  <35.729595, 34.191765, 32.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769432, 34.564308, 32.251019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007486, 0.351258, -0.936249,
		-0.995000, 0.095869, 0.028012,
		0.099597, 0.931358, 0.350219,
		35.799313, 34.843716, 32.356083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215084, 34.698032, 31.830193>,  <35.729595, 34.191765, 32.110931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215084, 34.698032, 31.830193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567715, 34.864876, 31.918594>,  <35.779293, 34.964981, 31.971636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567715, 34.864876, 31.918594>,  <35.215084, 34.698032, 31.830193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567715, 34.864876, 31.918594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035498, 0.408284, -0.912164,
		-0.470704, 0.811988, 0.345127,
		0.881577, 0.417108, 0.221005,
		35.832188, 34.990009, 31.984896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272282, 35.471638, 31.641727>,  <35.215084, 34.698032, 31.830193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272282, 35.471638, 31.641727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641071, 35.316734, 31.641531>,  <35.862347, 35.223793, 31.641413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641071, 35.316734, 31.641531>,  <35.272282, 35.471638, 31.641727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641071, 35.316734, 31.641531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130125, 0.310992, -0.941462,
		0.364738, 0.867939, 0.337117,
		0.921973, -0.387254, -0.000490,
		35.917664, 35.200558, 31.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782768, 36.024117, 31.396549>,  <35.272282, 35.471638, 31.641727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782768, 36.024117, 31.396549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956211, 35.670712, 31.325676>,  <36.060276, 35.458668, 31.283152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956211, 35.670712, 31.325676>,  <35.782768, 36.024117, 31.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956211, 35.670712, 31.325676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375749, 0.355997, -0.855616,
		0.819022, 0.304425, 0.486342,
		0.433607, -0.883511, -0.177182,
		36.086292, 35.405659, 31.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438755, 36.237003, 31.105024>,  <35.782768, 36.024117, 31.396549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438755, 36.237003, 31.105024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350822, 35.865101, 30.986883>,  <36.298065, 35.641960, 30.915998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350822, 35.865101, 30.986883>,  <36.438755, 36.237003, 31.105024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350822, 35.865101, 30.986883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241483, 0.241477, -0.939881,
		0.945178, -0.277936, 0.171436,
		-0.219828, -0.929754, -0.295355,
		36.284874, 35.586174, 30.898277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995129, 36.035648, 30.691515>,  <36.438755, 36.237003, 31.105024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995129, 36.035648, 30.691515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691586, 35.798080, 30.584633>,  <36.509460, 35.655540, 30.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691586, 35.798080, 30.584633>,  <36.995129, 36.035648, 30.691515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691586, 35.798080, 30.584633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104339, 0.294116, -0.950057,
		0.642848, -0.748835, -0.161223,
		-0.758854, -0.593920, -0.267205,
		36.463928, 35.619904, 30.504471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235153, 35.588017, 30.097458>,  <36.995129, 36.035648, 30.691515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235153, 35.588017, 30.097458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837341, 35.626995, 30.082376>,  <36.598656, 35.650383, 30.073328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837341, 35.626995, 30.082376>,  <37.235153, 35.588017, 30.097458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837341, 35.626995, 30.082376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051640, 0.144721, -0.988124,
		-0.090833, -0.984662, -0.148961,
		-0.994526, 0.097447, -0.037703,
		36.538982, 35.656227, 30.071066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021770, 35.167862, 29.497509>,  <37.235153, 35.588017, 30.097458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021770, 35.167862, 29.497509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689896, 35.383270, 29.556326>,  <36.490772, 35.512516, 29.591616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689896, 35.383270, 29.556326>,  <37.021770, 35.167862, 29.497509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689896, 35.383270, 29.556326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200694, -0.041960, -0.978755,
		-0.520911, -0.841566, 0.142892,
		-0.829682, 0.538522, 0.147040,
		36.440990, 35.544827, 29.600437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514194, 34.745426, 29.117220>,  <37.021770, 35.167862, 29.497509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514194, 34.745426, 29.117220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407043, 35.127460, 29.167891>,  <36.342751, 35.356682, 29.198292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407043, 35.127460, 29.167891>,  <36.514194, 34.745426, 29.117220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407043, 35.127460, 29.167891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189508, 0.076678, -0.978881,
		-0.944630, -0.286229, 0.160457,
		-0.267881, 0.955088, 0.126675,
		36.326679, 35.413986, 29.205893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874546, 34.820827, 28.991522>,  <36.514194, 34.745426, 29.117220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874546, 34.820827, 28.991522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973450, 35.206387, 28.952005>,  <36.032791, 35.437721, 28.928295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973450, 35.206387, 28.952005>,  <35.874546, 34.820827, 28.991522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973450, 35.206387, 28.952005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439519, 0.020706, -0.897994,
		-0.863532, 0.265455, 0.428773,
		0.247255, 0.963901, -0.098792,
		36.047626, 35.495556, 28.922367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363239, 35.086208, 28.616867>,  <35.874546, 34.820827, 28.991522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363239, 35.086208, 28.616867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642780, 35.367046, 28.562220>,  <35.810505, 35.535549, 28.529430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642780, 35.367046, 28.562220>,  <35.363239, 35.086208, 28.616867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642780, 35.367046, 28.562220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381192, 0.203972, -0.901714,
		-0.605220, 0.682247, 0.410180,
		0.698857, 0.702093, -0.136619,
		35.852436, 35.577675, 28.521235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025928, 35.531818, 28.230034>,  <35.363239, 35.086208, 28.616867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025928, 35.531818, 28.230034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420483, 35.567703, 28.174896>,  <35.657215, 35.589233, 28.141813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420483, 35.567703, 28.174896>,  <35.025928, 35.531818, 28.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420483, 35.567703, 28.174896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140985, 0.029626, -0.989568,
		-0.084689, 0.995527, 0.041870,
		0.986383, 0.089708, -0.137845,
		35.716396, 35.594616, 28.133543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990574, 35.911366, 27.716125>,  <35.025928, 35.531818, 28.230034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990574, 35.911366, 27.716125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363117, 35.766777, 27.698616>,  <35.586643, 35.680023, 27.688110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363117, 35.766777, 27.698616>,  <34.990574, 35.911366, 27.716125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363117, 35.766777, 27.698616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081733, -0.090394, -0.992547,
		0.354817, 0.927993, -0.113733,
		0.931356, -0.361468, -0.043775,
		35.642525, 35.658337, 27.685484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386456, 36.373135, 27.229158>,  <34.990574, 35.911366, 27.716125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386456, 36.373135, 27.229158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550594, 36.008369, 27.231579>,  <35.649078, 35.789513, 27.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550594, 36.008369, 27.231579>,  <35.386456, 36.373135, 27.229158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550594, 36.008369, 27.231579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017493, -0.014506, -0.999742,
		0.911762, 0.410135, -0.021905,
		0.410346, -0.911910, 0.006052,
		35.673698, 35.734798, 27.233395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902515, 36.416618, 26.704397>,  <35.386456, 36.373135, 27.229158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902515, 36.416618, 26.704397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819679, 36.029129, 26.759079>,  <35.769978, 35.796635, 26.791887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819679, 36.029129, 26.759079>,  <35.902515, 36.416618, 26.704397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819679, 36.029129, 26.759079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048623, -0.129367, -0.990404,
		0.977113, -0.211747, -0.020312,
		-0.207087, -0.968725, 0.136702,
		35.757553, 35.738510, 26.800089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243782, 36.054890, 26.194546>,  <35.902515, 36.416618, 26.704397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243782, 36.054890, 26.194546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983627, 35.776554, 26.316404>,  <35.827534, 35.609550, 26.389519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983627, 35.776554, 26.316404>,  <36.243782, 36.054890, 26.194546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983627, 35.776554, 26.316404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041972, -0.367523, -0.929067,
		0.758447, -0.617035, 0.209824,
		-0.650382, -0.695841, 0.304645,
		35.788513, 35.567802, 26.407797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418507, 35.435028, 25.836239>,  <36.243782, 36.054890, 26.194546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418507, 35.435028, 25.836239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046055, 35.338718, 25.945801>,  <35.822582, 35.280933, 26.011538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046055, 35.338718, 25.945801>,  <36.418507, 35.435028, 25.836239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046055, 35.338718, 25.945801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187923, -0.326887, -0.926191,
		0.312540, -0.913877, 0.259127,
		-0.931131, -0.240775, 0.273903,
		35.766716, 35.266487, 26.027971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368568, 34.776581, 25.561409>,  <36.418507, 35.435028, 25.836239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368568, 34.776581, 25.561409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998829, 34.917267, 25.620565>,  <35.776985, 35.001678, 25.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998829, 34.917267, 25.620565>,  <36.368568, 34.776581, 25.561409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998829, 34.917267, 25.620565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284086, -0.375691, -0.882129,
		-0.254692, -0.857412, 0.447187,
		-0.924353, 0.351710, 0.147893,
		35.721523, 35.022781, 25.664932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908981, 34.163765, 25.465172>,  <36.368568, 34.776581, 25.561409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908981, 34.163765, 25.465172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715298, 34.509769, 25.412567>,  <35.599087, 34.717373, 25.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715298, 34.509769, 25.412567>,  <35.908981, 34.163765, 25.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715298, 34.509769, 25.412567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209970, -0.260795, -0.942284,
		-0.849387, -0.428645, 0.307906,
		-0.484206, 0.865014, -0.131514,
		35.570038, 34.769272, 25.373114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313370, 33.969322, 25.261139>,  <35.908981, 34.163765, 25.465172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313370, 33.969322, 25.261139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366035, 34.346409, 25.138533>,  <35.397636, 34.572662, 25.064970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366035, 34.346409, 25.138533>,  <35.313370, 33.969322, 25.261139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366035, 34.346409, 25.138533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336239, -0.248405, -0.908426,
		-0.932528, 0.222670, 0.284272,
		0.131665, 0.942716, -0.306515,
		35.405537, 34.629223, 25.046577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934006, 33.932426, 24.660233>,  <35.313370, 33.969322, 25.261139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934006, 33.932426, 24.660233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125103, 34.283321, 24.641426>,  <35.239761, 34.493858, 24.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125103, 34.283321, 24.641426>,  <34.934006, 33.932426, 24.660233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125103, 34.283321, 24.641426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186887, 0.049192, -0.981149,
		-0.858392, 0.477521, 0.187446,
		0.477740, 0.877242, -0.047017,
		35.268425, 34.546494, 24.627321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439098, 34.523037, 24.446161>,  <34.934006, 33.932426, 24.660233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439098, 34.523037, 24.446161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815441, 34.632275, 24.365959>,  <35.041248, 34.697815, 24.317837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815441, 34.632275, 24.365959>,  <34.439098, 34.523037, 24.446161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815441, 34.632275, 24.365959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244469, 0.137511, -0.959857,
		-0.234555, 0.952110, 0.196141,
		0.940861, 0.273090, -0.200507,
		35.097698, 34.714203, 24.305807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367382, 35.024227, 23.937824>,  <34.439098, 34.523037, 24.446161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367382, 35.024227, 23.937824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739761, 34.884159, 23.896414>,  <34.963188, 34.800117, 23.871567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739761, 34.884159, 23.896414>,  <34.367382, 35.024227, 23.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739761, 34.884159, 23.896414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063663, 0.123525, -0.990297,
		0.359561, 0.928505, 0.092702,
		0.930947, -0.350170, -0.103526,
		35.019047, 34.779106, 23.865356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689423, 35.567158, 23.488668>,  <34.367382, 35.024227, 23.937824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689423, 35.567158, 23.488668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873970, 35.212288, 23.485649>,  <34.984699, 34.999367, 23.483837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873970, 35.212288, 23.485649>,  <34.689423, 35.567158, 23.488668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873970, 35.212288, 23.485649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095082, -0.040986, -0.994625,
		0.882098, 0.459608, -0.103264,
		0.461371, -0.887175, -0.007547,
		35.012383, 34.946136, 23.483385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041428, 35.614250, 22.932890>,  <34.689423, 35.567158, 23.488668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041428, 35.614250, 22.932890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045956, 35.220306, 23.002077>,  <35.048672, 34.983940, 23.043589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045956, 35.220306, 23.002077>,  <35.041428, 35.614250, 22.932890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045956, 35.220306, 23.002077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105541, -0.173190, -0.979217,
		0.994351, -0.007167, -0.105904,
		0.011323, -0.984862, 0.172968,
		35.049351, 34.924847, 23.053968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369652, 35.368114, 22.263699>,  <35.041428, 35.614250, 22.932890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369652, 35.368114, 22.263699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194839, 35.040985, 22.413456>,  <35.089951, 34.844707, 22.503309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194839, 35.040985, 22.413456>,  <35.369652, 35.368114, 22.263699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194839, 35.040985, 22.413456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313131, -0.251868, -0.915703,
		0.843178, -0.517428, -0.146010,
		-0.437034, -0.817821, 0.374392,
		35.063728, 34.795639, 22.525774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400036, 35.051689, 21.746370>,  <35.369652, 35.368114, 22.263699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400036, 35.051689, 21.746370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168129, 34.815201, 21.970629>,  <35.028984, 34.673306, 22.105185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168129, 34.815201, 21.970629>,  <35.400036, 35.051689, 21.746370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168129, 34.815201, 21.970629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340577, -0.449249, -0.825943,
		0.740187, -0.669799, 0.059103,
		-0.579768, -0.591223, 0.560646,
		34.994198, 34.637833, 22.138823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628696, 34.419491, 21.623806>,  <35.400036, 35.051689, 21.746370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628696, 34.419491, 21.623806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265331, 34.346107, 21.774073>,  <35.047314, 34.302078, 21.864233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265331, 34.346107, 21.774073>,  <35.628696, 34.419491, 21.623806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265331, 34.346107, 21.774073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163351, -0.671383, -0.722884,
		0.384839, -0.718044, 0.579925,
		-0.908414, -0.183462, 0.375668,
		34.992805, 34.291069, 21.886772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548840, 33.732521, 21.609812>,  <35.628696, 34.419491, 21.623806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548840, 33.732521, 21.609812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175785, 33.876484, 21.620020>,  <34.951950, 33.962860, 21.626144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175785, 33.876484, 21.620020>,  <35.548840, 33.732521, 21.609812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175785, 33.876484, 21.620020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226018, -0.527623, -0.818859,
		-0.281245, -0.769469, 0.573427,
		-0.932640, 0.359904, 0.025522,
		34.895992, 33.984455, 21.627676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173306, 33.182686, 21.475222>,  <35.548840, 33.732521, 21.609812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173306, 33.182686, 21.475222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916534, 33.467339, 21.361023>,  <34.762470, 33.638130, 21.292503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916534, 33.467339, 21.361023>,  <35.173306, 33.182686, 21.475222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916534, 33.467339, 21.361023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232049, -0.535181, -0.812240,
		-0.730806, -0.455153, 0.508682,
		-0.641931, 0.711630, -0.285496,
		34.723953, 33.680828, 21.275373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532295, 32.805161, 21.384310>,  <35.173306, 33.182686, 21.475222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532295, 32.805161, 21.384310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534622, 33.128803, 21.149256>,  <34.536018, 33.322990, 21.008224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534622, 33.128803, 21.149256>,  <34.532295, 32.805161, 21.384310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534622, 33.128803, 21.149256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236132, -0.569913, -0.787045,
		-0.971704, 0.143337, 0.187741,
		0.005817, 0.809106, -0.587633,
		34.536366, 33.371536, 20.972965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028412, 32.696873, 20.866108>,  <34.532295, 32.805161, 21.384310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028412, 32.696873, 20.866108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209286, 32.987186, 20.658739>,  <34.317810, 33.161377, 20.534319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209286, 32.987186, 20.658739>,  <34.028412, 32.696873, 20.866108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209286, 32.987186, 20.658739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046449, -0.561287, -0.826317,
		-0.890713, 0.397729, -0.220094,
		0.452186, 0.725788, -0.518420,
		34.344940, 33.204922, 20.503214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620361, 32.780346, 20.260448>,  <34.028412, 32.696873, 20.866108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620361, 32.780346, 20.260448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986198, 32.927498, 20.193287>,  <34.205700, 33.015789, 20.152990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986198, 32.927498, 20.193287>,  <33.620361, 32.780346, 20.260448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986198, 32.927498, 20.193287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066637, -0.546637, -0.834714,
		-0.398854, 0.752232, -0.524463,
		0.914590, 0.367878, -0.167902,
		34.260574, 33.037861, 20.142916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584976, 33.082020, 19.555986>,  <33.620361, 32.780346, 20.260448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584976, 33.082020, 19.555986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977566, 33.027004, 19.609344>,  <34.213120, 32.993996, 19.641359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977566, 33.027004, 19.609344>,  <33.584976, 33.082020, 19.555986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977566, 33.027004, 19.609344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075930, -0.360004, -0.929856,
		0.175912, 0.922757, -0.342891,
		0.981473, -0.137537, 0.133394,
		34.272007, 32.985744, 19.649363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932449, 33.267063, 18.894371>,  <33.584976, 33.082020, 19.555986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932449, 33.267063, 18.894371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181103, 33.040745, 19.111053>,  <34.330296, 32.904953, 19.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181103, 33.040745, 19.111053>,  <33.932449, 33.267063, 18.894371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181103, 33.040745, 19.111053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303800, -0.463283, -0.832511,
		0.721994, 0.682088, -0.116105,
		0.621635, -0.565795, 0.541706,
		34.367592, 32.871006, 19.273565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579578, 33.265900, 18.485352>,  <33.932449, 33.267063, 18.894371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579578, 33.265900, 18.485352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578011, 32.958202, 18.740929>,  <34.577072, 32.773582, 18.894276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578011, 32.958202, 18.740929>,  <34.579578, 33.265900, 18.485352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578011, 32.958202, 18.740929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304726, -0.609476, -0.731902,
		0.952432, 0.191836, 0.236796,
		-0.003917, -0.769245, 0.638942,
		34.576836, 32.727428, 18.932611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138672, 33.024326, 18.348736>,  <34.579578, 33.265900, 18.485352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138672, 33.024326, 18.348736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934311, 32.718803, 18.506508>,  <34.811695, 32.535488, 18.601171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934311, 32.718803, 18.506508>,  <35.138672, 33.024326, 18.348736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934311, 32.718803, 18.506508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294645, -0.586633, -0.754351,
		0.807566, -0.269182, 0.524764,
		-0.510902, -0.763807, 0.394432,
		34.781040, 32.489662, 18.624838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614029, 32.461166, 18.304518>,  <35.138672, 33.024326, 18.348736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614029, 32.461166, 18.304518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254318, 32.298267, 18.368326>,  <35.038490, 32.200527, 18.406610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254318, 32.298267, 18.368326>,  <35.614029, 32.461166, 18.304518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254318, 32.298267, 18.368326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221118, -0.737997, -0.637547,
		0.377366, -0.538060, 0.753715,
		-0.899278, -0.407249, 0.159520,
		34.984535, 32.176094, 18.416182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782269, 31.843260, 18.659838>,  <35.614029, 32.461166, 18.304518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782269, 31.843260, 18.659838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426834, 31.810125, 18.479372>,  <35.213573, 31.790245, 18.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426834, 31.810125, 18.479372>,  <35.782269, 31.843260, 18.659838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426834, 31.810125, 18.479372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339014, -0.781153, -0.524279,
		-0.308998, -0.618820, 0.722207,
		-0.888589, -0.082837, -0.451163,
		35.160259, 31.785275, 18.344023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698292, 31.130989, 18.581362>,  <35.782269, 31.843260, 18.659838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698292, 31.130989, 18.581362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442181, 31.292803, 18.320166>,  <35.288513, 31.389891, 18.163448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442181, 31.292803, 18.320166>,  <35.698292, 31.130989, 18.581362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442181, 31.292803, 18.320166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175084, -0.750855, -0.636838,
		-0.747895, -0.522099, 0.409957,
		-0.640311, 0.404511, -0.652972,
		35.250099, 31.414164, 18.124268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172935, 30.627932, 18.383266>,  <35.698292, 31.130989, 18.581362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172935, 30.627932, 18.383266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190624, 30.904037, 18.094385>,  <35.201237, 31.069700, 17.921057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190624, 30.904037, 18.094385>,  <35.172935, 30.627932, 18.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190624, 30.904037, 18.094385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110391, -0.721861, -0.683177,
		-0.992904, -0.049515, -0.108120,
		0.044220, 0.690265, -0.722204,
		35.203892, 31.111116, 17.877724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631062, 30.385855, 17.849543>,  <35.172935, 30.627932, 18.383266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631062, 30.385855, 17.849543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900547, 30.640827, 17.699987>,  <35.062241, 30.793810, 17.610254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900547, 30.640827, 17.699987>,  <34.631062, 30.385855, 17.849543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900547, 30.640827, 17.699987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229144, -0.661200, -0.714358,
		-0.702567, 0.395600, -0.591524,
		0.673715, 0.637429, -0.373888,
		35.102661, 30.832056, 17.587822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446381, 30.576143, 17.178099>,  <34.631062, 30.385855, 17.849543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446381, 30.576143, 17.178099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840385, 30.640936, 17.201815>,  <35.076790, 30.679811, 17.216045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840385, 30.640936, 17.201815>,  <34.446381, 30.576143, 17.178099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840385, 30.640936, 17.201815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129562, -0.467843, -0.874263,
		-0.113877, 0.868841, -0.481817,
		0.985010, 0.161984, 0.059292,
		35.135887, 30.689531, 17.219603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663437, 30.563229, 16.478642>,  <34.446381, 30.576143, 17.178099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663437, 30.563229, 16.478642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991493, 30.483713, 16.693249>,  <35.188328, 30.436005, 16.822014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991493, 30.483713, 16.693249>,  <34.663437, 30.563229, 16.478642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991493, 30.483713, 16.693249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389439, -0.493030, -0.777983,
		0.419176, 0.846997, -0.326938,
		0.820140, -0.198789, 0.536520,
		35.237534, 30.424076, 16.854204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365482, 30.724894, 16.062983>,  <34.663437, 30.563229, 16.478642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365482, 30.724894, 16.062983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402092, 30.446688, 16.348045>,  <35.424057, 30.279764, 16.519083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402092, 30.446688, 16.348045>,  <35.365482, 30.724894, 16.062983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402092, 30.446688, 16.348045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403330, -0.628440, -0.665123,
		0.910466, 0.348313, 0.223003,
		0.091527, -0.695515, 0.712658,
		35.429550, 30.238033, 16.561842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054718, 30.494537, 16.184290>,  <35.365482, 30.724894, 16.062983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054718, 30.494537, 16.184290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803196, 30.190369, 16.249241>,  <35.652283, 30.007868, 16.288212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803196, 30.190369, 16.249241>,  <36.054718, 30.494537, 16.184290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803196, 30.190369, 16.249241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532281, -0.573183, -0.623007,
		0.566819, -0.305320, 0.765177,
		-0.628803, -0.760421, 0.162375,
		35.614555, 29.962242, 16.297953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346027, 29.826414, 16.213091>,  <36.054718, 30.494537, 16.184290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346027, 29.826414, 16.213091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969067, 29.785931, 16.085573>,  <35.742889, 29.761641, 16.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969067, 29.785931, 16.085573>,  <36.346027, 29.826414, 16.213091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969067, 29.785931, 16.085573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318454, -0.562947, -0.762678,
		-0.102272, -0.820273, 0.562755,
		-0.942405, -0.101210, -0.318793,
		35.686344, 29.755568, 15.989935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260479, 29.163870, 16.115808>,  <36.346027, 29.826414, 16.213091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260479, 29.163870, 16.115808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998680, 29.352238, 15.879208>,  <35.841602, 29.465260, 15.737247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998680, 29.352238, 15.879208>,  <36.260479, 29.163870, 16.115808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998680, 29.352238, 15.879208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360460, -0.493350, -0.791627,
		-0.664611, -0.731327, 0.153146,
		-0.654492, 0.470921, -0.591500,
		35.802334, 29.493513, 15.701757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006512, 28.731850, 15.645746>,  <36.260479, 29.163870, 16.115808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006512, 28.731850, 15.645746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914639, 29.057020, 15.431681>,  <35.859516, 29.252123, 15.303242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914639, 29.057020, 15.431681>,  <36.006512, 28.731850, 15.645746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914639, 29.057020, 15.431681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091006, -0.529517, -0.843404,
		-0.969002, -0.242417, 0.047639,
		-0.229681, 0.812925, -0.535164,
		35.845734, 29.300898, 15.271132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463005, 28.239853, 15.686627>,  <36.006512, 28.731850, 15.645746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463005, 28.239853, 15.686627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113033, 28.250982, 15.880006>,  <34.903049, 28.257660, 15.996033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113033, 28.250982, 15.880006>,  <35.463005, 28.239853, 15.686627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113033, 28.250982, 15.880006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483942, 0.085587, 0.870905,
		-0.017144, 0.995942, -0.088349,
		-0.874932, 0.027825, 0.483445,
		34.850555, 28.259331, 16.025040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435989, 28.868738, 16.143606>,  <35.463005, 28.239853, 15.686627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435989, 28.868738, 16.143606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247665, 28.542961, 16.279264>,  <35.134670, 28.347494, 16.360661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247665, 28.542961, 16.279264>,  <35.435989, 28.868738, 16.143606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247665, 28.542961, 16.279264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565118, 0.016797, 0.824839,
		-0.677482, 0.579999, 0.452349,
		-0.470808, -0.814444, 0.339147,
		35.106422, 28.298628, 16.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171082, 28.885149, 16.819752>,  <35.435989, 28.868738, 16.143606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171082, 28.885149, 16.819752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286774, 28.504822, 16.775406>,  <35.356190, 28.276627, 16.748798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286774, 28.504822, 16.775406>,  <35.171082, 28.885149, 16.819752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286774, 28.504822, 16.775406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575498, 0.080167, 0.813864,
		-0.764948, -0.299200, 0.570380,
		0.289234, -0.950817, -0.110865,
		35.373543, 28.219576, 16.742146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056133, 28.416882, 17.466614>,  <35.171082, 28.885149, 16.819752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056133, 28.416882, 17.466614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369209, 28.282820, 17.256824>,  <35.557053, 28.202383, 17.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369209, 28.282820, 17.256824>,  <35.056133, 28.416882, 17.466614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369209, 28.282820, 17.256824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604537, 0.208845, 0.768713,
		-0.148106, -0.918724, 0.366075,
		0.782688, -0.335157, -0.524471,
		35.604015, 28.182272, 17.099483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446220, 27.951427, 17.941519>,  <35.056133, 28.416882, 17.466614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446220, 27.951427, 17.941519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675854, 28.164440, 17.692736>,  <35.813633, 28.292248, 17.543465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675854, 28.164440, 17.692736>,  <35.446220, 27.951427, 17.941519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675854, 28.164440, 17.692736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533897, 0.332448, 0.777452,
		0.620789, -0.778387, -0.093465,
		0.574086, 0.532534, -0.621958,
		35.848080, 28.324200, 17.506147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216316, 27.798344, 17.895811>,  <35.446220, 27.951427, 17.941519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216316, 27.798344, 17.895811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151615, 28.180382, 17.796515>,  <36.112793, 28.409605, 17.736937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151615, 28.180382, 17.796515>,  <36.216316, 27.798344, 17.895811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151615, 28.180382, 17.796515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601863, 0.294834, 0.742182,
		0.782046, -0.029356, -0.622529,
		-0.161755, 0.955097, -0.248242,
		36.103088, 28.466911, 17.722042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880043, 28.017830, 17.898264>,  <36.216316, 27.798344, 17.895811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880043, 28.017830, 17.898264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647751, 28.341909, 17.930071>,  <36.508373, 28.536358, 17.949154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647751, 28.341909, 17.930071>,  <36.880043, 28.017830, 17.898264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647751, 28.341909, 17.930071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507350, 0.283804, 0.813665,
		0.636665, 0.512866, -0.575870,
		-0.580735, 0.810200, 0.079515,
		36.473530, 28.584969, 17.953926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304722, 28.571318, 18.007961>,  <36.880043, 28.017830, 17.898264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304722, 28.571318, 18.007961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956512, 28.710773, 18.146889>,  <36.747585, 28.794447, 18.230246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956512, 28.710773, 18.146889>,  <37.304722, 28.571318, 18.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956512, 28.710773, 18.146889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466599, 0.360414, 0.807705,
		0.156421, 0.865188, -0.476426,
		-0.870528, 0.348642, 0.347319,
		36.695354, 28.815367, 18.251085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523914, 29.262520, 18.228395>,  <37.304722, 28.571318, 18.007961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523914, 29.262520, 18.228395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180973, 29.207226, 18.426725>,  <36.975208, 29.174049, 18.545723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180973, 29.207226, 18.426725>,  <37.523914, 29.262520, 18.228395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180973, 29.207226, 18.426725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408673, 0.402844, 0.818965,
		-0.312949, 0.904770, -0.288886,
		-0.857350, -0.138234, 0.495825,
		36.923767, 29.165756, 18.575472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378418, 29.845030, 18.612556>,  <37.523914, 29.262520, 18.228395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378418, 29.845030, 18.612556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149326, 29.578585, 18.803667>,  <37.011871, 29.418716, 18.918333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149326, 29.578585, 18.803667>,  <37.378418, 29.845030, 18.612556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149326, 29.578585, 18.803667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286804, 0.383175, 0.878021,
		-0.767935, 0.639897, -0.028412,
		-0.572729, -0.666114, 0.477779,
		36.977509, 29.378750, 18.947001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942890, 30.261488, 19.046888>,  <37.378418, 29.845030, 18.612556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942890, 30.261488, 19.046888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913280, 29.897821, 19.210810>,  <36.895515, 29.679623, 19.309162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913280, 29.897821, 19.210810>,  <36.942890, 30.261488, 19.046888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913280, 29.897821, 19.210810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043392, 0.407607, 0.912126,
		-0.996312, 0.085301, 0.009278,
		-0.074023, -0.909165, 0.409805,
		36.891075, 29.625072, 19.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646542, 30.409843, 19.720486>,  <36.942890, 30.261488, 19.046888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646542, 30.409843, 19.720486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802830, 30.042326, 19.742966>,  <36.896603, 29.821815, 19.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802830, 30.042326, 19.742966>,  <36.646542, 30.409843, 19.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802830, 30.042326, 19.742966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135060, 0.117613, 0.983832,
		-0.910547, -0.376813, 0.170046,
		0.390721, -0.918792, 0.056200,
		36.920048, 29.766687, 19.759825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223091, 30.060148, 20.228516>,  <36.646542, 30.409843, 19.720486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223091, 30.060148, 20.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580078, 29.884033, 20.189236>,  <36.794270, 29.778364, 20.165668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580078, 29.884033, 20.189236>,  <36.223091, 30.060148, 20.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580078, 29.884033, 20.189236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132331, 0.047418, 0.990071,
		-0.431258, -0.896604, 0.100583,
		0.892471, -0.440286, -0.098200,
		36.847820, 29.751947, 20.159777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285458, 29.597170, 20.797827>,  <36.223091, 30.060148, 20.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285458, 29.597170, 20.797827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669266, 29.600639, 20.685221>,  <36.899551, 29.602722, 20.617657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669266, 29.600639, 20.685221>,  <36.285458, 29.597170, 20.797827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669266, 29.600639, 20.685221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281408, 0.011585, 0.959518,
		0.011585, -0.999895, 0.008675,
		-0.959518, -0.008675, 0.281513,
		36.957123, 29.603241, 20.600767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624027, 29.073509, 21.262697>,  <36.285458, 29.597170, 20.797827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624027, 29.073509, 21.262697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921604, 29.313446, 21.144886>,  <37.100151, 29.457407, 21.074200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921604, 29.313446, 21.144886>,  <36.624027, 29.073509, 21.262697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921604, 29.313446, 21.144886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236561, 0.175809, 0.955578,
		0.624975, -0.780566, -0.011108,
		0.743939, 0.599840, -0.294527,
		37.144787, 29.493399, 21.056528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044853, 29.010279, 21.773443>,  <36.624027, 29.073509, 21.262697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044853, 29.010279, 21.773443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194725, 29.334000, 21.592489>,  <37.284649, 29.528233, 21.483917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194725, 29.334000, 21.592489>,  <37.044853, 29.010279, 21.773443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194725, 29.334000, 21.592489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135591, 0.434852, 0.890236,
		0.917188, -0.394889, 0.053195,
		0.374676, 0.809301, -0.452384,
		37.307129, 29.576790, 21.456774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606945, 29.303648, 22.199806>,  <37.044853, 29.010279, 21.773443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606945, 29.303648, 22.199806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482090, 29.600210, 21.962187>,  <37.407177, 29.778147, 21.819616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482090, 29.600210, 21.962187>,  <37.606945, 29.303648, 22.199806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482090, 29.600210, 21.962187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073481, 0.642256, 0.762960,
		0.947192, 0.194495, -0.254950,
		-0.312135, 0.741404, -0.594048,
		37.388451, 29.822632, 21.783972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120434, 29.891331, 22.275486>,  <37.606945, 29.303648, 22.199806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120434, 29.891331, 22.275486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761890, 30.015503, 22.148886>,  <37.546764, 30.090006, 22.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761890, 30.015503, 22.148886>,  <38.120434, 29.891331, 22.275486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761890, 30.015503, 22.148886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023718, 0.679315, 0.733463,
		0.442692, 0.664954, -0.601548,
		-0.896360, 0.310431, -0.316499,
		37.492981, 30.108633, 22.053936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190338, 30.562611, 22.530777>,  <38.120434, 29.891331, 22.275486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190338, 30.562611, 22.530777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811653, 30.505545, 22.415274>,  <37.584442, 30.471304, 22.345972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811653, 30.505545, 22.415274>,  <38.190338, 30.562611, 22.530777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811653, 30.505545, 22.415274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309203, 0.653553, 0.690842,
		0.090159, 0.743314, -0.662839,
		-0.946713, -0.142666, -0.288758,
		37.527637, 30.462746, 22.328646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934414, 31.224787, 22.502562>,  <38.190338, 30.562611, 22.530777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934414, 31.224787, 22.502562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598110, 31.008690, 22.516800>,  <37.396328, 30.879032, 22.525343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598110, 31.008690, 22.516800>,  <37.934414, 31.224787, 22.502562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598110, 31.008690, 22.516800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310811, 0.535441, 0.785302,
		-0.443312, 0.649184, -0.618089,
		-0.840756, -0.540243, 0.035594,
		37.345882, 30.846617, 22.527477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381748, 31.785648, 22.414955>,  <37.934414, 31.224787, 22.502562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381748, 31.785648, 22.414955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314571, 31.428501, 22.582087>,  <37.274265, 31.214212, 22.682365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314571, 31.428501, 22.582087>,  <37.381748, 31.785648, 22.414955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314571, 31.428501, 22.582087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087242, 0.435649, 0.895879,
		-0.981929, 0.114004, -0.151059,
		-0.167942, -0.892868, 0.417831,
		37.264187, 31.160641, 22.707436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787685, 31.857828, 22.863672>,  <37.381748, 31.785648, 22.414955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787685, 31.857828, 22.863672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995522, 31.541487, 22.993023>,  <37.120224, 31.351681, 23.070633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995522, 31.541487, 22.993023>,  <36.787685, 31.857828, 22.863672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995522, 31.541487, 22.993023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131772, 0.448121, 0.884208,
		-0.844192, -0.416816, 0.337053,
		0.519592, -0.790855, 0.323375,
		37.151398, 31.304230, 23.090036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471329, 31.633400, 23.556503>,  <36.787685, 31.857828, 22.863672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471329, 31.633400, 23.556503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835110, 31.467590, 23.543440>,  <37.053379, 31.368105, 23.535603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835110, 31.467590, 23.543440>,  <36.471329, 31.633400, 23.556503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835110, 31.467590, 23.543440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161906, 0.280687, 0.946045,
		-0.382993, -0.865670, 0.322385,
		0.909452, -0.414524, -0.032656,
		37.107944, 31.343233, 23.533644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601383, 31.225567, 24.156265>,  <36.471329, 31.633400, 23.556503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601383, 31.225567, 24.156265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984962, 31.267462, 24.050848>,  <37.215111, 31.292599, 23.987598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984962, 31.267462, 24.050848>,  <36.601383, 31.225567, 24.156265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984962, 31.267462, 24.050848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226466, 0.276538, 0.933938,
		0.170696, -0.955278, 0.241465,
		0.958945, 0.104736, -0.263542,
		37.272644, 31.298883, 23.971785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025066, 30.872112, 24.656187>,  <36.601383, 31.225567, 24.156265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025066, 30.872112, 24.656187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272858, 31.133049, 24.481512>,  <37.421532, 31.289612, 24.376707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272858, 31.133049, 24.481512>,  <37.025066, 30.872112, 24.656187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272858, 31.133049, 24.481512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293960, 0.323040, 0.899574,
		0.727899, -0.685633, 0.008353,
		0.619476, 0.652343, -0.436689,
		37.458702, 31.328753, 24.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702003, 30.855095, 25.026310>,  <37.025066, 30.872112, 24.656187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702003, 30.855095, 25.026310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734852, 31.198637, 24.824074>,  <37.754559, 31.404762, 24.702732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734852, 31.198637, 24.824074>,  <37.702003, 30.855095, 25.026310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734852, 31.198637, 24.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323688, 0.456818, 0.828579,
		0.942594, -0.231694, -0.240489,
		0.082117, 0.858857, -0.505590,
		37.759487, 31.456295, 24.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336506, 31.078480, 25.224579>,  <37.702003, 30.855095, 25.026310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336506, 31.078480, 25.224579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129585, 31.400555, 25.108599>,  <38.005432, 31.593800, 25.039011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129585, 31.400555, 25.108599>,  <38.336506, 31.078480, 25.224579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129585, 31.400555, 25.108599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276532, 0.477897, 0.833754,
		0.809895, 0.351121, -0.469877,
		-0.517301, 0.805189, -0.289950,
		37.974396, 31.642111, 25.021614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723324, 31.579515, 25.464521>,  <38.336506, 31.078480, 25.224579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723324, 31.579515, 25.464521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398685, 31.792803, 25.369026>,  <38.203903, 31.920774, 25.311729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398685, 31.792803, 25.369026>,  <38.723324, 31.579515, 25.464521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398685, 31.792803, 25.369026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107308, 0.537743, 0.836252,
		0.574285, 0.653078, -0.493646,
		-0.811593, 0.533219, -0.238737,
		38.155209, 31.952768, 25.297405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880463, 32.217083, 25.608986>,  <38.723324, 31.579515, 25.464521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880463, 32.217083, 25.608986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480816, 32.233406, 25.604919>,  <38.241028, 32.243198, 25.602480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480816, 32.233406, 25.604919>,  <38.880463, 32.217083, 25.608986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480816, 32.233406, 25.604919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012065, 0.509777, 0.860222,
		0.040283, 0.859339, -0.509818,
		-0.999115, 0.040804, -0.010167,
		38.181080, 32.245647, 25.601870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655674, 32.943405, 25.718931>,  <38.880463, 32.217083, 25.608986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655674, 32.943405, 25.718931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359650, 32.700401, 25.834337>,  <38.182037, 32.554600, 25.903582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359650, 32.700401, 25.834337>,  <38.655674, 32.943405, 25.718931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359650, 32.700401, 25.834337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103643, 0.526887, 0.843592,
		-0.664509, 0.594404, -0.452891,
		-0.740058, -0.607514, 0.288515,
		38.137634, 32.518147, 25.920893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024433, 33.414200, 26.000896>,  <38.655674, 32.943405, 25.718931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024433, 33.414200, 26.000896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924881, 33.045925, 26.121155>,  <37.865150, 32.824959, 26.193310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924881, 33.045925, 26.121155>,  <38.024433, 33.414200, 26.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924881, 33.045925, 26.121155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001787, 0.309975, 0.950743,
		-0.968531, 0.237163, -0.075502,
		-0.248884, -0.920690, 0.300644,
		37.850216, 32.769718, 26.211348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468254, 33.460182, 26.379822>,  <38.024433, 33.414200, 26.000896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468254, 33.460182, 26.379822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641445, 33.125870, 26.514883>,  <37.745358, 32.925282, 26.595921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641445, 33.125870, 26.514883>,  <37.468254, 33.460182, 26.379822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641445, 33.125870, 26.514883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311212, 0.212951, 0.926174,
		-0.845979, -0.506091, -0.167902,
		0.432973, -0.835778, 0.337654,
		37.771336, 32.875137, 26.616179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023029, 33.317432, 26.966436>,  <37.468254, 33.460182, 26.379822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023029, 33.317432, 26.966436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305340, 33.036137, 27.000681>,  <37.474728, 32.867359, 27.021229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305340, 33.036137, 27.000681>,  <37.023029, 33.317432, 26.966436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305340, 33.036137, 27.000681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011650, 0.132354, 0.991134,
		-0.708335, -0.698526, 0.101605,
		0.705781, -0.703238, 0.085613,
		37.517075, 32.825165, 27.026365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747570, 32.829205, 27.451982>,  <37.023029, 33.317432, 26.966436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747570, 32.829205, 27.451982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147503, 32.825779, 27.445589>,  <37.387463, 32.823723, 27.441753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147503, 32.825779, 27.445589>,  <36.747570, 32.829205, 27.451982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147503, 32.825779, 27.445589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016208, 0.026829, 0.999509,
		-0.008140, -0.999604, 0.026963,
		0.999835, -0.008573, -0.015983,
		37.447453, 32.823208, 27.440794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937576, 32.387299, 27.967741>,  <36.747570, 32.829205, 27.451982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937576, 32.387299, 27.967741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273842, 32.596794, 27.912628>,  <37.475601, 32.722492, 27.879560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273842, 32.596794, 27.912628>,  <36.937576, 32.387299, 27.967741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273842, 32.596794, 27.912628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157121, 0.007602, 0.987550,
		0.518267, -0.851844, -0.075900,
		0.840662, 0.523740, -0.137783,
		37.526039, 32.753918, 27.871294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371922, 32.232021, 28.583464>,  <36.937576, 32.387299, 27.967741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371922, 32.232021, 28.583464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544662, 32.564831, 28.444183>,  <37.648308, 32.764515, 28.360615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544662, 32.564831, 28.444183>,  <37.371922, 32.232021, 28.583464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544662, 32.564831, 28.444183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328948, 0.214175, 0.919740,
		0.839821, -0.511730, -0.181201,
		0.431850, 0.832023, -0.348201,
		37.674217, 32.814438, 28.339724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191906, 32.261272, 28.797443>,  <37.371922, 32.232021, 28.583464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191906, 32.261272, 28.797443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084118, 32.636906, 28.712111>,  <38.019444, 32.862286, 28.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084118, 32.636906, 28.712111>,  <38.191906, 32.261272, 28.797443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084118, 32.636906, 28.712111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501496, 0.325959, 0.801407,
		0.822124, 0.108972, -0.558783,
		-0.269471, 0.939082, -0.213330,
		38.003277, 32.918629, 28.648111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763683, 32.627712, 29.110876>,  <38.191906, 32.261272, 28.797443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763683, 32.627712, 29.110876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478428, 32.905548, 29.072987>,  <38.307274, 33.072250, 29.050253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478428, 32.905548, 29.072987>,  <38.763683, 32.627712, 29.110876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478428, 32.905548, 29.072987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249836, 0.378075, 0.891426,
		0.654988, 0.612049, -0.443155,
		-0.713142, 0.694590, -0.094723,
		38.264484, 33.113926, 29.044569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058010, 33.256672, 29.483505>,  <38.763683, 32.627712, 29.110876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058010, 33.256672, 29.483505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658916, 33.279255, 29.468845>,  <38.419460, 33.292805, 29.460049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658916, 33.279255, 29.468845>,  <39.058010, 33.256672, 29.483505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658916, 33.279255, 29.468845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017948, 0.301653, 0.953249,
		0.064877, 0.951744, -0.299955,
		-0.997732, 0.056460, -0.036652,
		38.359596, 33.296192, 29.457850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927773, 33.924530, 29.784382>,  <39.058010, 33.256672, 29.483505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927773, 33.924530, 29.784382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578362, 33.729839, 29.781454>,  <38.368717, 33.613026, 29.779697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578362, 33.729839, 29.781454>,  <38.927773, 33.924530, 29.784382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578362, 33.729839, 29.781454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258798, 0.451626, 0.853849,
		-0.412282, 0.747753, -0.520470,
		-0.873526, -0.486723, -0.007320,
		38.316303, 33.583824, 29.779259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438988, 34.382961, 29.900724>,  <38.927773, 33.924530, 29.784382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438988, 34.382961, 29.900724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272560, 34.034679, 30.005615>,  <38.172703, 33.825710, 30.068550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272560, 34.034679, 30.005615>,  <38.438988, 34.382961, 29.900724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272560, 34.034679, 30.005615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263099, 0.391304, 0.881850,
		-0.870441, 0.297916, -0.391890,
		-0.416065, -0.870705, 0.262226,
		38.147739, 33.773468, 30.084284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785995, 34.409302, 30.202593>,  <38.438988, 34.382961, 29.900724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785995, 34.409302, 30.202593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930874, 34.060341, 30.333887>,  <38.017799, 33.850964, 30.412664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930874, 34.060341, 30.333887>,  <37.785995, 34.409302, 30.202593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930874, 34.060341, 30.333887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286814, 0.230751, 0.929780,
		-0.886879, -0.430901, -0.166640,
		0.362191, -0.872398, 0.328236,
		38.039532, 33.798622, 30.432358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429733, 34.372223, 30.811958>,  <37.785995, 34.409302, 30.202593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429733, 34.372223, 30.811958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664700, 34.049896, 30.841894>,  <37.805679, 33.856499, 30.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664700, 34.049896, 30.841894>,  <37.429733, 34.372223, 30.811958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664700, 34.049896, 30.841894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137952, -0.008582, 0.990402,
		-0.797439, -0.592104, -0.116205,
		0.587419, -0.805816, 0.074838,
		37.840927, 33.808151, 30.864346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010487, 33.754978, 31.026947>,  <37.429733, 34.372223, 30.811958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010487, 33.754978, 31.026947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388416, 33.663776, 31.121021>,  <37.615173, 33.609055, 31.177465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388416, 33.663776, 31.121021>,  <37.010487, 33.754978, 31.026947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388416, 33.663776, 31.121021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236572, 0.021627, 0.971373,
		-0.226568, -0.973419, -0.033506,
		0.944829, -0.228009, 0.235184,
		37.671864, 33.595375, 31.191576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916153, 33.166542, 31.441418>,  <37.010487, 33.754978, 31.026947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916153, 33.166542, 31.441418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256264, 33.364182, 31.513966>,  <37.460331, 33.482765, 31.557495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256264, 33.364182, 31.513966>,  <36.916153, 33.166542, 31.441418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256264, 33.364182, 31.513966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244806, 0.066201, 0.967309,
		0.465942, -0.866880, 0.177248,
		0.850275, 0.494101, 0.181371,
		37.511345, 33.512413, 31.568377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391769, 32.966007, 32.012592>,  <36.916153, 33.166542, 31.441418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391769, 32.966007, 32.012592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409958, 33.361267, 31.953959>,  <37.420872, 33.598423, 31.918779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409958, 33.361267, 31.953959>,  <37.391769, 32.966007, 32.012592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409958, 33.361267, 31.953959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206908, 0.152866, 0.966344,
		0.977303, -0.013611, 0.211407,
		0.045470, 0.988153, -0.146580,
		37.423599, 33.657715, 31.909985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274326, 32.330425, 31.456129>,  <37.391769, 32.966007, 32.012592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274326, 32.330425, 31.456129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952751, 32.193909, 31.650946>,  <36.759808, 32.112000, 31.767836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952751, 32.193909, 31.650946>,  <37.274326, 32.330425, 31.456129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952751, 32.193909, 31.650946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392571, -0.310638, -0.865674,
		0.446742, -0.887143, 0.115750,
		-0.803934, -0.341293, 0.487042,
		36.711571, 32.091522, 31.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293880, 31.606108, 31.417135>,  <37.274326, 32.330425, 31.456129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293880, 31.606108, 31.417135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915035, 31.725042, 31.465403>,  <36.687729, 31.796402, 31.494362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915035, 31.725042, 31.465403>,  <37.293880, 31.606108, 31.417135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915035, 31.725042, 31.465403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224378, -0.344835, -0.911451,
		-0.229395, -0.890327, 0.393315,
		-0.947118, 0.297334, 0.120666,
		36.630901, 31.814243, 31.501602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901730, 31.061295, 31.211185>,  <37.293880, 31.606108, 31.417135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901730, 31.061295, 31.211185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625557, 31.350571, 31.204247>,  <36.459854, 31.524136, 31.200083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625557, 31.350571, 31.204247>,  <36.901730, 31.061295, 31.211185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625557, 31.350571, 31.204247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498616, -0.493128, -0.712887,
		-0.524110, -0.483547, 0.701065,
		-0.690428, 0.723192, -0.017349,
		36.418427, 31.567528, 31.199043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334362, 30.632040, 31.070269>,  <36.901730, 31.061295, 31.211185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334362, 30.632040, 31.070269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266914, 31.017084, 30.985460>,  <36.226448, 31.248110, 30.934576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266914, 31.017084, 30.985460>,  <36.334362, 30.632040, 31.070269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266914, 31.017084, 30.985460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369464, -0.261140, -0.891797,
		-0.913819, -0.072038, 0.399682,
		-0.168616, 0.962610, -0.212019,
		36.216331, 31.305866, 30.921854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506256, 30.758171, 30.847845>,  <36.334362, 30.632040, 31.070269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506256, 30.758171, 30.847845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726662, 31.058926, 30.703045>,  <35.858906, 31.239378, 30.616165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726662, 31.058926, 30.703045>,  <35.506256, 30.758171, 30.847845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726662, 31.058926, 30.703045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499134, -0.050694, -0.865041,
		-0.668765, 0.657339, 0.347359,
		0.551016, 0.751888, -0.362002,
		35.891968, 31.284492, 30.594444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024364, 31.132978, 30.439285>,  <35.506256, 30.758171, 30.847845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024364, 31.132978, 30.439285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386921, 31.245804, 30.313499>,  <35.604454, 31.313499, 30.238028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386921, 31.245804, 30.313499>,  <35.024364, 31.132978, 30.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386921, 31.245804, 30.313499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309898, -0.061902, -0.948752,
		-0.287076, 0.957396, 0.031304,
		0.906394, 0.282065, -0.314466,
		35.658840, 31.330423, 30.219160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829185, 31.525059, 29.989033>,  <35.024364, 31.132978, 30.439285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829185, 31.525059, 29.989033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211750, 31.454597, 29.895876>,  <35.441288, 31.412321, 29.839981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211750, 31.454597, 29.895876>,  <34.829185, 31.525059, 29.989033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211750, 31.454597, 29.895876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269700, -0.227148, -0.935770,
		0.111939, 0.957796, -0.264757,
		0.956416, -0.176154, -0.232891,
		35.498676, 31.401751, 29.826008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913773, 31.949718, 29.422503>,  <34.829185, 31.525059, 29.989033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913773, 31.949718, 29.422503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186672, 31.658592, 29.394735>,  <35.350414, 31.483917, 29.378075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186672, 31.658592, 29.394735>,  <34.913773, 31.949718, 29.422503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186672, 31.658592, 29.394735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118092, -0.016002, -0.992874,
		0.721516, 0.685589, -0.096866,
		0.682253, -0.727813, -0.069417,
		35.391350, 31.440248, 29.373911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404690, 31.994373, 28.740028>,  <34.913773, 31.949718, 29.422503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404690, 31.994373, 28.740028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465652, 31.617189, 28.858419>,  <35.502232, 31.390879, 28.929453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465652, 31.617189, 28.858419>,  <35.404690, 31.994373, 28.740028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465652, 31.617189, 28.858419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257455, -0.327016, -0.909273,
		0.954195, 0.062381, -0.292610,
		0.152409, -0.942958, 0.295976,
		35.511375, 31.334303, 28.947212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805794, 31.700912, 28.194771>,  <35.404690, 31.994373, 28.740028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805794, 31.700912, 28.194771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644211, 31.379471, 28.369602>,  <35.547260, 31.186605, 28.474501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644211, 31.379471, 28.369602>,  <35.805794, 31.700912, 28.194771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644211, 31.379471, 28.369602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178743, -0.399247, -0.899251,
		0.897144, -0.441385, 0.017641,
		-0.403959, -0.803605, 0.437077,
		35.523022, 31.138390, 28.500725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093647, 31.167137, 27.824867>,  <35.805794, 31.700912, 28.194771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093647, 31.167137, 27.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784634, 30.993307, 28.010054>,  <35.599228, 30.889009, 28.121166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784634, 30.993307, 28.010054>,  <36.093647, 31.167137, 27.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784634, 30.993307, 28.010054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317360, -0.367259, -0.874302,
		0.549980, -0.822353, 0.145802,
		-0.772531, -0.434577, 0.462967,
		35.552876, 30.862934, 28.148943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105400, 30.554695, 27.588156>,  <36.093647, 31.167137, 27.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105400, 30.554695, 27.588156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734993, 30.605705, 27.730272>,  <35.512749, 30.636311, 27.815542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734993, 30.605705, 27.730272>,  <36.105400, 30.554695, 27.588156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734993, 30.605705, 27.730272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368511, -0.509381, -0.777644,
		0.081810, -0.851040, 0.518689,
		-0.926016, 0.127524, 0.355290,
		35.457188, 30.643963, 27.836859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829597, 29.866449, 27.655691>,  <36.105400, 30.554695, 27.588156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829597, 29.866449, 27.655691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525101, 30.125036, 27.635345>,  <35.342403, 30.280188, 27.623138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525101, 30.125036, 27.635345>,  <35.829597, 29.866449, 27.655691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525101, 30.125036, 27.635345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250535, -0.365547, -0.896442,
		-0.598112, -0.669669, 0.440234,
		-0.761245, 0.646466, -0.050863,
		35.296726, 30.318975, 27.620087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325855, 29.471138, 27.435537>,  <35.829597, 29.866449, 27.655691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325855, 29.471138, 27.435537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227760, 29.848579, 27.346565>,  <35.168903, 30.075045, 27.293182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227760, 29.848579, 27.346565>,  <35.325855, 29.471138, 27.435537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227760, 29.848579, 27.346565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049986, -0.241438, -0.969128,
		-0.968174, -0.226547, 0.106376,
		-0.245236, 0.943602, -0.222430,
		35.154190, 30.131660, 27.279837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617744, 29.431051, 27.002941>,  <35.325855, 29.471138, 27.435537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617744, 29.431051, 27.002941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765385, 29.788168, 26.899643>,  <34.853970, 30.002438, 26.837664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765385, 29.788168, 26.899643>,  <34.617744, 29.431051, 27.002941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765385, 29.788168, 26.899643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178526, -0.204586, -0.962431,
		-0.912084, 0.401333, 0.083875,
		0.369096, 0.892791, -0.258248,
		34.876114, 30.056005, 26.822168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188885, 29.711775, 26.464165>,  <34.617744, 29.431051, 27.002941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188885, 29.711775, 26.464165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532288, 29.909782, 26.410620>,  <34.738331, 30.028587, 26.378492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532288, 29.909782, 26.410620>,  <34.188885, 29.711775, 26.464165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532288, 29.909782, 26.410620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096379, -0.100631, -0.990245,
		-0.503660, 0.863036, -0.038684,
		0.858509, 0.495018, -0.133862,
		34.789841, 30.058289, 26.370461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173149, 30.036367, 25.843292>,  <34.188885, 29.711775, 26.464165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173149, 30.036367, 25.843292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567127, 30.068632, 25.904461>,  <34.803513, 30.087990, 25.941162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567127, 30.068632, 25.904461>,  <34.173149, 30.036367, 25.843292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567127, 30.068632, 25.904461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164217, -0.159783, -0.973397,
		-0.054080, 0.983851, -0.170623,
		0.984941, 0.080661, 0.152924,
		34.862610, 30.092831, 25.950338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372890, 30.425579, 25.229864>,  <34.173149, 30.036367, 25.843292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372890, 30.425579, 25.229864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701904, 30.270010, 25.395840>,  <34.899311, 30.176668, 25.495426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701904, 30.270010, 25.395840>,  <34.372890, 30.425579, 25.229864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701904, 30.270010, 25.395840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389545, -0.146295, -0.909314,
		0.414358, 0.909580, 0.031170,
		0.822534, -0.388924, 0.414941,
		34.948666, 30.153334, 25.520321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873158, 30.756790, 24.871918>,  <34.372890, 30.425579, 25.229864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873158, 30.756790, 24.871918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016842, 30.421421, 25.035877>,  <35.103054, 30.220200, 25.134253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016842, 30.421421, 25.035877>,  <34.873158, 30.756790, 24.871918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016842, 30.421421, 25.035877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309095, -0.307541, -0.899933,
		0.880583, 0.449964, 0.148679,
		0.359212, -0.838422, 0.409897,
		35.124607, 30.169895, 25.158846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572128, 30.678619, 24.675680>,  <34.873158, 30.756790, 24.871918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572128, 30.678619, 24.675680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459072, 30.303802, 24.757717>,  <35.391239, 30.078913, 24.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459072, 30.303802, 24.757717>,  <35.572128, 30.678619, 24.675680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459072, 30.303802, 24.757717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311383, -0.291861, -0.904355,
		0.907278, -0.191749, 0.374272,
		-0.282645, -0.937043, 0.205092,
		35.374279, 30.022690, 24.819244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206772, 30.235790, 24.539608>,  <35.572128, 30.678619, 24.675680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206772, 30.235790, 24.539608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890640, 29.990732, 24.542261>,  <35.700962, 29.843697, 24.543854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890640, 29.990732, 24.542261>,  <36.206772, 30.235790, 24.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890640, 29.990732, 24.542261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277962, -0.368186, -0.887229,
		0.545999, -0.699361, 0.461281,
		-0.790331, -0.612644, 0.006634,
		35.653542, 29.806938, 24.544250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412437, 29.634844, 24.198610>,  <36.206772, 30.235790, 24.539608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412437, 29.634844, 24.198610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015709, 29.584059, 24.193403>,  <35.777672, 29.553587, 24.190279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015709, 29.584059, 24.193403>,  <36.412437, 29.634844, 24.198610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015709, 29.584059, 24.193403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072029, -0.472642, -0.878306,
		0.105361, -0.872061, 0.477922,
		-0.991822, -0.126963, -0.013015,
		35.718163, 29.545971, 24.189499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276291, 28.961967, 23.876198>,  <36.412437, 29.634844, 24.198610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276291, 28.961967, 23.876198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920033, 29.141851, 23.849337>,  <35.706276, 29.249781, 23.833220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920033, 29.141851, 23.849337>,  <36.276291, 28.961967, 23.876198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920033, 29.141851, 23.849337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171136, -0.468373, -0.866798,
		-0.421258, -0.760520, 0.494117,
		-0.890648, 0.449707, -0.067153,
		35.652840, 29.276764, 23.829189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800449, 28.442814, 23.735884>,  <36.276291, 28.961967, 23.876198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800449, 28.442814, 23.735884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648838, 28.792814, 23.615408>,  <35.557873, 29.002813, 23.543121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648838, 28.792814, 23.615408>,  <35.800449, 28.442814, 23.735884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648838, 28.792814, 23.615408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244743, -0.408671, -0.879255,
		-0.892436, -0.259545, 0.369046,
		-0.379024, 0.875000, -0.301191,
		35.535130, 29.055315, 23.525051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001148, 28.408926, 23.568609>,  <35.800449, 28.442814, 23.735884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001148, 28.408926, 23.568609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152374, 28.722364, 23.371412>,  <35.243111, 28.910427, 23.253094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152374, 28.722364, 23.371412>,  <35.001148, 28.408926, 23.568609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152374, 28.722364, 23.371412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315741, -0.391449, -0.864335,
		-0.870272, 0.482434, 0.099420,
		0.378067, 0.783597, -0.492991,
		35.265793, 28.957443, 23.223515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481239, 28.719162, 23.241863>,  <35.001148, 28.408926, 23.568609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481239, 28.719162, 23.241863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812725, 28.838215, 23.052273>,  <35.011616, 28.909647, 22.938519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812725, 28.838215, 23.052273>,  <34.481239, 28.719162, 23.241863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812725, 28.838215, 23.052273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394225, -0.290708, -0.871823,
		-0.397271, 0.909343, -0.123579,
		0.828711, 0.297632, -0.473976,
		35.061340, 28.927504, 22.910080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226269, 28.795395, 22.591928>,  <34.481239, 28.719162, 23.241863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226269, 28.795395, 22.591928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620956, 28.803909, 22.527519>,  <34.857769, 28.809019, 22.488873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620956, 28.803909, 22.527519>,  <34.226269, 28.795395, 22.591928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620956, 28.803909, 22.527519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154837, -0.176195, -0.972101,
		-0.049066, 0.984125, -0.170559,
		0.986721, 0.021288, -0.161024,
		34.916973, 28.810295, 22.479212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216988, 29.076797, 22.039623>,  <34.226269, 28.795395, 22.591928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216988, 29.076797, 22.039623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574821, 28.898748, 22.055561>,  <34.789520, 28.791920, 22.065123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574821, 28.898748, 22.055561>,  <34.216988, 29.076797, 22.039623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574821, 28.898748, 22.055561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111452, -0.308547, -0.944657,
		0.432781, 0.840634, -0.325631,
		0.894583, -0.445122, 0.039843,
		34.843197, 28.765211, 22.067514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435150, 29.221251, 21.389103>,  <34.216988, 29.076797, 22.039623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435150, 29.221251, 21.389103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651104, 28.914137, 21.527109>,  <34.780674, 28.729870, 21.609913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651104, 28.914137, 21.527109>,  <34.435150, 29.221251, 21.389103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651104, 28.914137, 21.527109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048596, -0.437631, -0.897841,
		0.840336, 0.467962, -0.273580,
		0.539883, -0.767783, 0.345016,
		34.813068, 28.683802, 21.630613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017662, 29.098663, 20.882734>,  <34.435150, 29.221251, 21.389103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017662, 29.098663, 20.882734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967472, 28.754196, 21.079771>,  <34.937359, 28.547516, 21.197994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967472, 28.754196, 21.079771>,  <35.017662, 29.098663, 20.882734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967472, 28.754196, 21.079771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209716, -0.462275, -0.861581,
		0.969679, -0.211408, -0.122598,
		-0.125471, -0.861167, 0.492594,
		34.929832, 28.495846, 21.227549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402184, 28.639357, 20.471529>,  <35.017662, 29.098663, 20.882734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402184, 28.639357, 20.471529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168015, 28.411121, 20.701908>,  <35.027515, 28.274181, 20.840136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168015, 28.411121, 20.701908>,  <35.402184, 28.639357, 20.471529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168015, 28.411121, 20.701908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226794, -0.566786, -0.792034,
		0.778363, -0.594294, 0.202401,
		-0.585419, -0.570587, 0.575947,
		34.992390, 28.239944, 20.874693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590374, 27.913332, 20.313560>,  <35.402184, 28.639357, 20.471529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590374, 27.913332, 20.313560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226620, 27.882908, 20.477137>,  <35.008366, 27.864655, 20.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226620, 27.882908, 20.477137>,  <35.590374, 27.913332, 20.313560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226620, 27.882908, 20.477137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259835, -0.663844, -0.701282,
		0.324811, -0.743993, 0.583928,
		-0.909386, -0.076059, 0.408940,
		34.953804, 27.860090, 20.599819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418797, 27.202902, 20.239513>,  <35.590374, 27.913332, 20.313560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418797, 27.202902, 20.239513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056900, 27.358852, 20.308134>,  <34.839760, 27.452423, 20.349306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056900, 27.358852, 20.308134>,  <35.418797, 27.202902, 20.239513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056900, 27.358852, 20.308134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354207, -0.464938, -0.811400,
		-0.236583, -0.794877, 0.558748,
		-0.904746, 0.389876, 0.171555,
		34.785477, 27.475815, 20.359600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989922, 26.775011, 19.932247>,  <35.418797, 27.202902, 20.239513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989922, 26.775011, 19.932247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741661, 27.084570, 19.982660>,  <34.592705, 27.270306, 20.012907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741661, 27.084570, 19.982660>,  <34.989922, 26.775011, 19.932247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741661, 27.084570, 19.982660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581115, -0.346091, -0.736564,
		-0.526405, -0.530384, 0.664522,
		-0.620647, 0.773895, 0.126030,
		34.555466, 27.316738, 20.020470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294037, 26.421146, 19.936882>,  <34.989922, 26.775011, 19.932247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294037, 26.421146, 19.936882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251339, 26.812696, 19.867134>,  <34.225719, 27.047626, 19.825285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251339, 26.812696, 19.867134>,  <34.294037, 26.421146, 19.936882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251339, 26.812696, 19.867134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720135, -0.197038, -0.665268,
		-0.685573, 0.054553, 0.725957,
		-0.106749, 0.978877, -0.174369,
		34.219315, 27.106359, 19.814823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566948, 26.615223, 19.877333>,  <34.294037, 26.421146, 19.936882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566948, 26.615223, 19.877333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744984, 26.906351, 19.668653>,  <33.851807, 27.081028, 19.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744984, 26.906351, 19.668653>,  <33.566948, 26.615223, 19.877333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744984, 26.906351, 19.668653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545587, -0.241568, -0.802484,
		-0.710089, 0.641813, 0.289569,
		0.445094, 0.727819, -0.521699,
		33.878513, 27.124697, 19.512144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034367, 27.062344, 19.719997>,  <33.566948, 26.615223, 19.877333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034367, 27.062344, 19.719997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329159, 27.127590, 19.457621>,  <33.506035, 27.166739, 19.300194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329159, 27.127590, 19.457621>,  <33.034367, 27.062344, 19.719997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329159, 27.127590, 19.457621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636728, -0.158106, -0.754705,
		-0.226812, 0.973856, -0.012660,
		0.736976, 0.163115, -0.655942,
		33.550251, 27.176525, 19.260838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423756, 27.438288, 19.609562>,  <33.034367, 27.062344, 19.719997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423756, 27.438288, 19.609562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204967, 27.109669, 19.673918>,  <32.073696, 26.912497, 19.712532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204967, 27.109669, 19.673918>,  <32.423756, 27.438288, 19.609562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204967, 27.109669, 19.673918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076851, 0.240650, 0.967565,
		-0.833618, 0.516864, -0.194765,
		-0.546969, -0.821547, 0.160889,
		32.040878, 26.863205, 19.722185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829149, 27.667480, 19.926670>,  <32.423756, 27.438288, 19.609562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829149, 27.667480, 19.926670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845304, 27.276590, 20.009996>,  <31.854998, 27.042055, 20.059992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845304, 27.276590, 20.009996>,  <31.829149, 27.667480, 19.926670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845304, 27.276590, 20.009996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243967, 0.192530, 0.950480,
		-0.968942, -0.089209, -0.230635,
		0.040387, -0.977227, 0.208315,
		31.857420, 26.983421, 20.072491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311052, 27.526682, 20.404545>,  <31.829149, 27.667480, 19.926670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311052, 27.526682, 20.404545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564968, 27.220484, 20.446609>,  <31.717318, 27.036764, 20.471848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564968, 27.220484, 20.446609>,  <31.311052, 27.526682, 20.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564968, 27.220484, 20.446609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154583, 0.007532, 0.987951,
		-0.757064, -0.643397, -0.113551,
		0.634790, -0.765495, 0.105160,
		31.755405, 26.990835, 20.478157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956688, 27.053312, 20.849962>,  <31.311052, 27.526682, 20.404545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956688, 27.053312, 20.849962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343088, 26.957924, 20.889906>,  <31.574928, 26.900690, 20.913872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343088, 26.957924, 20.889906>,  <30.956688, 27.053312, 20.849962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343088, 26.957924, 20.889906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103576, -0.003082, 0.994617,
		-0.236879, -0.971145, -0.027677,
		0.966002, -0.238471, 0.099857,
		31.632889, 26.886383, 20.919863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075171, 26.448374, 21.394152>,  <30.956688, 27.053312, 20.849962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075171, 26.448374, 21.394152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416626, 26.655169, 21.368788>,  <31.621500, 26.779245, 21.353569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416626, 26.655169, 21.368788>,  <31.075171, 26.448374, 21.394152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416626, 26.655169, 21.368788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041394, 0.188694, 0.981163,
		0.519215, -0.834936, 0.182477,
		0.853641, 0.516988, -0.063411,
		31.672718, 26.810265, 21.349764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426035, 26.317173, 21.976439>,  <31.075171, 26.448374, 21.394152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426035, 26.317173, 21.976439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572052, 26.662827, 21.837862>,  <31.659662, 26.870218, 21.754717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572052, 26.662827, 21.837862>,  <31.426035, 26.317173, 21.976439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572052, 26.662827, 21.837862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016864, 0.378196, 0.925572,
		0.930838, -0.332031, 0.152630,
		0.365042, 0.864132, -0.346440,
		31.681564, 26.922066, 21.733931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604246, 26.554689, 22.605532>,  <31.426035, 26.317173, 21.976439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604246, 26.554689, 22.605532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660475, 26.866465, 22.361330>,  <31.694212, 27.053530, 22.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660475, 26.866465, 22.361330>,  <31.604246, 26.554689, 22.605532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660475, 26.866465, 22.361330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040736, 0.611549, 0.790157,
		0.989232, -0.135941, 0.054214,
		0.140569, 0.779440, -0.610502,
		31.702646, 27.100296, 22.178179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236988, 26.860241, 22.778736>,  <31.604246, 26.554689, 22.605532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236988, 26.860241, 22.778736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009567, 27.127081, 22.586187>,  <31.873114, 27.287186, 22.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009567, 27.127081, 22.586187>,  <32.236988, 26.860241, 22.778736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009567, 27.127081, 22.586187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063711, 0.619103, 0.782721,
		0.820174, 0.414352, -0.394496,
		-0.568556, 0.667101, -0.481374,
		31.839001, 27.327211, 22.441774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562099, 27.423979, 22.896252>,  <32.236988, 26.860241, 22.778736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562099, 27.423979, 22.896252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188122, 27.547987, 22.827250>,  <31.963734, 27.622393, 22.785849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188122, 27.547987, 22.827250>,  <32.562099, 27.423979, 22.896252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188122, 27.547987, 22.827250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003964, 0.495329, 0.868696,
		0.354763, 0.811502, -0.464336,
		-0.934948, 0.310022, -0.172507,
		31.907637, 27.640993, 22.775497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583149, 28.079601, 23.030071>,  <32.562099, 27.423979, 22.896252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583149, 28.079601, 23.030071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188503, 28.021515, 23.059767>,  <31.951717, 27.986662, 23.077583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188503, 28.021515, 23.059767>,  <32.583149, 28.079601, 23.030071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188503, 28.021515, 23.059767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018479, 0.551794, 0.833776,
		-0.162043, 0.821240, -0.547090,
		-0.986611, -0.145217, 0.074239,
		31.892521, 27.977949, 23.082039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297062, 28.753708, 23.092815>,  <32.583149, 28.079601, 23.030071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297062, 28.753708, 23.092815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008617, 28.498528, 23.200905>,  <31.835552, 28.345419, 23.265759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008617, 28.498528, 23.200905>,  <32.297062, 28.753708, 23.092815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008617, 28.498528, 23.200905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168352, 0.539688, 0.824860,
		-0.672058, 0.549320, -0.496574,
		-0.721108, -0.637953, 0.270222,
		31.792286, 28.307142, 23.281971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731537, 29.162477, 23.270123>,  <32.297062, 28.753708, 23.092815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731537, 29.162477, 23.270123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633406, 28.814646, 23.441538>,  <31.574528, 28.605946, 23.544386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633406, 28.814646, 23.441538>,  <31.731537, 29.162477, 23.270123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633406, 28.814646, 23.441538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186791, 0.476163, 0.859289,
		-0.951275, 0.130759, -0.279245,
		-0.245326, -0.869581, 0.428537,
		31.559809, 28.553772, 23.570099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145540, 29.266117, 23.770391>,  <31.731537, 29.162477, 23.270123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145540, 29.266117, 23.770391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341686, 28.934706, 23.878527>,  <31.459373, 28.735859, 23.943407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341686, 28.934706, 23.878527>,  <31.145540, 29.266117, 23.770391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341686, 28.934706, 23.878527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126679, 0.239138, 0.962687,
		-0.862263, -0.506312, 0.012307,
		0.490362, -0.828530, 0.270339,
		31.488794, 28.686148, 23.959629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654400, 28.998314, 24.279631>,  <31.145540, 29.266117, 23.770391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654400, 28.998314, 24.279631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008430, 28.824108, 24.345314>,  <31.220848, 28.719584, 24.384724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008430, 28.824108, 24.345314>,  <30.654400, 28.998314, 24.279631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008430, 28.824108, 24.345314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073899, 0.216836, 0.973407,
		-0.459542, -0.873674, 0.159732,
		0.885076, -0.435517, 0.164208,
		31.273954, 28.693453, 24.394577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541447, 28.717474, 24.958191>,  <30.654400, 28.998314, 24.279631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541447, 28.717474, 24.958191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926441, 28.771727, 24.864187>,  <31.157438, 28.804277, 24.807785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926441, 28.771727, 24.864187>,  <30.541447, 28.717474, 24.958191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926441, 28.771727, 24.864187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152561, 0.445735, 0.882069,
		0.224385, -0.884831, 0.408321,
		0.962485, 0.135629, -0.235007,
		31.215187, 28.812416, 24.793684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933971, 28.532196, 25.626921>,  <30.541447, 28.717474, 24.958191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933971, 28.532196, 25.626921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212013, 28.724648, 25.413248>,  <31.378838, 28.840118, 25.285044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212013, 28.724648, 25.413248>,  <30.933971, 28.532196, 25.626921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212013, 28.724648, 25.413248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352531, 0.419458, 0.836527,
		0.626542, -0.769787, 0.121954,
		0.695102, 0.481127, -0.534182,
		31.420544, 28.868986, 25.252993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512127, 28.471508, 26.037788>,  <30.933971, 28.532196, 25.626921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512127, 28.471508, 26.037788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582245, 28.782381, 25.796041>,  <31.624315, 28.968904, 25.650993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582245, 28.782381, 25.796041>,  <31.512127, 28.471508, 26.037788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582245, 28.782381, 25.796041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440041, 0.487294, 0.754261,
		0.880702, -0.398164, -0.256572,
		0.175293, 0.777181, -0.604369,
		31.634832, 29.015535, 25.614731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132229, 28.420235, 26.221767>,  <31.512127, 28.471508, 26.037788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132229, 28.420235, 26.221767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041348, 28.758125, 26.027937>,  <31.986818, 28.960859, 25.911638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041348, 28.758125, 26.027937>,  <32.132229, 28.420235, 26.221767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041348, 28.758125, 26.027937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517531, 0.526243, 0.674707,
		0.824949, -0.097487, -0.556737,
		-0.227204, 0.844727, -0.484576,
		31.973186, 29.011543, 25.882565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793129, 28.766386, 25.880571>,  <32.132229, 28.420235, 26.221767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793129, 28.766386, 25.880571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499924, 29.026720, 25.959669>,  <32.324001, 29.182920, 26.007128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499924, 29.026720, 25.959669>,  <32.793129, 28.766386, 25.880571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499924, 29.026720, 25.959669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424277, 0.210240, 0.880788,
		0.531677, 0.729527, -0.430244,
		-0.733013, 0.650837, 0.197742,
		32.280018, 29.221972, 26.018991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188091, 29.203028, 26.070583>,  <32.793129, 28.766386, 25.880571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188091, 29.203028, 26.070583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831005, 29.303379, 26.220314>,  <32.616753, 29.363590, 26.310152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831005, 29.303379, 26.220314>,  <33.188091, 29.203028, 26.070583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831005, 29.303379, 26.220314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418329, 0.152590, 0.895386,
		0.167513, 0.955917, -0.241169,
		-0.892715, 0.250876, 0.374327,
		32.563190, 29.378641, 26.332613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336224, 29.777157, 26.481117>,  <33.188091, 29.203028, 26.070583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336224, 29.777157, 26.481117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990211, 29.624372, 26.611246>,  <32.782604, 29.532701, 26.689323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990211, 29.624372, 26.611246>,  <33.336224, 29.777157, 26.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990211, 29.624372, 26.611246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255558, 0.222559, 0.940828,
		-0.431763, 0.896980, -0.094906,
		-0.865027, -0.381961, 0.325323,
		32.730705, 29.509785, 26.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132797, 30.263508, 26.963812>,  <33.336224, 29.777157, 26.481117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132797, 30.263508, 26.963812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923706, 29.937557, 27.063993>,  <32.798252, 29.741987, 27.124104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923706, 29.937557, 27.063993>,  <33.132797, 30.263508, 26.963812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923706, 29.937557, 27.063993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124684, 0.217551, 0.968052,
		-0.843332, 0.537256, -0.012118,
		-0.522728, -0.814879, 0.250455,
		32.766888, 29.693094, 27.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623859, 30.389538, 27.506029>,  <33.132797, 30.263508, 26.963812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623859, 30.389538, 27.506029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682640, 29.994038, 27.517202>,  <32.717911, 29.756739, 27.523907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682640, 29.994038, 27.517202>,  <32.623859, 30.389538, 27.506029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682640, 29.994038, 27.517202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147083, 0.049771, 0.987871,
		-0.978146, -0.141065, 0.152742,
		0.146956, -0.988749, 0.027935,
		32.726727, 29.697412, 27.525583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228004, 30.252964, 28.085573>,  <32.623859, 30.389538, 27.506029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228004, 30.252964, 28.085573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464027, 29.935820, 28.024635>,  <32.605640, 29.745533, 27.988071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464027, 29.935820, 28.024635>,  <32.228004, 30.252964, 28.085573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464027, 29.935820, 28.024635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298518, 0.038928, 0.953610,
		-0.750147, -0.608161, 0.259652,
		0.590056, -0.792859, -0.152346,
		32.641045, 29.697962, 27.978931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125267, 29.828407, 28.680075>,  <32.228004, 30.252964, 28.085573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125267, 29.828407, 28.680075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460491, 29.672750, 28.527119>,  <32.661625, 29.579357, 28.435345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460491, 29.672750, 28.527119>,  <32.125267, 29.828407, 28.680075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460491, 29.672750, 28.527119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434709, 0.052766, 0.899024,
		-0.329670, -0.919665, 0.213385,
		0.838061, -0.389142, -0.382392,
		32.711910, 29.556007, 28.412401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323498, 29.310373, 29.122948>,  <32.125267, 29.828407, 28.680075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323498, 29.310373, 29.122948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657829, 29.416664, 28.930792>,  <32.858429, 29.480438, 28.815498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657829, 29.416664, 28.930792>,  <32.323498, 29.310373, 29.122948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657829, 29.416664, 28.930792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503864, -0.023907, 0.863452,
		0.217957, -0.963752, -0.153872,
		0.835833, 0.265726, -0.480389,
		32.908581, 29.496382, 28.786674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783356, 28.830036, 29.322443>,  <32.323498, 29.310373, 29.122948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783356, 28.830036, 29.322443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987206, 29.149895, 29.195417>,  <33.109516, 29.341810, 29.119202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987206, 29.149895, 29.195417>,  <32.783356, 28.830036, 29.322443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987206, 29.149895, 29.195417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541310, -0.011099, 0.840750,
		0.668778, -0.600369, -0.438512,
		0.509628, 0.799646, -0.317563,
		33.140095, 29.389788, 29.100149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446167, 28.615215, 29.454792>,  <32.783356, 28.830036, 29.322443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446167, 28.615215, 29.454792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434978, 29.015057, 29.456083>,  <33.428265, 29.254961, 29.456858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434978, 29.015057, 29.456083>,  <33.446167, 28.615215, 29.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434978, 29.015057, 29.456083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510736, 0.011517, 0.859661,
		0.859282, 0.025698, -0.510855,
		-0.027975, 0.999603, 0.003229,
		33.426586, 29.314938, 29.457052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103756, 28.807823, 29.769686>,  <33.446167, 28.615215, 29.454792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103756, 28.807823, 29.769686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870289, 29.132547, 29.762899>,  <33.730209, 29.327383, 29.758827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870289, 29.132547, 29.762899>,  <34.103756, 28.807823, 29.769686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870289, 29.132547, 29.762899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309652, 0.241850, 0.919578,
		0.750628, 0.531479, -0.392540,
		-0.583672, 0.811812, -0.016965,
		33.695187, 29.376091, 29.757811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488972, 29.322611, 30.058926>,  <34.103756, 28.807823, 29.769686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488972, 29.322611, 30.058926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126629, 29.489225, 30.089712>,  <33.909222, 29.589193, 30.108185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126629, 29.489225, 30.089712>,  <34.488972, 29.322611, 30.058926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126629, 29.489225, 30.089712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254208, 0.389241, 0.885364,
		0.338827, 0.821578, -0.458483,
		-0.905856, 0.416535, 0.076967,
		33.854874, 29.614185, 30.112803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613377, 30.057095, 30.204660>,  <34.488972, 29.322611, 30.058926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613377, 30.057095, 30.204660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250946, 29.966974, 30.347919>,  <34.033489, 29.912903, 30.433874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250946, 29.966974, 30.347919>,  <34.613377, 30.057095, 30.204660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250946, 29.966974, 30.347919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203208, 0.510728, 0.835382,
		-0.371128, 0.829696, -0.416975,
		-0.906074, -0.225301, 0.358146,
		33.979122, 29.899384, 30.455364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383938, 30.721912, 30.457916>,  <34.613377, 30.057095, 30.204660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383938, 30.721912, 30.457916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115120, 30.479769, 30.628515>,  <33.953831, 30.334482, 30.730875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115120, 30.479769, 30.628515>,  <34.383938, 30.721912, 30.457916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115120, 30.479769, 30.628515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013649, 0.585975, 0.810214,
		-0.740389, 0.538675, -0.402062,
		-0.672040, -0.605361, 0.426497,
		33.913509, 30.298161, 30.756464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843388, 31.119547, 30.728388>,  <34.383938, 30.721912, 30.457916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843388, 31.119547, 30.728388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814751, 30.773306, 30.926624>,  <33.797569, 30.565561, 31.045567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814751, 30.773306, 30.926624>,  <33.843388, 31.119547, 30.728388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814751, 30.773306, 30.926624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253555, 0.496337, 0.830277,
		-0.964668, -0.066222, -0.255009,
		-0.071588, -0.865600, 0.495592,
		33.793274, 30.513626, 31.075302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223740, 31.176598, 31.219809>,  <33.843388, 31.119547, 30.728388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223740, 31.176598, 31.219809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457500, 30.881287, 31.354521>,  <33.597755, 30.704100, 31.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457500, 30.881287, 31.354521>,  <33.223740, 31.176598, 31.219809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457500, 30.881287, 31.354521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052388, 0.379838, 0.923569,
		-0.809775, -0.557374, 0.183299,
		0.584397, -0.738280, 0.336783,
		33.632820, 30.659803, 31.455555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954185, 31.002090, 31.858147>,  <33.223740, 31.176598, 31.219809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954185, 31.002090, 31.858147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 30.889256, 31.867102>,  <33.568027, 30.821554, 31.872475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337837, 30.889256, 31.867102>,  <32.954185, 31.002090, 31.858147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337837, 30.889256, 31.867102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103274, 0.422602, 0.900412,
		-0.263456, -0.861298, 0.434461,
		0.959127, -0.282088, 0.022387,
		33.625576, 30.804628, 31.873817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005272, 30.462252, 32.372635>,  <32.954185, 31.002090, 31.858147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005272, 30.462252, 32.372635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362907, 30.631460, 32.313770>,  <33.577488, 30.732985, 32.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362907, 30.631460, 32.313770>,  <33.005272, 30.462252, 32.372635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362907, 30.631460, 32.313770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078138, 0.470851, 0.878745,
		0.441022, -0.774177, 0.454037,
		0.894088, 0.423024, -0.147164,
		33.631134, 30.758368, 32.269623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195705, 30.671116, 33.014156>,  <33.005272, 30.462252, 32.372635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195705, 30.671116, 33.014156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484291, 30.854984, 32.807011>,  <33.657444, 30.965305, 32.682724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484291, 30.854984, 32.807011>,  <33.195705, 30.671116, 33.014156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484291, 30.854984, 32.807011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058062, 0.705085, 0.706742,
		0.690005, -0.539963, 0.482010,
		0.721472, 0.459670, -0.517863,
		33.700733, 30.992886, 32.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692451, 30.885391, 33.495556>,  <33.195705, 30.671116, 33.014156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692451, 30.885391, 33.495556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746418, 31.133038, 33.186108>,  <33.778797, 31.281626, 33.000439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746418, 31.133038, 33.186108>,  <33.692451, 30.885391, 33.495556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746418, 31.133038, 33.186108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062443, 0.773898, 0.630224,
		0.988888, -0.133333, 0.065750,
		0.134913, 0.619115, -0.773624,
		33.786892, 31.318771, 32.954021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026283, 31.469435, 33.855831>,  <33.692451, 30.885391, 33.495556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026283, 31.469435, 33.855831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955715, 31.633619, 33.497971>,  <33.913376, 31.732130, 33.283253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955715, 31.633619, 33.497971>,  <34.026283, 31.469435, 33.855831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955715, 31.633619, 33.497971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087279, 0.911849, 0.401140,
		0.980438, -0.007315, -0.196693,
		-0.176420, 0.410460, -0.894650,
		33.902790, 31.756758, 33.229576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466110, 32.024479, 33.831631>,  <34.026283, 31.469435, 33.855831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466110, 32.024479, 33.831631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154606, 32.108986, 33.595360>,  <33.967705, 32.159691, 33.453598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154606, 32.108986, 33.595360>,  <34.466110, 32.024479, 33.831631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154606, 32.108986, 33.595360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173145, 0.832624, 0.526079,
		0.602952, 0.511962, -0.611836,
		-0.778762, 0.211264, -0.590675,
		33.920979, 32.172363, 33.418156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172268, 32.323021, 34.494915>,  <34.466110, 32.024479, 33.831631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172268, 32.323021, 34.494915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926006, 32.578281, 34.679836>,  <33.778248, 32.731438, 34.790791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926006, 32.578281, 34.679836>,  <34.172268, 32.323021, 34.494915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926006, 32.578281, 34.679836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639166, -0.061263, -0.766624,
		-0.460904, -0.767466, 0.445604,
		-0.615657, 0.638155, 0.462303,
		33.741310, 32.769726, 34.818527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492668, 32.003784, 34.581875>,  <34.172268, 32.323021, 34.494915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492668, 32.003784, 34.581875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508572, 32.398487, 34.518982>,  <33.518112, 32.635311, 34.481247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508572, 32.398487, 34.518982>,  <33.492668, 32.003784, 34.581875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508572, 32.398487, 34.518982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451233, -0.122666, -0.883936,
		-0.891520, 0.106093, 0.440382,
		0.039760, 0.986761, -0.157232,
		33.520500, 32.694515, 34.471813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851311, 32.250210, 34.346981>,  <33.492668, 32.003784, 34.581875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851311, 32.250210, 34.346981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101250, 32.524857, 34.198318>,  <33.251213, 32.689644, 34.109119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101250, 32.524857, 34.198318>,  <32.851311, 32.250210, 34.346981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101250, 32.524857, 34.198318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373469, -0.155178, -0.914572,
		-0.685631, 0.710268, 0.159467,
		0.624845, 0.686615, -0.371657,
		33.288704, 32.730843, 34.086823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233288, 32.509014, 34.072540>,  <32.851311, 32.250210, 34.346981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233288, 32.509014, 34.072540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915989, 32.747482, 34.023006>,  <31.725609, 32.890564, 33.993286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915989, 32.747482, 34.023006>,  <32.233288, 32.509014, 34.072540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915989, 32.747482, 34.023006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419742, 0.682725, 0.598083,
		0.441107, 0.422449, -0.791809,
		-0.793247, 0.596174, -0.123835,
		31.678015, 32.926334, 33.985855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575542, 33.082764, 34.194569>,  <32.233288, 32.509014, 34.072540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575542, 33.082764, 34.194569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189499, 33.185211, 34.172764>,  <31.957872, 33.246681, 34.159683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189499, 33.185211, 34.172764>,  <32.575542, 33.082764, 34.194569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189499, 33.185211, 34.172764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162523, 0.749094, 0.642219,
		0.205318, 0.610951, -0.764581,
		-0.965107, 0.256121, -0.054509,
		31.899967, 33.262047, 34.156410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570835, 33.768070, 34.158783>,  <32.575542, 33.082764, 34.194569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570835, 33.768070, 34.158783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214569, 33.670753, 34.312416>,  <32.000809, 33.612366, 34.404594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214569, 33.670753, 34.312416>,  <32.570835, 33.768070, 34.158783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214569, 33.670753, 34.312416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060759, 0.773512, 0.630862,
		-0.450576, 0.585225, -0.674161,
		-0.890668, -0.243290, 0.384084,
		31.947369, 33.597767, 34.427643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086712, 34.310890, 34.107883>,  <32.570835, 33.768070, 34.158783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086712, 34.310890, 34.107883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076435, 34.086742, 34.439022>,  <32.070267, 33.952255, 34.637703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076435, 34.086742, 34.439022>,  <32.086712, 34.310890, 34.107883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076435, 34.086742, 34.439022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136240, 0.818428, 0.558224,
		-0.990343, 0.127129, 0.055315,
		-0.025695, -0.560369, 0.827845,
		32.068726, 33.918633, 34.687374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550600, 34.587837, 34.539242>,  <32.086712, 34.310890, 34.107883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550600, 34.587837, 34.539242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855835, 34.427498, 34.742027>,  <32.038975, 34.331295, 34.863697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855835, 34.427498, 34.742027>,  <31.550600, 34.587837, 34.539242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855835, 34.427498, 34.742027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123746, 0.860527, 0.494147,
		-0.634336, -0.314344, 0.706262,
		0.763089, -0.400852, 0.506964,
		32.084763, 34.307243, 34.894115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544798, 34.846531, 35.239578>,  <31.550600, 34.587837, 34.539242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544798, 34.846531, 35.239578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914736, 34.694492, 35.234051>,  <32.136700, 34.603268, 35.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914736, 34.694492, 35.234051>,  <31.544798, 34.846531, 35.239578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914736, 34.694492, 35.234051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294628, 0.692949, 0.658040,
		-0.240541, -0.612656, 0.752856,
		0.924843, -0.380098, -0.013823,
		32.192188, 34.580463, 35.229904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493795, 34.918461, 35.978230>,  <31.544798, 34.846531, 35.239578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493795, 34.918461, 35.978230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790520, 35.070110, 35.756966>,  <31.968554, 35.161098, 35.624207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790520, 35.070110, 35.756966>,  <31.493795, 34.918461, 35.978230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790520, 35.070110, 35.756966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197952, 0.664318, 0.720762,
		0.640724, -0.644170, 0.417754,
		0.741814, 0.379114, -0.553159,
		32.013062, 35.183846, 35.591019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802080, 35.132519, 36.456650>,  <31.493795, 34.918461, 35.978230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802080, 35.132519, 36.456650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945650, 35.315918, 36.131454>,  <32.031792, 35.425957, 35.936337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945650, 35.315918, 36.131454>,  <31.802080, 35.132519, 36.456650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945650, 35.315918, 36.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349910, 0.741408, 0.572605,
		0.865294, -0.489998, 0.105679,
		0.358927, 0.458494, -0.812991,
		32.053329, 35.453465, 35.887558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591637, 35.213245, 36.409260>,  <31.802080, 35.132519, 36.456650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591637, 35.213245, 36.409260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384281, 35.520504, 36.258945>,  <32.259869, 35.704861, 36.168758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384281, 35.520504, 36.258945>,  <32.591637, 35.213245, 36.409260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384281, 35.520504, 36.258945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495203, 0.627919, 0.600410,
		0.697168, 0.125157, -0.705898,
		-0.518393, 0.768149, -0.375787,
		32.228764, 35.750950, 36.146210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058018, 35.109562, 37.089382>,  <32.591637, 35.213245, 36.409260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058018, 35.109562, 37.089382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823669, 34.786976, 37.121300>,  <32.683060, 34.593426, 37.140450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823669, 34.786976, 37.121300>,  <33.058018, 35.109562, 37.089382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823669, 34.786976, 37.121300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491157, -0.431674, -0.756586,
		0.644607, -0.404070, 0.649007,
		-0.585873, -0.806465, 0.079798,
		32.647907, 34.545036, 37.145241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254162, 34.366127, 37.322430>,  <33.058018, 35.109562, 37.089382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254162, 34.366127, 37.322430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970642, 34.397579, 37.042023>,  <32.800529, 34.416451, 36.873779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970642, 34.397579, 37.042023>,  <33.254162, 34.366127, 37.322430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970642, 34.397579, 37.042023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676254, -0.207009, -0.706985,
		-0.200683, -0.975177, 0.093577,
		-0.708806, 0.078598, -0.701010,
		32.758003, 34.421165, 36.831718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360081, 33.813503, 36.900547>,  <33.254162, 34.366127, 37.322430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360081, 33.813503, 36.900547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182274, 34.098125, 36.682888>,  <33.075588, 34.268898, 36.552292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182274, 34.098125, 36.682888>,  <33.360081, 33.813503, 36.900547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182274, 34.098125, 36.682888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704519, -0.097450, -0.702962,
		-0.553221, -0.695843, -0.457984,
		-0.444521, 0.711552, -0.544146,
		33.048916, 34.311592, 36.519646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249645, 33.600975, 36.200878>,  <33.360081, 33.813503, 36.900547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249645, 33.600975, 36.200878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272072, 33.998295, 36.160446>,  <33.285530, 34.236687, 36.136185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272072, 33.998295, 36.160446>,  <33.249645, 33.600975, 36.200878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272072, 33.998295, 36.160446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663250, -0.112732, -0.739859,
		-0.746295, -0.025560, -0.665124,
		0.056070, 0.993297, -0.101084,
		33.288895, 34.296284, 36.130119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197872, 33.797340, 35.432495>,  <33.249645, 33.600975, 36.200878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197872, 33.797340, 35.432495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426434, 34.037907, 35.655849>,  <33.563572, 34.182247, 35.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426434, 34.037907, 35.655849>,  <33.197872, 33.797340, 35.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426434, 34.037907, 35.655849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752624, -0.112755, -0.648724,
		-0.327194, 0.790938, -0.517071,
		0.571403, 0.601418, 0.558386,
		33.597855, 34.218330, 35.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417564, 34.383205, 35.042252>,  <33.197872, 33.797340, 35.432495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417564, 34.383205, 35.042252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682262, 34.332676, 35.337856>,  <33.841080, 34.302361, 35.515221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682262, 34.332676, 35.337856>,  <33.417564, 34.383205, 35.042252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682262, 34.332676, 35.337856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737060, 0.290080, -0.610407,
		-0.137265, 0.948629, 0.285064,
		0.661741, -0.126322, 0.739014,
		33.880783, 34.294781, 35.559559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872887, 34.969406, 35.045029>,  <33.417564, 34.383205, 35.042252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872887, 34.969406, 35.045029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092239, 34.716343, 35.263760>,  <34.223850, 34.564507, 35.394997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092239, 34.716343, 35.263760>,  <33.872887, 34.969406, 35.045029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092239, 34.716343, 35.263760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834837, 0.376515, -0.401602,
		0.048189, 0.676741, 0.734642,
		0.548384, -0.632659, 0.546824,
		34.256756, 34.526546, 35.427807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403770, 35.381432, 35.480865>,  <33.872887, 34.969406, 35.045029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403770, 35.381432, 35.480865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556332, 35.023094, 35.389652>,  <34.647869, 34.808094, 35.334923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556332, 35.023094, 35.389652>,  <34.403770, 35.381432, 35.480865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556332, 35.023094, 35.389652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888393, 0.423405, -0.177446,
		0.255513, -0.134902, 0.957348,
		0.381408, -0.895840, -0.228031,
		34.670753, 34.754341, 35.321243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931499, 35.200661, 35.966263>,  <34.403770, 35.381432, 35.480865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931499, 35.200661, 35.966263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973713, 35.050896, 35.597767>,  <34.999043, 34.961037, 35.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973713, 35.050896, 35.597767>,  <34.931499, 35.200661, 35.966263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973713, 35.050896, 35.597767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807372, 0.573088, -0.140427,
		0.580527, -0.728959, 0.362776,
		0.105537, -0.374417, -0.921235,
		35.005375, 34.938572, 35.321396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680916, 35.199570, 35.848946>,  <34.931499, 35.200661, 35.966263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680916, 35.199570, 35.848946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486004, 35.203373, 35.499668>,  <35.369057, 35.205654, 35.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486004, 35.203373, 35.499668>,  <35.680916, 35.199570, 35.848946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486004, 35.203373, 35.499668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564870, 0.765991, -0.306888,
		0.665940, -0.642781, -0.378624,
		-0.487284, 0.009504, -0.873191,
		35.339817, 35.206223, 35.237709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191879, 35.247173, 35.385807>,  <35.680916, 35.199570, 35.848946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191879, 35.247173, 35.385807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860973, 35.343613, 35.182823>,  <35.662430, 35.401474, 35.061031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860973, 35.343613, 35.182823>,  <36.191879, 35.247173, 35.385807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860973, 35.343613, 35.182823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513273, 0.691617, -0.508150,
		0.228454, -0.680837, -0.695895,
		-0.827260, 0.241095, -0.507459,
		35.612797, 35.415939, 35.030586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302540, 35.278885, 34.717014>,  <36.191879, 35.247173, 35.385807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302540, 35.278885, 34.717014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006786, 35.532326, 34.808105>,  <35.829334, 35.684391, 34.862762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006786, 35.532326, 34.808105>,  <36.302540, 35.278885, 34.717014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006786, 35.532326, 34.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607367, 0.773642, -0.180509,
		-0.290553, 0.004851, -0.956847,
		-0.739381, 0.633604, 0.227731,
		35.784973, 35.722408, 34.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127583, 35.642193, 34.096680>,  <36.302540, 35.278885, 34.717014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127583, 35.642193, 34.096680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059326, 35.862484, 34.423500>,  <36.018372, 35.994659, 34.619595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059326, 35.862484, 34.423500>,  <36.127583, 35.642193, 34.096680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059326, 35.862484, 34.423500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576553, 0.728249, -0.370461,
		-0.799042, 0.407858, -0.441796,
		-0.170642, 0.550733, 0.817053,
		36.008133, 36.027702, 34.668617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646557, 36.231964, 34.005825>,  <36.127583, 35.642193, 34.096680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646557, 36.231964, 34.005825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697903, 36.090282, 33.635296>,  <35.728710, 36.005276, 33.412979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697903, 36.090282, 33.635296>,  <35.646557, 36.231964, 34.005825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697903, 36.090282, 33.635296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231440, 0.918953, -0.319312,
		0.964344, -0.173399, 0.199935,
		0.128362, -0.354200, -0.926318,
		35.736412, 35.984024, 33.357399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297848, 36.354923, 33.656536>,  <35.646557, 36.231964, 34.005825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297848, 36.354923, 33.656536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052944, 36.335083, 33.340897>,  <35.906002, 36.323177, 33.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052944, 36.335083, 33.340897>,  <36.297848, 36.354923, 33.656536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052944, 36.335083, 33.340897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312195, 0.901768, -0.298913,
		0.726415, -0.429365, -0.536626,
		-0.612255, -0.049603, -0.789103,
		35.869267, 36.320202, 33.104164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690567, 36.499142, 32.987358>,  <36.297848, 36.354923, 33.656536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690567, 36.499142, 32.987358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297073, 36.567707, 32.965881>,  <36.060978, 36.608845, 32.952995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297073, 36.567707, 32.965881>,  <36.690567, 36.499142, 32.987358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297073, 36.567707, 32.965881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175483, 0.980930, -0.083562,
		0.038347, -0.091625, -0.995055,
		-0.983735, 0.171411, -0.053694,
		36.001953, 36.619129, 32.949772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523109, 36.835915, 32.413059>,  <36.690567, 36.499142, 32.987358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523109, 36.835915, 32.413059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272549, 36.930000, 32.710327>,  <36.122215, 36.986454, 32.888687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272549, 36.930000, 32.710327>,  <36.523109, 36.835915, 32.413059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272549, 36.930000, 32.710327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335312, 0.941980, -0.015516,
		-0.703699, 0.239474, -0.668924,
		-0.626397, 0.235216, 0.743169,
		36.084629, 37.000565, 32.933277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111992, 37.426010, 32.238708>,  <36.523109, 36.835915, 32.413059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111992, 37.426010, 32.238708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126080, 37.418812, 32.638397>,  <36.134533, 37.414494, 32.878208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126080, 37.418812, 32.638397>,  <36.111992, 37.426010, 32.238708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126080, 37.418812, 32.638397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239852, 0.970768, 0.009031,
		-0.970170, 0.239346, 0.038509,
		0.035222, -0.017998, 0.999218,
		36.136646, 37.413414, 32.938164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549427, 37.901592, 32.502148>,  <36.111992, 37.426010, 32.238708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549427, 37.901592, 32.502148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884480, 37.867168, 32.717915>,  <36.085510, 37.846516, 32.847374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884480, 37.867168, 32.717915>,  <35.549427, 37.901592, 32.502148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884480, 37.867168, 32.717915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201168, 0.966704, -0.158159,
		-0.507842, 0.240992, 0.827055,
		0.837632, -0.086057, 0.539413,
		36.135769, 37.841351, 32.879738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588833, 38.532585, 32.913910>,  <35.549427, 37.901592, 32.502148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588833, 38.532585, 32.913910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963551, 38.392647, 32.911819>,  <36.188381, 38.308685, 32.910564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963551, 38.392647, 32.911819>,  <35.588833, 38.532585, 32.913910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963551, 38.392647, 32.911819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346031, 0.924169, 0.161785,
		-0.051773, -0.153366, 0.986812,
		0.936793, -0.349844, -0.005223,
		36.244587, 38.287693, 32.910252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884052, 38.862537, 33.394802>,  <35.588833, 38.532585, 32.913910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884052, 38.862537, 33.394802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174473, 38.760616, 33.139324>,  <36.348724, 38.699463, 32.986038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174473, 38.760616, 33.139324>,  <35.884052, 38.862537, 33.394802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174473, 38.760616, 33.139324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432986, 0.890966, 0.136760,
		0.534206, -0.375839, 0.757212,
		0.726049, -0.254804, -0.638692,
		36.392288, 38.684174, 32.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436306, 38.930756, 33.770596>,  <35.884052, 38.862537, 33.394802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436306, 38.930756, 33.770596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587040, 38.951824, 33.400684>,  <36.677483, 38.964466, 33.178738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587040, 38.951824, 33.400684>,  <36.436306, 38.930756, 33.770596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587040, 38.951824, 33.400684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452405, 0.860735, 0.233377,
		0.808283, -0.506321, 0.300528,
		0.376838, 0.052674, -0.924780,
		36.700092, 38.967625, 33.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228043, 38.851067, 33.853767>,  <36.436306, 38.930756, 33.770596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228043, 38.851067, 33.853767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062660, 39.048710, 33.547848>,  <36.963432, 39.167297, 33.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062660, 39.048710, 33.547848>,  <37.228043, 38.851067, 33.853767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062660, 39.048710, 33.547848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414506, 0.850006, 0.325075,
		0.810704, -0.182609, -0.556250,
		-0.413454, 0.494109, -0.764795,
		36.938625, 39.196941, 33.318409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722969, 39.227741, 33.465176>,  <37.228043, 38.851067, 33.853767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722969, 39.227741, 33.465176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380875, 39.434055, 33.445011>,  <37.175617, 39.557842, 33.432911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380875, 39.434055, 33.445011>,  <37.722969, 39.227741, 33.465176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380875, 39.434055, 33.445011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454001, 0.792577, 0.407069,
		0.249917, 0.325252, -0.912005,
		-0.855234, 0.515784, -0.050414,
		37.124306, 39.588791, 33.429886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488216, 38.933548, 33.508972>,  <37.722969, 39.227741, 33.465176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488216, 38.933548, 33.508972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524700, 38.919914, 33.907070>,  <38.546589, 38.911732, 34.145931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524700, 38.919914, 33.907070>,  <38.488216, 38.933548, 33.508972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524700, 38.919914, 33.907070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468350, -0.880516, -0.073079,
		0.878823, 0.472790, -0.064347,
		0.091209, -0.034087, 0.995248,
		38.552063, 38.909687, 34.205647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085220, 38.736500, 33.631882>,  <38.488216, 38.933548, 33.508972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085220, 38.736500, 33.631882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940174, 38.662937, 33.997326>,  <38.853146, 38.618801, 34.216595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940174, 38.662937, 33.997326>,  <39.085220, 38.736500, 33.631882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940174, 38.662937, 33.997326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409948, -0.911871, -0.020846,
		0.836932, 0.366976, 0.406046,
		-0.362611, -0.183904, 0.913615,
		38.831390, 38.607765, 34.271412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645718, 38.551666, 34.020615>,  <39.085220, 38.736500, 33.631882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645718, 38.551666, 34.020615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295280, 38.389412, 34.124866>,  <39.085018, 38.292061, 34.187420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295280, 38.389412, 34.124866>,  <39.645718, 38.551666, 34.020615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295280, 38.389412, 34.124866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412421, -0.910476, -0.030700,
		0.249753, 0.080595, 0.964950,
		-0.876089, -0.405633, 0.260633,
		39.032455, 38.267723, 34.203056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736485, 37.871117, 34.506054>,  <39.645718, 38.551666, 34.020615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736485, 37.871117, 34.506054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374138, 37.845474, 34.338585>,  <39.156731, 37.830090, 34.238102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374138, 37.845474, 34.338585>,  <39.736485, 37.871117, 34.506054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374138, 37.845474, 34.338585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126233, -0.984420, -0.122405,
		-0.404305, -0.163734, 0.899849,
		-0.905871, -0.064102, -0.418674,
		39.102375, 37.826244, 34.212982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141590, 37.338020, 34.765553>,  <39.736485, 37.871117, 34.506054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141590, 37.338020, 34.765553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135841, 37.415661, 34.373203>,  <39.132393, 37.462246, 34.137794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135841, 37.415661, 34.373203>,  <39.141590, 37.338020, 34.765553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135841, 37.415661, 34.373203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143168, -0.970471, -0.194138,
		-0.989594, -0.143220, -0.013844,
		-0.014369, 0.194100, -0.980877,
		39.131531, 37.473892, 34.078941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604431, 36.976391, 34.410606>,  <39.141590, 37.338020, 34.765553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604431, 36.976391, 34.410606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911278, 37.054180, 34.166080>,  <39.095387, 37.100853, 34.019363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911278, 37.054180, 34.166080>,  <38.604431, 36.976391, 34.410606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911278, 37.054180, 34.166080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, -0.977250, -0.053276,
		-0.607767, -0.084629, -0.789593,
		0.767121, 0.194476, -0.611314,
		39.141415, 37.112522, 33.982685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713627, 36.733429, 33.631065>,  <38.604431, 36.976391, 34.410606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713627, 36.733429, 33.631065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089420, 36.744686, 33.767635>,  <39.314896, 36.751442, 33.849579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089420, 36.744686, 33.767635>,  <38.713627, 36.733429, 33.631065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089420, 36.744686, 33.767635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139001, -0.942216, -0.304808,
		0.313118, 0.333821, -0.889112,
		0.939487, 0.028146, 0.341427,
		39.371265, 36.753132, 33.870064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203163, 36.467358, 33.056343>,  <38.713627, 36.733429, 33.631065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203163, 36.467358, 33.056343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449203, 36.237015, 32.840923>,  <39.596828, 36.098808, 32.711670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449203, 36.237015, 32.840923>,  <39.203163, 36.467358, 33.056343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449203, 36.237015, 32.840923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787922, 0.424014, 0.446532,
		-0.028788, -0.698996, 0.714545,
		0.615101, -0.575861, -0.538548,
		39.633736, 36.064255, 32.679359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757538, 36.381130, 33.514015>,  <39.203163, 36.467358, 33.056343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757538, 36.381130, 33.514015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892799, 36.284534, 33.150185>,  <39.973957, 36.226578, 32.931885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892799, 36.284534, 33.150185>,  <39.757538, 36.381130, 33.514015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892799, 36.284534, 33.150185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909484, 0.332240, 0.249912,
		0.241848, -0.911757, 0.331977,
		0.338156, -0.241487, -0.909580,
		39.994247, 36.212090, 32.877312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412151, 36.502716, 33.623074>,  <39.757538, 36.381130, 33.514015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412151, 36.502716, 33.623074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434921, 36.443741, 33.228100>,  <40.448582, 36.408356, 32.991116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434921, 36.443741, 33.228100>,  <40.412151, 36.502716, 33.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434921, 36.443741, 33.228100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966332, 0.256712, 0.017376,
		0.250924, -0.955176, 0.157084,
		0.056922, -0.147435, -0.987432,
		40.452000, 36.399509, 32.931870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985184, 35.988434, 33.275902>,  <40.412151, 36.502716, 33.623074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985184, 35.988434, 33.275902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912830, 36.322727, 33.068508>,  <40.869419, 36.523304, 32.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912830, 36.322727, 33.068508>,  <40.985184, 35.988434, 33.275902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912830, 36.322727, 33.068508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942768, 0.297492, 0.150625,
		0.280129, -0.461566, -0.841716,
		-0.180880, 0.835737, -0.518485,
		40.858566, 36.573448, 32.912964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465080, 36.111889, 32.781307>,  <40.985184, 35.988434, 33.275902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465080, 36.111889, 32.781307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312790, 36.464870, 32.891815>,  <41.221416, 36.676659, 32.958118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312790, 36.464870, 32.891815>,  <41.465080, 36.111889, 32.781307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312790, 36.464870, 32.891815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903285, 0.418838, -0.093012,
		-0.197789, 0.214135, -0.956570,
		-0.380730, 0.882452, 0.276266,
		41.198570, 36.729607, 32.974693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624626, 36.715755, 32.320480>,  <41.465080, 36.111889, 32.781307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624626, 36.715755, 32.320480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615505, 36.832256, 32.703030>,  <41.610035, 36.902157, 32.932560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615505, 36.832256, 32.703030>,  <41.624626, 36.715755, 32.320480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615505, 36.832256, 32.703030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923422, 0.372721, -0.091494,
		-0.383109, 0.881051, -0.277448,
		-0.022800, 0.291254, 0.956374,
		41.608665, 36.919632, 32.989941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827446, 37.406891, 32.356636>,  <41.624626, 36.715755, 32.320480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827446, 37.406891, 32.356636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897400, 37.251202, 32.718391>,  <41.939373, 37.157787, 32.935444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897400, 37.251202, 32.718391>,  <41.827446, 37.406891, 32.356636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897400, 37.251202, 32.718391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936951, 0.348046, -0.031398,
		-0.302549, 0.852861, 0.425548,
		0.174888, -0.389219, 0.904391,
		41.949867, 37.134438, 32.989708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058796, 37.932766, 32.893147>,  <41.827446, 37.406891, 32.356636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058796, 37.932766, 32.893147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191254, 37.564766, 32.976997>,  <42.270729, 37.343967, 33.027309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191254, 37.564766, 32.976997>,  <42.058796, 37.932766, 32.893147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191254, 37.564766, 32.976997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931913, 0.353708, 0.080186,
		-0.147917, 0.168800, 0.974488,
		0.331148, -0.919999, 0.209626,
		42.290600, 37.288765, 33.039886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672638, 38.080379, 33.099052>,  <42.058796, 37.932766, 32.893147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672638, 38.080379, 33.099052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701992, 37.681484, 33.103733>,  <42.719604, 37.442146, 33.106541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701992, 37.681484, 33.103733>,  <42.672638, 38.080379, 33.099052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701992, 37.681484, 33.103733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983615, 0.074313, 0.164252,
		-0.164667, -0.000548, 0.986349,
		0.073389, -0.997235, 0.011698,
		42.724010, 37.382313, 33.107243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080013, 38.011929, 33.654594>,  <42.672638, 38.080379, 33.099052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080013, 38.011929, 33.654594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103752, 37.681629, 33.430233>,  <43.117996, 37.483448, 33.295616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103752, 37.681629, 33.430233>,  <43.080013, 38.011929, 33.654594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103752, 37.681629, 33.430233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973796, -0.075685, 0.214460,
		-0.219542, -0.558934, 0.799621,
		0.059350, -0.825751, -0.560904,
		43.121555, 37.433903, 33.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502804, 37.745136, 34.135929>,  <43.080013, 38.011929, 33.654594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502804, 37.745136, 34.135929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520645, 37.579674, 33.772194>,  <43.531349, 37.480396, 33.553951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520645, 37.579674, 33.772194>,  <43.502804, 37.745136, 34.135929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520645, 37.579674, 33.772194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989274, -0.108446, 0.097858,
		-0.139094, -0.903951, 0.404382,
		0.044605, -0.413656, -0.909340,
		43.534027, 37.455578, 33.499393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788544, 37.097057, 34.173935>,  <43.502804, 37.745136, 34.135929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788544, 37.097057, 34.173935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851303, 37.263256, 33.815552>,  <43.888958, 37.362976, 33.600521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851303, 37.263256, 33.815552>,  <43.788544, 37.097057, 34.173935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851303, 37.263256, 33.815552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971474, 0.098418, 0.215760,
		0.177826, -0.904256, -0.388200,
		0.156897, 0.415494, -0.895962,
		43.898373, 37.387905, 33.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265572, 36.650555, 33.874947>,  <43.788544, 37.097057, 34.173935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265572, 36.650555, 33.874947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300327, 37.028221, 33.747818>,  <44.321182, 37.254822, 33.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300327, 37.028221, 33.747818>,  <44.265572, 36.650555, 33.874947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300327, 37.028221, 33.747818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945947, 0.021866, 0.323584,
		0.312466, -0.328755, -0.891227,
		0.086892, 0.944162, -0.317817,
		44.326393, 37.311470, 33.652473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875877, 36.737762, 33.556721>,  <44.265572, 36.650555, 33.874947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875877, 36.737762, 33.556721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786320, 37.108360, 33.677708>,  <44.732586, 37.330719, 33.750298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786320, 37.108360, 33.677708>,  <44.875877, 36.737762, 33.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786320, 37.108360, 33.677708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943310, 0.127981, 0.306248,
		0.245026, 0.353886, -0.902622,
		-0.223896, 0.926491, 0.302465,
		44.719151, 37.386307, 33.768448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295074, 37.138969, 33.248615>,  <44.875877, 36.737762, 33.556721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295074, 37.138969, 33.248615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175026, 37.236168, 33.617588>,  <45.102997, 37.294487, 33.838970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175026, 37.236168, 33.617588>,  <45.295074, 37.138969, 33.248615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175026, 37.236168, 33.617588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953515, 0.048895, 0.297352,
		0.027153, 0.968794, -0.246377,
		-0.300120, 0.242998, 0.922432,
		45.084991, 37.309067, 33.894318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394390, 37.862598, 33.600616>,  <45.295074, 37.138969, 33.248615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394390, 37.862598, 33.600616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413166, 37.535503, 33.830086>,  <45.424431, 37.339245, 33.967766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413166, 37.535503, 33.830086>,  <45.394390, 37.862598, 33.600616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413166, 37.535503, 33.830086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961509, 0.192643, 0.195931,
		-0.270735, 0.542396, 0.795305,
		0.046938, -0.817738, 0.573674,
		45.427246, 37.290180, 34.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616447, 38.064926, 34.261707>,  <45.394390, 37.862598, 33.600616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616447, 38.064926, 34.261707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757103, 37.708309, 34.147511>,  <45.841496, 37.494339, 34.078995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757103, 37.708309, 34.147511>,  <45.616447, 38.064926, 34.261707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757103, 37.708309, 34.147511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935922, 0.328280, 0.127603,
		-0.020043, -0.312066, 0.949849,
		0.351637, -0.891542, -0.285489,
		45.862595, 37.440845, 34.061863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069336, 37.724552, 34.697296>,  <45.616447, 38.064926, 34.261707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069336, 37.724552, 34.697296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196445, 37.645760, 34.326305>,  <46.272709, 37.598484, 34.103710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196445, 37.645760, 34.326305>,  <46.069336, 37.724552, 34.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196445, 37.645760, 34.326305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906478, 0.349979, 0.236247,
		0.278063, -0.915813, 0.289770,
		0.317771, -0.196979, -0.927481,
		46.291779, 37.586666, 34.048061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747929, 37.336834, 34.744427>,  <46.069336, 37.724552, 34.697296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747929, 37.336834, 34.744427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723690, 37.528744, 34.394310>,  <46.709148, 37.643890, 34.184238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723690, 37.528744, 34.394310>,  <46.747929, 37.336834, 34.744427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723690, 37.528744, 34.394310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920094, 0.366820, 0.137369,
		0.386983, -0.797029, -0.463669,
		-0.060596, 0.479778, -0.875295,
		46.705513, 37.672676, 34.131721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229733, 36.995224, 35.187492>,  <46.747929, 37.336834, 34.744427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229733, 36.995224, 35.187492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587006, 36.857952, 35.303738>,  <47.801369, 36.775589, 35.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587006, 36.857952, 35.303738>,  <47.229733, 36.995224, 35.187492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587006, 36.857952, 35.303738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325345, -0.939266, -0.109222,
		0.310446, 0.003006, -0.950586,
		0.893182, -0.343176, 0.290613,
		47.854961, 36.755001, 35.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.550949, 36.623150, 34.622894>,  <47.229733, 36.995224, 35.187492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.550949, 36.623150, 34.622894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631416, 36.494827, 34.993107>,  <47.679699, 36.417831, 35.215237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631416, 36.494827, 34.993107>,  <47.550949, 36.623150, 34.622894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631416, 36.494827, 34.993107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324326, -0.913372, -0.246099,
		0.924307, -0.250667, -0.287789,
		0.201170, -0.320809, 0.925533,
		47.691769, 36.398586, 35.270767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.030907, 36.017193, 34.788780>,  <47.550949, 36.623150, 34.622894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.030907, 36.017193, 34.788780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692860, 35.807316, 34.747856>,  <47.490032, 35.681389, 34.723301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692860, 35.807316, 34.747856>,  <48.030907, 36.017193, 34.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.692860, 35.807316, 34.747856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532078, -0.807153, -0.255729,
		0.051598, -0.270560, 0.961320,
		-0.845122, -0.524692, -0.102311,
		47.439323, 35.649910, 34.717163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.980629, 35.482006, 35.244789>,  <48.030907, 36.017193, 34.788780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.980629, 35.482006, 35.244789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798286, 35.415836, 34.894970>,  <47.688881, 35.376137, 34.685078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798286, 35.415836, 34.894970>,  <47.980629, 35.482006, 35.244789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798286, 35.415836, 34.894970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635498, -0.748439, -0.189688,
		-0.623165, -0.642242, 0.446308,
		-0.455860, -0.165421, -0.874545,
		47.661530, 35.366211, 34.632607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799618, 34.738571, 35.243580>,  <47.980629, 35.482006, 35.244789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799618, 34.738571, 35.243580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844864, 34.917389, 34.888645>,  <47.872009, 35.024677, 34.675686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.844864, 34.917389, 34.888645>,  <47.799618, 34.738571, 35.243580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.844864, 34.917389, 34.888645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751200, -0.622999, -0.218109,
		-0.650311, -0.641894, -0.406287,
		0.113114, 0.447041, -0.887333,
		47.878799, 35.051502, 34.622444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.365339, 33.296425, 23.677801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725950, 33.386463, 23.529974>,  <31.942318, 33.440487, 23.441278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.725950, 33.386463, 23.529974>,  <31.365339, 33.296425, 23.677801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725950, 33.386463, 23.529974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286024, 0.330899, 0.899275,
		0.324701, -0.916430, 0.233937,
		0.901532, 0.225084, -0.369564,
		31.996408, 33.453991, 23.419104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850174, 32.981461, 24.166914>,  <31.365339, 33.296425, 23.677801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850174, 32.981461, 24.166914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057083, 33.255409, 23.961632>,  <32.181229, 33.419777, 23.838463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.057083, 33.255409, 23.961632>,  <31.850174, 32.981461, 24.166914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057083, 33.255409, 23.961632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293681, 0.421204, 0.858102,
		0.803854, -0.594591, 0.016743,
		0.517271, 0.684872, -0.513207,
		32.212265, 33.460869, 23.807671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486897, 32.926693, 24.443150>,  <31.850174, 32.981461, 24.166914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486897, 32.926693, 24.443150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.517879, 33.287804, 24.273920>,  <32.536469, 33.504471, 24.172382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.517879, 33.287804, 24.273920>,  <32.486897, 32.926693, 24.443150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517879, 33.287804, 24.273920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436383, 0.350845, 0.828539,
		0.896421, -0.248796, -0.366783,
		0.077453, 0.902778, -0.423075,
		32.541115, 33.558636, 24.146997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182308, 33.216640, 24.569790>,  <32.486897, 32.926693, 24.443150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182308, 33.216640, 24.569790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.974312, 33.547359, 24.483995>,  <32.849514, 33.745792, 24.432518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.974312, 33.547359, 24.483995>,  <33.182308, 33.216640, 24.569790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974312, 33.547359, 24.483995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491042, 0.494819, 0.716960,
		0.698916, 0.267493, -0.663298,
		-0.519994, 0.826802, -0.214487,
		32.818314, 33.795399, 24.419649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658905, 33.850231, 24.478867>,  <33.182308, 33.216640, 24.569790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658905, 33.850231, 24.478867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.298946, 33.992645, 24.579597>,  <33.082970, 34.078094, 24.640036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.298946, 33.992645, 24.579597>,  <33.658905, 33.850231, 24.478867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298946, 33.992645, 24.579597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408159, 0.484284, 0.773870,
		0.153569, 0.799192, -0.581127,
		-0.899901, 0.356035, 0.251826,
		33.028976, 34.099457, 24.655146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798889, 34.583824, 24.736752>,  <33.658905, 33.850231, 24.478867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798889, 34.583824, 24.736752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446667, 34.466648, 24.885780>,  <33.235332, 34.396343, 24.975197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446667, 34.466648, 24.885780>,  <33.798889, 34.583824, 24.736752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446667, 34.466648, 24.885780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141063, 0.588487, 0.796106,
		-0.452467, 0.753570, -0.476871,
		-0.880554, -0.292943, 0.372571,
		33.182499, 34.378765, 24.997551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505341, 35.164936, 25.062130>,  <33.798889, 34.583824, 24.736752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505341, 35.164936, 25.062130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317299, 34.858501, 25.237452>,  <33.204472, 34.674641, 25.342644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317299, 34.858501, 25.237452>,  <33.505341, 35.164936, 25.062130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317299, 34.858501, 25.237452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014130, 0.490005, 0.871605,
		-0.882496, 0.415942, -0.219530,
		-0.470108, -0.766086, 0.438305,
		33.176266, 34.628677, 25.368942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208252, 35.455502, 25.707676>,  <33.505341, 35.164936, 25.062130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208252, 35.455502, 25.707676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.175385, 35.060822, 25.763765>,  <33.155663, 34.824013, 25.797419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.175385, 35.060822, 25.763765>,  <33.208252, 35.455502, 25.707676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175385, 35.060822, 25.763765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156569, 0.126170, 0.979575,
		-0.984243, 0.102449, 0.144120,
		-0.082173, -0.986704, 0.140222,
		33.150734, 34.764809, 25.805832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666920, 35.401207, 26.128508>,  <33.208252, 35.455502, 25.707676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666920, 35.401207, 26.128508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897472, 35.076511, 26.166162>,  <33.035805, 34.881695, 26.188755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.897472, 35.076511, 26.166162>,  <32.666920, 35.401207, 26.128508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897472, 35.076511, 26.166162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039285, 0.142590, 0.989002,
		-0.816237, -0.566342, 0.114075,
		0.576380, -0.811742, 0.094139,
		33.070385, 34.832989, 26.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302849, 35.073727, 26.594423>,  <32.666920, 35.401207, 26.128508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302849, 35.073727, 26.594423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660309, 34.895676, 26.617235>,  <32.874783, 34.788845, 26.630922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660309, 34.895676, 26.617235>,  <32.302849, 35.073727, 26.594423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660309, 34.895676, 26.617235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112299, -0.098772, 0.988753,
		-0.434491, -0.890002, -0.138255,
		0.893648, -0.445131, 0.057031,
		32.928402, 34.762138, 26.634344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249367, 34.532272, 27.069654>,  <32.302849, 35.073727, 26.594423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249367, 34.532272, 27.069654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648483, 34.555897, 27.081816>,  <32.887955, 34.570072, 27.089111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648483, 34.555897, 27.081816>,  <32.249367, 34.532272, 27.069654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648483, 34.555897, 27.081816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020675, -0.158807, 0.987093,
		0.063125, -0.985542, -0.157236,
		0.997792, 0.059059, 0.030401,
		32.947823, 34.573616, 27.090937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415981, 34.086292, 27.536337>,  <32.249367, 34.532272, 27.069654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415981, 34.086292, 27.536337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737991, 34.322628, 27.515001>,  <32.931198, 34.464428, 27.502199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737991, 34.322628, 27.515001>,  <32.415981, 34.086292, 27.536337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737991, 34.322628, 27.515001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195149, -0.178836, 0.964331,
		0.560227, -0.786718, -0.259269,
		0.805023, 0.590841, -0.053338,
		32.979500, 34.499882, 27.499001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879059, 33.665226, 27.813908>,  <32.415981, 34.086292, 27.536337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879059, 33.665226, 27.813908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042656, 34.029152, 27.842058>,  <33.140816, 34.247509, 27.858948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042656, 34.029152, 27.842058>,  <32.879059, 33.665226, 27.813908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042656, 34.029152, 27.842058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182243, -0.157006, 0.970637,
		0.894154, -0.384160, -0.230022,
		0.408995, 0.909819, 0.070377,
		33.165356, 34.302097, 27.863171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545383, 33.535980, 28.051502>,  <32.879059, 33.665226, 27.813908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545383, 33.535980, 28.051502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458271, 33.919273, 28.125660>,  <33.406006, 34.149250, 28.170155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458271, 33.919273, 28.125660>,  <33.545383, 33.535980, 28.051502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458271, 33.919273, 28.125660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306258, -0.113266, 0.945186,
		0.926703, 0.262620, -0.268798,
		-0.217779, 0.958229, 0.185393,
		33.392937, 34.206741, 28.181278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066422, 33.748669, 28.525883>,  <33.545383, 33.535980, 28.051502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066422, 33.748669, 28.525883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780392, 34.025051, 28.568314>,  <33.608776, 34.190880, 28.593773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780392, 34.025051, 28.568314>,  <34.066422, 33.748669, 28.525883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780392, 34.025051, 28.568314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222974, 0.081622, 0.971401,
		0.662537, 0.718275, -0.212431,
		-0.715072, 0.690956, 0.106079,
		33.565868, 34.232338, 28.600138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382549, 34.136284, 28.927670>,  <34.066422, 33.748669, 28.525883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382549, 34.136284, 28.927670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999523, 34.247875, 28.956644>,  <33.769707, 34.314831, 28.974028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999523, 34.247875, 28.956644>,  <34.382549, 34.136284, 28.927670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999523, 34.247875, 28.956644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094315, 0.065806, 0.993365,
		0.272359, 0.958041, -0.089325,
		-0.957562, 0.278976, 0.072435,
		33.712254, 34.331570, 28.978374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450634, 34.715389, 29.411911>,  <34.382549, 34.136284, 28.927670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450634, 34.715389, 29.411911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077671, 34.571758, 29.428343>,  <33.853893, 34.485580, 29.438202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077671, 34.571758, 29.428343>,  <34.450634, 34.715389, 29.411911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077671, 34.571758, 29.428343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029487, 0.037703, 0.998854,
		-0.360214, 0.932546, -0.024567,
		-0.932403, -0.359077, 0.041079,
		33.797951, 34.464035, 29.440666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141792, 35.036900, 30.052940>,  <34.450634, 34.715389, 29.411911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141792, 35.036900, 30.052940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955238, 34.689701, 29.984737>,  <33.843307, 34.481384, 29.943815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955238, 34.689701, 29.984737>,  <34.141792, 35.036900, 30.052940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955238, 34.689701, 29.984737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028325, -0.178000, 0.983623,
		-0.884128, 0.463576, 0.058430,
		-0.466385, -0.867994, -0.170506,
		33.815323, 34.429302, 29.933586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664989, 35.047451, 30.536201>,  <34.141792, 35.036900, 30.052940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664989, 35.047451, 30.536201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.683849, 34.660446, 30.436848>,  <33.695168, 34.428242, 30.377235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.683849, 34.660446, 30.436848>,  <33.664989, 35.047451, 30.536201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683849, 34.660446, 30.436848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079072, -0.251497, 0.964623,
		-0.995753, -0.025846, -0.088362,
		0.047154, -0.967513, -0.248385,
		33.697994, 34.370193, 30.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224625, 34.764439, 31.063269>,  <33.664989, 35.047451, 30.536201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224625, 34.764439, 31.063269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396923, 34.442780, 30.899408>,  <33.500301, 34.249786, 30.801092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396923, 34.442780, 30.899408>,  <33.224625, 34.764439, 31.063269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396923, 34.442780, 30.899408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035700, -0.468748, 0.882610,
		-0.901769, -0.365553, -0.230618,
		0.430742, -0.804143, -0.409652,
		33.526146, 34.201538, 30.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869980, 34.137745, 31.320601>,  <33.224625, 34.764439, 31.063269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869980, 34.137745, 31.320601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227013, 34.009228, 31.194059>,  <33.441231, 33.932117, 31.118135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.227013, 34.009228, 31.194059>,  <32.869980, 34.137745, 31.320601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227013, 34.009228, 31.194059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050763, -0.768754, 0.637526,
		-0.448028, -0.552983, -0.702482,
		0.892577, -0.321290, -0.316352,
		33.494785, 33.912842, 31.099154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551357, 34.030758, 32.002510>,  <32.869980, 34.137745, 31.320601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551357, 34.030758, 32.002510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361328, 33.719440, 32.166737>,  <32.247311, 33.532650, 32.265274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.361328, 33.719440, 32.166737>,  <32.551357, 34.030758, 32.002510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361328, 33.719440, 32.166737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199607, -0.359107, -0.911701,
		0.857008, -0.515077, 0.015250,
		-0.475073, -0.778291, 0.410571,
		32.218807, 33.485954, 32.289909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848637, 33.424782, 31.697975>,  <32.551357, 34.030758, 32.002510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848637, 33.424782, 31.697975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492405, 33.310112, 31.839216>,  <32.278664, 33.241310, 31.923960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.492405, 33.310112, 31.839216>,  <32.848637, 33.424782, 31.697975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492405, 33.310112, 31.839216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199838, -0.450764, -0.869987,
		0.408567, -0.845358, 0.344155,
		-0.890583, -0.286673, 0.353101,
		32.225231, 33.224110, 31.945147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750107, 32.739017, 31.480026>,  <32.848637, 33.424782, 31.697975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750107, 32.739017, 31.480026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.382065, 32.870872, 31.564640>,  <32.161240, 32.949986, 31.615408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.382065, 32.870872, 31.564640>,  <32.750107, 32.739017, 31.480026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382065, 32.870872, 31.564640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365943, -0.530990, -0.764288,
		-0.139616, -0.780634, 0.609194,
		-0.920105, 0.329637, 0.211533,
		32.106033, 32.969765, 31.628099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352203, 32.116413, 31.417227>,  <32.750107, 32.739017, 31.480026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352203, 32.116413, 31.417227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.099182, 32.426208, 31.414675>,  <31.947369, 32.612087, 31.413143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.099182, 32.426208, 31.414675>,  <32.352203, 32.116413, 31.417227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099182, 32.426208, 31.414675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494133, -0.409891, -0.766695,
		-0.596412, -0.481825, 0.641979,
		-0.632555, 0.774489, -0.006379,
		31.909416, 32.658554, 31.412762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754156, 31.828712, 31.258234>,  <32.352203, 32.116413, 31.417227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754156, 31.828712, 31.258234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.654591, 32.210892, 31.194788>,  <31.594851, 32.440201, 31.156721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.654591, 32.210892, 31.194788>,  <31.754156, 31.828712, 31.258234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654591, 32.210892, 31.194788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573126, -0.277323, -0.771115,
		-0.780749, -0.101035, 0.616623,
		-0.248913, 0.955450, -0.158613,
		31.579916, 32.497528, 31.147203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029602, 31.866423, 30.915409>,  <31.754156, 31.828712, 31.258234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029602, 31.866423, 30.915409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.179321, 32.219925, 30.803070>,  <31.269152, 32.432026, 30.735666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.179321, 32.219925, 30.803070>,  <31.029602, 31.866423, 30.915409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179321, 32.219925, 30.803070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385275, -0.127277, -0.913983,
		-0.843484, 0.450304, 0.292850,
		0.374297, 0.883758, -0.280847,
		31.291611, 32.485054, 30.718817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541140, 32.153236, 30.456722>,  <31.029602, 31.866423, 30.915409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541140, 32.153236, 30.456722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.857208, 32.377209, 30.357033>,  <31.046850, 32.511593, 30.297218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.857208, 32.377209, 30.357033>,  <30.541140, 32.153236, 30.456722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857208, 32.377209, 30.357033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285235, -0.023951, -0.958158,
		-0.542467, 0.828196, 0.140785,
		0.790171, 0.559926, -0.249223,
		31.094259, 32.545185, 30.282267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311632, 32.846687, 30.141056>,  <30.541140, 32.153236, 30.456722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311632, 32.846687, 30.141056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.682238, 32.744869, 30.030220>,  <30.904600, 32.683777, 29.963718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.682238, 32.744869, 30.030220>,  <30.311632, 32.846687, 30.141056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682238, 32.744869, 30.030220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304200, -0.073347, -0.949780,
		0.221440, 0.964275, -0.145390,
		0.926513, -0.254547, -0.277091,
		30.960192, 32.668507, 29.947092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535847, 33.240387, 29.564188>,  <30.311632, 32.846687, 30.141056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535847, 33.240387, 29.564188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.782663, 32.926094, 29.546846>,  <30.930754, 32.737518, 29.536442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.782663, 32.926094, 29.546846>,  <30.535847, 33.240387, 29.564188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782663, 32.926094, 29.546846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163218, -0.073890, -0.983819,
		0.769817, 0.614136, -0.173839,
		0.617043, -0.785734, -0.043356,
		30.967777, 32.690372, 29.533840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001961, 33.318157, 29.062742>,  <30.535847, 33.240387, 29.564188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001961, 33.318157, 29.062742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.999102, 32.920341, 29.104389>,  <30.997385, 32.681652, 29.129377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.999102, 32.920341, 29.104389>,  <31.001961, 33.318157, 29.062742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999102, 32.920341, 29.104389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376034, -0.093806, -0.921845,
		0.926578, -0.045743, -0.373310,
		-0.007150, -0.994539, 0.104119,
		30.996956, 32.621979, 29.135626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279760, 33.156425, 28.409369>,  <31.001961, 33.318157, 29.062742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279760, 33.156425, 28.409369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.144556, 32.814770, 28.567451>,  <31.063435, 32.609776, 28.662302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.144556, 32.814770, 28.567451>,  <31.279760, 33.156425, 28.409369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144556, 32.814770, 28.567451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127820, -0.374371, -0.918427,
		0.932423, -0.360952, 0.017365,
		-0.338009, -0.854142, 0.395209,
		31.043154, 32.558529, 28.686014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616236, 32.612888, 28.035646>,  <31.279760, 33.156425, 28.409369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616236, 32.612888, 28.035646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.278658, 32.473454, 28.198736>,  <31.076111, 32.389793, 28.296591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.278658, 32.473454, 28.198736>,  <31.616236, 32.612888, 28.035646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278658, 32.473454, 28.198736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176872, -0.536741, -0.825000,
		0.506431, -0.768370, 0.391324,
		-0.843945, -0.348592, 0.407726,
		31.025475, 32.368877, 28.321054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448147, 31.962088, 27.791151>,  <31.616236, 32.612888, 28.035646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448147, 31.962088, 27.791151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079861, 32.038025, 27.927526>,  <30.858889, 32.083588, 28.009352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079861, 32.038025, 27.927526>,  <31.448147, 31.962088, 27.791151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079861, 32.038025, 27.927526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385857, -0.312484, -0.868025,
		-0.058250, -0.930760, 0.360962,
		-0.920718, 0.189843, 0.340938,
		30.803646, 32.094978, 28.029808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994707, 31.381565, 27.547689>,  <31.448147, 31.962088, 27.791151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994707, 31.381565, 27.547689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.753090, 31.687037, 27.638840>,  <30.608120, 31.870319, 27.693531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.753090, 31.687037, 27.638840>,  <30.994707, 31.381565, 27.547689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753090, 31.687037, 27.638840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523782, -0.164913, -0.835737,
		-0.600656, -0.624176, 0.499617,
		-0.604040, 0.763680, 0.227876,
		30.571878, 31.916140, 27.707203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332693, 31.181700, 27.410759>,  <30.994707, 31.381565, 27.547689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332693, 31.181700, 27.410759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.300886, 31.578377, 27.370316>,  <30.281801, 31.816383, 27.346050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.300886, 31.578377, 27.370316>,  <30.332693, 31.181700, 27.410759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300886, 31.578377, 27.370316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298616, -0.120468, -0.946740,
		-0.951055, -0.045091, 0.305714,
		-0.079518, 0.991693, -0.101107,
		30.277031, 31.875885, 27.339983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582623, 31.382822, 27.218088>,  <30.332693, 31.181700, 27.410759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582623, 31.382822, 27.218088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831772, 31.669374, 27.092339>,  <29.981262, 31.841305, 27.016890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.831772, 31.669374, 27.092339>,  <29.582623, 31.382822, 27.218088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831772, 31.669374, 27.092339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378549, -0.075680, -0.922482,
		-0.684638, 0.693595, 0.224046,
		0.622873, 0.716379, -0.314373,
		30.018633, 31.884289, 26.998026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180534, 31.661919, 26.720301>,  <29.582623, 31.382822, 27.218088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180534, 31.661919, 26.720301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.534546, 31.835386, 26.652586>,  <29.746952, 31.939466, 26.611958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.534546, 31.835386, 26.652586>,  <29.180534, 31.661919, 26.720301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534546, 31.835386, 26.652586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296671, 0.245155, -0.922976,
		-0.358763, 0.867082, 0.345626,
		0.885029, 0.433667, -0.169285,
		29.800055, 31.965487, 26.601801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983963, 32.285583, 26.349550>,  <29.180534, 31.661919, 26.720301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983963, 32.285583, 26.349550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364395, 32.180637, 26.284292>,  <29.592653, 32.117672, 26.245138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.364395, 32.180637, 26.284292>,  <28.983963, 32.285583, 26.349550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364395, 32.180637, 26.284292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172402, -0.012500, -0.984947,
		0.256375, 0.964888, -0.057120,
		0.951078, -0.262364, -0.163144,
		29.649719, 32.101929, 26.235350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270403, 32.781487, 25.745045>,  <28.983963, 32.285583, 26.349550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270403, 32.781487, 25.745045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510386, 32.463562, 25.781549>,  <29.654375, 32.272808, 25.803452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510386, 32.463562, 25.781549>,  <29.270403, 32.781487, 25.745045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510386, 32.463562, 25.781549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320397, 0.134178, -0.937733,
		0.733076, 0.591837, 0.335156,
		0.599955, -0.794812, 0.091260,
		29.690372, 32.225117, 25.808928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.740946, 32.960873, 25.216347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868250, 32.591377, 25.301594>,  <29.944632, 32.369678, 25.352741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868250, 32.591377, 25.301594>,  <29.740946, 32.960873, 25.216347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868250, 32.591377, 25.301594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258493, -0.131728, -0.956990,
		0.912081, 0.359660, 0.196856,
		0.318259, -0.923738, 0.213116,
		29.963728, 32.314255, 25.365528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399551, 32.909199, 24.905075>,  <29.740946, 32.960873, 25.216347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399551, 32.909199, 24.905075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214764, 32.555302, 24.929789>,  <30.103891, 32.342964, 24.944616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214764, 32.555302, 24.929789>,  <30.399551, 32.909199, 24.905075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214764, 32.555302, 24.929789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212878, -0.178242, -0.960684,
		0.860969, -0.430653, 0.270684,
		-0.461968, -0.884742, 0.061784,
		30.076174, 32.289879, 24.948324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794815, 32.476177, 24.591156>,  <30.399551, 32.909199, 24.905075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794815, 32.476177, 24.591156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445509, 32.281990, 24.574522>,  <30.235926, 32.165478, 24.564543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445509, 32.281990, 24.574522>,  <30.794815, 32.476177, 24.591156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445509, 32.281990, 24.574522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263198, -0.398173, -0.878741,
		0.410043, -0.778318, 0.475485,
		-0.873265, -0.485468, -0.041584,
		30.183529, 32.136349, 24.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902210, 31.748652, 24.444563>,  <30.794815, 32.476177, 24.591156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902210, 31.748652, 24.444563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526304, 31.798016, 24.317055>,  <30.300760, 31.827635, 24.240551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526304, 31.798016, 24.317055>,  <30.902210, 31.748652, 24.444563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526304, 31.798016, 24.317055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247520, -0.397477, -0.883598,
		-0.235748, -0.909275, 0.342988,
		-0.939764, 0.123411, -0.318768,
		30.244375, 31.835039, 24.221424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699112, 31.120068, 24.107538>,  <30.902210, 31.748652, 24.444563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699112, 31.120068, 24.107538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433683, 31.388128, 23.974531>,  <30.274426, 31.548965, 23.894728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.433683, 31.388128, 23.974531>,  <30.699112, 31.120068, 24.107538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433683, 31.388128, 23.974531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106272, -0.355527, -0.928605,
		-0.740526, -0.651533, 0.164699,
		-0.663571, 0.670153, -0.332517,
		30.234612, 31.589174, 23.874777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207790, 30.725193, 23.715052>,  <30.699112, 31.120068, 24.107538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207790, 30.725193, 23.715052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169844, 31.102104, 23.586609>,  <30.147076, 31.328251, 23.509542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169844, 31.102104, 23.586609>,  <30.207790, 30.725193, 23.715052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169844, 31.102104, 23.586609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062434, -0.327561, -0.942765,
		-0.993530, -0.069390, 0.089906,
		-0.094868, 0.942279, -0.321109,
		30.141384, 31.384789, 23.490276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695776, 30.653219, 23.171997>,  <30.207790, 30.725193, 23.715052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695776, 30.653219, 23.171997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869287, 31.006281, 23.099604>,  <29.973394, 31.218119, 23.056168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869287, 31.006281, 23.099604>,  <29.695776, 30.653219, 23.171997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869287, 31.006281, 23.099604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053385, -0.175335, -0.983061,
		-0.899436, 0.436094, -0.028936,
		0.433780, 0.882655, -0.180983,
		29.999422, 31.271078, 23.045309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407343, 30.898275, 22.619402>,  <29.695776, 30.653219, 23.171997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407343, 30.898275, 22.619402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741827, 31.117537, 22.612652>,  <29.942516, 31.249094, 22.608601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741827, 31.117537, 22.612652>,  <29.407343, 30.898275, 22.619402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741827, 31.117537, 22.612652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080526, -0.153168, -0.984914,
		-0.542468, 0.822234, -0.172221,
		0.836208, 0.548152, -0.016878,
		29.992689, 31.281982, 22.607588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350367, 31.449509, 22.136169>,  <29.407343, 30.898275, 22.619402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350367, 31.449509, 22.136169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.737886, 31.352537, 22.156769>,  <29.970398, 31.294355, 22.169128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.737886, 31.352537, 22.156769>,  <29.350367, 31.449509, 22.136169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737886, 31.352537, 22.156769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003563, -0.194140, -0.980967,
		0.247811, 0.950547, -0.187219,
		0.968802, -0.242428, 0.051496,
		30.028526, 31.279808, 22.172218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506662, 31.641983, 21.543144>,  <29.350367, 31.449509, 22.136169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506662, 31.641983, 21.543144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832884, 31.439173, 21.654715>,  <30.028616, 31.317486, 21.721657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832884, 31.439173, 21.654715>,  <29.506662, 31.641983, 21.543144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832884, 31.439173, 21.654715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150907, -0.278979, -0.948366,
		0.558660, 0.815534, -0.151008,
		0.815553, -0.507026, 0.278924,
		30.077549, 31.287066, 21.738392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064854, 31.782560, 21.084957>,  <29.506662, 31.641983, 21.543144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064854, 31.782560, 21.084957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175751, 31.430363, 21.238770>,  <30.242289, 31.219044, 21.331057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175751, 31.430363, 21.238770>,  <30.064854, 31.782560, 21.084957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175751, 31.430363, 21.238770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158797, -0.352725, -0.922154,
		0.947586, 0.316725, 0.042029,
		0.277244, -0.880494, 0.384532,
		30.258924, 31.166214, 21.354130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599150, 31.514801, 20.608261>,  <30.064854, 31.782560, 21.084957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599150, 31.514801, 20.608261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465944, 31.194445, 20.807329>,  <30.386021, 31.002232, 20.926769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465944, 31.194445, 20.807329>,  <30.599150, 31.514801, 20.608261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465944, 31.194445, 20.807329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152407, -0.566573, -0.809794,
		0.930523, -0.193825, 0.310739,
		-0.333015, -0.800891, 0.497669,
		30.366039, 30.954178, 20.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115345, 30.989304, 20.479240>,  <30.599150, 31.514801, 20.608261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115345, 30.989304, 20.479240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.832762, 30.745075, 20.622414>,  <30.663212, 30.598537, 20.708319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.832762, 30.745075, 20.622414>,  <31.115345, 30.989304, 20.479240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832762, 30.745075, 20.622414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252126, -0.689665, -0.678818,
		0.661322, -0.389313, 0.641162,
		-0.706460, -0.610571, 0.357935,
		30.620823, 30.561903, 20.729794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399954, 30.329355, 20.497766>,  <31.115345, 30.989304, 20.479240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399954, 30.329355, 20.497766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008112, 30.252176, 20.520212>,  <30.773006, 30.205870, 20.533680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.008112, 30.252176, 20.520212>,  <31.399954, 30.329355, 20.497766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008112, 30.252176, 20.520212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152334, -0.895203, -0.418815,
		0.131042, -0.401724, 0.906336,
		-0.979603, -0.192948, 0.056113,
		30.714231, 30.194292, 20.537046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400969, 29.598976, 20.596279>,  <31.399954, 30.329355, 20.497766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400969, 29.598976, 20.596279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041880, 29.716415, 20.464891>,  <30.826426, 29.786879, 20.386059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041880, 29.716415, 20.464891>,  <31.400969, 29.598976, 20.596279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041880, 29.716415, 20.464891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051988, -0.669768, -0.740748,
		-0.437480, -0.682064, 0.586004,
		-0.897724, 0.293597, -0.328469,
		30.772562, 29.804495, 20.366350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992462, 28.978930, 20.556129>,  <31.400969, 29.598976, 20.596279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992462, 28.978930, 20.556129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842375, 29.241081, 20.293926>,  <30.752323, 29.398373, 20.136604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842375, 29.241081, 20.293926>,  <30.992462, 28.978930, 20.556129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842375, 29.241081, 20.293926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031748, -0.697677, -0.715709,
		-0.926393, -0.289358, 0.240973,
		-0.375218, 0.655377, -0.655509,
		30.729809, 29.437695, 20.097273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542160, 28.604448, 20.224428>,  <30.992462, 28.978930, 20.556129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542160, 28.604448, 20.224428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613979, 28.907709, 19.973679>,  <30.657072, 29.089664, 19.823229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613979, 28.907709, 19.973679>,  <30.542160, 28.604448, 20.224428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613979, 28.907709, 19.973679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080002, -0.646372, -0.758817,
		-0.980490, 0.086094, -0.176709,
		0.179550, 0.758150, -0.626874,
		30.667845, 29.135155, 19.785616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170538, 28.393082, 19.736126>,  <30.542160, 28.604448, 20.224428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170538, 28.393082, 19.736126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370441, 28.686996, 19.552681>,  <30.490383, 28.863346, 19.442614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370441, 28.686996, 19.552681>,  <30.170538, 28.393082, 19.736126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370441, 28.686996, 19.552681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003025, -0.530953, -0.847396,
		-0.866159, 0.422106, -0.267571,
		0.499759, 0.734789, -0.458613,
		30.520369, 28.907433, 19.415096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893827, 28.357416, 19.141165>,  <30.170538, 28.393082, 19.736126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893827, 28.357416, 19.141165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244696, 28.541157, 19.085215>,  <30.455217, 28.651402, 19.051643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244696, 28.541157, 19.085215>,  <29.893827, 28.357416, 19.141165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244696, 28.541157, 19.085215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105441, -0.468457, -0.877172,
		-0.468457, 0.754681, -0.459352,
		0.877172, 0.459352, -0.139877,
		30.507847, 28.678963, 19.043251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967777, 28.537085, 18.375587>,  <29.893827, 28.357416, 19.141165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967777, 28.537085, 18.375587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341263, 28.572538, 18.514338>,  <30.565353, 28.593811, 18.597588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341263, 28.572538, 18.514338>,  <29.967777, 28.537085, 18.375587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341263, 28.572538, 18.514338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343604, -0.494027, -0.798670,
		0.100576, 0.864917, -0.491735,
		0.933713, 0.088636, 0.346876,
		30.621376, 28.599129, 18.618401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315424, 28.492943, 17.774485>,  <29.967777, 28.537085, 18.375587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315424, 28.492943, 17.774485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602262, 28.412828, 18.041515>,  <30.774364, 28.364759, 18.201735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602262, 28.412828, 18.041515>,  <30.315424, 28.492943, 17.774485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602262, 28.412828, 18.041515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387617, -0.681433, -0.620808,
		0.579248, 0.703943, -0.411019,
		0.717095, -0.200284, 0.667579,
		30.817390, 28.352743, 18.241789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059456, 28.625969, 17.618380>,  <30.315424, 28.492943, 17.774485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059456, 28.625969, 17.618380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053314, 28.285257, 17.827850>,  <31.049629, 28.080830, 17.953533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053314, 28.285257, 17.827850>,  <31.059456, 28.625969, 17.618380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053314, 28.285257, 17.827850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514919, -0.455685, -0.726092,
		0.857101, 0.258504, 0.445593,
		-0.015353, -0.851779, 0.523677,
		31.048708, 28.029724, 17.984953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745190, 28.405563, 17.679440>,  <31.059456, 28.625969, 17.618380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745190, 28.405563, 17.679440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885744, 28.541821, 17.330616>,  <31.970078, 28.623575, 17.121321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885744, 28.541821, 17.330616>,  <31.745190, 28.405563, 17.679440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885744, 28.541821, 17.330616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894308, -0.153486, -0.420304,
		-0.277023, 0.927580, 0.250708,
		0.351386, 0.340644, -0.872061,
		31.991159, 28.644014, 17.068998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076496, 28.095215, 17.026169>,  <31.745190, 28.405563, 17.679440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076496, 28.095215, 17.026169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383854, 28.286335, 16.855862>,  <32.568268, 28.401007, 16.753677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383854, 28.286335, 16.855862>,  <32.076496, 28.095215, 17.026169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383854, 28.286335, 16.855862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007464, 0.658551, 0.752499,
		0.639930, -0.581395, 0.502463,
		0.768397, 0.477797, -0.425766,
		32.614372, 28.429674, 16.728132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526039, 28.353760, 17.487988>,  <32.076496, 28.095215, 17.026169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526039, 28.353760, 17.487988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569664, 28.600796, 17.176426>,  <32.595837, 28.749018, 16.989489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569664, 28.600796, 17.176426>,  <32.526039, 28.353760, 17.487988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569664, 28.600796, 17.176426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145082, 0.765297, 0.627113,
		0.983391, -0.181398, -0.006138,
		0.109059, 0.617588, -0.778904,
		32.602383, 28.786072, 16.942755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017281, 28.829128, 17.707563>,  <32.526039, 28.353760, 17.487988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017281, 28.829128, 17.707563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883179, 29.046255, 17.399549>,  <32.802715, 29.176531, 17.214741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883179, 29.046255, 17.399549>,  <33.017281, 28.829128, 17.707563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883179, 29.046255, 17.399549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183250, 0.839296, 0.511860,
		0.924133, 0.030497, -0.380852,
		-0.335258, 0.542818, -0.770033,
		32.782600, 29.209101, 17.168539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451088, 29.337093, 17.648453>,  <33.017281, 28.829128, 17.707563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451088, 29.337093, 17.648453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131477, 29.493265, 17.465532>,  <32.939713, 29.586967, 17.355780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131477, 29.493265, 17.465532>,  <33.451088, 29.337093, 17.648453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131477, 29.493265, 17.465532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088395, 0.828531, 0.552921,
		0.594766, 0.401375, -0.696529,
		-0.799025, 0.390428, -0.457303,
		32.891769, 29.610394, 17.328342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749390, 29.986712, 17.417673>,  <33.451088, 29.337093, 17.648453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749390, 29.986712, 17.417673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349400, 29.984133, 17.418520>,  <33.109406, 29.982586, 17.419027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349400, 29.984133, 17.418520>,  <33.749390, 29.986712, 17.417673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349400, 29.984133, 17.418520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004487, 0.862522, 0.506001,
		-0.005087, 0.505980, -0.862531,
		-0.999977, -0.006445, 0.002117,
		33.049408, 29.982199, 17.419155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551418, 30.674911, 17.330387>,  <33.749390, 29.986712, 17.417673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551418, 30.674911, 17.330387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248055, 30.483299, 17.507175>,  <33.066036, 30.368332, 17.613249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.248055, 30.483299, 17.507175>,  <33.551418, 30.674911, 17.330387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248055, 30.483299, 17.507175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217835, 0.825406, 0.520819,
		-0.614296, 0.298719, -0.730348,
		-0.758412, -0.479032, 0.441972,
		33.020531, 30.339590, 17.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115910, 31.179712, 17.398058>,  <33.551418, 30.674911, 17.330387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115910, 31.179712, 17.398058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958824, 30.916887, 17.655443>,  <32.864571, 30.759193, 17.809874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958824, 30.916887, 17.655443>,  <33.115910, 31.179712, 17.398058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958824, 30.916887, 17.655443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131191, 0.732545, 0.667957,
		-0.910254, 0.177901, -0.373883,
		-0.392717, -0.657061, 0.643463,
		32.841011, 30.719769, 17.848482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590687, 31.576794, 17.731821>,  <33.115910, 31.179712, 17.398058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590687, 31.576794, 17.731821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637848, 31.257078, 17.967529>,  <32.666145, 31.065248, 18.108953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637848, 31.257078, 17.967529>,  <32.590687, 31.576794, 17.731821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637848, 31.257078, 17.967529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099480, 0.580916, 0.807862,
		-0.988030, -0.153868, -0.011022,
		0.117901, -0.799288, 0.589269,
		32.673218, 31.017292, 18.144310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985661, 31.455023, 18.145403>,  <32.590687, 31.576794, 17.731821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985661, 31.455023, 18.145403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299530, 31.292723, 18.332870>,  <32.487850, 31.195343, 18.445351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.299530, 31.292723, 18.332870>,  <31.985661, 31.455023, 18.145403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299530, 31.292723, 18.332870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203061, 0.546084, 0.812748,
		-0.585707, -0.732911, 0.346106,
		0.784674, -0.405752, 0.468670,
		32.534931, 31.170998, 18.473471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752527, 31.481913, 18.829535>,  <31.985661, 31.455023, 18.145403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752527, 31.481913, 18.829535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130886, 31.362562, 18.880524>,  <32.357903, 31.290953, 18.911118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130886, 31.362562, 18.880524>,  <31.752527, 31.481913, 18.829535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130886, 31.362562, 18.880524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019176, 0.340769, 0.939952,
		-0.323898, -0.891542, 0.316610,
		0.945898, -0.298377, 0.127471,
		32.414654, 31.273048, 18.918764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717630, 31.076111, 19.478962>,  <31.752527, 31.481913, 18.829535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717630, 31.076111, 19.478962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096691, 31.200855, 19.451532>,  <32.324127, 31.275702, 19.435074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096691, 31.200855, 19.451532>,  <31.717630, 31.076111, 19.478962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096691, 31.200855, 19.451532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078072, 0.434534, 0.897265,
		0.309619, -0.844940, 0.436134,
		0.947650, 0.311860, -0.068574,
		32.380985, 31.294415, 19.430960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998953, 30.950218, 20.133816>,  <31.717630, 31.076111, 19.478962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998953, 30.950218, 20.133816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255341, 31.210430, 19.970858>,  <32.409172, 31.366556, 19.873083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255341, 31.210430, 19.970858>,  <31.998953, 30.950218, 20.133816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255341, 31.210430, 19.970858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162773, 0.403487, 0.900390,
		0.750107, -0.643437, 0.152735,
		0.640972, 0.650528, -0.407393,
		32.447632, 31.405588, 19.848640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697369, 30.982830, 20.525579>,  <31.998953, 30.950218, 20.133816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697369, 30.982830, 20.525579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671181, 31.324339, 20.318974>,  <32.655468, 31.529245, 20.195011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671181, 31.324339, 20.318974>,  <32.697369, 30.982830, 20.525579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671181, 31.324339, 20.318974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091924, 0.520583, 0.848849,
		0.993611, 0.008094, -0.112565,
		-0.065469, 0.853773, -0.516513,
		32.651539, 31.580471, 20.164021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004608, 31.342007, 20.935047>,  <32.697369, 30.982830, 20.525579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004608, 31.342007, 20.935047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805916, 31.612335, 20.717234>,  <32.686699, 31.774532, 20.586546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.805916, 31.612335, 20.717234>,  <33.004608, 31.342007, 20.935047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805916, 31.612335, 20.717234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173792, 0.537254, 0.825321,
		0.850324, 0.504602, -0.149421,
		-0.496735, 0.675822, -0.544536,
		32.656895, 31.815083, 20.553873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350010, 31.859663, 21.104101>,  <33.004608, 31.342007, 20.935047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350010, 31.859663, 21.104101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986176, 31.966665, 20.976919>,  <32.767876, 32.030869, 20.900610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986176, 31.966665, 20.976919>,  <33.350010, 31.859663, 21.104101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986176, 31.966665, 20.976919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105044, 0.592310, 0.798833,
		0.402021, 0.760006, -0.510656,
		-0.909585, 0.267506, -0.317955,
		32.713299, 32.046917, 20.881533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327572, 32.529110, 21.158949>,  <33.350010, 31.859663, 21.104101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327572, 32.529110, 21.158949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936516, 32.445702, 21.148066>,  <32.701881, 32.395657, 21.141535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936516, 32.445702, 21.148066>,  <33.327572, 32.529110, 21.158949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936516, 32.445702, 21.148066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163119, 0.670321, 0.723922,
		-0.132713, 0.712173, -0.689346,
		-0.977640, -0.208519, -0.027209,
		32.643223, 32.383144, 21.139902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047165, 33.154289, 21.338198>,  <33.327572, 32.529110, 21.158949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047165, 33.154289, 21.338198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745396, 32.896721, 21.389145>,  <32.564335, 32.742180, 21.419712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745396, 32.896721, 21.389145>,  <33.047165, 33.154289, 21.338198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745396, 32.896721, 21.389145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283566, 0.494720, 0.821488,
		-0.591981, 0.583630, -0.555819,
		-0.754420, -0.643917, 0.127367,
		32.519070, 32.703545, 21.427355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499367, 33.631794, 21.527637>,  <33.047165, 33.154289, 21.338198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499367, 33.631794, 21.527637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387871, 33.270142, 21.657166>,  <32.320972, 33.053150, 21.734882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387871, 33.270142, 21.657166>,  <32.499367, 33.631794, 21.527637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387871, 33.270142, 21.657166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260901, 0.395792, 0.880499,
		-0.924248, 0.160946, -0.346210,
		-0.278740, -0.904127, 0.323819,
		32.304249, 32.998905, 21.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958382, 33.781460, 21.805775>,  <32.499367, 33.631794, 21.527637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958382, 33.781460, 21.805775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062878, 33.432144, 21.970270>,  <32.125576, 33.222553, 22.068968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062878, 33.432144, 21.970270>,  <31.958382, 33.781460, 21.805775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062878, 33.432144, 21.970270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127106, 0.391203, 0.911484,
		-0.956869, -0.290387, -0.008803,
		0.261240, -0.873290, 0.411240,
		32.141251, 33.170158, 22.093643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571985, 33.720695, 22.314922>,  <31.958382, 33.781460, 21.805775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571985, 33.720695, 22.314922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854818, 33.458111, 22.420069>,  <32.024517, 33.300560, 22.483156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854818, 33.458111, 22.420069>,  <31.571985, 33.720695, 22.314922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854818, 33.458111, 22.420069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128025, 0.246748, 0.960586,
		-0.695445, -0.712866, 0.090429,
		0.707082, -0.656458, 0.262864,
		32.066944, 33.261173, 22.498928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262293, 33.561966, 22.970139>,  <31.571985, 33.720695, 22.314922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262293, 33.561966, 22.970139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648680, 33.459656, 22.985540>,  <31.880512, 33.398270, 22.994781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.648680, 33.459656, 22.985540>,  <31.262293, 33.561966, 22.970139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648680, 33.459656, 22.985540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089445, 0.469982, 0.878133,
		-0.242704, -0.844804, 0.476866,
		0.965968, -0.255780, 0.038503,
		31.938471, 33.382923, 22.997091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.656618, 32.509186, 28.357693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.003996, 32.346401, 28.244423>,  <30.212423, 32.248730, 28.176460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.003996, 32.346401, 28.244423>,  <29.656618, 32.509186, 28.357693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003996, 32.346401, 28.244423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350787, 0.100741, 0.931021,
		-0.350359, -0.907875, 0.230244,
		0.868446, -0.406958, -0.283175,
		30.264530, 32.224316, 28.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893997, 31.922073, 28.832039>,  <29.656618, 32.509186, 28.357693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893997, 31.922073, 28.832039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.235546, 32.065228, 28.680874>,  <30.440475, 32.151119, 28.590176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.235546, 32.065228, 28.680874>,  <29.893997, 31.922073, 28.832039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235546, 32.065228, 28.680874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379603, 0.068545, 0.922607,
		0.356091, -0.931247, -0.077325,
		0.853874, 0.357885, -0.377912,
		30.491709, 32.172592, 28.567501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451122, 31.486048, 29.117592>,  <29.893997, 31.922073, 28.832039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451122, 31.486048, 29.117592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.618666, 31.831469, 29.005281>,  <30.719193, 32.038719, 28.937895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.618666, 31.831469, 29.005281>,  <30.451122, 31.486048, 29.117592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618666, 31.831469, 29.005281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438885, 0.078169, 0.895137,
		0.794944, -0.498166, -0.346258,
		0.418860, 0.863551, -0.280778,
		30.744324, 32.090534, 28.921047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164015, 31.368843, 29.331118>,  <30.451122, 31.486048, 29.117592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164015, 31.368843, 29.331118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.073502, 31.754074, 29.272772>,  <31.019194, 31.985212, 29.237764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.073502, 31.754074, 29.272772>,  <31.164015, 31.368843, 29.331118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073502, 31.754074, 29.272772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443330, 0.235168, 0.864959,
		0.867326, 0.131058, -0.480176,
		-0.226282, 0.963078, -0.145866,
		31.005617, 32.042999, 29.229012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827047, 31.734482, 29.455732>,  <31.164015, 31.368843, 29.331118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827047, 31.734482, 29.455732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560041, 32.030132, 29.491764>,  <31.399837, 32.207523, 29.513382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.560041, 32.030132, 29.491764>,  <31.827047, 31.734482, 29.455732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560041, 32.030132, 29.491764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469372, 0.323780, 0.821497,
		0.578025, 0.590642, -0.563053,
		-0.667516, 0.739127, 0.090078,
		31.359787, 32.251869, 29.518787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196384, 32.321785, 29.812449>,  <31.827047, 31.734482, 29.455732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196384, 32.321785, 29.812449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815107, 32.442005, 29.825733>,  <31.586342, 32.514137, 29.833704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.815107, 32.442005, 29.825733>,  <32.196384, 32.321785, 29.812449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815107, 32.442005, 29.825733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143426, 0.352689, 0.924683,
		0.266196, 0.886162, -0.379286,
		-0.953189, 0.300546, 0.033214,
		31.529150, 32.532169, 29.835697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161224, 33.148064, 29.974880>,  <32.196384, 32.321785, 29.812449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161224, 33.148064, 29.974880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.823601, 32.958881, 30.075968>,  <31.621025, 32.845371, 30.136621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.823601, 32.958881, 30.075968>,  <32.161224, 33.148064, 29.974880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823601, 32.958881, 30.075968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129726, 0.277187, 0.952018,
		-0.520316, 0.836348, -0.172608,
		-0.844063, -0.472959, 0.252720,
		31.570381, 32.816994, 30.151783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705507, 33.670528, 30.294752>,  <32.161224, 33.148064, 29.974880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705507, 33.670528, 30.294752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603312, 33.305557, 30.422628>,  <31.541994, 33.086575, 30.499353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603312, 33.305557, 30.422628>,  <31.705507, 33.670528, 30.294752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603312, 33.305557, 30.422628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180355, 0.279882, 0.942941,
		-0.949841, 0.298569, 0.093054,
		-0.255489, -0.912427, 0.319691,
		31.526665, 33.031830, 30.518536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326340, 33.799698, 30.895245>,  <31.705507, 33.670528, 30.294752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326340, 33.799698, 30.895245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.424587, 33.414455, 30.939255>,  <31.483536, 33.183311, 30.965662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.424587, 33.414455, 30.939255>,  <31.326340, 33.799698, 30.895245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424587, 33.414455, 30.939255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157571, 0.151662, 0.975792,
		-0.956474, -0.222336, 0.189008,
		0.245619, -0.963102, 0.110027,
		31.498274, 33.125526, 30.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943344, 33.534622, 31.485600>,  <31.326340, 33.799698, 30.895245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943344, 33.534622, 31.485600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.266672, 33.299919, 31.466295>,  <31.460669, 33.159096, 31.454712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.266672, 33.299919, 31.466295>,  <30.943344, 33.534622, 31.485600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266672, 33.299919, 31.466295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188554, 0.180349, 0.965361,
		-0.557732, -0.789421, 0.256416,
		0.808321, -0.586760, -0.048262,
		31.509169, 33.123890, 31.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918009, 33.287891, 32.064877>,  <30.943344, 33.534622, 31.485600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918009, 33.287891, 32.064877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.284128, 33.184620, 31.941216>,  <31.503799, 33.122658, 31.867018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.284128, 33.184620, 31.941216>,  <30.918009, 33.287891, 32.064877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284128, 33.184620, 31.941216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376869, 0.278095, 0.883534,
		-0.142136, -0.925206, 0.351839,
		0.915296, -0.258179, -0.309154,
		31.558718, 33.107166, 31.848469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149391, 32.850288, 32.618389>,  <30.918009, 33.287891, 32.064877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149391, 32.850288, 32.618389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.469231, 32.949844, 32.399776>,  <31.661135, 33.009579, 32.268608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.469231, 32.949844, 32.399776>,  <31.149391, 32.850288, 32.618389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469231, 32.949844, 32.399776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488823, 0.258918, 0.833075,
		0.348851, -0.933282, 0.085367,
		0.799597, 0.248890, -0.546533,
		31.709110, 33.024509, 32.235817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662258, 32.422428, 32.800179>,  <31.149391, 32.850288, 32.618389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662258, 32.422428, 32.800179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.832560, 32.754898, 32.657135>,  <31.934740, 32.954380, 32.571308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.832560, 32.754898, 32.657135>,  <31.662258, 32.422428, 32.800179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832560, 32.754898, 32.657135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344531, 0.216529, 0.913463,
		0.836679, -0.512117, -0.194177,
		0.425755, 0.831175, -0.357605,
		31.960285, 33.004250, 32.549854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336353, 32.469738, 33.190910>,  <31.662258, 32.422428, 32.800179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336353, 32.469738, 33.190910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.235310, 32.824707, 33.036682>,  <32.174683, 33.037689, 32.944145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.235310, 32.824707, 33.036682>,  <32.336353, 32.469738, 33.190910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235310, 32.824707, 33.036682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256584, 0.445671, 0.857638,
		0.932926, 0.117718, -0.340280,
		-0.252612, 0.887423, -0.385574,
		32.159527, 33.090935, 32.921009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900055, 32.297417, 32.552589>,  <32.336353, 32.469738, 33.190910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900055, 32.297417, 32.552589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.206963, 32.282307, 32.808674>,  <33.391106, 32.273239, 32.962326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.206963, 32.282307, 32.808674>,  <32.900055, 32.297417, 32.552589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206963, 32.282307, 32.808674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424192, -0.718811, -0.550793,
		0.480998, 0.694179, -0.535497,
		0.767270, -0.037777, 0.640211,
		33.437145, 32.270973, 33.000736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465828, 32.269669, 32.128242>,  <32.900055, 32.297417, 32.552589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465828, 32.269669, 32.128242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599892, 32.126881, 32.477009>,  <33.680332, 32.041206, 32.686268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.599892, 32.126881, 32.477009>,  <33.465828, 32.269669, 32.128242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599892, 32.126881, 32.477009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430680, -0.765045, -0.478769,
		0.837962, 0.535983, -0.102675,
		0.335163, -0.356971, 0.871916,
		33.700439, 32.019791, 32.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104286, 32.240391, 32.006020>,  <33.465828, 32.269669, 32.128242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104286, 32.240391, 32.006020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.003975, 31.971382, 32.284538>,  <33.943790, 31.809978, 32.451649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.003975, 31.971382, 32.284538>,  <34.104286, 32.240391, 32.006020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003975, 31.971382, 32.284538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386867, -0.728972, -0.564743,
		0.887382, 0.127752, 0.442982,
		-0.250775, -0.672517, 0.696299,
		33.928741, 31.769627, 32.493427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602524, 31.742933, 32.048531>,  <34.104286, 32.240391, 32.006020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602524, 31.742933, 32.048531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316860, 31.518280, 32.215645>,  <34.145462, 31.383488, 32.315914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.316860, 31.518280, 32.215645>,  <34.602524, 31.742933, 32.048531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316860, 31.518280, 32.215645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219013, -0.746165, -0.628706,
		0.664838, -0.357497, 0.655886,
		-0.714160, -0.561635, 0.417782,
		34.102612, 31.349789, 32.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814236, 31.068127, 31.991098>,  <34.602524, 31.742933, 32.048531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814236, 31.068127, 31.991098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432041, 30.986177, 32.076019>,  <34.202724, 30.937008, 32.126972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432041, 30.986177, 32.076019>,  <34.814236, 31.068127, 31.991098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432041, 30.986177, 32.076019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062509, -0.843819, -0.532974,
		0.288336, -0.495979, 0.819064,
		-0.955487, -0.204875, 0.212301,
		34.145393, 30.924715, 32.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870499, 30.410725, 31.702923>,  <34.814236, 31.068127, 31.991098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870499, 30.410725, 31.702923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.493050, 30.496489, 31.803802>,  <34.266579, 30.547947, 31.864330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.493050, 30.496489, 31.803802>,  <34.870499, 30.410725, 31.702923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493050, 30.496489, 31.803802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331023, -0.612905, -0.717475,
		0.000739, -0.760510, 0.649326,
		-0.943622, 0.214412, 0.252199,
		34.209965, 30.560812, 31.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463081, 29.783663, 31.881233>,  <34.870499, 30.410725, 31.702923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463081, 29.783663, 31.881233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219090, 30.068289, 31.741749>,  <34.072693, 30.239065, 31.658058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219090, 30.068289, 31.741749>,  <34.463081, 29.783663, 31.881233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219090, 30.068289, 31.741749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316507, -0.622212, -0.716013,
		-0.726462, -0.326385, 0.604753,
		-0.609980, 0.711565, -0.348710,
		34.036095, 30.281759, 31.637136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778252, 29.404268, 31.697264>,  <34.463081, 29.783663, 31.881233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778252, 29.404268, 31.697264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795231, 29.752083, 31.500446>,  <33.805420, 29.960772, 31.382357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795231, 29.752083, 31.500446>,  <33.778252, 29.404268, 31.697264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795231, 29.752083, 31.500446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204825, -0.474453, -0.856120,
		-0.977877, 0.137127, 0.157961,
		0.042452, 0.869535, -0.492044,
		33.807968, 30.012943, 31.352833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184891, 29.415161, 31.310057>,  <33.778252, 29.404268, 31.697264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184891, 29.415161, 31.310057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439117, 29.672300, 31.139036>,  <33.591656, 29.826584, 31.036425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439117, 29.672300, 31.139036>,  <33.184891, 29.415161, 31.310057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439117, 29.672300, 31.139036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249651, -0.352908, -0.901737,
		-0.730566, 0.679855, -0.063810,
		0.635569, 0.642848, -0.427549,
		33.629787, 29.865154, 31.010771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779716, 29.548462, 30.762560>,  <33.184891, 29.415161, 31.310057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779716, 29.548462, 30.762560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.150063, 29.667637, 30.669609>,  <33.372272, 29.739141, 30.613838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.150063, 29.667637, 30.669609>,  <32.779716, 29.548462, 30.762560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150063, 29.667637, 30.669609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112467, -0.369828, -0.922268,
		-0.360716, 0.880036, -0.308904,
		0.925870, 0.297935, -0.232378,
		33.427822, 29.757017, 30.599895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694817, 30.114271, 30.366093>,  <32.779716, 29.548462, 30.762560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694817, 30.114271, 30.366093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046612, 29.938299, 30.293480>,  <33.257690, 29.832716, 30.249912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046612, 29.938299, 30.293480>,  <32.694817, 30.114271, 30.366093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046612, 29.938299, 30.293480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232259, -0.063840, -0.970557,
		0.415390, 0.895759, -0.158325,
		0.879492, -0.439932, -0.181530,
		33.310459, 29.806320, 30.239021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123924, 30.538582, 29.927309>,  <32.694817, 30.114271, 30.366093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123924, 30.538582, 29.927309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269665, 30.172127, 29.860455>,  <33.357109, 29.952253, 29.820341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269665, 30.172127, 29.860455>,  <33.123924, 30.538582, 29.927309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269665, 30.172127, 29.860455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055121, 0.157943, -0.985908,
		0.929628, 0.368431, 0.007048,
		0.364352, -0.916140, -0.167137,
		33.378971, 29.897285, 29.810314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438465, 30.626186, 29.265741>,  <33.123924, 30.538582, 29.927309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438465, 30.626186, 29.265741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420349, 30.232330, 29.333195>,  <33.409477, 29.996017, 29.373667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.420349, 30.232330, 29.333195>,  <33.438465, 30.626186, 29.265741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420349, 30.232330, 29.333195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060478, -0.165794, -0.984304,
		0.997142, -0.054780, -0.052040,
		-0.045292, -0.984638, 0.168633,
		33.406761, 29.936939, 29.383785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792747, 30.416149, 28.773924>,  <33.438465, 30.626186, 29.265741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792747, 30.416149, 28.773924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.608971, 30.080835, 28.891359>,  <33.498707, 29.879646, 28.961821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.608971, 30.080835, 28.891359>,  <33.792747, 30.416149, 28.773924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608971, 30.080835, 28.891359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145441, -0.255073, -0.955921,
		0.876220, -0.481888, -0.004730,
		-0.459440, -0.838285, 0.293586,
		33.471138, 29.829350, 28.979435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522148, 30.366375, 28.759075>,  <33.792747, 30.416149, 28.773924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522148, 30.366375, 28.759075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.844994, 30.528774, 28.587616>,  <35.038700, 30.626213, 28.484739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.844994, 30.528774, 28.587616>,  <34.522148, 30.366375, 28.759075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844994, 30.528774, 28.587616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341090, 0.271960, 0.899831,
		0.481904, -0.872470, 0.081020,
		0.807110, 0.405997, -0.428649,
		35.087128, 30.650574, 28.459021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024055, 30.011133, 28.985149>,  <34.522148, 30.366375, 28.759075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024055, 30.011133, 28.985149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193321, 30.351156, 28.859716>,  <35.294880, 30.555170, 28.784456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193321, 30.351156, 28.859716>,  <35.024055, 30.011133, 28.985149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193321, 30.351156, 28.859716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504586, 0.066363, 0.860807,
		0.752546, -0.522493, -0.400844,
		0.423164, 0.850057, -0.313584,
		35.320271, 30.606173, 28.765642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599457, 30.107424, 29.265911>,  <35.024055, 30.011133, 28.985149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599457, 30.107424, 29.265911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589603, 30.495512, 29.169527>,  <35.583691, 30.728365, 29.111696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589603, 30.495512, 29.169527>,  <35.599457, 30.107424, 29.265911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589603, 30.495512, 29.169527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297046, 0.237249, 0.924920,
		0.954546, -0.048796, -0.294044,
		-0.024629, 0.970223, -0.240960,
		35.582214, 30.786579, 29.097239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300030, 30.399675, 29.413280>,  <35.599457, 30.107424, 29.265911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300030, 30.399675, 29.413280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042332, 30.704851, 29.391865>,  <35.887711, 30.887957, 29.379015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.042332, 30.704851, 29.391865>,  <36.300030, 30.399675, 29.413280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042332, 30.704851, 29.391865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379331, 0.379534, 0.843838,
		0.664118, 0.523332, -0.533921,
		-0.644248, 0.762940, -0.053539,
		35.849056, 30.933733, 29.375803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697083, 31.024591, 29.580494>,  <36.300030, 30.399675, 29.413280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697083, 31.024591, 29.580494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.317413, 31.118382, 29.664488>,  <36.089611, 31.174656, 29.714884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.317413, 31.118382, 29.664488>,  <36.697083, 31.024591, 29.580494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317413, 31.118382, 29.664488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290602, 0.396524, 0.870815,
		0.120923, 0.887575, -0.444509,
		-0.949172, 0.234477, 0.209982,
		36.032661, 31.188725, 29.727482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795246, 31.730680, 29.781097>,  <36.697083, 31.024591, 29.580494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795246, 31.730680, 29.781097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.442574, 31.606861, 29.923548>,  <36.230972, 31.532570, 30.009018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.442574, 31.606861, 29.923548>,  <36.795246, 31.730680, 29.781097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442574, 31.606861, 29.923548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201860, 0.434739, 0.877641,
		-0.426494, 0.845684, -0.320814,
		-0.881678, -0.309549, 0.356124,
		36.178070, 31.513996, 30.030384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425823, 32.345676, 30.009258>,  <36.795246, 31.730680, 29.781097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425823, 32.345676, 30.009258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262054, 32.032143, 30.196011>,  <36.163795, 31.844021, 30.308062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262054, 32.032143, 30.196011>,  <36.425823, 32.345676, 30.009258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262054, 32.032143, 30.196011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122890, 0.459692, 0.879535,
		-0.904033, 0.417472, -0.091880,
		-0.409417, -0.783837, 0.466879,
		36.139229, 31.796991, 30.336075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065651, 32.593285, 30.582468>,  <36.425823, 32.345676, 30.009258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065651, 32.593285, 30.582468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111279, 32.211693, 30.693399>,  <36.138657, 31.982738, 30.759958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111279, 32.211693, 30.693399>,  <36.065651, 32.593285, 30.582468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111279, 32.211693, 30.693399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116015, 0.290035, 0.949958,
		-0.986675, -0.076190, 0.143761,
		0.114073, -0.953978, 0.277331,
		36.145500, 31.925499, 30.776598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557350, 32.533287, 31.088381>,  <36.065651, 32.593285, 30.582468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557350, 32.533287, 31.088381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797817, 32.217403, 31.137318>,  <35.942097, 32.027874, 31.166679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797817, 32.217403, 31.137318>,  <35.557350, 32.533287, 31.088381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797817, 32.217403, 31.137318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079888, 0.211719, 0.974060,
		-0.795123, -0.575796, 0.190365,
		0.601164, -0.789705, 0.122343,
		35.978165, 31.980492, 31.174021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407871, 32.153332, 31.656422>,  <35.557350, 32.533287, 31.088381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407871, 32.153332, 31.656422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794380, 32.054413, 31.627668>,  <36.026283, 31.995062, 31.610416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794380, 32.054413, 31.627668>,  <35.407871, 32.153332, 31.656422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794380, 32.054413, 31.627668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142044, 0.278943, 0.949744,
		-0.214814, -0.927920, 0.304661,
		0.966270, -0.247294, -0.071885,
		36.084263, 31.980225, 31.606104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551689, 31.750111, 32.331867>,  <35.407871, 32.153332, 31.656422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551689, 31.750111, 32.331867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.890446, 31.886106, 32.168316>,  <36.093700, 31.967705, 32.070183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.890446, 31.886106, 32.168316>,  <35.551689, 31.750111, 32.331867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890446, 31.886106, 32.168316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267663, 0.391859, 0.880229,
		0.459496, -0.854899, 0.240858,
		0.846888, 0.339993, -0.408882,
		36.144512, 31.988104, 32.045650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235580, 31.576357, 32.699776>,  <35.551689, 31.750111, 32.331867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235580, 31.576357, 32.699776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242092, 31.926136, 32.505836>,  <36.245998, 32.136005, 32.389473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242092, 31.926136, 32.505836>,  <36.235580, 31.576357, 32.699776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242092, 31.926136, 32.505836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354936, 0.448273, 0.820410,
		0.934749, -0.185448, -0.303074,
		0.016283, 0.874449, -0.484845,
		36.246979, 32.188469, 32.360382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.110500, 28.773661, 25.251553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196747, 29.142735, 25.123699>,  <35.248493, 29.364178, 25.046988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196747, 29.142735, 25.123699>,  <35.110500, 28.773661, 25.251553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196747, 29.142735, 25.123699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012665, 0.329948, 0.943914,
		0.976396, -0.199476, 0.082828,
		0.215617, 0.922683, -0.319634,
		35.261433, 29.419538, 25.027809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623203, 29.060541, 25.709881>,  <35.110500, 28.773661, 25.251553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623203, 29.060541, 25.709881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482243, 29.391800, 25.535530>,  <35.397667, 29.590555, 25.430920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482243, 29.391800, 25.535530>,  <35.623203, 29.060541, 25.709881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482243, 29.391800, 25.535530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027902, 0.456251, 0.889414,
		0.935432, 0.325593, -0.137677,
		-0.352403, 0.828145, -0.435876,
		35.376522, 29.640244, 25.404768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070057, 29.538130, 25.867027>,  <35.623203, 29.060541, 25.709881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070057, 29.538130, 25.867027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727703, 29.724169, 25.776569>,  <35.522289, 29.835793, 25.722294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727703, 29.724169, 25.776569>,  <36.070057, 29.538130, 25.867027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727703, 29.724169, 25.776569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003364, 0.432267, 0.901739,
		0.517150, 0.772549, -0.368408,
		-0.855888, 0.465095, -0.226145,
		35.470936, 29.863697, 25.708725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126171, 30.182512, 26.157656>,  <36.070057, 29.538130, 25.867027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126171, 30.182512, 26.157656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731426, 30.154793, 26.099266>,  <35.494579, 30.138161, 26.064232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731426, 30.154793, 26.099266>,  <36.126171, 30.182512, 26.157656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731426, 30.154793, 26.099266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161511, 0.395411, 0.904193,
		-0.004938, 0.915887, -0.401407,
		-0.986859, -0.069297, -0.145973,
		35.435368, 30.134005, 26.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946747, 30.751974, 26.391743>,  <36.126171, 30.182512, 26.157656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946747, 30.751974, 26.391743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598240, 30.555862, 26.400799>,  <35.389133, 30.438194, 26.406233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598240, 30.555862, 26.400799>,  <35.946747, 30.751974, 26.391743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598240, 30.555862, 26.400799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172453, 0.349000, 0.921118,
		-0.459508, 0.798638, -0.388624,
		-0.871270, -0.490281, 0.022641,
		35.336861, 30.408777, 26.407591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342972, 31.238119, 26.727001>,  <35.946747, 30.751974, 26.391743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342972, 31.238119, 26.727001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244011, 30.852211, 26.762802>,  <35.184635, 30.620667, 26.784283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244011, 30.852211, 26.762802>,  <35.342972, 31.238119, 26.727001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244011, 30.852211, 26.762802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161541, 0.132152, 0.977978,
		-0.955353, 0.227491, -0.188544,
		-0.247398, -0.964771, 0.089503,
		35.169792, 30.562780, 26.789654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752613, 31.350655, 27.001772>,  <35.342972, 31.238119, 26.727001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752613, 31.350655, 27.001772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860268, 30.973375, 27.079687>,  <34.924862, 30.747007, 27.126436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860268, 30.973375, 27.079687>,  <34.752613, 31.350655, 27.001772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860268, 30.973375, 27.079687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133981, 0.163619, 0.977383,
		-0.953736, -0.289151, -0.082334,
		0.269140, -0.943197, 0.194790,
		34.941010, 30.690416, 27.138124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323711, 31.127794, 27.628225>,  <34.752613, 31.350655, 27.001772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323711, 31.127794, 27.628225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641209, 30.884596, 27.621084>,  <34.831707, 30.738676, 27.616800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641209, 30.884596, 27.621084>,  <34.323711, 31.127794, 27.628225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641209, 30.884596, 27.621084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115666, 0.122060, 0.985760,
		-0.597159, -0.784502, 0.167208,
		0.793740, -0.607995, -0.017851,
		34.879330, 30.702198, 27.615728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271290, 30.762960, 28.236565>,  <34.323711, 31.127794, 27.628225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271290, 30.762960, 28.236565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652634, 30.728146, 28.120958>,  <34.881439, 30.707256, 28.051596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652634, 30.728146, 28.120958>,  <34.271290, 30.762960, 28.236565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652634, 30.728146, 28.120958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298670, 0.133706, 0.944944,
		-0.043604, -0.987191, 0.153466,
		0.953360, -0.087039, -0.289014,
		34.938641, 30.702034, 28.034254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982941, 29.936596, 28.199835>,  <34.271290, 30.762960, 28.236565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982941, 29.936596, 28.199835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665390, 29.773806, 28.380558>,  <33.474861, 29.676132, 28.488993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665390, 29.773806, 28.380558>,  <33.982941, 29.936596, 28.199835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665390, 29.773806, 28.380558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385494, -0.237788, -0.891545,
		0.470272, -0.881945, 0.031887,
		-0.793876, -0.406976, 0.451809,
		33.427227, 29.651712, 28.516100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870575, 29.268244, 27.948996>,  <33.982941, 29.936596, 28.199835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870575, 29.268244, 27.948996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512672, 29.362276, 28.100864>,  <33.297932, 29.418695, 28.191986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512672, 29.362276, 28.100864>,  <33.870575, 29.268244, 27.948996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512672, 29.362276, 28.100864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446445, -0.451743, -0.772409,
		-0.010064, -0.860619, 0.509150,
		-0.894754, 0.235081, 0.379673,
		33.244247, 29.432800, 28.214766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439564, 28.660648, 27.806946>,  <33.870575, 29.268244, 27.948996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439564, 28.660648, 27.806946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196793, 28.974226, 27.859205>,  <33.051128, 29.162373, 27.890560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196793, 28.974226, 27.859205>,  <33.439564, 28.660648, 27.806946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196793, 28.974226, 27.859205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403203, -0.162064, -0.900646,
		-0.684881, -0.599307, 0.414450,
		-0.606931, 0.783943, 0.130648,
		33.014713, 29.209410, 27.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818199, 28.431002, 27.614567>,  <33.439564, 28.660648, 27.806946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818199, 28.431002, 27.614567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792389, 28.829651, 27.594242>,  <32.776901, 29.068840, 27.582047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792389, 28.829651, 27.594242>,  <32.818199, 28.431002, 27.614567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792389, 28.829651, 27.594242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420596, -0.073337, -0.904279,
		-0.904950, -0.036981, 0.423907,
		-0.064529, 0.996621, -0.050812,
		32.773029, 29.128637, 27.578999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094254, 28.659019, 27.461443>,  <32.818199, 28.431002, 27.614567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094254, 28.659019, 27.461443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291382, 28.985287, 27.340240>,  <32.409660, 29.181047, 27.267519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291382, 28.985287, 27.340240>,  <32.094254, 28.659019, 27.461443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291382, 28.985287, 27.340240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485214, -0.031449, -0.873830,
		-0.722285, 0.577664, 0.380275,
		0.492821, 0.815669, -0.303006,
		32.439228, 29.229988, 27.249338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593079, 29.154673, 27.177935>,  <32.094254, 28.659019, 27.461443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593079, 29.154673, 27.177935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947544, 29.267792, 27.031109>,  <32.160225, 29.335663, 26.943012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947544, 29.267792, 27.031109>,  <31.593079, 29.154673, 27.177935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947544, 29.267792, 27.031109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422954, 0.170091, -0.890044,
		-0.189268, 0.943978, 0.270340,
		0.886164, 0.282798, -0.367066,
		32.213394, 29.352631, 26.920988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402899, 29.733936, 26.816034>,  <31.593079, 29.154673, 27.177935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402899, 29.733936, 26.816034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763899, 29.634758, 26.675169>,  <31.980499, 29.575251, 26.590651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763899, 29.634758, 26.675169>,  <31.402899, 29.733936, 26.816034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763899, 29.634758, 26.675169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340876, 0.088557, -0.935928,
		0.263247, 0.964718, -0.004597,
		0.902499, -0.247947, -0.352162,
		32.034649, 29.560373, 26.569521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471462, 30.218954, 26.247915>,  <31.402899, 29.733936, 26.816034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471462, 30.218954, 26.247915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697485, 29.895142, 26.184210>,  <31.833099, 29.700853, 26.145987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697485, 29.895142, 26.184210>,  <31.471462, 30.218954, 26.247915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697485, 29.895142, 26.184210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350451, -0.060746, -0.934609,
		0.746922, 0.583924, -0.318026,
		0.565059, -0.809533, -0.159264,
		31.867002, 29.652283, 26.136431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582535, 30.280083, 25.494545>,  <31.471462, 30.218954, 26.247915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582535, 30.280083, 25.494545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718573, 29.911222, 25.568268>,  <31.800196, 29.689905, 25.612501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718573, 29.911222, 25.568268>,  <31.582535, 30.280083, 25.494545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718573, 29.911222, 25.568268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349525, -0.305906, -0.885581,
		0.873021, 0.236763, -0.426353,
		0.340097, -0.922152, 0.184308,
		31.820602, 29.634577, 25.623560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761234, 30.084249, 24.853868>,  <31.582535, 30.280083, 25.494545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761234, 30.084249, 24.853868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736961, 29.762936, 25.090866>,  <31.722399, 29.570147, 25.233065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736961, 29.762936, 25.090866>,  <31.761234, 30.084249, 24.853868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736961, 29.762936, 25.090866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041993, -0.591007, -0.805572,
		0.997273, -0.073764, 0.002130,
		-0.060681, -0.803286, 0.592493,
		31.718758, 29.521950, 25.268614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290630, 29.570801, 24.655989>,  <31.761234, 30.084249, 24.853868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290630, 29.570801, 24.655989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019360, 29.347500, 24.847164>,  <31.856596, 29.213518, 24.961870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019360, 29.347500, 24.847164>,  <32.290630, 29.570801, 24.655989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019360, 29.347500, 24.847164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000029, -0.650330, -0.759652,
		0.734898, -0.515193, 0.441023,
		-0.678178, -0.558254, 0.477941,
		31.815907, 29.180023, 24.990547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517086, 28.945814, 24.639990>,  <32.290630, 29.570801, 24.655989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517086, 28.945814, 24.639990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123646, 28.892366, 24.688438>,  <31.887581, 28.860298, 24.717508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123646, 28.892366, 24.688438>,  <32.517086, 28.945814, 24.639990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123646, 28.892366, 24.688438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028325, -0.777731, -0.627959,
		0.178109, -0.614232, 0.768763,
		-0.983603, -0.133620, 0.121122,
		31.828566, 28.852280, 24.724775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408230, 28.175877, 24.691957>,  <32.517086, 28.945814, 24.639990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408230, 28.175877, 24.691957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062138, 28.345707, 24.585291>,  <31.854483, 28.447605, 24.521290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062138, 28.345707, 24.585291>,  <32.408230, 28.175877, 24.691957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062138, 28.345707, 24.585291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090385, -0.655246, -0.749989,
		-0.493159, -0.624811, 0.605314,
		-0.865231, 0.424575, -0.266667,
		31.802568, 28.473080, 24.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947170, 27.606052, 24.438215>,  <32.408230, 28.175877, 24.691957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947170, 27.606052, 24.438215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824068, 27.957890, 24.293104>,  <31.750208, 28.168991, 24.206038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824068, 27.957890, 24.293104>,  <31.947170, 27.606052, 24.438215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824068, 27.957890, 24.293104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200921, -0.432762, -0.878833,
		-0.930010, -0.197574, 0.309913,
		-0.307753, 0.879592, -0.362777,
		31.731743, 28.221767, 24.184271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.016354, 34.614223, 20.870766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238068, 34.307568, 21.000399>,  <34.371094, 34.123573, 21.078178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238068, 34.307568, 21.000399>,  <34.016354, 34.614223, 20.870766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238068, 34.307568, 21.000399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028871, 0.371425, 0.928014,
		-0.831828, -0.523738, 0.183740,
		0.554281, -0.766644, 0.324083,
		34.404350, 34.077576, 21.097624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758389, 34.496304, 21.490448>,  <34.016354, 34.614223, 20.870766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758389, 34.496304, 21.490448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126312, 34.341164, 21.514160>,  <34.347069, 34.248081, 21.528387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126312, 34.341164, 21.514160>,  <33.758389, 34.496304, 21.490448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126312, 34.341164, 21.514160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003711, 0.159682, 0.987161,
		-0.392338, -0.907784, 0.148318,
		0.919813, -0.387852, 0.059280,
		34.402256, 34.224808, 21.531944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766575, 34.180241, 22.151478>,  <33.758389, 34.496304, 21.490448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766575, 34.180241, 22.151478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149494, 34.245533, 22.056032>,  <34.379246, 34.284706, 21.998764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149494, 34.245533, 22.056032>,  <33.766575, 34.180241, 22.151478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149494, 34.245533, 22.056032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204646, 0.200397, 0.958103,
		0.204233, -0.966017, 0.158429,
		0.957292, 0.163254, -0.238620,
		34.436684, 34.294502, 21.984447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109978, 33.897770, 22.755043>,  <33.766575, 34.180241, 22.151478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109978, 33.897770, 22.755043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409229, 34.089924, 22.571945>,  <34.588779, 34.205215, 22.462086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.409229, 34.089924, 22.571945>,  <34.109978, 33.897770, 22.755043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409229, 34.089924, 22.571945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474901, 0.094164, 0.874987,
		0.463436, -0.871987, -0.157690,
		0.748128, 0.480388, -0.457746,
		34.633667, 34.234039, 22.434622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593456, 33.717449, 23.110754>,  <34.109978, 33.897770, 22.755043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593456, 33.717449, 23.110754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732018, 34.048420, 22.933950>,  <34.815155, 34.247002, 22.827869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732018, 34.048420, 22.933950>,  <34.593456, 33.717449, 23.110754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732018, 34.048420, 22.933950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427323, 0.280273, 0.859559,
		0.835103, -0.486637, -0.256489,
		0.346406, 0.827425, -0.442008,
		34.835938, 34.296646, 22.801348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196133, 33.729401, 23.528482>,  <34.593456, 33.717449, 23.110754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196133, 33.729401, 23.528482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166496, 34.089340, 23.356533>,  <35.148716, 34.305302, 23.253363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166496, 34.089340, 23.356533>,  <35.196133, 33.729401, 23.528482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166496, 34.089340, 23.356533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611795, 0.381423, 0.692982,
		0.787539, -0.211651, -0.578780,
		-0.074090, 0.899845, -0.429873,
		35.144268, 34.359295, 23.227571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821182, 33.941048, 23.320118>,  <35.196133, 33.729401, 23.528482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821182, 33.941048, 23.320118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569725, 34.244690, 23.387720>,  <35.418850, 34.426876, 23.428282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569725, 34.244690, 23.387720>,  <35.821182, 33.941048, 23.320118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569725, 34.244690, 23.387720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475928, 0.203649, 0.855581,
		0.615059, 0.618293, -0.489303,
		-0.628645, 0.759106, 0.169007,
		35.381130, 34.472424, 23.438421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235516, 34.411903, 23.631359>,  <35.821182, 33.941048, 23.320118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235516, 34.411903, 23.631359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860405, 34.514217, 23.725300>,  <35.635338, 34.575607, 23.781664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860405, 34.514217, 23.725300>,  <36.235516, 34.411903, 23.631359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860405, 34.514217, 23.725300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289975, 0.204761, 0.934873,
		0.191038, 0.944800, -0.266191,
		-0.937774, 0.255785, 0.234851,
		35.579071, 34.590954, 23.795755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296513, 35.047695, 23.988516>,  <36.235516, 34.411903, 23.631359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296513, 35.047695, 23.988516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936661, 34.903873, 24.087622>,  <35.720749, 34.817581, 24.147085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.936661, 34.903873, 24.087622>,  <36.296513, 35.047695, 23.988516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936661, 34.903873, 24.087622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086680, 0.409072, 0.908376,
		-0.427965, 0.838677, -0.336847,
		-0.899629, -0.359556, 0.247765,
		35.666771, 34.796005, 24.161951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995525, 35.603725, 24.417227>,  <36.296513, 35.047695, 23.988516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995525, 35.603725, 24.417227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770111, 35.279297, 24.479954>,  <35.634861, 35.084641, 24.517590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770111, 35.279297, 24.479954>,  <35.995525, 35.603725, 24.417227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770111, 35.279297, 24.479954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168812, 0.298892, 0.939237,
		-0.808657, 0.502825, -0.305355,
		-0.563540, -0.811068, 0.156819,
		35.601048, 35.035976, 24.526999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420464, 35.900124, 24.680035>,  <35.995525, 35.603725, 24.417227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420464, 35.900124, 24.680035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441475, 35.518433, 24.797806>,  <35.454082, 35.289417, 24.868469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441475, 35.518433, 24.797806>,  <35.420464, 35.900124, 24.680035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441475, 35.518433, 24.797806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209932, 0.277696, 0.937450,
		-0.976304, -0.111052, -0.185736,
		0.052528, -0.954228, 0.294429,
		35.457233, 35.232162, 24.886135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882168, 35.848949, 25.194122>,  <35.420464, 35.900124, 24.680035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882168, 35.848949, 25.194122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103004, 35.521919, 25.259552>,  <35.235508, 35.325699, 25.298811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103004, 35.521919, 25.259552>,  <34.882168, 35.848949, 25.194122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103004, 35.521919, 25.259552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135136, 0.105850, 0.985157,
		-0.822758, -0.566004, -0.052045,
		0.552094, -0.817579, 0.163576,
		35.268631, 35.276646, 25.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542522, 35.558323, 25.851490>,  <34.882168, 35.848949, 25.194122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542522, 35.558323, 25.851490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892483, 35.372387, 25.797123>,  <35.102459, 35.260826, 25.764502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892483, 35.372387, 25.797123>,  <34.542522, 35.558323, 25.851490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892483, 35.372387, 25.797123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092005, -0.116009, 0.988978,
		-0.475484, -0.877762, -0.058729,
		0.874900, -0.464839, -0.135919,
		35.154953, 35.232937, 25.756348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567783, 34.992027, 26.359957>,  <34.542522, 35.558323, 25.851490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567783, 34.992027, 26.359957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948433, 35.073456, 26.267893>,  <35.176823, 35.122314, 26.212654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.948433, 35.073456, 26.267893>,  <34.567783, 34.992027, 26.359957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948433, 35.073456, 26.267893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243444, -0.042472, 0.968985,
		0.187487, -0.978137, -0.089977,
		0.951621, 0.203577, -0.230159,
		35.233921, 35.134529, 26.198845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231251, 34.335163, 26.369972>,  <34.567783, 34.992027, 26.359957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231251, 34.335163, 26.369972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859627, 34.434032, 26.480066>,  <33.636654, 34.493355, 26.546124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859627, 34.434032, 26.480066>,  <34.231251, 34.335163, 26.369972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859627, 34.434032, 26.480066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363580, -0.472807, -0.802660,
		-0.068261, -0.845789, 0.529132,
		-0.929059, 0.247172, 0.275238,
		33.580910, 34.508183, 26.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790165, 33.779594, 26.196331>,  <34.231251, 34.335163, 26.369972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790165, 33.779594, 26.196331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552002, 34.100136, 26.219351>,  <33.409103, 34.292461, 26.233164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552002, 34.100136, 26.219351>,  <33.790165, 33.779594, 26.196331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552002, 34.100136, 26.219351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410003, -0.241470, -0.879540,
		-0.690928, -0.547284, 0.472333,
		-0.595412, 0.801357, 0.057550,
		33.373379, 34.340542, 26.236616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115158, 33.513977, 26.231575>,  <33.790165, 33.779594, 26.196331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115158, 33.513977, 26.231575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111252, 33.891087, 26.098263>,  <33.108906, 34.117352, 26.018274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111252, 33.891087, 26.098263>,  <33.115158, 33.513977, 26.231575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111252, 33.891087, 26.098263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496769, -0.293835, -0.816628,
		-0.867828, 0.157587, 0.471212,
		-0.009768, 0.942776, -0.333283,
		33.108322, 34.173920, 25.998278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433807, 33.630680, 25.834297>,  <33.115158, 33.513977, 26.231575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433807, 33.630680, 25.834297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.657787, 33.932915, 25.698330>,  <32.792175, 34.114254, 25.616749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.657787, 33.932915, 25.698330>,  <32.433807, 33.630680, 25.834297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657787, 33.932915, 25.698330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361861, -0.146041, -0.920722,
		-0.745324, 0.638565, 0.191640,
		0.559954, 0.755583, -0.339920,
		32.825775, 34.159592, 25.596354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973898, 34.032864, 25.350512>,  <32.433807, 33.630680, 25.834297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973898, 34.032864, 25.350512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.346088, 34.140713, 25.251297>,  <32.569401, 34.205421, 25.191769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.346088, 34.140713, 25.251297>,  <31.973898, 34.032864, 25.350512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346088, 34.140713, 25.251297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214951, -0.146476, -0.965578,
		-0.296671, 0.951761, -0.078336,
		0.930474, 0.269621, -0.248038,
		32.625229, 34.221600, 25.176886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833122, 34.550724, 24.841028>,  <31.973898, 34.032864, 25.350512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833122, 34.550724, 24.841028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208992, 34.422604, 24.792995>,  <32.434513, 34.345730, 24.764175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.208992, 34.422604, 24.792995>,  <31.833122, 34.550724, 24.841028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208992, 34.422604, 24.792995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217199, -0.287477, -0.932835,
		0.264270, 0.902642, -0.339704,
		0.939673, -0.320304, -0.120082,
		32.490894, 34.326511, 24.756971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153328, 34.829426, 24.237936>,  <31.833122, 34.550724, 24.841028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153328, 34.829426, 24.237936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383072, 34.503822, 24.272575>,  <32.520920, 34.308460, 24.293358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.383072, 34.503822, 24.272575>,  <32.153328, 34.829426, 24.237936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383072, 34.503822, 24.272575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231422, -0.262933, -0.936648,
		0.785210, 0.517932, -0.339398,
		0.574359, -0.814010, 0.086597,
		32.555378, 34.259621, 24.298555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494915, 34.720360, 23.520817>,  <32.153328, 34.829426, 24.237936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494915, 34.720360, 23.520817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517258, 34.370415, 23.713272>,  <32.530663, 34.160446, 23.828745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517258, 34.370415, 23.713272>,  <32.494915, 34.720360, 23.520817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517258, 34.370415, 23.713272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238238, -0.479651, -0.844499,
		0.969599, -0.067455, -0.235218,
		0.055857, -0.874863, 0.481139,
		32.534016, 34.107956, 23.857615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949722, 34.327999, 23.191336>,  <32.494915, 34.720360, 23.520817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949722, 34.327999, 23.191336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.718853, 34.060951, 23.379446>,  <32.580334, 33.900723, 23.492311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.718853, 34.060951, 23.379446>,  <32.949722, 34.327999, 23.191336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718853, 34.060951, 23.379446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111282, -0.506207, -0.855202,
		0.809005, -0.545932, 0.217874,
		-0.577171, -0.667618, 0.470276,
		32.545700, 33.860664, 23.520529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183727, 33.632565, 22.864429>,  <32.949722, 34.327999, 23.191336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183727, 33.632565, 22.864429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.832470, 33.588696, 23.050688>,  <32.621716, 33.562374, 23.162443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.832470, 33.588696, 23.050688>,  <33.183727, 33.632565, 22.864429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832470, 33.588696, 23.050688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232894, -0.752223, -0.616377,
		0.417871, -0.649717, 0.635021,
		-0.878148, -0.109673, 0.465648,
		32.569027, 33.555794, 23.190382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191124, 32.965359, 23.057741>,  <33.183727, 33.632565, 22.864429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191124, 32.965359, 23.057741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809818, 33.086216, 23.057163>,  <32.581036, 33.158730, 23.056816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809818, 33.086216, 23.057163>,  <33.191124, 32.965359, 23.057741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809818, 33.086216, 23.057163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242063, -0.766561, -0.594802,
		-0.180820, -0.566653, 0.803871,
		-0.953262, 0.302140, -0.001444,
		32.523838, 33.176857, 23.056730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810127, 32.404232, 23.094095>,  <33.191124, 32.965359, 23.057741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810127, 32.404232, 23.094095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578918, 32.683880, 22.925751>,  <32.440193, 32.851669, 22.824743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578918, 32.683880, 22.925751>,  <32.810127, 32.404232, 23.094095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578918, 32.683880, 22.925751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194855, -0.619081, -0.760770,
		-0.792415, -0.357736, 0.494069,
		-0.578023, 0.699117, -0.420862,
		32.405510, 32.893616, 22.799492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407692, 32.033363, 22.642895>,  <32.810127, 32.404232, 23.094095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407692, 32.033363, 22.642895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.325169, 32.387131, 22.475451>,  <32.275654, 32.599392, 22.374983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.325169, 32.387131, 22.475451>,  <32.407692, 32.033363, 22.642895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325169, 32.387131, 22.475451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206393, -0.457525, -0.864912,
		-0.956471, -0.092043, 0.276931,
		-0.206312, 0.884420, -0.418613,
		32.263275, 32.652458, 22.349867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885788, 31.894802, 22.268084>,  <32.407692, 32.033363, 22.642895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885788, 31.894802, 22.268084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025753, 32.223495, 22.088165>,  <32.109734, 32.420712, 21.980213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.025753, 32.223495, 22.088165>,  <31.885788, 31.894802, 22.268084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025753, 32.223495, 22.088165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076680, -0.453416, -0.887994,
		-0.933639, 0.345210, -0.095646,
		0.349912, 0.821732, -0.449798,
		32.130726, 32.470016, 21.953226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173012, 31.941313, 22.582592>,  <31.885788, 31.894802, 22.268084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173012, 31.941313, 22.582592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821684, 31.750193, 22.576145>,  <30.610888, 31.635521, 22.572277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.821684, 31.750193, 22.576145>,  <31.173012, 31.941313, 22.582592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821684, 31.750193, 22.576145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225533, 0.384391, 0.895197,
		-0.421529, 0.789906, -0.445379,
		-0.878321, -0.477799, -0.016118,
		30.558187, 31.606853, 22.571310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711859, 32.414215, 22.817673>,  <31.173012, 31.941313, 22.582592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711859, 32.414215, 22.817673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.524561, 32.064667, 22.869982>,  <30.412182, 31.854939, 22.901367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.524561, 32.064667, 22.869982>,  <30.711859, 32.414215, 22.817673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524561, 32.064667, 22.869982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231136, 0.263986, 0.936423,
		-0.852832, 0.408249, -0.325592,
		-0.468245, -0.873867, 0.130774,
		30.384087, 31.802507, 22.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031778, 32.639114, 23.107586>,  <30.711859, 32.414215, 22.817673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031778, 32.639114, 23.107586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.087246, 32.261906, 23.228567>,  <30.120527, 32.035580, 23.301155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.087246, 32.261906, 23.228567>,  <30.031778, 32.639114, 23.107586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087246, 32.261906, 23.228567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529513, 0.187480, 0.827325,
		-0.836891, -0.274877, -0.473345,
		0.138670, -0.943024, 0.302451,
		30.128847, 31.978998, 23.319302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308222, 32.365299, 23.426414>,  <30.031778, 32.639114, 23.107586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308222, 32.365299, 23.426414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.598864, 32.124409, 23.558697>,  <29.773249, 31.979874, 23.638065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.598864, 32.124409, 23.558697>,  <29.308222, 32.365299, 23.426414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598864, 32.124409, 23.558697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309700, 0.142570, 0.940085,
		-0.613293, -0.785491, -0.082917,
		0.726606, -0.602227, 0.330704,
		29.816845, 31.943741, 23.657907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996101, 32.004406, 24.017324>,  <29.308222, 32.365299, 23.426414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996101, 32.004406, 24.017324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.387117, 31.940578, 24.072393>,  <29.621727, 31.902283, 24.105434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.387117, 31.940578, 24.072393>,  <28.996101, 32.004406, 24.017324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387117, 31.940578, 24.072393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127849, 0.070335, 0.989296,
		-0.167544, -0.984678, 0.048355,
		0.977539, -0.159569, 0.137674,
		29.680380, 31.892708, 24.113695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030724, 31.622684, 24.618103>,  <28.996101, 32.004406, 24.017324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030724, 31.622684, 24.618103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.402607, 31.762442, 24.571516>,  <29.625736, 31.846296, 24.543564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.402607, 31.762442, 24.571516>,  <29.030724, 31.622684, 24.618103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402607, 31.762442, 24.571516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110032, 0.038279, 0.993191,
		0.351474, -0.936193, -0.002856,
		0.929709, 0.349395, -0.116465,
		29.681520, 31.867260, 24.536577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520718, 31.094889, 24.946299>,  <29.030724, 31.622684, 24.618103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520718, 31.094889, 24.946299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676277, 31.463356, 24.952120>,  <29.769613, 31.684437, 24.955612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.676277, 31.463356, 24.952120>,  <29.520718, 31.094889, 24.946299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676277, 31.463356, 24.952120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101807, -0.058668, 0.993073,
		0.915639, -0.384721, -0.116597,
		0.388897, 0.921166, 0.014551,
		29.792946, 31.739706, 24.956486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031895, 30.990555, 25.384764>,  <29.520718, 31.094889, 24.946299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031895, 30.990555, 25.384764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.014544, 31.389875, 25.369184>,  <30.004133, 31.629467, 25.359837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.014544, 31.389875, 25.369184>,  <30.031895, 30.990555, 25.384764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014544, 31.389875, 25.369184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087150, 0.035055, 0.995578,
		0.995250, 0.046578, 0.085482,
		-0.043376, 0.998299, -0.038948,
		30.001532, 31.689365, 25.357500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608404, 31.318512, 25.742720>,  <30.031895, 30.990555, 25.384764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608404, 31.318512, 25.742720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307619, 31.579086, 25.783092>,  <30.127148, 31.735432, 25.807316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307619, 31.579086, 25.783092>,  <30.608404, 31.318512, 25.742720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307619, 31.579086, 25.783092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135128, 0.002463, 0.990825,
		0.645210, 0.758700, -0.089879,
		-0.751961, 0.651435, 0.100932,
		30.082031, 31.774517, 25.813372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889732, 31.831848, 25.998301>,  <30.608404, 31.318512, 25.742720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889732, 31.831848, 25.998301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.505119, 31.901693, 26.083122>,  <30.274351, 31.943600, 26.134016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.505119, 31.901693, 26.083122>,  <30.889732, 31.831848, 25.998301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505119, 31.901693, 26.083122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257777, 0.306834, 0.916190,
		0.094911, 0.935609, -0.340042,
		-0.961532, 0.174612, 0.212056,
		30.216660, 31.954077, 26.146740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002367, 32.356762, 26.488131>,  <30.889732, 31.831848, 25.998301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002367, 32.356762, 26.488131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616865, 32.251789, 26.507347>,  <30.385565, 32.188805, 26.518877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616865, 32.251789, 26.507347>,  <31.002367, 32.356762, 26.488131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616865, 32.251789, 26.507347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006074, 0.201598, 0.979450,
		-0.266727, 0.943655, -0.195885,
		-0.963753, -0.262436, 0.048040,
		30.327740, 32.173058, 26.521759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675438, 32.927086, 26.711920>,  <31.002367, 32.356762, 26.488131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675438, 32.927086, 26.711920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455496, 32.603909, 26.796658>,  <30.323530, 32.410000, 26.847500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455496, 32.603909, 26.796658>,  <30.675438, 32.927086, 26.711920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455496, 32.603909, 26.796658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174598, 0.136841, 0.975084,
		-0.816806, 0.573144, 0.065823,
		-0.549857, -0.807948, 0.211843,
		30.290539, 32.361523, 26.860210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296165, 33.173836, 27.225367>,  <30.675438, 32.927086, 26.711920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296165, 33.173836, 27.225367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295204, 32.776440, 27.270906>,  <30.294626, 32.538002, 27.298231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.295204, 32.776440, 27.270906>,  <30.296165, 33.173836, 27.225367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295204, 32.776440, 27.270906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107382, 0.112937, 0.987783,
		-0.994215, 0.014601, 0.106411,
		-0.002405, -0.993495, 0.113851,
		30.294483, 32.478390, 27.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837978, 32.970802, 27.835859>,  <30.296165, 33.173836, 27.225367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837978, 32.970802, 27.835859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.075727, 32.650021, 27.811874>,  <30.218376, 32.457554, 27.797483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.075727, 32.650021, 27.811874>,  <29.837978, 32.970802, 27.835859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075727, 32.650021, 27.811874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204323, 0.078478, 0.975753,
		-0.777801, -0.592212, 0.210503,
		0.594372, -0.801951, -0.059962,
		30.254040, 32.409435, 27.793886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.238516, 27.479450, 24.188808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360487, 27.791224, 23.969902>,  <31.433670, 27.978289, 23.838558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360487, 27.791224, 23.969902>,  <31.238516, 27.479450, 24.188808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360487, 27.791224, 23.969902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253310, -0.487556, -0.835537,
		-0.918070, 0.393407, 0.048769,
		0.304928, 0.779436, -0.547265,
		31.451965, 28.025055, 23.805723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851778, 27.419470, 23.633194>,  <31.238516, 27.479450, 24.188808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851778, 27.419470, 23.633194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137136, 27.680439, 23.530891>,  <31.308352, 27.837021, 23.469511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.137136, 27.680439, 23.530891>,  <30.851778, 27.419470, 23.633194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137136, 27.680439, 23.530891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110252, -0.464918, -0.878462,
		-0.692034, 0.598493, -0.403602,
		0.713395, 0.652424, -0.255754,
		31.351154, 27.876165, 23.454165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668755, 27.669577, 22.943501>,  <30.851778, 27.419470, 23.633194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668755, 27.669577, 22.943501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044090, 27.800451, 22.988165>,  <31.269291, 27.878977, 23.014963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044090, 27.800451, 22.988165>,  <30.668755, 27.669577, 22.943501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044090, 27.800451, 22.988165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226145, -0.336610, -0.914086,
		-0.261492, 0.882973, -0.389846,
		0.938339, 0.327188, 0.111659,
		31.325592, 27.898607, 23.021662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779942, 28.165054, 22.481306>,  <30.668755, 27.669577, 22.943501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779942, 28.165054, 22.481306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130733, 27.994658, 22.570242>,  <31.341209, 27.892420, 22.623604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.130733, 27.994658, 22.570242>,  <30.779942, 28.165054, 22.481306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130733, 27.994658, 22.570242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142012, -0.212269, -0.966838,
		0.459059, 0.879474, -0.125660,
		0.876982, -0.425991, 0.222339,
		31.393827, 27.866859, 22.636944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161894, 28.322454, 21.876278>,  <30.779942, 28.165054, 22.481306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161894, 28.322454, 21.876278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355848, 28.017672, 22.048000>,  <31.472221, 27.834803, 22.151033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355848, 28.017672, 22.048000>,  <31.161894, 28.322454, 21.876278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355848, 28.017672, 22.048000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097979, -0.440457, -0.892411,
		0.869071, 0.474782, -0.138917,
		0.484888, -0.761958, 0.429307,
		31.501314, 27.789083, 22.176792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651396, 28.176804, 21.392544>,  <31.161894, 28.322454, 21.876278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651396, 28.176804, 21.392544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.689983, 27.853357, 21.624693>,  <31.713137, 27.659290, 21.763983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.689983, 27.853357, 21.624693>,  <31.651396, 28.176804, 21.392544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689983, 27.853357, 21.624693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199421, -0.555569, -0.807201,
		0.975154, 0.193610, 0.107659,
		0.096470, -0.808615, 0.580375,
		31.718924, 27.610773, 21.798805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303894, 27.972437, 21.309986>,  <31.651396, 28.176804, 21.392544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303894, 27.972437, 21.309986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096058, 27.654385, 21.435070>,  <31.971355, 27.463552, 21.510120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096058, 27.654385, 21.435070>,  <32.303894, 27.972437, 21.309986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096058, 27.654385, 21.435070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265001, -0.497919, -0.825742,
		0.812280, -0.346179, 0.469425,
		-0.519591, -0.795133, 0.312712,
		31.940180, 27.415844, 21.528883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833652, 27.346920, 21.236568>,  <32.303894, 27.972437, 21.309986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833652, 27.346920, 21.236568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463661, 27.198517, 21.269474>,  <32.241665, 27.109474, 21.289217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463661, 27.198517, 21.269474>,  <32.833652, 27.346920, 21.236568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463661, 27.198517, 21.269474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127831, -0.507621, -0.852045,
		0.357873, -0.777608, 0.516965,
		-0.924979, -0.371008, 0.082262,
		32.186169, 27.087214, 21.294153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857090, 26.582830, 21.049631>,  <32.833652, 27.346920, 21.236568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857090, 26.582830, 21.049631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479767, 26.698559, 20.984556>,  <32.253372, 26.767996, 20.945511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479767, 26.698559, 20.984556>,  <32.857090, 26.582830, 21.049631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479767, 26.698559, 20.984556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004911, -0.477916, -0.878392,
		-0.331887, -0.829392, 0.449401,
		-0.943306, 0.289319, -0.162687,
		32.196774, 26.785355, 20.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471142, 25.960682, 20.706896>,  <32.857090, 26.582830, 21.049631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471142, 25.960682, 20.706896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277992, 26.301247, 20.624987>,  <32.162102, 26.505585, 20.575840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.277992, 26.301247, 20.624987>,  <32.471142, 25.960682, 20.706896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277992, 26.301247, 20.624987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250370, -0.358314, -0.899403,
		-0.839134, -0.383030, 0.386188,
		-0.482875, 0.851410, -0.204774,
		32.133129, 26.556669, 20.563555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910534, 25.709061, 20.401609>,  <32.471142, 25.960682, 20.706896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910534, 25.709061, 20.401609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898272, 26.094709, 20.296133>,  <31.890913, 26.326097, 20.232847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898272, 26.094709, 20.296133>,  <31.910534, 25.709061, 20.401609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898272, 26.094709, 20.296133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137185, -0.265378, -0.954335,
		-0.990071, 0.006918, 0.140399,
		-0.030657, 0.964120, -0.263692,
		31.889074, 26.383945, 20.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344221, 25.774757, 19.988279>,  <31.910534, 25.709061, 20.401609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344221, 25.774757, 19.988279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587830, 26.080339, 19.902988>,  <31.733995, 26.263689, 19.851814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587830, 26.080339, 19.902988>,  <31.344221, 25.774757, 19.988279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587830, 26.080339, 19.902988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163789, -0.141905, -0.976236,
		-0.776058, 0.629473, 0.038704,
		0.609022, 0.763954, -0.213227,
		31.770536, 26.309526, 19.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008883, 26.281231, 19.384798>,  <31.344221, 25.774757, 19.988279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008883, 26.281231, 19.384798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407616, 26.284492, 19.416445>,  <31.646856, 26.286449, 19.435432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.407616, 26.284492, 19.416445>,  <31.008883, 26.281231, 19.384798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407616, 26.284492, 19.416445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079115, -0.203628, -0.975847,
		0.008154, 0.979014, -0.203628,
		0.996832, 0.008153, 0.079115,
		31.706665, 26.286938, 19.440180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180634, 26.727854, 18.810341>,  <31.008883, 26.281231, 19.384798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180634, 26.727854, 18.810341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415314, 26.430548, 18.938925>,  <31.556122, 26.252163, 19.016075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415314, 26.430548, 18.938925>,  <31.180634, 26.727854, 18.810341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415314, 26.430548, 18.938925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165050, -0.278874, -0.946038,
		0.792805, 0.608098, -0.040939,
		0.586701, -0.743267, 0.321460,
		31.591324, 26.207567, 19.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146254, 27.399315, 18.985315>,  <31.180634, 26.727854, 18.810341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146254, 27.399315, 18.985315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.183117, 27.637056, 18.665752>,  <31.205235, 27.779701, 18.474014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.183117, 27.637056, 18.665752>,  <31.146254, 27.399315, 18.985315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183117, 27.637056, 18.665752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132041, 0.802530, 0.581817,
		0.986951, 0.051870, 0.152438,
		0.092157, 0.594352, -0.798907,
		31.210764, 27.815363, 18.426081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618088, 27.956743, 19.156950>,  <31.146254, 27.399315, 18.985315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618088, 27.956743, 19.156950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385363, 28.090736, 18.860497>,  <31.245728, 28.171133, 18.682625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385363, 28.090736, 18.860497>,  <31.618088, 27.956743, 19.156950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385363, 28.090736, 18.860497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259784, 0.786966, 0.559640,
		0.770717, 0.518140, -0.370844,
		-0.581814, 0.334985, -0.741133,
		31.210819, 28.191233, 18.638157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884804, 28.523249, 18.932409>,  <31.618088, 27.956743, 19.156950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884804, 28.523249, 18.932409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.489988, 28.534969, 18.869297>,  <31.253099, 28.542002, 18.831429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.489988, 28.534969, 18.869297>,  <31.884804, 28.523249, 18.932409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489988, 28.534969, 18.869297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068610, 0.811756, 0.579952,
		0.145074, 0.583261, -0.799225,
		-0.987039, 0.029301, -0.157782,
		31.193876, 28.543760, 18.821962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710030, 29.176804, 18.934772>,  <31.884804, 28.523249, 18.932409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710030, 29.176804, 18.934772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337215, 29.038614, 18.978519>,  <31.113527, 28.955700, 19.004768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337215, 29.038614, 18.978519>,  <31.710030, 29.176804, 18.934772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337215, 29.038614, 18.978519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182989, 0.709209, 0.680836,
		-0.312776, 0.614549, -0.724224,
		-0.932033, -0.345474, 0.109367,
		31.057606, 28.934973, 19.011330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266191, 29.740063, 18.740114>,  <31.710030, 29.176804, 18.934772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266191, 29.740063, 18.740114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.070688, 29.472435, 18.964064>,  <30.953386, 29.311857, 19.098434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.070688, 29.472435, 18.964064>,  <31.266191, 29.740063, 18.740114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070688, 29.472435, 18.964064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222846, 0.716207, 0.661352,
		-0.843478, 0.198475, -0.499152,
		-0.488758, -0.669070, 0.559875,
		30.924061, 29.271713, 19.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848967, 30.195967, 19.016151>,  <31.266191, 29.740063, 18.740114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848967, 30.195967, 19.016151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769625, 29.868017, 19.230984>,  <30.722019, 29.671247, 19.359884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769625, 29.868017, 19.230984>,  <30.848967, 30.195967, 19.016151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769625, 29.868017, 19.230984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337389, 0.571598, 0.747960,
		-0.920230, -0.032844, -0.389997,
		-0.198356, -0.819876, 0.537083,
		30.710117, 29.622055, 19.392109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118591, 30.268717, 19.258554>,  <30.848967, 30.195967, 19.016151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118591, 30.268717, 19.258554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323860, 30.024187, 19.499533>,  <30.447021, 29.877470, 19.644119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.323860, 30.024187, 19.499533>,  <30.118591, 30.268717, 19.258554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323860, 30.024187, 19.499533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153104, 0.625456, 0.765091,
		-0.844521, -0.484859, 0.227370,
		0.513170, -0.611324, 0.602445,
		30.477812, 29.840790, 19.680265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643661, 30.229013, 19.919586>,  <30.118591, 30.268717, 19.258554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643661, 30.229013, 19.919586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000475, 30.106335, 20.052380>,  <30.214563, 30.032728, 20.132055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000475, 30.106335, 20.052380>,  <29.643661, 30.229013, 19.919586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000475, 30.106335, 20.052380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196169, 0.399007, 0.895718,
		-0.407178, -0.864135, 0.295763,
		0.892033, -0.306697, 0.331984,
		30.268085, 30.014326, 20.151976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476048, 29.963282, 20.531940>,  <29.643661, 30.229013, 19.919586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476048, 29.963282, 20.531940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.867987, 30.042923, 20.538340>,  <30.103149, 30.090708, 20.542179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.867987, 30.042923, 20.538340>,  <29.476048, 29.963282, 20.531940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867987, 30.042923, 20.538340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122018, 0.533211, 0.837137,
		0.158147, -0.822219, 0.546759,
		0.979848, 0.199105, 0.016000,
		30.161942, 30.102655, 20.543139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577358, 29.975027, 21.216286>,  <29.476048, 29.963282, 20.531940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577358, 29.975027, 21.216286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907259, 30.146406, 21.068655>,  <30.105200, 30.249233, 20.980076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907259, 30.146406, 21.068655>,  <29.577358, 29.975027, 21.216286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907259, 30.146406, 21.068655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118486, 0.507249, 0.853615,
		0.552949, -0.747748, 0.367587,
		0.824747, 0.428452, -0.369081,
		30.154684, 30.274940, 20.957932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092415, 29.812487, 21.615404>,  <29.577358, 29.975027, 21.216286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092415, 29.812487, 21.615404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180424, 30.157347, 21.432850>,  <30.233229, 30.364264, 21.323318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180424, 30.157347, 21.432850>,  <30.092415, 29.812487, 21.615404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180424, 30.157347, 21.432850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110550, 0.442797, 0.889780,
		0.969211, -0.246223, 0.002113,
		0.220020, 0.862151, -0.456384,
		30.246429, 30.415993, 21.295935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736195, 30.139036, 21.889688>,  <30.092415, 29.812487, 21.615404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736195, 30.139036, 21.889688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579256, 30.458235, 21.706705>,  <30.485092, 30.649754, 21.596916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.579256, 30.458235, 21.706705>,  <30.736195, 30.139036, 21.889688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579256, 30.458235, 21.706705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146826, 0.545291, 0.825288,
		0.908023, 0.256633, -0.331110,
		-0.392348, 0.797996, -0.457456,
		30.461552, 30.697634, 21.569468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191553, 30.690117, 22.027008>,  <30.736195, 30.139036, 21.889688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191553, 30.690117, 22.027008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.848389, 30.872980, 21.933201>,  <30.642490, 30.982698, 21.876917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.848389, 30.872980, 21.933201>,  <31.191553, 30.690117, 22.027008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848389, 30.872980, 21.933201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058853, 0.540867, 0.839046,
		0.510417, 0.706025, -0.490921,
		-0.857911, 0.457156, -0.234516,
		30.591015, 31.010126, 21.862846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341122, 31.323343, 22.194262>,  <31.191553, 30.690117, 22.027008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341122, 31.323343, 22.194262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.941683, 31.303295, 22.201086>,  <30.702019, 31.291265, 22.205181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.941683, 31.303295, 22.201086>,  <31.341122, 31.323343, 22.194262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941683, 31.303295, 22.201086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008734, 0.473775, 0.880603,
		-0.052220, 0.879219, -0.473548,
		-0.998598, -0.050121, 0.017061,
		30.642103, 31.288260, 22.206205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563509, 31.753422, 21.552639>,  <31.341122, 31.323343, 22.194262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563509, 31.753422, 21.552639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829664, 32.050529, 21.522823>,  <31.989357, 32.228794, 21.504934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829664, 32.050529, 21.522823>,  <31.563509, 31.753422, 21.552639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829664, 32.050529, 21.522823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158161, -0.237854, -0.958337,
		-0.729550, 0.625878, -0.275742,
		0.665388, 0.742767, -0.074537,
		32.029282, 32.273361, 21.500462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344410, 32.216106, 21.079969>,  <31.563509, 31.753422, 21.552639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344410, 32.216106, 21.079969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743093, 32.241798, 21.099766>,  <31.982304, 32.257214, 21.111643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743093, 32.241798, 21.099766>,  <31.344410, 32.216106, 21.079969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743093, 32.241798, 21.099766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072294, -0.427464, -0.901137,
		-0.036728, 0.901747, -0.430700,
		0.996707, 0.064234, 0.049491,
		32.042107, 32.261070, 21.114613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525286, 32.408588, 20.403690>,  <31.344410, 32.216106, 21.079969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525286, 32.408588, 20.403690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879581, 32.320236, 20.566994>,  <32.092159, 32.267223, 20.664976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879581, 32.320236, 20.566994>,  <31.525286, 32.408588, 20.403690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879581, 32.320236, 20.566994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344292, -0.277282, -0.896982,
		0.311331, 0.935054, -0.169551,
		0.885740, -0.220884, 0.408258,
		32.145302, 32.253971, 20.689470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008415, 32.674171, 19.878519>,  <31.525286, 32.408588, 20.403690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008415, 32.674171, 19.878519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224495, 32.415108, 20.093451>,  <32.354141, 32.259670, 20.222408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224495, 32.415108, 20.093451>,  <32.008415, 32.674171, 19.878519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224495, 32.415108, 20.093451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335723, -0.419638, -0.843323,
		0.771672, 0.635953, -0.009252,
		0.540197, -0.647663, 0.537327,
		32.386555, 32.220810, 20.254648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678066, 32.729828, 19.605074>,  <32.008415, 32.674171, 19.878519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678066, 32.729828, 19.605074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639599, 32.371391, 19.778400>,  <32.616516, 32.156326, 19.882397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639599, 32.371391, 19.778400>,  <32.678066, 32.729828, 19.605074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639599, 32.371391, 19.778400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290834, -0.441634, -0.848749,
		0.951928, 0.044398, 0.303088,
		-0.096171, -0.896096, 0.433316,
		32.610748, 32.102562, 19.908396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119102, 32.343945, 19.287821>,  <32.678066, 32.729828, 19.605074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119102, 32.343945, 19.287821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923939, 32.047611, 19.472475>,  <32.806843, 31.869810, 19.583267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923939, 32.047611, 19.472475>,  <33.119102, 32.343945, 19.287821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923939, 32.047611, 19.472475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215153, -0.614606, -0.758926,
		0.845965, -0.270962, 0.459263,
		-0.487906, -0.740837, 0.461637,
		32.777569, 31.825359, 19.610966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559639, 31.796625, 19.285513>,  <33.119102, 32.343945, 19.287821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559639, 31.796625, 19.285513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190277, 31.644045, 19.302534>,  <32.968658, 31.552496, 19.312746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190277, 31.644045, 19.302534>,  <33.559639, 31.796625, 19.285513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190277, 31.644045, 19.302534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205767, -0.585581, -0.784063,
		0.324000, -0.715254, 0.619221,
		-0.923409, -0.381452, 0.042552,
		32.913254, 31.529610, 19.315300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211758, 31.490633, 19.211428>,  <33.559639, 31.796625, 19.285513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211758, 31.490633, 19.211428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419437, 31.794609, 19.055008>,  <34.544044, 31.976994, 18.961155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419437, 31.794609, 19.055008>,  <34.211758, 31.490633, 19.211428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419437, 31.794609, 19.055008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090827, 0.504028, 0.858898,
		0.849810, -0.410425, 0.330716,
		0.519204, 0.759938, -0.391051,
		34.575199, 32.022591, 18.937693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600964, 31.655437, 19.785761>,  <34.211758, 31.490633, 19.211428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600964, 31.655437, 19.785761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591221, 31.963310, 19.530577>,  <34.585377, 32.148033, 19.377466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591221, 31.963310, 19.530577>,  <34.600964, 31.655437, 19.785761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591221, 31.963310, 19.530577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028296, 0.637365, 0.770043,
		0.999303, 0.036804, 0.006257,
		-0.024353, 0.769683, -0.637962,
		34.583916, 32.194214, 19.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067158, 32.145378, 20.045355>,  <34.600964, 31.655437, 19.785761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067158, 32.145378, 20.045355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846649, 32.364788, 19.793888>,  <34.714344, 32.496433, 19.643009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846649, 32.364788, 19.793888>,  <35.067158, 32.145378, 20.045355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846649, 32.364788, 19.793888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149991, 0.806379, 0.572062,
		0.820734, 0.221067, -0.526807,
		-0.551270, 0.548527, -0.628665,
		34.681267, 32.529346, 19.605289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537693, 32.692837, 19.960737>,  <35.067158, 32.145378, 20.045355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537693, 32.692837, 19.960737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154408, 32.769058, 19.875402>,  <34.924435, 32.814793, 19.824202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154408, 32.769058, 19.875402>,  <35.537693, 32.692837, 19.960737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154408, 32.769058, 19.875402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009966, 0.767595, 0.640858,
		0.285875, 0.611954, -0.737420,
		-0.958215, 0.190555, -0.213337,
		34.866943, 32.826225, 19.811401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492493, 33.480164, 19.917326>,  <35.537693, 32.692837, 19.960737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492493, 33.480164, 19.917326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118534, 33.347458, 19.967760>,  <34.894157, 33.267834, 19.998020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118534, 33.347458, 19.967760>,  <35.492493, 33.480164, 19.917326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118534, 33.347458, 19.967760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155953, 0.703131, 0.693747,
		-0.318813, 0.628920, -0.709096,
		-0.934899, -0.331762, 0.126085,
		34.838066, 33.247929, 20.005587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091003, 34.008892, 19.892206>,  <35.492493, 33.480164, 19.917326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091003, 34.008892, 19.892206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880489, 33.747974, 20.110394>,  <34.754181, 33.591423, 20.241306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880489, 33.747974, 20.110394>,  <35.091003, 34.008892, 19.892206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880489, 33.747974, 20.110394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111698, 0.688969, 0.716132,
		-0.842942, 0.315959, -0.435452,
		-0.526281, -0.652297, 0.545470,
		34.722607, 33.552284, 20.274035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628094, 34.424957, 20.206923>,  <35.091003, 34.008892, 19.892206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628094, 34.424957, 20.206923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585415, 34.110565, 20.450516>,  <34.559807, 33.921932, 20.596672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585415, 34.110565, 20.450516>,  <34.628094, 34.424957, 20.206923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585415, 34.110565, 20.450516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197995, 0.617006, 0.761644,
		-0.974379, -0.039311, -0.221451,
		-0.106695, -0.785976, 0.608981,
		34.553406, 33.874771, 20.633209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.588398, 27.550570, 18.433857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.275074, 27.442654, 18.657871>,  <34.087078, 27.377903, 18.792280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.275074, 27.442654, 18.657871>,  <34.588398, 27.550570, 18.433857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275074, 27.442654, 18.657871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422601, 0.429594, 0.798033,
		-0.455890, 0.861778, -0.222491,
		-0.783308, -0.269791, 0.560036,
		34.040081, 27.361717, 18.825882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526569, 28.076855, 18.950592>,  <34.588398, 27.550570, 18.433857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526569, 28.076855, 18.950592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331947, 27.773495, 19.124071>,  <34.215176, 27.591478, 19.228159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331947, 27.773495, 19.124071>,  <34.526569, 28.076855, 18.950592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331947, 27.773495, 19.124071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316940, 0.309376, 0.896569,
		-0.814134, 0.573686, 0.089839,
		-0.486555, -0.758400, 0.433697,
		34.185982, 27.545975, 19.254181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375614, 28.385641, 19.532484>,  <34.526569, 28.076855, 18.950592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375614, 28.385641, 19.532484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299198, 28.000137, 19.606964>,  <34.253349, 27.768835, 19.651651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299198, 28.000137, 19.606964>,  <34.375614, 28.385641, 19.532484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299198, 28.000137, 19.606964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214158, 0.144200, 0.966097,
		-0.957935, 0.224442, 0.178849,
		-0.191042, -0.963760, 0.186201,
		34.241886, 27.711010, 19.662825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765602, 28.294350, 20.025135>,  <34.375614, 28.385641, 19.532484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765602, 28.294350, 20.025135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021118, 27.987560, 20.049435>,  <34.174427, 27.803486, 20.064014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021118, 27.987560, 20.049435>,  <33.765602, 28.294350, 20.025135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021118, 27.987560, 20.049435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128894, 0.184527, 0.974339,
		-0.758504, -0.614571, 0.216733,
		0.638794, -0.766976, 0.060750,
		34.212757, 27.757467, 20.067659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542847, 27.817739, 20.516317>,  <33.765602, 28.294350, 20.025135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542847, 27.817739, 20.516317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.938236, 27.778797, 20.469946>,  <34.175468, 27.755432, 20.442123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.938236, 27.778797, 20.469946>,  <33.542847, 27.817739, 20.516317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938236, 27.778797, 20.469946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133045, 0.193303, 0.972076,
		-0.072227, -0.976297, 0.204028,
		0.988475, -0.097355, -0.115930,
		34.234779, 27.749590, 20.435167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749722, 27.795235, 21.117315>,  <33.542847, 27.817739, 20.516317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749722, 27.795235, 21.117315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111897, 27.817717, 20.949015>,  <34.329201, 27.831205, 20.848034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111897, 27.817717, 20.949015>,  <33.749722, 27.795235, 21.117315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111897, 27.817717, 20.949015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368681, 0.387154, 0.845095,
		0.210394, -0.920300, 0.329821,
		0.905433, 0.056204, -0.420752,
		34.383526, 27.834578, 20.822788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230465, 27.419172, 21.533108>,  <33.749722, 27.795235, 21.117315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230465, 27.419172, 21.533108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498943, 27.651564, 21.348948>,  <34.660030, 27.790998, 21.238451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498943, 27.651564, 21.348948>,  <34.230465, 27.419172, 21.533108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498943, 27.651564, 21.348948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259744, 0.397382, 0.880125,
		0.694287, -0.710319, 0.115814,
		0.671192, 0.580977, -0.460399,
		34.700302, 27.825857, 21.210829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790863, 27.439133, 21.933275>,  <34.230465, 27.419172, 21.533108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790863, 27.439133, 21.933275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.836609, 27.761883, 21.701458>,  <34.864056, 27.955534, 21.562368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.836609, 27.761883, 21.701458>,  <34.790863, 27.439133, 21.933275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836609, 27.761883, 21.701458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345333, 0.514700, 0.784748,
		0.931486, -0.289884, -0.219777,
		0.114367, 0.806878, -0.579542,
		34.870918, 28.003946, 21.527596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515858, 27.676081, 22.044050>,  <34.790863, 27.439133, 21.933275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515858, 27.676081, 22.044050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303059, 27.988668, 21.913645>,  <35.175381, 28.176222, 21.835402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303059, 27.988668, 21.913645>,  <35.515858, 27.676081, 22.044050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303059, 27.988668, 21.913645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311124, 0.538489, 0.783091,
		0.787516, 0.315171, -0.529609,
		-0.531996, 0.781471, -0.326012,
		35.143459, 28.223110, 21.815842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027962, 28.236259, 22.127279>,  <35.515858, 27.676081, 22.044050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027962, 28.236259, 22.127279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658222, 28.386969, 22.103193>,  <35.436378, 28.477394, 22.088741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658222, 28.386969, 22.103193>,  <36.027962, 28.236259, 22.127279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658222, 28.386969, 22.103193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219234, 0.653619, 0.724375,
		0.312286, 0.656371, -0.686771,
		-0.924345, 0.376775, -0.060217,
		35.380920, 28.500002, 22.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136974, 28.905130, 22.290039>,  <36.027962, 28.236259, 22.127279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136974, 28.905130, 22.290039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748188, 28.841906, 22.359655>,  <35.514915, 28.803970, 22.401424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.748188, 28.841906, 22.359655>,  <36.136974, 28.905130, 22.290039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748188, 28.841906, 22.359655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059885, 0.549409, 0.833404,
		-0.227349, 0.820467, -0.524544,
		-0.971970, -0.158061, 0.174041,
		35.456596, 28.794487, 22.411867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991741, 29.557026, 22.277031>,  <36.136974, 28.905130, 22.290039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991741, 29.557026, 22.277031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.712933, 29.340864, 22.465553>,  <35.545647, 29.211166, 22.578667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.712933, 29.340864, 22.465553>,  <35.991741, 29.557026, 22.277031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712933, 29.340864, 22.465553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081945, 0.713009, 0.696351,
		-0.712357, 0.446747, -0.541262,
		-0.697017, -0.540403, 0.471308,
		35.503826, 29.178743, 22.606945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232597, 30.221186, 22.178240>,  <35.991741, 29.557026, 22.277031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232597, 30.221186, 22.178240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.619770, 30.312748, 22.219635>,  <36.852074, 30.367685, 22.244473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.619770, 30.312748, 22.219635>,  <36.232597, 30.221186, 22.178240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619770, 30.312748, 22.219635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168334, -0.285222, -0.943564,
		-0.186470, 0.930726, -0.314608,
		0.967932, 0.228905, 0.103487,
		36.910149, 30.381420, 22.250681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383053, 30.480574, 21.505653>,  <36.232597, 30.221186, 22.178240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383053, 30.480574, 21.505653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735195, 30.385021, 21.669558>,  <36.946480, 30.327690, 21.767900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735195, 30.385021, 21.669558>,  <36.383053, 30.480574, 21.505653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735195, 30.385021, 21.669558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316439, -0.347735, -0.882580,
		0.353319, 0.906651, -0.230541,
		0.880359, -0.238880, 0.409761,
		36.999302, 30.313356, 21.792486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905315, 30.805708, 21.076998>,  <36.383053, 30.480574, 21.505653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905315, 30.805708, 21.076998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065468, 30.502323, 21.282690>,  <37.161560, 30.320292, 21.406105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.065468, 30.502323, 21.282690>,  <36.905315, 30.805708, 21.076998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065468, 30.502323, 21.282690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285940, -0.429743, -0.856481,
		0.870596, 0.489954, 0.044816,
		0.400377, -0.758463, 0.514230,
		37.185581, 30.274784, 21.436958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618176, 30.748383, 21.007957>,  <36.905315, 30.805708, 21.076998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618176, 30.748383, 21.007957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501949, 30.383236, 21.122675>,  <37.432213, 30.164148, 21.191505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501949, 30.383236, 21.122675>,  <37.618176, 30.748383, 21.007957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501949, 30.383236, 21.122675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339491, -0.378577, -0.861060,
		0.894605, -0.152831, 0.419911,
		-0.290565, -0.912865, 0.286792,
		37.414780, 30.109377, 21.208712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108269, 30.283047, 20.795416>,  <37.618176, 30.748383, 21.007957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108269, 30.283047, 20.795416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802097, 30.032808, 20.855749>,  <37.618397, 29.882666, 20.891949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.802097, 30.032808, 20.855749>,  <38.108269, 30.283047, 20.795416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802097, 30.032808, 20.855749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066107, -0.309583, -0.948572,
		0.640119, -0.716090, 0.278319,
		-0.765426, -0.625598, 0.150831,
		37.572468, 29.845129, 20.900999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179581, 29.854668, 20.223806>,  <38.108269, 30.283047, 20.795416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179581, 29.854668, 20.223806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808571, 29.748655, 20.329218>,  <37.585964, 29.685047, 20.392466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808571, 29.748655, 20.329218>,  <38.179581, 29.854668, 20.223806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808571, 29.748655, 20.329218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146074, -0.391951, -0.908315,
		0.344024, -0.880983, 0.324832,
		-0.927529, -0.265033, 0.263530,
		37.530312, 29.669146, 20.408278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087688, 29.132103, 19.971317>,  <38.179581, 29.854668, 20.223806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087688, 29.132103, 19.971317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743568, 29.332474, 20.009165>,  <37.537094, 29.452696, 20.031874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743568, 29.332474, 20.009165>,  <38.087688, 29.132103, 19.971317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743568, 29.332474, 20.009165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351210, -0.447861, -0.822236,
		-0.369500, -0.740604, 0.561226,
		-0.860303, 0.500925, 0.094622,
		37.485477, 29.482752, 20.037552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532814, 28.617828, 19.828718>,  <38.087688, 29.132103, 19.971317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532814, 28.617828, 19.828718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359459, 28.976255, 19.790270>,  <37.255447, 29.191311, 19.767200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.359459, 28.976255, 19.790270>,  <37.532814, 28.617828, 19.828718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359459, 28.976255, 19.790270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542979, -0.344755, -0.765714,
		-0.719269, -0.279658, 0.635958,
		-0.433388, 0.896067, -0.096123,
		37.229443, 29.245075, 19.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832504, 28.395700, 19.751280>,  <37.532814, 28.617828, 19.828718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832504, 28.395700, 19.751280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858624, 28.776651, 19.632139>,  <36.874294, 29.005222, 19.560656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858624, 28.776651, 19.632139>,  <36.832504, 28.395700, 19.751280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858624, 28.776651, 19.632139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494285, -0.228426, -0.838751,
		-0.866844, 0.201990, 0.455830,
		0.065296, 0.952377, -0.297850,
		36.878212, 29.062365, 19.542784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216450, 28.508286, 19.456825>,  <36.832504, 28.395700, 19.751280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216450, 28.508286, 19.456825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442394, 28.810413, 19.323906>,  <36.577961, 28.991690, 19.244154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.442394, 28.810413, 19.323906>,  <36.216450, 28.508286, 19.456825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442394, 28.810413, 19.323906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440613, -0.064404, -0.895384,
		-0.697702, 0.652184, 0.296424,
		0.564864, 0.755320, -0.332296,
		36.611855, 29.037010, 19.224216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773525, 29.058424, 19.285353>,  <36.216450, 28.508286, 19.456825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773525, 29.058424, 19.285353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111027, 29.049355, 19.070850>,  <36.313526, 29.043913, 18.942148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.111027, 29.049355, 19.070850>,  <35.773525, 29.058424, 19.285353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111027, 29.049355, 19.070850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536601, -0.058093, -0.841834,
		-0.012065, 0.998054, -0.061183,
		0.843750, -0.022674, -0.536257,
		36.364151, 29.042553, 18.909973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584068, 29.252359, 18.610172>,  <35.773525, 29.058424, 19.285353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584068, 29.252359, 18.610172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946247, 29.146830, 18.477173>,  <36.163555, 29.083511, 18.397373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946247, 29.146830, 18.477173>,  <35.584068, 29.252359, 18.610172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946247, 29.146830, 18.477173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359848, -0.061702, -0.930969,
		0.225097, 0.962595, -0.150805,
		0.905451, -0.263825, -0.332498,
		36.217884, 29.067682, 18.377424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690777, 29.656141, 18.022017>,  <35.584068, 29.252359, 18.610172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690777, 29.656141, 18.022017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935101, 29.340849, 17.992060>,  <36.081696, 29.151674, 17.974085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935101, 29.340849, 17.992060>,  <35.690777, 29.656141, 18.022017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935101, 29.340849, 17.992060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325821, -0.164017, -0.931096,
		0.721633, 0.593121, -0.357005,
		0.610807, -0.788229, -0.074891,
		36.118343, 29.104380, 17.969593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986340, 29.724762, 17.475285>,  <35.690777, 29.656141, 18.022017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986340, 29.724762, 17.475285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031086, 29.333761, 17.546810>,  <36.057934, 29.099161, 17.589725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031086, 29.333761, 17.546810>,  <35.986340, 29.724762, 17.475285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031086, 29.333761, 17.546810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168733, -0.196016, -0.965975,
		0.979293, 0.077889, -0.186864,
		0.111867, -0.977502, 0.178815,
		36.064648, 29.040510, 17.600454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290642, 30.379961, 17.330847>,  <35.986340, 29.724762, 17.475285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290642, 30.379961, 17.330847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.971104, 30.502371, 17.123693>,  <35.779381, 30.575817, 16.999401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.971104, 30.502371, 17.123693>,  <36.290642, 30.379961, 17.330847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971104, 30.502371, 17.123693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147108, 0.735398, 0.661475,
		0.583277, 0.604598, -0.542447,
		-0.798841, 0.306025, -0.517882,
		35.731453, 30.594179, 16.968328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282207, 31.131163, 17.069880>,  <36.290642, 30.379961, 17.330847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282207, 31.131163, 17.069880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897717, 31.020962, 17.074585>,  <35.667023, 30.954842, 17.077408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897717, 31.020962, 17.074585>,  <36.282207, 31.131163, 17.069880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897717, 31.020962, 17.074585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222838, 0.801197, 0.555361,
		-0.162429, 0.531207, -0.831526,
		-0.961228, -0.275503, 0.011765,
		35.609348, 30.938311, 17.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774647, 31.692621, 16.869833>,  <36.282207, 31.131163, 17.069880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774647, 31.692621, 16.869833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.579063, 31.431446, 17.101210>,  <35.461716, 31.274742, 17.240036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.579063, 31.431446, 17.101210>,  <35.774647, 31.692621, 16.869833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579063, 31.431446, 17.101210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215130, 0.732896, 0.645432,
		-0.845364, 0.191147, -0.498821,
		-0.488956, -0.652936, 0.578443,
		35.432377, 31.235565, 17.274742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131325, 32.028736, 16.982471>,  <35.774647, 31.692621, 16.869833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131325, 32.028736, 16.982471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.135143, 31.740770, 17.260071>,  <35.137436, 31.567991, 17.426630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.135143, 31.740770, 17.260071>,  <35.131325, 32.028736, 16.982471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135143, 31.740770, 17.260071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369016, 0.642507, 0.671574,
		-0.929374, -0.262507, -0.259527,
		0.009545, -0.719913, 0.693998,
		35.138008, 31.524796, 17.468271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456142, 32.014278, 17.313715>,  <35.131325, 32.028736, 16.982471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456142, 32.014278, 17.313715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692562, 31.811350, 17.564562>,  <34.834415, 31.689592, 17.715071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692562, 31.811350, 17.564562>,  <34.456142, 32.014278, 17.313715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692562, 31.811350, 17.564562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412914, 0.477574, 0.775516,
		-0.692934, -0.717317, 0.072790,
		0.591054, -0.507326, 0.627117,
		34.869877, 31.659153, 17.752697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977226, 31.643145, 17.816196>,  <34.456142, 32.014278, 17.313715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977226, 31.643145, 17.816196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.336205, 31.683500, 17.987968>,  <34.551590, 31.707714, 18.091032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.336205, 31.683500, 17.987968>,  <33.977226, 31.643145, 17.816196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336205, 31.683500, 17.987968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428819, 0.427837, 0.795656,
		-0.103455, -0.898208, 0.427224,
		0.897447, 0.100887, 0.429431,
		34.605438, 31.713766, 18.116798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849915, 31.569641, 18.572832>,  <33.977226, 31.643145, 17.816196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849915, 31.569641, 18.572832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.200489, 31.757395, 18.529884>,  <34.410835, 31.870047, 18.504116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.200489, 31.757395, 18.529884>,  <33.849915, 31.569641, 18.572832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200489, 31.757395, 18.529884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162788, 0.498702, 0.851350,
		0.453155, -0.728680, 0.513494,
		0.876442, 0.469384, -0.107369,
		34.463421, 31.898211, 18.497673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667187, 31.050650, 19.168798>,  <33.849915, 31.569641, 18.572832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667187, 31.050650, 19.168798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283398, 31.122715, 19.082125>,  <33.053123, 31.165955, 19.030121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283398, 31.122715, 19.082125>,  <33.667187, 31.050650, 19.168798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283398, 31.122715, 19.082125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025967, -0.709137, -0.704593,
		-0.280600, -0.681665, 0.675720,
		-0.959474, 0.180162, -0.216684,
		32.995556, 31.176764, 19.017118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411880, 30.386187, 19.072552>,  <33.667187, 31.050650, 19.168798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411880, 30.386187, 19.072552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163887, 30.633268, 18.879032>,  <33.015091, 30.781517, 18.762920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163887, 30.633268, 18.879032>,  <33.411880, 30.386187, 19.072552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163887, 30.633268, 18.879032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091802, -0.669482, -0.737134,
		-0.779226, -0.412596, 0.471774,
		-0.619983, 0.617704, -0.483801,
		32.977894, 30.818579, 18.733892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985428, 29.969584, 18.835642>,  <33.411880, 30.386187, 19.072552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985428, 29.969584, 18.835642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.898972, 30.294189, 18.618486>,  <32.847099, 30.488953, 18.488194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.898972, 30.294189, 18.618486>,  <32.985428, 29.969584, 18.835642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898972, 30.294189, 18.618486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112354, -0.573012, -0.811809,
		-0.969877, -0.114467, 0.215027,
		-0.216138, 0.811514, -0.542890,
		32.834129, 30.537643, 18.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352127, 29.797146, 18.596886>,  <32.985428, 29.969584, 18.835642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352127, 29.797146, 18.596886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.513657, 30.075409, 18.359234>,  <32.610577, 30.242367, 18.216642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.513657, 30.075409, 18.359234>,  <32.352127, 29.797146, 18.596886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513657, 30.075409, 18.359234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160322, -0.585572, -0.794608,
		-0.900678, 0.416135, -0.124941,
		0.403826, 0.695656, -0.594127,
		32.634804, 30.284105, 18.180996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885792, 29.867380, 18.037577>,  <32.352127, 29.797146, 18.596886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885792, 29.867380, 18.037577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236912, 30.017973, 17.919098>,  <32.447582, 30.108328, 17.848011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236912, 30.017973, 17.919098>,  <31.885792, 29.867380, 18.037577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236912, 30.017973, 17.919098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058026, -0.530207, -0.845881,
		-0.475503, 0.759700, -0.443569,
		0.877798, 0.376480, -0.296197,
		32.500252, 30.130917, 17.830238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723465, 29.956602, 17.352369>,  <31.885792, 29.867380, 18.037577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723465, 29.956602, 17.352369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122284, 29.962772, 17.382446>,  <32.361576, 29.966475, 17.400494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122284, 29.962772, 17.382446>,  <31.723465, 29.956602, 17.352369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122284, 29.962772, 17.382446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072174, -0.521869, -0.849967,
		0.026132, 0.852886, -0.521442,
		0.997050, 0.015424, 0.075194,
		32.421398, 29.967400, 17.405005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868359, 30.063871, 16.675100>,  <31.723465, 29.956602, 17.352369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868359, 30.063871, 16.675100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.183559, 29.914597, 16.870970>,  <32.372681, 29.825031, 16.988491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.183559, 29.914597, 16.870970>,  <31.868359, 30.063871, 16.675100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183559, 29.914597, 16.870970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079163, -0.727336, -0.681701,
		0.610560, 0.575947, -0.543600,
		0.788004, -0.373186, 0.489676,
		32.419960, 29.802641, 17.017872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275169, 29.847866, 16.185709>,  <31.868359, 30.063871, 16.675100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275169, 29.847866, 16.185709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455627, 29.657429, 16.487650>,  <32.563904, 29.543165, 16.668814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455627, 29.657429, 16.487650>,  <32.275169, 29.847866, 16.185709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455627, 29.657429, 16.487650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394597, -0.652238, -0.647209,
		0.800475, 0.589848, -0.106389,
		0.451146, -0.476094, 0.754852,
		32.590973, 29.514601, 16.714106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903111, 29.608200, 15.914365>,  <32.275169, 29.847866, 16.185709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903111, 29.608200, 15.914365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812958, 29.362467, 16.216833>,  <32.758865, 29.215027, 16.398314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812958, 29.362467, 16.216833>,  <32.903111, 29.608200, 15.914365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812958, 29.362467, 16.216833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080371, -0.785220, -0.613979,
		0.970949, -0.077608, 0.226352,
		-0.225386, -0.614334, 0.756171,
		32.745342, 29.178167, 16.443684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.956913, 33.694542, 30.118298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562508, 33.676243, 30.182411>,  <34.325867, 33.665264, 30.220881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562508, 33.676243, 30.182411>,  <34.956913, 33.694542, 30.118298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562508, 33.676243, 30.182411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160402, 0.001132, 0.987051,
		-0.045340, 0.998952, 0.006223,
		-0.986010, -0.045751, 0.160286,
		34.266705, 33.662518, 30.230497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646530, 33.429794, 30.726418>,  <34.956913, 33.694542, 30.118298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646530, 33.429794, 30.726418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307861, 33.601109, 30.852730>,  <34.104660, 33.703896, 30.928516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307861, 33.601109, 30.852730>,  <34.646530, 33.429794, 30.726418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307861, 33.601109, 30.852730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411900, -0.151812, -0.898494,
		-0.336872, -0.890801, 0.304945,
		-0.846673, 0.428284, 0.315780,
		34.053860, 33.729595, 30.947464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250015, 33.117100, 30.342846>,  <34.646530, 33.429794, 30.726418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250015, 33.117100, 30.342846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033585, 33.431206, 30.463243>,  <33.903725, 33.619667, 30.535482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033585, 33.431206, 30.463243>,  <34.250015, 33.117100, 30.342846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033585, 33.431206, 30.463243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520152, -0.031253, -0.853502,
		-0.660817, -0.618373, 0.425366,
		-0.541076, 0.785263, 0.300995,
		33.871262, 33.666786, 30.553543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587135, 33.099167, 30.118319>,  <34.250015, 33.117100, 30.342846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587135, 33.099167, 30.118319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618073, 33.491749, 30.188488>,  <33.636635, 33.727299, 30.230589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618073, 33.491749, 30.188488>,  <33.587135, 33.099167, 30.118319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618073, 33.491749, 30.188488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277046, 0.190176, -0.941848,
		-0.957739, 0.024244, 0.286615,
		0.077342, 0.981451, 0.175422,
		33.641273, 33.786182, 30.241114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008171, 33.460556, 29.654507>,  <33.587135, 33.099167, 30.118319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008171, 33.460556, 29.654507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266346, 33.752899, 29.743284>,  <33.421253, 33.928303, 29.796551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266346, 33.752899, 29.743284>,  <33.008171, 33.460556, 29.654507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266346, 33.752899, 29.743284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275052, 0.493477, -0.825122,
		-0.712567, 0.471522, 0.519533,
		0.645441, 0.730854, 0.221943,
		33.459980, 33.972157, 29.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586845, 33.926434, 29.501627>,  <33.008171, 33.460556, 29.654507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586845, 33.926434, 29.501627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959740, 34.068508, 29.473972>,  <33.183475, 34.153751, 29.457380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959740, 34.068508, 29.473972>,  <32.586845, 33.926434, 29.501627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959740, 34.068508, 29.473972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182862, 0.297558, -0.937028,
		-0.312247, 0.886173, 0.342344,
		0.932236, 0.355186, -0.069136,
		33.239410, 34.175064, 29.453232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457447, 34.550777, 29.258406>,  <32.586845, 33.926434, 29.501627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457447, 34.550777, 29.258406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840870, 34.493851, 29.159681>,  <33.070923, 34.459694, 29.100447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840870, 34.493851, 29.159681>,  <32.457447, 34.550777, 29.258406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840870, 34.493851, 29.159681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181460, 0.362893, -0.913992,
		0.219639, 0.920900, 0.322029,
		0.958557, -0.142313, -0.246812,
		33.128437, 34.451157, 29.085638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694374, 35.154640, 28.835464>,  <32.457447, 34.550777, 29.258406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694374, 35.154640, 28.835464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.862553, 28.750292>,  <33.109852, 34.687302, 28.699188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.862553, 28.750292>,  <32.694374, 35.154640, 28.835464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954048, 34.862553, 28.750292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060193, 0.328382, -0.942625,
		0.758241, 0.599126, 0.257136,
		0.649190, -0.730215, -0.212929,
		33.148804, 34.643490, 28.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194855, 35.458244, 28.486429>,  <32.694374, 35.154640, 28.835464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194855, 35.458244, 28.486429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257504, 35.072495, 28.401148>,  <33.295094, 34.841045, 28.349979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257504, 35.072495, 28.401148>,  <33.194855, 35.458244, 28.486429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257504, 35.072495, 28.401148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119873, 0.232833, -0.965101,
		0.980357, 0.125600, 0.152069,
		0.156623, -0.964372, -0.213203,
		33.304489, 34.783184, 28.337187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694130, 35.509716, 27.994352>,  <33.194855, 35.458244, 28.486429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694130, 35.509716, 27.994352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530701, 35.145611, 27.967535>,  <33.432644, 34.927147, 27.951445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530701, 35.145611, 27.967535>,  <33.694130, 35.509716, 27.994352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530701, 35.145611, 27.967535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005300, 0.071085, -0.997456,
		0.912712, -0.407886, -0.024219,
		-0.408570, -0.910262, -0.067042,
		33.408131, 34.872532, 27.947422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058472, 35.229469, 27.413385>,  <33.694130, 35.509716, 27.994352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058472, 35.229469, 27.413385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746487, 34.979752, 27.430897>,  <33.559296, 34.829922, 27.441404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746487, 34.979752, 27.430897>,  <34.058472, 35.229469, 27.413385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746487, 34.979752, 27.430897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037825, -0.116851, -0.992429,
		0.624683, -0.772401, 0.114753,
		-0.779962, -0.624294, 0.043779,
		33.512497, 34.792465, 27.444031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247963, 34.618622, 27.078262>,  <34.058472, 35.229469, 27.413385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247963, 34.618622, 27.078262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848099, 34.610886, 27.085260>,  <33.608181, 34.606243, 27.089458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848099, 34.610886, 27.085260>,  <34.247963, 34.618622, 27.078262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848099, 34.610886, 27.085260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016399, -0.055482, -0.998325,
		0.020282, -0.998272, 0.055146,
		-0.999660, -0.019344, 0.017496,
		33.548203, 34.605083, 27.090509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021393, 34.613739, 26.799089>,  <34.247963, 34.618622, 27.078262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021393, 34.613739, 26.799089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251030, 34.917713, 26.677166>,  <35.388813, 35.100098, 26.604012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251030, 34.917713, 26.677166>,  <35.021393, 34.613739, 26.799089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251030, 34.917713, 26.677166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288106, 0.160975, 0.943971,
		0.766425, -0.629748, -0.126527,
		0.574097, 0.759937, -0.304810,
		35.423260, 35.145695, 26.585724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705322, 34.488403, 26.991573>,  <35.021393, 34.613739, 26.799089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705322, 34.488403, 26.991573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699738, 34.884758, 26.937983>,  <35.696388, 35.122570, 26.905828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699738, 34.884758, 26.937983>,  <35.705322, 34.488403, 26.991573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699738, 34.884758, 26.937983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409541, 0.127903, 0.903282,
		0.912185, -0.042259, -0.407594,
		-0.013961, 0.990886, -0.133978,
		35.695549, 35.182022, 26.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325012, 34.634335, 27.280268>,  <35.705322, 34.488403, 26.991573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325012, 34.634335, 27.280268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131657, 34.984032, 27.262243>,  <36.015644, 35.193851, 27.251429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.131657, 34.984032, 27.262243>,  <36.325012, 34.634335, 27.280268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131657, 34.984032, 27.262243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361512, 0.246240, 0.899264,
		0.797271, 0.418407, -0.435080,
		-0.483392, 0.874243, -0.045061,
		35.986637, 35.246304, 27.248726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802120, 35.170086, 27.604490>,  <36.325012, 34.634335, 27.280268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802120, 35.170086, 27.604490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437157, 35.330788, 27.635727>,  <36.218178, 35.427208, 27.654469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437157, 35.330788, 27.635727>,  <36.802120, 35.170086, 27.604490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437157, 35.330788, 27.635727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206151, 0.286305, 0.935698,
		0.353559, 0.869842, -0.344050,
		-0.912413, 0.401751, 0.078094,
		36.163433, 35.451313, 27.659155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978905, 35.792603, 27.876944>,  <36.802120, 35.170086, 27.604490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978905, 35.792603, 27.876944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591507, 35.730423, 27.954777>,  <36.359070, 35.693115, 28.001476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591507, 35.730423, 27.954777>,  <36.978905, 35.792603, 27.876944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591507, 35.730423, 27.954777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156668, 0.227095, 0.961188,
		-0.193603, 0.961386, -0.195585,
		-0.968490, -0.155447, 0.194585,
		36.300961, 35.683788, 28.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852474, 36.430058, 28.370697>,  <36.978905, 35.792603, 27.876944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852474, 36.430058, 28.370697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519157, 36.211060, 28.401377>,  <36.319168, 36.079662, 28.419785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519157, 36.211060, 28.401377>,  <36.852474, 36.430058, 28.370697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519157, 36.211060, 28.401377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031377, 0.185354, 0.982171,
		-0.551948, 0.816024, -0.171632,
		-0.833288, -0.547493, 0.076701,
		36.269173, 36.046810, 28.424387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410000, 36.729053, 28.865261>,  <36.852474, 36.430058, 28.370697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410000, 36.729053, 28.865261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299446, 36.345169, 28.885509>,  <36.233116, 36.114838, 28.897657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299446, 36.345169, 28.885509>,  <36.410000, 36.729053, 28.865261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299446, 36.345169, 28.885509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061969, 0.070357, 0.995595,
		-0.959048, 0.272029, -0.078918,
		-0.276383, -0.959714, 0.050619,
		36.216530, 36.057255, 28.900696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966282, 36.778072, 29.489574>,  <36.410000, 36.729053, 28.865261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966282, 36.778072, 29.489574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007111, 36.395573, 29.379902>,  <36.031609, 36.166073, 29.314098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007111, 36.395573, 29.379902>,  <35.966282, 36.778072, 29.489574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007111, 36.395573, 29.379902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011842, -0.276768, 0.960864,
		-0.994707, -0.094827, -0.039573,
		0.102069, -0.956246, -0.274180,
		36.037731, 36.108700, 29.297647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465576, 36.372978, 29.742876>,  <35.966282, 36.778072, 29.489574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465576, 36.372978, 29.742876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767292, 36.112976, 29.705914>,  <35.948322, 35.956974, 29.683737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767292, 36.112976, 29.705914>,  <35.465576, 36.372978, 29.742876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767292, 36.112976, 29.705914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114909, -0.269278, 0.956183,
		-0.646403, -0.710625, -0.277805,
		0.754294, -0.650002, -0.092405,
		35.993580, 35.917976, 29.678192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223244, 35.652718, 30.012268>,  <35.465576, 36.372978, 29.742876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223244, 35.652718, 30.012268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623219, 35.656425, 30.014629>,  <35.863205, 35.658649, 30.016047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623219, 35.656425, 30.014629>,  <35.223244, 35.652718, 30.012268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623219, 35.656425, 30.014629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003037, -0.283200, 0.959056,
		0.010560, -0.959016, -0.283155,
		0.999940, 0.009268, 0.005903,
		35.923199, 35.659206, 30.016399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439938, 34.932972, 30.184940>,  <35.223244, 35.652718, 30.012268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439938, 34.932972, 30.184940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778221, 35.119617, 30.288511>,  <35.981194, 35.231606, 30.350655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778221, 35.119617, 30.288511>,  <35.439938, 34.932972, 30.184940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778221, 35.119617, 30.288511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023519, -0.452148, 0.891633,
		0.533122, -0.760154, -0.371413,
		0.845711, 0.466614, 0.258928,
		36.031933, 35.259602, 30.366190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952026, 34.383381, 30.521288>,  <35.439938, 34.932972, 30.184940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952026, 34.383381, 30.521288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050465, 34.753609, 30.636354>,  <36.109528, 34.975746, 30.705395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050465, 34.753609, 30.636354>,  <35.952026, 34.383381, 30.521288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050465, 34.753609, 30.636354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049361, -0.284440, 0.957422,
		0.967989, -0.249813, -0.024311,
		0.246092, 0.925574, 0.287666,
		36.124290, 35.031281, 30.722654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610363, 34.324104, 30.828478>,  <35.952026, 34.383381, 30.521288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610363, 34.324104, 30.828478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430939, 34.646709, 30.982527>,  <36.323284, 34.840275, 31.074957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430939, 34.646709, 30.982527>,  <36.610363, 34.324104, 30.828478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430939, 34.646709, 30.982527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051971, -0.406641, 0.912109,
		0.892238, 0.429156, 0.140489,
		-0.448565, 0.806517, 0.385124,
		36.296368, 34.888664, 31.098064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046898, 34.657082, 31.363138>,  <36.610363, 34.324104, 30.828478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046898, 34.657082, 31.363138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675327, 34.782307, 31.442213>,  <36.452385, 34.857441, 31.489658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675327, 34.782307, 31.442213>,  <37.046898, 34.657082, 31.363138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675327, 34.782307, 31.442213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016183, -0.499086, 0.866401,
		0.369902, 0.808025, 0.458549,
		-0.928930, 0.313063, 0.197689,
		36.396648, 34.876225, 31.501520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287895, 34.277321, 31.988705>,  <37.046898, 34.657082, 31.363138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287895, 34.277321, 31.988705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462967, 33.972870, 32.180172>,  <37.568012, 33.790199, 32.295052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462967, 33.972870, 32.180172>,  <37.287895, 34.277321, 31.988705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462967, 33.972870, 32.180172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532772, -0.209307, -0.819966,
		0.724285, 0.613907, 0.313895,
		0.437683, -0.761123, 0.478670,
		37.594273, 33.744534, 32.323772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036976, 34.417252, 32.040302>,  <37.287895, 34.277321, 31.988705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036976, 34.417252, 32.040302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966682, 34.023739, 32.054688>,  <37.924507, 33.787632, 32.063316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966682, 34.023739, 32.054688>,  <38.036976, 34.417252, 32.040302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966682, 34.023739, 32.054688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498442, -0.120418, -0.858519,
		0.848926, -0.132944, 0.511519,
		-0.175731, -0.983781, 0.035961,
		37.913963, 33.728603, 32.065475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626648, 34.051826, 31.807653>,  <38.036976, 34.417252, 32.040302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626648, 34.051826, 31.807653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301598, 33.826351, 31.748480>,  <38.106567, 33.691067, 31.712975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301598, 33.826351, 31.748480>,  <38.626648, 34.051826, 31.807653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301598, 33.826351, 31.748480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350642, -0.270162, -0.896696,
		0.465493, -0.780554, 0.417195,
		-0.812629, -0.563691, -0.147936,
		38.057808, 33.657246, 31.704100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891190, 33.404667, 31.621973>,  <38.626648, 34.051826, 31.807653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891190, 33.404667, 31.621973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520515, 33.471001, 31.487064>,  <38.298111, 33.510799, 31.406118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520515, 33.471001, 31.487064>,  <38.891190, 33.404667, 31.621973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520515, 33.471001, 31.487064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282338, -0.285159, -0.915953,
		-0.248066, -0.944026, 0.217434,
		-0.926687, 0.165827, -0.337273,
		38.242508, 33.520748, 31.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717323, 32.915550, 31.140514>,  <38.891190, 33.404667, 31.621973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717323, 32.915550, 31.140514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453083, 33.194103, 31.028336>,  <38.294537, 33.361237, 30.961027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453083, 33.194103, 31.028336>,  <38.717323, 32.915550, 31.140514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453083, 33.194103, 31.028336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043532, -0.337404, -0.940353,
		-0.749472, -0.633408, 0.192575,
		-0.660603, 0.696385, -0.280449,
		38.254902, 33.403019, 30.944201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355118, 32.563145, 30.747787>,  <38.717323, 32.915550, 31.140514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355118, 32.563145, 30.747787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244045, 32.932854, 30.643005>,  <38.177402, 33.154678, 30.580137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244045, 32.932854, 30.643005>,  <38.355118, 32.563145, 30.747787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244045, 32.932854, 30.643005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234656, -0.329675, -0.914468,
		-0.931574, -0.192463, 0.308430,
		-0.277683, 0.924269, -0.261954,
		38.160740, 33.210133, 30.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790108, 32.486401, 30.310448>,  <38.355118, 32.563145, 30.747787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790108, 32.486401, 30.310448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909451, 32.861572, 30.239723>,  <37.981056, 33.086678, 30.197289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909451, 32.861572, 30.239723>,  <37.790108, 32.486401, 30.310448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909451, 32.861572, 30.239723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145686, -0.138325, -0.979613,
		-0.943270, 0.318035, 0.095374,
		0.298359, 0.937934, -0.176811,
		37.998959, 33.142952, 30.186680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245388, 32.861790, 29.890373>,  <37.790108, 32.486401, 30.310448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245388, 32.861790, 29.890373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560833, 33.104443, 29.850182>,  <37.750099, 33.250034, 29.826067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560833, 33.104443, 29.850182>,  <37.245388, 32.861790, 29.890373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560833, 33.104443, 29.850182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001282, -0.161787, -0.986825,
		-0.614891, 0.778350, -0.126809,
		0.788611, 0.606627, -0.100479,
		37.797417, 33.286430, 29.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026638, 33.435059, 29.445278>,  <37.245388, 32.861790, 29.890373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026638, 33.435059, 29.445278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.423672, 33.387939, 29.433245>,  <37.661892, 33.359669, 29.426025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.423672, 33.387939, 29.433245>,  <37.026638, 33.435059, 29.445278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423672, 33.387939, 29.433245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040865, -0.090218, -0.995083,
		0.114505, 0.988931, -0.094362,
		0.992582, -0.117799, -0.030082,
		37.721447, 33.352600, 29.424219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196785, 33.885777, 28.960039>,  <37.026638, 33.435059, 29.445278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196785, 33.885777, 28.960039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517845, 33.648586, 28.985765>,  <37.710480, 33.506271, 29.001202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517845, 33.648586, 28.985765>,  <37.196785, 33.885777, 28.960039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517845, 33.648586, 28.985765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034740, -0.154124, -0.987441,
		0.595439, 0.790334, -0.144308,
		0.802649, -0.592974, 0.064315,
		37.758640, 33.470695, 29.005060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653374, 34.122734, 28.484047>,  <37.196785, 33.885777, 28.960039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653374, 34.122734, 28.484047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759464, 33.740421, 28.534851>,  <37.823116, 33.511032, 28.565334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.759464, 33.740421, 28.534851>,  <37.653374, 34.122734, 28.484047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759464, 33.740421, 28.534851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017794, -0.126855, -0.991762,
		0.964023, 0.265297, -0.016637,
		0.265222, -0.955785, 0.127012,
		37.839031, 33.453686, 28.572954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115402, 34.002056, 27.936153>,  <37.653374, 34.122734, 28.484047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115402, 34.002056, 27.936153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001179, 33.637295, 28.054064>,  <37.932644, 33.418438, 28.124809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001179, 33.637295, 28.054064>,  <38.115402, 34.002056, 27.936153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001179, 33.637295, 28.054064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077851, -0.328639, -0.941242,
		0.955193, -0.245834, 0.164839,
		-0.285561, -0.911901, 0.294775,
		37.915512, 33.363724, 28.142496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618862, 33.452534, 27.776154>,  <38.115402, 34.002056, 27.936153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618862, 33.452534, 27.776154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271385, 33.255760, 27.799366>,  <38.062901, 33.137695, 27.813293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271385, 33.255760, 27.799366>,  <38.618862, 33.452534, 27.776154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271385, 33.255760, 27.799366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119679, -0.322117, -0.939104,
		0.480675, -0.808849, 0.338696,
		-0.868694, -0.491939, 0.058031,
		38.010777, 33.108177, 27.816776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732735, 32.879368, 27.518373>,  <38.618862, 33.452534, 27.776154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732735, 32.879368, 27.518373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335976, 32.855633, 27.473440>,  <38.097919, 32.841393, 27.446480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335976, 32.855633, 27.473440>,  <38.732735, 32.879368, 27.518373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335976, 32.855633, 27.473440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126598, -0.387918, -0.912958,
		0.010594, -0.919782, 0.392287,
		-0.991897, -0.059334, -0.112333,
		38.038406, 32.837833, 27.439741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581982, 32.128292, 27.315275>,  <38.732735, 32.879368, 27.518373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581982, 32.128292, 27.315275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265102, 32.347023, 27.206902>,  <38.074974, 32.478260, 27.141878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265102, 32.347023, 27.206902>,  <38.581982, 32.128292, 27.315275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265102, 32.347023, 27.206902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032421, -0.405621, -0.913466,
		-0.609403, -0.732429, 0.303603,
		-0.792197, 0.546826, -0.270933,
		38.027443, 32.511070, 27.125622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362919, 31.784916, 26.844013>,  <38.581982, 32.128292, 27.315275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362919, 31.784916, 26.844013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.138477, 32.110077, 26.781590>,  <38.003811, 32.305172, 26.744135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.138477, 32.110077, 26.781590>,  <38.362919, 31.784916, 26.844013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138477, 32.110077, 26.781590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256128, -0.349791, -0.901135,
		-0.787121, -0.465660, 0.404476,
		-0.561105, 0.812900, -0.156059,
		37.970146, 32.353947, 26.734772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647804, 31.569769, 26.679504>,  <38.362919, 31.784916, 26.844013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647804, 31.569769, 26.679504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694214, 31.939913, 26.535145>,  <37.722057, 32.161999, 26.448528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694214, 31.939913, 26.535145>,  <37.647804, 31.569769, 26.679504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694214, 31.939913, 26.535145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192787, -0.335463, -0.922116,
		-0.974357, 0.176562, 0.139476,
		0.116021, 0.925360, -0.360899,
		37.729019, 32.217522, 26.426874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088276, 31.806253, 26.185505>,  <37.647804, 31.569769, 26.679504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088276, 31.806253, 26.185505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416103, 32.019543, 26.101614>,  <37.612801, 32.147518, 26.051279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416103, 32.019543, 26.101614>,  <37.088276, 31.806253, 26.185505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416103, 32.019543, 26.101614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138889, -0.170235, -0.975566,
		-0.555898, 0.828669, -0.065460,
		0.819565, 0.533223, -0.209727,
		37.661972, 32.179508, 26.038696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879971, 32.122154, 25.587126>,  <37.088276, 31.806253, 26.185505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879971, 32.122154, 25.587126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278091, 32.159908, 25.595671>,  <37.516964, 32.182560, 25.600798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278091, 32.159908, 25.595671>,  <36.879971, 32.122154, 25.587126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278091, 32.159908, 25.595671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041447, -0.216306, -0.975445,
		-0.087447, 0.971752, -0.219203,
		0.995307, 0.094385, 0.021361,
		37.576683, 32.188225, 25.602079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041660, 32.561134, 25.039425>,  <36.879971, 32.122154, 25.587126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041660, 32.561134, 25.039425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382164, 32.367142, 25.119581>,  <37.586464, 32.250748, 25.167675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382164, 32.367142, 25.119581>,  <37.041660, 32.561134, 25.039425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382164, 32.367142, 25.119581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003599, -0.376477, -0.926419,
		0.524738, 0.789341, -0.318733,
		0.851256, -0.484980, 0.200392,
		37.637543, 32.221649, 25.179699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632969, 32.780567, 24.572561>,  <37.041660, 32.561134, 25.039425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632969, 32.780567, 24.572561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713390, 32.416271, 24.716858>,  <37.761642, 32.197693, 24.803436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713390, 32.416271, 24.716858>,  <37.632969, 32.780567, 24.572561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713390, 32.416271, 24.716858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015911, -0.365174, -0.930803,
		0.979452, 0.192877, -0.058927,
		0.201049, -0.910739, 0.360739,
		37.773705, 32.143051, 24.825079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865059, 32.573105, 24.032541>,  <37.632969, 32.780567, 24.572561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865059, 32.573105, 24.032541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828163, 32.232086, 24.238317>,  <37.806026, 32.027473, 24.361784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828163, 32.232086, 24.238317>,  <37.865059, 32.573105, 24.032541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828163, 32.232086, 24.238317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161651, -0.496971, -0.852578,
		0.982528, -0.161799, -0.091976,
		-0.092237, -0.852550, 0.514443,
		37.800491, 31.976322, 24.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311901, 32.072227, 23.721455>,  <37.865059, 32.573105, 24.032541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311901, 32.072227, 23.721455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043690, 31.842945, 23.909851>,  <37.882763, 31.705376, 24.022890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043690, 31.842945, 23.909851>,  <38.311901, 32.072227, 23.721455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043690, 31.842945, 23.909851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125972, -0.537672, -0.833691,
		0.731115, -0.618341, 0.288314,
		-0.670524, -0.573204, 0.470993,
		37.842533, 31.670984, 24.051149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532837, 31.326172, 23.584864>,  <38.311901, 32.072227, 23.721455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532837, 31.326172, 23.584864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151039, 31.325277, 23.704157>,  <37.921963, 31.324741, 23.775732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151039, 31.325277, 23.704157>,  <38.532837, 31.326172, 23.584864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151039, 31.325277, 23.704157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232570, -0.620422, -0.748991,
		0.186703, -0.784265, 0.591667,
		-0.954491, -0.002234, 0.298231,
		37.864693, 31.324608, 23.793627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288536, 30.681000, 23.388258>,  <38.532837, 31.326172, 23.584864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288536, 30.681000, 23.388258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947765, 30.885290, 23.434528>,  <37.743301, 31.007864, 23.462290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947765, 30.885290, 23.434528>,  <38.288536, 30.681000, 23.388258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947765, 30.885290, 23.434528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438723, -0.575506, -0.690156,
		-0.285908, -0.638711, 0.714356,
		-0.851926, 0.510726, 0.115676,
		37.692188, 31.038507, 23.469231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697163, 30.184969, 23.499170>,  <38.288536, 30.681000, 23.388258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697163, 30.184969, 23.499170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552574, 30.531097, 23.360287>,  <37.465820, 30.738775, 23.276957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552574, 30.531097, 23.360287>,  <37.697163, 30.184969, 23.499170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552574, 30.531097, 23.360287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521122, -0.496296, -0.694351,
		-0.773155, -0.070054, 0.630337,
		-0.361475, 0.865323, -0.347207,
		37.444130, 30.790693, 23.256124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001709, 30.036419, 23.361387>,  <37.697163, 30.184969, 23.499170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001709, 30.036419, 23.361387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096741, 30.365629, 23.155014>,  <37.153759, 30.563156, 23.031191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096741, 30.365629, 23.155014>,  <37.001709, 30.036419, 23.361387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096741, 30.365629, 23.155014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396881, -0.402539, -0.824893,
		-0.886590, 0.400739, 0.231009,
		0.237577, 0.823025, -0.515933,
		37.168015, 30.612537, 23.000235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499241, 29.986866, 22.989134>,  <37.001709, 30.036419, 23.361387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499241, 29.986866, 22.989134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782997, 30.223537, 22.835939>,  <36.953251, 30.365541, 22.744022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782997, 30.223537, 22.835939>,  <36.499241, 29.986866, 22.989134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782997, 30.223537, 22.835939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364961, -0.156498, -0.917776,
		-0.602966, 0.790837, 0.104922,
		0.709391, 0.591680, -0.382987,
		36.995815, 30.401041, 22.721043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783535, 30.065250, 22.845520>,  <36.499241, 29.986866, 22.989134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783535, 30.065250, 22.845520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587475, 29.725695, 22.924654>,  <35.469837, 29.521961, 22.972134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587475, 29.725695, 22.924654>,  <35.783535, 30.065250, 22.845520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587475, 29.725695, 22.924654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022477, 0.239202, 0.970710,
		-0.871347, 0.471348, -0.136326,
		-0.490152, -0.848890, 0.197833,
		35.440430, 29.471027, 22.984005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111488, 30.203865, 23.249413>,  <35.783535, 30.065250, 22.845520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111488, 30.203865, 23.249413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272961, 29.848610, 23.337275>,  <35.369846, 29.635456, 23.389992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272961, 29.848610, 23.337275>,  <35.111488, 30.203865, 23.249413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272961, 29.848610, 23.337275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064249, 0.267014, 0.961549,
		-0.912640, -0.374048, 0.164851,
		0.403683, -0.888139, 0.219655,
		35.394066, 29.582169, 23.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621017, 29.981779, 23.643564>,  <35.111488, 30.203865, 23.249413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621017, 29.981779, 23.643564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942974, 29.756060, 23.717016>,  <35.136147, 29.620628, 23.761087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942974, 29.756060, 23.717016>,  <34.621017, 29.981779, 23.643564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942974, 29.756060, 23.717016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136901, 0.124525, 0.982727,
		-0.577418, -0.816125, 0.022976,
		0.804889, -0.564299, 0.183632,
		35.184441, 29.586771, 23.772106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430153, 29.535206, 24.186983>,  <34.621017, 29.981779, 23.643564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430153, 29.535206, 24.186983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829960, 29.545057, 24.179453>,  <35.069843, 29.550968, 24.174934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829960, 29.545057, 24.179453>,  <34.430153, 29.535206, 24.186983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829960, 29.545057, 24.179453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019141, -0.012561, 0.999738,
		0.024393, -0.999618, -0.013026,
		0.999519, 0.024636, -0.018827,
		35.129814, 29.552446, 24.173805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589428, 29.067871, 24.724323>,  <34.430153, 29.535206, 24.186983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589428, 29.067871, 24.724323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922268, 29.277643, 24.652124>,  <35.121971, 29.403507, 24.608805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922268, 29.277643, 24.652124>,  <34.589428, 29.067871, 24.724323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922268, 29.277643, 24.652124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083666, 0.203025, 0.975592,
		0.548276, -0.826894, 0.125061,
		0.832102, 0.524431, -0.180497,
		35.171898, 29.434973, 24.597975>
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
