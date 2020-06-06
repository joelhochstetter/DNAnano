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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.477362, 17.238937, -2.094154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719353, 17.104233, -2.382762>,  <22.864548, 17.023409, -2.555927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719353, 17.104233, -2.382762>,  <22.477362, 17.238937, -2.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719353, 17.104233, -2.382762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511799, 0.858637, 0.028371,
		0.609970, -0.386437, 0.691811,
		0.604978, -0.336763, -0.721520,
		22.900846, 17.003204, -2.599218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.775846, 17.951038, -2.054901>,  <22.477362, 17.238937, -2.094154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.775846, 17.951038, -2.054901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.014996, 17.838348, -2.355083>,  <23.158485, 17.770735, -2.535191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.014996, 17.838348, -2.355083>,  <22.775846, 17.951038, -2.054901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.014996, 17.838348, -2.355083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201457, 0.958965, -0.199501,
		0.775862, -0.031907, 0.630095,
		0.597874, -0.281723, -0.750453,
		23.194357, 17.753832, -2.580218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.452759, 18.320303, -1.947871>,  <22.775846, 17.951038, -2.054901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.452759, 18.320303, -1.947871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.368053, 18.231514, -2.328583>,  <23.317230, 18.178240, -2.557010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.368053, 18.231514, -2.328583>,  <23.452759, 18.320303, -1.947871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.368053, 18.231514, -2.328583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026780, 0.974818, -0.221388,
		0.976956, -0.021391, -0.212364,
		-0.211752, -0.221973, -0.951782,
		23.304525, 18.164923, -2.614117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150595, 18.554831, -2.095051>,  <23.452759, 18.320303, -1.947871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150595, 18.554831, -2.095051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.825981, 18.725136, -2.255121>,  <23.631212, 18.827318, -2.351162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.825981, 18.725136, -2.255121>,  <24.150595, 18.554831, -2.095051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.825981, 18.725136, -2.255121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419009, 0.053278, 0.906417,
		0.407239, 0.903265, 0.135162,
		-0.811534, 0.425762, -0.400173,
		23.582521, 18.852865, -2.375173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910280, 19.312675, -1.793932>,  <24.150595, 18.554831, -2.095051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910280, 19.312675, -1.793932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.607857, 19.087559, -1.927584>,  <23.426403, 18.952490, -2.007776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.607857, 19.087559, -1.927584>,  <23.910280, 19.312675, -1.793932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.607857, 19.087559, -1.927584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347912, -0.086832, 0.933497,
		-0.554376, 0.822027, -0.130151,
		-0.756059, -0.562790, -0.334131,
		23.381039, 18.918722, -2.027823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262627, 19.674751, -1.597468>,  <23.910280, 19.312675, -1.793932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262627, 19.674751, -1.597468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216473, 19.279346, -1.636521>,  <23.188780, 19.042103, -1.659952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216473, 19.279346, -1.636521>,  <23.262627, 19.674751, -1.597468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216473, 19.279346, -1.636521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281334, -0.061741, 0.957622,
		-0.952648, 0.137963, -0.270978,
		-0.115385, -0.988511, -0.097631,
		23.181856, 18.982794, -1.665810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.605267, 19.535475, -1.288746>,  <23.262627, 19.674751, -1.597468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.605267, 19.535475, -1.288746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875748, 19.240818, -1.284653>,  <23.038036, 19.064024, -1.282198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875748, 19.240818, -1.284653>,  <22.605267, 19.535475, -1.288746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875748, 19.240818, -1.284653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193365, -0.164067, 0.967312,
		-0.710885, -0.656079, -0.253384,
		0.676205, -0.736643, 0.010230,
		23.078609, 19.019825, -1.281584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275759, 18.920437, -1.151645>,  <22.605267, 19.535475, -1.288746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275759, 18.920437, -1.151645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.654453, 18.905685, -1.023687>,  <22.881670, 18.896835, -0.946913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.654453, 18.905685, -1.023687>,  <22.275759, 18.920437, -1.151645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.654453, 18.905685, -1.023687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312840, -0.340769, 0.886571,
		0.076316, -0.939423, -0.334155,
		0.946735, -0.036877, 0.319895,
		22.938475, 18.894623, -0.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.351780, 18.212265, -0.853817>,  <22.275759, 18.920437, -1.151645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.351780, 18.212265, -0.853817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568726, 18.505669, -0.689961>,  <22.698893, 18.681711, -0.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568726, 18.505669, -0.689961>,  <22.351780, 18.212265, -0.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568726, 18.505669, -0.689961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273558, -0.306826, 0.911605,
		0.794360, -0.606481, 0.034247,
		0.542363, 0.733511, 0.409638,
		22.731434, 18.725721, -0.567070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.851822, 18.000093, -0.431136>,  <22.351780, 18.212265, -0.853817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.851822, 18.000093, -0.431136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751163, 18.358814, -0.285576>,  <22.690767, 18.574047, -0.198240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751163, 18.358814, -0.285576>,  <22.851822, 18.000093, -0.431136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751163, 18.358814, -0.285576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150947, -0.407767, 0.900522,
		0.955975, 0.171685, 0.237983,
		-0.251648, 0.896800, 0.363900,
		22.675669, 18.627853, -0.176406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052668, 18.076454, 0.317057>,  <22.851822, 18.000093, -0.431136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052668, 18.076454, 0.317057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780022, 18.358810, 0.239992>,  <22.616434, 18.528225, 0.193752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780022, 18.358810, 0.239992>,  <23.052668, 18.076454, 0.317057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.780022, 18.358810, 0.239992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395496, -0.133888, 0.908657,
		0.615618, 0.695551, 0.370437,
		-0.681614, 0.705892, -0.192664,
		22.575537, 18.570578, 0.182192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.952238, 18.669434, 0.853777>,  <23.052668, 18.076454, 0.317057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.952238, 18.669434, 0.853777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.606216, 18.611088, 0.661776>,  <22.398603, 18.576080, 0.546576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.606216, 18.611088, 0.661776>,  <22.952238, 18.669434, 0.853777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.606216, 18.611088, 0.661776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495622, 0.100280, 0.862730,
		-0.077707, 0.984209, -0.159041,
		-0.865056, -0.145864, -0.480003,
		22.346701, 18.567329, 0.517775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514652, 19.258495, 1.017361>,  <22.952238, 18.669434, 0.853777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514652, 19.258495, 1.017361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288849, 18.932049, 0.967901>,  <22.153366, 18.736181, 0.938226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288849, 18.932049, 0.967901>,  <22.514652, 19.258495, 1.017361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.288849, 18.932049, 0.967901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527506, 0.241471, 0.814512,
		-0.634877, 0.525023, -0.566817,
		-0.564508, -0.816114, -0.123648,
		22.119497, 18.687214, 0.930807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827969, 19.410404, 1.217806>,  <22.514652, 19.258495, 1.017361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827969, 19.410404, 1.217806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.898788, 19.022942, 1.287501>,  <21.941280, 18.790464, 1.329317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.898788, 19.022942, 1.287501>,  <21.827969, 19.410404, 1.217806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.898788, 19.022942, 1.287501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467397, 0.073042, 0.881025,
		-0.866137, -0.237424, -0.439815,
		0.177051, -0.968656, 0.174236,
		21.951904, 18.732346, 1.339772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.135462, 19.094801, 1.535711>,  <21.827969, 19.410404, 1.217806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.135462, 19.094801, 1.535711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465740, 18.896763, 1.643862>,  <21.663908, 18.777939, 1.708753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.465740, 18.896763, 1.643862>,  <21.135462, 19.094801, 1.535711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465740, 18.896763, 1.643862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288346, 0.041537, 0.956625,
		-0.484853, -0.867844, -0.108462,
		0.825696, -0.495097, 0.270378,
		21.713449, 18.748234, 1.724976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088274, 18.497454, 1.955693>,  <21.135462, 19.094801, 1.535711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088274, 18.497454, 1.955693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.428432, 18.620136, 2.126695>,  <21.632526, 18.693745, 2.229296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.428432, 18.620136, 2.126695>,  <21.088274, 18.497454, 1.955693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.428432, 18.620136, 2.126695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502080, 0.230122, 0.833642,
		0.157304, -0.923567, 0.349685,
		0.850395, 0.306705, 0.427505,
		21.683552, 18.712149, 2.254946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.086388, 18.193489, 2.612604>,  <21.088274, 18.497454, 1.955693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.086388, 18.193489, 2.612604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335106, 18.506359, 2.596721>,  <21.484337, 18.694080, 2.587191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335106, 18.506359, 2.596721>,  <21.086388, 18.193489, 2.612604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335106, 18.506359, 2.596721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425324, 0.379819, 0.821485,
		0.657625, -0.493906, 0.568846,
		0.621794, 0.782173, -0.039708,
		21.521645, 18.741011, 2.584808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502260, 18.164625, 3.188975>,  <21.086388, 18.193489, 2.612604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502260, 18.164625, 3.188975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424122, 18.525913, 3.036119>,  <21.377239, 18.742687, 2.944406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424122, 18.525913, 3.036119>,  <21.502260, 18.164625, 3.188975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424122, 18.525913, 3.036119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450502, 0.263465, 0.853015,
		0.871142, 0.338787, 0.355436,
		-0.195346, 0.903222, -0.382139,
		21.365519, 18.796881, 2.921478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741461, 18.727667, 3.648554>,  <21.502260, 18.164625, 3.188975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741461, 18.727667, 3.648554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424854, 18.877586, 3.455464>,  <21.234890, 18.967539, 3.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424854, 18.877586, 3.455464>,  <21.741461, 18.727667, 3.648554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424854, 18.877586, 3.455464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424398, 0.231268, 0.875444,
		0.439756, 0.897797, -0.023989,
		-0.791518, 0.374801, -0.482724,
		21.187399, 18.990026, 3.310647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777887, 19.455873, 3.791552>,  <21.741461, 18.727667, 3.648554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777887, 19.455873, 3.791552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426777, 19.280811, 3.713614>,  <21.216110, 19.175774, 3.666852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426777, 19.280811, 3.713614>,  <21.777887, 19.455873, 3.791552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426777, 19.280811, 3.713614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408172, 0.470307, 0.782437,
		-0.250800, 0.766336, -0.591463,
		-0.877778, -0.437654, -0.194844,
		21.163443, 19.149515, 3.655161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288218, 19.899931, 3.981967>,  <21.777887, 19.455873, 3.791552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288218, 19.899931, 3.981967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081253, 19.557636, 3.981746>,  <20.957073, 19.352261, 3.981613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081253, 19.557636, 3.981746>,  <21.288218, 19.899931, 3.981967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081253, 19.557636, 3.981746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585467, 0.353525, 0.729553,
		-0.624109, 0.377804, -0.683924,
		-0.517413, -0.855736, -0.000554,
		20.926029, 19.300915, 3.981580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545357, 20.107723, 3.734618>,  <21.288218, 19.899931, 3.981967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545357, 20.107723, 3.734618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606731, 19.782917, 3.959860>,  <20.643557, 19.588034, 4.095006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606731, 19.782917, 3.959860>,  <20.545357, 20.107723, 3.734618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606731, 19.782917, 3.959860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543448, 0.406595, 0.734401,
		-0.825301, -0.418702, -0.378902,
		0.153436, -0.812015, 0.563106,
		20.652761, 19.539312, 4.128792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919617, 19.978403, 4.077407>,  <20.545357, 20.107723, 3.734618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919617, 19.978403, 4.077407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209225, 19.803982, 4.291194>,  <20.382990, 19.699329, 4.419466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209225, 19.803982, 4.291194>,  <19.919617, 19.978403, 4.077407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209225, 19.803982, 4.291194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501163, 0.199857, 0.841958,
		-0.473955, -0.877448, -0.073833,
		0.724018, -0.436052, 0.534468,
		20.426430, 19.673166, 4.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184847, 19.961327, 4.835220>,  <19.919617, 19.978403, 4.077407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184847, 19.961327, 4.835220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393078, 19.654957, 4.986142>,  <20.518017, 19.471134, 5.076695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393078, 19.654957, 4.986142>,  <20.184847, 19.961327, 4.835220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393078, 19.654957, 4.986142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207793, 0.314967, 0.926077,
		-0.828143, -0.560497, 0.004811,
		0.520578, -0.765924, 0.377304,
		20.549252, 19.425180, 5.099333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756447, 19.480368, 5.252395>,  <20.184847, 19.961327, 4.835220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756447, 19.480368, 5.252395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.135494, 19.552242, 5.358019>,  <20.362923, 19.595367, 5.421393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.135494, 19.552242, 5.358019>,  <19.756447, 19.480368, 5.252395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.135494, 19.552242, 5.358019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307563, 0.290404, 0.906129,
		0.086135, -0.939882, 0.330458,
		0.947621, 0.179686, 0.264059,
		20.419781, 19.606148, 5.437237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.842848, 19.298773, 5.876722>,  <19.756447, 19.480368, 5.252395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.842848, 19.298773, 5.876722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114273, 19.591351, 5.849753>,  <20.277128, 19.766897, 5.833572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114273, 19.591351, 5.849753>,  <19.842848, 19.298773, 5.876722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114273, 19.591351, 5.849753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248851, 0.315272, 0.915793,
		0.691107, -0.604644, 0.395952,
		0.678561, 0.731444, -0.067421,
		20.317841, 19.810783, 5.829527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223316, 19.218729, 6.489778>,  <19.842848, 19.298773, 5.876722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223316, 19.218729, 6.489778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.244678, 19.605755, 6.391014>,  <20.257496, 19.837971, 6.331756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.244678, 19.605755, 6.391014>,  <20.223316, 19.218729, 6.489778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.244678, 19.605755, 6.391014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036480, 0.248987, 0.967820,
		0.997906, -0.042681, 0.048594,
		0.053407, 0.967566, -0.246909,
		20.260700, 19.896025, 6.316941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.831829, 19.589207, 6.697265>,  <20.223316, 19.218729, 6.489778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.831829, 19.589207, 6.697265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520111, 19.839848, 6.700674>,  <20.333080, 19.990232, 6.702719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520111, 19.839848, 6.700674>,  <20.831829, 19.589207, 6.697265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520111, 19.839848, 6.700674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057120, 0.057482, 0.996711,
		0.624051, 0.777217, -0.080587,
		-0.779293, 0.626602, 0.008522,
		20.286324, 20.027828, 6.703231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492006, 19.300962, 6.696252>,  <20.831829, 19.589207, 6.697265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492006, 19.300962, 6.696252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.632141, 19.209122, 6.333035>,  <21.716223, 19.154016, 6.115104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.632141, 19.209122, 6.333035>,  <21.492006, 19.300962, 6.696252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632141, 19.209122, 6.333035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464737, -0.799113, 0.381363,
		-0.813193, -0.555608, -0.173254,
		0.350338, -0.229605, -0.908045,
		21.737244, 19.140240, 6.060621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.203333, 18.675678, 6.412458>,  <21.492006, 19.300962, 6.696252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.203333, 18.675678, 6.412458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570744, 18.768040, 6.284089>,  <21.791191, 18.823456, 6.207067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570744, 18.768040, 6.284089>,  <21.203333, 18.675678, 6.412458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570744, 18.768040, 6.284089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345206, -0.864082, 0.366327,
		-0.192718, -0.447266, -0.873392,
		0.918527, 0.230902, -0.320923,
		21.846302, 18.837311, 6.187812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.618147, 18.624462, 6.639783>,  <21.203333, 18.675678, 6.412458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.618147, 18.624462, 6.639783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504494, 18.245037, 6.695632>,  <20.436302, 18.017382, 6.729141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504494, 18.245037, 6.695632>,  <20.618147, 18.624462, 6.639783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504494, 18.245037, 6.695632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475857, -0.013094, 0.879425,
		-0.832363, 0.316316, 0.455101,
		-0.284135, -0.948564, 0.139622,
		20.419252, 17.960468, 6.737519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419230, 18.598194, 7.323668>,  <20.618147, 18.624462, 6.639783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419230, 18.598194, 7.323668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.516380, 18.229576, 7.202500>,  <20.574671, 18.008404, 7.129800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.516380, 18.229576, 7.202500>,  <20.419230, 18.598194, 7.323668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516380, 18.229576, 7.202500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521987, -0.139048, 0.841543,
		-0.817642, -0.362513, 0.447264,
		0.242879, -0.921547, -0.302919,
		20.589245, 17.953112, 7.111625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149277, 18.159798, 7.841762>,  <20.419230, 18.598194, 7.323668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149277, 18.159798, 7.841762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454445, 17.973721, 7.662187>,  <20.637547, 17.862074, 7.554441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454445, 17.973721, 7.662187>,  <20.149277, 18.159798, 7.841762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454445, 17.973721, 7.662187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478454, -0.060733, 0.876010,
		-0.434778, -0.883124, 0.176238,
		0.762922, -0.465192, -0.448939,
		20.683321, 17.834164, 7.527505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167414, 17.524170, 8.142949>,  <20.149277, 18.159798, 7.841762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167414, 17.524170, 8.142949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507435, 17.684017, 8.005708>,  <20.711447, 17.779924, 7.923363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.507435, 17.684017, 8.005708>,  <20.167414, 17.524170, 8.142949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.507435, 17.684017, 8.005708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430722, -0.152501, 0.889507,
		0.303139, -0.903908, -0.301757,
		0.850051, 0.399617, -0.343104,
		20.762449, 17.803902, 7.902777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701803, 17.139868, 8.474290>,  <20.167414, 17.524170, 8.142949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701803, 17.139868, 8.474290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854538, 17.486576, 8.345970>,  <20.946178, 17.694601, 8.268978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854538, 17.486576, 8.345970>,  <20.701803, 17.139868, 8.474290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854538, 17.486576, 8.345970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511503, 0.090911, 0.854459,
		0.769783, -0.490352, -0.408642,
		0.381835, 0.866770, -0.320798,
		20.969090, 17.746607, 8.249731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493881, 17.292984, 8.622415>,  <20.701803, 17.139868, 8.474290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493881, 17.292984, 8.622415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288734, 17.636345, 8.618148>,  <21.165648, 17.842361, 8.615588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288734, 17.636345, 8.618148>,  <21.493881, 17.292984, 8.622415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288734, 17.636345, 8.618148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276306, 0.176822, 0.944663,
		0.812788, 0.481539, -0.327868,
		-0.512866, 0.858402, -0.010666,
		21.134874, 17.893866, 8.614948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963976, 17.878178, 8.740100>,  <21.493881, 17.292984, 8.622415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963976, 17.878178, 8.740100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587620, 17.900280, 8.873772>,  <21.361807, 17.913542, 8.953975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587620, 17.900280, 8.873772>,  <21.963976, 17.878178, 8.740100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.587620, 17.900280, 8.873772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338716, 0.151053, 0.928684,
		0.000836, 0.986980, -0.160839,
		-0.940888, 0.055255, 0.334180,
		21.305353, 17.916857, 8.974026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.981478, 18.409672, 9.195242>,  <21.963976, 17.878178, 8.740100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.981478, 18.409672, 9.195242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639675, 18.223930, 9.288361>,  <21.434593, 18.112486, 9.344232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639675, 18.223930, 9.288361>,  <21.981478, 18.409672, 9.195242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.639675, 18.223930, 9.288361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202049, 0.115744, 0.972512,
		-0.478536, 0.878053, -0.005081,
		-0.854506, -0.464355, 0.232798,
		21.383324, 18.084623, 9.358200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.683065, 18.919651, 9.552321>,  <21.981478, 18.409672, 9.195242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.683065, 18.919651, 9.552321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518444, 18.566235, 9.641743>,  <21.419670, 18.354185, 9.695395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518444, 18.566235, 9.641743>,  <21.683065, 18.919651, 9.552321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518444, 18.566235, 9.641743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073262, 0.212422, 0.974428,
		-0.908436, 0.417408, -0.022693,
		-0.411555, -0.883542, 0.223552,
		21.394978, 18.301172, 9.708808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371523, 19.142561, 10.128153>,  <21.683065, 18.919651, 9.552321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371523, 19.142561, 10.128153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344730, 18.746216, 10.174985>,  <21.328655, 18.508410, 10.203084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344730, 18.746216, 10.174985>,  <21.371523, 19.142561, 10.128153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344730, 18.746216, 10.174985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231384, 0.098720, 0.967841,
		-0.970554, 0.091916, 0.222657,
		-0.066979, -0.990861, 0.117081,
		21.324636, 18.448957, 10.210110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923923, 19.025843, 10.633453>,  <21.371523, 19.142561, 10.128153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923923, 19.025843, 10.633453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168236, 18.709576, 10.616524>,  <21.314823, 18.519815, 10.606366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168236, 18.709576, 10.616524>,  <20.923923, 19.025843, 10.633453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168236, 18.709576, 10.616524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137731, 0.053453, 0.989026,
		-0.779729, -0.609907, 0.141548,
		0.610781, -0.790668, -0.042324,
		21.351469, 18.472376, 10.603827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693884, 18.610834, 11.194058>,  <20.923923, 19.025843, 10.633453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693884, 18.610834, 11.194058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.046547, 18.458435, 11.082691>,  <21.258144, 18.366995, 11.015871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.046547, 18.458435, 11.082691>,  <20.693884, 18.610834, 11.194058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.046547, 18.458435, 11.082691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234800, -0.157588, 0.959184,
		-0.409325, -0.911046, -0.049480,
		0.881658, -0.381000, -0.278419,
		21.311045, 18.344135, 10.999166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714581, 18.057571, 11.530489>,  <20.693884, 18.610834, 11.194058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714581, 18.057571, 11.530489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090752, 18.169613, 11.453402>,  <21.316454, 18.236837, 11.407149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090752, 18.169613, 11.453402>,  <20.714581, 18.057571, 11.530489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.090752, 18.169613, 11.453402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241504, -0.151343, 0.958526,
		0.239321, -0.947965, -0.209973,
		0.940426, 0.280104, -0.192718,
		21.372879, 18.253645, 11.395586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137630, 17.529852, 11.682432>,  <20.714581, 18.057571, 11.530489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137630, 17.529852, 11.682432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293781, 17.897343, 11.706260>,  <21.387472, 18.117836, 11.720556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293781, 17.897343, 11.706260>,  <21.137630, 17.529852, 11.682432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293781, 17.897343, 11.706260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191774, -0.144429, 0.970754,
		0.900459, -0.367538, -0.232570,
		0.390379, 0.918725, 0.059568,
		21.410894, 18.172960, 11.724130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.494061, 17.427755, 12.279697>,  <21.137630, 17.529852, 11.682432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.494061, 17.427755, 12.279697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559662, 17.816746, 12.213496>,  <21.599022, 18.050140, 12.173776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559662, 17.816746, 12.213496>,  <21.494061, 17.427755, 12.279697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559662, 17.816746, 12.213496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241821, 0.123021, 0.962491,
		0.956361, -0.197873, -0.214990,
		0.164003, 0.972477, -0.165502,
		21.608862, 18.108488, 12.163845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072140, 17.644089, 12.687622>,  <21.494061, 17.427755, 12.279697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072140, 17.644089, 12.687622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880238, 17.987080, 12.613258>,  <21.765097, 18.192875, 12.568641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880238, 17.987080, 12.613258>,  <22.072140, 17.644089, 12.687622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880238, 17.987080, 12.613258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059724, 0.243309, 0.968108,
		0.875366, 0.453354, -0.167942,
		-0.479757, 0.857480, -0.185909,
		21.736311, 18.244324, 12.557486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.445354, 18.037136, 13.069192>,  <22.072140, 17.644089, 12.687622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.445354, 18.037136, 13.069192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093498, 18.219543, 13.015112>,  <21.882385, 18.328989, 12.982664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093498, 18.219543, 13.015112>,  <22.445354, 18.037136, 13.069192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093498, 18.219543, 13.015112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074620, 0.148420, 0.986105,
		0.469750, 0.877506, -0.096528,
		-0.879640, 0.456020, -0.135200,
		21.829607, 18.356350, 12.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464153, 18.642555, 13.390261>,  <22.445354, 18.037136, 13.069192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464153, 18.642555, 13.390261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.068062, 18.675064, 13.344925>,  <21.830408, 18.694569, 13.317723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.068062, 18.675064, 13.344925>,  <22.464153, 18.642555, 13.390261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068062, 18.675064, 13.344925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055314, 0.517161, 0.854099,
		0.128028, 0.852021, -0.507611,
		-0.990227, 0.081271, -0.113340,
		21.770994, 18.699446, 13.310923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291830, 19.348381, 13.471177>,  <22.464153, 18.642555, 13.390261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291830, 19.348381, 13.471177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965946, 19.129719, 13.548553>,  <21.770416, 18.998522, 13.594979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965946, 19.129719, 13.548553>,  <22.291830, 19.348381, 13.471177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965946, 19.129719, 13.548553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135804, 0.504187, 0.852850,
		-0.563745, 0.668553, -0.485003,
		-0.814707, -0.546656, 0.193441,
		21.721535, 18.965721, 13.606586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.782042, 19.803648, 13.685150>,  <22.291830, 19.348381, 13.471177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.782042, 19.803648, 13.685150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649643, 19.457260, 13.835102>,  <21.570204, 19.249428, 13.925074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649643, 19.457260, 13.835102>,  <21.782042, 19.803648, 13.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649643, 19.457260, 13.835102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165898, 0.444489, 0.880288,
		-0.928934, 0.229182, -0.290788,
		-0.330998, -0.865971, 0.374880,
		21.550344, 19.197470, 13.947566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243393, 20.005798, 14.121741>,  <21.782042, 19.803648, 13.685150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243393, 20.005798, 14.121741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370968, 19.645493, 14.239660>,  <21.447514, 19.429310, 14.310411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370968, 19.645493, 14.239660>,  <21.243393, 20.005798, 14.121741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370968, 19.645493, 14.239660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118333, 0.270762, 0.955346,
		-0.940360, -0.339579, -0.020234,
		0.318937, -0.900763, 0.294797,
		21.466648, 19.375263, 14.328099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790009, 19.873285, 14.638328>,  <21.243393, 20.005798, 14.121741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790009, 19.873285, 14.638328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.124214, 19.659264, 14.688339>,  <21.324738, 19.530851, 14.718347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.124214, 19.659264, 14.688339>,  <20.790009, 19.873285, 14.638328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124214, 19.659264, 14.688339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034917, 0.175384, 0.983881,
		-0.548357, -0.826413, 0.127853,
		0.835515, -0.535054, 0.125029,
		21.374868, 19.498747, 14.725848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677351, 19.545460, 15.254348>,  <20.790009, 19.873285, 14.638328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677351, 19.545460, 15.254348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070503, 19.534111, 15.181524>,  <21.306395, 19.527302, 15.137831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070503, 19.534111, 15.181524>,  <20.677351, 19.545460, 15.254348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070503, 19.534111, 15.181524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184231, 0.167380, 0.968526,
		0.002993, -0.985484, 0.169742,
		0.982878, -0.028373, -0.182057,
		21.365366, 19.525599, 15.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.910913, 19.225451, 15.868147>,  <20.677351, 19.545460, 15.254348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.910913, 19.225451, 15.868147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242374, 19.384727, 15.710779>,  <21.441252, 19.480293, 15.616359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242374, 19.384727, 15.710779>,  <20.910913, 19.225451, 15.868147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242374, 19.384727, 15.710779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275762, 0.321231, 0.905961,
		0.487126, -0.859216, 0.156383,
		0.828652, 0.398193, -0.393419,
		21.490971, 19.504185, 15.592753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446835, 18.952461, 16.255796>,  <20.910913, 19.225451, 15.868147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446835, 18.952461, 16.255796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598873, 19.287216, 16.098244>,  <21.690096, 19.488070, 16.003712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.598873, 19.287216, 16.098244>,  <21.446835, 18.952461, 16.255796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598873, 19.287216, 16.098244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421939, 0.222071, 0.879006,
		0.823099, -0.500304, -0.268707,
		0.380098, 0.836888, -0.393884,
		21.712902, 19.538282, 15.980079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164192, 19.043617, 16.522371>,  <21.446835, 18.952461, 16.255796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164192, 19.043617, 16.522371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057442, 19.408169, 16.397047>,  <21.993391, 19.626900, 16.321852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057442, 19.408169, 16.397047>,  <22.164192, 19.043617, 16.522371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057442, 19.408169, 16.397047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484659, 0.407921, 0.773761,
		0.832996, 0.054650, -0.550573,
		-0.266877, 0.911380, -0.313310,
		21.977379, 19.681583, 16.303055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.617685, 19.423277, 16.821568>,  <22.164192, 19.043617, 16.522371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.617685, 19.423277, 16.821568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356834, 19.714561, 16.737249>,  <22.200323, 19.889332, 16.686659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356834, 19.714561, 16.737249>,  <22.617685, 19.423277, 16.821568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.356834, 19.714561, 16.737249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402756, 0.568360, 0.717464,
		0.642273, 0.382980, -0.663936,
		-0.652130, 0.728212, -0.210795,
		22.161196, 19.933025, 16.674011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972666, 19.954823, 17.093407>,  <22.617685, 19.423277, 16.821568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972666, 19.954823, 17.093407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603565, 20.104679, 17.057238>,  <22.382105, 20.194593, 17.035536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.603565, 20.104679, 17.057238>,  <22.972666, 19.954823, 17.093407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.603565, 20.104679, 17.057238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129023, 0.521381, 0.843514,
		0.363160, 0.766685, -0.529441,
		-0.922750, 0.374641, -0.090425,
		22.326740, 20.217072, 17.030109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.962507, 20.749828, 17.119967>,  <22.972666, 19.954823, 17.093407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.962507, 20.749828, 17.119967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596905, 20.627258, 17.226322>,  <22.377542, 20.553717, 17.290134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596905, 20.627258, 17.226322>,  <22.962507, 20.749828, 17.119967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596905, 20.627258, 17.226322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020838, 0.619055, 0.785071,
		-0.405165, 0.723100, -0.559435,
		-0.914006, -0.306426, 0.265887,
		22.322702, 20.535330, 17.306087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642151, 21.378540, 17.263090>,  <22.962507, 20.749828, 17.119967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642151, 21.378540, 17.263090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.444870, 21.079063, 17.440273>,  <22.326502, 20.899378, 17.546583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.444870, 21.079063, 17.440273>,  <22.642151, 21.378540, 17.263090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.444870, 21.079063, 17.440273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161165, 0.579024, 0.799223,
		-0.854856, 0.322788, -0.406238,
		-0.493201, -0.748692, 0.442960,
		22.296909, 20.854456, 17.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.098080, 21.658955, 17.561701>,  <22.642151, 21.378540, 17.263090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.098080, 21.658955, 17.561701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139194, 21.309345, 17.751657>,  <22.163864, 21.099581, 17.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139194, 21.309345, 17.751657>,  <22.098080, 21.658955, 17.561701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139194, 21.309345, 17.751657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063046, 0.470735, 0.880019,
		-0.992703, -0.120396, -0.006718,
		0.102788, -0.874021, 0.474890,
		22.170031, 21.047138, 17.894125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617308, 21.639029, 18.050680>,  <22.098080, 21.658955, 17.561701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617308, 21.639029, 18.050680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912479, 21.396832, 18.169901>,  <22.089582, 21.251513, 18.241434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.912479, 21.396832, 18.169901>,  <21.617308, 21.639029, 18.050680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.912479, 21.396832, 18.169901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004028, 0.445584, 0.895231,
		-0.674865, -0.659417, 0.331249,
		0.737930, -0.605494, 0.298052,
		22.133858, 21.215183, 18.259317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466183, 21.569469, 18.740860>,  <21.617308, 21.639029, 18.050680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466183, 21.569469, 18.740860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850124, 21.464031, 18.702505>,  <22.080490, 21.400768, 18.679493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850124, 21.464031, 18.702505>,  <21.466183, 21.569469, 18.740860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850124, 21.464031, 18.702505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171687, 0.281793, 0.943990,
		-0.221813, -0.922556, 0.315737,
		0.959856, -0.263597, -0.095886,
		22.138081, 21.384953, 18.673738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748301, 20.927921, 19.172075>,  <21.466183, 21.569469, 18.740860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748301, 20.927921, 19.172075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030518, 21.204536, 19.110123>,  <22.199848, 21.370506, 19.072952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030518, 21.204536, 19.110123>,  <21.748301, 20.927921, 19.172075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030518, 21.204536, 19.110123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186214, 0.029961, 0.982052,
		0.683766, -0.721719, -0.107635,
		0.705541, 0.691537, -0.154880,
		22.242180, 21.411997, 19.063658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.358078, 20.643076, 19.457140>,  <21.748301, 20.927921, 19.172075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.358078, 20.643076, 19.457140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405949, 21.040092, 19.447815>,  <22.434671, 21.278301, 19.442221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405949, 21.040092, 19.447815>,  <22.358078, 20.643076, 19.457140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405949, 21.040092, 19.447815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118717, 0.009004, 0.992887,
		0.985689, -0.121594, -0.116754,
		0.119678, 0.992539, -0.023311,
		22.441853, 21.337854, 19.440823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.872768, 20.770298, 19.996170>,  <22.358078, 20.643076, 19.457140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.872768, 20.770298, 19.996170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714867, 21.133141, 19.937757>,  <22.620125, 21.350845, 19.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.714867, 21.133141, 19.937757>,  <22.872768, 20.770298, 19.996170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714867, 21.133141, 19.937757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059139, 0.183697, 0.981202,
		0.916880, 0.378700, -0.126161,
		-0.394757, 0.907106, -0.146032,
		22.596439, 21.405272, 19.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314577, 21.231539, 20.367682>,  <22.872768, 20.770298, 19.996170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314577, 21.231539, 20.367682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978355, 21.441330, 20.313438>,  <22.776623, 21.567205, 20.280893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978355, 21.441330, 20.313438>,  <23.314577, 21.231539, 20.367682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978355, 21.441330, 20.313438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024610, 0.213097, 0.976721,
		0.541166, 0.824326, -0.166213,
		-0.840556, 0.524477, -0.135608,
		22.726189, 21.598673, 20.272757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295858, 21.802208, 20.756140>,  <23.314577, 21.231539, 20.367682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295858, 21.802208, 20.756140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904217, 21.766357, 20.683123>,  <22.669231, 21.744846, 20.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.904217, 21.766357, 20.683123>,  <23.295858, 21.802208, 20.756140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.904217, 21.766357, 20.683123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201940, 0.322646, 0.924727,
		-0.023984, 0.942267, -0.334004,
		-0.979104, -0.089628, -0.182543,
		22.610485, 21.739470, 20.628359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068718, 22.394472, 20.880457>,  <23.295858, 21.802208, 20.756140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068718, 22.394472, 20.880457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.756954, 22.150948, 20.939610>,  <22.569897, 22.004833, 20.975101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.756954, 22.150948, 20.939610>,  <23.068718, 22.394472, 20.880457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.756954, 22.150948, 20.939610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215107, 0.481730, 0.849509,
		-0.588431, 0.630304, -0.506424,
		-0.779408, -0.608813, 0.147882,
		22.523132, 21.968304, 20.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632629, 22.803431, 21.226963>,  <23.068718, 22.394472, 20.880457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632629, 22.803431, 21.226963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451561, 22.455627, 21.306002>,  <22.342920, 22.246944, 21.353426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451561, 22.455627, 21.306002>,  <22.632629, 22.803431, 21.226963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451561, 22.455627, 21.306002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439527, 0.410393, 0.798995,
		-0.775826, 0.274831, -0.567945,
		-0.452669, -0.869509, 0.197598,
		22.315760, 22.194775, 21.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.002731, 23.043539, 21.290087>,  <22.632629, 22.803431, 21.226963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.002731, 23.043539, 21.290087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000637, 22.680882, 21.458834>,  <21.999380, 22.463287, 21.560081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000637, 22.680882, 21.458834>,  <22.002731, 23.043539, 21.290087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000637, 22.680882, 21.458834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336305, 0.398895, 0.853101,
		-0.941739, -0.137409, -0.306997,
		-0.005235, -0.906643, 0.421866,
		21.999067, 22.408888, 21.585394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.386223, 23.103289, 21.586449>,  <22.002731, 23.043539, 21.290087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.386223, 23.103289, 21.586449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587353, 22.821632, 21.786989>,  <21.708031, 22.652637, 21.907314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587353, 22.821632, 21.786989>,  <21.386223, 23.103289, 21.586449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.587353, 22.821632, 21.786989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387329, 0.334976, 0.858934,
		-0.772752, -0.626080, -0.104301,
		0.502823, -0.704142, 0.501352,
		21.738199, 22.610390, 21.937395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879732, 22.890890, 22.048075>,  <21.386223, 23.103289, 21.586449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879732, 22.890890, 22.048075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237751, 22.784794, 22.191484>,  <21.452562, 22.721136, 22.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237751, 22.784794, 22.191484>,  <20.879732, 22.890890, 22.048075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237751, 22.784794, 22.191484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241776, 0.386930, 0.889848,
		-0.374746, -0.883138, 0.282192,
		0.895047, -0.265240, 0.358523,
		21.506266, 22.705221, 22.299042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645252, 22.584599, 22.627703>,  <20.879732, 22.890890, 22.048075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645252, 22.584599, 22.627703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029140, 22.683964, 22.680208>,  <21.259474, 22.743582, 22.711712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029140, 22.683964, 22.680208>,  <20.645252, 22.584599, 22.627703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029140, 22.683964, 22.680208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241817, 0.492436, 0.836081,
		0.143052, -0.834145, 0.532670,
		0.959719, 0.248411, 0.131267,
		21.317057, 22.758488, 22.719587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.784571, 22.509766, 23.345293>,  <20.645252, 22.584599, 22.627703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.784571, 22.509766, 23.345293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105209, 22.727234, 23.245804>,  <21.297592, 22.857716, 23.186110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105209, 22.727234, 23.245804>,  <20.784571, 22.509766, 23.345293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105209, 22.727234, 23.245804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081593, 0.511608, 0.855336,
		0.592273, -0.665339, 0.454463,
		0.801596, 0.543674, -0.248725,
		21.345688, 22.890335, 23.171186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253084, 22.510782, 23.950493>,  <20.784571, 22.509766, 23.345293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253084, 22.510782, 23.950493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363632, 22.827415, 23.732496>,  <21.429960, 23.017395, 23.601698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363632, 22.827415, 23.732496>,  <21.253084, 22.510782, 23.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363632, 22.827415, 23.732496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082711, 0.545381, 0.834097,
		0.957486, -0.275594, 0.085253,
		0.276368, 0.791585, -0.544989,
		21.446543, 23.064892, 23.569000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859154, 22.798380, 24.264292>,  <21.253084, 22.510782, 23.950493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859154, 22.798380, 24.264292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698074, 23.092968, 24.046871>,  <21.601427, 23.269720, 23.916420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698074, 23.092968, 24.046871>,  <21.859154, 22.798380, 24.264292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698074, 23.092968, 24.046871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009631, 0.597204, 0.802031,
		0.915282, 0.317742, -0.247586,
		-0.402699, 0.736469, -0.543550,
		21.577265, 23.313910, 23.883806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285995, 23.421478, 24.319592>,  <21.859154, 22.798380, 24.264292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285995, 23.421478, 24.319592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909492, 23.533192, 24.243660>,  <21.683590, 23.600220, 24.198101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909492, 23.533192, 24.243660>,  <22.285995, 23.421478, 24.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909492, 23.533192, 24.243660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000902, 0.560061, 0.828451,
		0.337689, 0.779956, -0.526910,
		-0.941257, 0.279283, -0.189831,
		21.627115, 23.616976, 24.186710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210802, 24.025177, 24.611439>,  <22.285995, 23.421478, 24.319592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210802, 24.025177, 24.611439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.815220, 23.981033, 24.571875>,  <21.577869, 23.954548, 24.548136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.815220, 23.981033, 24.571875>,  <22.210802, 24.025177, 24.611439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.815220, 23.981033, 24.571875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140157, 0.479618, 0.866212,
		-0.048155, 0.870510, -0.489790,
		-0.988958, -0.110360, -0.098912,
		21.518532, 23.947926, 24.542202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.389265, 24.737810, 24.880060>,  <22.210802, 24.025177, 24.611439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.389265, 24.737810, 24.880060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.211025, 25.094360, 24.913256>,  <22.104080, 25.308290, 24.933174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.211025, 25.094360, 24.913256>,  <22.389265, 24.737810, 24.880060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.211025, 25.094360, 24.913256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795749, -0.436850, 0.419459,
		0.410150, 0.120872, 0.903973,
		-0.445601, 0.891377, 0.082990,
		22.077345, 25.361773, 24.938152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122984, 25.060682, 25.507574>,  <22.389265, 24.737810, 24.880060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122984, 25.060682, 25.507574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.917702, 25.175198, 25.183929>,  <21.794533, 25.243908, 24.989742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.917702, 25.175198, 25.183929>,  <22.122984, 25.060682, 25.507574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.917702, 25.175198, 25.183929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792010, -0.521181, 0.317947,
		-0.330668, 0.803995, 0.494217,
		-0.513205, 0.286290, -0.809110,
		21.763741, 25.261084, 24.941196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477020, 25.393669, 25.643890>,  <22.122984, 25.060682, 25.507574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477020, 25.393669, 25.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433365, 25.180748, 25.308094>,  <21.407171, 25.052996, 25.106617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433365, 25.180748, 25.308094>,  <21.477020, 25.393669, 25.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433365, 25.180748, 25.308094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672906, -0.582037, 0.456541,
		-0.731632, 0.614724, -0.294667,
		-0.109140, -0.532303, -0.839489,
		21.400623, 25.021057, 25.056248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795284, 25.376240, 25.451715>,  <21.477020, 25.393669, 25.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795284, 25.376240, 25.451715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979633, 25.044247, 25.326035>,  <21.090242, 24.845051, 25.250626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979633, 25.044247, 25.326035>,  <20.795284, 25.376240, 25.451715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979633, 25.044247, 25.326035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719236, -0.556725, 0.415639,
		-0.519899, 0.034431, -0.853533,
		0.460872, -0.829983, -0.314205,
		21.117895, 24.795252, 25.231773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418999, 25.255960, 24.799467>,  <20.795284, 25.376240, 25.451715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418999, 25.255960, 24.799467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.037437, 25.207668, 24.909372>,  <19.808500, 25.178694, 24.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.037437, 25.207668, 24.909372>,  <20.418999, 25.255960, 24.799467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.037437, 25.207668, 24.909372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271606, -0.042193, -0.961483,
		0.127672, -0.991788, 0.007458,
		-0.953903, -0.120729, 0.274763,
		19.751266, 25.171450, 24.991800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125175, 24.715580, 24.422848>,  <20.418999, 25.255960, 24.799467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125175, 24.715580, 24.422848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.881218, 25.015976, 24.524075>,  <19.734842, 25.196213, 24.584810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.881218, 25.015976, 24.524075>,  <20.125175, 24.715580, 24.422848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881218, 25.015976, 24.524075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061524, 0.273498, -0.959903,
		-0.790090, -0.601010, -0.120601,
		-0.609896, 0.750990, 0.253065,
		19.698250, 25.241272, 24.599995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376966, 24.702873, 24.123825>,  <20.125175, 24.715580, 24.422848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376966, 24.702873, 24.123825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504772, 25.075390, 24.193802>,  <19.581455, 25.298901, 24.235788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504772, 25.075390, 24.193802>,  <19.376966, 24.702873, 24.123825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504772, 25.075390, 24.193802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078343, 0.209952, -0.974568,
		-0.944337, 0.297683, 0.140043,
		0.319515, 0.931292, 0.174944,
		19.600626, 25.354778, 24.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899939, 25.178303, 23.842598>,  <19.376966, 24.702873, 24.123825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899939, 25.178303, 23.842598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261066, 25.348320, 23.868687>,  <19.477743, 25.450331, 23.884340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261066, 25.348320, 23.868687>,  <18.899939, 25.178303, 23.842598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261066, 25.348320, 23.868687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044470, 0.243149, -0.968969,
		-0.427711, 0.871905, 0.238421,
		0.902821, 0.425041, 0.065223,
		19.531914, 25.475832, 23.888254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.946039, 25.898985, 23.716038>,  <18.899939, 25.178303, 23.842598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.946039, 25.898985, 23.716038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284798, 25.712524, 23.613689>,  <19.488052, 25.600647, 23.552280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284798, 25.712524, 23.613689>,  <18.946039, 25.898985, 23.716038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284798, 25.712524, 23.613689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243337, 0.088115, -0.965931,
		0.472818, 0.880305, -0.038808,
		0.846895, -0.466153, -0.255873,
		19.538866, 25.572678, 23.536928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201122, 26.315996, 23.197075>,  <18.946039, 25.898985, 23.716038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201122, 26.315996, 23.197075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376736, 25.957539, 23.171228>,  <19.482103, 25.742464, 23.155720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376736, 25.957539, 23.171228>,  <19.201122, 26.315996, 23.197075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376736, 25.957539, 23.171228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124594, 0.010499, -0.992152,
		0.889791, 0.443637, -0.107045,
		0.439031, -0.896145, -0.064617,
		19.508446, 25.688696, 23.151844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.701298, 26.330700, 22.645477>,  <19.201122, 26.315996, 23.197075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.701298, 26.330700, 22.645477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597225, 25.951462, 22.718605>,  <19.534782, 25.723919, 22.762482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597225, 25.951462, 22.718605>,  <19.701298, 26.330700, 22.645477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597225, 25.951462, 22.718605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090730, -0.164496, -0.982196,
		0.961288, -0.272134, -0.043223,
		-0.260179, -0.948095, 0.182819,
		19.519171, 25.667034, 22.773451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939264, 25.928452, 22.032661>,  <19.701298, 26.330700, 22.645477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939264, 25.928452, 22.032661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663235, 25.712990, 22.226009>,  <19.497616, 25.583714, 22.342018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.663235, 25.712990, 22.226009>,  <19.939264, 25.928452, 22.032661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663235, 25.712990, 22.226009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329674, -0.360615, -0.872509,
		0.644290, -0.761453, 0.071272,
		-0.690076, -0.538652, 0.483372,
		19.456211, 25.551394, 22.371021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963785, 25.321320, 21.749846>,  <19.939264, 25.928452, 22.032661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963785, 25.321320, 21.749846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598492, 25.339527, 21.911802>,  <19.379316, 25.350451, 22.008976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598492, 25.339527, 21.911802>,  <19.963785, 25.321320, 21.749846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598492, 25.339527, 21.911802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383926, -0.428849, -0.817734,
		0.136416, -0.902229, 0.409114,
		-0.913231, 0.045518, 0.404891,
		19.324522, 25.353182, 22.033270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.679371, 24.667744, 21.586506>,  <19.963785, 25.321320, 21.749846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.679371, 24.667744, 21.586506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357174, 24.877880, 21.696194>,  <19.163855, 25.003962, 21.762007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357174, 24.877880, 21.696194>,  <19.679371, 24.667744, 21.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357174, 24.877880, 21.696194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551145, -0.494076, -0.672405,
		-0.217757, -0.692753, 0.687514,
		-0.805494, 0.525341, 0.274219,
		19.115526, 25.035482, 21.778460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087732, 24.151846, 21.748552>,  <19.679371, 24.667744, 21.586506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087732, 24.151846, 21.748552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949287, 24.501190, 21.611469>,  <18.866220, 24.710796, 21.529221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949287, 24.501190, 21.611469>,  <19.087732, 24.151846, 21.748552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949287, 24.501190, 21.611469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676369, -0.485423, -0.553976,
		-0.650179, 0.040059, 0.758725,
		-0.346111, 0.873362, -0.342707,
		18.845453, 24.763199, 21.508657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370037, 24.021009, 21.720675>,  <19.087732, 24.151846, 21.748552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370037, 24.021009, 21.720675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408157, 24.350639, 21.497313>,  <18.431030, 24.548418, 21.363295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.408157, 24.350639, 21.497313>,  <18.370037, 24.021009, 21.720675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408157, 24.350639, 21.497313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558209, -0.420220, -0.715415,
		-0.824209, 0.379887, 0.419959,
		0.095301, 0.824076, -0.558405,
		18.436749, 24.597862, 21.329790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778769, 24.005249, 21.447115>,  <18.370037, 24.021009, 21.720675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778769, 24.005249, 21.447115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954609, 24.293243, 21.232315>,  <18.060112, 24.466040, 21.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954609, 24.293243, 21.232315>,  <17.778769, 24.005249, 21.447115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954609, 24.293243, 21.232315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511521, -0.290763, -0.808581,
		-0.738308, 0.630139, 0.240470,
		0.439599, 0.719988, -0.537002,
		18.086489, 24.509239, 21.071215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242159, 24.313725, 20.991667>,  <17.778769, 24.005249, 21.447115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242159, 24.313725, 20.991667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590801, 24.390671, 20.811312>,  <17.799986, 24.436838, 20.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590801, 24.390671, 20.811312>,  <17.242159, 24.313725, 20.991667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590801, 24.390671, 20.811312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388082, -0.291174, -0.874420,
		-0.299494, 0.937131, -0.179136,
		0.871605, 0.192364, -0.450888,
		17.852283, 24.448380, 20.676044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161404, 24.782509, 20.329445>,  <17.242159, 24.313725, 20.991667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161404, 24.782509, 20.329445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497654, 24.568295, 20.297070>,  <17.699404, 24.439766, 20.277645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497654, 24.568295, 20.297070>,  <17.161404, 24.782509, 20.329445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497654, 24.568295, 20.297070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264075, -0.274789, -0.924530,
		0.472878, 0.798557, -0.372416,
		0.840626, -0.535535, -0.080937,
		17.749842, 24.407635, 20.272789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374640, 24.827374, 19.613794>,  <17.161404, 24.782509, 20.329445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374640, 24.827374, 19.613794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586987, 24.512375, 19.739031>,  <17.714396, 24.323376, 19.814173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.586987, 24.512375, 19.739031>,  <17.374640, 24.827374, 19.613794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586987, 24.512375, 19.739031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026215, -0.354015, -0.934872,
		0.847048, 0.504503, -0.167292,
		0.530869, -0.787497, 0.313093,
		17.746246, 24.276125, 19.832958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888042, 24.766668, 19.086800>,  <17.374640, 24.827374, 19.613794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888042, 24.766668, 19.086800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896164, 24.409336, 19.266376>,  <17.901037, 24.194937, 19.374123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896164, 24.409336, 19.266376>,  <17.888042, 24.766668, 19.086800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896164, 24.409336, 19.266376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045567, -0.449397, -0.892169,
		0.998755, -0.002343, -0.049830,
		0.020303, -0.893329, 0.448944,
		17.902254, 24.141336, 19.401060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.461504, 24.345209, 18.793360>,  <17.888042, 24.766668, 19.086800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.461504, 24.345209, 18.793360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.202297, 24.084167, 18.950422>,  <18.046772, 23.927542, 19.044661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.202297, 24.084167, 18.950422>,  <18.461504, 24.345209, 18.793360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202297, 24.084167, 18.950422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103427, -0.435375, -0.894288,
		0.754570, -0.620126, 0.214634,
		-0.648018, -0.652604, 0.392658,
		18.007893, 23.888386, 19.068220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765734, 23.824476, 18.534290>,  <18.461504, 24.345209, 18.793360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765734, 23.824476, 18.534290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403450, 23.692642, 18.640923>,  <18.186079, 23.613543, 18.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.403450, 23.692642, 18.640923>,  <18.765734, 23.824476, 18.534290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.403450, 23.692642, 18.640923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024868, -0.586482, -0.809580,
		0.423169, -0.739874, 0.522987,
		-0.905709, -0.329584, 0.266580,
		18.131737, 23.593767, 18.720896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875427, 23.226868, 18.303679>,  <18.765734, 23.824476, 18.534290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875427, 23.226868, 18.303679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479332, 23.271393, 18.337242>,  <18.241674, 23.298107, 18.357380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479332, 23.271393, 18.337242>,  <18.875427, 23.226868, 18.303679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479332, 23.271393, 18.337242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128210, -0.491011, -0.861667,
		-0.054713, -0.864013, 0.500488,
		-0.990237, 0.111312, 0.083910,
		18.182261, 23.304787, 18.362415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570257, 22.583511, 18.073399>,  <18.875427, 23.226868, 18.303679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570257, 22.583511, 18.073399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277012, 22.853973, 18.044113>,  <18.101065, 23.016251, 18.026543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277012, 22.853973, 18.044113>,  <18.570257, 22.583511, 18.073399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277012, 22.853973, 18.044113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220385, -0.338021, -0.914971,
		-0.643409, -0.654642, 0.396822,
		-0.733113, 0.676155, -0.073212,
		18.057077, 23.056820, 18.022150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.014967, 22.247929, 17.815401>,  <18.570257, 22.583511, 18.073399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.014967, 22.247929, 17.815401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936756, 22.623863, 17.703344>,  <17.889830, 22.849424, 17.636110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936756, 22.623863, 17.703344>,  <18.014967, 22.247929, 17.815401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936756, 22.623863, 17.703344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174678, -0.314465, -0.933059,
		-0.965017, -0.133501, 0.225655,
		-0.195525, 0.939835, -0.280144,
		17.878099, 22.905813, 17.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420366, 22.224339, 17.312950>,  <18.014967, 22.247929, 17.815401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420366, 22.224339, 17.312950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617485, 22.565681, 17.244913>,  <17.735756, 22.770487, 17.204092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617485, 22.565681, 17.244913>,  <17.420366, 22.224339, 17.312950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617485, 22.565681, 17.244913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130636, -0.120703, -0.984056,
		-0.860283, 0.507158, 0.051998,
		0.492795, 0.853359, -0.170092,
		17.765324, 22.821690, 17.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095854, 22.419104, 16.757641>,  <17.420366, 22.224339, 17.312950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095854, 22.419104, 16.757641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410912, 22.665512, 16.762255>,  <17.599947, 22.813356, 16.765022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.410912, 22.665512, 16.762255>,  <17.095854, 22.419104, 16.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410912, 22.665512, 16.762255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044796, -0.038586, -0.998251,
		-0.614499, 0.786784, -0.057988,
		0.787645, 0.616022, 0.011534,
		17.647205, 22.850319, 16.765715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083805, 22.690229, 16.114212>,  <17.095854, 22.419104, 16.757641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083805, 22.690229, 16.114212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463940, 22.771290, 16.208696>,  <17.692020, 22.819925, 16.265387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.463940, 22.771290, 16.208696>,  <17.083805, 22.690229, 16.114212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463940, 22.771290, 16.208696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257448, -0.085403, -0.962511,
		-0.174880, 0.975520, -0.133333,
		0.950335, 0.202651, 0.236211,
		17.749041, 22.832085, 16.279560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372416, 23.224812, 15.649396>,  <17.083805, 22.690229, 16.114212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372416, 23.224812, 15.649396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694542, 23.022682, 15.773409>,  <17.887817, 22.901405, 15.847816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694542, 23.022682, 15.773409>,  <17.372416, 23.224812, 15.649396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694542, 23.022682, 15.773409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368726, 0.017425, -0.929375,
		0.464230, 0.862755, 0.200358,
		0.805314, -0.505321, 0.310031,
		17.936136, 22.871086, 15.866418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864407, 23.571543, 15.270094>,  <17.372416, 23.224812, 15.649396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864407, 23.571543, 15.270094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.049015, 23.237328, 15.389339>,  <18.159781, 23.036798, 15.460887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.049015, 23.237328, 15.389339>,  <17.864407, 23.571543, 15.270094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.049015, 23.237328, 15.389339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462524, -0.060124, -0.884566,
		0.757013, 0.546132, 0.358708,
		0.461522, -0.835539, 0.298114,
		18.187471, 22.986666, 15.478773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467825, 23.539717, 14.899256>,  <17.864407, 23.571543, 15.270094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467825, 23.539717, 14.899256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478764, 23.156845, 15.014540>,  <18.485327, 22.927122, 15.083710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.478764, 23.156845, 15.014540>,  <18.467825, 23.539717, 14.899256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478764, 23.156845, 15.014540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404336, -0.253088, -0.878897,
		0.914202, 0.140567, 0.380100,
		0.027346, -0.957177, 0.288210,
		18.486967, 22.869692, 15.101003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.212976, 23.158482, 14.726060>,  <18.467825, 23.539717, 14.899256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.212976, 23.158482, 14.726060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921631, 22.884987, 14.743931>,  <18.746824, 22.720890, 14.754653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921631, 22.884987, 14.743931>,  <19.212976, 23.158482, 14.726060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921631, 22.884987, 14.743931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357845, -0.435185, -0.826173,
		0.584325, -0.585765, 0.561643,
		-0.728362, -0.683735, 0.044676,
		18.703123, 22.679867, 14.757334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578341, 22.548298, 14.593476>,  <19.212976, 23.158482, 14.726060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578341, 22.548298, 14.593476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.196815, 22.450436, 14.523750>,  <18.967901, 22.391718, 14.481915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.196815, 22.450436, 14.523750>,  <19.578341, 22.548298, 14.593476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196815, 22.450436, 14.523750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264983, -0.411867, -0.871866,
		0.141512, -0.877787, 0.457673,
		-0.953812, -0.244655, -0.174314,
		18.910671, 22.377039, 14.471456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622429, 21.873526, 14.384558>,  <19.578341, 22.548298, 14.593476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622429, 21.873526, 14.384558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258533, 21.980038, 14.257139>,  <19.040195, 22.043945, 14.180688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258533, 21.980038, 14.257139>,  <19.622429, 21.873526, 14.384558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258533, 21.980038, 14.257139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176035, -0.447479, -0.876798,
		-0.376015, -0.853732, 0.360214,
		-0.909739, 0.266279, -0.318545,
		18.985613, 22.059921, 14.161575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308949, 21.242428, 13.971771>,  <19.622429, 21.873526, 14.384558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308949, 21.242428, 13.971771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.098660, 21.557598, 13.843527>,  <18.972486, 21.746700, 13.766581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.098660, 21.557598, 13.843527>,  <19.308949, 21.242428, 13.971771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098660, 21.557598, 13.843527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100631, -0.431856, -0.896311,
		-0.844683, -0.438947, 0.306326,
		-0.525722, 0.787925, -0.320610,
		18.940943, 21.793976, 13.747344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766920, 20.998449, 13.542292>,  <19.308949, 21.242428, 13.971771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766920, 20.998449, 13.542292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815475, 21.379364, 13.430283>,  <18.844608, 21.607914, 13.363077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815475, 21.379364, 13.430283>,  <18.766920, 20.998449, 13.542292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815475, 21.379364, 13.430283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099062, -0.292324, -0.951175,
		-0.987650, 0.087720, -0.129820,
		0.121386, 0.952288, -0.280024,
		18.851891, 21.665051, 13.346275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181627, 21.119322, 13.060975>,  <18.766920, 20.998449, 13.542292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181627, 21.119322, 13.060975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494961, 21.351997, 12.973312>,  <18.682961, 21.491602, 12.920714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494961, 21.351997, 12.973312>,  <18.181627, 21.119322, 13.060975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494961, 21.351997, 12.973312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026852, -0.383904, -0.922982,
		-0.621022, 0.717118, -0.316344,
		0.783333, 0.581687, -0.219157,
		18.729961, 21.526505, 12.907565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998102, 21.235249, 12.443919>,  <18.181627, 21.119322, 13.060975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998102, 21.235249, 12.443919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373379, 21.369144, 12.479122>,  <18.598545, 21.449482, 12.500244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373379, 21.369144, 12.479122>,  <17.998102, 21.235249, 12.443919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373379, 21.369144, 12.479122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137707, -0.127721, -0.982204,
		-0.317544, 0.933614, -0.165923,
		0.938191, 0.334742, 0.088008,
		18.654837, 21.469566, 12.505525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086094, 21.815002, 11.962519>,  <17.998102, 21.235249, 12.443919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086094, 21.815002, 11.962519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450993, 21.680481, 12.056079>,  <18.669931, 21.599768, 12.112215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450993, 21.680481, 12.056079>,  <18.086094, 21.815002, 11.962519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450993, 21.680481, 12.056079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180481, -0.182619, -0.966476,
		0.367742, 0.923878, -0.105897,
		0.912245, -0.336302, 0.233900,
		18.724667, 21.579590, 12.126248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436052, 22.058065, 11.415298>,  <18.086094, 21.815002, 11.962519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436052, 22.058065, 11.415298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665726, 21.761284, 11.553759>,  <18.803530, 21.583216, 11.636834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665726, 21.761284, 11.553759>,  <18.436052, 22.058065, 11.415298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665726, 21.761284, 11.553759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082077, -0.368496, -0.925999,
		0.814603, 0.560103, -0.150687,
		0.574183, -0.741953, 0.346149,
		18.837980, 21.538698, 11.657603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954279, 22.004131, 10.973207>,  <18.436052, 22.058065, 11.415298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954279, 22.004131, 10.973207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976833, 21.645733, 11.149394>,  <18.990366, 21.430695, 11.255106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976833, 21.645733, 11.149394>,  <18.954279, 22.004131, 10.973207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976833, 21.645733, 11.149394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343278, -0.396874, -0.851264,
		0.937540, 0.199203, 0.285198,
		0.056387, -0.895996, 0.440467,
		18.993750, 21.376934, 11.281534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519552, 21.712210, 10.691416>,  <18.954279, 22.004131, 10.973207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519552, 21.712210, 10.691416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366005, 21.369148, 10.828279>,  <19.273876, 21.163311, 10.910397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366005, 21.369148, 10.828279>,  <19.519552, 21.712210, 10.691416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366005, 21.369148, 10.828279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314759, -0.469889, -0.824700,
		0.868085, -0.208880, 0.450331,
		-0.383869, -0.857656, 0.342157,
		19.250845, 21.111851, 10.930925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982559, 21.179174, 10.624685>,  <19.519552, 21.712210, 10.691416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982559, 21.179174, 10.624685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620441, 21.009377, 10.618414>,  <19.403172, 20.907497, 10.614651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620441, 21.009377, 10.618414>,  <19.982559, 21.179174, 10.624685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620441, 21.009377, 10.618414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316994, -0.650544, -0.690150,
		0.282765, -0.629760, 0.723496,
		-0.905295, -0.424495, -0.015679,
		19.348852, 20.882029, 10.613710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085495, 20.516069, 10.460618>,  <19.982559, 21.179174, 10.624685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085495, 20.516069, 10.460618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.691021, 20.524338, 10.394879>,  <19.454336, 20.529299, 10.355436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.691021, 20.524338, 10.394879>,  <20.085495, 20.516069, 10.460618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691021, 20.524338, 10.394879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090701, -0.762824, -0.640213,
		-0.138602, -0.646276, 0.750411,
		-0.986186, 0.020672, -0.164347,
		19.395164, 20.530539, 10.345575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781811, 19.859768, 10.481971>,  <20.085495, 20.516069, 10.460618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781811, 19.859768, 10.481971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480919, 20.053345, 10.303108>,  <19.300383, 20.169491, 10.195790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.480919, 20.053345, 10.303108>,  <19.781811, 19.859768, 10.481971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480919, 20.053345, 10.303108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040410, -0.711249, -0.701778,
		-0.657656, -0.509831, 0.554581,
		-0.752233, 0.483939, -0.447155,
		19.255249, 20.198526, 10.168962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356344, 19.340298, 10.369270>,  <19.781811, 19.859768, 10.481971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356344, 19.340298, 10.369270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272594, 19.624947, 10.101015>,  <19.222345, 19.795736, 9.940062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272594, 19.624947, 10.101015>,  <19.356344, 19.340298, 10.369270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272594, 19.624947, 10.101015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044733, -0.678151, -0.733560,
		-0.976812, -0.183589, 0.110155,
		-0.209375, 0.711622, -0.670638,
		19.209782, 19.838434, 9.899823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744133, 19.144825, 10.165620>,  <19.356344, 19.340298, 10.369270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744133, 19.144825, 10.165620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.923271, 19.376854, 9.893458>,  <19.030754, 19.516071, 9.730162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.923271, 19.376854, 9.893458>,  <18.744133, 19.144825, 10.165620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.923271, 19.376854, 9.893458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098089, -0.724515, -0.682244,
		-0.888714, 0.372281, -0.267572,
		0.447846, 0.580074, -0.680403,
		19.057625, 19.550877, 9.689338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209171, 19.196657, 10.711464>,  <18.744133, 19.144825, 10.165620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209171, 19.196657, 10.711464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913246, 18.939117, 10.789575>,  <17.735691, 18.784594, 10.836441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913246, 18.939117, 10.789575>,  <18.209171, 19.196657, 10.711464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913246, 18.939117, 10.789575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423928, 0.671456, 0.607809,
		-0.522458, 0.366882, -0.769698,
		-0.739812, -0.643851, 0.195276,
		17.691303, 18.745962, 10.848158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.581017, 19.510473, 10.474874>,  <18.209171, 19.196657, 10.711464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.581017, 19.510473, 10.474874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491016, 19.250244, 10.765014>,  <17.437017, 19.094107, 10.939097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491016, 19.250244, 10.765014>,  <17.581017, 19.510473, 10.474874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491016, 19.250244, 10.765014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488357, 0.719478, 0.493821,
		-0.843139, -0.243121, -0.479592,
		-0.224998, -0.650572, 0.725350,
		17.423517, 19.055073, 10.982618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.934525, 19.708284, 10.588324>,  <17.581017, 19.510473, 10.474874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.934525, 19.708284, 10.588324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027035, 19.514633, 10.925876>,  <17.082541, 19.398443, 11.128407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027035, 19.514633, 10.925876>,  <16.934525, 19.708284, 10.588324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027035, 19.514633, 10.925876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530651, 0.664236, 0.526498,
		-0.815427, -0.569572, -0.103281,
		0.231276, -0.484127, 0.843880,
		17.096418, 19.369394, 11.179040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290525, 19.545357, 10.926060>,  <16.934525, 19.708284, 10.588324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290525, 19.545357, 10.926060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549721, 19.528561, 11.230256>,  <16.705238, 19.518484, 11.412774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549721, 19.528561, 11.230256>,  <16.290525, 19.545357, 10.926060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549721, 19.528561, 11.230256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652762, 0.483855, 0.582912,
		-0.392442, -0.874141, 0.286125,
		0.647990, -0.041988, 0.760491,
		16.744118, 19.515965, 11.458404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895402, 19.285061, 11.419467>,  <16.290525, 19.545357, 10.926060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895402, 19.285061, 11.419467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212933, 19.421459, 11.620887>,  <16.403450, 19.503298, 11.741739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212933, 19.421459, 11.620887>,  <15.895402, 19.285061, 11.419467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212933, 19.421459, 11.620887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608105, 0.454534, 0.650851,
		-0.006944, -0.822874, 0.568181,
		0.793826, 0.340994, 0.503550,
		16.451080, 19.523758, 11.771952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718040, 19.091909, 12.107090>,  <15.895402, 19.285061, 11.419467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718040, 19.091909, 12.107090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994306, 19.378757, 12.144445>,  <16.160065, 19.550865, 12.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994306, 19.378757, 12.144445>,  <15.718040, 19.091909, 12.107090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994306, 19.378757, 12.144445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339905, 0.207924, 0.917187,
		0.638315, -0.665212, 0.387359,
		0.690665, 0.717119, 0.093388,
		16.201506, 19.593893, 12.172462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844494, 18.960583, 12.733792>,  <15.718040, 19.091909, 12.107090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844494, 18.960583, 12.733792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.998237, 19.323418, 12.665132>,  <16.090483, 19.541119, 12.623935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.998237, 19.323418, 12.665132>,  <15.844494, 18.960583, 12.733792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998237, 19.323418, 12.665132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251739, 0.281870, 0.925838,
		0.888199, -0.312641, 0.336688,
		0.384357, 0.907086, -0.171652,
		16.113544, 19.595543, 12.613636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274111, 19.136997, 13.315606>,  <15.844494, 18.960583, 12.733792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274111, 19.136997, 13.315606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182129, 19.483864, 13.138906>,  <16.126940, 19.691984, 13.032887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182129, 19.483864, 13.138906>,  <16.274111, 19.136997, 13.315606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182129, 19.483864, 13.138906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372858, 0.340776, 0.863046,
		0.898943, 0.363170, 0.244968,
		-0.229953, 0.867168, -0.441749,
		16.113142, 19.744015, 13.006382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488190, 19.632915, 13.867585>,  <16.274111, 19.136997, 13.315606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488190, 19.632915, 13.867585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.258472, 19.812386, 13.593687>,  <16.120642, 19.920067, 13.429348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.258472, 19.812386, 13.593687>,  <16.488190, 19.632915, 13.867585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.258472, 19.812386, 13.593687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563272, 0.390404, 0.728224,
		0.594062, 0.803914, 0.028518,
		-0.574295, 0.448674, -0.684746,
		16.086184, 19.946987, 13.388264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559769, 20.425920, 13.910928>,  <16.488190, 19.632915, 13.867585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559769, 20.425920, 13.910928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.194405, 20.358418, 13.762766>,  <15.975185, 20.317915, 13.673869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.194405, 20.358418, 13.762766>,  <16.559769, 20.425920, 13.910928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194405, 20.358418, 13.762766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382878, 0.665068, 0.641162,
		0.138142, 0.727465, -0.672095,
		-0.913412, -0.168759, -0.370404,
		15.920381, 20.307791, 13.651645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294628, 21.077000, 13.920905>,  <16.559769, 20.425920, 13.910928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294628, 21.077000, 13.920905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978715, 20.835556, 13.877275>,  <15.789166, 20.690689, 13.851097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978715, 20.835556, 13.877275>,  <16.294628, 21.077000, 13.920905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978715, 20.835556, 13.877275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471784, 0.484136, 0.736907,
		-0.391998, 0.633457, -0.667136,
		-0.789783, -0.603610, -0.109075,
		15.741780, 20.654472, 13.844553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645455, 21.469725, 13.932130>,  <16.294628, 21.077000, 13.920905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645455, 21.469725, 13.932130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515929, 21.108868, 14.046169>,  <15.438213, 20.892353, 14.114594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515929, 21.108868, 14.046169>,  <15.645455, 21.469725, 13.932130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515929, 21.108868, 14.046169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273359, 0.377693, 0.884659,
		-0.905770, 0.208531, -0.368912,
		-0.323815, -0.902143, 0.285099,
		15.418785, 20.838224, 14.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965243, 21.564051, 14.168645>,  <15.645455, 21.469725, 13.932130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965243, 21.564051, 14.168645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.098205, 21.226669, 14.337448>,  <15.177981, 21.024240, 14.438730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.098205, 21.226669, 14.337448>,  <14.965243, 21.564051, 14.168645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098205, 21.226669, 14.337448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355497, 0.302398, 0.884408,
		-0.873573, -0.444003, -0.199328,
		0.332404, -0.843455, 0.422009,
		15.197926, 20.973633, 14.464050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418992, 21.438284, 14.602229>,  <14.965243, 21.564051, 14.168645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418992, 21.438284, 14.602229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686650, 21.174015, 14.738321>,  <14.847245, 21.015453, 14.819977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686650, 21.174015, 14.738321>,  <14.418992, 21.438284, 14.602229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686650, 21.174015, 14.738321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196687, 0.284053, 0.938418,
		-0.716630, -0.694857, 0.060127,
		0.669146, -0.660672, 0.340230,
		14.887394, 20.975813, 14.840390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120490, 21.010992, 15.185397>,  <14.418992, 21.438284, 14.602229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120490, 21.010992, 15.185397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518193, 21.008652, 15.228134>,  <14.756815, 21.007248, 15.253777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.518193, 21.008652, 15.228134>,  <14.120490, 21.010992, 15.185397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518193, 21.008652, 15.228134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104558, 0.159156, 0.981701,
		-0.022748, -0.987236, 0.157631,
		0.994259, -0.005851, 0.106844,
		14.816471, 21.006897, 15.260187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.214857, 20.720570, 15.869628>,  <14.120490, 21.010992, 15.185397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.214857, 20.720570, 15.869628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574174, 20.881329, 15.798580>,  <14.789764, 20.977785, 15.755952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574174, 20.881329, 15.798580>,  <14.214857, 20.720570, 15.869628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574174, 20.881329, 15.798580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074663, 0.258741, 0.963057,
		0.433008, -0.878368, 0.202418,
		0.898293, 0.401898, -0.177618,
		14.843661, 21.001898, 15.745295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618374, 20.507500, 16.387535>,  <14.214857, 20.720570, 15.869628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618374, 20.507500, 16.387535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.813312, 20.829380, 16.251917>,  <14.930274, 21.022509, 16.170546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.813312, 20.829380, 16.251917>,  <14.618374, 20.507500, 16.387535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813312, 20.829380, 16.251917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285126, 0.220349, 0.932818,
		0.825347, -0.551275, -0.122056,
		0.487344, 0.804700, -0.339047,
		14.959515, 21.070789, 16.150202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260194, 20.482222, 16.678123>,  <14.618374, 20.507500, 16.387535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260194, 20.482222, 16.678123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192662, 20.861126, 16.569168>,  <15.152143, 21.088469, 16.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192662, 20.861126, 16.569168>,  <15.260194, 20.482222, 16.678123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192662, 20.861126, 16.569168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114522, 0.293334, 0.949126,
		0.978969, 0.129047, -0.158006,
		-0.168830, 0.947260, -0.272386,
		15.142014, 21.145304, 16.487452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902792, 20.801695, 16.790310>,  <15.260194, 20.482222, 16.678123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902792, 20.801695, 16.790310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630965, 21.095055, 16.783243>,  <15.467869, 21.271070, 16.779003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630965, 21.095055, 16.783243>,  <15.902792, 20.801695, 16.790310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630965, 21.095055, 16.783243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283577, 0.284817, 0.915676,
		0.676589, 0.617254, -0.401528,
		-0.679567, 0.733401, -0.017665,
		15.427095, 21.315075, 16.777945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305437, 21.430025, 16.934645>,  <15.902792, 20.801695, 16.790310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305437, 21.430025, 16.934645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924012, 21.514580, 17.020464>,  <15.695157, 21.565313, 17.071957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924012, 21.514580, 17.020464>,  <16.305437, 21.430025, 16.934645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924012, 21.514580, 17.020464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283759, 0.391693, 0.875247,
		0.100979, 0.895484, -0.433487,
		-0.953564, 0.211387, 0.214549,
		15.637943, 21.577995, 17.084829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.250776, 22.179703, 17.190866>,  <16.305437, 21.430025, 16.934645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.250776, 22.179703, 17.190866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.940764, 21.965691, 17.325371>,  <15.754758, 21.837284, 17.406073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.940764, 21.965691, 17.325371>,  <16.250776, 22.179703, 17.190866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.940764, 21.965691, 17.325371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227577, 0.260100, 0.938380,
		-0.589524, 0.803797, -0.079825,
		-0.775029, -0.535031, 0.336261,
		15.708256, 21.805182, 17.426249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857457, 22.601433, 17.516991>,  <16.250776, 22.179703, 17.190866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857457, 22.601433, 17.516991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740149, 22.256882, 17.682894>,  <15.669765, 22.050152, 17.782434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740149, 22.256882, 17.682894>,  <15.857457, 22.601433, 17.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740149, 22.256882, 17.682894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141511, 0.389941, 0.909901,
		-0.945498, 0.325539, 0.007536,
		-0.293270, -0.861377, 0.414756,
		15.652168, 21.998468, 17.807322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611709, 22.852524, 18.224918>,  <15.857457, 22.601433, 17.516991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611709, 22.852524, 18.224918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667722, 22.460129, 18.278658>,  <15.701330, 22.224691, 18.310902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667722, 22.460129, 18.278658>,  <15.611709, 22.852524, 18.224918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667722, 22.460129, 18.278658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028538, 0.139630, 0.989792,
		-0.989735, -0.134770, 0.047548,
		0.140033, -0.980990, 0.134351,
		15.709732, 22.165833, 18.318964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212652, 22.714453, 18.841608>,  <15.611709, 22.852524, 18.224918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.212652, 22.714453, 18.841608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450620, 22.395584, 18.800451>,  <15.593400, 22.204262, 18.775757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450620, 22.395584, 18.800451>,  <15.212652, 22.714453, 18.841608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450620, 22.395584, 18.800451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093810, -0.058274, 0.993883,
		-0.798293, -0.600932, 0.040115,
		0.594919, -0.797173, -0.102893,
		15.629095, 22.156433, 18.769583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980607, 22.269474, 19.395725>,  <15.212652, 22.714453, 18.841608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980607, 22.269474, 19.395725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347991, 22.162350, 19.279306>,  <15.568421, 22.098076, 19.209455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347991, 22.162350, 19.279306>,  <14.980607, 22.269474, 19.395725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347991, 22.162350, 19.279306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251519, -0.172410, 0.952372,
		-0.305236, -0.947920, -0.090992,
		0.918460, -0.267812, -0.291046,
		15.623529, 22.082006, 19.191992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135576, 21.674593, 19.865662>,  <14.980607, 22.269474, 19.395725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135576, 21.674593, 19.865662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.499207, 21.750271, 19.717186>,  <15.717386, 21.795677, 19.628101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.499207, 21.750271, 19.717186>,  <15.135576, 21.674593, 19.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.499207, 21.750271, 19.717186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391934, -0.086204, 0.915946,
		0.141295, -0.978148, -0.152518,
		0.909079, 0.189196, -0.371190,
		15.771931, 21.807030, 19.605829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593478, 21.136236, 20.106100>,  <15.135576, 21.674593, 19.865662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593478, 21.136236, 20.106100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848517, 21.428848, 20.009491>,  <16.001541, 21.604416, 19.951525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848517, 21.428848, 20.009491>,  <15.593478, 21.136236, 20.106100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848517, 21.428848, 20.009491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509274, -0.165015, 0.844636,
		0.578020, -0.661541, -0.477762,
		0.637599, 0.731528, -0.241524,
		16.039797, 21.648306, 19.937035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282129, 20.894642, 20.089495>,  <15.593478, 21.136236, 20.106100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282129, 20.894642, 20.089495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320896, 21.288445, 20.147942>,  <16.344156, 21.524727, 20.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320896, 21.288445, 20.147942>,  <16.282129, 20.894642, 20.089495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320896, 21.288445, 20.147942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664356, -0.173306, 0.727046,
		0.741106, 0.026609, -0.670861,
		0.096918, 0.984508, 0.146116,
		16.349972, 21.583797, 20.191776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025820, 20.965738, 20.082293>,  <16.282129, 20.894642, 20.089495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025820, 20.965738, 20.082293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867950, 21.280666, 20.271759>,  <16.773230, 21.469624, 20.385439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867950, 21.280666, 20.271759>,  <17.025820, 20.965738, 20.082293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867950, 21.280666, 20.271759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656546, -0.118996, 0.744841,
		0.642793, 0.604952, -0.469947,
		-0.394671, 0.787320, 0.473668,
		16.749550, 21.516863, 20.413860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578062, 21.389408, 20.354149>,  <17.025820, 20.965738, 20.082293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578062, 21.389408, 20.354149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270859, 21.542683, 20.559414>,  <17.086536, 21.634647, 20.682573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270859, 21.542683, 20.559414>,  <17.578062, 21.389408, 20.354149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270859, 21.542683, 20.559414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586103, 0.097532, 0.804345,
		0.258164, 0.918507, -0.299492,
		-0.768007, 0.383186, 0.513161,
		17.040457, 21.657639, 20.713362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785158, 22.012545, 20.566607>,  <17.578062, 21.389408, 20.354149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785158, 22.012545, 20.566607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.515720, 21.904732, 20.841888>,  <17.354057, 21.840044, 21.007057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.515720, 21.904732, 20.841888>,  <17.785158, 22.012545, 20.566607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.515720, 21.904732, 20.841888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633911, 0.268093, 0.725453,
		-0.380034, 0.924921, -0.009728,
		-0.673595, -0.269530, 0.688203,
		17.313643, 21.823874, 21.048349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830843, 22.555096, 21.092213>,  <17.785158, 22.012545, 20.566607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830843, 22.555096, 21.092213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618824, 22.264469, 21.267097>,  <17.491611, 22.090094, 21.372028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618824, 22.264469, 21.267097>,  <17.830843, 22.555096, 21.092213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618824, 22.264469, 21.267097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474461, 0.173216, 0.863066,
		-0.702804, 0.664907, 0.252913,
		-0.530050, -0.726564, 0.437210,
		17.459808, 22.046499, 21.398260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556532, 22.844343, 21.769478>,  <17.830843, 22.555096, 21.092213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.556532, 22.844343, 21.769478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547626, 22.444759, 21.785378>,  <17.542284, 22.205009, 21.794918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547626, 22.444759, 21.785378>,  <17.556532, 22.844343, 21.769478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547626, 22.444759, 21.785378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520896, 0.022346, 0.853327,
		-0.853329, 0.039704, 0.519858,
		-0.022263, -0.998962, 0.039750,
		17.540947, 22.145071, 21.797302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442574, 22.644201, 22.499800>,  <17.556532, 22.844343, 21.769478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442574, 22.644201, 22.499800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585930, 22.313023, 22.327261>,  <17.671944, 22.114315, 22.223738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.585930, 22.313023, 22.327261>,  <17.442574, 22.644201, 22.499800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585930, 22.313023, 22.327261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577215, -0.166621, 0.799412,
		-0.733742, -0.535483, 0.418188,
		0.358393, -0.827947, -0.431346,
		17.693447, 22.064638, 22.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288971, 22.049084, 22.946409>,  <17.442574, 22.644201, 22.499800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288971, 22.049084, 22.946409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611252, 21.966690, 22.724268>,  <17.804621, 21.917253, 22.590984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611252, 21.966690, 22.724268>,  <17.288971, 22.049084, 22.946409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611252, 21.966690, 22.724268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528706, -0.172610, 0.831069,
		-0.267048, -0.963211, -0.030166,
		0.805702, -0.205987, -0.555351,
		17.852962, 21.904894, 22.557663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539246, 21.414766, 23.319658>,  <17.288971, 22.049084, 22.946409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539246, 21.414766, 23.319658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832561, 21.566101, 23.093687>,  <18.008551, 21.656902, 22.958105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832561, 21.566101, 23.093687>,  <17.539246, 21.414766, 23.319658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832561, 21.566101, 23.093687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635173, -0.084759, 0.767706,
		0.242570, -0.921778, -0.302463,
		0.733291, 0.378339, -0.564928,
		18.052549, 21.679602, 22.924208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125063, 20.911221, 23.380880>,  <17.539246, 21.414766, 23.319658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125063, 20.911221, 23.380880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278732, 21.260159, 23.259933>,  <18.370934, 21.469521, 23.187365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278732, 21.260159, 23.259933>,  <18.125063, 20.911221, 23.380880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278732, 21.260159, 23.259933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627416, -0.006412, 0.778658,
		0.677319, -0.488850, -0.549786,
		0.384172, 0.872345, -0.302369,
		18.393984, 21.521862, 23.169222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732161, 20.756050, 23.655798>,  <18.125063, 20.911221, 23.380880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732161, 20.756050, 23.655798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738972, 21.149220, 23.582512>,  <18.743059, 21.385122, 23.538540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.738972, 21.149220, 23.582512>,  <18.732161, 20.756050, 23.655798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738972, 21.149220, 23.582512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671717, 0.124483, 0.730274,
		0.740612, -0.135504, -0.658128,
		0.017029, 0.982926, -0.183214,
		18.744080, 21.444098, 23.527548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194962, 20.159342, 24.111944>,  <18.732161, 20.756050, 23.655798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194962, 20.159342, 24.111944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915791, 19.968964, 24.326000>,  <18.748289, 19.854736, 24.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915791, 19.968964, 24.326000>,  <19.194962, 20.159342, 24.111944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915791, 19.968964, 24.326000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433583, -0.313915, -0.844668,
		0.570004, -0.821543, 0.012727,
		-0.697926, -0.475946, 0.535140,
		18.706413, 19.826180, 24.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.076769, 19.510157, 23.785992>,  <19.194962, 20.159342, 24.111944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.076769, 19.510157, 23.785992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752911, 19.535221, 24.019417>,  <18.558596, 19.550261, 24.159472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752911, 19.535221, 24.019417>,  <19.076769, 19.510157, 23.785992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752911, 19.535221, 24.019417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569082, -0.327066, -0.754436,
		0.143588, -0.942922, 0.300468,
		-0.809647, 0.062662, 0.583562,
		18.510017, 19.554020, 24.194485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652132, 18.974131, 23.626310>,  <19.076769, 19.510157, 23.785992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652132, 18.974131, 23.626310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360760, 19.193108, 23.791088>,  <18.185936, 19.324493, 23.889954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360760, 19.193108, 23.791088>,  <18.652132, 18.974131, 23.626310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360760, 19.193108, 23.791088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656614, -0.386191, -0.647854,
		-0.195574, -0.742404, 0.640771,
		-0.728429, 0.547442, 0.411943,
		18.142231, 19.357340, 23.914671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076130, 18.474712, 23.628109>,  <18.652132, 18.974131, 23.626310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076130, 18.474712, 23.628109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890469, 18.825397, 23.678608>,  <17.779072, 19.035809, 23.708908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890469, 18.825397, 23.678608>,  <18.076130, 18.474712, 23.628109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890469, 18.825397, 23.678608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698679, -0.274775, -0.660565,
		-0.544435, -0.394810, 0.740078,
		-0.464152, 0.876712, 0.126248,
		17.751223, 19.088411, 23.716482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306608, 18.302721, 23.745682>,  <18.076130, 18.474712, 23.628109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306608, 18.302721, 23.745682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340385, 18.677608, 23.610334>,  <17.360651, 18.902540, 23.529127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340385, 18.677608, 23.610334>,  <17.306608, 18.302721, 23.745682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340385, 18.677608, 23.610334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779104, -0.149595, -0.608784,
		-0.621181, 0.315031, 0.717558,
		0.084443, 0.937218, -0.338368,
		17.365719, 18.958775, 23.508823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610441, 18.427759, 23.527050>,  <17.306608, 18.302721, 23.745682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610441, 18.427759, 23.527050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831707, 18.717239, 23.361996>,  <16.964466, 18.890928, 23.262964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831707, 18.717239, 23.361996>,  <16.610441, 18.427759, 23.527050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831707, 18.717239, 23.361996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557904, -0.046025, -0.828628,
		-0.618671, 0.688577, 0.378297,
		0.553163, 0.723701, -0.412634,
		16.997656, 18.934349, 23.238205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158825, 18.911835, 23.350447>,  <16.610441, 18.427759, 23.527050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158825, 18.911835, 23.350447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494175, 18.917278, 23.132477>,  <16.695385, 18.920546, 23.001696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494175, 18.917278, 23.132477>,  <16.158825, 18.911835, 23.350447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494175, 18.917278, 23.132477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539434, -0.122964, -0.833001,
		-0.078343, 0.992318, -0.095748,
		0.838375, 0.013610, -0.544924,
		16.745687, 18.921362, 22.969000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010912, 19.470633, 22.842451>,  <16.158825, 18.911835, 23.350447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010912, 19.470633, 22.842451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315987, 19.273109, 22.675373>,  <16.499031, 19.154596, 22.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315987, 19.273109, 22.675373>,  <16.010912, 19.470633, 22.842451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315987, 19.273109, 22.675373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456200, 0.047060, -0.888632,
		0.458468, 0.868298, -0.189382,
		0.762685, -0.493806, -0.417693,
		16.544792, 19.124968, 22.550066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088017, 19.802721, 22.204874>,  <16.010912, 19.470633, 22.842451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088017, 19.802721, 22.204874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285328, 19.458149, 22.156519>,  <16.403715, 19.251406, 22.127506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285328, 19.458149, 22.156519>,  <16.088017, 19.802721, 22.204874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285328, 19.458149, 22.156519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413894, -0.110197, -0.903631,
		0.765092, 0.495779, -0.410898,
		0.493281, -0.861429, -0.120889,
		16.433311, 19.199720, 22.120253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354536, 19.898977, 21.537077>,  <16.088017, 19.802721, 22.204874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354536, 19.898977, 21.537077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393345, 19.504623, 21.591654>,  <16.416630, 19.268011, 21.624399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393345, 19.504623, 21.591654>,  <16.354536, 19.898977, 21.537077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393345, 19.504623, 21.591654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312252, -0.160319, -0.936374,
		0.945032, 0.048244, -0.323400,
		0.097022, -0.985886, 0.136442,
		16.422451, 19.208858, 21.632587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711359, 19.584673, 20.859629>,  <16.354536, 19.898977, 21.537077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711359, 19.584673, 20.859629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497879, 19.292599, 21.030272>,  <16.369791, 19.117353, 21.132658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497879, 19.292599, 21.030272>,  <16.711359, 19.584673, 20.859629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497879, 19.292599, 21.030272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362861, -0.257934, -0.895434,
		0.763869, -0.632692, -0.127297,
		-0.533700, -0.730185, 0.426608,
		16.337769, 19.073544, 21.158255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843115, 19.006313, 20.466770>,  <16.711359, 19.584673, 20.859629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843115, 19.006313, 20.466770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489239, 18.902493, 20.621664>,  <16.276913, 18.840200, 20.714602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489239, 18.902493, 20.621664>,  <16.843115, 19.006313, 20.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489239, 18.902493, 20.621664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238438, -0.461850, -0.854308,
		0.400584, -0.848131, 0.346708,
		-0.884692, -0.259554, 0.387236,
		16.223831, 18.824627, 20.737835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741339, 18.560383, 20.062666>,  <16.843115, 19.006313, 20.466770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741339, 18.560383, 20.062666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387047, 18.617004, 20.239502>,  <16.174471, 18.650978, 20.345604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387047, 18.617004, 20.239502>,  <16.741339, 18.560383, 20.062666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387047, 18.617004, 20.239502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462861, -0.197028, -0.864257,
		-0.035230, -0.970126, 0.240031,
		-0.885731, 0.141549, 0.442092,
		16.121328, 18.659470, 20.372129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348694, 18.036715, 19.756021>,  <16.741339, 18.560383, 20.062666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348694, 18.036715, 19.756021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098705, 18.305172, 19.915508>,  <15.948712, 18.466248, 20.011200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098705, 18.305172, 19.915508>,  <16.348694, 18.036715, 19.756021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098705, 18.305172, 19.915508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520273, 0.022691, -0.853699,
		-0.582003, -0.740978, 0.334997,
		-0.624971, 0.671146, 0.398717,
		15.911214, 18.506516, 20.035124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705555, 17.852365, 19.485943>,  <16.348694, 18.036715, 19.756021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705555, 17.852365, 19.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.664956, 18.232368, 19.604048>,  <15.640596, 18.460371, 19.674911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.664956, 18.232368, 19.604048>,  <15.705555, 17.852365, 19.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664956, 18.232368, 19.604048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679032, 0.150753, -0.718463,
		-0.727059, -0.273416, 0.629786,
		-0.101497, 0.950009, 0.295264,
		15.634507, 18.517372, 19.692627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043586, 17.938364, 19.521135>,  <15.705555, 17.852365, 19.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043586, 17.938364, 19.521135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220222, 18.291279, 19.455936>,  <15.326203, 18.503027, 19.416817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220222, 18.291279, 19.455936>,  <15.043586, 17.938364, 19.521135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220222, 18.291279, 19.455936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628699, 0.174672, -0.757778,
		-0.640106, 0.437104, 0.631826,
		0.441590, 0.882287, -0.162998,
		15.352698, 18.555965, 19.407038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489160, 18.343618, 19.344547>,  <15.043586, 17.938364, 19.521135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489160, 18.343618, 19.344547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804065, 18.556278, 19.219604>,  <14.993008, 18.683874, 19.144638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804065, 18.556278, 19.219604>,  <14.489160, 18.343618, 19.344547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804065, 18.556278, 19.219604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474212, 0.198230, -0.857804,
		-0.394133, 0.823440, 0.408174,
		0.787262, 0.531650, -0.312356,
		15.040243, 18.715773, 19.125898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179912, 18.833628, 19.031914>,  <14.489160, 18.343618, 19.344547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179912, 18.833628, 19.031914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546716, 18.870083, 18.876589>,  <14.766798, 18.891956, 18.783394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546716, 18.870083, 18.876589>,  <14.179912, 18.833628, 19.031914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.546716, 18.870083, 18.876589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398426, 0.254897, -0.881070,
		0.018679, 0.962664, 0.270056,
		0.917010, 0.091139, -0.388311,
		14.821819, 18.897425, 18.760096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231023, 19.451759, 18.664564>,  <14.179912, 18.833628, 19.031914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231023, 19.451759, 18.664564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500514, 19.218651, 18.482809>,  <14.662209, 19.078785, 18.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.500514, 19.218651, 18.482809>,  <14.231023, 19.451759, 18.664564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500514, 19.218651, 18.482809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323023, 0.320780, -0.890368,
		0.664641, 0.746643, 0.027869,
		0.673727, -0.582773, -0.454386,
		14.702632, 19.043819, 18.346493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.455997, 19.874958, 18.111980>,  <14.231023, 19.451759, 18.664564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.455997, 19.874958, 18.111980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587411, 19.510113, 18.013905>,  <14.666259, 19.291206, 17.955059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587411, 19.510113, 18.013905>,  <14.455997, 19.874958, 18.111980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587411, 19.510113, 18.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138088, 0.210426, -0.967808,
		0.934343, 0.351815, -0.056819,
		0.328533, -0.912111, -0.245192,
		14.685971, 19.236479, 17.940348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027362, 19.968349, 17.542692>,  <14.455997, 19.874958, 18.111980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027362, 19.968349, 17.542692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910760, 19.585732, 17.539999>,  <14.840799, 19.356161, 17.538383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910760, 19.585732, 17.539999>,  <15.027362, 19.968349, 17.542692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910760, 19.585732, 17.539999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015492, 0.002318, -0.999877,
		0.956444, -0.291573, 0.014143,
		-0.291504, -0.956546, -0.006734,
		14.823309, 19.298767, 17.537979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334467, 19.832741, 16.938597>,  <15.027362, 19.968349, 17.542692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334467, 19.832741, 16.938597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072291, 19.536243, 16.996504>,  <14.914986, 19.358345, 17.031248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072291, 19.536243, 16.996504>,  <15.334467, 19.832741, 16.938597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072291, 19.536243, 16.996504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006861, -0.197517, -0.980276,
		0.755217, -0.641517, 0.134546,
		-0.655439, -0.741244, 0.144767,
		14.875660, 19.313869, 17.039934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501867, 19.400261, 16.500051>,  <15.334467, 19.832741, 16.938597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501867, 19.400261, 16.500051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133922, 19.276234, 16.596140>,  <14.913154, 19.201817, 16.653793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133922, 19.276234, 16.596140>,  <15.501867, 19.400261, 16.500051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133922, 19.276234, 16.596140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150047, -0.287686, -0.945898,
		0.362402, -0.906142, 0.218108,
		-0.919865, -0.310069, 0.240222,
		14.857963, 19.183212, 16.668207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460504, 18.646812, 16.268625>,  <15.501867, 19.400261, 16.500051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.460504, 18.646812, 16.268625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089864, 18.788151, 16.320099>,  <14.867479, 18.872953, 16.350983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.089864, 18.788151, 16.320099>,  <15.460504, 18.646812, 16.268625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089864, 18.788151, 16.320099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225821, -0.249208, -0.941754,
		-0.300701, -0.901687, 0.310709,
		-0.926598, 0.353351, 0.128683,
		14.811884, 18.894154, 16.358704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986294, 18.062944, 16.199369>,  <15.460504, 18.646812, 16.268625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.986294, 18.062944, 16.199369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802497, 18.406914, 16.110468>,  <14.692219, 18.613297, 16.057127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.802497, 18.406914, 16.110468>,  <14.986294, 18.062944, 16.199369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802497, 18.406914, 16.110468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206525, -0.346819, -0.914912,
		-0.863837, -0.374494, 0.336957,
		-0.459491, 0.859925, -0.222252,
		14.664649, 18.664892, 16.043793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362416, 17.792150, 16.000996>,  <14.986294, 18.062944, 16.199369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362416, 17.792150, 16.000996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417583, 18.161888, 15.858690>,  <14.450683, 18.383730, 15.773307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417583, 18.161888, 15.858690>,  <14.362416, 17.792150, 16.000996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417583, 18.161888, 15.858690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373504, -0.284139, -0.883040,
		-0.917319, 0.254665, 0.306059,
		0.137916, 0.924344, -0.355764,
		14.458958, 18.439192, 15.751961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808333, 17.850880, 15.448913>,  <14.362416, 17.792150, 16.000996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808333, 17.850880, 15.448913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.064435, 18.144341, 15.357847>,  <14.218096, 18.320417, 15.303208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.064435, 18.144341, 15.357847>,  <13.808333, 17.850880, 15.448913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.064435, 18.144341, 15.357847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338180, 0.003098, -0.941076,
		-0.689716, 0.679520, 0.250089,
		0.640255, 0.733650, -0.227663,
		14.256512, 18.364435, 15.289548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.366691, 18.236309, 14.955200>,  <13.808333, 17.850880, 15.448913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.366691, 18.236309, 14.955200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759767, 18.303581, 14.924120>,  <13.995612, 18.343945, 14.905472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759767, 18.303581, 14.924120>,  <13.366691, 18.236309, 14.955200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759767, 18.303581, 14.924120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059801, -0.109000, -0.992241,
		-0.175344, 0.979711, -0.097056,
		0.982689, 0.168179, -0.077700,
		14.054573, 18.354034, 14.900810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410373, 18.587687, 14.336067>,  <13.366691, 18.236309, 14.955200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410373, 18.587687, 14.336067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782214, 18.461548, 14.412376>,  <14.005319, 18.385864, 14.458161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782214, 18.461548, 14.412376>,  <13.410373, 18.587687, 14.336067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782214, 18.461548, 14.412376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163720, -0.110421, -0.980308,
		0.330201, 0.942531, -0.051019,
		0.929604, -0.315346, 0.190772,
		14.061095, 18.366943, 14.469608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844304, 18.972420, 13.868094>,  <13.410373, 18.587687, 14.336067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844304, 18.972420, 13.868094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.053107, 18.642502, 13.955013>,  <14.178389, 18.444550, 14.007165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.053107, 18.642502, 13.955013>,  <13.844304, 18.972420, 13.868094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.053107, 18.642502, 13.955013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193723, -0.133457, -0.971936,
		0.830650, 0.549453, 0.090117,
		0.522007, -0.824797, 0.217298,
		14.209709, 18.395063, 14.020203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481883, 19.067339, 13.622862>,  <13.844304, 18.972420, 13.868094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.481883, 19.067339, 13.622862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440629, 18.669979, 13.642929>,  <14.415876, 18.431562, 13.654969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440629, 18.669979, 13.642929>,  <14.481883, 19.067339, 13.622862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440629, 18.669979, 13.642929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006353, -0.049778, -0.998740,
		0.994647, -0.103324, -0.001177,
		-0.103135, -0.993401, 0.050168,
		14.409688, 18.371958, 13.657979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.005887, 18.869244, 13.106303>,  <14.481883, 19.067339, 13.622862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.005887, 18.869244, 13.106303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753089, 18.562519, 13.151173>,  <14.601410, 18.378485, 13.178094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753089, 18.562519, 13.151173>,  <15.005887, 18.869244, 13.106303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753089, 18.562519, 13.151173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005769, -0.140085, -0.990123,
		0.774951, -0.626400, 0.084109,
		-0.631995, -0.766811, 0.112173,
		14.563491, 18.332476, 13.184824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146223, 18.390783, 12.548741>,  <15.005887, 18.869244, 13.106303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146223, 18.390783, 12.548741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799174, 18.246212, 12.685328>,  <14.590944, 18.159470, 12.767280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799174, 18.246212, 12.685328>,  <15.146223, 18.390783, 12.548741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799174, 18.246212, 12.685328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175813, -0.419385, -0.890621,
		0.465102, -0.832758, 0.300324,
		-0.867623, -0.361429, 0.341466,
		14.538887, 18.137783, 12.787767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103693, 17.674620, 12.446802>,  <15.146223, 18.390783, 12.548741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103693, 17.674620, 12.446802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719884, 17.787056, 12.453777>,  <14.489598, 17.854519, 12.457962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719884, 17.787056, 12.453777>,  <15.103693, 17.674620, 12.446802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719884, 17.787056, 12.453777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119508, -0.350318, -0.928976,
		-0.255018, -0.893457, 0.369730,
		-0.959523, 0.281092, 0.017438,
		14.432027, 17.871384, 12.459008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791678, 17.092003, 12.236739>,  <15.103693, 17.674620, 12.446802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791678, 17.092003, 12.236739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526895, 17.384541, 12.171082>,  <14.368024, 17.560064, 12.131689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526895, 17.384541, 12.171082>,  <14.791678, 17.092003, 12.236739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526895, 17.384541, 12.171082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173011, -0.362162, -0.915918,
		-0.729299, -0.577903, 0.366267,
		-0.661960, 0.731346, -0.164141,
		14.328306, 17.603945, 12.121840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174793, 16.742075, 12.105626>,  <14.791678, 17.092003, 12.236739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174793, 16.742075, 12.105626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131640, 17.112049, 11.959826>,  <14.105749, 17.334034, 11.872347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131640, 17.112049, 11.959826>,  <14.174793, 16.742075, 12.105626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131640, 17.112049, 11.959826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369786, -0.377665, -0.848898,
		-0.922833, 0.043206, 0.382771,
		-0.107882, 0.924934, -0.364498,
		14.099276, 17.389530, 11.850477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425589, 16.814070, 11.788531>,  <14.174793, 16.742075, 12.105626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425589, 16.814070, 11.788531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659862, 17.095249, 11.627118>,  <13.800426, 17.263958, 11.530271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659862, 17.095249, 11.627118>,  <13.425589, 16.814070, 11.788531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659862, 17.095249, 11.627118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370304, -0.210805, -0.904675,
		-0.721007, 0.679281, 0.136840,
		0.585682, 0.702950, -0.403533,
		13.835567, 17.306133, 11.506059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037688, 17.132866, 11.291320>,  <13.425589, 16.814070, 11.788531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037688, 17.132866, 11.291320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412133, 17.219112, 11.180178>,  <13.636800, 17.270861, 11.113492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412133, 17.219112, 11.180178>,  <13.037688, 17.132866, 11.291320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412133, 17.219112, 11.180178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234959, -0.204464, -0.950257,
		-0.261704, 0.954831, -0.140740,
		0.936112, 0.215618, -0.277855,
		13.692966, 17.283798, 11.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012219, 17.468721, 10.615013>,  <13.037688, 17.132866, 11.291320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012219, 17.468721, 10.615013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391587, 17.342777, 10.629794>,  <13.619207, 17.267212, 10.638662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391587, 17.342777, 10.629794>,  <13.012219, 17.468721, 10.615013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391587, 17.342777, 10.629794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003688, -0.105592, -0.994403,
		0.316998, 0.943247, -0.098984,
		0.948419, -0.314859, 0.036951,
		13.676113, 17.248320, 10.640880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285064, 17.700617, 10.022096>,  <13.012219, 17.468721, 10.615013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285064, 17.700617, 10.022096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566052, 17.439411, 10.135308>,  <13.734646, 17.282688, 10.203236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566052, 17.439411, 10.135308>,  <13.285064, 17.700617, 10.022096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.566052, 17.439411, 10.135308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006709, -0.391585, -0.920117,
		0.711681, 0.648254, -0.270696,
		0.702471, -0.653014, 0.283033,
		13.776793, 17.243507, 10.220218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707533, 17.673271, 9.431551>,  <13.285064, 17.700617, 10.022096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707533, 17.673271, 9.431551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742257, 17.330803, 9.635292>,  <13.763091, 17.125322, 9.757537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742257, 17.330803, 9.635292>,  <13.707533, 17.673271, 9.431551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742257, 17.330803, 9.635292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007546, -0.511833, -0.859052,
		0.996196, 0.070730, -0.050893,
		0.086810, -0.856168, 0.509353,
		13.768300, 17.073952, 9.788097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335249, 17.354362, 9.187881>,  <13.707533, 17.673271, 9.431551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335249, 17.354362, 9.187881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024083, 17.128838, 9.298850>,  <13.837383, 16.993523, 9.365432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024083, 17.128838, 9.298850>,  <14.335249, 17.354362, 9.187881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024083, 17.128838, 9.298850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030831, -0.475214, -0.879330,
		0.627613, -0.675490, 0.387059,
		-0.777914, -0.563813, 0.277425,
		13.790709, 16.959694, 9.382077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507477, 16.618320, 9.062646>,  <14.335249, 17.354362, 9.187881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.507477, 16.618320, 9.062646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111131, 16.672192, 9.059836>,  <13.873323, 16.704514, 9.058150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111131, 16.672192, 9.059836>,  <14.507477, 16.618320, 9.062646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111131, 16.672192, 9.059836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083312, -0.652252, -0.753410,
		-0.106049, -0.745942, 0.657514,
		-0.990864, 0.134677, -0.007025,
		13.813871, 16.712595, 9.057729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225327, 15.952658, 9.062280>,  <14.507477, 16.618320, 9.062646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225327, 15.952658, 9.062280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937835, 16.188622, 8.915076>,  <13.765339, 16.330200, 8.826755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937835, 16.188622, 8.915076>,  <14.225327, 15.952658, 9.062280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937835, 16.188622, 8.915076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182622, -0.670875, -0.718732,
		-0.670875, -0.449370, 0.589910,
		0.718732, -0.589910, 0.368008,
		13.722215, 16.365595, 8.804674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536507, 15.543836, 8.907063>,  <14.225327, 15.952658, 9.062280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536507, 15.543836, 8.907063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556239, 15.864002, 8.668098>,  <13.568079, 16.056103, 8.524719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556239, 15.864002, 8.668098>,  <13.536507, 15.543836, 8.907063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.556239, 15.864002, 8.668098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087896, -0.592340, -0.800879,
		-0.994907, 0.092020, 0.041132,
		0.049333, 0.800416, -0.597412,
		13.571039, 16.104128, 8.488874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.259082, 15.319828, 8.279199>,  <13.536507, 15.543836, 8.907063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.259082, 15.319828, 8.279199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455806, 15.643200, 8.149853>,  <13.573840, 15.837223, 8.072245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455806, 15.643200, 8.149853>,  <13.259082, 15.319828, 8.279199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455806, 15.643200, 8.149853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014256, -0.363859, -0.931345,
		-0.870586, 0.462655, -0.167425,
		0.491810, 0.808429, -0.323365,
		13.603349, 15.885729, 8.052843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021106, 15.705370, 7.692309>,  <13.259082, 15.319828, 8.279199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021106, 15.705370, 7.692309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400924, 15.825645, 7.656644>,  <13.628815, 15.897811, 7.635244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400924, 15.825645, 7.656644>,  <13.021106, 15.705370, 7.692309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.400924, 15.825645, 7.656644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032849, -0.187384, -0.981737,
		-0.311906, 0.935133, -0.168052,
		0.949545, 0.300689, -0.089164,
		13.685787, 15.915853, 7.629895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115815, 15.959657, 7.083145>,  <13.021106, 15.705370, 7.692309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115815, 15.959657, 7.083145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505567, 15.889980, 7.140056>,  <13.739418, 15.848174, 7.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505567, 15.889980, 7.140056>,  <13.115815, 15.959657, 7.083145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505567, 15.889980, 7.140056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094281, -0.257988, -0.961537,
		0.204197, 0.950316, -0.234955,
		0.974379, -0.174191, 0.142277,
		13.797880, 15.837723, 7.182739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740115, 16.187759, 6.748116>,  <13.115815, 15.959657, 7.083145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740115, 16.187759, 6.748116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634381, 15.854477, 6.553839>,  <13.570941, 15.654508, 6.437273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634381, 15.854477, 6.553839>,  <13.740115, 16.187759, 6.748116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634381, 15.854477, 6.553839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414038, 0.552876, -0.723118,
		0.871034, 0.009950, -0.491122,
		-0.264335, -0.833204, -0.485694,
		13.555080, 15.604516, 6.408131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941176, 16.258059, 6.072353>,  <13.740115, 16.187759, 6.748116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941176, 16.258059, 6.072353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615003, 16.028725, 6.104230>,  <13.419298, 15.891124, 6.123356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615003, 16.028725, 6.104230>,  <13.941176, 16.258059, 6.072353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615003, 16.028725, 6.104230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500896, 0.629902, -0.593572,
		0.290118, -0.523937, -0.800826,
		-0.815435, -0.573336, 0.079692,
		13.370372, 15.856724, 6.128138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.622340, 16.004606, 5.376812>,  <13.941176, 16.258059, 6.072353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.622340, 16.004606, 5.376812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357924, 16.054146, 5.672835>,  <13.199275, 16.083870, 5.850450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357924, 16.054146, 5.672835>,  <13.622340, 16.004606, 5.376812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357924, 16.054146, 5.672835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474263, 0.695331, -0.539990,
		-0.581465, -0.707937, -0.400903,
		-0.661039, 0.123851, 0.740059,
		13.159613, 16.091301, 5.894853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913899, 15.922541, 5.207707>,  <13.622340, 16.004606, 5.376812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913899, 15.922541, 5.207707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896911, 16.149532, 5.536624>,  <12.886717, 16.285727, 5.733974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896911, 16.149532, 5.536624>,  <12.913899, 15.922541, 5.207707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896911, 16.149532, 5.536624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634389, 0.620512, -0.460994,
		-0.771846, -0.541233, 0.333647,
		-0.042473, 0.567479, 0.822292,
		12.884169, 16.319777, 5.783311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.284163, 16.009071, 5.322246>,  <12.913899, 15.922541, 5.207707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.284163, 16.009071, 5.322246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492444, 16.331165, 5.435715>,  <12.617413, 16.524422, 5.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492444, 16.331165, 5.435715>,  <12.284163, 16.009071, 5.322246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492444, 16.331165, 5.435715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621925, 0.585395, -0.520117,
		-0.584876, 0.094402, 0.805611,
		0.520701, 0.805233, 0.283672,
		12.648654, 16.572735, 5.520816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739870, 16.498632, 5.412346>,  <12.284163, 16.009071, 5.322246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739870, 16.498632, 5.412346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080247, 16.691078, 5.328035>,  <12.284472, 16.806545, 5.277449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.080247, 16.691078, 5.328035>,  <11.739870, 16.498632, 5.412346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080247, 16.691078, 5.328035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475698, 0.535719, -0.697651,
		-0.222734, 0.693926, 0.684731,
		0.850941, 0.481116, -0.210776,
		12.335529, 16.835413, 5.264802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.029790, 17.200188, 5.069297>,  <11.739870, 16.498632, 5.412346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.029790, 17.200188, 5.069297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.179046, 16.974205, 5.363669>,  <12.268599, 16.838615, 5.540293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.179046, 16.974205, 5.363669>,  <12.029790, 17.200188, 5.069297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.179046, 16.974205, 5.363669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458754, 0.577113, 0.675637,
		-0.806419, -0.589718, -0.043832,
		0.373139, -0.564955, 0.735931,
		12.290987, 16.804718, 5.584448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531781, 17.123766, 5.676980>,  <12.029790, 17.200188, 5.069297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531781, 17.123766, 5.676980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841365, 17.036251, 5.914677>,  <12.027115, 16.983742, 6.057294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.841365, 17.036251, 5.914677>,  <11.531781, 17.123766, 5.676980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841365, 17.036251, 5.914677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384309, 0.583549, 0.715386,
		-0.503284, -0.782051, 0.367561,
		0.773958, -0.218785, 0.594241,
		12.073552, 16.970615, 6.092949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920876, 17.498846, 6.129576>,  <11.531781, 17.123766, 5.676980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920876, 17.498846, 6.129576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708337, 17.781651, 6.316255>,  <11.580813, 17.951334, 6.428262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708337, 17.781651, 6.316255>,  <11.920876, 17.498846, 6.129576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.708337, 17.781651, 6.316255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744607, 0.127038, 0.655302,
		0.404019, 0.695697, -0.593948,
		-0.531346, 0.707012, 0.466696,
		11.548933, 17.993753, 6.456264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.184263, 18.139690, 5.970428>,  <11.920876, 17.498846, 6.129576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.184263, 18.139690, 5.970428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.997094, 18.165634, 6.322982>,  <11.884792, 18.181200, 6.534514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.997094, 18.165634, 6.322982>,  <12.184263, 18.139690, 5.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.997094, 18.165634, 6.322982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804185, 0.444850, 0.394201,
		-0.366517, 0.893253, -0.260315,
		-0.467923, 0.064860, 0.881386,
		11.856717, 18.185093, 6.587398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169466, 18.795313, 6.120251>,  <12.184263, 18.139690, 5.970428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169466, 18.795313, 6.120251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151431, 18.572994, 6.452290>,  <12.140611, 18.439604, 6.651513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151431, 18.572994, 6.452290>,  <12.169466, 18.795313, 6.120251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151431, 18.572994, 6.452290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897798, 0.341857, 0.277656,
		-0.438093, 0.757777, 0.483578,
		-0.045087, -0.555795, 0.830096,
		12.137905, 18.406256, 6.701318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384116, 19.240522, 6.651942>,  <12.169466, 18.795313, 6.120251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384116, 19.240522, 6.651942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461123, 18.865955, 6.769286>,  <12.507328, 18.641214, 6.839693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461123, 18.865955, 6.769286>,  <12.384116, 19.240522, 6.651942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461123, 18.865955, 6.769286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900173, 0.287545, 0.327119,
		-0.390674, 0.201098, 0.898295,
		0.192517, -0.936417, 0.293359,
		12.518879, 18.585030, 6.857294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.893528, 19.416916, 7.256543>,  <12.384116, 19.240522, 6.651942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.893528, 19.416916, 7.256543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964187, 19.593208, 6.904509>,  <13.006582, 19.698984, 6.693288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964187, 19.593208, 6.904509>,  <12.893528, 19.416916, 7.256543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964187, 19.593208, 6.904509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807646, -0.446169, -0.385540,
		-0.562587, 0.778903, 0.277139,
		0.176647, 0.440730, -0.880087,
		13.017181, 19.725428, 6.640482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981638, 18.849119, 7.893420>,  <12.893528, 19.416916, 7.256543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.981638, 18.849119, 7.893420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296952, 19.095219, 7.889956>,  <13.486140, 19.242878, 7.887878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296952, 19.095219, 7.889956>,  <12.981638, 18.849119, 7.893420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296952, 19.095219, 7.889956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551835, -0.700671, 0.452259,
		0.272186, -0.361287, -0.891845,
		0.788285, 0.615250, -0.008657,
		13.533438, 19.279793, 7.887359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270254, 18.639959, 8.574755>,  <12.981638, 18.849119, 7.893420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270254, 18.639959, 8.574755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.611024, 18.449097, 8.661054>,  <13.815486, 18.334579, 8.712833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.611024, 18.449097, 8.661054>,  <13.270254, 18.639959, 8.574755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.611024, 18.449097, 8.661054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403022, 0.334363, -0.851924,
		0.334363, 0.812726, 0.477156,
		0.851924, -0.477156, 0.215748,
		13.866601, 18.305950, 8.725778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853971, 19.054525, 8.408600>,  <13.270254, 18.639959, 8.574755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853971, 19.054525, 8.408600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039002, 18.700050, 8.398102>,  <14.150022, 18.487366, 8.391803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.039002, 18.700050, 8.398102>,  <13.853971, 19.054525, 8.408600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039002, 18.700050, 8.398102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510096, 0.290243, -0.809667,
		0.725136, 0.361147, 0.586302,
		0.462579, -0.886189, -0.026245,
		14.177776, 18.434193, 8.390228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.616215, 19.179653, 8.514314>,  <13.853971, 19.054525, 8.408600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.616215, 19.179653, 8.514314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431659, 18.905590, 8.288860>,  <14.320926, 18.741152, 8.153588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431659, 18.905590, 8.288860>,  <14.616215, 19.179653, 8.514314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431659, 18.905590, 8.288860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349098, 0.443842, -0.825309,
		0.815629, -0.577552, 0.034402,
		-0.461389, -0.685156, -0.563633,
		14.293242, 18.700043, 8.119770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480632, 19.477898, 7.769204>,  <14.616215, 19.179653, 8.514314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480632, 19.477898, 7.769204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377995, 19.776566, 7.523718>,  <14.316414, 19.955767, 7.376426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377995, 19.776566, 7.523718>,  <14.480632, 19.477898, 7.769204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377995, 19.776566, 7.523718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304290, -0.540278, -0.784543,
		-0.917371, -0.388053, -0.088574,
		-0.256590, 0.746669, -0.613716,
		14.301019, 20.000566, 7.339603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.940694, 19.335812, 7.296913>,  <14.480632, 19.477898, 7.769204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.940694, 19.335812, 7.296913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186988, 19.613350, 7.147540>,  <14.334764, 19.779873, 7.057916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186988, 19.613350, 7.147540>,  <13.940694, 19.335812, 7.296913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186988, 19.613350, 7.147540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070542, -0.520564, -0.850903,
		-0.784789, 0.497588, -0.369475,
		0.615735, 0.693843, -0.373432,
		14.371708, 19.821503, 7.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.978807, 19.891296, 6.727268>,  <13.940694, 19.335812, 7.296913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.978807, 19.891296, 6.727268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613614, 19.988522, 6.858345>,  <13.394498, 20.046856, 6.936991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613614, 19.988522, 6.858345>,  <13.978807, 19.891296, 6.727268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613614, 19.988522, 6.858345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100240, -0.644925, 0.757643,
		0.395493, 0.724563, 0.564441,
		-0.912983, 0.243063, 0.327693,
		13.339719, 20.061440, 6.956653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055416, 19.432905, 6.211504>,  <13.978807, 19.891296, 6.727268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055416, 19.432905, 6.211504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398507, 19.302471, 6.052521>,  <14.604362, 19.224211, 5.957130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398507, 19.302471, 6.052521>,  <14.055416, 19.432905, 6.211504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398507, 19.302471, 6.052521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478185, 0.222117, 0.849707,
		-0.188795, -0.918876, 0.346445,
		0.857727, -0.326085, -0.397458,
		14.655826, 19.204645, 5.933283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416130, 18.781786, 6.453991>,  <14.055416, 19.432905, 6.211504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416130, 18.781786, 6.453991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656917, 19.082302, 6.345772>,  <14.801389, 19.262611, 6.280840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656917, 19.082302, 6.345772>,  <14.416130, 18.781786, 6.453991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656917, 19.082302, 6.345772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577264, -0.175337, 0.797511,
		0.551726, -0.636253, -0.539241,
		0.601967, 0.751292, -0.270548,
		14.837507, 19.307690, 6.264607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112846, 18.599787, 6.253082>,  <14.416130, 18.781786, 6.453991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112846, 18.599787, 6.253082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088283, 18.967453, 6.408706>,  <15.073545, 19.188053, 6.502080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.088283, 18.967453, 6.408706>,  <15.112846, 18.599787, 6.253082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.088283, 18.967453, 6.408706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476893, -0.315403, 0.820423,
		0.876813, 0.235922, -0.418974,
		-0.061410, 0.919164, 0.389059,
		15.069860, 19.243202, 6.525424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555848, 18.727461, 6.948875>,  <15.112846, 18.599787, 6.253082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555848, 18.727461, 6.948875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951690, 18.751637, 7.001078>,  <16.189194, 18.766142, 7.032399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951690, 18.751637, 7.001078>,  <15.555848, 18.727461, 6.948875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951690, 18.751637, 7.001078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034687, -0.980929, 0.191247,
		0.139575, -0.184732, -0.972827,
		0.989604, 0.060438, 0.130506,
		16.248571, 18.769768, 7.040229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089603, 18.275145, 6.489761>,  <15.555848, 18.727461, 6.948875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089603, 18.275145, 6.489761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234650, 18.343037, 6.856302>,  <16.321678, 18.383772, 7.076227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.234650, 18.343037, 6.856302>,  <16.089603, 18.275145, 6.489761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234650, 18.343037, 6.856302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001433, -0.983376, 0.181576,
		0.931938, -0.064530, -0.356831,
		0.362616, 0.169729, 0.916352,
		16.343435, 18.393955, 7.131208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840878, 18.063232, 6.717551>,  <16.089603, 18.275145, 6.489761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840878, 18.063232, 6.717551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568535, 18.036774, 7.009320>,  <16.405128, 18.020899, 7.184381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568535, 18.036774, 7.009320>,  <16.840878, 18.063232, 6.717551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568535, 18.036774, 7.009320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112330, -0.993561, 0.014752,
		0.723750, 0.091980, 0.683904,
		-0.680858, -0.066146, 0.729423,
		16.364277, 18.016930, 7.228147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001032, 17.660826, 7.279075>,  <16.840878, 18.063232, 6.717551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.001032, 17.660826, 7.279075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604527, 17.609142, 7.268474>,  <16.366623, 17.578133, 7.262113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.604527, 17.609142, 7.268474>,  <17.001032, 17.660826, 7.279075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604527, 17.609142, 7.268474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128667, -0.991462, 0.021143,
		-0.029008, 0.017548, 0.999425,
		-0.991263, -0.129207, -0.026503,
		16.307148, 17.570381, 7.260523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.120743, 16.688292, 18.693285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.300228, 16.985931, 18.495308>,  <22.407919, 17.164516, 18.376522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.300228, 16.985931, 18.495308>,  <22.120743, 16.688292, 18.693285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300228, 16.985931, 18.495308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281010, -0.408257, -0.868538,
		-0.848346, 0.528809, 0.025910,
		0.448713, 0.744102, -0.494944,
		22.434841, 17.209162, 18.346825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708675, 16.813322, 18.179710>,  <22.120743, 16.688292, 18.693285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708675, 16.813322, 18.179710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.039333, 16.984032, 18.033003>,  <22.237728, 17.086458, 17.944979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.039333, 16.984032, 18.033003>,  <21.708675, 16.813322, 18.179710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039333, 16.984032, 18.033003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191132, -0.400085, -0.896326,
		-0.529268, 0.811046, -0.249158,
		0.826646, 0.426774, -0.366769,
		22.287327, 17.112064, 17.922972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434925, 17.120434, 17.646389>,  <21.708675, 16.813322, 18.179710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434925, 17.120434, 17.646389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.828140, 17.130020, 17.573654>,  <22.064070, 17.135773, 17.530014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.828140, 17.130020, 17.573654>,  <21.434925, 17.120434, 17.646389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.828140, 17.130020, 17.573654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177905, -0.116484, -0.977129,
		-0.044598, 0.992904, -0.110245,
		0.983037, 0.023965, -0.181838,
		22.123051, 17.137209, 17.519102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.605343, 17.702690, 17.217077>,  <21.434925, 17.120434, 17.646389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.605343, 17.702690, 17.217077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.896362, 17.435532, 17.154352>,  <22.070974, 17.275236, 17.116718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.896362, 17.435532, 17.154352>,  <21.605343, 17.702690, 17.217077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896362, 17.435532, 17.154352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261306, -0.058434, -0.963486,
		0.634343, 0.741959, -0.217038,
		0.727549, -0.667894, -0.156811,
		22.114628, 17.235163, 17.107309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927309, 17.940474, 16.623884>,  <21.605343, 17.702690, 17.217077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927309, 17.940474, 16.623884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.018845, 17.551159, 16.631302>,  <22.073767, 17.317570, 16.635752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.018845, 17.551159, 16.631302>,  <21.927309, 17.940474, 16.623884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018845, 17.551159, 16.631302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352935, -0.100704, -0.930213,
		0.907231, 0.206326, -0.366552,
		0.228841, -0.973287, 0.018542,
		22.087498, 17.259172, 16.636864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290485, 17.788300, 15.979422>,  <21.927309, 17.940474, 16.623884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290485, 17.788300, 15.979422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.176868, 17.424564, 16.101028>,  <22.108698, 17.206324, 16.173992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.176868, 17.424564, 16.101028>,  <22.290485, 17.788300, 15.979422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176868, 17.424564, 16.101028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308671, -0.213474, -0.926904,
		0.907768, -0.357120, -0.220050,
		-0.284041, -0.909338, 0.304018,
		22.091656, 17.151764, 16.192234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594530, 17.268829, 15.645045>,  <22.290485, 17.788300, 15.979422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594530, 17.268829, 15.645045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.253262, 17.087147, 15.747648>,  <22.048500, 16.978138, 15.809210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.253262, 17.087147, 15.747648>,  <22.594530, 17.268829, 15.645045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253262, 17.087147, 15.747648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262642, -0.050814, -0.963555,
		0.450687, -0.889446, -0.075941,
		-0.853171, -0.454206, 0.256507,
		21.997311, 16.950886, 15.824600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561277, 16.919075, 15.072918>,  <22.594530, 17.268829, 15.645045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561277, 16.919075, 15.072918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.216339, 16.860096, 15.266666>,  <22.009377, 16.824709, 15.382915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.216339, 16.860096, 15.266666>,  <22.561277, 16.919075, 15.072918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216339, 16.860096, 15.266666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481099, -0.059532, -0.874643,
		0.157803, -0.987276, -0.019601,
		-0.862347, -0.147451, 0.484372,
		21.957634, 16.815861, 15.411978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295782, 16.301600, 14.762298>,  <22.561277, 16.919075, 15.072918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295782, 16.301600, 14.762298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.979477, 16.480190, 14.929796>,  <21.789694, 16.587345, 15.030295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.979477, 16.480190, 14.929796>,  <22.295782, 16.301600, 14.762298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979477, 16.480190, 14.929796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559253, -0.248853, -0.790764,
		-0.248853, -0.859493, 0.446479,
		0.790764, -0.446479, -0.418746,
		21.742249, 16.614134, 15.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743889, 15.858455, 14.940633>,  <22.295782, 16.301600, 14.762298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743889, 15.858455, 14.940633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.580154, 16.219631, 14.888262>,  <21.481915, 16.436337, 14.856839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.580154, 16.219631, 14.888262>,  <21.743889, 15.858455, 14.940633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580154, 16.219631, 14.888262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448227, -0.324002, -0.833135,
		-0.794693, -0.282347, 0.537348,
		-0.409335, 0.902941, -0.130927,
		21.457354, 16.490513, 14.848984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060427, 15.638378, 14.811923>,  <21.743889, 15.858455, 14.940633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060427, 15.638378, 14.811923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.056232, 16.025803, 14.712502>,  <21.053715, 16.258257, 14.652848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.056232, 16.025803, 14.712502>,  <21.060427, 15.638378, 14.811923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056232, 16.025803, 14.712502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587560, -0.207100, -0.782230,
		-0.809113, 0.137837, 0.571260,
		-0.010487, 0.968562, -0.248555,
		21.053085, 16.316372, 14.637936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308157, 16.006512, 14.777897>,  <21.060427, 15.638378, 14.811923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308157, 16.006512, 14.777897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.538895, 16.226757, 14.536543>,  <20.677338, 16.358904, 14.391730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.538895, 16.226757, 14.536543>,  <20.308157, 16.006512, 14.777897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.538895, 16.226757, 14.536543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639247, -0.155577, -0.753100,
		-0.508542, 0.820133, 0.262235,
		0.576844, 0.550616, -0.603385,
		20.711948, 16.391941, 14.355528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817068, 16.495394, 14.382832>,  <20.308157, 16.006512, 14.777897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817068, 16.495394, 14.382832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.165035, 16.483326, 14.185923>,  <20.373816, 16.476086, 14.067778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.165035, 16.483326, 14.185923>,  <19.817068, 16.495394, 14.382832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165035, 16.483326, 14.185923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492861, -0.016398, -0.869954,
		0.018175, 0.999410, -0.029135,
		0.869918, -0.030171, -0.492272,
		20.426010, 16.474274, 14.038241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783524, 17.057032, 13.886995>,  <19.817068, 16.495394, 14.382832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783524, 17.057032, 13.886995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.069210, 16.804222, 13.766701>,  <20.240622, 16.652536, 13.694524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.069210, 16.804222, 13.766701>,  <19.783524, 17.057032, 13.886995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069210, 16.804222, 13.766701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334880, 0.068733, -0.939751,
		0.614617, 0.771894, -0.162562,
		0.714214, -0.632025, -0.300736,
		20.283474, 16.614614, 13.676479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.019560, 17.361830, 13.334210>,  <19.783524, 17.057032, 13.886995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.019560, 17.361830, 13.334210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.134529, 16.979813, 13.305157>,  <20.203510, 16.750603, 13.287724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.134529, 16.979813, 13.305157>,  <20.019560, 17.361830, 13.334210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134529, 16.979813, 13.305157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368758, -0.040353, -0.928649,
		0.883971, 0.293701, -0.363779,
		0.287425, -0.955045, -0.072634,
		20.220757, 16.693298, 13.283366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309011, 17.287609, 12.635022>,  <20.019560, 17.361830, 13.334210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309011, 17.287609, 12.635022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177143, 16.932110, 12.762424>,  <20.098022, 16.718811, 12.838864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177143, 16.932110, 12.762424>,  <20.309011, 17.287609, 12.635022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177143, 16.932110, 12.762424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516823, -0.112432, -0.848677,
		0.790070, -0.444394, -0.422260,
		-0.329671, -0.888748, 0.318503,
		20.078241, 16.665485, 12.857974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486422, 16.818550, 12.099610>,  <20.309011, 17.287609, 12.635022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486422, 16.818550, 12.099610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.207928, 16.624126, 12.310893>,  <20.040831, 16.507471, 12.437663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.207928, 16.624126, 12.310893>,  <20.486422, 16.818550, 12.099610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207928, 16.624126, 12.310893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632569, 0.067647, -0.771544,
		0.339284, -0.871303, -0.354565,
		-0.696234, -0.486060, 0.528208,
		19.999058, 16.478308, 12.469356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299261, 16.243872, 11.670259>,  <20.486422, 16.818550, 12.099610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299261, 16.243872, 11.670259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.007549, 16.295704, 11.938993>,  <19.832521, 16.326803, 12.100232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.007549, 16.295704, 11.938993>,  <20.299261, 16.243872, 11.670259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007549, 16.295704, 11.938993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681001, -0.042411, -0.731053,
		-0.066245, -0.990660, 0.119181,
		-0.729280, 0.129591, 0.671831,
		19.788765, 16.334578, 12.140542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685188, 15.948151, 11.325705>,  <20.299261, 16.243872, 11.670259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.685188, 15.948151, 11.325705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.521732, 16.182030, 11.606030>,  <19.423658, 16.322357, 11.774224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.521732, 16.182030, 11.606030>,  <19.685188, 15.948151, 11.325705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521732, 16.182030, 11.606030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752512, 0.218661, -0.621219,
		-0.516466, -0.781226, 0.350639,
		-0.408642, 0.584699, 0.700813,
		19.399139, 16.357439, 11.816274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999710, 15.566663, 11.548402>,  <19.685188, 15.948151, 11.325705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999710, 15.566663, 11.548402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.961994, 15.953495, 11.642946>,  <18.939363, 16.185595, 11.699673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.961994, 15.953495, 11.642946>,  <18.999710, 15.566663, 11.548402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961994, 15.953495, 11.642946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810073, 0.063477, -0.582883,
		-0.578698, -0.246430, 0.777420,
		-0.094292, 0.967080, 0.236360,
		18.933706, 16.243618, 11.713854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330063, 15.688048, 11.724315>,  <18.999710, 15.566663, 11.548402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330063, 15.688048, 11.724315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.454330, 16.051937, 11.614121>,  <18.528891, 16.270271, 11.548005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.454330, 16.051937, 11.614121>,  <18.330063, 15.688048, 11.724315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454330, 16.051937, 11.614121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861702, 0.147221, -0.485589,
		-0.401194, 0.388240, 0.829646,
		0.310667, 0.909723, -0.275483,
		18.547531, 16.324854, 11.531477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773920, 16.147537, 11.803145>,  <18.330063, 15.688048, 11.724315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773920, 16.147537, 11.803145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.020565, 16.348427, 11.560638>,  <18.168552, 16.468960, 11.415134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.020565, 16.348427, 11.560638>,  <17.773920, 16.147537, 11.803145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020565, 16.348427, 11.560638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689759, -0.026582, -0.723551,
		-0.379499, 0.864330, 0.330022,
		0.616614, 0.502222, -0.606267,
		18.205549, 16.499094, 11.378758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334433, 16.535336, 11.322574>,  <17.773920, 16.147537, 11.803145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334433, 16.535336, 11.322574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949013, 16.455032, 11.393307>,  <16.717760, 16.406851, 11.435747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949013, 16.455032, 11.393307>,  <17.334433, 16.535336, 11.322574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949013, 16.455032, 11.393307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197713, -0.089062, 0.976206,
		-0.180231, 0.975584, 0.125508,
		-0.963549, -0.200757, 0.176834,
		16.659948, 16.394806, 11.446357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119873, 16.939003, 11.742114>,  <17.334433, 16.535336, 11.322574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119873, 16.939003, 11.742114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.850925, 16.650394, 11.808239>,  <16.689558, 16.477228, 11.847914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.850925, 16.650394, 11.808239>,  <17.119873, 16.939003, 11.742114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850925, 16.650394, 11.808239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156031, 0.080161, 0.984494,
		-0.723586, 0.687735, 0.058683,
		-0.672367, -0.721523, 0.165311,
		16.649216, 16.433937, 11.857832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659048, 17.186531, 12.247367>,  <17.119873, 16.939003, 11.742114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659048, 17.186531, 12.247367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.625031, 16.788403, 12.265693>,  <16.604620, 16.549524, 12.276688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.625031, 16.788403, 12.265693>,  <16.659048, 17.186531, 12.247367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625031, 16.788403, 12.265693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125355, 0.034927, 0.991497,
		-0.988460, 0.090063, 0.121798,
		-0.085043, -0.995323, 0.045814,
		16.599518, 16.489805, 12.279437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182156, 17.117102, 12.642509>,  <16.659048, 17.186531, 12.247367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182156, 17.117102, 12.642509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346336, 16.752834, 12.661345>,  <16.444845, 16.534275, 12.672647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346336, 16.752834, 12.661345>,  <16.182156, 17.117102, 12.642509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346336, 16.752834, 12.661345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009564, 0.055937, 0.998389,
		-0.911833, -0.409338, 0.031669,
		0.410449, -0.910667, 0.047090,
		16.469471, 16.479635, 12.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862584, 16.911293, 13.240489>,  <16.182156, 17.117102, 12.642509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862584, 16.911293, 13.240489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.142563, 16.636116, 13.163744>,  <16.310551, 16.471010, 13.117697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.142563, 16.636116, 13.163744>,  <15.862584, 16.911293, 13.240489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142563, 16.636116, 13.163744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027653, -0.294545, 0.955238,
		-0.713659, -0.663311, -0.225189,
		0.699948, -0.687941, -0.191862,
		16.352547, 16.429733, 13.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669436, 16.365782, 13.571516>,  <15.862584, 16.911293, 13.240489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669436, 16.365782, 13.571516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.066647, 16.350578, 13.526884>,  <16.304974, 16.341457, 13.500105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.066647, 16.350578, 13.526884>,  <15.669436, 16.365782, 13.571516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066647, 16.350578, 13.526884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103278, -0.175739, 0.979004,
		-0.056817, -0.983703, -0.170589,
		0.993029, -0.038006, -0.111580,
		16.364555, 16.339176, 13.493410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859639, 15.808966, 13.987055>,  <15.669436, 16.365782, 13.571516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859639, 15.808966, 13.987055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.204456, 16.009083, 13.954586>,  <16.411346, 16.129152, 13.935105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.204456, 16.009083, 13.954586>,  <15.859639, 15.808966, 13.987055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204456, 16.009083, 13.954586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152251, -0.102855, 0.982975,
		0.483426, -0.859725, -0.164835,
		0.862043, 0.500293, -0.081171,
		16.463070, 16.159170, 13.930235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382187, 15.288048, 14.257515>,  <15.859639, 15.808966, 13.987055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382187, 15.288048, 14.257515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.511784, 15.666439, 14.262474>,  <16.589540, 15.893474, 14.265450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.511784, 15.666439, 14.262474>,  <16.382187, 15.288048, 14.257515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511784, 15.666439, 14.262474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299825, -0.115100, 0.947025,
		0.897293, -0.303109, -0.320919,
		0.323990, 0.945979, 0.012399,
		16.608980, 15.950233, 14.266193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942677, 15.165920, 14.511436>,  <16.382187, 15.288048, 14.257515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942677, 15.165920, 14.511436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.913937, 15.560822, 14.568245>,  <16.896692, 15.797762, 14.602331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.913937, 15.560822, 14.568245>,  <16.942677, 15.165920, 14.511436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913937, 15.560822, 14.568245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470614, -0.091991, 0.877531,
		0.879409, 0.129888, -0.458006,
		-0.071848, 0.987252, 0.142025,
		16.892382, 15.856997, 14.610852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584457, 15.516335, 14.701332>,  <16.942677, 15.165920, 14.511436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.584457, 15.516335, 14.701332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.310173, 15.774834, 14.835299>,  <17.145603, 15.929933, 14.915678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.310173, 15.774834, 14.835299>,  <17.584457, 15.516335, 14.701332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310173, 15.774834, 14.835299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490016, 0.069620, 0.868929,
		0.538224, 0.759947, -0.364410,
		-0.685710, 0.646245, 0.334915,
		17.104460, 15.968707, 14.935773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961567, 16.011650, 14.984965>,  <17.584457, 15.516335, 14.701332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961567, 16.011650, 14.984965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.598854, 16.072136, 15.142384>,  <17.381226, 16.108427, 15.236835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.598854, 16.072136, 15.142384>,  <17.961567, 16.011650, 14.984965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598854, 16.072136, 15.142384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403338, 0.039408, 0.914202,
		0.122730, 0.987715, -0.096725,
		-0.906783, 0.151213, 0.393547,
		17.326818, 16.117500, 15.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904358, 16.643145, 15.337846>,  <17.961567, 16.011650, 14.984965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904358, 16.643145, 15.337846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.609901, 16.438297, 15.514858>,  <17.433228, 16.315390, 15.621065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.609901, 16.438297, 15.514858>,  <17.904358, 16.643145, 15.337846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609901, 16.438297, 15.514858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443256, 0.129332, 0.887016,
		-0.511490, 0.849122, 0.131793,
		-0.736140, -0.512118, 0.442531,
		17.389059, 16.284662, 15.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800694, 16.956982, 15.905589>,  <17.904358, 16.643145, 15.337846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800694, 16.956982, 15.905589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.663395, 16.587166, 15.971811>,  <17.581015, 16.365276, 16.011545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.663395, 16.587166, 15.971811>,  <17.800694, 16.956982, 15.905589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663395, 16.587166, 15.971811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438260, -0.001756, 0.898847,
		-0.830728, 0.381083, 0.405791,
		-0.343248, -0.924539, 0.165555,
		17.560421, 16.309805, 16.021479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574793, 17.063520, 16.570286>,  <17.800694, 16.956982, 15.905589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574793, 17.063520, 16.570286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.666851, 16.680424, 16.501274>,  <17.722086, 16.450565, 16.459867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.666851, 16.680424, 16.501274>,  <17.574793, 17.063520, 16.570286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666851, 16.680424, 16.501274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595913, -0.001463, 0.803048,
		-0.769364, -0.287629, 0.570394,
		0.230145, -0.957741, -0.172527,
		17.735895, 16.393101, 16.449516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546953, 16.746456, 17.297905>,  <17.574793, 17.063520, 16.570286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546953, 16.746456, 17.297905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.749668, 16.498718, 17.058044>,  <17.871298, 16.350077, 16.914129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.749668, 16.498718, 17.058044>,  <17.546953, 16.746456, 17.297905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749668, 16.498718, 17.058044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799580, 0.077694, 0.595513,
		-0.322238, -0.781267, 0.534589,
		0.506790, -0.619343, -0.599649,
		17.901705, 16.312916, 16.878149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698204, 16.245218, 17.740427>,  <17.546953, 16.746456, 17.297905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698204, 16.245218, 17.740427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.958679, 16.209820, 17.438932>,  <18.114965, 16.188581, 17.258036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.958679, 16.209820, 17.438932>,  <17.698204, 16.245218, 17.740427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958679, 16.209820, 17.438932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743584, -0.124223, 0.657002,
		-0.151775, -0.988300, -0.015087,
		0.651190, -0.088498, -0.753738,
		18.154036, 16.183271, 17.212811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965912, 15.613004, 17.844019>,  <17.698204, 16.245218, 17.740427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965912, 15.613004, 17.844019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.228580, 15.799522, 17.606918>,  <18.386181, 15.911433, 17.464659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.228580, 15.799522, 17.606918>,  <17.965912, 15.613004, 17.844019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228580, 15.799522, 17.606918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674474, -0.011436, 0.738210,
		0.337446, -0.884554, -0.322015,
		0.656670, 0.466297, -0.592750,
		18.425581, 15.939411, 17.429094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646450, 15.269489, 17.946486>,  <17.965912, 15.613004, 17.844019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646450, 15.269489, 17.946486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.743484, 15.624901, 17.790709>,  <18.801706, 15.838148, 17.697243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.743484, 15.624901, 17.790709>,  <18.646450, 15.269489, 17.946486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743484, 15.624901, 17.790709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855108, -0.006241, 0.518413,
		0.458195, -0.458777, -0.761302,
		0.242587, 0.888530, -0.389444,
		18.816261, 15.891459, 17.673876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.023914, 15.621816, 17.724459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.805141, 15.956635, 17.718576>,  <19.673878, 16.157526, 17.715048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.805141, 15.956635, 17.718576>,  <20.023914, 15.621816, 17.724459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805141, 15.956635, 17.718576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438986, 0.301704, 0.846325,
		0.712850, 0.456429, -0.532464,
		-0.546933, 0.837047, -0.014704,
		19.641062, 16.207748, 17.714165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553484, 16.190956, 17.804413>,  <20.023914, 15.621816, 17.724459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553484, 16.190956, 17.804413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.206306, 16.358513, 17.911152>,  <19.998001, 16.459047, 17.975195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.206306, 16.358513, 17.911152>,  <20.553484, 16.190956, 17.804413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.206306, 16.358513, 17.911152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435847, 0.384764, 0.813630,
		0.238148, 0.822488, -0.516525,
		-0.867942, 0.418891, 0.266848,
		19.945925, 16.484180, 17.991207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.698849, 16.926952, 17.926504>,  <20.553484, 16.190956, 17.804413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.698849, 16.926952, 17.926504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.360336, 16.837593, 18.119959>,  <20.157228, 16.783978, 18.236032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.360336, 16.837593, 18.119959>,  <20.698849, 16.926952, 17.926504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360336, 16.837593, 18.119959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399938, 0.333321, 0.853784,
		-0.351940, 0.915964, -0.192738,
		-0.846279, -0.223397, 0.483638,
		20.106453, 16.770575, 18.265051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631744, 17.457966, 18.399199>,  <20.698849, 16.926952, 17.926504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631744, 17.457966, 18.399199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387302, 17.180920, 18.552473>,  <20.240637, 17.014692, 18.644438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387302, 17.180920, 18.552473>,  <20.631744, 17.457966, 18.399199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387302, 17.180920, 18.552473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222620, 0.314167, 0.922897,
		-0.759598, 0.649293, -0.037799,
		-0.611106, -0.692616, 0.383187,
		20.203970, 16.973135, 18.667429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.232857, 17.804371, 18.911648>,  <20.631744, 17.457966, 18.399199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.232857, 17.804371, 18.911648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.208908, 17.415588, 19.002611>,  <20.194540, 17.182318, 19.057188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.208908, 17.415588, 19.002611>,  <20.232857, 17.804371, 18.911648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208908, 17.415588, 19.002611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114578, 0.219618, 0.968835,
		-0.991609, 0.084060, 0.098216,
		-0.059870, -0.971958, 0.227406,
		20.190947, 17.124001, 19.070833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882355, 17.839186, 19.489223>,  <20.232857, 17.804371, 18.911648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882355, 17.839186, 19.489223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.056297, 17.479034, 19.495173>,  <20.160664, 17.262943, 19.498741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.056297, 17.479034, 19.495173>,  <19.882355, 17.839186, 19.489223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056297, 17.479034, 19.495173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076897, -0.020673, 0.996825,
		-0.897210, -0.434620, -0.078226,
		0.434858, -0.900376, 0.014873,
		20.186754, 17.208921, 19.499634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461023, 17.474781, 19.976198>,  <19.882355, 17.839186, 19.489223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461023, 17.474781, 19.976198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798199, 17.261841, 19.945068>,  <20.000504, 17.134077, 19.926390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798199, 17.261841, 19.945068>,  <19.461023, 17.474781, 19.976198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798199, 17.261841, 19.945068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076797, -0.024115, 0.996755,
		-0.532502, -0.846179, 0.020556,
		0.842938, -0.532352, -0.077825,
		20.051081, 17.102135, 19.921721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346333, 16.841862, 20.403473>,  <19.461023, 17.474781, 19.976198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346333, 16.841862, 20.403473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739502, 16.891495, 20.349115>,  <19.975403, 16.921274, 20.316500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739502, 16.891495, 20.349115>,  <19.346333, 16.841862, 20.403473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739502, 16.891495, 20.349115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136957, -0.000023, 0.990577,
		0.122912, -0.992272, -0.017017,
		0.982922, 0.124084, -0.135896,
		20.034378, 16.928719, 20.308346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683865, 16.462072, 20.841703>,  <19.346333, 16.841862, 20.403473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683865, 16.462072, 20.841703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.978191, 16.724834, 20.775915>,  <20.154787, 16.882492, 20.736443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.978191, 16.724834, 20.775915>,  <19.683865, 16.462072, 20.841703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978191, 16.724834, 20.775915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141292, 0.088601, 0.985995,
		0.662278, -0.748749, -0.027621,
		0.735816, 0.656906, -0.164471,
		20.198936, 16.921906, 20.726574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.170843, 16.227444, 21.150509>,  <19.683865, 16.462072, 20.841703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.170843, 16.227444, 21.150509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.265751, 16.615105, 21.123846>,  <20.322695, 16.847702, 21.107847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.265751, 16.615105, 21.123846>,  <20.170843, 16.227444, 21.150509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265751, 16.615105, 21.123846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083693, 0.047970, 0.995336,
		0.967833, -0.241739, -0.069730,
		0.237267, 0.969155, -0.066658,
		20.336931, 16.905851, 21.103849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599979, 16.259420, 21.642641>,  <20.170843, 16.227444, 21.150509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599979, 16.259420, 21.642641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.536064, 16.648087, 21.572975>,  <20.497715, 16.881287, 21.531176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.536064, 16.648087, 21.572975>,  <20.599979, 16.259420, 21.642641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536064, 16.648087, 21.572975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179483, 0.202088, 0.962780,
		0.970697, 0.122582, -0.206689,
		-0.159789, 0.971666, -0.174165,
		20.488127, 16.939587, 21.520725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088810, 16.580839, 22.093994>,  <20.599979, 16.259420, 21.642641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088810, 16.580839, 22.093994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.833786, 16.875408, 22.003487>,  <20.680773, 17.052151, 21.949183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.833786, 16.875408, 22.003487>,  <21.088810, 16.580839, 22.093994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833786, 16.875408, 22.003487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032536, 0.319181, 0.947135,
		0.769715, 0.596492, -0.227456,
		-0.637558, 0.736424, -0.226271,
		20.642519, 17.096336, 21.935606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373545, 17.201687, 22.350708>,  <21.088810, 16.580839, 22.093994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373545, 17.201687, 22.350708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.978806, 17.259136, 22.321026>,  <20.741962, 17.293606, 22.303217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.978806, 17.259136, 22.321026>,  <21.373545, 17.201687, 22.350708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978806, 17.259136, 22.321026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022265, 0.333890, 0.942349,
		0.160122, 0.931606, -0.326300,
		-0.986846, 0.143626, -0.074206,
		20.682753, 17.302223, 22.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243574, 17.809488, 22.641630>,  <21.373545, 17.201687, 22.350708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243574, 17.809488, 22.641630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.867325, 17.674961, 22.623217>,  <20.641575, 17.594246, 22.612167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.867325, 17.674961, 22.623217>,  <21.243574, 17.809488, 22.641630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867325, 17.674961, 22.623217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187617, 0.402066, 0.896183,
		-0.282891, 0.851607, -0.441291,
		-0.940623, -0.336316, -0.046035,
		20.585138, 17.574066, 22.609406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889051, 18.417767, 22.629076>,  <21.243574, 17.809488, 22.641630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889051, 18.417767, 22.629076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.663857, 18.113148, 22.757509>,  <20.528740, 17.930376, 22.834568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.663857, 18.113148, 22.757509>,  <20.889051, 18.417767, 22.629076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663857, 18.113148, 22.757509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145458, 0.473738, 0.868570,
		-0.813565, 0.442290, -0.377482,
		-0.562987, -0.761546, 0.321082,
		20.494961, 17.884684, 22.853834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319170, 18.728308, 22.826767>,  <20.889051, 18.417767, 22.629076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319170, 18.728308, 22.826767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.307892, 18.373581, 23.011271>,  <20.301125, 18.160746, 23.121973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.307892, 18.373581, 23.011271>,  <20.319170, 18.728308, 22.826767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307892, 18.373581, 23.011271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062723, 0.458965, 0.886238,
		-0.997633, 0.053917, 0.042684,
		-0.028193, -0.886817, 0.461260,
		20.299435, 18.107536, 23.149649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804972, 18.859125, 23.327150>,  <20.319170, 18.728308, 22.826767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804972, 18.859125, 23.327150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.046585, 18.557976, 23.431704>,  <20.191553, 18.377285, 23.494434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.046585, 18.557976, 23.431704>,  <19.804972, 18.859125, 23.327150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046585, 18.557976, 23.431704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072820, 0.378741, 0.922633,
		-0.793624, -0.538269, 0.283597,
		0.604034, -0.752875, 0.261382,
		20.227795, 18.332113, 23.510118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501501, 18.602657, 23.914358>,  <19.804972, 18.859125, 23.327150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501501, 18.602657, 23.914358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.879593, 18.475578, 23.944307>,  <20.106449, 18.399330, 23.962276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.879593, 18.475578, 23.944307>,  <19.501501, 18.602657, 23.914358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879593, 18.475578, 23.944307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050541, 0.369082, 0.928022,
		-0.322464, -0.873411, 0.364925,
		0.945232, -0.317697, 0.074873,
		20.163162, 18.380270, 23.966768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433292, 18.352196, 24.541605>,  <19.501501, 18.602657, 23.914358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433292, 18.352196, 24.541605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.825150, 18.375019, 24.464619>,  <20.060265, 18.388714, 24.418427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.825150, 18.375019, 24.464619>,  <19.433292, 18.352196, 24.541605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825150, 18.375019, 24.464619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150218, 0.427639, 0.891381,
		0.133168, -0.902147, 0.410362,
		0.979643, 0.057060, -0.192467,
		20.119043, 18.392138, 24.406879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764248, 18.050217, 25.060846>,  <19.433292, 18.352196, 24.541605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764248, 18.050217, 25.060846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.026749, 18.316490, 24.918747>,  <20.184250, 18.476254, 24.833488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.026749, 18.316490, 24.918747>,  <19.764248, 18.050217, 25.060846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026749, 18.316490, 24.918747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196049, 0.304211, 0.932212,
		0.728628, -0.681412, 0.069133,
		0.656252, 0.665682, -0.355247,
		20.223625, 18.516195, 24.812172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281235, 17.992990, 25.545671>,  <19.764248, 18.050217, 25.060846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281235, 17.992990, 25.545671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.338284, 18.341137, 25.357153>,  <20.372513, 18.550024, 25.244041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.338284, 18.341137, 25.357153>,  <20.281235, 17.992990, 25.545671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338284, 18.341137, 25.357153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348237, 0.401596, 0.847025,
		0.926494, -0.284926, -0.245818,
		0.142620, 0.870366, -0.471298,
		20.381069, 18.602247, 25.215763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895962, 18.176926, 25.758253>,  <20.281235, 17.992990, 25.545671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895962, 18.176926, 25.758253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.722755, 18.514839, 25.632500>,  <20.618832, 18.717587, 25.557049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.722755, 18.514839, 25.632500>,  <20.895962, 18.176926, 25.758253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722755, 18.514839, 25.632500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264387, 0.452470, 0.851687,
		0.861740, 0.285676, -0.419277,
		-0.433017, 0.844784, -0.314382,
		20.592850, 18.768274, 25.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259033, 18.667664, 26.146353>,  <20.895962, 18.176926, 25.758253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259033, 18.667664, 26.146353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.934063, 18.828106, 25.977081>,  <20.739080, 18.924372, 25.875519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.934063, 18.828106, 25.977081>,  <21.259033, 18.667664, 26.146353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.934063, 18.828106, 25.977081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046138, 0.767729, 0.639112,
		0.581237, 0.499706, -0.642229,
		-0.812425, 0.401106, -0.423177,
		20.690336, 18.948439, 25.850128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.301517, 19.332878, 25.966188>,  <21.259033, 18.667664, 26.146353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.301517, 19.332878, 25.966188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918129, 19.296516, 26.074314>,  <20.688095, 19.274700, 26.139189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.918129, 19.296516, 26.074314>,  <21.301517, 19.332878, 25.966188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918129, 19.296516, 26.074314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109021, 0.759063, 0.641823,
		-0.263529, 0.644639, -0.717630,
		-0.958471, -0.090902, 0.270314,
		20.630589, 19.269245, 26.155409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.587467, 19.980953, 25.819118>,  <21.301517, 19.332878, 25.966188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.587467, 19.980953, 25.819118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.874336, 20.254025, 25.763100>,  <22.046457, 20.417868, 25.729488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.874336, 20.254025, 25.763100>,  <21.587467, 19.980953, 25.819118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874336, 20.254025, 25.763100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251483, 0.066100, -0.965602,
		-0.649937, 0.727724, 0.219087,
		0.717174, 0.682677, -0.140049,
		22.089489, 20.458828, 25.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261265, 20.480862, 25.409431>,  <21.587467, 19.980953, 25.819118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261265, 20.480862, 25.409431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.654793, 20.534420, 25.361811>,  <21.890909, 20.566555, 25.333239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.654793, 20.534420, 25.361811>,  <21.261265, 20.480862, 25.409431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.654793, 20.534420, 25.361811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124694, 0.034528, -0.991594,
		-0.128662, 0.990393, 0.050665,
		0.983818, 0.133898, -0.119054,
		21.949938, 20.574589, 25.326094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255102, 20.882601, 24.872898>,  <21.261265, 20.480862, 25.409431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255102, 20.882601, 24.872898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.632313, 20.750198, 24.886395>,  <21.858639, 20.670757, 24.894493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.632313, 20.750198, 24.886395>,  <21.255102, 20.882601, 24.872898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632313, 20.750198, 24.886395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029675, -0.017331, -0.999409,
		0.331393, 0.943470, -0.006521,
		0.943026, -0.331004, 0.033741,
		21.915220, 20.650898, 24.896517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.576836, 21.160343, 24.262785>,  <21.255102, 20.882601, 24.872898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.576836, 21.160343, 24.262785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.826416, 20.859039, 24.346006>,  <21.976164, 20.678257, 24.395939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.826416, 20.859039, 24.346006>,  <21.576836, 21.160343, 24.262785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826416, 20.859039, 24.346006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183196, -0.117824, -0.975990,
		0.759687, 0.647084, 0.064477,
		0.623951, -0.753259, 0.208053,
		22.013601, 20.633062, 24.408422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.263556, 21.283489, 23.903296>,  <21.576836, 21.160343, 24.262785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.263556, 21.283489, 23.903296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.197803, 20.897888, 23.986889>,  <22.158352, 20.666527, 24.037045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.197803, 20.897888, 23.986889>,  <22.263556, 21.283489, 23.903296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.197803, 20.897888, 23.986889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106802, -0.228013, -0.967782,
		0.980598, -0.136766, 0.140439,
		-0.164382, -0.964005, 0.208982,
		22.148489, 20.608686, 24.049583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.952961, 20.925385, 23.805347>,  <22.263556, 21.283489, 23.903296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.952961, 20.925385, 23.805347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.630299, 20.694912, 23.752707>,  <22.436701, 20.556629, 23.721123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.630299, 20.694912, 23.752707>,  <22.952961, 20.925385, 23.805347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630299, 20.694912, 23.752707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346593, -0.280815, -0.894995,
		0.478723, -0.767567, 0.426222,
		-0.806658, -0.576180, -0.131601,
		22.388302, 20.522058, 23.713226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.208055, 20.377867, 23.275944>,  <22.952961, 20.925385, 23.805347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.208055, 20.377867, 23.275944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.820580, 20.280163, 23.293728>,  <22.588095, 20.221540, 23.304399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.820580, 20.280163, 23.293728>,  <23.208055, 20.377867, 23.275944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820580, 20.280163, 23.293728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038199, -0.323585, -0.945428,
		0.245316, -0.914128, 0.322784,
		-0.968690, -0.244258, 0.044462,
		22.529972, 20.206886, 23.307066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.067299, 19.710302, 23.267708>,  <23.208055, 20.377867, 23.275944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.067299, 19.710302, 23.267708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.700619, 19.804932, 23.138903>,  <22.480610, 19.861710, 23.061619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.700619, 19.804932, 23.138903>,  <23.067299, 19.710302, 23.267708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.700619, 19.804932, 23.138903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225298, -0.359551, -0.905519,
		-0.330000, -0.902639, 0.276302,
		-0.916701, 0.236571, -0.322014,
		22.425608, 19.875904, 23.042297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809868, 19.120474, 22.900864>,  <23.067299, 19.710302, 23.267708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809868, 19.120474, 22.900864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.622925, 19.432495, 22.734446>,  <22.510759, 19.619707, 22.634594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.622925, 19.432495, 22.734446>,  <22.809868, 19.120474, 22.900864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.622925, 19.432495, 22.734446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090798, -0.425765, -0.900267,
		-0.879393, -0.458524, 0.128158,
		-0.467359, 0.780051, -0.416048,
		22.482718, 19.666510, 22.609631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379827, 18.657923, 22.538958>,  <22.809868, 19.120474, 22.900864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379827, 18.657923, 22.538958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.358543, 19.027817, 22.388208>,  <22.345774, 19.249754, 22.297758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.358543, 19.027817, 22.388208>,  <22.379827, 18.657923, 22.538958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.358543, 19.027817, 22.388208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171105, -0.380271, -0.908910,
		-0.983815, 0.016123, 0.178460,
		-0.053208, 0.924735, -0.376875,
		22.342581, 19.305237, 22.275146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822083, 18.674374, 22.156597>,  <22.379827, 18.657923, 22.538958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822083, 18.674374, 22.156597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.046101, 18.977901, 22.023607>,  <22.180511, 19.160019, 21.943813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.046101, 18.977901, 22.023607>,  <21.822083, 18.674374, 22.156597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046101, 18.977901, 22.023607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201194, -0.264725, -0.943102,
		-0.803660, 0.595072, 0.004413,
		0.560046, 0.758821, -0.332474,
		22.214115, 19.205547, 21.923864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430065, 19.047413, 21.572433>,  <21.822083, 18.674374, 22.156597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430065, 19.047413, 21.572433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.818699, 19.125633, 21.519098>,  <22.051880, 19.172565, 21.487097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.818699, 19.125633, 21.519098>,  <21.430065, 19.047413, 21.572433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.818699, 19.125633, 21.519098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065122, -0.320756, -0.944921,
		-0.227549, 0.926756, -0.298907,
		0.971587, 0.195550, -0.133340,
		22.110174, 19.184298, 21.479095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402008, 19.254351, 20.906927>,  <21.430065, 19.047413, 21.572433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402008, 19.254351, 20.906927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.790138, 19.179588, 20.968298>,  <22.023016, 19.134731, 21.005119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.790138, 19.179588, 20.968298>,  <21.402008, 19.254351, 20.906927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.790138, 19.179588, 20.968298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036009, -0.515724, -0.855998,
		0.239116, 0.836120, -0.493688,
		0.970323, -0.186905, 0.153426,
		22.081236, 19.123516, 21.014326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.812538, 19.348265, 20.195536>,  <21.402008, 19.254351, 20.906927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.812538, 19.348265, 20.195536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.056599, 19.115993, 20.411139>,  <22.203035, 18.976631, 20.540501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.056599, 19.115993, 20.411139>,  <21.812538, 19.348265, 20.195536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056599, 19.115993, 20.411139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234931, -0.517122, -0.823039,
		0.756653, 0.628807, -0.179103,
		0.610151, -0.580678, 0.539008,
		22.239643, 18.941790, 20.572842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529814, 19.347895, 19.832365>,  <21.812538, 19.348265, 20.195536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529814, 19.347895, 19.832365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.459885, 19.031296, 20.066618>,  <22.417927, 18.841335, 20.207170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.459885, 19.031296, 20.066618>,  <22.529814, 19.347895, 19.832365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.459885, 19.031296, 20.066618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271573, -0.610483, -0.744015,
		0.946406, 0.028970, 0.321678,
		-0.174825, -0.791499, 0.585633,
		22.407436, 18.793846, 20.242308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097141, 18.962841, 19.714405>,  <22.529814, 19.347895, 19.832365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097141, 18.962841, 19.714405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.843513, 18.699451, 19.876577>,  <22.691338, 18.541418, 19.973881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.843513, 18.699451, 19.876577>,  <23.097141, 18.962841, 19.714405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843513, 18.699451, 19.876577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100769, -0.590190, -0.800950,
		0.766684, -0.467002, 0.440573,
		-0.634067, -0.658472, 0.405430,
		22.653294, 18.501909, 19.998207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.539852, 18.424879, 19.778944>,  <23.097141, 18.962841, 19.714405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.539852, 18.424879, 19.778944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.154541, 18.320763, 19.752581>,  <22.923355, 18.258293, 19.736763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.154541, 18.320763, 19.752581>,  <23.539852, 18.424879, 19.778944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.154541, 18.320763, 19.752581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164521, -0.378180, -0.910996,
		0.212198, -0.888386, 0.407115,
		-0.963278, -0.260290, -0.065909,
		22.865557, 18.242676, 19.732807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.649103, 17.846548, 19.449865>,  <23.539852, 18.424879, 19.778944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.649103, 17.846548, 19.449865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.256721, 17.911598, 19.407375>,  <23.021294, 17.950628, 19.381882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.256721, 17.911598, 19.407375>,  <23.649103, 17.846548, 19.449865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256721, 17.911598, 19.407375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024564, -0.438621, -0.898336,
		-0.192684, -0.883835, 0.426272,
		-0.980954, 0.162624, -0.106226,
		22.962435, 17.960386, 19.375507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.368601, 17.210762, 19.214502>,  <23.649103, 17.846548, 19.449865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.368601, 17.210762, 19.214502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.095165, 17.479855, 19.101271>,  <22.931103, 17.641310, 19.033331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.095165, 17.479855, 19.101271>,  <23.368601, 17.210762, 19.214502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.095165, 17.479855, 19.101271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309974, -0.618730, -0.721865,
		-0.660774, -0.405711, 0.631487,
		-0.683589, 0.672734, -0.283081,
		22.890089, 17.681675, 19.016346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.820347, 16.778301, 18.976624>,  <23.368601, 17.210762, 19.214502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.820347, 16.778301, 18.976624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.764393, 17.138927, 18.812864>,  <22.730820, 17.355303, 18.714609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.764393, 17.138927, 18.812864>,  <22.820347, 16.778301, 18.976624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.764393, 17.138927, 18.812864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319607, -0.432447, -0.843114,
		-0.937168, 0.012907, 0.348641,
		-0.139887, 0.901567, -0.409400,
		22.722427, 17.409397, 18.690044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.412312, 15.698308, 16.244940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.719185, 15.878517, 16.062309>,  <16.903309, 15.986643, 15.952731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.719185, 15.878517, 16.062309>,  <16.412312, 15.698308, 16.244940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719185, 15.878517, 16.062309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525853, 0.034150, -0.849890,
		-0.367303, 0.892112, 0.263107,
		0.767182, 0.450523, -0.456576,
		16.949339, 16.013674, 15.925337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145720, 16.243546, 15.762655>,  <16.412312, 15.698308, 16.244940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145720, 16.243546, 15.762655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.519917, 16.204601, 15.626785>,  <16.744434, 16.181234, 15.545263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.519917, 16.204601, 15.626785>,  <16.145720, 16.243546, 15.762655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519917, 16.204601, 15.626785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328690, 0.113060, -0.937646,
		0.129692, 0.988807, 0.073765,
		0.935491, -0.097360, -0.339674,
		16.800564, 16.175394, 15.524883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225134, 16.777737, 15.384539>,  <16.145720, 16.243546, 15.762655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225134, 16.777737, 15.384539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.488384, 16.515602, 15.236267>,  <16.646334, 16.358322, 15.147304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.488384, 16.515602, 15.236267>,  <16.225134, 16.777737, 15.384539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488384, 16.515602, 15.236267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297248, 0.226180, -0.927624,
		0.691746, 0.720678, -0.045943,
		0.658126, -0.655337, -0.370679,
		16.685822, 16.319000, 15.125063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508915, 17.124615, 14.746127>,  <16.225134, 16.777737, 15.384539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508915, 17.124615, 14.746127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.647179, 16.750263, 14.718838>,  <16.730137, 16.525652, 14.702464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.647179, 16.750263, 14.718838>,  <16.508915, 17.124615, 14.746127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647179, 16.750263, 14.718838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035962, 0.085864, -0.995658,
		0.937671, 0.341703, 0.063336,
		0.345657, -0.935877, -0.068224,
		16.750875, 16.469500, 14.698371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115385, 17.178699, 14.355937>,  <16.508915, 17.124615, 14.746127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.115385, 17.178699, 14.355937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.981987, 16.802200, 14.334646>,  <16.901949, 16.576302, 14.321872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.981987, 16.802200, 14.334646>,  <17.115385, 17.178699, 14.355937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981987, 16.802200, 14.334646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009838, 0.052981, -0.998547,
		0.942701, -0.333533, -0.008409,
		-0.333494, -0.941249, -0.053227,
		16.881939, 16.519825, 14.318678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510199, 16.852520, 13.901516>,  <17.115385, 17.178699, 14.355937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.510199, 16.852520, 13.901516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.189301, 16.613747, 13.898064>,  <16.996761, 16.470482, 13.895992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.189301, 16.613747, 13.898064>,  <17.510199, 16.852520, 13.901516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189301, 16.613747, 13.898064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088843, -0.105081, -0.990487,
		0.590348, -0.795379, 0.137334,
		-0.802244, -0.596934, -0.008630,
		16.948627, 16.434668, 13.895474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663561, 16.211096, 13.452155>,  <17.510199, 16.852520, 13.901516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663561, 16.211096, 13.452155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.266453, 16.257797, 13.463297>,  <17.028189, 16.285818, 13.469982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.266453, 16.257797, 13.463297>,  <17.663561, 16.211096, 13.452155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266453, 16.257797, 13.463297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043225, -0.131263, -0.990405,
		-0.111960, -0.984451, 0.135360,
		-0.992773, 0.116736, 0.027856,
		16.968622, 16.292824, 13.471653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485577, 15.705373, 13.019011>,  <17.663561, 16.211096, 13.452155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485577, 15.705373, 13.019011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155781, 15.930107, 13.046015>,  <16.957903, 16.064947, 13.062217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.155781, 15.930107, 13.046015>,  <17.485577, 15.705373, 13.019011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155781, 15.930107, 13.046015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250074, -0.254743, -0.934114,
		-0.507622, -0.787049, 0.350534,
		-0.824489, 0.561836, 0.067507,
		16.908434, 16.098658, 13.066267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998093, 15.307042, 12.734319>,  <17.485577, 15.705373, 13.019011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998093, 15.307042, 12.734319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.828117, 15.668724, 12.717155>,  <16.726131, 15.885734, 12.706858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.828117, 15.668724, 12.717155>,  <16.998093, 15.307042, 12.734319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828117, 15.668724, 12.717155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306949, -0.188523, -0.932868,
		-0.851593, -0.383240, 0.357655,
		-0.424938, 0.904205, -0.042909,
		16.700636, 15.939985, 12.704283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340708, 15.249814, 12.536271>,  <16.998093, 15.307042, 12.734319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340708, 15.249814, 12.536271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.433247, 15.621792, 12.421952>,  <16.488770, 15.844978, 12.353361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.433247, 15.621792, 12.421952>,  <16.340708, 15.249814, 12.536271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433247, 15.621792, 12.421952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418351, -0.170125, -0.892211,
		-0.878328, 0.325976, 0.349685,
		0.231349, 0.929945, -0.285798,
		16.502651, 15.900775, 12.336213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787514, 15.531447, 12.135014>,  <16.340708, 15.249814, 12.536271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787514, 15.531447, 12.135014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.060970, 15.808395, 12.042701>,  <16.225044, 15.974564, 11.987313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.060970, 15.808395, 12.042701>,  <15.787514, 15.531447, 12.135014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060970, 15.808395, 12.042701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353493, 0.037484, -0.934686,
		-0.638497, 0.720569, 0.270373,
		0.683641, 0.692369, -0.230783,
		16.266062, 16.016106, 11.973466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448076, 16.198658, 11.847607>,  <15.787514, 15.531447, 12.135014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448076, 16.198658, 11.847607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.827630, 16.178802, 11.722927>,  <16.055363, 16.166889, 11.648120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.827630, 16.178802, 11.722927>,  <15.448076, 16.198658, 11.847607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827630, 16.178802, 11.722927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296851, 0.195174, -0.934766,
		0.107234, 0.979512, 0.170463,
		0.948884, -0.049636, -0.311698,
		16.112295, 16.163912, 11.629417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847167, 15.793859, 11.383660>,  <15.448076, 16.198658, 11.847607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847167, 15.793859, 11.383660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.971288, 15.878345, 11.012910>,  <16.045759, 15.929038, 10.790460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.971288, 15.878345, 11.012910>,  <15.847167, 15.793859, 11.383660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971288, 15.878345, 11.012910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869171, -0.331871, -0.366610,
		-0.385038, 0.919374, 0.080605,
		0.310301, 0.211218, -0.926877,
		16.064379, 15.941710, 10.734847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315604, 16.160761, 10.996966>,  <15.847167, 15.793859, 11.383660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315604, 16.160761, 10.996966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.539151, 15.970070, 10.725555>,  <15.673280, 15.855656, 10.562709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.539151, 15.970070, 10.725555>,  <15.315604, 16.160761, 10.996966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539151, 15.970070, 10.725555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824469, -0.231631, -0.516331,
		0.088981, 0.847985, -0.522498,
		0.558868, -0.476727, -0.678526,
		15.706812, 15.827052, 10.521997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623652, 16.329481, 10.616302>,  <15.315604, 16.160761, 10.996966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623652, 16.329481, 10.616302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.378474, 16.605652, 10.462621>,  <14.231368, 16.771355, 10.370412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.378474, 16.605652, 10.462621>,  <14.623652, 16.329481, 10.616302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378474, 16.605652, 10.462621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113718, 0.558278, 0.821823,
		0.781901, 0.460040, -0.420707,
		-0.612943, 0.690427, -0.384203,
		14.194592, 16.812780, 10.347360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960750, 16.987719, 10.741670>,  <14.623652, 16.329481, 10.616302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960750, 16.987719, 10.741670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.584165, 17.113472, 10.692991>,  <14.358213, 17.188923, 10.663784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.584165, 17.113472, 10.692991>,  <14.960750, 16.987719, 10.741670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584165, 17.113472, 10.692991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068043, 0.530777, 0.844776,
		0.330177, 0.787045, -0.521098,
		-0.941464, 0.314382, -0.121697,
		14.301725, 17.207787, 10.656482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943491, 17.630669, 10.899365>,  <14.960750, 16.987719, 10.741670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943491, 17.630669, 10.899365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.560143, 17.524990, 10.942687>,  <14.330135, 17.461582, 10.968680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.560143, 17.524990, 10.942687>,  <14.943491, 17.630669, 10.899365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560143, 17.524990, 10.942687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039861, 0.499382, 0.865464,
		-0.282737, 0.825117, -0.489123,
		-0.958369, -0.264196, 0.108304,
		14.272633, 17.445732, 10.975179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544847, 18.258108, 11.004102>,  <14.943491, 17.630669, 10.899365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544847, 18.258108, 11.004102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.330714, 17.960674, 11.164352>,  <14.202234, 17.782215, 11.260503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.330714, 17.960674, 11.164352>,  <14.544847, 18.258108, 11.004102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.330714, 17.960674, 11.164352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094686, 0.524158, 0.846341,
		-0.839317, 0.415140, -0.351006,
		-0.535333, -0.743584, 0.400627,
		14.170115, 17.737598, 11.284540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986877, 18.645529, 11.362486>,  <14.544847, 18.258108, 11.004102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986877, 18.645529, 11.362486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.006417, 18.274323, 11.510216>,  <14.018142, 18.051600, 11.598853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.006417, 18.274323, 11.510216>,  <13.986877, 18.645529, 11.362486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006417, 18.274323, 11.510216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056401, 0.371738, 0.926623,
		-0.997212, -0.024435, 0.070500,
		0.048850, -0.928016, 0.369323,
		14.021072, 17.995918, 11.621013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447019, 18.519445, 11.957708>,  <13.986877, 18.645529, 11.362486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447019, 18.519445, 11.957708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.742620, 18.254353, 12.006144>,  <13.919980, 18.095297, 12.035205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.742620, 18.254353, 12.006144>,  <13.447019, 18.519445, 11.957708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742620, 18.254353, 12.006144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022633, 0.204057, 0.978698,
		-0.673324, -0.720518, 0.165797,
		0.739002, -0.662733, 0.121089,
		13.964320, 18.055532, 12.042470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202004, 18.143253, 12.546569>,  <13.447019, 18.519445, 11.957708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202004, 18.143253, 12.546569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.592822, 18.063633, 12.516207>,  <13.827312, 18.015862, 12.497990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.592822, 18.063633, 12.516207>,  <13.202004, 18.143253, 12.546569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592822, 18.063633, 12.516207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109245, 0.162265, 0.980681,
		-0.182890, -0.966462, 0.180285,
		0.977045, -0.199051, -0.075905,
		13.885936, 18.003918, 12.493435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.325167, 17.782421, 13.138330>,  <13.202004, 18.143253, 12.546569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.325167, 17.782421, 13.138330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.698928, 17.876961, 13.031725>,  <13.923184, 17.933685, 12.967762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.698928, 17.876961, 13.031725>,  <13.325167, 17.782421, 13.138330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698928, 17.876961, 13.031725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243984, 0.120482, 0.962266,
		0.259541, -0.964169, 0.054913,
		0.934403, 0.236350, -0.266512,
		13.979249, 17.947865, 12.951771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822402, 17.232702, 13.365305>,  <13.325167, 17.782421, 13.138330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.822402, 17.232702, 13.365305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.016461, 17.579945, 13.323307>,  <14.132896, 17.788290, 13.298108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.016461, 17.579945, 13.323307>,  <13.822402, 17.232702, 13.365305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016461, 17.579945, 13.323307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201974, 0.005579, 0.979375,
		0.850787, -0.496347, -0.172628,
		0.485147, 0.868106, -0.104995,
		14.162005, 17.840376, 13.291808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332077, 17.125263, 13.804856>,  <13.822402, 17.232702, 13.365305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332077, 17.125263, 13.804856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.355849, 17.519207, 13.739721>,  <14.370112, 17.755573, 13.700641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.355849, 17.519207, 13.739721>,  <14.332077, 17.125263, 13.804856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355849, 17.519207, 13.739721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344852, 0.132826, 0.929212,
		0.936774, -0.111377, -0.331737,
		0.059430, 0.984862, -0.162836,
		14.373678, 17.814665, 13.690870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928375, 17.345531, 14.233021>,  <14.332077, 17.125263, 13.804856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928375, 17.345531, 14.233021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.692565, 17.665573, 14.188679>,  <14.551079, 17.857599, 14.162073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.692565, 17.665573, 14.188679>,  <14.928375, 17.345531, 14.233021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692565, 17.665573, 14.188679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290137, 0.337830, 0.895372,
		0.753843, 0.495682, -0.431300,
		-0.589526, 0.800106, -0.110855,
		14.515707, 17.905605, 14.155422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242969, 17.902199, 14.517397>,  <14.928375, 17.345531, 14.233021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242969, 17.902199, 14.517397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.874843, 18.057674, 14.535023>,  <14.653967, 18.150959, 14.545598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.874843, 18.057674, 14.535023>,  <15.242969, 17.902199, 14.517397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874843, 18.057674, 14.535023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169778, 0.295408, 0.940165,
		0.352413, 0.872729, -0.337859,
		-0.920315, 0.388687, 0.044065,
		14.598748, 18.174280, 14.548243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314338, 18.565054, 14.706539>,  <15.242969, 17.902199, 14.517397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314338, 18.565054, 14.706539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.923268, 18.517624, 14.775928>,  <14.688626, 18.489166, 14.817562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.923268, 18.517624, 14.775928>,  <15.314338, 18.565054, 14.706539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923268, 18.517624, 14.775928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098983, 0.468342, 0.877985,
		-0.185352, 0.875555, -0.446149,
		-0.977674, -0.118575, 0.173473,
		14.629966, 18.482052, 14.827971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220820, 19.183567, 14.907864>,  <15.314338, 18.565054, 14.706539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220820, 19.183567, 14.907864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.926881, 18.935162, 15.016922>,  <14.750517, 18.786118, 15.082357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.926881, 18.935162, 15.016922>,  <15.220820, 19.183567, 14.907864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926881, 18.935162, 15.016922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019152, 0.382836, 0.923618,
		-0.677960, 0.683942, -0.269433,
		-0.734849, -0.621016, 0.272647,
		14.706426, 18.748857, 15.098716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035171, 19.703764, 14.458904>,  <15.220820, 19.183567, 14.907864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035171, 19.703764, 14.458904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154136, 20.073280, 14.362446>,  <15.225515, 20.294991, 14.304571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154136, 20.073280, 14.362446>,  <15.035171, 19.703764, 14.458904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154136, 20.073280, 14.362446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186248, -0.303860, -0.934334,
		-0.936406, 0.232971, -0.262427,
		0.297414, 0.923793, -0.241146,
		15.243360, 20.350418, 14.290102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745687, 19.819307, 13.831082>,  <15.035171, 19.703764, 14.458904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745687, 19.819307, 13.831082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.067485, 20.056881, 13.833157>,  <15.260564, 20.199425, 13.834401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.067485, 20.056881, 13.833157>,  <14.745687, 19.819307, 13.831082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.067485, 20.056881, 13.833157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171720, -0.224221, -0.959290,
		-0.568593, 0.772636, -0.282375,
		0.804496, 0.593935, 0.005187,
		15.308834, 20.235062, 13.834713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.775428, 20.134228, 13.155803>,  <14.745687, 19.819307, 13.831082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.775428, 20.134228, 13.155803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.143596, 20.185177, 13.303644>,  <15.364496, 20.215746, 13.392349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.143596, 20.185177, 13.303644>,  <14.775428, 20.134228, 13.155803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143596, 20.185177, 13.303644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390659, -0.264168, -0.881817,
		-0.014680, 0.956029, -0.292904,
		0.920419, 0.127371, 0.369603,
		15.419722, 20.223389, 13.414525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142767, 20.518415, 12.668304>,  <14.775428, 20.134228, 13.155803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142767, 20.518415, 12.668304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.434003, 20.351593, 12.885908>,  <15.608745, 20.251499, 13.016470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.434003, 20.351593, 12.885908>,  <15.142767, 20.518415, 12.668304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434003, 20.351593, 12.885908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564581, -0.085231, -0.820965,
		0.388757, 0.904875, 0.173407,
		0.728091, -0.417058, 0.544010,
		15.652430, 20.226475, 13.049111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826988, 20.836813, 12.453464>,  <15.142767, 20.518415, 12.668304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826988, 20.836813, 12.453464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928636, 20.492027, 12.628938>,  <15.989624, 20.285156, 12.734222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.928636, 20.492027, 12.628938>,  <15.826988, 20.836813, 12.453464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928636, 20.492027, 12.628938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639857, -0.190296, -0.744560,
		0.725263, 0.469902, 0.503175,
		0.254119, -0.861962, 0.438685,
		16.004871, 20.233438, 12.760543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521996, 20.881882, 12.391190>,  <15.826988, 20.836813, 12.453464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521996, 20.881882, 12.391190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421501, 20.501026, 12.460833>,  <16.361204, 20.272512, 12.502619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421501, 20.501026, 12.460833>,  <16.521996, 20.881882, 12.391190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421501, 20.501026, 12.460833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734073, -0.304672, -0.606887,
		0.630886, -0.024664, 0.775483,
		-0.251236, -0.952138, 0.174109,
		16.346130, 20.215385, 12.513065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106331, 20.533178, 12.250726>,  <16.521996, 20.881882, 12.391190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106331, 20.533178, 12.250726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.850117, 20.226025, 12.253972>,  <16.696388, 20.041733, 12.255919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.850117, 20.226025, 12.253972>,  <17.106331, 20.533178, 12.250726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850117, 20.226025, 12.253972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540295, -0.458148, -0.705820,
		0.545707, -0.447718, 0.708345,
		-0.640535, -0.767886, 0.008115,
		16.657955, 19.995659, 12.256407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558168, 19.995022, 12.432484>,  <17.106331, 20.533178, 12.250726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558168, 19.995022, 12.432484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.228523, 19.847748, 12.260306>,  <17.030737, 19.759384, 12.157001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.228523, 19.847748, 12.260306>,  <17.558168, 19.995022, 12.432484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228523, 19.847748, 12.260306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563862, -0.605492, -0.561640,
		-0.053843, -0.705564, 0.706598,
		-0.824112, -0.368183, -0.430442,
		16.981289, 19.737293, 12.131174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671833, 19.290148, 12.428266>,  <17.558168, 19.995022, 12.432484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671833, 19.290148, 12.428266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.388172, 19.356487, 12.154157>,  <17.217976, 19.396292, 11.989692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.388172, 19.356487, 12.154157>,  <17.671833, 19.290148, 12.428266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388172, 19.356487, 12.154157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368564, -0.741368, -0.560833,
		-0.601052, -0.650282, 0.464617,
		-0.709152, 0.165849, -0.685272,
		17.175426, 19.406242, 11.948575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446909, 18.599726, 12.202401>,  <17.671833, 19.290148, 12.428266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446909, 18.599726, 12.202401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.316856, 18.821857, 11.896226>,  <17.238825, 18.955137, 11.712521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.316856, 18.821857, 11.896226>,  <17.446909, 18.599726, 12.202401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316856, 18.821857, 11.896226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270538, -0.720966, -0.637980,
		-0.906144, -0.414508, 0.084172,
		-0.325133, 0.555330, -0.765439,
		17.219316, 18.988457, 11.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935404, 18.227274, 11.888100>,  <17.446909, 18.599726, 12.202401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935404, 18.227274, 11.888100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.103706, 18.472069, 11.620237>,  <17.204687, 18.618946, 11.459520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.103706, 18.472069, 11.620237>,  <16.935404, 18.227274, 11.888100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103706, 18.472069, 11.620237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130420, -0.771315, -0.622947,
		-0.897751, 0.174771, -0.404350,
		0.420754, 0.611987, -0.669655,
		17.229933, 18.655664, 11.419341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.665539, 18.020079, 11.164418>,  <16.935404, 18.227274, 11.888100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.665539, 18.020079, 11.164418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.976784, 18.245369, 11.053195>,  <17.163530, 18.380543, 10.986461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.976784, 18.245369, 11.053195>,  <16.665539, 18.020079, 11.164418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976784, 18.245369, 11.053195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119339, -0.567178, -0.814903,
		-0.616684, 0.600903, -0.508543,
		0.778113, 0.563226, -0.278059,
		17.210218, 18.414337, 10.969777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.596909, 21.200727, 17.817471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935430, 21.388435, 17.716625>,  <15.138542, 21.501060, 17.656118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935430, 21.388435, 17.716625>,  <14.596909, 21.200727, 17.817471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935430, 21.388435, 17.716625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278394, -0.013883, -0.960366,
		-0.454170, 0.882946, 0.118892,
		0.846301, 0.469269, -0.252112,
		15.189320, 21.529217, 17.640991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406769, 21.841301, 17.424274>,  <14.596909, 21.200727, 17.817471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406769, 21.841301, 17.424274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778127, 21.733196, 17.322262>,  <15.000941, 21.668333, 17.261053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778127, 21.733196, 17.322262>,  <14.406769, 21.841301, 17.424274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.778127, 21.733196, 17.322262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252106, 0.046108, -0.966601,
		0.272994, 0.961682, -0.025328,
		0.928395, -0.270261, -0.255033,
		15.056645, 21.652119, 17.245752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399722, 22.076115, 16.687922>,  <14.406769, 21.841301, 17.424274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399722, 22.076115, 16.687922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.735530, 21.864658, 16.738117>,  <14.937015, 21.737785, 16.768234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.735530, 21.864658, 16.738117>,  <14.399722, 22.076115, 16.687922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735530, 21.864658, 16.738117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039883, -0.170383, -0.984570,
		0.541864, 0.831571, -0.121956,
		0.839520, -0.528639, 0.125490,
		14.987386, 21.706066, 16.775764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868654, 22.361559, 16.166832>,  <14.399722, 22.076115, 16.687922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868654, 22.361559, 16.166832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957465, 21.985958, 16.271885>,  <15.010752, 21.760597, 16.334917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957465, 21.985958, 16.271885>,  <14.868654, 22.361559, 16.166832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.957465, 21.985958, 16.271885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010781, -0.266975, -0.963643,
		0.974981, 0.216787, -0.049152,
		0.222028, -0.939004, 0.262632,
		15.024074, 21.704256, 16.350674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516201, 22.184027, 15.787992>,  <14.868654, 22.361559, 16.166832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516201, 22.184027, 15.787992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324664, 21.849564, 15.894985>,  <15.209742, 21.648886, 15.959181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324664, 21.849564, 15.894985>,  <15.516201, 22.184027, 15.787992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324664, 21.849564, 15.894985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159886, -0.382650, -0.909954,
		0.863219, -0.392957, 0.316919,
		-0.478842, -0.836160, 0.267482,
		15.181011, 21.598715, 15.975230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917100, 21.692444, 15.566870>,  <15.516201, 22.184027, 15.787992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917100, 21.692444, 15.566870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579043, 21.482731, 15.608559>,  <15.376209, 21.356903, 15.633572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579043, 21.482731, 15.608559>,  <15.917100, 21.692444, 15.566870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579043, 21.482731, 15.608559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239228, -0.545334, -0.803356,
		0.478022, -0.654017, 0.586308,
		-0.845142, -0.524283, 0.104222,
		15.325500, 21.325447, 15.639826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083158, 21.005461, 15.402753>,  <15.917100, 21.692444, 15.566870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083158, 21.005461, 15.402753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683976, 21.002831, 15.377331>,  <15.444467, 21.001253, 15.362078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683976, 21.002831, 15.377331>,  <16.083158, 21.005461, 15.402753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683976, 21.002831, 15.377331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050922, -0.682660, -0.728959,
		-0.038593, -0.730706, 0.681600,
		-0.997957, -0.006576, -0.063555,
		15.384589, 21.000858, 15.358264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855540, 20.307482, 15.437942>,  <16.083158, 21.005461, 15.402753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855540, 20.307482, 15.437942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583850, 20.514473, 15.229761>,  <15.420835, 20.638668, 15.104853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583850, 20.514473, 15.229761>,  <15.855540, 20.307482, 15.437942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.583850, 20.514473, 15.229761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081538, -0.651535, -0.754224,
		-0.729386, -0.554724, 0.400346,
		-0.679226, 0.517477, -0.520452,
		15.380082, 20.669716, 15.073626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416946, 19.875845, 15.105792>,  <15.855540, 20.307482, 15.437942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416946, 19.875845, 15.105792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340343, 20.202702, 14.888313>,  <15.294380, 20.398815, 14.757826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340343, 20.202702, 14.888313>,  <15.416946, 19.875845, 15.105792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340343, 20.202702, 14.888313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191424, -0.512216, -0.837253,
		-0.962643, -0.264418, -0.058326,
		-0.191509, 0.817140, -0.543697,
		15.282889, 20.447844, 14.725204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589858, 19.639738, 15.228946>,  <15.416946, 19.875845, 15.105792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589858, 19.639738, 15.228946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538465, 19.275051, 15.385031>,  <14.507628, 19.056240, 15.478682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538465, 19.275051, 15.385031>,  <14.589858, 19.639738, 15.228946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538465, 19.275051, 15.385031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019310, 0.391098, 0.920146,
		-0.991524, 0.125759, -0.032644,
		-0.128483, -0.911716, 0.390211,
		14.499920, 19.001535, 15.502094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995758, 19.690264, 15.683492>,  <14.589858, 19.639738, 15.228946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995758, 19.690264, 15.683492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219811, 19.374405, 15.783655>,  <14.354243, 19.184889, 15.843754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219811, 19.374405, 15.783655>,  <13.995758, 19.690264, 15.683492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219811, 19.374405, 15.783655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083870, 0.246670, 0.965464,
		-0.824145, -0.561791, 0.071940,
		0.560134, -0.789649, 0.250409,
		14.387852, 19.137510, 15.858778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727437, 19.618153, 16.382154>,  <13.995758, 19.690264, 15.683492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727437, 19.618153, 16.382154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052009, 19.384586, 16.372158>,  <14.246752, 19.244446, 16.366159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052009, 19.384586, 16.372158>,  <13.727437, 19.618153, 16.382154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.052009, 19.384586, 16.372158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055181, -0.119108, 0.991347,
		-0.581842, -0.803028, -0.128868,
		0.811428, -0.583918, -0.024990,
		14.295437, 19.209412, 16.364660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.652889, 18.966070, 16.746450>,  <13.727437, 19.618153, 16.382154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.652889, 18.966070, 16.746450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045379, 19.043205, 16.748001>,  <14.280872, 19.089487, 16.748932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045379, 19.043205, 16.748001>,  <13.652889, 18.966070, 16.746450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045379, 19.043205, 16.748001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020763, -0.125580, 0.991866,
		0.191757, -0.973162, -0.127225,
		0.981223, 0.192839, 0.003875,
		14.339746, 19.101057, 16.749165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935482, 18.465216, 17.233133>,  <13.652889, 18.966070, 16.746450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935482, 18.465216, 17.233133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213048, 18.749424, 17.186409>,  <14.379587, 18.919949, 17.158375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213048, 18.749424, 17.186409>,  <13.935482, 18.465216, 17.233133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213048, 18.749424, 17.186409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316036, -0.154762, 0.936039,
		0.646996, -0.686449, -0.331941,
		0.693915, 0.710519, -0.116812,
		14.421223, 18.962580, 17.151365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423326, 18.094046, 17.597019>,  <13.935482, 18.465216, 17.233133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423326, 18.094046, 17.597019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556285, 18.468021, 17.547384>,  <14.636061, 18.692408, 17.517603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556285, 18.468021, 17.547384>,  <14.423326, 18.094046, 17.597019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556285, 18.468021, 17.547384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497304, -0.061952, 0.865362,
		0.801374, -0.349354, -0.485542,
		0.332398, 0.934940, -0.124088,
		14.656004, 18.748503, 17.510159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119237, 18.098797, 17.598755>,  <14.423326, 18.094046, 17.597019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119237, 18.098797, 17.598755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003642, 18.467712, 17.701414>,  <14.934285, 18.689062, 17.763010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003642, 18.467712, 17.701414>,  <15.119237, 18.098797, 17.598755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003642, 18.467712, 17.701414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515975, -0.075763, 0.853247,
		0.806385, 0.379002, -0.453984,
		-0.288987, 0.922289, 0.256650,
		14.916946, 18.744400, 17.778408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673599, 18.316704, 17.907528>,  <15.119237, 18.098797, 17.598755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673599, 18.316704, 17.907528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383512, 18.556290, 18.043352>,  <15.209459, 18.700041, 18.124847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383512, 18.556290, 18.043352>,  <15.673599, 18.316704, 17.907528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383512, 18.556290, 18.043352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380504, -0.062365, 0.922674,
		0.573824, 0.798345, -0.182679,
		-0.725219, 0.598962, 0.339560,
		15.165946, 18.735979, 18.145220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008131, 18.795797, 18.247931>,  <15.673599, 18.316704, 17.907528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008131, 18.795797, 18.247931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644240, 18.836166, 18.409031>,  <15.425905, 18.860388, 18.505692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644240, 18.836166, 18.409031>,  <16.008131, 18.795797, 18.247931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644240, 18.836166, 18.409031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410721, 0.076597, 0.908538,
		0.060843, 0.991941, -0.111134,
		-0.909729, 0.100923, 0.402751,
		15.371322, 18.866444, 18.529856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993199, 19.449162, 18.616205>,  <16.008131, 18.795797, 18.247931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993199, 19.449162, 18.616205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717538, 19.215664, 18.787930>,  <15.552141, 19.075565, 18.890965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717538, 19.215664, 18.787930>,  <15.993199, 19.449162, 18.616205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.717538, 19.215664, 18.787930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485229, 0.068249, 0.871719,
		-0.538163, 0.809063, 0.236216,
		-0.689154, -0.583746, 0.429310,
		15.510792, 19.040541, 18.916723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868754, 19.784523, 19.329975>,  <15.993199, 19.449162, 18.616205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868754, 19.784523, 19.329975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708867, 19.418591, 19.352991>,  <15.612935, 19.199032, 19.366800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708867, 19.418591, 19.352991>,  <15.868754, 19.784523, 19.329975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708867, 19.418591, 19.352991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419732, -0.126867, 0.898738,
		-0.814893, 0.383392, 0.434694,
		-0.399717, -0.914831, 0.057539,
		15.588952, 19.144142, 19.370253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465649, 19.852049, 19.945671>,  <15.868754, 19.784523, 19.329975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465649, 19.852049, 19.945671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503871, 19.458149, 19.887518>,  <15.526804, 19.221809, 19.852625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503871, 19.458149, 19.887518>,  <15.465649, 19.852049, 19.945671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503871, 19.458149, 19.887518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121530, -0.133419, 0.983580,
		-0.987978, -0.111654, 0.106928,
		0.095555, -0.984750, -0.145384,
		15.532537, 19.162724, 19.843903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245088, 19.495272, 20.522501>,  <15.465649, 19.852049, 19.945671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245088, 19.495272, 20.522501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414964, 19.167358, 20.368830>,  <15.516890, 18.970610, 20.276627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414964, 19.167358, 20.368830>,  <15.245088, 19.495272, 20.522501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.414964, 19.167358, 20.368830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328180, -0.256085, 0.909240,
		-0.843763, -0.512225, 0.160281,
		0.424690, -0.819784, -0.384177,
		15.542371, 18.921423, 20.253576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899505, 18.832642, 20.756754>,  <15.245088, 19.495272, 20.522501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899505, 18.832642, 20.756754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281629, 18.793671, 20.645117>,  <15.510902, 18.770288, 20.578135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281629, 18.793671, 20.645117>,  <14.899505, 18.832642, 20.756754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281629, 18.793671, 20.645117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273724, -0.064969, 0.959612,
		-0.111631, -0.993119, -0.035395,
		0.955308, -0.097433, -0.279093,
		15.568221, 18.764442, 20.561390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.310223, 20.995171, 18.404646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.939671, 21.090691, 18.521122>,  <22.717339, 21.148003, 18.591007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.939671, 21.090691, 18.521122>,  <23.310223, 20.995171, 18.404646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.939671, 21.090691, 18.521122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359085, -0.793117, -0.491959,
		0.113470, -0.560304, 0.820478,
		-0.926381, 0.238799, 0.291192,
		22.661757, 21.162331, 18.608479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.001026, 20.372030, 18.703438>,  <23.310223, 20.995171, 18.404646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.001026, 20.372030, 18.703438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.726269, 20.634750, 18.578995>,  <22.561415, 20.792383, 18.504330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.726269, 20.634750, 18.578995>,  <23.001026, 20.372030, 18.703438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.726269, 20.634750, 18.578995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275850, -0.631664, -0.724504,
		-0.672374, -0.411837, 0.615064,
		-0.686892, 0.656803, -0.311109,
		22.520201, 20.831791, 18.485662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.310293, 19.950834, 18.638762>,  <23.001026, 20.372030, 18.703438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.310293, 19.950834, 18.638762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.282902, 20.278648, 18.411192>,  <22.266468, 20.475336, 18.274651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.282902, 20.278648, 18.411192>,  <22.310293, 19.950834, 18.638762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282902, 20.278648, 18.411192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346616, -0.554283, -0.756722,
		-0.935504, 0.145380, 0.322019,
		-0.068477, 0.819534, -0.568925,
		22.262358, 20.524509, 18.240515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.667746, 19.966160, 18.260452>,  <22.310293, 19.950834, 18.638762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.667746, 19.966160, 18.260452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.888023, 20.204899, 18.027039>,  <22.020189, 20.348143, 17.886992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.888023, 20.204899, 18.027039>,  <21.667746, 19.966160, 18.260452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.888023, 20.204899, 18.027039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489197, -0.335668, -0.804993,
		-0.676332, 0.728765, 0.107126,
		0.550692, 0.596848, -0.583533,
		22.053230, 20.383953, 17.851978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161095, 20.086855, 17.708336>,  <21.667746, 19.966160, 18.260452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161095, 20.086855, 17.708336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.495029, 20.253498, 17.564398>,  <21.695391, 20.353483, 17.478035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.495029, 20.253498, 17.564398>,  <21.161095, 20.086855, 17.708336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495029, 20.253498, 17.564398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249265, -0.296748, -0.921850,
		-0.490832, 0.859290, -0.143891,
		0.834836, 0.416607, -0.359844,
		21.745480, 20.378481, 17.456444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.066210, 20.419577, 16.990286>,  <21.161095, 20.086855, 17.708336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.066210, 20.419577, 16.990286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.463276, 20.371902, 16.982193>,  <21.701515, 20.343298, 16.977337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.463276, 20.371902, 16.982193>,  <21.066210, 20.419577, 16.990286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463276, 20.371902, 16.982193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066139, -0.395342, -0.916150,
		0.101191, 0.910769, -0.400325,
		0.992666, -0.119184, -0.020232,
		21.761076, 20.336147, 16.976124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392384, 20.902990, 16.492340>,  <21.066210, 20.419577, 16.990286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392384, 20.902990, 16.492340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.601700, 20.564507, 16.532532>,  <21.727289, 20.361416, 16.556646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.601700, 20.564507, 16.532532>,  <21.392384, 20.902990, 16.492340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.601700, 20.564507, 16.532532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120127, -0.189987, -0.974410,
		0.843645, 0.497829, -0.201070,
		0.523290, -0.846210, 0.100479,
		21.758686, 20.310644, 16.562675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744141, 20.888737, 15.934595>,  <21.392384, 20.902990, 16.492340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744141, 20.888737, 15.934595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.765720, 20.499172, 16.022764>,  <21.778667, 20.265434, 16.075666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.765720, 20.499172, 16.022764>,  <21.744141, 20.888737, 15.934595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765720, 20.499172, 16.022764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076111, -0.224113, -0.971587,
		0.995639, 0.035639, -0.086216,
		0.053949, -0.973911, 0.220423,
		21.781904, 20.206999, 16.088892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.212904, 20.585064, 15.477845>,  <21.744141, 20.888737, 15.934595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.212904, 20.585064, 15.477845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.027744, 20.258129, 15.615065>,  <21.916649, 20.061968, 15.697396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.027744, 20.258129, 15.615065>,  <22.212904, 20.585064, 15.477845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027744, 20.258129, 15.615065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001476, -0.386298, -0.922373,
		0.886410, -0.427472, 0.177611,
		-0.462899, -0.817338, 0.343049,
		21.888874, 20.012928, 15.717979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498451, 20.074932, 15.050610>,  <22.212904, 20.585064, 15.477845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498451, 20.074932, 15.050610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.192375, 19.877331, 15.215750>,  <22.008730, 19.758770, 15.314834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.192375, 19.877331, 15.215750>,  <22.498451, 20.074932, 15.050610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192375, 19.877331, 15.215750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214345, -0.409200, -0.886911,
		0.607075, -0.767148, 0.207229,
		-0.765190, -0.494003, 0.412850,
		21.962818, 19.729130, 15.339604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549112, 19.482512, 14.753152>,  <22.498451, 20.074932, 15.050610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549112, 19.482512, 14.753152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.175831, 19.467503, 14.896105>,  <21.951862, 19.458498, 14.981876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.175831, 19.467503, 14.896105>,  <22.549112, 19.482512, 14.753152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175831, 19.467503, 14.896105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268245, -0.589035, -0.762287,
		0.239112, -0.807236, 0.539626,
		-0.933205, -0.037520, 0.357382,
		21.895870, 19.456247, 15.003320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.375027, 18.727556, 14.910755>,  <22.549112, 19.482512, 14.753152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.375027, 18.727556, 14.910755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.056183, 18.960457, 14.846754>,  <21.864876, 19.100197, 14.808353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.056183, 18.960457, 14.846754>,  <22.375027, 18.727556, 14.910755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.056183, 18.960457, 14.846754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157877, -0.456722, -0.875488,
		-0.582831, -0.672598, 0.455981,
		-0.797109, 0.582251, -0.160004,
		21.817049, 19.135132, 14.798753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.958246, 18.209051, 14.762570>,  <22.375027, 18.727556, 14.910755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.958246, 18.209051, 14.762570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.809856, 18.560669, 14.642797>,  <21.720821, 18.771639, 14.570933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.809856, 18.560669, 14.642797>,  <21.958246, 18.209051, 14.762570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.809856, 18.560669, 14.642797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154444, -0.376353, -0.913513,
		-0.915709, -0.292645, 0.275381,
		-0.370976, 0.879044, -0.299433,
		21.698565, 18.824383, 14.552968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247911, 18.115618, 14.557487>,  <21.958246, 18.209051, 14.762570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247911, 18.115618, 14.557487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322460, 18.453644, 14.357035>,  <21.367189, 18.656460, 14.236763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322460, 18.453644, 14.357035>,  <21.247911, 18.115618, 14.557487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322460, 18.453644, 14.357035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277329, -0.444074, -0.851990,
		-0.942525, 0.297766, 0.151597,
		0.186373, 0.845064, -0.501130,
		21.378372, 18.707163, 14.206696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862440, 17.657225, 14.952623>,  <21.247911, 18.115618, 14.557487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862440, 17.657225, 14.952623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.018902, 17.293030, 14.898943>,  <21.112780, 17.074512, 14.866735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.018902, 17.293030, 14.898943>,  <20.862440, 17.657225, 14.952623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018902, 17.293030, 14.898943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121586, -0.093418, 0.988175,
		-0.912258, -0.402848, 0.074161,
		0.391156, -0.910487, -0.134202,
		21.136250, 17.019884, 14.858683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652079, 17.224648, 15.504577>,  <20.862440, 17.657225, 14.952623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652079, 17.224648, 15.504577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.978722, 17.028194, 15.383289>,  <21.174707, 16.910322, 15.310517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.978722, 17.028194, 15.383289>,  <20.652079, 17.224648, 15.504577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978722, 17.028194, 15.383289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304597, -0.079540, 0.949154,
		-0.490281, -0.867444, 0.084645,
		0.816606, -0.491135, -0.303218,
		21.223703, 16.880854, 15.292324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.749796, 16.697397, 15.978722>,  <20.652079, 17.224648, 15.504577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.749796, 16.697397, 15.978722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110218, 16.728252, 15.808006>,  <21.326471, 16.746765, 15.705577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110218, 16.728252, 15.808006>,  <20.749796, 16.697397, 15.978722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110218, 16.728252, 15.808006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432057, -0.073969, 0.898808,
		0.037764, -0.994273, -0.099979,
		0.901055, 0.077139, -0.426789,
		21.380535, 16.751394, 15.679970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102177, 16.113119, 16.207211>,  <20.749796, 16.697397, 15.978722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102177, 16.113119, 16.207211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.373547, 16.386139, 16.098497>,  <21.536369, 16.549950, 16.033270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.373547, 16.386139, 16.098497>,  <21.102177, 16.113119, 16.207211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373547, 16.386139, 16.098497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524557, -0.191024, 0.829669,
		0.514371, -0.705435, -0.487631,
		0.678427, 0.682547, -0.271783,
		21.577074, 16.590902, 16.016962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813364, 15.936844, 16.496161>,  <21.102177, 16.113119, 16.207211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813364, 15.936844, 16.496161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.894638, 16.318111, 16.406551>,  <21.943403, 16.546871, 16.352785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.894638, 16.318111, 16.406551>,  <21.813364, 15.936844, 16.496161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894638, 16.318111, 16.406551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443019, 0.114543, 0.889165,
		0.873184, -0.279913, -0.398998,
		0.203187, 0.953168, -0.224023,
		21.955593, 16.604061, 16.339344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369238, 15.995619, 16.805794>,  <21.813364, 15.936844, 16.496161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369238, 15.995619, 16.805794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.297749, 16.382000, 16.730968>,  <22.254854, 16.613829, 16.686073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.297749, 16.382000, 16.730968>,  <22.369238, 15.995619, 16.805794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.297749, 16.382000, 16.730968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438064, 0.248361, 0.863954,
		0.880999, 0.072463, -0.467537,
		-0.178723, 0.965953, -0.187062,
		22.244131, 16.671785, 16.674850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988653, 16.325930, 16.883904>,  <22.369238, 15.995619, 16.805794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988653, 16.325930, 16.883904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720184, 16.613766, 16.955143>,  <22.559103, 16.786467, 16.997887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.720184, 16.613766, 16.955143>,  <22.988653, 16.325930, 16.883904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720184, 16.613766, 16.955143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437961, 0.191075, 0.878453,
		0.598095, 0.667594, -0.443396,
		-0.671173, 0.719589, 0.178100,
		22.518833, 16.829643, 17.008574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.350853, 16.957508, 17.168823>,  <22.988653, 16.325930, 16.883904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.350853, 16.957508, 17.168823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.969231, 17.011337, 17.275909>,  <22.740257, 17.043634, 17.340162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.969231, 17.011337, 17.275909>,  <23.350853, 16.957508, 17.168823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969231, 17.011337, 17.275909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299403, 0.392971, 0.869443,
		0.011797, 0.909651, -0.415206,
		-0.954054, 0.134571, 0.267717,
		22.683014, 17.051708, 17.356224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397379, 17.585318, 17.504154>,  <23.350853, 16.957508, 17.168823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397379, 17.585318, 17.504154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.042767, 17.446404, 17.626434>,  <22.829998, 17.363054, 17.699802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.042767, 17.446404, 17.626434>,  <23.397379, 17.585318, 17.504154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042767, 17.446404, 17.626434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123039, 0.459974, 0.879366,
		-0.446006, 0.817200, -0.365052,
		-0.886533, -0.347287, 0.305698,
		22.776806, 17.342216, 17.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.986856, 18.247599, 17.748926>,  <23.397379, 17.585318, 17.504154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.986856, 18.247599, 17.748926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.852482, 17.913612, 17.923271>,  <22.771856, 17.713221, 18.027878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.852482, 17.913612, 17.923271>,  <22.986856, 18.247599, 17.748926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852482, 17.913612, 17.923271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029965, 0.453046, 0.890983,
		-0.941407, 0.312376, -0.127176,
		-0.335938, -0.834967, 0.435861,
		22.751699, 17.663122, 18.054029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.425982, 18.522329, 18.146593>,  <22.986856, 18.247599, 17.748926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.425982, 18.522329, 18.146593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.524944, 18.172092, 18.312544>,  <22.584322, 17.961950, 18.412115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.524944, 18.172092, 18.312544>,  <22.425982, 18.522329, 18.146593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.524944, 18.172092, 18.312544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024031, 0.422514, 0.906038,
		-0.968614, -0.234129, 0.083491,
		0.247406, -0.875594, 0.414879,
		22.599167, 17.909414, 18.437008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022667, 18.576248, 18.674788>,  <22.425982, 18.522329, 18.146593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022667, 18.576248, 18.674788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.280746, 18.287613, 18.775209>,  <22.435595, 18.114431, 18.835463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.280746, 18.287613, 18.775209>,  <22.022667, 18.576248, 18.674788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280746, 18.287613, 18.775209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074145, 0.267911, 0.960587,
		-0.760408, -0.638385, 0.119354,
		0.645200, -0.721588, 0.251054,
		22.474306, 18.071136, 18.850525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688311, 18.219305, 19.174248>,  <22.022667, 18.576248, 18.674788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688311, 18.219305, 19.174248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.079166, 18.145264, 19.216072>,  <22.313681, 18.100840, 19.241167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.079166, 18.145264, 19.216072>,  <21.688311, 18.219305, 19.174248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079166, 18.145264, 19.216072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064764, 0.209285, 0.975708,
		-0.202491, -0.960175, 0.192513,
		0.977140, -0.185104, 0.104563,
		22.372309, 18.089733, 19.247440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651289, 17.696932, 19.765064>,  <21.688311, 18.219305, 19.174248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651289, 17.696932, 19.765064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.004925, 17.881729, 19.736937>,  <22.217106, 17.992607, 19.720060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.004925, 17.881729, 19.736937>,  <21.651289, 17.696932, 19.765064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.004925, 17.881729, 19.736937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052923, 0.248493, 0.967187,
		0.464309, -0.851359, 0.244141,
		0.884091, 0.461994, -0.070321,
		22.270153, 18.020327, 19.715841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334793, 17.074579, 20.157339>,  <21.651289, 17.696932, 19.765064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334793, 17.074579, 20.157339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.940533, 17.024986, 20.203161>,  <20.703978, 16.995230, 20.230656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.940533, 17.024986, 20.203161>,  <21.334793, 17.074579, 20.157339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940533, 17.024986, 20.203161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074560, -0.289090, -0.954394,
		0.151446, -0.949239, 0.275697,
		-0.985649, -0.123984, 0.114557,
		20.644838, 16.987791, 20.237528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149992, 16.451397, 19.870804>,  <21.334793, 17.074579, 20.157339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149992, 16.451397, 19.870804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.811398, 16.664085, 19.881611>,  <20.608240, 16.791698, 19.888096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.811398, 16.664085, 19.881611>,  <21.149992, 16.451397, 19.870804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811398, 16.664085, 19.881611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237991, -0.332502, -0.912580,
		-0.476256, -0.778918, 0.408004,
		-0.846487, 0.531723, 0.027019,
		20.557451, 16.823603, 19.889717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829475, 16.004927, 19.420748>,  <21.149992, 16.451397, 19.870804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829475, 16.004927, 19.420748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.616188, 16.342789, 19.439684>,  <20.488216, 16.545506, 19.451046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.616188, 16.342789, 19.439684>,  <20.829475, 16.004927, 19.420748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616188, 16.342789, 19.439684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390949, -0.196402, -0.899214,
		-0.750226, -0.497984, 0.434941,
		-0.533217, 0.844653, 0.047340,
		20.456223, 16.596184, 19.453886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200724, 15.824016, 19.170975>,  <20.829475, 16.004927, 19.420748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200724, 15.824016, 19.170975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.199108, 16.223988, 19.166557>,  <20.198139, 16.463970, 19.163906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.199108, 16.223988, 19.166557>,  <20.200724, 15.824016, 19.170975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199108, 16.223988, 19.166557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502005, -0.011578, -0.864787,
		-0.864855, 0.002052, 0.502017,
		-0.004038, 0.999931, -0.011043,
		20.197897, 16.523968, 19.163244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526863, 16.021269, 19.219971>,  <20.200724, 15.824016, 19.170975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526863, 16.021269, 19.219971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.731464, 16.312542, 19.037493>,  <19.854225, 16.487307, 18.928005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.731464, 16.312542, 19.037493>,  <19.526863, 16.021269, 19.219971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731464, 16.312542, 19.037493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420489, -0.250880, -0.871922,
		-0.749369, 0.637816, 0.177867,
		0.511503, 0.728182, -0.456197,
		19.884914, 16.530996, 18.900633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034962, 16.361500, 18.901865>,  <19.526863, 16.021269, 19.219971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034962, 16.361500, 18.901865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.373795, 16.474998, 18.722115>,  <19.577095, 16.543098, 18.614264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.373795, 16.474998, 18.722115>,  <19.034962, 16.361500, 18.901865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373795, 16.474998, 18.722115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441333, -0.095532, -0.892244,
		-0.296103, 0.954128, 0.044304,
		0.847082, 0.283749, -0.449376,
		19.627918, 16.560123, 18.587301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765169, 16.814426, 18.305399>,  <19.034962, 16.361500, 18.901865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765169, 16.814426, 18.305399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.139805, 16.727047, 18.195793>,  <19.364586, 16.674620, 18.130030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.139805, 16.727047, 18.195793>,  <18.765169, 16.814426, 18.305399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139805, 16.727047, 18.195793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312095, -0.164340, -0.935729,
		0.159377, 0.961911, -0.222096,
		0.936587, -0.218449, -0.274016,
		19.420780, 16.661512, 18.113588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864874, 17.180147, 17.646336>,  <18.765169, 16.814426, 18.305399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864874, 17.180147, 17.646336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.087070, 16.849724, 17.684391>,  <19.220388, 16.651470, 17.707224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.087070, 16.849724, 17.684391>,  <18.864874, 17.180147, 17.646336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087070, 16.849724, 17.684391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416535, -0.375462, -0.827965,
		0.719670, 0.420301, -0.552650,
		0.555494, -0.826060, 0.095138,
		19.253719, 16.601906, 17.712933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226440, 17.066399, 17.037558>,  <18.864874, 17.180147, 17.646336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226440, 17.066399, 17.037558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.151608, 16.720623, 17.224211>,  <19.106709, 16.513159, 17.336203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.151608, 16.720623, 17.224211>,  <19.226440, 17.066399, 17.037558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151608, 16.720623, 17.224211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525760, -0.313150, -0.790894,
		0.829806, -0.393299, -0.395902,
		-0.187081, -0.864438, 0.466634,
		19.095484, 16.461292, 17.364201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206467, 16.543621, 16.545704>,  <19.226440, 17.066399, 17.037558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206467, 16.543621, 16.545704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.983070, 16.364727, 16.825151>,  <18.849033, 16.257391, 16.992821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.983070, 16.364727, 16.825151>,  <19.206467, 16.543621, 16.545704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983070, 16.364727, 16.825151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690907, -0.215287, -0.690144,
		0.459060, -0.868120, -0.188763,
		-0.558490, -0.447235, 0.698620,
		18.815523, 16.230556, 17.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971535, 16.048349, 16.216166>,  <19.206467, 16.543621, 16.545704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971535, 16.048349, 16.216166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.719055, 16.056572, 16.526304>,  <18.567568, 16.061504, 16.712387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.719055, 16.056572, 16.526304>,  <18.971535, 16.048349, 16.216166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719055, 16.056572, 16.526304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727841, -0.361128, -0.582952,
		0.268017, -0.932290, 0.242905,
		-0.631200, 0.020555, 0.775348,
		18.529696, 16.062738, 16.758909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616175, 15.386040, 16.238392>,  <18.971535, 16.048349, 16.216166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616175, 15.386040, 16.238392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.391983, 15.653370, 16.434025>,  <18.257467, 15.813768, 16.551405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.391983, 15.653370, 16.434025>,  <18.616175, 15.386040, 16.238392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391983, 15.653370, 16.434025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751364, -0.161983, -0.639698,
		-0.348305, -0.726017, 0.592945,
		-0.560479, 0.668327, 0.489084,
		18.223839, 15.853868, 16.580750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954470, 15.119186, 16.264380>,  <18.616175, 15.386040, 16.238392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954470, 15.119186, 16.264380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.898296, 15.508873, 16.335012>,  <17.864592, 15.742685, 16.377392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.898296, 15.508873, 16.335012>,  <17.954470, 15.119186, 16.264380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898296, 15.508873, 16.335012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800518, -0.006774, -0.599271,
		-0.582623, -0.225515, 0.780828,
		-0.140434, 0.974216, 0.176582,
		17.856167, 15.801138, 16.387987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219837, 15.075522, 16.360828>,  <17.954470, 15.119186, 16.264380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219837, 15.075522, 16.360828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.329086, 15.442829, 16.246153>,  <17.394636, 15.663213, 16.177347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.329086, 15.442829, 16.246153>,  <17.219837, 15.075522, 16.360828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329086, 15.442829, 16.246153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818552, 0.065282, -0.570711,
		-0.505349, 0.390544, 0.769479,
		0.273120, 0.918267, -0.286690,
		17.411022, 15.718309, 16.160147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.151074, 18.371498, 21.255032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476274, 18.531830, 21.086096>,  <15.671393, 18.628029, 20.984734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.476274, 18.531830, 21.086096>,  <15.151074, 18.371498, 21.255032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.476274, 18.531830, 21.086096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447244, 0.034567, 0.893744,
		0.372838, -0.915501, -0.151166,
		0.812997, 0.400829, -0.422340,
		15.720173, 18.652079, 20.959394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705297, 18.078114, 21.669531>,  <15.151074, 18.371498, 21.255032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705297, 18.078114, 21.669531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.906837, 18.382412, 21.505869>,  <16.027760, 18.564991, 21.407673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.906837, 18.382412, 21.505869>,  <15.705297, 18.078114, 21.669531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906837, 18.382412, 21.505869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557365, 0.075545, 0.826823,
		0.659911, -0.644640, -0.385949,
		0.503847, 0.760744, -0.409153,
		16.057991, 18.610636, 21.383123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345253, 17.924805, 21.861835>,  <15.705297, 18.078114, 21.669531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345253, 17.924805, 21.861835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.367580, 18.318401, 21.794138>,  <16.380976, 18.554560, 21.753519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.367580, 18.318401, 21.794138>,  <16.345253, 17.924805, 21.861835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.367580, 18.318401, 21.794138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669741, 0.088815, 0.737264,
		0.740494, -0.154501, -0.654063,
		0.055817, 0.983992, -0.169243,
		16.384325, 18.613600, 21.743364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002106, 18.053453, 21.919256>,  <16.345253, 17.924805, 21.861835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002106, 18.053453, 21.919256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.831398, 18.411163, 21.973135>,  <16.728973, 18.625790, 22.005463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.831398, 18.411163, 21.973135>,  <17.002106, 18.053453, 21.919256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831398, 18.411163, 21.973135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627522, 0.185573, 0.756160,
		0.651218, 0.407231, -0.640373,
		-0.426768, 0.894274, 0.134698,
		16.703367, 18.679445, 22.013544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545105, 18.527473, 22.011494>,  <17.002106, 18.053453, 21.919256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545105, 18.527473, 22.011494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.240349, 18.721752, 22.182899>,  <17.057495, 18.838320, 22.285744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.240349, 18.721752, 22.182899>,  <17.545105, 18.527473, 22.011494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240349, 18.721752, 22.182899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590998, 0.250581, 0.766766,
		0.265037, 0.837442, -0.477960,
		-0.761890, 0.485695, 0.428514,
		17.011782, 18.867460, 22.311453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.758724, 19.190310, 22.153000>,  <17.545105, 18.527473, 22.011494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.758724, 19.190310, 22.153000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.460648, 19.096523, 22.402710>,  <17.281801, 19.040251, 22.552536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.460648, 19.096523, 22.402710>,  <17.758724, 19.190310, 22.153000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460648, 19.096523, 22.402710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524709, 0.371584, 0.765902,
		-0.411547, 0.898305, -0.153875,
		-0.745191, -0.234466, 0.624273,
		17.237091, 19.026184, 22.589993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662857, 19.803217, 22.595415>,  <17.758724, 19.190310, 22.153000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662857, 19.803217, 22.595415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.458946, 19.531948, 22.807156>,  <17.336599, 19.369186, 22.934200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.458946, 19.531948, 22.807156>,  <17.662857, 19.803217, 22.595415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458946, 19.531948, 22.807156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405709, 0.353080, 0.843051,
		-0.758635, 0.644531, 0.095147,
		-0.509778, -0.678170, 0.529351,
		17.306013, 19.328497, 22.965961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509817, 20.166290, 23.149263>,  <17.662857, 19.803217, 22.595415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509817, 20.166290, 23.149263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.443344, 19.792770, 23.276011>,  <17.403460, 19.568659, 23.352058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.443344, 19.792770, 23.276011>,  <17.509817, 20.166290, 23.149263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443344, 19.792770, 23.276011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517562, 0.190920, 0.834073,
		-0.839352, 0.302608, 0.451571,
		-0.166184, -0.933797, 0.316868,
		17.393490, 19.512630, 23.371071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205572, 20.230104, 23.853611>,  <17.509817, 20.166290, 23.149263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205572, 20.230104, 23.853611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.391678, 19.877182, 23.825150>,  <17.503342, 19.665428, 23.808073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.391678, 19.877182, 23.825150>,  <17.205572, 20.230104, 23.853611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391678, 19.877182, 23.825150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546976, 0.223372, 0.806798,
		-0.695949, -0.414295, 0.586528,
		0.465266, -0.882306, -0.071154,
		17.531258, 19.612490, 23.803802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218788, 20.043402, 24.483952>,  <17.205572, 20.230104, 23.853611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218788, 20.043402, 24.483952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.506454, 19.815857, 24.324354>,  <17.679054, 19.679329, 24.228596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.506454, 19.815857, 24.324354>,  <17.218788, 20.043402, 24.483952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.506454, 19.815857, 24.324354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518833, 0.057687, 0.852927,
		-0.462183, -0.820406, 0.336632,
		0.719166, -0.568864, -0.398992,
		17.722204, 19.645197, 24.204657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456131, 19.587503, 24.987160>,  <17.218788, 20.043402, 24.483952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456131, 19.587503, 24.987160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.778088, 19.581470, 24.749868>,  <17.971262, 19.577850, 24.607492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.778088, 19.581470, 24.749868>,  <17.456131, 19.587503, 24.987160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778088, 19.581470, 24.749868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591139, 0.107979, 0.799309,
		0.052000, -0.994039, 0.095828,
		0.804891, -0.015084, -0.593230,
		18.019554, 19.576946, 24.571899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967985, 19.236557, 25.340038>,  <17.456131, 19.587503, 24.987160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967985, 19.236557, 25.340038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168106, 19.448399, 25.066042>,  <18.288179, 19.575504, 24.901644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168106, 19.448399, 25.066042>,  <17.967985, 19.236557, 25.340038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168106, 19.448399, 25.066042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662583, 0.275106, 0.696635,
		0.557387, -0.802393, -0.213272,
		0.500303, 0.529606, -0.684992,
		18.318197, 19.607281, 24.860544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.734587, 18.972723, 25.230249>,  <17.967985, 19.236557, 25.340038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.734587, 18.972723, 25.230249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.649536, 19.360394, 25.180471>,  <18.598507, 19.592997, 25.150604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.649536, 19.360394, 25.180471>,  <18.734587, 18.972723, 25.230249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649536, 19.360394, 25.180471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617379, 0.231963, 0.751689,
		0.757386, 0.082999, -0.647671,
		-0.212626, 0.969177, -0.124444,
		18.585749, 19.651146, 25.143139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344276, 19.434811, 25.196463>,  <18.734587, 18.972723, 25.230249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344276, 19.434811, 25.196463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.025436, 19.635521, 25.330837>,  <18.834133, 19.755947, 25.411463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.025436, 19.635521, 25.330837>,  <19.344276, 19.434811, 25.196463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.025436, 19.635521, 25.330837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497280, 0.229869, 0.836584,
		0.342554, 0.833896, -0.432751,
		-0.797100, 0.501774, 0.335937,
		18.786306, 19.786053, 25.431618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994217, 19.873091, 25.170847>,  <19.344276, 19.434811, 25.196463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994217, 19.873091, 25.170847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.208374, 19.547546, 25.261166>,  <20.336868, 19.352221, 25.315357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.208374, 19.547546, 25.261166>,  <19.994217, 19.873091, 25.170847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208374, 19.547546, 25.261166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072441, -0.310606, -0.947774,
		0.841490, 0.491077, -0.225254,
		0.535395, -0.813860, 0.225797,
		20.368992, 19.303389, 25.328905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643766, 19.780003, 24.679892>,  <19.994217, 19.873091, 25.170847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643766, 19.780003, 24.679892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.562832, 19.413734, 24.818806>,  <20.514271, 19.193974, 24.902155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.562832, 19.413734, 24.818806>,  <20.643766, 19.780003, 24.679892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.562832, 19.413734, 24.818806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053525, -0.364431, -0.929691,
		0.977852, -0.169522, 0.122749,
		-0.202337, -0.915670, 0.347286,
		20.502131, 19.139034, 24.922991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096014, 19.343561, 24.340462>,  <20.643766, 19.780003, 24.679892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096014, 19.343561, 24.340462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.827202, 19.087368, 24.489140>,  <20.665915, 18.933653, 24.578346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.827202, 19.087368, 24.489140>,  <21.096014, 19.343561, 24.340462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827202, 19.087368, 24.489140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007870, -0.495731, -0.868441,
		0.740482, -0.586544, 0.328105,
		-0.672030, -0.640482, 0.371696,
		20.625593, 18.895224, 24.600649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.421227, 18.712713, 24.053284>,  <21.096014, 19.343561, 24.340462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.421227, 18.712713, 24.053284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.051804, 18.613239, 24.170036>,  <20.830149, 18.553555, 24.240088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.051804, 18.613239, 24.170036>,  <21.421227, 18.712713, 24.053284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051804, 18.613239, 24.170036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105316, -0.567413, -0.816670,
		0.368711, -0.784983, 0.497849,
		-0.923559, -0.248684, 0.291883,
		20.774736, 18.538633, 24.257601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348951, 17.913530, 24.089214>,  <21.421227, 18.712713, 24.053284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348951, 17.913530, 24.089214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.977940, 18.057735, 24.049786>,  <20.755333, 18.144258, 24.026129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.977940, 18.057735, 24.049786>,  <21.348951, 17.913530, 24.089214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.977940, 18.057735, 24.049786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137785, -0.575005, -0.806464,
		-0.347420, -0.734439, 0.583008,
		-0.927532, 0.360512, -0.098573,
		20.699680, 18.165890, 24.020214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984324, 17.368002, 23.944775>,  <21.348951, 17.913530, 24.089214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984324, 17.368002, 23.944775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.755775, 17.662418, 23.799570>,  <20.618647, 17.839069, 23.712446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.755775, 17.662418, 23.799570>,  <20.984324, 17.368002, 23.944775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.755775, 17.662418, 23.799570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250463, -0.577609, -0.776940,
		-0.781541, -0.352998, 0.514379,
		-0.571368, 0.736043, -0.363013,
		20.584364, 17.883232, 23.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306108, 17.052887, 23.897875>,  <20.984324, 17.368002, 23.944775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306108, 17.052887, 23.897875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.318203, 17.370811, 23.655434>,  <20.325460, 17.561567, 23.509970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.318203, 17.370811, 23.655434>,  <20.306108, 17.052887, 23.897875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318203, 17.370811, 23.655434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173467, -0.593004, -0.786292,
		-0.984375, 0.128913, 0.119944,
		0.030237, 0.794813, -0.606101,
		20.327274, 17.609255, 23.473604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676785, 16.997112, 23.395941>,  <20.306108, 17.052887, 23.897875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676785, 16.997112, 23.395941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.946590, 17.246696, 23.238106>,  <20.108475, 17.396446, 23.143404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.946590, 17.246696, 23.238106>,  <19.676785, 16.997112, 23.395941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946590, 17.246696, 23.238106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273129, -0.285651, -0.918588,
		-0.685877, 0.727377, -0.022255,
		0.674517, 0.623960, -0.394590,
		20.148945, 17.433884, 23.119728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374508, 17.187216, 22.807957>,  <19.676785, 16.997112, 23.395941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374508, 17.187216, 22.807957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.751110, 17.301949, 22.737192>,  <19.977072, 17.370789, 22.694733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.751110, 17.301949, 22.737192>,  <19.374508, 17.187216, 22.807957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.751110, 17.301949, 22.737192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099212, -0.265783, -0.958914,
		-0.322067, 0.920374, -0.221778,
		0.941504, 0.286831, -0.176912,
		20.033562, 17.387999, 22.684118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339966, 17.438595, 22.139530>,  <19.374508, 17.187216, 22.807957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339966, 17.438595, 22.139530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.735062, 17.402599, 22.190561>,  <19.972118, 17.381002, 22.221180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.735062, 17.402599, 22.190561>,  <19.339966, 17.438595, 22.139530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.735062, 17.402599, 22.190561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115489, -0.128705, -0.984935,
		0.105054, 0.987592, -0.116734,
		0.987738, -0.089990, 0.127577,
		20.031384, 17.375603, 22.228834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647602, 17.954847, 21.707825>,  <19.339966, 17.438595, 22.139530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647602, 17.954847, 21.707825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.961643, 17.715946, 21.773436>,  <20.150068, 17.572605, 21.812801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.961643, 17.715946, 21.773436>,  <19.647602, 17.954847, 21.707825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961643, 17.715946, 21.773436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116870, -0.117217, -0.986206,
		0.608239, 0.793443, -0.022226,
		0.785103, -0.597251, 0.164026,
		20.197174, 17.536772, 21.822643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143373, 18.221859, 21.375395>,  <19.647602, 17.954847, 21.707825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143373, 18.221859, 21.375395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.230717, 17.833637, 21.416075>,  <20.283123, 17.600704, 21.440483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.230717, 17.833637, 21.416075>,  <20.143373, 18.221859, 21.375395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230717, 17.833637, 21.416075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200351, -0.057408, -0.978041,
		0.955080, 0.233940, 0.181916,
		0.218359, -0.970555, 0.101699,
		20.296225, 17.542471, 21.446585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714781, 18.125126, 20.939503>,  <20.143373, 18.221859, 21.375395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714781, 18.125126, 20.939503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.592911, 17.750061, 21.006388>,  <20.519789, 17.525023, 21.046518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.592911, 17.750061, 21.006388>,  <20.714781, 18.125126, 20.939503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.592911, 17.750061, 21.006388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129380, -0.214676, -0.968078,
		0.943628, -0.273314, 0.186721,
		-0.304673, -0.937664, 0.167213,
		20.501509, 17.468761, 21.056551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.224682, 17.662792, 20.637888>,  <20.714781, 18.125126, 20.939503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.224682, 17.662792, 20.637888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.889786, 17.444092, 20.641739>,  <20.688848, 17.312872, 20.644049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.889786, 17.444092, 20.641739>,  <21.224682, 17.662792, 20.637888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889786, 17.444092, 20.641739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123064, -0.205545, -0.970879,
		0.532807, -0.811675, 0.239375,
		-0.837240, -0.546750, 0.009628,
		20.638613, 17.280067, 20.644627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.009855, 17.511925, 20.528852>,  <21.224682, 17.662792, 20.637888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.009855, 17.511925, 20.528852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.189655, 17.833302, 20.372683>,  <22.297535, 18.026127, 20.278980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.189655, 17.833302, 20.372683>,  <22.009855, 17.511925, 20.528852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189655, 17.833302, 20.372683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276079, 0.290717, 0.916113,
		0.849547, -0.519581, -0.091135,
		0.449501, 0.803442, -0.390423,
		22.324505, 18.074333, 20.255556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.204231, 17.902205, 21.123255>,  <22.009855, 17.511925, 20.528852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.204231, 17.902205, 21.123255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.317215, 18.178127, 20.856606>,  <22.385004, 18.343681, 20.696617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.317215, 18.178127, 20.856606>,  <22.204231, 17.902205, 21.123255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.317215, 18.178127, 20.856606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163099, 0.650267, 0.741992,
		0.945313, -0.318306, 0.071166,
		0.282457, 0.689807, -0.666621,
		22.401953, 18.385069, 20.656620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789415, 18.208511, 21.429958>,  <22.204231, 17.902205, 21.123255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789415, 18.208511, 21.429958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.642612, 18.457016, 21.153021>,  <22.554531, 18.606119, 20.986858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.642612, 18.457016, 21.153021>,  <22.789415, 18.208511, 21.429958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642612, 18.457016, 21.153021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016757, 0.739745, 0.672679,
		0.930067, 0.258480, -0.261082,
		-0.367008, 0.621261, -0.692344,
		22.532511, 18.643394, 20.945318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319368, 18.813454, 21.325546>,  <22.789415, 18.208511, 21.429958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319368, 18.813454, 21.325546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.945114, 18.907219, 21.219995>,  <22.720562, 18.963478, 21.156664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.945114, 18.907219, 21.219995>,  <23.319368, 18.813454, 21.325546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945114, 18.907219, 21.219995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021470, 0.784026, 0.620356,
		0.352309, 0.574763, -0.738597,
		-0.935637, 0.234415, -0.263879,
		22.664423, 18.977543, 21.140831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287777, 19.597681, 21.233606>,  <23.319368, 18.813454, 21.325546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287777, 19.597681, 21.233606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.917118, 19.460289, 21.294727>,  <22.694723, 19.377853, 21.331400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.917118, 19.460289, 21.294727>,  <23.287777, 19.597681, 21.233606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.917118, 19.460289, 21.294727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118732, 0.653053, 0.747947,
		-0.356693, 0.674940, -0.645931,
		-0.926646, -0.343480, 0.152802,
		22.639124, 19.357244, 21.340569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.946331, 20.119019, 21.459806>,  <23.287777, 19.597681, 21.233606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.946331, 20.119019, 21.459806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.704208, 19.827530, 21.587912>,  <22.558935, 19.652637, 21.664774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.704208, 19.827530, 21.587912>,  <22.946331, 20.119019, 21.459806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704208, 19.827530, 21.587912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199831, 0.528577, 0.825030,
		-0.770501, 0.435397, -0.465573,
		-0.605307, -0.728722, 0.320263,
		22.522617, 19.608913, 21.683990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.257345, 20.456169, 21.699360>,  <22.946331, 20.119019, 21.459806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.257345, 20.456169, 21.699360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.277447, 20.099155, 21.878628>,  <22.289507, 19.884947, 21.986189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.277447, 20.099155, 21.878628>,  <22.257345, 20.456169, 21.699360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277447, 20.099155, 21.878628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169380, 0.434619, 0.884543,
		-0.984269, -0.120361, -0.129337,
		0.050252, -0.892535, 0.448169,
		22.292522, 19.831394, 22.013079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760241, 21.075153, 21.585888>,  <22.257345, 20.456169, 21.699360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760241, 21.075153, 21.585888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.913139, 21.434868, 21.500870>,  <22.004879, 21.650696, 21.449860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.913139, 21.434868, 21.500870>,  <21.760241, 21.075153, 21.585888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913139, 21.434868, 21.500870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146338, -0.286019, -0.946984,
		-0.912399, 0.330880, -0.240930,
		0.382248, 0.899284, -0.212543,
		22.027813, 21.704653, 21.437107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449112, 21.202312, 21.016764>,  <21.760241, 21.075153, 21.585888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449112, 21.202312, 21.016764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.751911, 21.463673, 21.014767>,  <21.933590, 21.620489, 21.013569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.751911, 21.463673, 21.014767>,  <21.449112, 21.202312, 21.016764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751911, 21.463673, 21.014767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157281, -0.189625, -0.969177,
		-0.634208, 0.732878, -0.246313,
		0.756996, 0.653401, -0.004994,
		21.979010, 21.659693, 21.013269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310329, 21.670980, 20.547615>,  <21.449112, 21.202312, 21.016764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310329, 21.670980, 20.547615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.710125, 21.679920, 20.556759>,  <21.950003, 21.685284, 20.562244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.710125, 21.679920, 20.556759>,  <21.310329, 21.670980, 20.547615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.710125, 21.679920, 20.556759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025877, -0.145772, -0.988980,
		-0.018771, 0.989066, -0.146276,
		0.999489, 0.022350, 0.022858,
		22.009972, 21.686625, 20.563616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470020, 22.148760, 19.928617>,  <21.310329, 21.670980, 20.547615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470020, 22.148760, 19.928617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.828861, 22.015312, 20.044481>,  <22.044167, 21.935244, 20.114000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.828861, 22.015312, 20.044481>,  <21.470020, 22.148760, 19.928617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.828861, 22.015312, 20.044481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304817, -0.007237, -0.952383,
		0.319830, 0.942680, 0.095201,
		0.897104, -0.333620, 0.289659,
		22.097992, 21.915226, 20.131378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.095472, 22.589439, 19.713709>,  <21.470020, 22.148760, 19.928617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.095472, 22.589439, 19.713709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.258518, 22.226318, 19.753189>,  <22.356346, 22.008446, 19.776878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.258518, 22.226318, 19.753189>,  <22.095472, 22.589439, 19.713709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.258518, 22.226318, 19.753189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193212, -0.019902, -0.980955,
		0.892480, 0.418921, 0.167286,
		0.407613, -0.907805, 0.098703,
		22.380802, 21.953978, 19.782801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604721, 22.617804, 19.278059>,  <22.095472, 22.589439, 19.713709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604721, 22.617804, 19.278059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.545635, 22.225948, 19.332441>,  <22.510183, 21.990835, 19.365070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.545635, 22.225948, 19.332441>,  <22.604721, 22.617804, 19.278059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545635, 22.225948, 19.332441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191651, -0.163212, -0.967797,
		0.970283, -0.116903, 0.211858,
		-0.147717, -0.979640, 0.135957,
		22.501320, 21.932056, 19.373228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107094, 22.317520, 18.885550>,  <22.604721, 22.617804, 19.278059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107094, 22.317520, 18.885550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.834129, 22.028530, 18.929991>,  <22.670351, 21.855137, 18.956656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.834129, 22.028530, 18.929991>,  <23.107094, 22.317520, 18.885550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834129, 22.028530, 18.929991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084859, -0.229267, -0.969657,
		0.726024, -0.652279, 0.217763,
		-0.682413, -0.722474, 0.111101,
		22.629406, 21.811789, 18.963322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.534637, 22.798100, 23.419397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.623585, 22.408115, 23.418911>,  <18.676952, 22.174124, 23.418619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.623585, 22.408115, 23.418911>,  <18.534637, 22.798100, 23.419397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623585, 22.408115, 23.418911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388158, -0.087385, -0.917441,
		0.894364, 0.204480, -0.397871,
		0.222367, -0.974962, -0.001217,
		18.690294, 22.115627, 23.418547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983316, 22.608181, 22.858318>,  <18.534637, 22.798100, 23.419397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983316, 22.608181, 22.858318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.784435, 22.274864, 22.954996>,  <18.665106, 22.074875, 23.013002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.784435, 22.274864, 22.954996>,  <18.983316, 22.608181, 22.858318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784435, 22.274864, 22.954996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363130, -0.053138, -0.930222,
		0.787988, -0.550275, -0.276173,
		-0.497203, -0.833291, 0.241694,
		18.635275, 22.024878, 23.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082983, 22.140232, 22.284212>,  <18.983316, 22.608181, 22.858318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082983, 22.140232, 22.284212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.745651, 22.012714, 22.457262>,  <18.543251, 21.936203, 22.561092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.745651, 22.012714, 22.457262>,  <19.082983, 22.140232, 22.284212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745651, 22.012714, 22.457262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480937, 0.088525, -0.872275,
		0.239777, -0.943681, -0.227975,
		-0.843331, -0.318793, 0.432625,
		18.492653, 21.917076, 22.587049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880423, 21.636703, 21.833069>,  <19.082983, 22.140232, 22.284212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880423, 21.636703, 21.833069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.559269, 21.703724, 22.061911>,  <18.366577, 21.743937, 22.199215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.559269, 21.703724, 22.061911>,  <18.880423, 21.636703, 21.833069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559269, 21.703724, 22.061911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582567, -0.016958, -0.812606,
		-0.126453, -0.985717, 0.111227,
		-0.802885, 0.167554, 0.572102,
		18.318403, 21.753988, 22.233541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383196, 21.144459, 21.624176>,  <18.880423, 21.636703, 21.833069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383196, 21.144459, 21.624176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.177650, 21.421520, 21.826630>,  <18.054323, 21.587757, 21.948103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.177650, 21.421520, 21.826630>,  <18.383196, 21.144459, 21.624176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177650, 21.421520, 21.826630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745444, -0.068536, -0.663035,
		-0.424565, -0.718006, 0.551553,
		-0.513864, 0.692654, 0.506136,
		18.023491, 21.629316, 21.978470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661386, 20.875416, 21.955593>,  <18.383196, 21.144459, 21.624176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.661386, 20.875416, 21.955593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.631088, 21.268555, 21.888334>,  <17.612909, 21.504438, 21.847979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.631088, 21.268555, 21.888334>,  <17.661386, 20.875416, 21.955593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.631088, 21.268555, 21.888334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657876, -0.175978, -0.732278,
		-0.749307, 0.055153, 0.659922,
		-0.075744, 0.982848, -0.168145,
		17.608364, 21.563410, 21.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955204, 21.155993, 22.116707>,  <17.661386, 20.875416, 21.955593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955204, 21.155993, 22.116707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.110817, 21.419083, 21.858700>,  <17.204185, 21.576937, 21.703896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.110817, 21.419083, 21.858700>,  <16.955204, 21.155993, 22.116707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110817, 21.419083, 21.858700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823183, -0.066121, -0.563913,
		-0.413550, 0.750348, 0.515707,
		0.389032, 0.657727, -0.645019,
		17.227526, 21.616402, 21.665194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389584, 21.542713, 21.920298>,  <16.955204, 21.155993, 22.116707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389584, 21.542713, 21.920298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.681892, 21.621250, 21.658789>,  <16.857277, 21.668373, 21.501883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.681892, 21.621250, 21.658789>,  <16.389584, 21.542713, 21.920298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681892, 21.621250, 21.658789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679035, 0.111041, -0.725659,
		-0.069882, 0.974227, 0.214469,
		0.730772, 0.196343, -0.653775,
		16.901125, 21.680153, 21.462656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081326, 22.045925, 21.447515>,  <16.389584, 21.542713, 21.920298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081326, 22.045925, 21.447515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.382648, 21.922775, 21.215054>,  <16.563442, 21.848886, 21.075577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.382648, 21.922775, 21.215054>,  <16.081326, 22.045925, 21.447515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382648, 21.922775, 21.215054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515345, 0.272667, -0.812448,
		0.408593, 0.911519, 0.046740,
		0.753307, -0.307874, -0.581157,
		16.608641, 21.830414, 21.040707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150166, 22.581049, 21.005457>,  <16.081326, 22.045925, 21.447515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150166, 22.581049, 21.005457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.329887, 22.272968, 20.824387>,  <16.437721, 22.088120, 20.715744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.329887, 22.272968, 20.824387>,  <16.150166, 22.581049, 21.005457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329887, 22.272968, 20.824387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391525, 0.285690, -0.874694,
		0.803016, 0.570237, -0.173192,
		0.449304, -0.770202, -0.452675,
		16.464678, 22.041908, 20.688583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506657, 22.865704, 20.374969>,  <16.150166, 22.581049, 21.005457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506657, 22.865704, 20.374969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.443954, 22.472565, 20.336111>,  <16.406332, 22.236681, 20.312796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.443954, 22.472565, 20.336111>,  <16.506657, 22.865704, 20.374969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443954, 22.472565, 20.336111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387953, 0.151733, -0.909104,
		0.908251, -0.104821, -0.405084,
		-0.156758, -0.982848, -0.097146,
		16.396927, 22.177710, 20.306967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707155, 22.738277, 19.662376>,  <16.506657, 22.865704, 20.374969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707155, 22.738277, 19.662376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.505959, 22.409763, 19.770073>,  <16.385241, 22.212656, 19.834692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.505959, 22.409763, 19.770073>,  <16.707155, 22.738277, 19.662376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505959, 22.409763, 19.770073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475551, 0.002862, -0.879684,
		0.721699, -0.570513, -0.392001,
		-0.502993, -0.821284, 0.269243,
		16.355061, 22.163378, 19.850845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451376, 22.836718, 19.531115>,  <16.707155, 22.738277, 19.662376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451376, 22.836718, 19.531115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.620914, 23.165962, 19.379936>,  <17.722637, 23.363508, 19.289228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.620914, 23.165962, 19.379936>,  <17.451376, 22.836718, 19.531115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620914, 23.165962, 19.379936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256580, 0.291074, 0.921652,
		0.868632, -0.487612, -0.087823,
		0.423846, 0.823110, -0.377948,
		17.748068, 23.412895, 19.266552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915375, 22.919300, 19.965666>,  <17.451376, 22.836718, 19.531115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915375, 22.919300, 19.965666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.916019, 23.286091, 19.806089>,  <17.916407, 23.506165, 19.710342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.916019, 23.286091, 19.806089>,  <17.915375, 22.919300, 19.965666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916019, 23.286091, 19.806089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329120, 0.376231, 0.866101,
		0.944287, -0.132694, -0.301189,
		0.001610, 0.916975, -0.398942,
		17.916502, 23.561184, 19.686407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445105, 23.253725, 20.307198>,  <17.915375, 22.919300, 19.965666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445105, 23.253725, 20.307198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.248524, 23.567379, 20.155615>,  <18.130575, 23.755571, 20.064665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.248524, 23.567379, 20.155615>,  <18.445105, 23.253725, 20.307198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.248524, 23.567379, 20.155615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358044, 0.578570, 0.732845,
		0.793901, 0.224475, -0.565094,
		-0.491452, 0.784135, -0.378955,
		18.101088, 23.802620, 20.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940025, 23.826691, 20.258175>,  <18.445105, 23.253725, 20.307198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940025, 23.826691, 20.258175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.587292, 24.014423, 20.239840>,  <18.375652, 24.127062, 20.228838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.587292, 24.014423, 20.239840>,  <18.940025, 23.826691, 20.258175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587292, 24.014423, 20.239840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320437, 0.667700, 0.671935,
		0.345965, 0.577846, -0.739190,
		-0.881832, 0.469330, -0.045837,
		18.322742, 24.155222, 20.226088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011335, 24.539762, 20.100407>,  <18.940025, 23.826691, 20.258175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011335, 24.539762, 20.100407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.658188, 24.524796, 20.287657>,  <18.446299, 24.515816, 20.400007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.658188, 24.524796, 20.287657>,  <19.011335, 24.539762, 20.100407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.658188, 24.524796, 20.287657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332730, 0.653611, 0.679767,
		-0.331408, 0.755905, -0.564603,
		-0.882870, -0.037419, 0.468124,
		18.393328, 24.513569, 20.428095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846746, 25.248001, 20.288101>,  <19.011335, 24.539762, 20.100407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846746, 25.248001, 20.288101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.607441, 25.036201, 20.528671>,  <18.463858, 24.909122, 20.673014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.607441, 25.036201, 20.528671>,  <18.846746, 25.248001, 20.288101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607441, 25.036201, 20.528671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390965, 0.462269, 0.795898,
		-0.699446, 0.711294, -0.069545,
		-0.598265, -0.529498, 0.601424,
		18.427961, 24.877352, 20.709099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570915, 25.808979, 20.779100>,  <18.846746, 25.248001, 20.288101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570915, 25.808979, 20.779100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.510700, 25.443035, 20.928963>,  <18.474571, 25.223469, 21.018879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.510700, 25.443035, 20.928963>,  <18.570915, 25.808979, 20.779100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510700, 25.443035, 20.928963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201030, 0.342727, 0.917674,
		-0.967949, 0.213461, 0.132322,
		-0.150537, -0.914862, 0.374654,
		18.465540, 25.168577, 21.041359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.197191, 25.919334, 21.326475>,  <18.570915, 25.808979, 20.779100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.197191, 25.919334, 21.326475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.381973, 25.571636, 21.396915>,  <18.492842, 25.363018, 21.439178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.381973, 25.571636, 21.396915>,  <18.197191, 25.919334, 21.326475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381973, 25.571636, 21.396915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232245, 0.310186, 0.921871,
		-0.855957, -0.384963, 0.345169,
		0.461953, -0.869246, 0.176100,
		18.520559, 25.310862, 21.449745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090792, 25.718834, 21.990416>,  <18.197191, 25.919334, 21.326475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090792, 25.718834, 21.990416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.408112, 25.480331, 21.941175>,  <18.598503, 25.337231, 21.911631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.408112, 25.480331, 21.941175>,  <18.090792, 25.718834, 21.990416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408112, 25.480331, 21.941175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367565, 0.307856, 0.877565,
		-0.485355, -0.741421, 0.463385,
		0.793301, -0.596255, -0.123101,
		18.646101, 25.301455, 21.904245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.205101, 25.397045, 22.694921>,  <18.090792, 25.718834, 21.990416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.205101, 25.397045, 22.694921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.550045, 25.367943, 22.494507>,  <18.757011, 25.350481, 22.374258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.550045, 25.367943, 22.494507>,  <18.205101, 25.397045, 22.694921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550045, 25.367943, 22.494507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506115, 0.097717, 0.856913,
		-0.013388, -0.992551, 0.121092,
		0.862362, -0.072759, -0.501036,
		18.808754, 25.346117, 22.344196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612076, 24.995502, 23.146406>,  <18.205101, 25.397045, 22.694921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.612076, 24.995502, 23.146406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.867428, 25.156631, 22.884047>,  <19.020639, 25.253309, 22.726631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.867428, 25.156631, 22.884047>,  <18.612076, 24.995502, 23.146406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867428, 25.156631, 22.884047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650356, 0.173517, 0.739547,
		0.411716, -0.898680, -0.151209,
		0.638379, 0.402822, -0.655901,
		19.058941, 25.277477, 22.687277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090496, 24.529131, 23.152662>,  <18.612076, 24.995502, 23.146406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090496, 24.529131, 23.152662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.230743, 24.884365, 23.033754>,  <19.314892, 25.097506, 22.962410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.230743, 24.884365, 23.033754>,  <19.090496, 24.529131, 23.152662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.230743, 24.884365, 23.033754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623908, 0.015221, 0.781350,
		0.698430, -0.459426, -0.548746,
		0.350620, 0.888085, -0.297271,
		19.335930, 25.150791, 22.944572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882679, 24.438955, 23.155725>,  <19.090496, 24.529131, 23.152662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882679, 24.438955, 23.155725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798584, 24.829704, 23.140125>,  <19.748127, 25.064154, 23.130766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798584, 24.829704, 23.140125>,  <19.882679, 24.438955, 23.155725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798584, 24.829704, 23.140125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521124, 0.145726, 0.840948,
		0.827182, 0.156475, -0.539709,
		-0.210237, 0.976872, -0.038999,
		19.735514, 25.122766, 23.128426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.503246, 24.819796, 23.175642>,  <19.882679, 24.438955, 23.155725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.503246, 24.819796, 23.175642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.210217, 25.055984, 23.311100>,  <20.034399, 25.197697, 23.392374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.210217, 25.055984, 23.311100>,  <20.503246, 24.819796, 23.175642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210217, 25.055984, 23.311100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569296, 0.258761, 0.780349,
		0.373146, 0.764452, -0.525714,
		-0.732574, 0.590471, 0.338644,
		19.990444, 25.233126, 23.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088039, 24.238216, 23.076447>,  <20.503246, 24.819796, 23.175642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088039, 24.238216, 23.076447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.237480, 23.965694, 23.328239>,  <21.327145, 23.802181, 23.479315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.237480, 23.965694, 23.328239>,  <21.088039, 24.238216, 23.076447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237480, 23.965694, 23.328239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150860, -0.624956, -0.765944,
		0.915238, 0.381123, -0.130704,
		0.373604, -0.681304, 0.629480,
		21.349562, 23.761303, 23.517084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794903, 24.111383, 22.974697>,  <21.088039, 24.238216, 23.076447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794903, 24.111383, 22.974697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.650642, 23.781727, 23.149385>,  <21.564085, 23.583933, 23.254198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.650642, 23.781727, 23.149385>,  <21.794903, 24.111383, 22.974697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650642, 23.781727, 23.149385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262981, -0.539086, -0.800142,
		0.894858, -0.173724, 0.411156,
		-0.360652, -0.824140, 0.436719,
		21.542446, 23.534485, 23.280401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.252546, 23.699028, 22.702501>,  <21.794903, 24.111383, 22.974697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.252546, 23.699028, 22.702501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.993881, 23.436287, 22.857615>,  <21.838682, 23.278643, 22.950682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.993881, 23.436287, 22.857615>,  <22.252546, 23.699028, 22.702501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993881, 23.436287, 22.857615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411670, -0.728522, -0.547525,
		0.642150, -0.194425, 0.741513,
		-0.646661, -0.656852, 0.387782,
		21.799883, 23.239231, 22.973949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609621, 23.112362, 22.782270>,  <22.252546, 23.699028, 22.702501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609621, 23.112362, 22.782270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.224407, 23.004852, 22.775049>,  <21.993279, 22.940346, 22.770718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.224407, 23.004852, 22.775049>,  <22.609621, 23.112362, 22.782270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224407, 23.004852, 22.775049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228531, -0.779680, -0.582987,
		0.142618, -0.565561, 0.812281,
		-0.963034, -0.268776, -0.018052,
		21.935497, 22.924219, 22.769634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.599430, 22.313725, 22.867229>,  <22.609621, 23.112362, 22.782270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.599430, 22.313725, 22.867229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.262527, 22.420967, 22.680157>,  <22.060387, 22.485313, 22.567913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.262527, 22.420967, 22.680157>,  <22.599430, 22.313725, 22.867229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262527, 22.420967, 22.680157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227581, -0.609614, -0.759327,
		-0.488685, -0.745982, 0.452435,
		-0.842255, 0.268106, -0.467681,
		22.009851, 22.501400, 22.539852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297543, 21.614824, 22.616652>,  <22.599430, 22.313725, 22.867229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297543, 21.614824, 22.616652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.149494, 21.934902, 22.427887>,  <22.060665, 22.126949, 22.314629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.149494, 21.934902, 22.427887>,  <22.297543, 21.614824, 22.616652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149494, 21.934902, 22.427887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082795, -0.477550, -0.874695,
		-0.925288, -0.362813, 0.110498,
		-0.370119, 0.800196, -0.471910,
		22.038458, 22.174961, 22.286314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.774427, 21.368828, 22.268665>,  <22.297543, 21.614824, 22.616652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.774427, 21.368828, 22.268665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.920982, 21.686123, 22.074127>,  <22.008915, 21.876499, 21.957403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.920982, 21.686123, 22.074127>,  <21.774427, 21.368828, 22.268665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.920982, 21.686123, 22.074127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295867, -0.594887, -0.747377,
		-0.882169, 0.129936, -0.452653,
		0.366389, 0.793238, -0.486347,
		22.030899, 21.924093, 21.928223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641544, 20.543028, 22.133734>,  <21.774427, 21.368828, 22.268665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641544, 20.543028, 22.133734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.891628, 20.268951, 22.283201>,  <22.041679, 20.104506, 22.372881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.891628, 20.268951, 22.283201>,  <21.641544, 20.543028, 22.133734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891628, 20.268951, 22.283201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251867, 0.276026, 0.927563,
		-0.738699, -0.674035, -0.000003,
		0.625209, -0.685191, 0.373667,
		22.079191, 20.063395, 22.395302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229336, 20.224722, 22.635283>,  <21.641544, 20.543028, 22.133734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229336, 20.224722, 22.635283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.595451, 20.118637, 22.756550>,  <21.815121, 20.054985, 22.829309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.595451, 20.118637, 22.756550>,  <21.229336, 20.224722, 22.635283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595451, 20.118637, 22.756550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276992, 0.132025, 0.951759,
		-0.292445, -0.955108, 0.047379,
		0.915288, -0.265214, 0.303167,
		21.870037, 20.039072, 22.847500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212490, 19.979225, 23.368265>,  <21.229336, 20.224722, 22.635283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212490, 19.979225, 23.368265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610531, 20.016064, 23.353880>,  <21.849356, 20.038168, 23.345249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610531, 20.016064, 23.353880>,  <21.212490, 19.979225, 23.368265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610531, 20.016064, 23.353880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030498, 0.060055, 0.997729,
		0.094056, -0.993937, 0.056951,
		0.995100, 0.092106, -0.035962,
		21.909061, 20.043694, 23.343092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557177, 19.526262, 23.801079>,  <21.212490, 19.979225, 23.368265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557177, 19.526262, 23.801079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.798790, 19.843452, 23.769247>,  <21.943758, 20.033766, 23.750147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.798790, 19.843452, 23.769247>,  <21.557177, 19.526262, 23.801079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.798790, 19.843452, 23.769247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085899, 0.034495, 0.995706,
		0.792315, -0.608277, -0.047280,
		0.604035, 0.792975, -0.079581,
		21.980001, 20.081345, 23.745373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.030598, 19.328012, 24.382486>,  <21.557177, 19.526262, 23.801079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.030598, 19.328012, 24.382486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.074413, 19.708084, 24.265759>,  <22.100702, 19.936127, 24.195723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.074413, 19.708084, 24.265759>,  <22.030598, 19.328012, 24.382486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074413, 19.708084, 24.265759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314963, 0.245277, 0.916863,
		0.942762, -0.192345, -0.272404,
		0.109539, 0.950180, -0.291819,
		22.107275, 19.993137, 24.178213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.795197, 19.525642, 24.516941>,  <22.030598, 19.328012, 24.382486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.795197, 19.525642, 24.516941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.558292, 19.847542, 24.500919>,  <22.416149, 20.040682, 24.491306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.558292, 19.847542, 24.500919>,  <22.795197, 19.525642, 24.516941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558292, 19.847542, 24.500919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392682, 0.331690, 0.857777,
		0.703582, 0.492300, -0.512458,
		-0.592261, 0.804750, -0.040054,
		22.380613, 20.088966, 24.488903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102167, 20.070572, 24.949078>,  <22.795197, 19.525642, 24.516941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102167, 20.070572, 24.949078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.742786, 20.245178, 24.930168>,  <22.527157, 20.349941, 24.918823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.742786, 20.245178, 24.930168>,  <23.102167, 20.070572, 24.949078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.742786, 20.245178, 24.930168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141864, 0.390500, 0.909607,
		0.415519, 0.810533, -0.412772,
		-0.898453, 0.436516, -0.047274,
		22.473249, 20.376133, 24.915985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242336, 20.711140, 25.263374>,  <23.102167, 20.070572, 24.949078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242336, 20.711140, 25.263374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.845737, 20.662941, 25.283024>,  <22.607779, 20.634022, 25.294813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.845737, 20.662941, 25.283024>,  <23.242336, 20.711140, 25.263374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845737, 20.662941, 25.283024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003103, 0.355511, 0.934667,
		-0.130089, 0.926872, -0.352114,
		-0.991497, -0.120497, 0.049124,
		22.548288, 20.626791, 25.297762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102659, 21.261225, 25.607924>,  <23.242336, 20.711140, 25.263374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102659, 21.261225, 25.607924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.801620, 20.998901, 25.631632>,  <22.620998, 20.841507, 25.645857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.801620, 20.998901, 25.631632>,  <23.102659, 21.261225, 25.607924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801620, 20.998901, 25.631632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041611, 0.042466, 0.998231,
		-0.657167, 0.753730, -0.004670,
		-0.752595, -0.655810, 0.059271,
		22.575842, 20.802158, 25.649412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.972294, 17.204697, 10.646461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.698395, 17.039158, 10.886411>,  <18.534056, 16.939835, 11.030380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.698395, 17.039158, 10.886411>,  <18.972294, 17.204697, 10.646461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698395, 17.039158, 10.886411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687218, -0.092676, 0.720515,
		-0.242590, 0.905616, 0.347863,
		-0.684749, -0.413848, 0.599874,
		18.492970, 16.915003, 11.066373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950096, 17.536480, 11.343266>,  <18.972294, 17.204697, 10.646461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950096, 17.536480, 11.343266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828350, 17.157135, 11.378974>,  <18.755302, 16.929527, 11.400399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828350, 17.157135, 11.378974>,  <18.950096, 17.536480, 11.343266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828350, 17.157135, 11.378974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672125, -0.147405, 0.725617,
		-0.674990, 0.280852, 0.682283,
		-0.304363, -0.948364, 0.089271,
		18.737041, 16.872625, 11.405755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776510, 17.484962, 12.067670>,  <18.950096, 17.536480, 11.343266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776510, 17.484962, 12.067670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.831722, 17.100449, 11.972268>,  <18.864849, 16.869741, 11.915028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.831722, 17.100449, 11.972268>,  <18.776510, 17.484962, 12.067670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831722, 17.100449, 11.972268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698341, -0.076303, 0.711686,
		-0.702330, -0.264790, 0.660771,
		0.138029, -0.961283, -0.238504,
		18.873131, 16.812063, 11.900717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915527, 17.159161, 12.667232>,  <18.776510, 17.484962, 12.067670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915527, 17.159161, 12.667232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.037121, 16.870853, 12.418046>,  <19.110077, 16.697868, 12.268535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.037121, 16.870853, 12.418046>,  <18.915527, 17.159161, 12.667232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037121, 16.870853, 12.418046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641329, -0.328724, 0.693281,
		-0.704479, -0.610273, 0.362322,
		0.303986, -0.720769, -0.622965,
		19.128317, 16.654623, 12.231156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754528, 16.388067, 12.935377>,  <18.915527, 17.159161, 12.667232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754528, 16.388067, 12.935377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.062527, 16.370125, 12.680789>,  <19.247326, 16.359360, 12.528036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.062527, 16.370125, 12.680789>,  <18.754528, 16.388067, 12.935377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062527, 16.370125, 12.680789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578045, -0.373282, 0.725621,
		-0.270131, -0.926633, -0.261496,
		0.769996, -0.044857, -0.636470,
		19.293526, 16.356667, 12.489848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156231, 15.753100, 13.131330>,  <18.754528, 16.388067, 12.935377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156231, 15.753100, 13.131330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.410637, 15.984428, 12.926964>,  <19.563280, 16.123224, 12.804344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.410637, 15.984428, 12.926964>,  <19.156231, 15.753100, 13.131330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410637, 15.984428, 12.926964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637011, -0.019774, 0.770601,
		0.435552, -0.815570, -0.380973,
		0.636013, 0.578320, -0.510914,
		19.601440, 16.157925, 12.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758385, 15.400761, 13.260045>,  <19.156231, 15.753100, 13.131330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758385, 15.400761, 13.260045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.830036, 15.778275, 13.148916>,  <19.873028, 16.004782, 13.082239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.830036, 15.778275, 13.148916>,  <19.758385, 15.400761, 13.260045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830036, 15.778275, 13.148916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655149, 0.096239, 0.749345,
		0.733957, -0.316244, -0.601080,
		0.179129, 0.943784, -0.277822,
		19.883776, 16.061409, 13.065570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546144, 15.422778, 13.166693>,  <19.758385, 15.400761, 13.260045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546144, 15.422778, 13.166693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.431648, 15.802292, 13.220171>,  <20.362951, 16.030001, 13.252257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.431648, 15.802292, 13.220171>,  <20.546144, 15.422778, 13.166693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431648, 15.802292, 13.220171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802567, 0.161192, 0.574373,
		0.523405, 0.271707, -0.807603,
		-0.286240, 0.948785, 0.133694,
		20.345776, 16.086927, 13.260280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214146, 15.867624, 13.054051>,  <20.546144, 15.422778, 13.166693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214146, 15.867624, 13.054051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.949158, 16.085148, 13.260122>,  <20.790165, 16.215662, 13.383764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.949158, 16.085148, 13.260122>,  <21.214146, 15.867624, 13.054051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949158, 16.085148, 13.260122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722802, 0.283454, 0.630247,
		0.196705, 0.789889, -0.580846,
		-0.662468, 0.543810, 0.515177,
		20.750418, 16.248291, 13.414676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552891, 16.467535, 13.345477>,  <21.214146, 15.867624, 13.054051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552891, 16.467535, 13.345477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205982, 16.463516, 13.544571>,  <20.997837, 16.461105, 13.664027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205982, 16.463516, 13.544571>,  <21.552891, 16.467535, 13.345477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205982, 16.463516, 13.544571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473167, 0.294179, 0.830405,
		-0.154766, 0.955697, -0.250379,
		-0.867272, -0.010047, 0.497734,
		20.945801, 16.460503, 13.693891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496687, 17.105406, 13.613775>,  <21.552891, 16.467535, 13.345477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496687, 17.105406, 13.613775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.266193, 16.876404, 13.847080>,  <21.127897, 16.739002, 13.987063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.266193, 16.876404, 13.847080>,  <21.496687, 17.105406, 13.613775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266193, 16.876404, 13.847080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401219, 0.423586, 0.812157,
		-0.712024, 0.702008, -0.014385,
		-0.576234, -0.572503, 0.583262,
		21.093323, 16.704653, 14.022058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027859, 17.502794, 14.116469>,  <21.496687, 17.105406, 13.613775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027859, 17.502794, 14.116469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.070988, 17.136639, 14.271616>,  <21.096865, 16.916946, 14.364704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.070988, 17.136639, 14.271616>,  <21.027859, 17.502794, 14.116469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070988, 17.136639, 14.271616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148874, 0.400608, 0.904074,
		-0.982960, -0.039737, 0.179472,
		0.107823, -0.915387, 0.387866,
		21.103334, 16.862022, 14.387976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.689360, 18.130293, 13.821682>,  <21.027859, 17.502794, 14.116469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.689360, 18.130293, 13.821682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.995792, 18.383160, 13.775230>,  <21.179651, 18.534880, 13.747359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.995792, 18.383160, 13.775230>,  <20.689360, 18.130293, 13.821682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995792, 18.383160, 13.775230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104315, -0.055996, -0.992967,
		-0.634222, 0.772807, 0.023047,
		0.766081, 0.632166, -0.116129,
		21.225616, 18.572809, 13.740392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512642, 18.667515, 13.379246>,  <20.689360, 18.130293, 13.821682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512642, 18.667515, 13.379246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.909584, 18.664894, 13.329952>,  <21.147749, 18.663322, 13.300376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.909584, 18.664894, 13.329952>,  <20.512642, 18.667515, 13.379246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.909584, 18.664894, 13.329952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123361, -0.025107, -0.992044,
		0.003404, 0.999663, -0.025723,
		0.992356, -0.006550, -0.123234,
		21.207291, 18.662930, 13.292982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696140, 19.019691, 12.770272>,  <20.512642, 18.667515, 13.379246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696140, 19.019691, 12.770272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.026276, 18.805027, 12.840484>,  <21.224358, 18.676228, 12.882610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.026276, 18.805027, 12.840484>,  <20.696140, 19.019691, 12.770272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026276, 18.805027, 12.840484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167565, -0.064067, -0.983777,
		0.539202, 0.841361, 0.037049,
		0.825338, -0.536662, 0.175528,
		21.273876, 18.644028, 12.893142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202089, 19.373657, 12.453163>,  <20.696140, 19.019691, 12.770272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202089, 19.373657, 12.453163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.331802, 18.995701, 12.471131>,  <21.409630, 18.768927, 12.481912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.331802, 18.995701, 12.471131>,  <21.202089, 19.373657, 12.453163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331802, 18.995701, 12.471131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130382, -0.002387, -0.991461,
		0.936931, 0.327372, 0.122423,
		0.324285, -0.944893, 0.044920,
		21.429089, 18.712233, 12.484607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766279, 19.365887, 11.922581>,  <21.202089, 19.373657, 12.453163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766279, 19.365887, 11.922581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.735973, 18.972389, 11.987701>,  <21.717791, 18.736290, 12.026773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.735973, 18.972389, 11.987701>,  <21.766279, 19.365887, 11.922581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735973, 18.972389, 11.987701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080643, -0.168780, -0.982349,
		0.993860, -0.061297, 0.092120,
		-0.075763, -0.983746, 0.162801,
		21.713243, 18.677265, 12.036542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209759, 19.144705, 11.443419>,  <21.766279, 19.365887, 11.922581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209759, 19.144705, 11.443419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.007317, 18.827431, 11.578894>,  <21.885851, 18.637066, 11.660179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.007317, 18.827431, 11.578894>,  <22.209759, 19.144705, 11.443419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007317, 18.827431, 11.578894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042464, -0.415136, -0.908768,
		0.861425, -0.445552, 0.243785,
		-0.506107, -0.793187, 0.338689,
		21.855484, 18.589474, 11.680500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635818, 18.538260, 11.204720>,  <22.209759, 19.144705, 11.443419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635818, 18.538260, 11.204720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.242958, 18.470985, 11.238414>,  <22.007242, 18.430620, 11.258631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.242958, 18.470985, 11.238414>,  <22.635818, 18.538260, 11.204720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242958, 18.470985, 11.238414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008289, -0.486085, -0.873873,
		0.187920, -0.857575, 0.478802,
		-0.982149, -0.168187, 0.084236,
		21.948313, 18.420530, 11.263684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471426, 17.892672, 10.891715>,  <22.635818, 18.538260, 11.204720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471426, 17.892672, 10.891715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.099426, 18.038670, 10.909049>,  <21.876226, 18.126268, 10.919450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.099426, 18.038670, 10.909049>,  <22.471426, 17.892672, 10.891715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099426, 18.038670, 10.909049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209086, -0.428375, -0.879078,
		-0.302293, -0.826604, 0.474704,
		-0.930001, 0.364993, 0.043336,
		21.820427, 18.148169, 10.922050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968569, 17.332838, 10.643181>,  <22.471426, 17.892672, 10.891715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968569, 17.332838, 10.643181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.798294, 17.693184, 10.609156>,  <21.696129, 17.909391, 10.588740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.798294, 17.693184, 10.609156>,  <21.968569, 17.332838, 10.643181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.798294, 17.693184, 10.609156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306295, -0.231910, -0.923256,
		-0.851455, -0.366962, 0.374651,
		-0.425685, 0.900864, -0.085062,
		21.670588, 17.963444, 10.583637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.411882, 17.206564, 10.380306>,  <21.968569, 17.332838, 10.643181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.411882, 17.206564, 10.380306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.405293, 17.599277, 10.304594>,  <21.401339, 17.834906, 10.259167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.405293, 17.599277, 10.304594>,  <21.411882, 17.206564, 10.380306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405293, 17.599277, 10.304594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320553, -0.184499, -0.929089,
		-0.947088, 0.045370, 0.317753,
		-0.016473, 0.981785, -0.189280,
		21.400351, 17.893812, 10.247810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.888048, 17.194664, 10.065032>,  <21.411882, 17.206564, 10.380306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.888048, 17.194664, 10.065032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.047108, 17.546082, 9.959171>,  <21.142544, 17.756931, 9.895655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.047108, 17.546082, 9.959171>,  <20.888048, 17.194664, 10.065032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047108, 17.546082, 9.959171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347865, -0.122552, -0.929500,
		-0.849038, 0.461677, 0.256881,
		0.397648, 0.878541, -0.264652,
		21.166403, 17.809645, 9.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347483, 17.439783, 9.730211>,  <20.888048, 17.194664, 10.065032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347483, 17.439783, 9.730211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.664917, 17.653625, 9.613992>,  <20.855377, 17.781931, 9.544260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.664917, 17.653625, 9.613992>,  <20.347483, 17.439783, 9.730211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664917, 17.653625, 9.613992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241364, -0.161751, -0.956860,
		-0.558540, 0.829477, 0.000672,
		0.793585, 0.534607, -0.290550,
		20.902992, 17.814007, 9.526827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081762, 18.066561, 9.353194>,  <20.347483, 17.439783, 9.730211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081762, 18.066561, 9.353194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.446850, 17.951958, 9.236673>,  <20.665903, 17.883196, 9.166760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.446850, 17.951958, 9.236673>,  <20.081762, 18.066561, 9.353194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446850, 17.951958, 9.236673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332064, -0.104732, -0.937424,
		0.238071, 0.952336, -0.190730,
		0.912719, -0.286508, -0.291303,
		20.720665, 17.866005, 9.149282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257584, 18.596428, 8.812095>,  <20.081762, 18.066561, 9.353194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257584, 18.596428, 8.812095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.463966, 18.256512, 8.768939>,  <20.587797, 18.052561, 8.743046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.463966, 18.256512, 8.768939>,  <20.257584, 18.596428, 8.812095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463966, 18.256512, 8.768939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302182, -0.062710, -0.951185,
		0.801544, 0.523375, -0.289147,
		0.515959, -0.849791, -0.107890,
		20.618753, 18.001574, 8.736572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791597, 19.166092, 8.547832>,  <20.257584, 18.596428, 8.812095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791597, 19.166092, 8.547832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.524128, 18.953342, 8.339990>,  <19.363647, 18.825693, 8.215284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.524128, 18.953342, 8.339990>,  <19.791597, 19.166092, 8.547832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524128, 18.953342, 8.339990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537812, -0.828512, 0.155970,
		-0.513455, -0.175157, 0.840050,
		-0.668672, -0.531873, -0.519605,
		19.323526, 18.793781, 8.184109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002338, 19.770113, 8.854573>,  <19.791597, 19.166092, 8.547832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002338, 19.770113, 8.854573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.620762, 19.716625, 8.961987>,  <19.391815, 19.684532, 9.026435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.620762, 19.716625, 8.961987>,  <20.002338, 19.770113, 8.854573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620762, 19.716625, 8.961987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091713, 0.722292, 0.685480,
		-0.285623, 0.678538, -0.676762,
		-0.953944, -0.133721, 0.268534,
		19.334579, 19.676510, 9.042546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587299, 20.391153, 8.818439>,  <20.002338, 19.770113, 8.854573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587299, 20.391153, 8.818439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.415451, 20.137527, 9.075619>,  <19.312342, 19.985352, 9.229927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.415451, 20.137527, 9.075619>,  <19.587299, 20.391153, 8.818439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415451, 20.137527, 9.075619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250782, 0.767779, 0.589596,
		-0.867487, 0.092063, -0.488866,
		-0.429621, -0.634066, 0.642951,
		19.286564, 19.947308, 9.268504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.960224, 20.761154, 9.045273>,  <19.587299, 20.391153, 8.818439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.960224, 20.761154, 9.045273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.004471, 20.468548, 9.314390>,  <19.031019, 20.292984, 9.475861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.004471, 20.468548, 9.314390>,  <18.960224, 20.761154, 9.045273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.004471, 20.468548, 9.314390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072035, 0.669266, 0.739523,
		-0.991249, -0.130268, 0.021337,
		0.110617, -0.731515, 0.672793,
		19.037655, 20.249094, 9.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382351, 20.806480, 9.511786>,  <18.960224, 20.761154, 9.045273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382351, 20.806480, 9.511786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.660873, 20.612259, 9.723217>,  <18.827988, 20.495726, 9.850075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.660873, 20.612259, 9.723217>,  <18.382351, 20.806480, 9.511786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660873, 20.612259, 9.723217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052174, 0.700251, 0.711988,
		-0.715844, -0.523341, 0.462257,
		0.696308, -0.485554, 0.528576,
		18.869766, 20.466593, 9.881789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144184, 20.642735, 10.184225>,  <18.382351, 20.806480, 9.511786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144184, 20.642735, 10.184225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.530876, 20.574677, 10.260623>,  <18.762892, 20.533842, 10.306462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.530876, 20.574677, 10.260623>,  <18.144184, 20.642735, 10.184225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530876, 20.574677, 10.260623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118736, 0.362873, 0.924243,
		-0.226563, -0.916173, 0.330599,
		0.966732, -0.170145, 0.190996,
		18.820896, 20.523634, 10.317922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273462, 20.191952, 10.766975>,  <18.144184, 20.642735, 10.184225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273462, 20.191952, 10.766975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.591263, 20.427532, 10.707778>,  <18.781944, 20.568880, 10.672259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.591263, 20.427532, 10.707778>,  <18.273462, 20.191952, 10.766975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.591263, 20.427532, 10.707778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226817, 0.513876, 0.827336,
		0.563315, -0.623751, 0.541859,
		0.794500, 0.588954, -0.147996,
		18.829615, 20.604218, 10.663380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681026, 19.996422, 11.338861>,  <18.273462, 20.191952, 10.766975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681026, 19.996422, 11.338861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.827915, 20.348179, 11.217655>,  <18.916048, 20.559233, 11.144932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.827915, 20.348179, 11.217655>,  <18.681026, 19.996422, 11.338861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827915, 20.348179, 11.217655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016935, 0.319402, 0.947468,
		0.929979, -0.353062, 0.102399,
		0.367221, 0.879392, -0.303016,
		18.938082, 20.611996, 11.126750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933374, 20.262678, 11.922462>,  <18.681026, 19.996422, 11.338861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933374, 20.262678, 11.922462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.979023, 20.603413, 11.717974>,  <19.006413, 20.807854, 11.595280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.979023, 20.603413, 11.717974>,  <18.933374, 20.262678, 11.922462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979023, 20.603413, 11.717974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017514, 0.516230, 0.856271,
		0.993312, -0.088765, 0.073832,
		0.114121, 0.851838, -0.511223,
		19.013260, 20.858963, 11.564607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636044, 20.561758, 12.086823>,  <18.933374, 20.262678, 11.922462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.636044, 20.561758, 12.086823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.409283, 20.866447, 11.961347>,  <19.273226, 21.049261, 11.886061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.409283, 20.866447, 11.961347>,  <19.636044, 20.561758, 12.086823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409283, 20.866447, 11.961347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083535, 0.431983, 0.898005,
		0.819540, 0.482876, -0.308522,
		-0.566901, 0.761723, -0.313690,
		19.239212, 21.094965, 11.867240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922762, 21.213068, 12.309113>,  <19.636044, 20.561758, 12.086823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922762, 21.213068, 12.309113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549122, 21.345501, 12.255689>,  <19.324938, 21.424961, 12.223634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.549122, 21.345501, 12.255689>,  <19.922762, 21.213068, 12.309113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549122, 21.345501, 12.255689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069363, 0.535290, 0.841815,
		0.350204, 0.777077, -0.522980,
		-0.934102, 0.331083, -0.133561,
		19.268892, 21.444826, 12.215620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.951990, 21.830994, 12.696749>,  <19.922762, 21.213068, 12.309113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.951990, 21.830994, 12.696749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.568451, 21.748779, 12.618398>,  <19.338327, 21.699450, 12.571387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.568451, 21.748779, 12.618398>,  <19.951990, 21.830994, 12.696749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568451, 21.748779, 12.618398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269912, 0.445798, 0.853471,
		-0.088098, 0.871217, -0.482929,
		-0.958846, -0.205537, -0.195878,
		19.280796, 21.687119, 12.559634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614298, 22.455603, 12.639762>,  <19.951990, 21.830994, 12.696749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614298, 22.455603, 12.639762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.348137, 22.171711, 12.732300>,  <19.188440, 22.001375, 12.787823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.348137, 22.171711, 12.732300>,  <19.614298, 22.455603, 12.639762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348137, 22.171711, 12.732300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340763, 0.564534, 0.751786,
		-0.664167, 0.421407, -0.617493,
		-0.665404, -0.709730, 0.231345,
		19.148516, 21.958792, 12.801703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.075392, 22.838562, 12.901019>,  <19.614298, 22.455603, 12.639762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.075392, 22.838562, 12.901019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.993961, 22.472198, 13.039392>,  <18.945103, 22.252380, 13.122416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.993961, 22.472198, 13.039392>,  <19.075392, 22.838562, 12.901019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993961, 22.472198, 13.039392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478389, 0.401337, 0.781072,
		-0.854226, -0.006485, -0.519862,
		-0.203574, -0.915908, 0.345935,
		18.932890, 22.197426, 13.143173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446993, 22.959806, 13.350070>,  <19.075392, 22.838562, 12.901019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446993, 22.959806, 13.350070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.561974, 22.598217, 13.476688>,  <18.630962, 22.381264, 13.552659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.561974, 22.598217, 13.476688>,  <18.446993, 22.959806, 13.350070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.561974, 22.598217, 13.476688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321350, 0.220314, 0.920975,
		-0.902279, -0.366456, -0.227163,
		0.287450, -0.903975, 0.316545,
		18.648209, 22.327024, 13.571652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878263, 22.570913, 13.754054>,  <18.446993, 22.959806, 13.350070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878263, 22.570913, 13.754054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.229282, 22.419010, 13.871149>,  <18.439894, 22.327868, 13.941406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.229282, 22.419010, 13.871149>,  <17.878263, 22.570913, 13.754054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229282, 22.419010, 13.871149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281468, 0.086275, 0.955684,
		-0.388185, -0.921054, -0.031180,
		0.877547, -0.379758, 0.292737,
		18.492546, 22.305082, 13.958970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638857, 22.148235, 14.342151>,  <17.878263, 22.570913, 13.754054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638857, 22.148235, 14.342151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.032757, 22.208801, 14.376434>,  <18.269096, 22.245140, 14.397004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.032757, 22.208801, 14.376434>,  <17.638857, 22.148235, 14.342151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032757, 22.208801, 14.376434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108620, 0.150183, 0.982673,
		0.135911, -0.976996, 0.164339,
		0.984749, 0.151407, 0.085710,
		18.328180, 22.254225, 14.402147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857498, 21.722406, 14.844711>,  <17.638857, 22.148235, 14.342151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857498, 21.722406, 14.844711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.119896, 22.023193, 14.818733>,  <18.277334, 22.203665, 14.803146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.119896, 22.023193, 14.818733>,  <17.857498, 21.722406, 14.844711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119896, 22.023193, 14.818733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118337, 0.187452, 0.975119,
		0.745431, -0.631987, 0.211953,
		0.655994, 0.751967, -0.064945,
		18.316694, 22.248783, 14.799250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182100, 21.673887, 15.465511>,  <17.857498, 21.722406, 14.844711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182100, 21.673887, 15.465511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.305309, 22.033966, 15.342377>,  <18.379234, 22.250013, 15.268496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.305309, 22.033966, 15.342377>,  <18.182100, 21.673887, 15.465511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305309, 22.033966, 15.342377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077764, 0.298664, 0.951185,
		0.948195, -0.316927, 0.021993,
		0.308024, 0.900198, -0.307838,
		18.397717, 22.304026, 15.250026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728470, 21.855276, 15.934834>,  <18.182100, 21.673887, 15.465511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728470, 21.855276, 15.934834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.556168, 22.188957, 15.797108>,  <18.452785, 22.389166, 15.714472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.556168, 22.188957, 15.797108>,  <18.728470, 21.855276, 15.934834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556168, 22.188957, 15.797108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078395, 0.345498, 0.935139,
		0.899057, 0.429809, -0.083427,
		-0.430755, 0.834203, -0.344317,
		18.426941, 22.439219, 15.693812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006468, 22.390335, 16.287558>,  <18.728470, 21.855276, 15.934834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006468, 22.390335, 16.287558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.685551, 22.589298, 16.155554>,  <18.493000, 22.708677, 16.076351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.685551, 22.589298, 16.155554>,  <19.006468, 22.390335, 16.287558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.685551, 22.589298, 16.155554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100261, 0.432707, 0.895942,
		0.588449, 0.751896, -0.297287,
		-0.802294, 0.497410, -0.330012,
		18.444862, 22.738522, 16.056551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.046431, 23.035030, 16.565062>,  <19.006468, 22.390335, 16.287558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.046431, 23.035030, 16.565062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.661831, 22.988712, 16.465372>,  <18.431070, 22.960922, 16.405558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.661831, 22.988712, 16.465372>,  <19.046431, 23.035030, 16.565062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661831, 22.988712, 16.465372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274701, 0.430392, 0.859827,
		0.007702, 0.895184, -0.445630,
		-0.961499, -0.115793, -0.249223,
		18.373381, 22.953974, 16.390606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711721, 23.639410, 16.686577>,  <19.046431, 23.035030, 16.565062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711721, 23.639410, 16.686577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415588, 23.371151, 16.705067>,  <18.237909, 23.210196, 16.716160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415588, 23.371151, 16.705067>,  <18.711721, 23.639410, 16.686577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415588, 23.371151, 16.705067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318440, 0.410422, 0.854488,
		-0.592033, 0.617886, -0.517410,
		-0.740333, -0.670649, 0.046224,
		18.193489, 23.169956, 16.718933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217009, 24.014576, 17.030527>,  <18.711721, 23.639410, 16.686577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217009, 24.014576, 17.030527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.074680, 23.643364, 17.074633>,  <17.989285, 23.420637, 17.101095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.074680, 23.643364, 17.074633>,  <18.217009, 24.014576, 17.030527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074680, 23.643364, 17.074633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341907, 0.239072, 0.908815,
		-0.869766, 0.285673, -0.402365,
		-0.355819, -0.928028, 0.110263,
		17.967936, 23.364956, 17.107712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493734, 24.102642, 17.335070>,  <18.217009, 24.014576, 17.030527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493734, 24.102642, 17.335070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628033, 23.732452, 17.405239>,  <17.708612, 23.510340, 17.447340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.628033, 23.732452, 17.405239>,  <17.493734, 24.102642, 17.335070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628033, 23.732452, 17.405239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353021, 0.049031, 0.934330,
		-0.873298, -0.375627, -0.310249,
		0.335748, -0.925473, 0.175423,
		17.728758, 23.454811, 17.457867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158382, 23.934652, 17.972538>,  <17.493734, 24.102642, 17.335070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158382, 23.934652, 17.972538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428707, 23.640030, 17.983616>,  <17.590902, 23.463257, 17.990263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.428707, 23.640030, 17.983616>,  <17.158382, 23.934652, 17.972538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428707, 23.640030, 17.983616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141048, 0.166115, 0.975967,
		-0.723455, -0.655661, 0.216151,
		0.675810, -0.736556, 0.027697,
		17.631451, 23.419064, 17.991924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902353, 23.360889, 18.311739>,  <17.158382, 23.934652, 17.972538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902353, 23.360889, 18.311739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300426, 23.377594, 18.347208>,  <17.539270, 23.387617, 18.368488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300426, 23.377594, 18.347208>,  <16.902353, 23.360889, 18.311739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300426, 23.377594, 18.347208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096565, 0.262848, 0.959993,
		0.016782, -0.963933, 0.265615,
		0.995185, 0.041759, 0.088671,
		17.598982, 23.390121, 18.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051659, 22.997477, 18.941389>,  <16.902353, 23.360889, 18.311739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051659, 22.997477, 18.941389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.403423, 23.177135, 18.878273>,  <17.614483, 23.284931, 18.840403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.403423, 23.177135, 18.878273>,  <17.051659, 22.997477, 18.941389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.403423, 23.177135, 18.878273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037769, 0.264584, 0.963623,
		0.474559, -0.853382, 0.215715,
		0.879413, 0.449148, -0.157792,
		17.667248, 23.311880, 18.830936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844929, 22.312521, 19.113457>,  <17.051659, 22.997477, 18.941389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844929, 22.312521, 19.113457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.525837, 22.152950, 19.294338>,  <16.334383, 22.057207, 19.402866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.525837, 22.152950, 19.294338>,  <16.844929, 22.312521, 19.113457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525837, 22.152950, 19.294338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412686, -0.185613, -0.891761,
		0.439684, -0.898000, -0.016563,
		-0.797727, -0.398928, 0.452203,
		16.286518, 22.033272, 19.429998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844955, 21.613113, 19.021948>,  <16.844929, 22.312521, 19.113457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844955, 21.613113, 19.021948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.467014, 21.740356, 19.053074>,  <16.240250, 21.816702, 19.071751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.467014, 21.740356, 19.053074>,  <16.844955, 21.613113, 19.021948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467014, 21.740356, 19.053074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170417, -0.274677, -0.946314,
		-0.279644, -0.907395, 0.313740,
		-0.944858, 0.318097, 0.077824,
		16.183558, 21.835789, 19.076420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460253, 21.160177, 18.617422>,  <16.844955, 21.613113, 19.021948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460253, 21.160177, 18.617422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.196171, 21.457516, 18.660433>,  <16.037722, 21.635920, 18.686239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.196171, 21.457516, 18.660433>,  <16.460253, 21.160177, 18.617422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196171, 21.457516, 18.660433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314692, -0.143778, -0.938241,
		-0.681981, -0.653269, 0.328849,
		-0.660205, 0.743349, 0.107525,
		15.998109, 21.680521, 18.692690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859397, 20.902100, 18.424065>,  <16.460253, 21.160177, 18.617422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859397, 20.902100, 18.424065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.766944, 21.291080, 18.411983>,  <15.711473, 21.524469, 18.404736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.766944, 21.291080, 18.411983>,  <15.859397, 20.902100, 18.424065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766944, 21.291080, 18.411983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439009, -0.131945, -0.888741,
		-0.868245, -0.192159, 0.457413,
		-0.231133, 0.972454, -0.030201,
		15.697604, 21.582817, 18.402924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146400, 20.958376, 18.298904>,  <15.859397, 20.902100, 18.424065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146400, 20.958376, 18.298904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281316, 21.306843, 18.156183>,  <15.362265, 21.515923, 18.070551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.281316, 21.306843, 18.156183>,  <15.146400, 20.958376, 18.298904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281316, 21.306843, 18.156183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312697, -0.253817, -0.915313,
		-0.887951, 0.420295, 0.186801,
		0.337288, 0.871165, -0.356802,
		15.382503, 21.568192, 18.049143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
