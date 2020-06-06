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
	<24.533365, 35.262707, 34.946125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357903, 34.903915, 34.924194>,  <24.252625, 34.688641, 34.911037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357903, 34.903915, 34.924194>,  <24.533365, 35.262707, 34.946125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357903, 34.903915, 34.924194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507419, -0.196874, -0.838908,
		0.741691, -0.395810, 0.541506,
		-0.438657, -0.896981, -0.054822,
		24.226305, 34.634823, 34.907749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969559, 35.433655, 34.312260>,  <24.533365, 35.262707, 34.946125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969559, 35.433655, 34.312260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208862, 35.242340, 34.569424>,  <25.352444, 35.127552, 34.723721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208862, 35.242340, 34.569424>,  <24.969559, 35.433655, 34.312260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208862, 35.242340, 34.569424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429191, 0.868799, 0.246947,
		-0.676671, 0.128194, 0.725040,
		0.598257, -0.478282, 0.642911,
		25.388340, 35.098854, 34.762299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105688, 36.013645, 34.771580>,  <24.969559, 35.433655, 34.312260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105688, 36.013645, 34.771580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390705, 35.733067, 34.765129>,  <25.561716, 35.564720, 34.761257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390705, 35.733067, 34.765129>,  <25.105688, 36.013645, 34.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390705, 35.733067, 34.765129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662274, 0.664812, 0.345569,
		-0.231677, -0.256912, 0.938255,
		0.712544, -0.701442, -0.016125,
		25.604467, 35.522633, 34.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310005, 35.770035, 35.486591>,  <25.105688, 36.013645, 34.771580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310005, 35.770035, 35.486591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605453, 35.707024, 35.224407>,  <25.782722, 35.669216, 35.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605453, 35.707024, 35.224407>,  <25.310005, 35.770035, 35.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605453, 35.707024, 35.224407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546345, 0.709464, 0.445161,
		0.394900, -0.686912, 0.610087,
		0.738621, -0.157524, -0.655458,
		25.827040, 35.659767, 35.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010706, 35.646606, 35.808998>,  <25.310005, 35.770035, 35.486591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010706, 35.646606, 35.808998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085369, 35.800652, 35.447479>,  <26.130167, 35.893078, 35.230568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085369, 35.800652, 35.447479>,  <26.010706, 35.646606, 35.808998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085369, 35.800652, 35.447479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510077, 0.748257, 0.424185,
		0.839631, -0.540182, -0.056770,
		0.186658, 0.385116, -0.903795,
		26.141367, 35.916187, 35.176342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645245, 35.730541, 35.803284>,  <26.010706, 35.646606, 35.808998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645245, 35.730541, 35.803284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522516, 36.031502, 35.570129>,  <26.448879, 36.212078, 35.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522516, 36.031502, 35.570129>,  <26.645245, 35.730541, 35.803284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522516, 36.031502, 35.570129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387235, 0.658128, 0.645691,
		0.869431, -0.027603, -0.493282,
		-0.306820, 0.752400, -0.582886,
		26.430470, 36.257221, 35.395264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205660, 36.172245, 35.757206>,  <26.645245, 35.730541, 35.803284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205660, 36.172245, 35.757206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916746, 36.422516, 35.639332>,  <26.743399, 36.572678, 35.568607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916746, 36.422516, 35.639332>,  <27.205660, 36.172245, 35.757206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916746, 36.422516, 35.639332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314106, 0.676385, 0.666214,
		0.616152, 0.388633, -0.685070,
		-0.722283, 0.625674, -0.294684,
		26.700062, 36.610218, 35.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526039, 36.863567, 35.577900>,  <27.205660, 36.172245, 35.757206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526039, 36.863567, 35.577900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153580, 36.904541, 35.717884>,  <26.930103, 36.929123, 35.801876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153580, 36.904541, 35.717884>,  <27.526039, 36.863567, 35.577900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153580, 36.904541, 35.717884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297856, 0.767288, 0.567936,
		-0.210347, 0.633070, -0.744968,
		-0.931148, 0.102430, 0.349960,
		26.874235, 36.935268, 35.822872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370243, 37.544697, 35.492729>,  <27.526039, 36.863567, 35.577900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370243, 37.544697, 35.492729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119543, 37.411354, 35.774456>,  <26.969124, 37.331348, 35.943493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119543, 37.411354, 35.774456>,  <27.370243, 37.544697, 35.492729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119543, 37.411354, 35.774456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244430, 0.774143, 0.583914,
		-0.739891, 0.538124, -0.403713,
		-0.626750, -0.333353, 0.704315,
		26.931519, 37.311348, 35.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975443, 38.102539, 35.907253>,  <27.370243, 37.544697, 35.492729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975443, 38.102539, 35.907253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904329, 37.792484, 36.149757>,  <26.861662, 37.606449, 36.295261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904329, 37.792484, 36.149757>,  <26.975443, 38.102539, 35.907253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904329, 37.792484, 36.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071983, 0.604181, 0.793589,
		-0.981433, 0.184728, -0.051616,
		-0.177783, -0.775139, 0.606261,
		26.850994, 37.559944, 36.331635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508148, 38.456226, 36.180000>,  <26.975443, 38.102539, 35.907253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508148, 38.456226, 36.180000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611237, 38.165688, 36.434875>,  <26.673090, 37.991364, 36.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611237, 38.165688, 36.434875>,  <26.508148, 38.456226, 36.180000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611237, 38.165688, 36.434875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291069, 0.687191, 0.665617,
		-0.921335, 0.013922, 0.388520,
		0.257721, -0.726343, 0.637186,
		26.688553, 37.947784, 36.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089119, 38.384312, 36.711651>,  <26.508148, 38.456226, 36.180000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089119, 38.384312, 36.711651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466141, 38.286327, 36.802498>,  <26.692354, 38.227535, 36.857006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466141, 38.286327, 36.802498>,  <26.089119, 38.384312, 36.711651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466141, 38.286327, 36.802498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076637, 0.820331, 0.566731,
		-0.325140, -0.516770, 0.791981,
		0.942556, -0.244962, 0.227119,
		26.748907, 38.212837, 36.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225439, 38.233749, 37.542591>,  <26.089119, 38.384312, 36.711651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225439, 38.233749, 37.542591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545160, 38.368046, 37.343235>,  <26.736994, 38.448624, 37.223621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545160, 38.368046, 37.343235>,  <26.225439, 38.233749, 37.542591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545160, 38.368046, 37.343235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157511, 0.683320, 0.712926,
		0.579914, -0.648348, 0.493300,
		0.799306, 0.335736, -0.498389,
		26.784952, 38.468765, 37.193718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793875, 38.200928, 38.022484>,  <26.225439, 38.233749, 37.542591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793875, 38.200928, 38.022484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849703, 38.473198, 37.734818>,  <26.883200, 38.636562, 37.562218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849703, 38.473198, 37.734818>,  <26.793875, 38.200928, 38.022484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849703, 38.473198, 37.734818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143427, 0.704717, 0.694840,
		0.979770, -0.200127, 0.000731,
		0.139572, 0.680679, -0.719164,
		26.891575, 38.677402, 37.519070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514437, 38.466599, 38.002926>,  <26.793875, 38.200928, 38.022484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514437, 38.466599, 38.002926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224670, 38.723736, 37.903347>,  <27.050810, 38.878017, 37.843601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224670, 38.723736, 37.903347>,  <27.514437, 38.466599, 38.002926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224670, 38.723736, 37.903347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245697, 0.578174, 0.778041,
		0.644092, 0.502461, -0.576783,
		-0.724416, 0.642844, -0.248945,
		27.007345, 38.916588, 37.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607761, 37.719940, 37.681309>,  <27.514437, 38.466599, 38.002926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607761, 37.719940, 37.681309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332294, 37.857037, 37.425724>,  <27.167015, 37.939293, 37.272373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332294, 37.857037, 37.425724>,  <27.607761, 37.719940, 37.681309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332294, 37.857037, 37.425724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126820, -0.924581, -0.359260,
		-0.713902, -0.166377, 0.680193,
		-0.688666, 0.342738, -0.638960,
		27.125694, 37.959858, 37.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273350, 37.085258, 37.463932>,  <27.607761, 37.719940, 37.681309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273350, 37.085258, 37.463932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090992, 37.339115, 37.214329>,  <26.981577, 37.491428, 37.064568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090992, 37.339115, 37.214329>,  <27.273350, 37.085258, 37.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090992, 37.339115, 37.214329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221302, -0.759917, -0.611188,
		-0.862083, -0.140541, 0.486889,
		-0.455892, 0.634645, -0.624010,
		26.954224, 37.529507, 37.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774914, 36.751686, 37.284462>,  <27.273350, 37.085258, 37.463932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774914, 36.751686, 37.284462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793398, 37.010162, 36.979752>,  <26.804487, 37.165249, 36.796925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793398, 37.010162, 36.979752>,  <26.774914, 36.751686, 37.284462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793398, 37.010162, 36.979752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492140, -0.648892, -0.580290,
		-0.869289, 0.401714, 0.288033,
		0.046209, 0.646193, -0.761774,
		26.807261, 37.204021, 36.751221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108761, 36.922756, 36.911190>,  <26.774914, 36.751686, 37.284462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108761, 36.922756, 36.911190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359604, 37.037373, 36.621464>,  <26.510109, 37.106144, 36.447628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359604, 37.037373, 36.621464>,  <26.108761, 36.922756, 36.911190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359604, 37.037373, 36.621464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517364, -0.541916, -0.662316,
		-0.582299, 0.790076, -0.191592,
		0.627107, 0.286543, -0.724314,
		26.547735, 37.123337, 36.404171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752386, 37.227974, 36.366360>,  <26.108761, 36.922756, 36.911190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752386, 37.227974, 36.366360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089163, 37.097698, 36.194286>,  <26.291229, 37.019531, 36.091042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089163, 37.097698, 36.194286>,  <25.752386, 37.227974, 36.366360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089163, 37.097698, 36.194286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539416, -0.489344, -0.685254,
		0.012675, 0.808992, -0.587683,
		0.841944, -0.325691, -0.430181,
		26.341745, 36.999992, 36.065231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566957, 37.074219, 35.687923>,  <25.752386, 37.227974, 36.366360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566957, 37.074219, 35.687923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962854, 37.125847, 35.663437>,  <26.200394, 37.156826, 35.648746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962854, 37.125847, 35.663437>,  <25.566957, 37.074219, 35.687923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962854, 37.125847, 35.663437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032471, -0.620548, -0.783496,
		-0.139114, 0.773473, -0.618375,
		0.989744, 0.129074, -0.061212,
		26.259777, 37.164570, 35.645073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705887, 37.340546, 35.060585>,  <25.566957, 37.074219, 35.687923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705887, 37.340546, 35.060585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996063, 37.114712, 35.218052>,  <26.170168, 36.979210, 35.312534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996063, 37.114712, 35.218052>,  <25.705887, 37.340546, 35.060585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996063, 37.114712, 35.218052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057783, -0.619897, -0.782553,
		0.685856, 0.544947, -0.482322,
		0.725440, -0.564588, 0.393671,
		26.213696, 36.945335, 35.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090637, 37.144703, 34.394276>,  <25.705887, 37.340546, 35.060585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090637, 37.144703, 34.394276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185257, 36.900635, 34.696728>,  <26.242029, 36.754192, 34.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185257, 36.900635, 34.696728>,  <26.090637, 37.144703, 34.394276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185257, 36.900635, 34.696728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041829, -0.771101, -0.635337,
		0.970719, 0.181916, -0.156879,
		0.236547, -0.610172, 0.756132,
		26.256222, 36.717583, 34.923569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555777, 36.643513, 34.128998>,  <26.090637, 37.144703, 34.394276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555777, 36.643513, 34.128998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447155, 36.482807, 34.478821>,  <26.381983, 36.386383, 34.688713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447155, 36.482807, 34.478821>,  <26.555777, 36.643513, 34.128998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447155, 36.482807, 34.478821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104158, -0.891096, -0.441700,
		0.956771, -0.211037, 0.200133,
		-0.271553, -0.401760, 0.874556,
		26.365688, 36.362278, 34.741188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621511, 35.989902, 34.020638>,  <26.555777, 36.643513, 34.128998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621511, 35.989902, 34.020638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462055, 35.955727, 34.385887>,  <26.366383, 35.935223, 34.605038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462055, 35.955727, 34.385887>,  <26.621511, 35.989902, 34.020638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462055, 35.955727, 34.385887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283585, -0.935372, -0.211325,
		0.872162, -0.343189, 0.348646,
		-0.398638, -0.085439, 0.913120,
		26.342464, 35.930096, 34.659824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799816, 35.313629, 34.201885>,  <26.621511, 35.989902, 34.020638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799816, 35.313629, 34.201885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487274, 35.433765, 34.420708>,  <26.299749, 35.505848, 34.552002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487274, 35.433765, 34.420708>,  <26.799816, 35.313629, 34.201885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487274, 35.433765, 34.420708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410505, -0.907599, -0.088035,
		0.470071, -0.293358, 0.832451,
		-0.781357, 0.300343, 0.547060,
		26.252867, 35.523869, 34.584827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622917, 34.757626, 34.789482>,  <26.799816, 35.313629, 34.201885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622917, 34.757626, 34.789482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305527, 34.988365, 34.711880>,  <26.115093, 35.126808, 34.665318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305527, 34.988365, 34.711880>,  <26.622917, 34.757626, 34.789482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305527, 34.988365, 34.711880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598723, -0.797075, 0.078750,
		-0.109207, 0.178639, 0.977835,
		-0.793476, 0.576852, -0.194001,
		26.067484, 35.161423, 34.653679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947395, 34.555744, 35.407036>,  <26.622917, 34.757626, 34.789482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947395, 34.555744, 35.407036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650661, 34.822243, 35.376579>,  <26.472622, 34.982143, 35.358307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650661, 34.822243, 35.376579>,  <26.947395, 34.555744, 35.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650661, 34.822243, 35.376579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258826, -0.389220, -0.884035,
		-0.618622, -0.636099, 0.461178,
		-0.741833, 0.666248, -0.076142,
		26.428112, 35.022118, 35.353737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696541, 34.232613, 36.055744>,  <26.947395, 34.555744, 35.407036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696541, 34.232613, 36.055744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010677, 34.089863, 36.258083>,  <27.199160, 34.004211, 36.379486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010677, 34.089863, 36.258083>,  <26.696541, 34.232613, 36.055744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010677, 34.089863, 36.258083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517836, 0.069072, 0.852687,
		-0.339242, -0.931595, -0.130558,
		0.785341, -0.356875, 0.505846,
		27.246279, 33.982800, 36.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549414, 33.586796, 36.577370>,  <26.696541, 34.232613, 36.055744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549414, 33.586796, 36.577370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882620, 33.769424, 36.702354>,  <27.082542, 33.879002, 36.777344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882620, 33.769424, 36.702354>,  <26.549414, 33.586796, 36.577370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882620, 33.769424, 36.702354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339201, -0.024693, 0.940390,
		0.437070, -0.889344, 0.134300,
		0.833014, 0.456571, 0.312459,
		27.132524, 33.906395, 36.796093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706371, 33.403557, 37.238297>,  <26.549414, 33.586796, 36.577370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706371, 33.403557, 37.238297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865976, 33.766254, 37.183723>,  <26.961739, 33.983871, 37.150982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865976, 33.766254, 37.183723>,  <26.706371, 33.403557, 37.238297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865976, 33.766254, 37.183723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300534, 0.269891, 0.914789,
		0.866296, -0.324011, 0.380195,
		0.399013, 0.906739, -0.136429,
		26.985680, 34.038277, 37.142796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160587, 33.494438, 37.750229>,  <26.706371, 33.403557, 37.238297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160587, 33.494438, 37.750229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975597, 33.826672, 37.626133>,  <26.864603, 34.026012, 37.551674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975597, 33.826672, 37.626133>,  <27.160587, 33.494438, 37.750229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975597, 33.826672, 37.626133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350842, 0.149920, 0.924356,
		0.814266, 0.536337, 0.222069,
		-0.462473, 0.830582, -0.310244,
		26.836855, 34.075848, 37.533058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367634, 34.021366, 38.163872>,  <27.160587, 33.494438, 37.750229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367634, 34.021366, 38.163872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999289, 34.080658, 38.019627>,  <26.778282, 34.116234, 37.933079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999289, 34.080658, 38.019627>,  <27.367634, 34.021366, 38.163872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999289, 34.080658, 38.019627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342641, 0.133647, 0.929912,
		0.186035, 0.979881, -0.072281,
		-0.920863, 0.148230, -0.360610,
		26.723030, 34.125126, 37.911442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039520, 34.590179, 38.448284>,  <27.367634, 34.021366, 38.163872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039520, 34.590179, 38.448284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738644, 34.352768, 38.333790>,  <26.558119, 34.210320, 38.265091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738644, 34.352768, 38.333790>,  <27.039520, 34.590179, 38.448284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738644, 34.352768, 38.333790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432807, 0.117450, 0.893803,
		-0.496880, 0.796196, -0.345229,
		-0.752189, -0.593530, -0.286240,
		26.512987, 34.174709, 38.247917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525379, 35.004711, 38.112854>,  <27.039520, 34.590179, 38.448284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525379, 35.004711, 38.112854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211369, 34.829361, 37.937786>,  <26.022963, 34.724152, 37.832745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.211369, 34.829361, 37.937786>,  <26.525379, 35.004711, 38.112854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211369, 34.829361, 37.937786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535847, 0.126069, 0.834850,
		-0.310805, 0.889904, -0.333872,
		-0.785028, -0.438380, -0.437670,
		25.975861, 34.697845, 37.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846502, 35.363300, 38.168438>,  <26.525379, 35.004711, 38.112854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846502, 35.363300, 38.168438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780300, 34.968945, 38.158451>,  <25.740578, 34.732330, 38.152458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780300, 34.968945, 38.158451>,  <25.846502, 35.363300, 38.168438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780300, 34.968945, 38.158451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556486, 0.072460, 0.827691,
		-0.814205, 0.150882, -0.560628,
		-0.165507, -0.985892, -0.024967,
		25.730648, 34.673176, 38.150963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229401, 35.249908, 38.277451>,  <25.846502, 35.363300, 38.168438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229401, 35.249908, 38.277451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374329, 34.899349, 38.404350>,  <25.461285, 34.689014, 38.480492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374329, 34.899349, 38.404350>,  <25.229401, 35.249908, 38.277451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374329, 34.899349, 38.404350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513030, 0.096650, 0.852912,
		-0.778155, -0.471785, -0.414601,
		0.362319, -0.876401, 0.317249,
		25.483025, 34.636429, 38.499523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642080, 34.854458, 38.465912>,  <25.229401, 35.249908, 38.277451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642080, 34.854458, 38.465912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949171, 34.713520, 38.679996>,  <25.133425, 34.628956, 38.808445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949171, 34.713520, 38.679996>,  <24.642080, 34.854458, 38.465912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949171, 34.713520, 38.679996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577055, -0.017048, 0.816527,
		-0.278578, -0.935714, -0.216413,
		0.767725, -0.352349, 0.535209,
		25.179489, 34.607815, 38.840561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333635, 34.577778, 39.051025>,  <24.642080, 34.854458, 38.465912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333635, 34.577778, 39.051025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714218, 34.601311, 39.171871>,  <24.942568, 34.615429, 39.244377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714218, 34.601311, 39.171871>,  <24.333635, 34.577778, 39.051025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714218, 34.601311, 39.171871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305977, 0.074447, 0.949124,
		0.033348, -0.995488, 0.088835,
		0.951455, 0.058833, 0.302114,
		24.999655, 34.618961, 39.262505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414221, 34.729324, 39.715778>,  <24.333635, 34.577778, 39.051025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414221, 34.729324, 39.715778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591051, 34.500031, 39.991741>,  <24.697149, 34.362453, 40.157318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591051, 34.500031, 39.991741>,  <24.414221, 34.729324, 39.715778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591051, 34.500031, 39.991741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836440, -0.014323, -0.547871,
		0.323942, 0.819263, 0.473148,
		0.442074, -0.573239, 0.689905,
		24.723673, 34.328060, 40.198711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959112, 35.123703, 40.140896>,  <24.414221, 34.729324, 39.715778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959112, 35.123703, 40.140896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024950, 34.730480, 40.108635>,  <25.064453, 34.494545, 40.089279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024950, 34.730480, 40.108635>,  <24.959112, 35.123703, 40.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024950, 34.730480, 40.108635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596885, 0.164368, -0.785310,
		0.785262, 0.081117, 0.613827,
		0.164596, -0.983058, -0.080654,
		25.074329, 34.435562, 40.084438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738104, 34.982956, 40.161057>,  <24.959112, 35.123703, 40.140896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738104, 34.982956, 40.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540359, 34.689465, 39.974617>,  <25.421713, 34.513371, 39.862751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540359, 34.689465, 39.974617>,  <25.738104, 34.982956, 40.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540359, 34.689465, 39.974617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579100, 0.121894, -0.806093,
		0.648266, -0.668422, 0.364641,
		-0.494362, -0.733726, -0.466103,
		25.392052, 34.469345, 39.834785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066713, 34.593842, 39.620636>,  <25.738104, 34.982956, 40.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066713, 34.593842, 39.620636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699034, 34.492310, 39.500210>,  <25.478426, 34.431389, 39.427956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699034, 34.492310, 39.500210>,  <26.066713, 34.593842, 39.620636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699034, 34.492310, 39.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349262, -0.172354, -0.921038,
		0.181900, -0.951768, 0.247082,
		-0.919200, -0.253833, -0.301066,
		25.423273, 34.416161, 39.409889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060156, 33.884296, 39.456402>,  <26.066713, 34.593842, 39.620636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060156, 33.884296, 39.456402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792351, 34.097641, 39.249607>,  <25.631668, 34.225647, 39.125530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792351, 34.097641, 39.249607>,  <26.060156, 33.884296, 39.456402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792351, 34.097641, 39.249607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369562, -0.364567, -0.854701,
		-0.644343, -0.763293, 0.046971,
		-0.669511, 0.533362, -0.516991,
		25.591497, 34.257648, 39.094509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939442, 33.500359, 38.875584>,  <26.060156, 33.884296, 39.456402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939442, 33.500359, 38.875584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819798, 33.870327, 38.781727>,  <25.748011, 34.092308, 38.725414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819798, 33.870327, 38.781727>,  <25.939442, 33.500359, 38.875584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819798, 33.870327, 38.781727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366120, -0.115839, -0.923329,
		-0.881186, -0.362083, -0.303984,
		-0.299109, 0.924920, -0.234642,
		25.730064, 34.147804, 38.711334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651213, 33.337559, 38.231121>,  <25.939442, 33.500359, 38.875584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651213, 33.337559, 38.231121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749563, 33.722168, 38.280140>,  <25.808573, 33.952934, 38.309551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749563, 33.722168, 38.280140>,  <25.651213, 33.337559, 38.231121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749563, 33.722168, 38.280140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522465, -0.024972, -0.852295,
		-0.816441, 0.273587, -0.508502,
		0.245875, 0.961523, 0.122552,
		25.823326, 34.010624, 38.316906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470045, 33.773121, 37.647583>,  <25.651213, 33.337559, 38.231121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470045, 33.773121, 37.647583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789675, 33.913651, 37.842747>,  <25.981453, 33.997967, 37.959843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789675, 33.913651, 37.842747>,  <25.470045, 33.773121, 37.647583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789675, 33.913651, 37.842747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429623, 0.234047, -0.872151,
		-0.420600, 0.906528, 0.036084,
		0.799075, 0.351324, 0.487905,
		26.029398, 34.019047, 37.989117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579163, 34.470062, 37.386292>,  <25.470045, 33.773121, 37.647583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579163, 34.470062, 37.386292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923323, 34.375309, 37.566780>,  <26.129820, 34.318459, 37.675072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923323, 34.375309, 37.566780>,  <25.579163, 34.470062, 37.386292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923323, 34.375309, 37.566780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509170, 0.362579, -0.780565,
		0.021297, 0.901346, 0.432576,
		0.860402, -0.236879, 0.451217,
		26.181444, 34.304245, 37.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037498, 35.064468, 37.321419>,  <25.579163, 34.470062, 37.386292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037498, 35.064468, 37.321419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296600, 34.765503, 37.380447>,  <26.452063, 34.586124, 37.415867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296600, 34.765503, 37.380447>,  <26.037498, 35.064468, 37.321419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296600, 34.765503, 37.380447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518927, 0.291036, -0.803749,
		0.557786, 0.597215, 0.576376,
		0.647757, -0.747417, 0.147576,
		26.490927, 34.541279, 37.424721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709936, 35.206551, 37.106895>,  <26.037498, 35.064468, 37.321419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709936, 35.206551, 37.106895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724600, 34.810001, 37.056557>,  <26.733398, 34.572071, 37.026352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724600, 34.810001, 37.056557>,  <26.709936, 35.206551, 37.106895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724600, 34.810001, 37.056557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602250, 0.122410, -0.788867,
		0.797465, -0.046873, 0.601541,
		0.036658, -0.991372, -0.125847,
		26.735598, 34.512589, 37.018803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446110, 35.005459, 36.973610>,  <26.709936, 35.206551, 37.106895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446110, 35.005459, 36.973610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171103, 34.752697, 36.830490>,  <27.006098, 34.601040, 36.744617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171103, 34.752697, 36.830490>,  <27.446110, 35.005459, 36.973610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171103, 34.752697, 36.830490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393167, 0.090331, -0.915019,
		0.610524, -0.769765, 0.186340,
		-0.687518, -0.631904, -0.357795,
		26.964848, 34.563126, 36.723152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818842, 34.662071, 36.498005>,  <27.446110, 35.005459, 36.973610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818842, 34.662071, 36.498005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434919, 34.627182, 36.391296>,  <27.204565, 34.606247, 36.327271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434919, 34.627182, 36.391296>,  <27.818842, 34.662071, 36.498005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434919, 34.627182, 36.391296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225971, 0.323580, -0.918822,
		0.166462, -0.942172, -0.290864,
		-0.959806, -0.087222, -0.266767,
		27.146978, 34.601017, 36.311268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941837, 33.984390, 36.809143>,  <27.818842, 34.662071, 36.498005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941837, 33.984390, 36.809143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125946, 34.337276, 36.769466>,  <28.236412, 34.549007, 36.745659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125946, 34.337276, 36.769466>,  <27.941837, 33.984390, 36.809143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125946, 34.337276, 36.769466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658800, -0.264525, 0.704279,
		0.595091, -0.389506, -0.702960,
		0.460272, 0.882220, -0.099190,
		28.264027, 34.601944, 36.739708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716232, 33.980137, 36.680759>,  <27.941837, 33.984390, 36.809143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716232, 33.980137, 36.680759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612898, 34.318913, 36.866646>,  <28.550898, 34.522179, 36.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612898, 34.318913, 36.866646>,  <28.716232, 33.980137, 36.680759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612898, 34.318913, 36.866646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629784, -0.217127, 0.745807,
		0.732555, 0.485337, -0.477297,
		-0.258334, 0.846938, 0.464714,
		28.535398, 34.572994, 37.006062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229851, 34.436661, 36.985615>,  <28.716232, 33.980137, 36.680759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229851, 34.436661, 36.985615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921591, 34.447468, 37.240288>,  <28.736635, 34.453953, 37.393093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921591, 34.447468, 37.240288>,  <29.229851, 34.436661, 36.985615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921591, 34.447468, 37.240288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554396, -0.464246, 0.690740,
		0.314238, 0.885294, 0.342795,
		-0.770649, 0.027013, 0.636687,
		28.690395, 34.455570, 37.431293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556658, 34.557125, 36.344753>,  <29.229851, 34.436661, 36.985615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556658, 34.557125, 36.344753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375959, 34.776627, 36.063385>,  <29.267540, 34.908329, 35.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375959, 34.776627, 36.063385>,  <29.556658, 34.557125, 36.344753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375959, 34.776627, 36.063385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779194, -0.141306, -0.610647,
		-0.434493, -0.823953, -0.363753,
		-0.451744, 0.548756, -0.703416,
		29.240437, 34.941254, 35.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644407, 34.218330, 35.698200>,  <29.556658, 34.557125, 36.344753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644407, 34.218330, 35.698200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608202, 34.615658, 35.669540>,  <29.586479, 34.854053, 35.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608202, 34.615658, 35.669540>,  <29.644407, 34.218330, 35.698200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608202, 34.615658, 35.669540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736112, 0.018269, -0.676613,
		-0.670780, -0.113988, -0.732844,
		-0.090514, 0.993314, -0.071654,
		29.581047, 34.913651, 35.648045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464134, 34.435741, 35.012955>,  <29.644407, 34.218330, 35.698200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464134, 34.435741, 35.012955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690468, 34.684093, 35.229965>,  <29.826267, 34.833107, 35.360172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690468, 34.684093, 35.229965>,  <29.464134, 34.435741, 35.012955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690468, 34.684093, 35.229965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777879, -0.183822, -0.600927,
		-0.273378, 0.762044, -0.586986,
		0.565834, 0.620885, 0.542525,
		29.860218, 34.870358, 35.392723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867575, 34.918583, 34.624096>,  <29.464134, 34.435741, 35.012955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867575, 34.918583, 34.624096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088562, 34.939606, 34.956844>,  <30.221155, 34.952221, 35.156494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088562, 34.939606, 34.956844>,  <29.867575, 34.918583, 34.624096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088562, 34.939606, 34.956844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833484, -0.045754, -0.550647,
		0.009121, 0.997569, -0.069083,
		0.552469, 0.052558, 0.831875,
		30.254303, 34.955372, 35.206406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359852, 35.532536, 34.579487>,  <29.867575, 34.918583, 34.624096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359852, 35.532536, 34.579487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506929, 35.233070, 34.800144>,  <30.595177, 35.053391, 34.932537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506929, 35.233070, 34.800144>,  <30.359852, 35.532536, 34.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506929, 35.233070, 34.800144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824143, -0.012463, -0.566244,
		0.430800, 0.662837, 0.612420,
		0.367695, -0.748660, 0.551642,
		30.617237, 35.008472, 34.965637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081623, 35.803291, 34.723000>,  <30.359852, 35.532536, 34.579487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081623, 35.803291, 34.723000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041626, 35.405399, 34.732014>,  <31.017628, 35.166664, 34.737423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041626, 35.405399, 34.732014>,  <31.081623, 35.803291, 34.723000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041626, 35.405399, 34.732014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827098, -0.095690, -0.553852,
		0.553092, -0.036737, 0.832310,
		-0.099991, -0.994733, 0.022540,
		31.011629, 35.106979, 34.738777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698523, 35.444603, 34.828335>,  <31.081623, 35.803291, 34.723000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698523, 35.444603, 34.828335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475758, 35.194332, 34.609840>,  <31.342098, 35.044170, 34.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475758, 35.194332, 34.609840>,  <31.698523, 35.444603, 34.828335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475758, 35.194332, 34.609840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759917, -0.118404, -0.639145,
		0.335224, -0.771042, 0.541405,
		-0.556913, -0.625680, -0.546236,
		31.308683, 35.006630, 34.445969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911688, 34.693390, 34.760113>,  <31.698523, 35.444603, 34.828335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911688, 34.693390, 34.760113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717667, 34.853958, 34.449348>,  <31.601254, 34.950298, 34.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717667, 34.853958, 34.449348>,  <31.911688, 34.693390, 34.760113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717667, 34.853958, 34.449348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805195, -0.141568, -0.575863,
		-0.341150, -0.904886, -0.254555,
		-0.485054, 0.401422, -0.776906,
		31.572151, 34.974384, 34.216278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513214, 35.113808, 34.814556>,  <31.911688, 34.693390, 34.760113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513214, 35.113808, 34.814556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492599, 34.714958, 34.792324>,  <32.480228, 34.475647, 34.778984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492599, 34.714958, 34.792324>,  <32.513214, 35.113808, 34.814556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492599, 34.714958, 34.792324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538573, 0.019119, -0.842362,
		0.841001, -0.073353, 0.536038,
		-0.051541, -0.997123, -0.055585,
		32.477139, 34.415821, 34.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117172, 34.915562, 34.515339>,  <32.513214, 35.113808, 34.814556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117172, 34.915562, 34.515339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874580, 34.604202, 34.450489>,  <32.729023, 34.417389, 34.411579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874580, 34.604202, 34.450489>,  <33.117172, 34.915562, 34.515339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874580, 34.604202, 34.450489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420080, -0.140576, -0.896533,
		0.675065, -0.611834, 0.412244,
		-0.606481, -0.778394, -0.162121,
		32.692635, 34.370686, 34.401852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496880, 34.479271, 34.146225>,  <33.117172, 34.915562, 34.515339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496880, 34.479271, 34.146225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127327, 34.367508, 34.041630>,  <32.905594, 34.300449, 33.978870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127327, 34.367508, 34.041630>,  <33.496880, 34.479271, 34.146225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127327, 34.367508, 34.041630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322678, -0.201430, -0.924827,
		0.205727, -0.938808, 0.276254,
		-0.923881, -0.279403, -0.261493,
		32.850163, 34.283688, 33.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555775, 33.820724, 33.647549>,  <33.496880, 34.479271, 34.146225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555775, 33.820724, 33.647549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221577, 34.033054, 33.590752>,  <33.021057, 34.160454, 33.556671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221577, 34.033054, 33.590752>,  <33.555775, 33.820724, 33.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221577, 34.033054, 33.590752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044062, -0.192863, -0.980236,
		-0.547722, -0.825243, 0.137748,
		-0.835499, 0.530827, -0.141997,
		32.970928, 34.192303, 33.548153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892094, 33.494282, 33.330246>,  <33.555775, 33.820724, 33.647549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892094, 33.494282, 33.330246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 33.876492, 33.215332>,  <32.934727, 34.105816, 33.146381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 33.876492, 33.215332>,  <32.892094, 33.494282, 33.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918739, 33.876492, 33.215332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160848, -0.294446, -0.942035,
		-0.984729, 0.016540, -0.173308,
		0.066611, 0.955525, -0.287289,
		32.938725, 34.163151, 33.129147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524624, 33.553932, 32.751320>,  <32.892094, 33.494282, 33.330246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524624, 33.553932, 32.751320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753189, 33.880650, 32.719460>,  <32.890327, 34.076679, 32.700344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753189, 33.880650, 32.719460>,  <32.524624, 33.553932, 32.751320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753189, 33.880650, 32.719460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154827, -0.202605, -0.966944,
		-0.805926, 0.540191, -0.242232,
		0.571412, 0.816789, -0.079648,
		32.924614, 34.125687, 32.695564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298397, 33.986347, 32.024349>,  <32.524624, 33.553932, 32.751320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298397, 33.986347, 32.024349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672436, 34.049892, 32.151062>,  <32.896858, 34.088020, 32.227089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672436, 34.049892, 32.151062>,  <32.298397, 33.986347, 32.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672436, 34.049892, 32.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322681, -0.012124, -0.946430,
		-0.146516, 0.987225, -0.062600,
		0.935099, 0.158867, 0.316783,
		32.952965, 34.097553, 32.246098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495628, 34.488026, 31.589588>,  <32.298397, 33.986347, 32.024349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495628, 34.488026, 31.589588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854660, 34.358116, 31.708838>,  <33.070080, 34.280170, 31.780386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854660, 34.358116, 31.708838>,  <32.495628, 34.488026, 31.589588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854660, 34.358116, 31.708838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320982, 0.017887, -0.946916,
		0.302204, 0.945622, 0.120302,
		0.897576, -0.324777, 0.298122,
		33.123932, 34.260681, 31.798275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954433, 34.892403, 31.261438>,  <32.495628, 34.488026, 31.589588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954433, 34.892403, 31.261438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179920, 34.576118, 31.356941>,  <33.315212, 34.386349, 31.414244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179920, 34.576118, 31.356941>,  <32.954433, 34.892403, 31.261438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179920, 34.576118, 31.356941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196956, -0.152043, -0.968551,
		0.802143, 0.593012, 0.070025,
		0.563716, -0.790708, 0.238757,
		33.349033, 34.338905, 31.428568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693218, 35.048111, 31.075542>,  <32.954433, 34.892403, 31.261438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693218, 35.048111, 31.075542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689816, 34.648193, 31.082916>,  <33.687775, 34.408241, 31.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689816, 34.648193, 31.082916>,  <33.693218, 35.048111, 31.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689816, 34.648193, 31.082916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292318, -0.020115, -0.956109,
		0.956283, -0.002742, 0.292429,
		-0.008504, -0.999794, 0.018434,
		33.687263, 34.348255, 31.088446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351833, 34.867039, 30.780298>,  <33.693218, 35.048111, 31.075542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351833, 34.867039, 30.780298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133228, 34.534077, 30.743589>,  <34.002068, 34.334297, 30.721565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133228, 34.534077, 30.743589>,  <34.351833, 34.867039, 30.780298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133228, 34.534077, 30.743589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288127, -0.084003, -0.953901,
		0.786327, -0.547757, 0.285748,
		-0.546510, -0.832409, -0.091770,
		33.969276, 34.284355, 30.716059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826649, 34.409054, 30.519423>,  <34.351833, 34.867039, 30.780298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826649, 34.409054, 30.519423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468494, 34.264595, 30.415222>,  <34.253601, 34.177921, 30.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468494, 34.264595, 30.415222>,  <34.826649, 34.409054, 30.519423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468494, 34.264595, 30.415222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326109, -0.133467, -0.935863,
		0.303215, -0.922909, 0.237277,
		-0.895385, -0.361146, -0.260500,
		34.199879, 34.156250, 30.337072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901619, 33.678600, 30.196545>,  <34.826649, 34.409054, 30.519423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901619, 33.678600, 30.196545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551941, 33.835430, 30.081957>,  <34.342136, 33.929527, 30.013205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551941, 33.835430, 30.081957>,  <34.901619, 33.678600, 30.196545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551941, 33.835430, 30.081957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260107, -0.120074, -0.958085,
		-0.410041, -0.912062, 0.002986,
		-0.874192, 0.392078, -0.286469,
		34.289684, 33.953053, 29.996016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853848, 33.363373, 29.601702>,  <34.901619, 33.678600, 30.196545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853848, 33.363373, 29.601702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580753, 33.652142, 29.556610>,  <34.416897, 33.825401, 29.529556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580753, 33.652142, 29.556610>,  <34.853848, 33.363373, 29.601702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580753, 33.652142, 29.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207034, 0.043178, -0.977381,
		-0.700721, -0.690630, -0.178940,
		-0.682735, 0.721918, -0.112728,
		34.375935, 33.868717, 29.522791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253597, 33.167980, 29.083982>,  <34.853848, 33.363373, 29.601702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253597, 33.167980, 29.083982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273651, 33.565475, 29.123940>,  <34.285683, 33.803970, 29.147915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273651, 33.565475, 29.123940>,  <34.253597, 33.167980, 29.083982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273651, 33.565475, 29.123940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207005, 0.087508, -0.974418,
		-0.977054, 0.069530, -0.201321,
		0.050134, 0.993734, 0.099894,
		34.288692, 33.863594, 29.153908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764446, 33.382301, 28.663191>,  <34.253597, 33.167980, 29.083982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764446, 33.382301, 28.663191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007565, 33.692047, 28.733545>,  <34.153435, 33.877895, 28.775757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007565, 33.692047, 28.733545>,  <33.764446, 33.382301, 28.663191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007565, 33.692047, 28.733545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162641, 0.095402, -0.982062,
		-0.777257, 0.625503, -0.067958,
		0.607799, 0.774367, 0.175885,
		34.189903, 33.924358, 28.786310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472111, 33.974930, 28.221771>,  <33.764446, 33.382301, 28.663191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472111, 33.974930, 28.221771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837204, 34.114834, 28.306229>,  <34.056259, 34.198776, 28.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837204, 34.114834, 28.306229>,  <33.472111, 33.974930, 28.221771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837204, 34.114834, 28.306229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112409, 0.281864, -0.952847,
		-0.392785, 0.893430, 0.217950,
		0.912734, 0.349765, 0.211142,
		34.111023, 34.219765, 28.369572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468193, 34.721554, 27.957289>,  <33.472111, 33.974930, 28.221771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468193, 34.721554, 27.957289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847576, 34.596977, 27.980730>,  <34.075207, 34.522232, 27.994795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847576, 34.596977, 27.980730>,  <33.468193, 34.721554, 27.957289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847576, 34.596977, 27.980730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157592, 0.303067, -0.939849,
		0.274949, 0.900640, 0.336526,
		0.948456, -0.311444, 0.058605,
		34.132114, 34.503544, 27.998312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965477, 35.325459, 27.897129>,  <33.468193, 34.721554, 27.957289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965477, 35.325459, 27.897129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162323, 34.985332, 27.822519>,  <34.280430, 34.781258, 27.777754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162323, 34.985332, 27.822519>,  <33.965477, 35.325459, 27.897129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162323, 34.985332, 27.822519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372936, 0.399535, -0.837431,
		0.786600, 0.342552, 0.513729,
		0.492117, -0.850312, -0.186524,
		34.309959, 34.730240, 27.766562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670006, 35.541878, 27.680111>,  <33.965477, 35.325459, 27.897129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670006, 35.541878, 27.680111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625618, 35.170547, 27.538177>,  <34.598988, 34.947750, 27.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625618, 35.170547, 27.538177>,  <34.670006, 35.541878, 27.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625618, 35.170547, 27.538177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473522, 0.264518, -0.840123,
		0.873764, -0.261245, 0.410229,
		-0.110965, -0.928322, -0.354832,
		34.592327, 34.892052, 27.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237499, 35.615540, 27.338518>,  <34.670006, 35.541878, 27.680111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237499, 35.615540, 27.338518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016525, 35.302784, 27.222958>,  <34.883942, 35.115131, 27.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016525, 35.302784, 27.222958>,  <35.237499, 35.615540, 27.338518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016525, 35.302784, 27.222958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199412, 0.212558, -0.956585,
		0.809354, -0.586059, 0.038495,
		-0.552433, -0.781891, -0.288902,
		34.850796, 35.068218, 27.136288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553940, 35.360565, 26.791092>,  <35.237499, 35.615540, 27.338518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553940, 35.360565, 26.791092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184483, 35.214275, 26.745279>,  <34.962807, 35.126499, 26.717791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184483, 35.214275, 26.745279>,  <35.553940, 35.360565, 26.791092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184483, 35.214275, 26.745279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074265, 0.122382, -0.989701,
		0.375980, -0.922640, -0.085877,
		-0.923647, -0.365730, -0.114533,
		34.907387, 35.104557, 26.710920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644211, 34.845543, 26.265932>,  <35.553940, 35.360565, 26.791092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644211, 34.845543, 26.265932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252319, 34.925671, 26.266825>,  <35.017185, 34.973747, 26.267361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252319, 34.925671, 26.266825>,  <35.644211, 34.845543, 26.265932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252319, 34.925671, 26.266825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035531, 0.184710, -0.982151,
		-0.197161, -0.962160, -0.188083,
		-0.979727, 0.200324, 0.002231,
		34.958401, 34.985767, 26.267494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376228, 34.518494, 25.764687>,  <35.644211, 34.845543, 26.265932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376228, 34.518494, 25.764687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097012, 34.800236, 25.816246>,  <34.929482, 34.969280, 25.847181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097012, 34.800236, 25.816246>,  <35.376228, 34.518494, 25.764687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097012, 34.800236, 25.816246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008583, 0.171768, -0.985100,
		-0.716004, -0.688749, -0.113856,
		-0.698044, 0.704358, 0.128898,
		34.887600, 35.011543, 25.854916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831001, 34.392349, 25.259974>,  <35.376228, 34.518494, 25.764687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831001, 34.392349, 25.259974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786125, 34.777664, 25.357531>,  <34.759201, 35.008854, 25.416065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786125, 34.777664, 25.357531>,  <34.831001, 34.392349, 25.259974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786125, 34.777664, 25.357531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061498, 0.238242, -0.969257,
		-0.991782, -0.123738, 0.032512,
		-0.112188, 0.963291, 0.243894,
		34.752468, 35.066650, 25.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303043, 34.579144, 24.786537>,  <34.831001, 34.392349, 25.259974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303043, 34.579144, 24.786537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464085, 34.922867, 24.912706>,  <34.560711, 35.129101, 24.988409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464085, 34.922867, 24.912706>,  <34.303043, 34.579144, 24.786537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464085, 34.922867, 24.912706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181062, 0.412536, -0.892766,
		-0.897289, 0.302318, 0.321677,
		0.402603, 0.859313, 0.315425,
		34.584866, 35.180660, 25.007334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784275, 35.089058, 24.623655>,  <34.303043, 34.579144, 24.786537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784275, 35.089058, 24.623655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135445, 35.274567, 24.671265>,  <34.346146, 35.385872, 24.699831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135445, 35.274567, 24.671265>,  <33.784275, 35.089058, 24.623655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135445, 35.274567, 24.671265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158963, 0.516809, -0.841213,
		-0.451644, 0.719600, 0.527441,
		0.877923, 0.463772, 0.119023,
		34.398823, 35.413700, 24.706972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683640, 35.814095, 24.544762>,  <33.784275, 35.089058, 24.623655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683640, 35.814095, 24.544762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074944, 35.746693, 24.496414>,  <34.309727, 35.706249, 24.467405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074944, 35.746693, 24.496414>,  <33.683640, 35.814095, 24.544762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074944, 35.746693, 24.496414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045127, 0.395906, -0.917182,
		0.202405, 0.902698, 0.379695,
		0.978262, -0.168507, -0.120869,
		34.368423, 35.696140, 24.460154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940903, 36.347450, 24.078806>,  <33.683640, 35.814095, 24.544762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940903, 36.347450, 24.078806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227901, 36.068943, 24.070711>,  <34.400101, 35.901836, 24.065855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227901, 36.068943, 24.070711>,  <33.940903, 36.347450, 24.078806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227901, 36.068943, 24.070711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177388, 0.210734, -0.961314,
		0.673599, 0.686148, 0.274710,
		0.717494, -0.696271, -0.020236,
		34.443150, 35.860062, 24.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357998, 36.684906, 23.710014>,  <33.940903, 36.347450, 24.078806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357998, 36.684906, 23.710014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464314, 36.300724, 23.676855>,  <34.528103, 36.070213, 23.656960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464314, 36.300724, 23.676855>,  <34.357998, 36.684906, 23.710014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464314, 36.300724, 23.676855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187208, 0.135779, -0.972891,
		0.945678, 0.243069, 0.215895,
		0.265793, -0.960459, -0.082899,
		34.544052, 36.012585, 23.651985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002945, 36.621975, 23.414839>,  <34.357998, 36.684906, 23.710014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002945, 36.621975, 23.414839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829655, 36.271572, 23.330046>,  <34.725681, 36.061333, 23.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829655, 36.271572, 23.330046>,  <35.002945, 36.621975, 23.414839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829655, 36.271572, 23.330046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219720, 0.125451, -0.967463,
		0.874094, -0.465704, 0.138128,
		-0.433223, -0.876004, -0.211981,
		34.699688, 36.008770, 23.266451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453827, 36.289570, 22.897909>,  <35.002945, 36.621975, 23.414839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453827, 36.289570, 22.897909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109539, 36.087292, 22.874495>,  <34.902966, 35.965923, 22.860445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109539, 36.087292, 22.874495>,  <35.453827, 36.289570, 22.897909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109539, 36.087292, 22.874495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151852, -0.145288, -0.977667,
		0.485896, -0.850390, 0.201844,
		-0.860724, -0.505695, -0.058539,
		34.851322, 35.935585, 22.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673763, 35.655716, 22.544724>,  <35.453827, 36.289570, 22.897909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673763, 35.655716, 22.544724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278419, 35.709904, 22.517029>,  <35.041214, 35.742416, 22.500412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278419, 35.709904, 22.517029>,  <35.673763, 35.655716, 22.544724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278419, 35.709904, 22.517029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060740, -0.065891, -0.995976,
		-0.139493, -0.988587, 0.056895,
		-0.988358, 0.135476, -0.069238,
		34.981911, 35.750546, 22.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466030, 35.165348, 22.158653>,  <35.673763, 35.655716, 22.544724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466030, 35.165348, 22.158653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141167, 35.395039, 22.117334>,  <34.946251, 35.532852, 22.092543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141167, 35.395039, 22.117334>,  <35.466030, 35.165348, 22.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141167, 35.395039, 22.117334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042510, -0.118334, -0.992063,
		-0.581892, -0.810099, 0.071695,
		-0.812154, 0.574226, -0.103295,
		34.897522, 35.567307, 22.086346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904377, 34.828766, 21.705933>,  <35.466030, 35.165348, 22.158653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904377, 34.828766, 21.705933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767967, 35.203308, 21.672596>,  <34.686123, 35.428032, 21.652594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767967, 35.203308, 21.672596>,  <34.904377, 34.828766, 21.705933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767967, 35.203308, 21.672596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093398, -0.121965, -0.988130,
		-0.935403, -0.329194, 0.129047,
		-0.341025, 0.936353, -0.083340,
		34.665661, 35.484215, 21.647594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368851, 34.777946, 21.120829>,  <34.904377, 34.828766, 21.705933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368851, 34.777946, 21.120829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495518, 35.154232, 21.169456>,  <34.571518, 35.380005, 21.198633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495518, 35.154232, 21.169456>,  <34.368851, 34.777946, 21.120829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495518, 35.154232, 21.169456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096997, 0.095377, -0.990704,
		-0.943566, 0.325511, -0.061045,
		0.316663, 0.940716, 0.121569,
		34.590515, 35.436447, 21.205927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922558, 35.247429, 20.665445>,  <34.368851, 34.777946, 21.120829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922558, 35.247429, 20.665445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268158, 35.433338, 20.742897>,  <34.475517, 35.544884, 20.789368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268158, 35.433338, 20.742897>,  <33.922558, 35.247429, 20.665445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268158, 35.433338, 20.742897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, 0.163338, -0.977798,
		-0.486081, 0.870233, 0.080114,
		0.863999, 0.464773, 0.193629,
		34.527359, 35.572769, 20.800985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853123, 35.885696, 20.400484>,  <33.922558, 35.247429, 20.665445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853123, 35.885696, 20.400484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248577, 35.835579, 20.433699>,  <34.485851, 35.805508, 20.453627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248577, 35.835579, 20.433699>,  <33.853123, 35.885696, 20.400484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248577, 35.835579, 20.433699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133262, 0.475071, -0.869798,
		0.069531, 0.870982, 0.486371,
		0.988639, -0.125293, 0.083037,
		34.545170, 35.797993, 20.458611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020424, 36.305252, 19.992058>,  <33.853123, 35.885696, 20.400484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020424, 36.305252, 19.992058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368439, 36.108543, 20.005856>,  <34.577248, 35.990517, 20.014133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368439, 36.108543, 20.005856>,  <34.020424, 36.305252, 19.992058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368439, 36.108543, 20.005856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219936, 0.324583, -0.919931,
		0.441204, 0.807962, 0.390559,
		0.870039, -0.491775, 0.034493,
		34.629452, 35.961010, 20.016203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524048, 36.674423, 19.704187>,  <34.020424, 36.305252, 19.992058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524048, 36.674423, 19.704187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703766, 36.317646, 19.683933>,  <34.811596, 36.103577, 19.671780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703766, 36.317646, 19.683933>,  <34.524048, 36.674423, 19.704187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703766, 36.317646, 19.683933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297371, 0.202760, -0.932984,
		0.842440, 0.404126, 0.356339,
		0.449294, -0.891948, -0.050637,
		34.838554, 36.050060, 19.668741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260769, 36.781113, 19.556791>,  <34.524048, 36.674423, 19.704187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260769, 36.781113, 19.556791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139835, 36.419437, 19.436106>,  <35.067276, 36.202431, 19.363693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139835, 36.419437, 19.436106>,  <35.260769, 36.781113, 19.556791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139835, 36.419437, 19.436106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168128, 0.260981, -0.950590,
		0.938257, -0.338125, 0.073116,
		-0.302336, -0.904191, -0.301715,
		35.049133, 36.148182, 19.345591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755993, 36.576447, 19.205410>,  <35.260769, 36.781113, 19.556791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755993, 36.576447, 19.205410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440689, 36.365273, 19.078962>,  <35.251507, 36.238567, 19.003094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440689, 36.365273, 19.078962>,  <35.755993, 36.576447, 19.205410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440689, 36.365273, 19.078962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182598, 0.289903, -0.939476,
		0.587629, -0.798271, -0.132117,
		-0.788258, -0.527939, -0.316118,
		35.204212, 36.206890, 18.984127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867321, 36.595406, 18.531693>,  <35.755993, 36.576447, 19.205410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867321, 36.595406, 18.531693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514309, 36.411430, 18.492504>,  <35.302502, 36.301044, 18.468990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514309, 36.411430, 18.492504>,  <35.867321, 36.595406, 18.531693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514309, 36.411430, 18.492504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086401, 0.046197, -0.995189,
		0.462250, -0.886749, -0.001031,
		-0.882530, -0.459937, -0.097971,
		35.249550, 36.273449, 18.463114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930408, 36.026566, 18.005173>,  <35.867321, 36.595406, 18.531693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930408, 36.026566, 18.005173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550423, 36.149353, 18.028275>,  <35.322430, 36.223026, 18.042135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550423, 36.149353, 18.028275>,  <35.930408, 36.026566, 18.005173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550423, 36.149353, 18.028275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031581, 0.089563, -0.995480,
		-0.310752, -0.947497, -0.075387,
		-0.949966, 0.306967, 0.057755,
		35.265434, 36.241444, 18.045601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493595, 35.615234, 17.567953>,  <35.930408, 36.026566, 18.005173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493595, 35.615234, 17.567953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278233, 35.950096, 17.606493>,  <35.149014, 36.151012, 17.629618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278233, 35.950096, 17.606493>,  <35.493595, 35.615234, 17.567953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278233, 35.950096, 17.606493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087363, 0.058269, -0.994471,
		-0.838143, -0.543850, 0.041764,
		-0.538409, 0.837157, 0.096350,
		35.116711, 36.201244, 17.635399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032646, 35.667999, 17.051533>,  <35.493595, 35.615234, 17.567953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032646, 35.667999, 17.051533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010727, 36.052822, 17.158455>,  <34.997574, 36.283714, 17.222609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010727, 36.052822, 17.158455>,  <35.032646, 35.667999, 17.051533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010727, 36.052822, 17.158455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233028, 0.247992, -0.940318,
		-0.970925, -0.113820, 0.210595,
		-0.054801, 0.962052, 0.267305,
		34.994286, 36.341438, 17.238646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308010, 35.888165, 16.861851>,  <35.032646, 35.667999, 17.051533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308010, 35.888165, 16.861851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533646, 36.217373, 16.888504>,  <34.669025, 36.414898, 16.904495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533646, 36.217373, 16.888504>,  <34.308010, 35.888165, 16.861851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533646, 36.217373, 16.888504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386193, 0.334294, -0.859711,
		-0.729837, 0.459218, 0.506416,
		0.564086, 0.823023, 0.066634,
		34.702873, 36.464279, 16.908495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905762, 36.599529, 17.021454>,  <34.308010, 35.888165, 16.861851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905762, 36.599529, 17.021454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241055, 36.615353, 16.803902>,  <34.442230, 36.624847, 16.673370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241055, 36.615353, 16.803902>,  <33.905762, 36.599529, 17.021454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241055, 36.615353, 16.803902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515617, 0.382160, -0.766872,
		0.177515, 0.923249, 0.340733,
		0.838229, 0.039557, -0.543882,
		34.492523, 36.627220, 16.640738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006870, 37.226818, 16.615709>,  <33.905762, 36.599529, 17.021454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006870, 37.226818, 16.615709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220688, 36.953190, 16.417192>,  <34.348980, 36.789013, 16.298082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220688, 36.953190, 16.417192>,  <34.006870, 37.226818, 16.615709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220688, 36.953190, 16.417192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364829, 0.342922, -0.865623,
		0.762338, 0.643778, -0.066261,
		0.534547, -0.684072, -0.496292,
		34.381050, 36.747967, 16.268305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152096, 37.497807, 15.964768>,  <34.006870, 37.226818, 16.615709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152096, 37.497807, 15.964768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253059, 37.115707, 15.903078>,  <34.313637, 36.886448, 15.866064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253059, 37.115707, 15.903078>,  <34.152096, 37.497807, 15.964768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253059, 37.115707, 15.903078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164848, 0.114606, -0.979638,
		0.953475, 0.272693, -0.128543,
		0.252409, -0.955251, -0.154227,
		34.328781, 36.829132, 15.856810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360588, 37.397892, 15.245997>,  <34.152096, 37.497807, 15.964768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360588, 37.397892, 15.245997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331924, 37.009010, 15.335151>,  <34.314728, 36.775681, 15.388642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331924, 37.009010, 15.335151>,  <34.360588, 37.397892, 15.245997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331924, 37.009010, 15.335151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206721, -0.204130, -0.956868,
		0.975773, -0.114639, -0.186349,
		-0.071655, -0.972208, 0.222883,
		34.310429, 36.717346, 15.402016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834747, 36.876633, 14.869858>,  <34.360588, 37.397892, 15.245997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834747, 36.876633, 14.869858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151234, 36.646683, 14.786427>,  <35.341125, 36.508713, 14.736367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151234, 36.646683, 14.786427>,  <34.834747, 36.876633, 14.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151234, 36.646683, 14.786427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532416, 0.479737, 0.697414,
		-0.300861, -0.662852, 0.685645,
		0.791211, -0.574873, -0.208579,
		35.388596, 36.474220, 14.723853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123730, 36.445644, 15.425866>,  <34.834747, 36.876633, 14.869858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123730, 36.445644, 15.425866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447624, 36.586563, 15.238160>,  <35.641960, 36.671116, 15.125537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447624, 36.586563, 15.238160>,  <35.123730, 36.445644, 15.425866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447624, 36.586563, 15.238160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241838, 0.528273, 0.813905,
		0.534679, -0.772518, 0.342540,
		0.809711, 0.352339, -0.469281,
		35.690544, 36.692253, 15.097381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690529, 36.403786, 15.876019>,  <35.123730, 36.445644, 15.425866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690529, 36.403786, 15.876019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791992, 36.687248, 15.612669>,  <35.852871, 36.857327, 15.454659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791992, 36.687248, 15.612669>,  <35.690529, 36.403786, 15.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791992, 36.687248, 15.612669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133895, 0.648362, 0.749466,
		0.957983, -0.278260, 0.069575,
		0.253656, 0.708659, -0.658377,
		35.868088, 36.899845, 15.415155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438320, 36.614300, 16.061785>,  <35.690529, 36.403786, 15.876019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438320, 36.614300, 16.061785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166168, 36.879734, 15.937372>,  <36.002876, 37.038994, 15.862724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166168, 36.879734, 15.937372>,  <36.438320, 36.614300, 16.061785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166168, 36.879734, 15.937372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239975, 0.602739, 0.760997,
		0.692459, 0.443124, -0.569334,
		-0.680377, 0.663586, -0.311033,
		35.962055, 37.078812, 15.844062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674213, 37.175114, 15.949147>,  <36.438320, 36.614300, 16.061785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674213, 37.175114, 15.949147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320889, 37.294502, 16.093744>,  <36.108894, 37.366135, 16.180502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320889, 37.294502, 16.093744>,  <36.674213, 37.175114, 15.949147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320889, 37.294502, 16.093744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462413, 0.428007, 0.776520,
		0.077049, 0.853067, -0.516081,
		-0.883310, 0.298473, 0.361492,
		36.055897, 37.384045, 16.202192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827229, 37.739395, 16.127209>,  <36.674213, 37.175114, 15.949147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827229, 37.739395, 16.127209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470936, 37.709461, 16.306540>,  <36.257160, 37.691502, 16.414137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470936, 37.709461, 16.306540>,  <36.827229, 37.739395, 16.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470936, 37.709461, 16.306540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345192, 0.530312, 0.774346,
		-0.295701, 0.844494, -0.446533,
		-0.890732, -0.074836, 0.448326,
		36.203716, 37.687012, 16.441038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517246, 38.456524, 16.446852>,  <36.827229, 37.739395, 16.127209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517246, 38.456524, 16.446852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360153, 38.141472, 16.636759>,  <36.265896, 37.952442, 16.750704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360153, 38.141472, 16.636759>,  <36.517246, 38.456524, 16.446852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360153, 38.141472, 16.636759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012779, 0.511524, 0.859174,
		-0.919562, 0.343496, -0.190829,
		-0.392737, -0.787625, 0.474767,
		36.242332, 37.905186, 16.779188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881760, 38.669075, 16.725384>,  <36.517246, 38.456524, 16.446852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881760, 38.669075, 16.725384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963463, 38.348995, 16.950933>,  <36.012486, 38.156948, 17.086264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963463, 38.348995, 16.950933>,  <35.881760, 38.669075, 16.725384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963463, 38.348995, 16.950933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349345, 0.478506, 0.805599,
		-0.914461, -0.361534, -0.181810,
		0.204254, -0.800203, 0.563876,
		36.024738, 38.108932, 17.120096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325439, 38.587749, 17.220285>,  <35.881760, 38.669075, 16.725384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325439, 38.587749, 17.220285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616093, 38.368610, 17.386112>,  <35.790485, 38.237125, 17.485609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616093, 38.368610, 17.386112>,  <35.325439, 38.587749, 17.220285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616093, 38.368610, 17.386112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267957, 0.329642, 0.905282,
		-0.632618, -0.768893, 0.092728,
		0.726632, -0.547850, 0.414567,
		35.834084, 38.204254, 17.510483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075081, 38.352306, 17.770081>,  <35.325439, 38.587749, 17.220285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075081, 38.352306, 17.770081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458534, 38.309574, 17.875616>,  <35.688606, 38.283936, 17.938936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458534, 38.309574, 17.875616>,  <35.075081, 38.352306, 17.770081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458534, 38.309574, 17.875616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229337, 0.259155, 0.938213,
		-0.168605, -0.959909, 0.223935,
		0.958633, -0.106831, 0.263837,
		35.746124, 38.277527, 17.954767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072727, 37.857628, 18.411217>,  <35.075081, 38.352306, 17.770081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072727, 37.857628, 18.411217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435341, 38.026436, 18.407497>,  <35.652908, 38.127720, 18.405266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435341, 38.026436, 18.407497>,  <35.072727, 37.857628, 18.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435341, 38.026436, 18.407497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095856, 0.227259, 0.969105,
		0.411097, -0.877639, 0.246473,
		0.906538, 0.422022, -0.009298,
		35.707302, 38.153042, 18.404709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057644, 37.760395, 19.119486>,  <35.072727, 37.857628, 18.411217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057644, 37.760395, 19.119486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376556, 37.954090, 18.975344>,  <35.567902, 38.070309, 18.888859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376556, 37.954090, 18.975344>,  <35.057644, 37.760395, 19.119486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376556, 37.954090, 18.975344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233568, 0.302999, 0.923925,
		0.556589, -0.820794, 0.128472,
		0.797279, 0.484240, -0.360357,
		35.615742, 38.099361, 18.867237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682037, 37.626984, 19.576340>,  <35.057644, 37.760395, 19.119486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682037, 37.626984, 19.576340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747692, 37.977039, 19.394266>,  <35.787086, 38.187073, 19.285023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747692, 37.977039, 19.394266>,  <35.682037, 37.626984, 19.576340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747692, 37.977039, 19.394266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280343, 0.401031, 0.872113,
		0.945763, -0.270753, -0.179515,
		0.164136, 0.875138, -0.455185,
		35.796932, 38.239582, 19.257711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380962, 37.805965, 19.628195>,  <35.682037, 37.626984, 19.576340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380962, 37.805965, 19.628195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180786, 38.147415, 19.570395>,  <36.060680, 38.352287, 19.535715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180786, 38.147415, 19.570395>,  <36.380962, 37.805965, 19.628195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180786, 38.147415, 19.570395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501508, 0.421868, 0.755326,
		0.705727, 0.305528, -0.639220,
		-0.500439, 0.853628, -0.144499,
		36.030655, 38.403503, 19.527044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843372, 38.271397, 19.746836>,  <36.380962, 37.805965, 19.628195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843372, 38.271397, 19.746836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495899, 38.464348, 19.791914>,  <36.287415, 38.580120, 19.818960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495899, 38.464348, 19.791914>,  <36.843372, 38.271397, 19.746836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495899, 38.464348, 19.791914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312983, 0.358120, 0.879654,
		0.383970, 0.799412, -0.462070,
		-0.868682, 0.482381, 0.112695,
		36.235294, 38.609062, 19.825722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026642, 39.009407, 19.966778>,  <36.843372, 38.271397, 19.746836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026642, 39.009407, 19.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641247, 38.948833, 20.055113>,  <36.410011, 38.912491, 20.108114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641247, 38.948833, 20.055113>,  <37.026642, 39.009407, 19.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641247, 38.948833, 20.055113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161664, 0.328482, 0.930572,
		-0.213460, 0.932292, -0.292006,
		-0.963483, -0.151433, 0.220836,
		36.352203, 38.903404, 20.121365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734932, 39.630993, 20.204012>,  <37.026642, 39.009407, 19.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734932, 39.630993, 20.204012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522202, 39.322926, 20.344872>,  <36.394566, 39.138084, 20.429388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522202, 39.322926, 20.344872>,  <36.734932, 39.630993, 20.204012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522202, 39.322926, 20.344872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253163, 0.252228, 0.933965,
		-0.808129, 0.585856, 0.060836,
		-0.531824, -0.770165, 0.352149,
		36.362656, 39.091877, 20.450516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261246, 39.982441, 20.660982>,  <36.734932, 39.630993, 20.204012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261246, 39.982441, 20.660982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277542, 39.597420, 20.768188>,  <36.287319, 39.366405, 20.832512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277542, 39.597420, 20.768188>,  <36.261246, 39.982441, 20.660982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277542, 39.597420, 20.768188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154243, 0.258965, 0.953491,
		-0.987193, -0.080182, -0.137918,
		0.040737, -0.962553, 0.268016,
		36.289764, 39.308655, 20.848593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657818, 39.839134, 21.124249>,  <36.261246, 39.982441, 20.660982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657818, 39.839134, 21.124249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909672, 39.537651, 21.199600>,  <36.060783, 39.356762, 21.244812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909672, 39.537651, 21.199600>,  <35.657818, 39.839134, 21.124249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909672, 39.537651, 21.199600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198367, 0.078473, 0.976981,
		-0.751140, -0.652509, -0.100102,
		0.629633, -0.753707, 0.188380,
		36.098560, 39.311539, 21.256115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207203, 39.329506, 21.451536>,  <35.657818, 39.839134, 21.124249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207203, 39.329506, 21.451536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584583, 39.237976, 21.547491>,  <35.811012, 39.183060, 21.605064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584583, 39.237976, 21.547491>,  <35.207203, 39.329506, 21.451536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584583, 39.237976, 21.547491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273843, -0.130041, 0.952942,
		-0.186861, -0.964743, -0.185349,
		0.943447, -0.228824, 0.239889,
		35.867619, 39.169327, 21.619457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207771, 38.748951, 21.885704>,  <35.207203, 39.329506, 21.451536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207771, 38.748951, 21.885704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558323, 38.920143, 21.974064>,  <35.768654, 39.022858, 22.027081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558323, 38.920143, 21.974064>,  <35.207771, 38.748951, 21.885704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558323, 38.920143, 21.974064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175914, -0.142522, 0.974034,
		0.448353, -0.892479, -0.049615,
		0.876376, 0.427983, 0.220900,
		35.821236, 39.048538, 22.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469299, 38.285248, 22.405043>,  <35.207771, 38.748951, 21.885704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469299, 38.285248, 22.405043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669132, 38.630718, 22.431791>,  <35.789032, 38.838001, 22.447842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669132, 38.630718, 22.431791>,  <35.469299, 38.285248, 22.405043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669132, 38.630718, 22.431791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018796, -0.066372, 0.997618,
		0.866060, -0.499654, -0.016925,
		0.499587, 0.863679, 0.066873,
		35.819008, 38.889820, 22.451853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851242, 38.267387, 23.001839>,  <35.469299, 38.285248, 22.405043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851242, 38.267387, 23.001839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840073, 38.662865, 22.942894>,  <35.833370, 38.900150, 22.907528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840073, 38.662865, 22.942894>,  <35.851242, 38.267387, 23.001839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840073, 38.662865, 22.942894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153982, 0.141405, 0.977903,
		0.987679, 0.049995, 0.148292,
		-0.027921, 0.988689, -0.147361,
		35.831696, 38.959473, 22.898685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283371, 38.445892, 23.444653>,  <35.851242, 38.267387, 23.001839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283371, 38.445892, 23.444653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096535, 38.791557, 23.369774>,  <35.984432, 38.998959, 23.324846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096535, 38.791557, 23.369774>,  <36.283371, 38.445892, 23.444653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096535, 38.791557, 23.369774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013600, 0.218708, 0.975696,
		0.884103, 0.453195, -0.113910,
		-0.467093, 0.864165, -0.187197,
		35.956406, 39.050808, 23.313614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715652, 39.005009, 23.799725>,  <36.283371, 38.445892, 23.444653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715652, 39.005009, 23.799725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334515, 39.110313, 23.739365>,  <36.105831, 39.173496, 23.703148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334515, 39.110313, 23.739365>,  <36.715652, 39.005009, 23.799725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334515, 39.110313, 23.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075831, 0.274927, 0.958470,
		0.293816, 0.924720, -0.242001,
		-0.952849, 0.263263, -0.150900,
		36.048660, 39.189293, 23.694094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633545, 39.623985, 24.245348>,  <36.715652, 39.005009, 23.799725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633545, 39.623985, 24.245348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247269, 39.550434, 24.171997>,  <36.015503, 39.506302, 24.127987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247269, 39.550434, 24.171997>,  <36.633545, 39.623985, 24.245348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247269, 39.550434, 24.171997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215782, 0.175293, 0.960578,
		-0.144485, 0.967192, -0.208957,
		-0.965693, -0.183879, -0.183375,
		35.957561, 39.495270, 24.116985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232410, 40.154388, 24.517710>,  <36.633545, 39.623985, 24.245348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232410, 40.154388, 24.517710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980568, 39.844738, 24.491413>,  <35.829464, 39.658947, 24.475636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980568, 39.844738, 24.491413>,  <36.232410, 40.154388, 24.517710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980568, 39.844738, 24.491413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248598, 0.120569, 0.961073,
		-0.736067, 0.621442, -0.268358,
		-0.629607, -0.774127, -0.065742,
		35.791687, 39.612499, 24.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644104, 40.232430, 25.055498>,  <36.232410, 40.154388, 24.517710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644104, 40.232430, 25.055498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623646, 39.851074, 24.936546>,  <35.611370, 39.622261, 24.865175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623646, 39.851074, 24.936546>,  <35.644104, 40.232430, 25.055498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623646, 39.851074, 24.936546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283197, -0.271703, 0.919770,
		-0.957697, 0.131256, -0.256102,
		-0.051142, -0.953388, -0.297380,
		35.608303, 39.565056, 24.847332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015327, 40.048077, 25.301855>,  <35.644104, 40.232430, 25.055498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015327, 40.048077, 25.301855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199970, 39.697689, 25.245863>,  <35.310757, 39.487457, 25.212269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199970, 39.697689, 25.245863>,  <35.015327, 40.048077, 25.301855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199970, 39.697689, 25.245863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264213, -0.286400, 0.920959,
		-0.846823, -0.388138, -0.363647,
		0.461608, -0.875970, -0.139979,
		35.338451, 39.434898, 25.203869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503445, 39.447456, 25.290483>,  <35.015327, 40.048077, 25.301855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503445, 39.447456, 25.290483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857265, 39.289177, 25.389267>,  <35.069557, 39.194210, 25.448538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857265, 39.289177, 25.389267>,  <34.503445, 39.447456, 25.290483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857265, 39.289177, 25.389267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419831, -0.444701, 0.791191,
		-0.203251, -0.803531, -0.559489,
		0.884551, -0.395701, 0.246961,
		35.122631, 39.170467, 25.463354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372646, 38.786743, 25.417147>,  <34.503445, 39.447456, 25.290483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372646, 38.786743, 25.417147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712650, 38.852112, 25.617456>,  <34.916653, 38.891335, 25.737642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712650, 38.852112, 25.617456>,  <34.372646, 38.786743, 25.417147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712650, 38.852112, 25.617456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359990, -0.513811, 0.778720,
		0.384562, -0.842194, -0.377916,
		0.850011, 0.163420, 0.500774,
		34.967655, 38.901138, 25.767689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396385, 38.218254, 25.795162>,  <34.372646, 38.786743, 25.417147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396385, 38.218254, 25.795162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661846, 38.454258, 25.979099>,  <34.821121, 38.595860, 26.089462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661846, 38.454258, 25.979099>,  <34.396385, 38.218254, 25.795162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661846, 38.454258, 25.979099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199654, -0.452720, 0.869012,
		0.720905, -0.668532, -0.182651,
		0.663652, 0.590008, 0.459844,
		34.860943, 38.631260, 26.117052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907791, 37.761879, 26.210136>,  <34.396385, 38.218254, 25.795162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907791, 37.761879, 26.210136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896851, 38.117943, 26.392063>,  <34.890285, 38.331581, 26.501219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896851, 38.117943, 26.392063>,  <34.907791, 37.761879, 26.210136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896851, 38.117943, 26.392063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065056, -0.455609, 0.887800,
		0.997507, -0.005309, 0.070371,
		-0.027348, 0.890164, 0.454818,
		34.888645, 38.384991, 26.528509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318195, 37.714676, 26.748943>,  <34.907791, 37.761879, 26.210136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318195, 37.714676, 26.748943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109615, 38.040585, 26.850321>,  <34.984467, 38.236130, 26.911146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109615, 38.040585, 26.850321>,  <35.318195, 37.714676, 26.748943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109615, 38.040585, 26.850321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019429, -0.308281, 0.951097,
		0.853059, 0.491028, 0.176584,
		-0.521453, 0.814773, 0.253442,
		34.953178, 38.285015, 26.926353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740898, 38.148144, 27.261112>,  <35.318195, 37.714676, 26.748943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740898, 38.148144, 27.261112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347771, 38.218952, 27.282034>,  <35.111893, 38.261436, 27.294586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347771, 38.218952, 27.282034>,  <35.740898, 38.148144, 27.261112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347771, 38.218952, 27.282034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001177, -0.277344, 0.960770,
		0.184579, 0.944323, 0.272370,
		-0.982817, 0.177017, 0.052303,
		35.052925, 38.272057, 27.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656830, 38.408962, 27.896935>,  <35.740898, 38.148144, 27.261112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656830, 38.408962, 27.896935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269760, 38.341652, 27.821796>,  <35.037518, 38.301266, 27.776714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269760, 38.341652, 27.821796>,  <35.656830, 38.408962, 27.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269760, 38.341652, 27.821796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165984, -0.135812, 0.976732,
		-0.189874, 0.976339, 0.103490,
		-0.967676, -0.168278, -0.187844,
		34.979458, 38.291168, 27.765444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293777, 38.660320, 28.425312>,  <35.656830, 38.408962, 27.896935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293777, 38.660320, 28.425312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034222, 38.401833, 28.264637>,  <34.878490, 38.246742, 28.168232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034222, 38.401833, 28.264637>,  <35.293777, 38.660320, 28.425312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034222, 38.401833, 28.264637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167422, -0.393722, 0.903854,
		-0.742238, 0.653750, 0.147289,
		-0.648885, -0.646216, -0.401687,
		34.839558, 38.207970, 28.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638317, 38.709274, 28.816317>,  <35.293777, 38.660320, 28.425312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638317, 38.709274, 28.816317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642147, 38.349533, 28.641470>,  <34.644447, 38.133690, 28.536562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642147, 38.349533, 28.641470>,  <34.638317, 38.709274, 28.816317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642147, 38.349533, 28.641470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188782, -0.430902, 0.882431,
		-0.981972, 0.074068, -0.173909,
		0.009578, -0.899354, -0.437117,
		34.645020, 38.079727, 28.510336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037861, 38.474129, 29.052631>,  <34.638317, 38.709274, 28.816317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037861, 38.474129, 29.052631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256618, 38.166313, 28.920740>,  <34.387871, 37.981625, 28.841606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256618, 38.166313, 28.920740>,  <34.037861, 38.474129, 29.052631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256618, 38.166313, 28.920740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276143, -0.537609, 0.796694,
		-0.790352, -0.344652, -0.506516,
		0.546890, -0.769539, -0.329728,
		34.420685, 37.935452, 28.821821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593811, 37.964363, 28.941771>,  <34.037861, 38.474129, 29.052631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593811, 37.964363, 28.941771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955513, 37.811790, 29.018530>,  <34.172535, 37.720245, 29.064585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955513, 37.811790, 29.018530>,  <33.593811, 37.964363, 28.941771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955513, 37.811790, 29.018530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364159, -0.454271, 0.813035,
		-0.222945, -0.805075, -0.549681,
		0.904259, -0.381434, 0.191898,
		34.226791, 37.697361, 29.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414310, 37.198696, 29.178741>,  <33.593811, 37.964363, 28.941771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414310, 37.198696, 29.178741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801697, 37.233406, 29.272160>,  <34.034130, 37.254230, 29.328211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801697, 37.233406, 29.272160>,  <33.414310, 37.198696, 29.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801697, 37.233406, 29.272160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156739, -0.516446, 0.841853,
		0.193662, -0.851912, -0.486560,
		0.968467, 0.086772, 0.233543,
		34.092236, 37.259438, 29.342222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601898, 36.487091, 29.305929>,  <33.414310, 37.198696, 29.178741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601898, 36.487091, 29.305929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855026, 36.750870, 29.468252>,  <34.006901, 36.909138, 29.565645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855026, 36.750870, 29.468252>,  <33.601898, 36.487091, 29.305929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855026, 36.750870, 29.468252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111300, -0.596120, 0.795144,
		0.766261, -0.458014, -0.450630,
		0.632817, 0.659442, 0.405807,
		34.044872, 36.948704, 29.589994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225513, 36.131023, 29.494390>,  <33.601898, 36.487091, 29.305929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225513, 36.131023, 29.494390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216434, 36.436111, 29.752924>,  <34.210987, 36.619164, 29.908045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216434, 36.436111, 29.752924>,  <34.225513, 36.131023, 29.494390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216434, 36.436111, 29.752924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103570, -0.641230, 0.760327,
		0.994363, 0.084196, -0.064442,
		-0.022694, 0.762716, 0.646336,
		34.209625, 36.664925, 29.946825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697929, 35.916538, 30.028759>,  <34.225513, 36.131023, 29.494390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697929, 35.916538, 30.028759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466591, 36.202290, 30.186327>,  <34.327789, 36.373741, 30.280869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466591, 36.202290, 30.186327>,  <34.697929, 35.916538, 30.028759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466591, 36.202290, 30.186327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024853, -0.498074, 0.866778,
		0.815413, 0.491508, 0.305814,
		-0.578346, 0.714382, 0.393920,
		34.293087, 36.416603, 30.304502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273304, 35.892822, 30.476639>,  <34.697929, 35.916538, 30.028759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273304, 35.892822, 30.476639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650131, 35.779263, 30.548094>,  <35.876228, 35.711128, 30.590967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650131, 35.779263, 30.548094>,  <35.273304, 35.892822, 30.476639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650131, 35.779263, 30.548094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318769, 0.592028, -0.740195,
		0.104382, 0.754257, 0.648228,
		0.942067, -0.283898, 0.178637,
		35.932751, 35.694092, 30.601685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707165, 36.491085, 30.425772>,  <35.273304, 35.892822, 30.476639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707165, 36.491085, 30.425772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968410, 36.188728, 30.407566>,  <36.125156, 36.007313, 30.396643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968410, 36.188728, 30.407566>,  <35.707165, 36.491085, 30.425772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968410, 36.188728, 30.407566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645687, 0.587281, -0.488046,
		0.395638, 0.289362, 0.871630,
		0.653114, -0.755890, -0.045513,
		36.164345, 35.961960, 30.393911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262447, 36.775925, 30.614794>,  <35.707165, 36.491085, 30.425772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262447, 36.775925, 30.614794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414345, 36.452209, 30.435530>,  <36.505482, 36.257980, 30.327972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414345, 36.452209, 30.435530>,  <36.262447, 36.775925, 30.614794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414345, 36.452209, 30.435530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709986, 0.565529, -0.419639,
		0.593056, -0.158831, 0.789340,
		0.379743, -0.809289, -0.448158,
		36.528267, 36.209423, 30.301083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928047, 36.719383, 30.937939>,  <36.262447, 36.775925, 30.614794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928047, 36.719383, 30.937939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934292, 36.517010, 30.592966>,  <36.938038, 36.395584, 30.385983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934292, 36.517010, 30.592966>,  <36.928047, 36.719383, 30.937939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934292, 36.517010, 30.592966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778371, 0.547552, -0.307126,
		0.627611, -0.666498, 0.402349,
		0.015608, -0.505932, -0.862432,
		36.938972, 36.365231, 30.334236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584473, 36.852345, 30.786728>,  <36.928047, 36.719383, 30.937939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584473, 36.852345, 30.786728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417816, 36.727921, 30.445049>,  <37.317822, 36.653267, 30.240042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417816, 36.727921, 30.445049>,  <37.584473, 36.852345, 30.786728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417816, 36.727921, 30.445049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628221, 0.580650, -0.517865,
		0.657076, -0.752388, -0.046510,
		-0.416641, -0.311058, -0.854197,
		37.292824, 36.634602, 30.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105423, 36.530170, 30.400265>,  <37.584473, 36.852345, 30.786728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105423, 36.530170, 30.400265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827549, 36.650330, 30.138832>,  <37.660824, 36.722427, 29.981972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827549, 36.650330, 30.138832>,  <38.105423, 36.530170, 30.400265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827549, 36.650330, 30.138832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717639, 0.351403, -0.601256,
		0.049053, -0.886721, -0.459694,
		-0.694685, 0.300401, -0.653584,
		37.619144, 36.740448, 29.942757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378510, 36.321594, 29.709366>,  <38.105423, 36.530170, 30.400265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378510, 36.321594, 29.709366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103119, 36.603638, 29.641453>,  <37.937885, 36.772865, 29.600704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103119, 36.603638, 29.641453>,  <38.378510, 36.321594, 29.709366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103119, 36.603638, 29.641453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548706, 0.353317, -0.757686,
		-0.474265, -0.614806, -0.630147,
		-0.688472, 0.705110, -0.169782,
		37.896576, 36.815170, 29.590519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505371, 36.471714, 29.052372>,  <38.378510, 36.321594, 29.709366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505371, 36.471714, 29.052372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254086, 36.769760, 29.141956>,  <38.103313, 36.948586, 29.195707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254086, 36.769760, 29.141956>,  <38.505371, 36.471714, 29.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254086, 36.769760, 29.141956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330590, 0.516206, -0.790089,
		-0.704316, -0.422303, -0.570613,
		-0.628211, 0.745112, 0.223963,
		38.065620, 36.993294, 29.209145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973785, 36.580421, 28.535936>,  <38.505371, 36.471714, 29.052372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973785, 36.580421, 28.535936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033077, 36.925068, 28.730112>,  <38.068653, 37.131855, 28.846617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033077, 36.925068, 28.730112>,  <37.973785, 36.580421, 28.535936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033077, 36.925068, 28.730112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149174, 0.465765, -0.872244,
		-0.977637, 0.201710, -0.059489,
		0.148232, 0.861612, 0.485439,
		38.077545, 37.183552, 28.875744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553165, 37.086315, 28.154570>,  <37.973785, 36.580421, 28.535936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553165, 37.086315, 28.154570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832924, 37.292480, 28.352636>,  <38.000778, 37.416180, 28.471476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832924, 37.292480, 28.352636>,  <37.553165, 37.086315, 28.154570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832924, 37.292480, 28.352636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208177, 0.515859, -0.830994,
		-0.683742, 0.684279, 0.253494,
		0.699399, 0.515414, 0.495166,
		38.042744, 37.447105, 28.501186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517647, 37.610050, 27.761242>,  <37.553165, 37.086315, 28.154570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517647, 37.610050, 27.761242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839893, 37.659870, 27.992922>,  <38.033241, 37.689762, 28.131929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839893, 37.659870, 27.992922>,  <37.517647, 37.610050, 27.761242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839893, 37.659870, 27.992922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503034, 0.372643, -0.779804,
		-0.312957, 0.919579, 0.237555,
		0.805615, 0.124547, 0.579201,
		38.081577, 37.697235, 28.166681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664841, 38.299076, 27.685268>,  <37.517647, 37.610050, 27.761242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664841, 38.299076, 27.685268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993927, 38.102985, 27.800377>,  <38.191380, 37.985332, 27.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993927, 38.102985, 27.800377>,  <37.664841, 38.299076, 27.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993927, 38.102985, 27.800377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484330, 0.339493, -0.806331,
		0.297586, 0.802761, 0.516737,
		0.822720, -0.490224, 0.287773,
		38.240742, 37.955917, 27.886709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134861, 38.760319, 27.752581>,  <37.664841, 38.299076, 27.685268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134861, 38.760319, 27.752581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326096, 38.419495, 27.667334>,  <38.440838, 38.215000, 27.616186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326096, 38.419495, 27.667334>,  <38.134861, 38.760319, 27.752581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326096, 38.419495, 27.667334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400584, 0.427468, -0.810434,
		0.781643, 0.302088, 0.545690,
		0.478087, -0.852064, -0.213116,
		38.469521, 38.163876, 27.603399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733109, 39.007069, 27.425608>,  <38.134861, 38.760319, 27.752581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733109, 39.007069, 27.425608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757610, 38.618862, 27.332367>,  <38.772312, 38.385937, 27.276423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757610, 38.618862, 27.332367>,  <38.733109, 39.007069, 27.425608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757610, 38.618862, 27.332367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404772, 0.237632, -0.883001,
		0.912363, -0.040262, 0.407397,
		0.061259, -0.970521, -0.233103,
		38.775990, 38.327705, 27.262436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378353, 38.981915, 26.963980>,  <38.733109, 39.007069, 27.425608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378353, 38.981915, 26.963980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156425, 38.653732, 26.908794>,  <39.023270, 38.456821, 26.875683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156425, 38.653732, 26.908794>,  <39.378353, 38.981915, 26.963980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156425, 38.653732, 26.908794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206586, 0.024776, -0.978115,
		0.805917, -0.571175, 0.155748,
		-0.554816, -0.820454, -0.137964,
		38.989979, 38.407597, 26.867405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847557, 38.623108, 26.559639>,  <39.378353, 38.981915, 26.963980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847557, 38.623108, 26.559639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473106, 38.495773, 26.499863>,  <39.248436, 38.419373, 26.463997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473106, 38.495773, 26.499863>,  <39.847557, 38.623108, 26.559639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473106, 38.495773, 26.499863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130761, 0.079391, -0.988230,
		0.326457, -0.944647, -0.032694,
		-0.936124, -0.318339, -0.149440,
		39.192268, 38.400272, 26.455030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846821, 38.149090, 26.069174>,  <39.847557, 38.623108, 26.559639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846821, 38.149090, 26.069174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452957, 38.217926, 26.057590>,  <39.216640, 38.259228, 26.050640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452957, 38.217926, 26.057590>,  <39.846821, 38.149090, 26.069174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452957, 38.217926, 26.057590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006302, -0.130766, -0.991393,
		-0.174402, -0.976362, 0.127675,
		-0.984655, 0.172096, -0.028959,
		39.157562, 38.269554, 26.048903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535839, 37.605717, 25.572449>,  <39.846821, 38.149090, 26.069174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535839, 37.605717, 25.572449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286728, 37.916367, 25.610382>,  <39.137260, 38.102757, 25.633142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286728, 37.916367, 25.610382>,  <39.535839, 37.605717, 25.572449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286728, 37.916367, 25.610382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266835, -0.096889, -0.958860,
		-0.735489, -0.622464, 0.267572,
		-0.622781, 0.776628, 0.094834,
		39.099895, 38.149353, 25.638832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924862, 37.461658, 25.209143>,  <39.535839, 37.605717, 25.572449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924862, 37.461658, 25.209143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964504, 37.858803, 25.235710>,  <38.988289, 38.097088, 25.251652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964504, 37.858803, 25.235710>,  <38.924862, 37.461658, 25.209143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964504, 37.858803, 25.235710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265214, 0.090690, -0.959915,
		-0.959082, 0.077521, 0.272308,
		0.099109, 0.992858, 0.066420,
		38.994236, 38.156658, 25.255636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327118, 37.722931, 24.837379>,  <38.924862, 37.461658, 25.209143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327118, 37.722931, 24.837379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580364, 38.032455, 24.845299>,  <38.732311, 38.218170, 24.850050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580364, 38.032455, 24.845299>,  <38.327118, 37.722931, 24.837379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580364, 38.032455, 24.845299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249824, 0.228474, -0.940950,
		-0.732636, 0.590782, 0.337966,
		0.633113, 0.773806, 0.019797,
		38.770298, 38.264599, 24.851238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964996, 38.141155, 24.490690>,  <38.327118, 37.722931, 24.837379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964996, 38.141155, 24.490690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325687, 38.314064, 24.492609>,  <38.542103, 38.417809, 24.493761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325687, 38.314064, 24.492609>,  <37.964996, 38.141155, 24.490690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325687, 38.314064, 24.492609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117745, 0.256270, -0.959407,
		-0.415956, 0.864561, 0.281984,
		0.901730, 0.432273, 0.004799,
		38.596207, 38.443745, 24.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867092, 38.819286, 24.003494>,  <37.964996, 38.141155, 24.490690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867092, 38.819286, 24.003494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255974, 38.732395, 24.038443>,  <38.489304, 38.680260, 24.059412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255974, 38.732395, 24.038443>,  <37.867092, 38.819286, 24.003494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255974, 38.732395, 24.038443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130770, 0.194222, -0.972202,
		0.194222, 0.956603, 0.217230,
		0.972202, -0.217230, 0.087372,
		38.547634, 38.667225, 24.064653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086140, 39.279362, 23.523983>,  <37.867092, 38.819286, 24.003494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086140, 39.279362, 23.523983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380322, 39.022865, 23.611544>,  <38.556831, 38.868969, 23.664080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380322, 39.022865, 23.611544>,  <38.086140, 39.279362, 23.523983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380322, 39.022865, 23.611544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180644, -0.125810, -0.975469,
		0.653051, 0.756956, 0.023309,
		0.735454, -0.641241, 0.218900,
		38.600956, 38.830494, 23.677214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672203, 39.543671, 23.242830>,  <38.086140, 39.279362, 23.523983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672203, 39.543671, 23.242830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697266, 39.147339, 23.290730>,  <38.712303, 38.909542, 23.319469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697266, 39.147339, 23.290730>,  <38.672203, 39.543671, 23.242830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697266, 39.147339, 23.290730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067124, -0.115530, -0.991033,
		0.995775, 0.070137, 0.059269,
		0.062661, -0.990825, 0.119750,
		38.716064, 38.850090, 23.326654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991066, 39.416889, 22.722088>,  <38.672203, 39.543671, 23.242830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991066, 39.416889, 22.722088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887077, 39.045856, 22.829426>,  <38.824684, 38.823238, 22.893829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887077, 39.045856, 22.829426>,  <38.991066, 39.416889, 22.722088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887077, 39.045856, 22.829426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108838, -0.304279, -0.946345,
		0.959462, -0.216818, 0.180060,
		-0.259973, -0.927580, 0.268346,
		38.809086, 38.767582, 22.909929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475063, 38.863388, 22.507120>,  <38.991066, 39.416889, 22.722088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475063, 38.863388, 22.507120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114090, 38.691147, 22.512804>,  <38.897507, 38.587803, 22.516214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114090, 38.691147, 22.512804>,  <39.475063, 38.863388, 22.507120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114090, 38.691147, 22.512804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217257, -0.483306, -0.848065,
		0.372044, -0.762234, 0.529701,
		-0.902431, -0.430599, 0.014210,
		38.843361, 38.561966, 22.517067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577187, 38.266758, 22.229998>,  <39.475063, 38.863388, 22.507120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577187, 38.266758, 22.229998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178005, 38.283451, 22.210629>,  <38.938496, 38.293465, 22.199007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178005, 38.283451, 22.210629>,  <39.577187, 38.266758, 22.229998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178005, 38.283451, 22.210629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023876, -0.459374, -0.887922,
		-0.059295, -0.887262, 0.457439,
		-0.997955, 0.041728, -0.048423,
		38.878620, 38.295971, 22.196102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351353, 37.602734, 22.159367>,  <39.577187, 38.266758, 22.229998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351353, 37.602734, 22.159367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052505, 37.833492, 22.027304>,  <38.873196, 37.971947, 21.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052505, 37.833492, 22.027304>,  <39.351353, 37.602734, 22.159367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052505, 37.833492, 22.027304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047138, -0.541439, -0.839418,
		-0.663019, -0.611580, 0.431712,
		-0.747117, 0.576900, -0.330156,
		38.828369, 38.006561, 21.928257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942753, 37.064758, 21.925344>,  <39.351353, 37.602734, 22.159367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942753, 37.064758, 21.925344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808823, 37.407162, 21.767792>,  <38.728466, 37.612602, 21.673260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808823, 37.407162, 21.767792>,  <38.942753, 37.064758, 21.925344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808823, 37.407162, 21.767792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025105, -0.425966, -0.904391,
		-0.941947, -0.292922, 0.164113,
		-0.334823, 0.856008, -0.393883,
		38.708374, 37.663963, 21.649628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338367, 36.851139, 21.491476>,  <38.942753, 37.064758, 21.925344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338367, 36.851139, 21.491476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501606, 37.189724, 21.354679>,  <38.599548, 37.392876, 21.272600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501606, 37.189724, 21.354679>,  <38.338367, 36.851139, 21.491476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501606, 37.189724, 21.354679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073525, -0.403863, -0.911860,
		-0.909974, 0.346982, -0.227051,
		0.408096, 0.846463, -0.341992,
		38.624035, 37.443665, 21.252081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951092, 36.993149, 20.892191>,  <38.338367, 36.851139, 21.491476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951092, 36.993149, 20.892191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289127, 37.203968, 20.856318>,  <38.491947, 37.330460, 20.834793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289127, 37.203968, 20.856318>,  <37.951092, 36.993149, 20.892191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289127, 37.203968, 20.856318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014619, -0.190473, -0.981584,
		-0.534424, 0.828216, -0.168672,
		0.845090, 0.527047, -0.089685,
		38.542656, 37.362083, 20.829412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857403, 37.300537, 20.254999>,  <37.951092, 36.993149, 20.892191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857403, 37.300537, 20.254999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243114, 37.393394, 20.306028>,  <38.474541, 37.449108, 20.336645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243114, 37.393394, 20.306028>,  <37.857403, 37.300537, 20.254999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243114, 37.393394, 20.306028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157312, -0.114404, -0.980900,
		-0.213112, 0.965931, -0.146836,
		0.964280, 0.232140, 0.127572,
		38.532398, 37.463036, 20.344299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014023, 37.638767, 19.667103>,  <37.857403, 37.300537, 20.254999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014023, 37.638767, 19.667103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372650, 37.543526, 19.816484>,  <38.587826, 37.486382, 19.906113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372650, 37.543526, 19.816484>,  <38.014023, 37.638767, 19.667103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372650, 37.543526, 19.816484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255544, -0.410591, -0.875279,
		0.361740, 0.880184, -0.307279,
		0.896572, -0.238100, 0.373453,
		38.641621, 37.472095, 19.928520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541553, 37.965179, 19.219955>,  <38.014023, 37.638767, 19.667103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541553, 37.965179, 19.219955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670242, 37.637814, 19.410402>,  <38.747456, 37.441395, 19.524672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670242, 37.637814, 19.410402>,  <38.541553, 37.965179, 19.219955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670242, 37.637814, 19.410402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258881, -0.407658, -0.875669,
		0.910756, 0.404979, 0.080720,
		0.321721, -0.818417, 0.476118,
		38.766758, 37.392288, 19.553238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051361, 37.752739, 18.747988>,  <38.541553, 37.965179, 19.219955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051361, 37.752739, 18.747988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008266, 37.433899, 18.985649>,  <38.982410, 37.242596, 19.128246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008266, 37.433899, 18.985649>,  <39.051361, 37.752739, 18.747988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008266, 37.433899, 18.985649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243043, -0.600615, -0.761703,
		0.964014, 0.062343, 0.258437,
		-0.107734, -0.797104, 0.594154,
		38.975945, 37.194767, 19.163895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659355, 37.326210, 18.638414>,  <39.051361, 37.752739, 18.747988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659355, 37.326210, 18.638414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344353, 37.112930, 18.762047>,  <39.155350, 36.984962, 18.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344353, 37.112930, 18.762047>,  <39.659355, 37.326210, 18.638414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344353, 37.112930, 18.762047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027183, -0.470968, -0.881731,
		0.615708, -0.702770, 0.356396,
		-0.787505, -0.533201, 0.309083,
		39.108101, 36.952969, 18.854771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828590, 36.721893, 18.380264>,  <39.659355, 37.326210, 18.638414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828590, 36.721893, 18.380264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435940, 36.702335, 18.454046>,  <39.200352, 36.690601, 18.498316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435940, 36.702335, 18.454046>,  <39.828590, 36.721893, 18.380264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435940, 36.702335, 18.454046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162622, -0.291382, -0.942683,
		0.099840, -0.955357, 0.278076,
		-0.981624, -0.048896, 0.184454,
		39.141453, 36.687668, 18.509382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673256, 36.162296, 18.083006>,  <39.828590, 36.721893, 18.380264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673256, 36.162296, 18.083006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316875, 36.343914, 18.080225>,  <39.103046, 36.452885, 18.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316875, 36.343914, 18.080225>,  <39.673256, 36.162296, 18.083006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316875, 36.343914, 18.080225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170353, -0.348391, -0.921740,
		-0.420940, -0.820038, 0.387747,
		-0.890949, 0.454051, -0.006955,
		39.049591, 36.480129, 18.078138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282234, 35.783222, 17.636990>,  <39.673256, 36.162296, 18.083006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282234, 35.783222, 17.636990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016975, 36.080082, 17.675856>,  <38.857819, 36.258198, 17.699175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016975, 36.080082, 17.675856>,  <39.282234, 35.783222, 17.636990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016975, 36.080082, 17.675856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410285, -0.251858, -0.876490,
		-0.626018, -0.621109, 0.471514,
		-0.663150, 0.742153, 0.097164,
		38.818031, 36.302727, 17.705006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194660, 35.045216, 17.508078>,  <39.282234, 35.783222, 17.636990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194660, 35.045216, 17.508078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351582, 34.677433, 17.497473>,  <39.445736, 34.456764, 17.491110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351582, 34.677433, 17.497473>,  <39.194660, 35.045216, 17.508078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351582, 34.677433, 17.497473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391677, 0.140897, 0.909251,
		-0.832278, -0.367087, 0.415404,
		0.392304, -0.919454, -0.026514,
		39.469273, 34.401596, 17.489519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812744, 34.745754, 18.022520>,  <39.194660, 35.045216, 17.508078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812744, 34.745754, 18.022520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163975, 34.562767, 17.966377>,  <39.374714, 34.452972, 17.932692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163975, 34.562767, 17.966377>,  <38.812744, 34.745754, 18.022520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163975, 34.562767, 17.966377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115603, -0.081831, 0.989919,
		-0.464344, -0.885452, -0.018969,
		0.878078, -0.457471, -0.140359,
		39.427399, 34.425526, 17.924269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760700, 34.043713, 18.205448>,  <38.812744, 34.745754, 18.022520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760700, 34.043713, 18.205448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153816, 34.108688, 18.240646>,  <39.389687, 34.147675, 18.261766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153816, 34.108688, 18.240646>,  <38.760700, 34.043713, 18.205448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153816, 34.108688, 18.240646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077460, -0.070107, 0.994527,
		0.167718, -0.984225, -0.056317,
		0.982787, 0.162438, 0.087997,
		39.448654, 34.157421, 18.267046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026009, 33.605900, 18.694384>,  <38.760700, 34.043713, 18.205448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026009, 33.605900, 18.694384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314167, 33.883083, 18.682735>,  <39.487061, 34.049393, 18.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314167, 33.883083, 18.682735>,  <39.026009, 33.605900, 18.694384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314167, 33.883083, 18.682735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099373, -0.061570, 0.993144,
		0.686411, -0.718347, -0.113216,
		0.720392, 0.692955, -0.029122,
		39.530285, 34.090969, 18.673998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585205, 33.391876, 19.075857>,  <39.026009, 33.605900, 18.694384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585205, 33.391876, 19.075857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627151, 33.789642, 19.080593>,  <39.652321, 34.028301, 19.083435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627151, 33.789642, 19.080593>,  <39.585205, 33.391876, 19.075857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627151, 33.789642, 19.080593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063053, -0.018530, 0.997838,
		0.992485, -0.103894, -0.064644,
		0.104867, 0.994416, 0.011840,
		39.658611, 34.087967, 19.084145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167969, 33.522141, 19.584970>,  <39.585205, 33.391876, 19.075857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167969, 33.522141, 19.584970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938538, 33.847427, 19.545612>,  <39.800880, 34.042599, 19.521997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938538, 33.847427, 19.545612>,  <40.167969, 33.522141, 19.584970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938538, 33.847427, 19.545612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048929, 0.085890, 0.995103,
		0.817690, 0.575581, -0.009475,
		-0.573576, 0.813221, -0.098394,
		39.766464, 34.091393, 19.516094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424625, 34.016754, 20.121120>,  <40.167969, 33.522141, 19.584970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424625, 34.016754, 20.121120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076824, 34.183708, 20.015480>,  <39.868145, 34.283882, 19.952095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076824, 34.183708, 20.015480>,  <40.424625, 34.016754, 20.121120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076824, 34.183708, 20.015480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179498, 0.231117, 0.956224,
		0.460156, 0.878846, -0.126037,
		-0.869504, 0.417389, -0.264101,
		39.815971, 34.308926, 19.936249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391331, 34.671200, 20.425747>,  <40.424625, 34.016754, 20.121120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391331, 34.671200, 20.425747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009418, 34.591248, 20.337706>,  <39.780273, 34.543274, 20.284882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009418, 34.591248, 20.337706>,  <40.391331, 34.671200, 20.425747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009418, 34.591248, 20.337706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277676, 0.334854, 0.900427,
		-0.106278, 0.920826, -0.375214,
		-0.954778, -0.199883, -0.220104,
		39.722984, 34.531284, 20.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118828, 35.235760, 20.711546>,  <40.391331, 34.671200, 20.425747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118828, 35.235760, 20.711546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847393, 34.945736, 20.664539>,  <39.684532, 34.771721, 20.636335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847393, 34.945736, 20.664539>,  <40.118828, 35.235760, 20.711546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847393, 34.945736, 20.664539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339313, 0.167540, 0.925634,
		-0.651447, 0.668000, -0.359711,
		-0.678589, -0.725056, -0.117518,
		39.643818, 34.728218, 20.629284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584743, 35.482521, 21.076818>,  <40.118828, 35.235760, 20.711546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584743, 35.482521, 21.076818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504761, 35.091190, 21.055317>,  <39.456772, 34.856392, 21.042416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504761, 35.091190, 21.055317>,  <39.584743, 35.482521, 21.076818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504761, 35.091190, 21.055317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191637, -0.014754, 0.981355,
		-0.960881, 0.206532, -0.184534,
		-0.199958, -0.978329, -0.053756,
		39.444775, 34.797691, 21.039190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945709, 35.471931, 21.450403>,  <39.584743, 35.482521, 21.076818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945709, 35.471931, 21.450403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135178, 35.119755, 21.441778>,  <39.248859, 34.908451, 21.436604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135178, 35.119755, 21.441778>,  <38.945709, 35.471931, 21.450403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135178, 35.119755, 21.441778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239406, -0.152285, 0.958903,
		-0.847539, -0.449040, -0.282915,
		0.473669, -0.880439, -0.021565,
		39.277279, 34.855621, 21.435308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425243, 34.963821, 21.578794>,  <38.945709, 35.471931, 21.450403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425243, 34.963821, 21.578794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786087, 34.803867, 21.643652>,  <39.002594, 34.707893, 21.682566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786087, 34.803867, 21.643652>,  <38.425243, 34.963821, 21.578794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786087, 34.803867, 21.643652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249952, -0.177954, 0.951765,
		-0.351748, -0.899122, -0.260487,
		0.902107, -0.399890, 0.162142,
		39.056721, 34.683899, 21.692295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217384, 34.388935, 22.088245>,  <38.425243, 34.963821, 21.578794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217384, 34.388935, 22.088245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608635, 34.469494, 22.109030>,  <38.843388, 34.517830, 22.121500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608635, 34.469494, 22.109030>,  <38.217384, 34.388935, 22.088245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608635, 34.469494, 22.109030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050148, -0.014092, 0.998642,
		0.201854, -0.979409, -0.003684,
		0.978131, 0.201395, 0.051960,
		38.902073, 34.529911, 22.124619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453712, 33.934250, 22.625074>,  <38.217384, 34.388935, 22.088245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453712, 33.934250, 22.625074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744141, 34.206295, 22.584541>,  <38.918396, 34.369522, 22.560223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744141, 34.206295, 22.584541>,  <38.453712, 33.934250, 22.625074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744141, 34.206295, 22.584541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117443, 0.022545, 0.992824,
		0.677518, -0.732760, -0.063505,
		0.726070, 0.680114, -0.101332,
		38.961960, 34.410328, 22.554142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947632, 33.719055, 23.189659>,  <38.453712, 33.934250, 22.625074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947632, 33.719055, 23.189659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026722, 34.093193, 23.072330>,  <39.074177, 34.317677, 23.001932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026722, 34.093193, 23.072330>,  <38.947632, 33.719055, 23.189659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026722, 34.093193, 23.072330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005077, 0.300203, 0.953862,
		0.980245, -0.187113, 0.064107,
		0.197725, 0.935343, -0.293322,
		39.086040, 34.373795, 22.984333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614208, 33.926682, 23.560358>,  <38.947632, 33.719055, 23.189659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614208, 33.926682, 23.560358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429447, 34.256870, 23.430595>,  <39.318592, 34.454983, 23.352737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429447, 34.256870, 23.430595>,  <39.614208, 33.926682, 23.560358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429447, 34.256870, 23.430595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134255, 0.426624, 0.894409,
		0.876710, 0.369578, -0.307883,
		-0.461904, 0.825472, -0.324408,
		39.290874, 34.504513, 23.333273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017517, 34.428616, 23.897444>,  <39.614208, 33.926682, 23.560358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017517, 34.428616, 23.897444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668800, 34.602436, 23.806984>,  <39.459572, 34.706730, 23.752708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668800, 34.602436, 23.806984>,  <40.017517, 34.428616, 23.897444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668800, 34.602436, 23.806984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068141, 0.349589, 0.934422,
		0.485118, 0.830029, -0.275158,
		-0.871790, 0.434555, -0.226151,
		39.407265, 34.732803, 23.739140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146187, 35.064846, 24.098186>,  <40.017517, 34.428616, 23.897444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146187, 35.064846, 24.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747627, 35.034161, 24.083729>,  <39.508492, 35.015751, 24.075054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747627, 35.034161, 24.083729>,  <40.146187, 35.064846, 24.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747627, 35.034161, 24.083729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052207, 0.219042, 0.974318,
		-0.066824, 0.972695, -0.222258,
		-0.996398, -0.076711, -0.036144,
		39.448708, 35.011147, 24.072886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954880, 35.541119, 24.390236>,  <40.146187, 35.064846, 24.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954880, 35.541119, 24.390236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617020, 35.327374, 24.403025>,  <39.414303, 35.199127, 24.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617020, 35.327374, 24.403025>,  <39.954880, 35.541119, 24.390236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617020, 35.327374, 24.403025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114359, 0.238467, 0.964394,
		-0.522958, 0.810921, -0.262531,
		-0.844652, -0.534360, 0.031972,
		39.363625, 35.167065, 24.412617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393787, 36.037491, 24.797525>,  <39.954880, 35.541119, 24.390236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393787, 36.037491, 24.797525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224865, 35.674976, 24.804502>,  <39.123512, 35.457466, 24.808689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224865, 35.674976, 24.804502>,  <39.393787, 36.037491, 24.797525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224865, 35.674976, 24.804502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301899, 0.158770, 0.940026,
		-0.854702, 0.391710, -0.340656,
		-0.422304, -0.906286, 0.017445,
		39.098175, 35.403091, 24.809736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765686, 36.080112, 25.144476>,  <39.393787, 36.037491, 24.797525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765686, 36.080112, 25.144476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862644, 35.693253, 25.175104>,  <38.920818, 35.461136, 25.193481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862644, 35.693253, 25.175104>,  <38.765686, 36.080112, 25.144476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862644, 35.693253, 25.175104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120511, 0.048296, 0.991536,
		-0.962664, -0.249571, -0.104846,
		0.242395, -0.967151, 0.076569,
		38.935364, 35.403107, 25.198074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239986, 35.873142, 25.644501>,  <38.765686, 36.080112, 25.144476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239986, 35.873142, 25.644501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519596, 35.587341, 25.632763>,  <38.687363, 35.415863, 25.625721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519596, 35.587341, 25.632763>,  <38.239986, 35.873142, 25.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519596, 35.587341, 25.632763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015181, -0.026197, 0.999542,
		-0.714939, -0.699147, -0.007465,
		0.699022, -0.714498, -0.029343,
		38.729301, 35.372993, 25.623960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065708, 35.427525, 26.270756>,  <38.239986, 35.873142, 25.644501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065708, 35.427525, 26.270756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446053, 35.364029, 26.164423>,  <38.674259, 35.325932, 26.100622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446053, 35.364029, 26.164423>,  <38.065708, 35.427525, 26.270756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446053, 35.364029, 26.164423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268980, -0.001727, 0.963144,
		-0.153350, -0.987319, 0.041056,
		0.950859, -0.158741, -0.265833,
		38.731312, 35.316406, 26.084673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261665, 34.839737, 26.735432>,  <38.065708, 35.427525, 26.270756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261665, 34.839737, 26.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594833, 35.027454, 26.618124>,  <38.794735, 35.140083, 26.547739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594833, 35.027454, 26.618124>,  <38.261665, 34.839737, 26.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594833, 35.027454, 26.618124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337945, -0.011700, 0.941093,
		0.438217, -0.882965, -0.168340,
		0.832922, 0.469293, -0.293267,
		38.844711, 35.168243, 26.530144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864799, 34.507301, 26.990211>,  <38.261665, 34.839737, 26.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864799, 34.507301, 26.990211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976810, 34.886467, 26.929493>,  <39.044018, 35.113968, 26.893063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976810, 34.886467, 26.929493>,  <38.864799, 34.507301, 26.990211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976810, 34.886467, 26.929493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415127, 0.023005, 0.909473,
		0.865595, -0.317692, -0.387063,
		0.280028, 0.947915, -0.151795,
		39.060818, 35.170841, 26.883955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526405, 34.522869, 27.269732>,  <38.864799, 34.507301, 26.990211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526405, 34.522869, 27.269732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422394, 34.906834, 27.227879>,  <39.359985, 35.137215, 27.202766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422394, 34.906834, 27.227879>,  <39.526405, 34.522869, 27.269732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422394, 34.906834, 27.227879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454641, 0.217310, 0.863758,
		0.851872, 0.177032, -0.492924,
		-0.260030, 0.959915, -0.104634,
		39.344383, 35.194809, 27.196487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113914, 34.842731, 27.419600>,  <39.526405, 34.522869, 27.269732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113914, 34.842731, 27.419600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812866, 35.101494, 27.468706>,  <39.632236, 35.256752, 27.498171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812866, 35.101494, 27.468706>,  <40.113914, 34.842731, 27.419600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812866, 35.101494, 27.468706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393865, 0.292891, 0.871255,
		0.527662, 0.704081, -0.475230,
		-0.752624, 0.646904, 0.122766,
		39.587078, 35.295567, 27.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577381, 35.400925, 27.593319>,  <40.113914, 34.842731, 27.419600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577381, 35.400925, 27.593319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200325, 35.448372, 27.718130>,  <39.974091, 35.476841, 27.793016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200325, 35.448372, 27.718130>,  <40.577381, 35.400925, 27.593319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200325, 35.448372, 27.718130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298073, -0.121705, 0.946752,
		0.150278, 0.985453, 0.079367,
		-0.942639, 0.118619, 0.312027,
		39.917534, 35.483959, 27.811739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748905, 35.694351, 28.183460>,  <40.577381, 35.400925, 27.593319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748905, 35.694351, 28.183460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361698, 35.603001, 28.224998>,  <40.129372, 35.548191, 28.249922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361698, 35.603001, 28.224998>,  <40.748905, 35.694351, 28.183460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361698, 35.603001, 28.224998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, -0.134673, 0.981367,
		-0.210133, 0.964214, 0.161664,
		-0.968020, -0.228373, 0.103844,
		40.071293, 35.534489, 28.256151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545177, 36.156528, 28.725000>,  <40.748905, 35.694351, 28.183460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545177, 36.156528, 28.725000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307339, 35.835808, 28.701111>,  <40.164635, 35.643375, 28.686777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307339, 35.835808, 28.701111>,  <40.545177, 36.156528, 28.725000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307339, 35.835808, 28.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305689, -0.294144, 0.905557,
		-0.743645, 0.520186, 0.420000,
		-0.594598, -0.801802, -0.059723,
		40.128960, 35.595268, 28.683193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120811, 36.192108, 29.320885>,  <40.545177, 36.156528, 28.725000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120811, 36.192108, 29.320885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073036, 35.808208, 29.219212>,  <40.044373, 35.577869, 29.158207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073036, 35.808208, 29.219212>,  <40.120811, 36.192108, 29.320885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073036, 35.808208, 29.219212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307296, -0.279179, 0.909741,
		-0.944089, 0.030550, 0.328273,
		-0.119439, -0.959753, -0.254182,
		40.037205, 35.520283, 29.142958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714935, 35.867393, 29.808455>,  <40.120811, 36.192108, 29.320885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714935, 35.867393, 29.808455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891266, 35.549580, 29.641418>,  <39.997063, 35.358891, 29.541197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891266, 35.549580, 29.641418>,  <39.714935, 35.867393, 29.808455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891266, 35.549580, 29.641418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305793, -0.304467, 0.902104,
		-0.843899, -0.525365, 0.108748,
		0.440824, -0.794539, -0.417592,
		40.023514, 35.311218, 29.516140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469105, 35.263252, 30.228056>,  <39.714935, 35.867393, 29.808455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469105, 35.263252, 30.228056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813076, 35.185005, 30.039480>,  <40.019459, 35.138058, 29.926334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813076, 35.185005, 30.039480>,  <39.469105, 35.263252, 30.228056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813076, 35.185005, 30.039480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329094, -0.493522, 0.805068,
		-0.390152, -0.847449, -0.360017,
		0.859930, -0.195619, -0.471438,
		40.071056, 35.126320, 29.898048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510731, 34.605862, 30.380760>,  <39.469105, 35.263252, 30.228056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510731, 34.605862, 30.380760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871716, 34.748745, 30.284456>,  <40.088306, 34.834473, 30.226673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871716, 34.748745, 30.284456>,  <39.510731, 34.605862, 30.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871716, 34.748745, 30.284456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412696, -0.556772, 0.720893,
		0.123459, -0.749940, -0.649883,
		0.902463, 0.357205, -0.240759,
		40.142456, 34.855907, 30.212229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970711, 34.005077, 30.578676>,  <39.510731, 34.605862, 30.380760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970711, 34.005077, 30.578676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189846, 34.339607, 30.587065>,  <40.321327, 34.540325, 30.592098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189846, 34.339607, 30.587065>,  <39.970711, 34.005077, 30.578676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189846, 34.339607, 30.587065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479442, -0.334405, 0.811363,
		0.685574, -0.434438, -0.584167,
		0.547835, 0.836323, 0.020972,
		40.354198, 34.590504, 30.593357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632923, 33.750393, 30.521124>,  <39.970711, 34.005077, 30.578676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632923, 33.750393, 30.521124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667625, 34.112858, 30.686695>,  <40.688446, 34.330338, 30.786037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667625, 34.112858, 30.686695>,  <40.632923, 33.750393, 30.521124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667625, 34.112858, 30.686695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576407, -0.384542, 0.721028,
		0.812544, 0.176040, -0.555681,
		0.086753, 0.906166, 0.413928,
		40.693653, 34.384708, 30.810873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301495, 33.779755, 30.773422>,  <40.632923, 33.750393, 30.521124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301495, 33.779755, 30.773422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109707, 34.070747, 30.969742>,  <40.994637, 34.245342, 31.087534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109707, 34.070747, 30.969742>,  <41.301495, 33.779755, 30.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109707, 34.070747, 30.969742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479601, -0.251142, 0.840780,
		0.734912, 0.638512, -0.228487,
		-0.479465, 0.727482, 0.490799,
		40.965866, 34.288994, 31.116982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833282, 34.081936, 30.998505>,  <41.301495, 33.779755, 30.773422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833282, 34.081936, 30.998505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549599, 34.211319, 31.249071>,  <41.379387, 34.288948, 31.399410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549599, 34.211319, 31.249071>,  <41.833282, 34.081936, 30.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549599, 34.211319, 31.249071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610856, -0.161647, 0.775064,
		0.351957, 0.932334, -0.082943,
		-0.709211, 0.323455, 0.626415,
		41.336834, 34.308357, 31.436996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141956, 34.596191, 31.479183>,  <41.833282, 34.081936, 30.998505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141956, 34.596191, 31.479183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819740, 34.440426, 31.657829>,  <41.626411, 34.346966, 31.765017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819740, 34.440426, 31.657829>,  <42.141956, 34.596191, 31.479183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819740, 34.440426, 31.657829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486859, -0.005345, 0.873464,
		-0.337752, 0.921048, 0.193895,
		-0.805538, -0.389414, 0.446615,
		41.578079, 34.323601, 31.791813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924316, 34.940277, 32.087666>,  <42.141956, 34.596191, 31.479183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924316, 34.940277, 32.087666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729813, 34.604832, 32.185875>,  <41.613110, 34.403564, 32.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729813, 34.604832, 32.185875>,  <41.924316, 34.940277, 32.087666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729813, 34.604832, 32.185875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349674, 0.070757, 0.934196,
		-0.800798, 0.540118, 0.258834,
		-0.486262, -0.838610, 0.245527,
		41.583935, 34.353249, 32.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124760, 34.546108, 32.766159>,  <41.924316, 34.940277, 32.087666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124760, 34.546108, 32.766159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445301, 34.679520, 32.964794>,  <42.637627, 34.759567, 33.083977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445301, 34.679520, 32.964794>,  <42.124760, 34.546108, 32.766159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445301, 34.679520, 32.964794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567078, 0.687817, 0.453133,
		-0.190428, -0.644721, 0.740319,
		0.801349, 0.333529, 0.496587,
		42.685707, 34.779579, 33.113770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009708, 34.517498, 33.468094>,  <42.124760, 34.546108, 32.766159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009708, 34.517498, 33.468094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282925, 34.807278, 33.430920>,  <42.446854, 34.981144, 33.408615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282925, 34.807278, 33.430920>,  <42.009708, 34.517498, 33.468094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282925, 34.807278, 33.430920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599127, 0.628509, 0.496007,
		0.417741, -0.283111, 0.863331,
		0.683037, 0.724447, -0.092935,
		42.487835, 35.024612, 33.403038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162342, 34.772537, 34.099358>,  <42.009708, 34.517498, 33.468094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162342, 34.772537, 34.099358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224827, 35.052044, 33.820126>,  <42.262318, 35.219749, 33.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224827, 35.052044, 33.820126>,  <42.162342, 34.772537, 34.099358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224827, 35.052044, 33.820126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554025, 0.647099, 0.523755,
		0.817713, 0.304939, 0.488220,
		0.156214, 0.698767, -0.698085,
		42.271690, 35.261673, 33.610699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296192, 35.398476, 34.475433>,  <42.162342, 34.772537, 34.099358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296192, 35.398476, 34.475433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209763, 35.541767, 34.112118>,  <42.157906, 35.627743, 33.894131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209763, 35.541767, 34.112118>,  <42.296192, 35.398476, 34.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209763, 35.541767, 34.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505104, 0.755097, 0.417970,
		0.835572, 0.549093, 0.017780,
		-0.216079, 0.358225, -0.908287,
		42.144939, 35.649235, 33.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268368, 36.081047, 34.574085>,  <42.296192, 35.398476, 34.475433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268368, 36.081047, 34.574085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089771, 36.050674, 34.217461>,  <41.982613, 36.032452, 34.003487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089771, 36.050674, 34.217461>,  <42.268368, 36.081047, 34.574085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089771, 36.050674, 34.217461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629218, 0.735068, 0.252508,
		0.636183, 0.673728, -0.375980,
		-0.446493, -0.075932, -0.891560,
		41.955822, 36.027893, 33.949993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166676, 36.790836, 34.312160>,  <42.268368, 36.081047, 34.574085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166676, 36.790836, 34.312160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938702, 36.545017, 34.093983>,  <41.801918, 36.397526, 33.963074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938702, 36.545017, 34.093983>,  <42.166676, 36.790836, 34.312160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938702, 36.545017, 34.093983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773895, 0.624556, 0.104959,
		0.276160, 0.481938, -0.831547,
		-0.569932, -0.614545, -0.545447,
		41.767723, 36.360653, 33.930347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749371, 37.209873, 33.845356>,  <42.166676, 36.790836, 34.312160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749371, 37.209873, 33.845356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548260, 36.866570, 33.886543>,  <41.427593, 36.660587, 33.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548260, 36.866570, 33.886543>,  <41.749371, 37.209873, 33.845356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548260, 36.866570, 33.886543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840269, 0.513213, 0.174813,
		-0.202881, 0.001368, -0.979202,
		-0.502779, -0.858260, 0.102972,
		41.397427, 36.609093, 33.917435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228008, 37.197124, 33.334244>,  <41.749371, 37.209873, 33.845356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228008, 37.197124, 33.334244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114979, 36.962486, 33.637836>,  <41.047161, 36.821701, 33.819992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114979, 36.962486, 33.637836>,  <41.228008, 37.197124, 33.334244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114979, 36.962486, 33.637836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896428, 0.443104, 0.008717,
		-0.341422, -0.677910, -0.651053,
		-0.282575, -0.586598, 0.758982,
		41.030205, 36.786507, 33.865532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554752, 36.816360, 33.177834>,  <41.228008, 37.197124, 33.334244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554752, 36.816360, 33.177834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595928, 36.850330, 33.574257>,  <40.620632, 36.870712, 33.812111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595928, 36.850330, 33.574257>,  <40.554752, 36.816360, 33.177834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595928, 36.850330, 33.574257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879506, 0.473169, 0.050804,
		-0.464622, -0.876869, 0.123402,
		0.102938, 0.084928, 0.991055,
		40.626808, 36.875809, 33.871574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897461, 36.769791, 33.457958>,  <40.554752, 36.816360, 33.177834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897461, 36.769791, 33.457958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103210, 36.959145, 33.743988>,  <40.226662, 37.072758, 33.915604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103210, 36.959145, 33.743988>,  <39.897461, 36.769791, 33.457958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103210, 36.959145, 33.743988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771203, 0.620021, 0.144291,
		-0.375055, -0.625685, 0.683998,
		0.514374, 0.473384, 0.715071,
		40.257523, 37.101158, 33.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437923, 37.247414, 33.566845>,  <39.897461, 36.769791, 33.457958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437923, 37.247414, 33.566845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746845, 37.366440, 33.791344>,  <39.932198, 37.437855, 33.926044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746845, 37.366440, 33.791344>,  <39.437923, 37.247414, 33.566845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746845, 37.366440, 33.791344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513835, 0.812113, 0.276488,
		-0.373525, -0.501923, 0.780098,
		0.772304, 0.297567, 0.561250,
		39.978535, 37.455711, 33.959717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282555, 37.336662, 34.371063>,  <39.437923, 37.247414, 33.566845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282555, 37.336662, 34.371063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620377, 37.545589, 34.323875>,  <39.823071, 37.670944, 34.295563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620377, 37.545589, 34.323875>,  <39.282555, 37.336662, 34.371063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620377, 37.545589, 34.323875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402914, 0.764975, 0.502467,
		0.352685, -0.376831, 0.856511,
		0.844555, 0.522313, -0.117965,
		39.873745, 37.702282, 34.288486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546822, 37.497913, 35.018600>,  <39.282555, 37.336662, 34.371063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546822, 37.497913, 35.018600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734200, 37.766708, 34.789169>,  <39.846626, 37.927986, 34.651508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734200, 37.766708, 34.789169>,  <39.546822, 37.497913, 35.018600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734200, 37.766708, 34.789169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173190, 0.706470, 0.686226,
		0.866352, -0.222119, 0.447323,
		0.468444, 0.671985, -0.573583,
		39.874733, 37.968304, 34.617096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949909, 37.801460, 35.453465>,  <39.546822, 37.497913, 35.018600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949909, 37.801460, 35.453465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887138, 38.052765, 35.148659>,  <39.849476, 38.203548, 34.965775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887138, 38.052765, 35.148659>,  <39.949909, 37.801460, 35.453465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887138, 38.052765, 35.148659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400082, 0.664987, 0.630656,
		0.902944, 0.403834, 0.147002,
		-0.156926, 0.628260, -0.762013,
		39.840061, 38.241241, 34.920055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142960, 38.497112, 35.636799>,  <39.949909, 37.801460, 35.453465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142960, 38.497112, 35.636799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877907, 38.596783, 35.354286>,  <39.718876, 38.656586, 35.184780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877907, 38.596783, 35.354286>,  <40.142960, 38.497112, 35.636799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877907, 38.596783, 35.354286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447371, 0.624613, 0.640092,
		0.600646, 0.740115, -0.302415,
		-0.662634, 0.249177, -0.706277,
		39.679115, 38.671535, 35.142403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084419, 39.252869, 35.527500>,  <40.142960, 38.497112, 35.636799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084419, 39.252869, 35.527500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720123, 39.107105, 35.449776>,  <39.501545, 39.019650, 35.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720123, 39.107105, 35.449776>,  <40.084419, 39.252869, 35.527500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720123, 39.107105, 35.449776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344075, 0.409337, 0.845018,
		-0.228390, 0.836452, -0.498184,
		-0.910741, -0.364407, -0.194314,
		39.446899, 38.997784, 35.391483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614681, 39.770248, 35.528145>,  <40.084419, 39.252869, 35.527500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614681, 39.770248, 35.528145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387924, 39.451256, 35.610756>,  <39.251869, 39.259861, 35.660320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387924, 39.451256, 35.610756>,  <39.614681, 39.770248, 35.528145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387924, 39.451256, 35.610756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439415, 0.504785, 0.743039,
		-0.696810, 0.330476, -0.636586,
		-0.566896, -0.797482, 0.206523,
		39.217857, 39.212009, 35.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926468, 40.056023, 35.627205>,  <39.614681, 39.770248, 35.528145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926468, 40.056023, 35.627205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942680, 39.697876, 35.804596>,  <38.952408, 39.482986, 35.911030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942680, 39.697876, 35.804596>,  <38.926468, 40.056023, 35.627205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942680, 39.697876, 35.804596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538129, 0.354413, 0.764728,
		-0.841887, -0.269641, -0.467461,
		0.040528, -0.895369, 0.443478,
		38.954838, 39.429264, 35.937637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244606, 39.854279, 35.691311>,  <38.926468, 40.056023, 35.627205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244606, 39.854279, 35.691311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430809, 39.650974, 35.981133>,  <38.542530, 39.528992, 36.155025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430809, 39.650974, 35.981133>,  <38.244606, 39.854279, 35.691311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430809, 39.650974, 35.981133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667204, 0.336360, 0.664605,
		-0.581502, -0.792803, -0.182534,
		0.465504, -0.508257, 0.724556,
		38.570461, 39.498497, 36.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747322, 39.526913, 36.123013>,  <38.244606, 39.854279, 35.691311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747322, 39.526913, 36.123013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068913, 39.544754, 36.360207>,  <38.261868, 39.555458, 36.502522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068913, 39.544754, 36.360207>,  <37.747322, 39.526913, 36.123013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068913, 39.544754, 36.360207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565294, 0.366809, 0.738846,
		-0.184559, -0.929227, 0.320119,
		0.803978, 0.044600, 0.592984,
		38.310104, 39.558136, 36.538101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408215, 39.159492, 36.675747>,  <37.747322, 39.526913, 36.123013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408215, 39.159492, 36.675747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708679, 39.395481, 36.794205>,  <37.888958, 39.537075, 36.865280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708679, 39.395481, 36.794205>,  <37.408215, 39.159492, 36.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708679, 39.395481, 36.794205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628772, 0.502828, 0.593136,
		0.201021, -0.631747, 0.748657,
		0.751157, 0.589967, 0.296146,
		37.934025, 39.572472, 36.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081104, 39.573051, 37.199978>,  <37.408215, 39.159492, 36.675747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081104, 39.573051, 37.199978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341503, 39.734695, 37.457005>,  <37.497742, 39.831680, 37.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341503, 39.734695, 37.457005>,  <37.081104, 39.573051, 37.199978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341503, 39.734695, 37.457005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757910, -0.393011, -0.520686,
		0.042123, 0.825977, -0.562128,
		0.650997, 0.404110, 0.642571,
		37.536804, 39.855930, 37.649776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628963, 40.099113, 36.998154>,  <37.081104, 39.573051, 37.199978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628963, 40.099113, 36.998154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789036, 39.921814, 37.319000>,  <37.885078, 39.815434, 37.511509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789036, 39.921814, 37.319000>,  <37.628963, 40.099113, 36.998154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789036, 39.921814, 37.319000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766204, -0.318363, -0.558190,
		0.502779, 0.837961, 0.212213,
		0.400181, -0.443245, 0.802115,
		37.909088, 39.788841, 37.559635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279709, 40.352100, 37.126587>,  <37.628963, 40.099113, 36.998154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279709, 40.352100, 37.126587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238983, 39.979012, 37.264957>,  <38.214546, 39.755157, 37.347980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238983, 39.979012, 37.264957>,  <38.279709, 40.352100, 37.126587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238983, 39.979012, 37.264957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581047, -0.338014, -0.740359,
		0.807476, 0.125621, 0.576369,
		-0.101816, -0.932720, 0.345930,
		38.208439, 39.699196, 37.368736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939209, 40.061749, 37.194504>,  <38.279709, 40.352100, 37.126587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939209, 40.061749, 37.194504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698437, 39.744728, 37.155430>,  <38.553974, 39.554516, 37.131985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698437, 39.744728, 37.155430>,  <38.939209, 40.061749, 37.194504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698437, 39.744728, 37.155430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566346, -0.337456, -0.751915,
		0.562962, -0.507929, 0.651983,
		-0.601935, -0.792547, -0.097688,
		38.517857, 39.506966, 37.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307594, 39.440849, 37.160217>,  <38.939209, 40.061749, 37.194504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307594, 39.440849, 37.160217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960220, 39.383598, 36.970341>,  <38.751797, 39.349247, 36.856415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960220, 39.383598, 36.970341>,  <39.307594, 39.440849, 37.160217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960220, 39.383598, 36.970341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484510, -0.448152, -0.751272,
		-0.105212, -0.882426, 0.458535,
		-0.868436, -0.143122, -0.474695,
		38.699688, 39.340660, 36.827930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201122, 38.650875, 37.031364>,  <39.307594, 39.440849, 37.160217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201122, 38.650875, 37.031364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007744, 38.882042, 36.768372>,  <38.891716, 39.020741, 36.610577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007744, 38.882042, 36.768372>,  <39.201122, 38.650875, 37.031364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007744, 38.882042, 36.768372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418196, -0.507357, -0.753459,
		-0.769018, -0.639217, 0.003599,
		-0.483450, 0.577919, -0.657485,
		38.862709, 39.055416, 36.571125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965942, 38.239910, 36.556335>,  <39.201122, 38.650875, 37.031364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965942, 38.239910, 36.556335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946842, 38.592587, 36.368572>,  <38.935383, 38.804192, 36.255913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946842, 38.592587, 36.368572>,  <38.965942, 38.239910, 36.556335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946842, 38.592587, 36.368572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333325, -0.428942, -0.839585,
		-0.941602, -0.196561, -0.273404,
		-0.047755, 0.881688, -0.469411,
		38.932514, 38.857094, 36.227749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583702, 38.153545, 36.000664>,  <38.965942, 38.239910, 36.556335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583702, 38.153545, 36.000664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788540, 38.483219, 35.903938>,  <38.911442, 38.681023, 35.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788540, 38.483219, 35.903938>,  <38.583702, 38.153545, 36.000664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788540, 38.483219, 35.903938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168148, -0.372282, -0.912761,
		-0.842307, 0.426762, -0.329230,
		0.512098, 0.824185, -0.241816,
		38.942169, 38.730476, 35.831394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524902, 38.116459, 35.284576>,  <38.583702, 38.153545, 36.000664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524902, 38.116459, 35.284576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792576, 38.411785, 35.318233>,  <38.953182, 38.588982, 35.338428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792576, 38.411785, 35.318233>,  <38.524902, 38.116459, 35.284576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792576, 38.411785, 35.318233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352226, -0.215445, -0.910780,
		-0.654314, 0.639120, -0.404226,
		0.669186, 0.738315, 0.084146,
		38.993332, 38.633278, 35.343475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605938, 38.525253, 34.691189>,  <38.524902, 38.116459, 35.284576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605938, 38.525253, 34.691189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927986, 38.660610, 34.886032>,  <39.121216, 38.741825, 35.002937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927986, 38.660610, 34.886032>,  <38.605938, 38.525253, 34.691189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927986, 38.660610, 34.886032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585459, -0.321927, -0.744044,
		-0.094966, 0.884225, -0.457304,
		0.805121, 0.338391, 0.487106,
		39.169521, 38.762127, 35.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997723, 39.049267, 34.276863>,  <38.605938, 38.525253, 34.691189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997723, 39.049267, 34.276863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231041, 38.828632, 34.515366>,  <39.371033, 38.696251, 34.658466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231041, 38.828632, 34.515366>,  <38.997723, 39.049267, 34.276863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231041, 38.828632, 34.515366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586313, -0.222106, -0.779042,
		0.562141, 0.804002, 0.193849,
		0.583296, -0.551588, 0.596252,
		39.406029, 38.663155, 34.694241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691792, 39.208664, 34.025528>,  <38.997723, 39.049267, 34.276863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691792, 39.208664, 34.025528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720779, 38.896400, 34.273827>,  <39.738171, 38.709042, 34.422806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720779, 38.896400, 34.273827>,  <39.691792, 39.208664, 34.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720779, 38.896400, 34.273827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673504, -0.420744, -0.607756,
		0.735623, 0.462115, 0.495286,
		0.072465, -0.780656, 0.620745,
		39.742519, 38.662205, 34.460049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236286, 38.761200, 33.737011>,  <39.691792, 39.208664, 34.025528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236286, 38.761200, 33.737011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141064, 38.515705, 34.038116>,  <40.083931, 38.368408, 34.218781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141064, 38.515705, 34.038116>,  <40.236286, 38.761200, 33.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141064, 38.515705, 34.038116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571924, -0.715004, -0.402085,
		0.785006, 0.334808, 0.521219,
		-0.238052, -0.613737, 0.752768,
		40.069649, 38.331585, 34.263947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891556, 38.493782, 34.021957>,  <40.236286, 38.761200, 33.737011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891556, 38.493782, 34.021957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607204, 38.222492, 34.096420>,  <40.436592, 38.059719, 34.141098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607204, 38.222492, 34.096420>,  <40.891556, 38.493782, 34.021957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607204, 38.222492, 34.096420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596555, -0.721666, -0.351171,
		0.372518, -0.138586, 0.917619,
		-0.710881, -0.678227, 0.186159,
		40.393940, 38.019024, 34.152267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113018, 37.893650, 34.377655>,  <40.891556, 38.493782, 34.021957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113018, 37.893650, 34.377655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778900, 37.753136, 34.208477>,  <40.578430, 37.668827, 34.106968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778900, 37.753136, 34.208477>,  <41.113018, 37.893650, 34.377655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778900, 37.753136, 34.208477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488870, -0.826546, -0.278976,
		-0.251584, -0.439792, 0.862142,
		-0.835292, -0.351289, -0.422947,
		40.528313, 37.647751, 34.081593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978054, 37.197315, 34.651726>,  <41.113018, 37.893650, 34.377655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978054, 37.197315, 34.651726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802280, 37.246109, 34.295746>,  <40.696815, 37.275383, 34.082157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802280, 37.246109, 34.295746>,  <40.978054, 37.197315, 34.651726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802280, 37.246109, 34.295746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396250, -0.862810, -0.313918,
		-0.806154, -0.490591, 0.330812,
		-0.439434, 0.121982, -0.889954,
		40.670452, 37.282703, 34.028759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799683, 36.480007, 34.930748>,  <40.978054, 37.197315, 34.651726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799683, 36.480007, 34.930748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628090, 36.517704, 34.571396>,  <40.525135, 36.540321, 34.355785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628090, 36.517704, 34.571396>,  <40.799683, 36.480007, 34.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628090, 36.517704, 34.571396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730710, -0.548498, -0.406463,
		-0.531068, -0.830823, 0.166431,
		-0.428986, 0.094247, -0.898381,
		40.499393, 36.545979, 34.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721569, 35.841999, 34.700359>,  <40.799683, 36.480007, 34.930748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721569, 35.841999, 34.700359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783009, 36.114807, 34.414352>,  <40.819870, 36.278492, 34.242748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783009, 36.114807, 34.414352>,  <40.721569, 35.841999, 34.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783009, 36.114807, 34.414352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747396, -0.553528, -0.367432,
		-0.646381, -0.477967, -0.594760,
		0.153596, 0.682022, -0.715020,
		40.829086, 36.319412, 34.199848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785259, 35.487114, 34.060600>,  <40.721569, 35.841999, 34.700359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785259, 35.487114, 34.060600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971394, 35.838551, 34.017632>,  <41.083076, 36.049412, 33.991852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971394, 35.838551, 34.017632>,  <40.785259, 35.487114, 34.060600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971394, 35.838551, 34.017632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785513, -0.465849, -0.407374,
		-0.407956, 0.105188, -0.906922,
		0.465339, 0.878590, -0.107419,
		41.110996, 36.102127, 33.985405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876625, 35.606556, 33.314873>,  <40.785259, 35.487114, 34.060600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876625, 35.606556, 33.314873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145100, 35.815147, 33.525612>,  <41.306183, 35.940304, 33.652054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145100, 35.815147, 33.525612>,  <40.876625, 35.606556, 33.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145100, 35.815147, 33.525612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740121, -0.431564, -0.515726,
		-0.041572, 0.736080, -0.675617,
		0.671187, 0.521478, 0.526847,
		41.346455, 35.971592, 33.683666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421944, 35.741333, 32.814651>,  <40.876625, 35.606556, 33.314873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421944, 35.741333, 32.814651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593170, 35.814903, 33.168587>,  <41.695904, 35.859047, 33.380947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593170, 35.814903, 33.168587>,  <41.421944, 35.741333, 32.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593170, 35.814903, 33.168587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890100, -0.255319, -0.377538,
		0.156474, 0.949201, -0.273009,
		0.428064, 0.183930, 0.884834,
		41.721588, 35.870083, 33.434036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034885, 36.185886, 32.702358>,  <41.421944, 35.741333, 32.814651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034885, 36.185886, 32.702358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071404, 36.010303, 33.059902>,  <42.093315, 35.904953, 33.274429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071404, 36.010303, 33.059902>,  <42.034885, 36.185886, 32.702358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071404, 36.010303, 33.059902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850822, -0.432040, -0.299070,
		0.517462, 0.787816, 0.334034,
		0.091296, -0.438961, 0.893856,
		42.098793, 35.878616, 33.328060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725288, 36.293205, 32.976330>,  <42.034885, 36.185886, 32.702358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725288, 36.293205, 32.976330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581787, 35.962170, 33.149021>,  <42.495686, 35.763550, 33.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581787, 35.962170, 33.149021>,  <42.725288, 36.293205, 32.976330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581787, 35.962170, 33.149021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799434, -0.511184, -0.315588,
		0.481871, 0.231921, 0.844993,
		-0.358756, -0.827589, 0.431731,
		42.474159, 35.713894, 33.278542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349819, 35.940228, 33.025871>,  <42.725288, 36.293205, 32.976330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349819, 35.940228, 33.025871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062622, 35.675819, 33.113079>,  <42.890305, 35.517174, 33.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062622, 35.675819, 33.113079>,  <43.349819, 35.940228, 33.025871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062622, 35.675819, 33.113079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556126, -0.733152, -0.391422,
		0.418579, -0.159793, 0.894012,
		-0.717994, -0.661025, 0.218017,
		42.847225, 35.477512, 33.178486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704742, 35.593925, 33.580021>,  <43.349819, 35.940228, 33.025871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704742, 35.593925, 33.580021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441963, 35.333412, 33.428101>,  <43.284298, 35.177105, 33.336948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441963, 35.333412, 33.428101>,  <43.704742, 35.593925, 33.580021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441963, 35.333412, 33.428101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753937, -0.566622, -0.332443,
		0.001311, -0.504744, 0.863268,
		-0.656946, -0.651285, -0.379803,
		43.244881, 35.138027, 33.314159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468113, 35.410793, 33.739494>,  <43.704742, 35.593925, 33.580021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468113, 35.410793, 33.739494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795830, 35.294430, 33.937130>,  <44.992462, 35.224613, 34.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795830, 35.294430, 33.937130>,  <44.468113, 35.410793, 33.739494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795830, 35.294430, 33.937130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319437, 0.484020, 0.814668,
		-0.476144, -0.825285, 0.303629,
		0.819296, -0.290910, 0.494090,
		45.041618, 35.207157, 34.085358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128834, 35.232399, 34.305374>,  <44.468113, 35.410793, 33.739494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128834, 35.232399, 34.305374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509136, 35.246868, 34.428509>,  <44.737316, 35.255550, 34.502388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509136, 35.246868, 34.428509>,  <44.128834, 35.232399, 34.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509136, 35.246868, 34.428509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306846, 0.250074, 0.918318,
		-0.043766, -0.967551, 0.248857,
		0.950752, 0.036170, 0.307834,
		44.794361, 35.257721, 34.520859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241215, 34.685673, 34.913990>,  <44.128834, 35.232399, 34.305374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241215, 34.685673, 34.913990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453815, 35.022678, 34.878952>,  <44.581375, 35.224880, 34.857929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453815, 35.022678, 34.878952>,  <44.241215, 34.685673, 34.913990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453815, 35.022678, 34.878952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327309, 0.299652, 0.896146,
		0.781262, -0.447637, 0.435030,
		0.531506, 0.842514, -0.087591,
		44.613266, 35.275433, 34.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772503, 34.610775, 35.360943>,  <44.241215, 34.685673, 34.913990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772503, 34.610775, 35.360943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896503, 34.766724, 35.707790>,  <44.970905, 34.860294, 35.915897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896503, 34.766724, 35.707790>,  <44.772503, 34.610775, 35.360943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896503, 34.766724, 35.707790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018930, -0.914402, 0.404364,
		0.950547, -0.108940, -0.290849,
		0.310004, 0.389873, 0.867120,
		44.989506, 34.883686, 35.967926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549881, 34.409885, 35.543228>,  <44.772503, 34.610775, 35.360943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549881, 34.409885, 35.543228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305878, 34.472889, 35.853859>,  <45.159473, 34.510693, 36.040237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305878, 34.472889, 35.853859>,  <45.549881, 34.409885, 35.543228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305878, 34.472889, 35.853859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267041, -0.881851, 0.388623,
		0.746039, 0.444443, 0.495879,
		-0.610012, 0.157508, 0.776580,
		45.122875, 34.520142, 36.086834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040283, 34.287006, 36.219570>,  <45.549881, 34.409885, 35.543228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040283, 34.287006, 36.219570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644753, 34.227791, 36.226654>,  <45.407436, 34.192261, 36.230904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644753, 34.227791, 36.226654>,  <46.040283, 34.287006, 36.219570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644753, 34.227791, 36.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142767, -0.905947, 0.398595,
		-0.042961, 0.396669, 0.916956,
		-0.988823, -0.148036, 0.017711,
		45.348106, 34.183380, 36.231968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863598, 34.021545, 36.821423>,  <46.040283, 34.287006, 36.219570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863598, 34.021545, 36.821423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565876, 33.891670, 36.587982>,  <45.387245, 33.813744, 36.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565876, 33.891670, 36.587982>,  <45.863598, 34.021545, 36.821423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565876, 33.891670, 36.587982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086000, -0.913183, 0.398372,
		-0.662284, 0.246319, 0.707607,
		-0.744301, -0.324690, -0.583603,
		45.342587, 33.794262, 36.412903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237419, 33.770542, 37.231228>,  <45.863598, 34.021545, 36.821423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237419, 33.770542, 37.231228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269436, 33.578506, 36.881805>,  <45.288647, 33.463284, 36.672150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269436, 33.578506, 36.881805>,  <45.237419, 33.770542, 37.231228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269436, 33.578506, 36.881805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048049, -0.873493, 0.484460,
		-0.995633, -0.080749, -0.046843,
		0.080037, -0.480094, -0.873558,
		45.293446, 33.434479, 36.619740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687794, 34.216404, 37.078762>,  <45.237419, 33.770542, 37.231228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687794, 34.216404, 37.078762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423168, 34.345123, 36.807827>,  <44.264393, 34.422356, 36.645267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423168, 34.345123, 36.807827>,  <44.687794, 34.216404, 37.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423168, 34.345123, 36.807827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735227, -0.100578, 0.670317,
		0.147580, 0.941451, 0.303132,
		-0.661559, 0.321797, -0.677338,
		44.224701, 34.441662, 36.604626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275425, 34.739784, 37.250225>,  <44.687794, 34.216404, 37.078762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275425, 34.739784, 37.250225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095722, 34.500809, 36.984524>,  <43.987900, 34.357422, 36.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095722, 34.500809, 36.984524>,  <44.275425, 34.739784, 37.250225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095722, 34.500809, 36.984524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748313, -0.154526, 0.645097,
		-0.488050, 0.786886, -0.377648,
		-0.449261, -0.597438, -0.664253,
		43.960945, 34.321579, 36.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194565, 35.279617, 36.769150>,  <44.275425, 34.739784, 37.250225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194565, 35.279617, 36.769150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338322, 35.599625, 36.576981>,  <44.424576, 35.791630, 36.461681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338322, 35.599625, 36.576981>,  <44.194565, 35.279617, 36.769150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338322, 35.599625, 36.576981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204849, -0.569895, -0.795774,
		-0.910424, 0.187583, -0.368700,
		0.359394, 0.800020, -0.480421,
		44.446140, 35.839630, 36.432854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004730, 35.524696, 36.043682>,  <44.194565, 35.279617, 36.769150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004730, 35.524696, 36.043682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399136, 35.570610, 36.092010>,  <44.635780, 35.598160, 36.121006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399136, 35.570610, 36.092010>,  <44.004730, 35.524696, 36.043682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399136, 35.570610, 36.092010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158124, -0.415375, -0.895802,
		-0.052640, 0.902379, -0.427716,
		0.986015, 0.114787, 0.120823,
		44.694939, 35.605045, 36.128258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403667, 35.893745, 35.459019>,  <44.004730, 35.524696, 36.043682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403667, 35.893745, 35.459019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688507, 35.654770, 35.606518>,  <44.859413, 35.511383, 35.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688507, 35.654770, 35.606518>,  <44.403667, 35.893745, 35.459019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688507, 35.654770, 35.606518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309991, -0.203697, -0.928662,
		0.629934, 0.775610, 0.040149,
		0.712102, -0.597441, 0.368748,
		44.902138, 35.475536, 35.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868187, 36.000717, 35.020786>,  <44.403667, 35.893745, 35.459019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868187, 36.000717, 35.020786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954704, 35.654579, 35.201626>,  <45.006615, 35.446896, 35.310127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954704, 35.654579, 35.201626>,  <44.868187, 36.000717, 35.020786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954704, 35.654579, 35.201626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389086, -0.348299, -0.852819,
		0.895451, 0.360359, 0.261362,
		0.216289, -0.865349, 0.452095,
		45.019592, 35.394974, 35.337254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578197, 35.895588, 35.047390>,  <44.868187, 36.000717, 35.020786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578197, 35.895588, 35.047390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347507, 35.569344, 35.028728>,  <45.209095, 35.373596, 35.017532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347507, 35.569344, 35.028728>,  <45.578197, 35.895588, 35.047390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347507, 35.569344, 35.028728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477305, -0.290057, -0.829486,
		0.663004, -0.500650, 0.556575,
		-0.576720, -0.815608, -0.046654,
		45.174492, 35.324661, 35.014732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007587, 35.402443, 34.954479>,  <45.578197, 35.895588, 35.047390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007587, 35.402443, 34.954479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642742, 35.322079, 34.811546>,  <45.423836, 35.273861, 34.725784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642742, 35.322079, 34.811546>,  <46.007587, 35.402443, 34.954479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642742, 35.322079, 34.811546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407119, -0.341797, -0.847012,
		0.048041, -0.918046, 0.393553,
		-0.912111, -0.200914, -0.357334,
		45.369110, 35.261806, 34.704346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996548, 34.724155, 34.807644>,  <46.007587, 35.402443, 34.954479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996548, 34.724155, 34.807644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701538, 34.882408, 34.588726>,  <45.524532, 34.977360, 34.457375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701538, 34.882408, 34.588726>,  <45.996548, 34.724155, 34.807644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701538, 34.882408, 34.588726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550999, -0.116030, -0.826400,
		-0.390452, -0.911051, -0.132417,
		-0.737528, 0.395631, -0.547292,
		45.480278, 35.001099, 34.424538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195419, 33.988548, 34.670120>,  <45.996548, 34.724155, 34.807644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195419, 33.988548, 34.670120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413258, 34.241501, 34.890488>,  <46.543961, 34.393272, 35.022709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413258, 34.241501, 34.890488>,  <46.195419, 33.988548, 34.670120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413258, 34.241501, 34.890488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833076, -0.331932, -0.442500,
		-0.096960, 0.699942, -0.707588,
		0.544595, 0.632379, 0.550920,
		46.576637, 34.431213, 35.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672661, 34.159729, 34.167107>,  <46.195419, 33.988548, 34.670120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672661, 34.159729, 34.167107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802311, 34.276573, 34.527020>,  <46.880100, 34.346680, 34.742966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802311, 34.276573, 34.527020>,  <46.672661, 34.159729, 34.167107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802311, 34.276573, 34.527020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927905, -0.283375, -0.242261,
		0.184208, 0.913437, -0.362905,
		0.324129, 0.292115, 0.899783,
		46.899551, 34.364208, 34.796955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190578, 34.803905, 34.155613>,  <46.672661, 34.159729, 34.167107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190578, 34.803905, 34.155613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241203, 34.565113, 34.472496>,  <47.271580, 34.421837, 34.662628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241203, 34.565113, 34.472496>,  <47.190578, 34.803905, 34.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.241203, 34.565113, 34.472496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987488, 0.000081, -0.157696,
		0.094077, 0.802258, 0.589519,
		0.126561, -0.596978, 0.792212,
		47.279171, 34.386021, 34.710159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690987, 35.086422, 34.640423>,  <47.190578, 34.803905, 34.155613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690987, 35.086422, 34.640423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665562, 34.687588, 34.657307>,  <47.650307, 34.448288, 34.667439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665562, 34.687588, 34.657307>,  <47.690987, 35.086422, 34.640423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665562, 34.687588, 34.657307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995068, -0.066547, -0.073565,
		0.076160, 0.037326, 0.996397,
		-0.063561, -0.997085, 0.042210,
		47.646492, 34.388462, 34.669971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.657749, 31.716026, 24.060610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297798, 31.888470, 24.034189>,  <36.081825, 31.991936, 24.018337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297798, 31.888470, 24.034189>,  <36.657749, 31.716026, 24.060610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297798, 31.888470, 24.034189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016614, 0.185222, 0.982556,
		0.435820, 0.883086, -0.173840,
		-0.899880, 0.431106, -0.066051,
		36.027836, 32.017803, 24.014374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673279, 32.291161, 24.470488>,  <36.657749, 31.716026, 24.060610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673279, 32.291161, 24.470488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277115, 32.242870, 24.443624>,  <36.039417, 32.213898, 24.427505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277115, 32.242870, 24.443624>,  <36.673279, 32.291161, 24.470488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277115, 32.242870, 24.443624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091823, 0.212069, 0.972931,
		-0.103213, 0.969770, -0.221120,
		-0.990412, -0.120723, -0.067159,
		35.979992, 32.206654, 24.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430565, 32.851173, 24.805410>,  <36.673279, 32.291161, 24.470488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430565, 32.851173, 24.805410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138336, 32.578678, 24.824099>,  <35.963001, 32.415180, 24.835312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138336, 32.578678, 24.824099>,  <36.430565, 32.851173, 24.805410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138336, 32.578678, 24.824099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180017, 0.258149, 0.949186,
		-0.658683, 0.685035, -0.311230,
		-0.730569, -0.681239, 0.046721,
		35.919167, 32.374306, 24.838116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950356, 33.152519, 25.234030>,  <36.430565, 32.851173, 24.805410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950356, 33.152519, 25.234030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841812, 32.767796, 25.248426>,  <35.776688, 32.536961, 25.257065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841812, 32.767796, 25.248426>,  <35.950356, 33.152519, 25.234030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841812, 32.767796, 25.248426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388883, 0.143768, 0.910001,
		-0.880418, 0.232936, -0.413042,
		-0.271354, -0.961806, 0.035991,
		35.760406, 32.479252, 25.259224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333473, 33.132298, 25.552593>,  <35.950356, 33.152519, 25.234030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333473, 33.132298, 25.552593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458370, 32.756737, 25.610504>,  <35.533310, 32.531399, 25.645250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458370, 32.756737, 25.610504>,  <35.333473, 33.132298, 25.552593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458370, 32.756737, 25.610504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249509, 0.065994, 0.966121,
		-0.916651, -0.337788, -0.213659,
		0.312244, -0.938906, 0.144775,
		35.552044, 32.475063, 25.653936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909122, 32.931870, 26.085709>,  <35.333473, 33.132298, 25.552593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909122, 32.931870, 26.085709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196060, 32.654591, 26.057716>,  <35.368221, 32.488224, 26.040922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196060, 32.654591, 26.057716>,  <34.909122, 32.931870, 26.085709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196060, 32.654591, 26.057716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030366, -0.069238, 0.997138,
		-0.696060, -0.717413, -0.028617,
		0.717342, -0.693199, -0.069979,
		35.411263, 32.446632, 26.036722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693161, 32.374424, 26.406416>,  <34.909122, 32.931870, 26.085709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693161, 32.374424, 26.406416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085705, 32.451283, 26.408136>,  <35.321232, 32.497398, 26.409168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085705, 32.451283, 26.408136>,  <34.693161, 32.374424, 26.406416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085705, 32.451283, 26.408136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045772, 0.211914, 0.976216,
		0.186668, -0.958212, 0.216759,
		0.981356, 0.192150, 0.004301,
		35.380112, 32.508926, 26.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856232, 32.177929, 27.057930>,  <34.693161, 32.374424, 26.406416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856232, 32.177929, 27.057930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210121, 32.344284, 26.973742>,  <35.422455, 32.444096, 26.923229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.210121, 32.344284, 26.973742>,  <34.856232, 32.177929, 27.057930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210121, 32.344284, 26.973742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185217, 0.100684, 0.977526,
		0.427733, -0.903825, 0.012048,
		0.884725, 0.415889, -0.210470,
		35.475540, 32.469051, 26.910601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254498, 31.720285, 27.461550>,  <34.856232, 32.177929, 27.057930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254498, 31.720285, 27.461550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451080, 32.066231, 27.420597>,  <35.569031, 32.273800, 27.396025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451080, 32.066231, 27.420597>,  <35.254498, 31.720285, 27.461550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451080, 32.066231, 27.420597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135974, 0.039920, 0.989908,
		0.860223, -0.500416, -0.097980,
		0.491454, 0.864864, -0.102384,
		35.598518, 32.325691, 27.389881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810982, 31.698475, 27.903582>,  <35.254498, 31.720285, 27.461550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810982, 31.698475, 27.903582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801464, 32.096378, 27.863800>,  <35.795753, 32.335121, 27.839931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801464, 32.096378, 27.863800>,  <35.810982, 31.698475, 27.903582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801464, 32.096378, 27.863800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081010, 0.101072, 0.991575,
		0.996429, 0.015539, -0.082991,
		-0.023796, 0.994758, -0.099452,
		35.794327, 32.394806, 27.833965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431625, 31.905973, 28.283079>,  <35.810982, 31.698475, 27.903582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431625, 31.905973, 28.283079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192879, 32.225147, 28.249496>,  <36.049629, 32.416653, 28.229347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192879, 32.225147, 28.249496>,  <36.431625, 31.905973, 28.283079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192879, 32.225147, 28.249496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281996, 0.306588, 0.909111,
		0.751152, 0.518943, -0.408007,
		-0.596866, 0.797936, -0.083954,
		36.013821, 32.464527, 28.224310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891869, 32.447666, 28.480524>,  <36.431625, 31.905973, 28.283079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891869, 32.447666, 28.480524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514599, 32.566940, 28.539181>,  <36.288235, 32.638504, 28.574375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514599, 32.566940, 28.539181>,  <36.891869, 32.447666, 28.480524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514599, 32.566940, 28.539181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254864, 0.365981, 0.895043,
		0.213217, 0.881558, -0.421181,
		-0.943177, 0.298182, 0.146644,
		36.231647, 32.656395, 28.583174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875694, 33.188869, 28.625799>,  <36.891869, 32.447666, 28.480524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875694, 33.188869, 28.625799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549614, 33.016415, 28.780499>,  <36.353966, 32.912941, 28.873318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549614, 33.016415, 28.780499>,  <36.875694, 33.188869, 28.625799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549614, 33.016415, 28.780499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222588, 0.383256, 0.896420,
		-0.534701, 0.816846, -0.216464,
		-0.815199, -0.431134, 0.386748,
		36.305054, 32.887074, 28.896523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655258, 33.746849, 29.085377>,  <36.875694, 33.188869, 28.625799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655258, 33.746849, 29.085377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431057, 33.434002, 29.194284>,  <36.296535, 33.246292, 29.259628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431057, 33.434002, 29.194284>,  <36.655258, 33.746849, 29.085377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431057, 33.434002, 29.194284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228035, 0.170302, 0.958644,
		-0.796142, 0.599405, 0.082896,
		-0.560499, -0.782119, 0.272270,
		36.262909, 33.199368, 29.275965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232510, 33.896255, 29.640444>,  <36.655258, 33.746849, 29.085377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232510, 33.896255, 29.640444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233627, 33.497269, 29.668894>,  <36.234299, 33.257877, 29.685963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233627, 33.497269, 29.668894>,  <36.232510, 33.896255, 29.640444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233627, 33.497269, 29.668894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547109, 0.061060, 0.834832,
		-0.837057, 0.036578, 0.545892,
		0.002795, -0.997464, 0.071123,
		36.234467, 33.198029, 29.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962444, 33.774246, 30.264627>,  <36.232510, 33.896255, 29.640444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962444, 33.774246, 30.264627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.188843, 33.454243, 30.184990>,  <36.324680, 33.262241, 30.137207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.188843, 33.454243, 30.184990>,  <35.962444, 33.774246, 30.264627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188843, 33.454243, 30.184990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445805, 0.093860, 0.890196,
		-0.693476, -0.592603, 0.409771,
		0.565994, -0.800007, -0.199096,
		36.358643, 33.214241, 30.125261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913494, 33.345631, 30.829370>,  <35.962444, 33.774246, 30.264627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913494, 33.345631, 30.829370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248142, 33.216110, 30.652639>,  <36.448933, 33.138397, 30.546600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248142, 33.216110, 30.652639>,  <35.913494, 33.345631, 30.829370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248142, 33.216110, 30.652639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487982, 0.074109, 0.869702,
		-0.248868, -0.943218, 0.220011,
		0.836623, -0.323803, -0.441830,
		36.499130, 33.118969, 30.520090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173851, 32.898758, 31.385963>,  <35.913494, 33.345631, 30.829370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173851, 32.898758, 31.385963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486362, 32.925449, 31.137718>,  <36.673870, 32.941463, 30.988771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486362, 32.925449, 31.137718>,  <36.173851, 32.898758, 31.385963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486362, 32.925449, 31.137718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604621, -0.327899, 0.725890,
		-0.155061, -0.942353, -0.296523,
		0.781274, 0.066727, -0.620611,
		36.720745, 32.945469, 30.951534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569347, 32.304409, 31.530037>,  <36.173851, 32.898758, 31.385963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569347, 32.304409, 31.530037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831200, 32.556835, 31.363560>,  <36.988312, 32.708290, 31.263674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831200, 32.556835, 31.363560>,  <36.569347, 32.304409, 31.530037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831200, 32.556835, 31.363560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665046, -0.219023, 0.713962,
		0.359398, -0.744171, -0.563065,
		0.654635, 0.631061, -0.416192,
		37.027592, 32.746155, 31.238703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258831, 31.975578, 31.483088>,  <36.569347, 32.304409, 31.530037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258831, 31.975578, 31.483088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364319, 32.361073, 31.466772>,  <37.427612, 32.592369, 31.456984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364319, 32.361073, 31.466772>,  <37.258831, 31.975578, 31.483088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364319, 32.361073, 31.466772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645980, -0.145049, 0.749447,
		0.716353, -0.223993, -0.660807,
		0.263720, 0.963736, -0.040789,
		37.443436, 32.650192, 31.454535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932171, 31.981598, 31.395510>,  <37.258831, 31.975578, 31.483088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932171, 31.981598, 31.395510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827274, 32.327965, 31.565882>,  <37.764336, 32.535786, 31.668106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827274, 32.327965, 31.565882>,  <37.932171, 31.981598, 31.395510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827274, 32.327965, 31.565882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750496, -0.094452, 0.654091,
		0.606618, 0.491189, -0.625098,
		-0.262240, 0.865917, 0.425932,
		37.748604, 32.587738, 31.693661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583572, 32.247879, 31.700050>,  <37.932171, 31.981598, 31.395510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583572, 32.247879, 31.700050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323166, 32.498295, 31.871746>,  <38.166920, 32.648544, 31.974764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323166, 32.498295, 31.871746>,  <38.583572, 32.247879, 31.700050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323166, 32.498295, 31.871746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525156, -0.036831, 0.850209,
		0.548074, 0.778921, -0.304791,
		-0.651020, 0.626040, 0.429241,
		38.127861, 32.686108, 32.000519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010185, 32.488468, 32.321655>,  <38.583572, 32.247879, 31.700050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010185, 32.488468, 32.321655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390820, 32.438786, 32.209190>,  <39.619202, 32.408974, 32.141712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390820, 32.438786, 32.209190>,  <39.010185, 32.488468, 32.321655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390820, 32.438786, 32.209190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298754, -0.158654, -0.941050,
		0.072279, 0.979490, -0.188081,
		0.951589, -0.124208, -0.281159,
		39.676296, 32.401524, 32.124844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123829, 32.693489, 31.585703>,  <39.010185, 32.488468, 32.321655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123829, 32.693489, 31.585703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458366, 32.477016, 31.620684>,  <39.659088, 32.347134, 31.641672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458366, 32.477016, 31.620684>,  <39.123829, 32.693489, 31.585703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458366, 32.477016, 31.620684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099113, -0.306162, -0.946806,
		0.539171, 0.783188, -0.309695,
		0.836344, -0.541185, 0.087450,
		39.709270, 32.314659, 31.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528809, 32.727604, 30.942341>,  <39.123829, 32.693489, 31.585703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528809, 32.727604, 30.942341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680397, 32.408691, 31.130262>,  <39.771351, 32.217342, 31.243015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.680397, 32.408691, 31.130262>,  <39.528809, 32.727604, 30.942341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680397, 32.408691, 31.130262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028246, -0.517400, -0.855277,
		0.924976, 0.310858, -0.218602,
		0.378975, -0.797286, 0.469802,
		39.794090, 32.169506, 31.271202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205807, 32.569450, 30.672022>,  <39.528809, 32.727604, 30.942341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205807, 32.569450, 30.672022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012474, 32.245899, 30.805948>,  <39.896473, 32.051769, 30.886305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012474, 32.245899, 30.805948>,  <40.205807, 32.569450, 30.672022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012474, 32.245899, 30.805948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064711, -0.348399, -0.935110,
		0.873041, -0.473637, 0.116050,
		-0.483334, -0.808880, 0.334816,
		39.867474, 32.003235, 30.906393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432976, 32.070908, 30.230692>,  <40.205807, 32.569450, 30.672022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432976, 32.070908, 30.230692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138111, 31.858027, 30.397232>,  <39.961193, 31.730297, 30.497156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138111, 31.858027, 30.397232>,  <40.432976, 32.070908, 30.230692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138111, 31.858027, 30.397232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012915, -0.604955, -0.796155,
		0.675589, -0.592274, 0.439078,
		-0.737165, -0.532204, 0.416350,
		39.916962, 31.698366, 30.522137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540813, 31.307497, 30.063587>,  <40.432976, 32.070908, 30.230692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540813, 31.307497, 30.063587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148060, 31.342104, 30.131020>,  <39.912407, 31.362869, 30.171480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148060, 31.342104, 30.131020>,  <40.540813, 31.307497, 30.063587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148060, 31.342104, 30.131020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188892, -0.517414, -0.834627,
		0.015017, -0.851350, 0.524383,
		-0.981883, 0.086519, 0.168583,
		39.853497, 31.368059, 30.181595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228703, 30.683336, 29.918993>,  <40.540813, 31.307497, 30.063587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228703, 30.683336, 29.918993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951721, 30.969753, 29.883694>,  <39.785534, 31.141603, 29.862514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951721, 30.969753, 29.883694>,  <40.228703, 30.683336, 29.918993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951721, 30.969753, 29.883694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276333, -0.376221, -0.884363,
		-0.666444, -0.587995, 0.458382,
		-0.692454, 0.716044, -0.088248,
		39.743984, 31.184566, 29.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703545, 30.277473, 29.555586>,  <40.228703, 30.683336, 29.918993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703545, 30.277473, 29.555586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581722, 30.658001, 29.536655>,  <39.508629, 30.886318, 29.525297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581722, 30.658001, 29.536655>,  <39.703545, 30.277473, 29.555586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581722, 30.658001, 29.536655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274012, -0.135091, -0.952191,
		-0.912231, -0.277023, 0.301815,
		-0.304552, 0.951320, -0.047327,
		39.490356, 30.943398, 29.522457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058914, 30.305023, 29.153862>,  <39.703545, 30.277473, 29.555586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058914, 30.305023, 29.153862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195118, 30.681049, 29.146540>,  <39.276840, 30.906664, 29.142147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195118, 30.681049, 29.146540>,  <39.058914, 30.305023, 29.153862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195118, 30.681049, 29.146540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349192, 0.108360, -0.930765,
		-0.872995, 0.323324, 0.365160,
		0.340507, 0.940064, -0.018305,
		39.297272, 30.963068, 29.141048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502316, 30.701958, 28.902063>,  <39.058914, 30.305023, 29.153862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502316, 30.701958, 28.902063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844391, 30.899088, 28.837841>,  <39.049637, 31.017366, 28.799307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844391, 30.899088, 28.837841>,  <38.502316, 30.701958, 28.902063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844391, 30.899088, 28.837841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261093, 0.142001, -0.954812,
		-0.447759, 0.858462, 0.250111,
		0.855186, 0.492827, -0.160556,
		39.100948, 31.046936, 28.789675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192635, 31.338291, 28.629099>,  <38.502316, 30.701958, 28.902063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192635, 31.338291, 28.629099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574490, 31.289938, 28.520252>,  <38.803604, 31.260927, 28.454945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574490, 31.289938, 28.520252>,  <38.192635, 31.338291, 28.629099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574490, 31.289938, 28.520252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232105, 0.270345, -0.934367,
		0.186513, 0.955145, 0.230025,
		0.954641, -0.120882, -0.272116,
		38.860882, 31.253674, 28.438618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355419, 31.906563, 28.093628>,  <38.192635, 31.338291, 28.629099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355419, 31.906563, 28.093628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642025, 31.631090, 28.049212>,  <38.813988, 31.465807, 28.022562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642025, 31.631090, 28.049212>,  <38.355419, 31.906563, 28.093628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642025, 31.631090, 28.049212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050620, 0.210093, -0.976370,
		0.695735, 0.693961, 0.185396,
		0.716513, -0.688679, -0.111041,
		38.856979, 31.424486, 28.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004353, 32.157795, 27.979374>,  <38.355419, 31.906563, 28.093628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004353, 32.157795, 27.979374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986729, 31.793732, 27.814613>,  <38.976154, 31.575293, 27.715757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.986729, 31.793732, 27.814613>,  <39.004353, 32.157795, 27.979374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986729, 31.793732, 27.814613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100804, 0.406149, -0.908230,
		0.993930, -0.081535, 0.073854,
		-0.044056, -0.910162, -0.411903,
		38.973511, 31.520683, 27.691042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515293, 32.191673, 27.423748>,  <39.004353, 32.157795, 27.979374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515293, 32.191673, 27.423748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343445, 31.846655, 27.316839>,  <39.240334, 31.639643, 27.252693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343445, 31.846655, 27.316839>,  <39.515293, 32.191673, 27.423748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343445, 31.846655, 27.316839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012709, 0.301728, -0.953309,
		0.902918, -0.406168, -0.140592,
		-0.429624, -0.862547, -0.267274,
		39.214558, 31.587891, 27.236656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882057, 32.032475, 26.833368>,  <39.515293, 32.191673, 27.423748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882057, 32.032475, 26.833368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541576, 31.823021, 26.819118>,  <39.337288, 31.697350, 26.810570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541576, 31.823021, 26.819118>,  <39.882057, 32.032475, 26.833368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541576, 31.823021, 26.819118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124023, 0.266632, -0.955785,
		0.509978, -0.809146, -0.291900,
		-0.851199, -0.523632, -0.035623,
		39.286217, 31.665932, 26.808432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920475, 31.630861, 26.259691>,  <39.882057, 32.032475, 26.833368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920475, 31.630861, 26.259691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531532, 31.688648, 26.333061>,  <39.298164, 31.723320, 26.377083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531532, 31.688648, 26.333061>,  <39.920475, 31.630861, 26.259691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531532, 31.688648, 26.333061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173251, 0.080219, -0.981605,
		-0.156527, -0.986252, -0.052972,
		-0.972360, 0.144470, 0.183426,
		39.239822, 31.731989, 26.388088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629158, 30.996260, 25.890297>,  <39.920475, 31.630861, 26.259691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629158, 30.996260, 25.890297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368900, 31.294983, 25.945351>,  <39.212746, 31.474216, 25.978382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.368900, 31.294983, 25.945351>,  <39.629158, 30.996260, 25.890297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368900, 31.294983, 25.945351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279305, -0.066805, -0.957876,
		-0.706154, -0.661677, 0.252053,
		-0.650643, 0.746808, 0.137635,
		39.173706, 31.519026, 25.986641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115967, 30.834517, 25.440945>,  <39.629158, 30.996260, 25.890297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115967, 30.834517, 25.440945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035725, 31.214127, 25.538197>,  <38.987579, 31.441893, 25.596548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035725, 31.214127, 25.538197>,  <39.115967, 30.834517, 25.440945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035725, 31.214127, 25.538197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229756, 0.195678, -0.953374,
		-0.952350, -0.247109, 0.178790,
		-0.200602, 0.949025, 0.243129,
		38.975544, 31.498835, 25.611135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.413166, 30.973158, 25.280865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572964, 31.339119, 25.304058>,  <38.668842, 31.558695, 25.317974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572964, 31.339119, 25.304058>,  <38.413166, 30.973158, 25.280865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572964, 31.339119, 25.304058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380805, 0.223150, -0.897325,
		-0.833902, 0.336394, 0.437546,
		0.399493, 0.914901, 0.057985,
		38.692810, 31.613588, 25.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872768, 31.357031, 24.933107>,  <38.413166, 30.973158, 25.280865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872768, 31.357031, 24.933107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180904, 31.611755, 24.920189>,  <38.365788, 31.764589, 24.912437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180904, 31.611755, 24.920189>,  <37.872768, 31.357031, 24.933107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180904, 31.611755, 24.920189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280408, 0.292846, -0.914118,
		-0.572664, 0.713240, 0.404159,
		0.770342, 0.636812, -0.032296,
		38.412006, 31.802799, 24.910500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601395, 32.081200, 24.618839>,  <37.872768, 31.357031, 24.933107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601395, 32.081200, 24.618839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995117, 32.055191, 24.553226>,  <38.231350, 32.039585, 24.513859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995117, 32.055191, 24.553226>,  <37.601395, 32.081200, 24.618839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995117, 32.055191, 24.553226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141072, 0.268399, -0.952922,
		0.105986, 0.961111, 0.255015,
		0.984310, -0.065021, -0.164032,
		38.290409, 32.035686, 24.504017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840412, 32.769699, 24.283014>,  <37.601395, 32.081200, 24.618839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840412, 32.769699, 24.283014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096359, 32.478146, 24.185606>,  <38.249928, 32.303215, 24.127161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096359, 32.478146, 24.185606>,  <37.840412, 32.769699, 24.283014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096359, 32.478146, 24.185606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119279, 0.218849, -0.968441,
		0.759174, 0.648718, 0.053094,
		0.639865, -0.728882, -0.243523,
		38.288319, 32.259480, 24.112549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219513, 33.112576, 23.868019>,  <37.840412, 32.769699, 24.283014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219513, 33.112576, 23.868019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269115, 32.720779, 23.804499>,  <38.298878, 32.485703, 23.766386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269115, 32.720779, 23.804499>,  <38.219513, 33.112576, 23.868019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269115, 32.720779, 23.804499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063309, 0.167519, -0.983834,
		0.990259, 0.111952, 0.082785,
		0.124011, -0.979492, -0.158800,
		38.306320, 32.426933, 23.756859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595318, 33.106514, 23.330629>,  <38.219513, 33.112576, 23.868019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595318, 33.106514, 23.330629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493168, 32.719799, 23.326538>,  <38.431877, 32.487770, 23.324083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.493168, 32.719799, 23.326538>,  <38.595318, 33.106514, 23.330629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493168, 32.719799, 23.326538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094096, -0.014322, -0.995460,
		0.962252, -0.255180, 0.094629,
		-0.255377, -0.966787, -0.010230,
		38.416553, 32.429764, 23.323469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154655, 32.662338, 22.995495>,  <38.595318, 33.106514, 23.330629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154655, 32.662338, 22.995495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807449, 32.467773, 22.955570>,  <38.599125, 32.351036, 22.931616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807449, 32.467773, 22.955570>,  <39.154655, 32.662338, 22.995495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807449, 32.467773, 22.955570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244151, -0.243058, -0.938783,
		0.432372, -0.839244, 0.329735,
		-0.868012, -0.486408, -0.099810,
		38.547047, 32.321850, 22.925627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300014, 31.918270, 22.697615>,  <39.154655, 32.662338, 22.995495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300014, 31.918270, 22.697615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909470, 31.964870, 22.624792>,  <38.675144, 31.992830, 22.581099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909470, 31.964870, 22.624792>,  <39.300014, 31.918270, 22.697615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909470, 31.964870, 22.624792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172773, -0.085455, -0.981248,
		-0.129877, -0.989507, 0.063306,
		-0.976362, 0.116504, -0.182059,
		38.616562, 31.999821, 22.570175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033592, 31.382742, 22.306721>,  <39.300014, 31.918270, 22.697615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033592, 31.382742, 22.306721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773781, 31.678133, 22.234320>,  <38.617893, 31.855368, 22.190880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773781, 31.678133, 22.234320>,  <39.033592, 31.382742, 22.306721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773781, 31.678133, 22.234320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042209, -0.202666, -0.978338,
		-0.759162, -0.643101, 0.100468,
		-0.649531, 0.738477, -0.181001,
		38.578922, 31.899675, 22.180019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579300, 31.103729, 21.777122>,  <39.033592, 31.382742, 22.306721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579300, 31.103729, 21.777122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444836, 31.480179, 21.762764>,  <38.364159, 31.706049, 21.754148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444836, 31.480179, 21.762764>,  <38.579300, 31.103729, 21.777122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444836, 31.480179, 21.762764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204466, -0.110132, -0.972658,
		-0.919343, -0.319626, 0.229449,
		-0.336156, 0.941122, -0.035896,
		38.343990, 31.762516, 21.751995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030693, 31.125456, 21.342913>,  <38.579300, 31.103729, 21.777122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030693, 31.125456, 21.342913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154766, 31.505581, 21.332394>,  <38.229210, 31.733656, 21.326082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154766, 31.505581, 21.332394>,  <38.030693, 31.125456, 21.342913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154766, 31.505581, 21.332394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243653, 0.052730, -0.968428,
		-0.918924, 0.306793, 0.247903,
		0.310179, 0.950314, -0.026296,
		38.247818, 31.790676, 21.324505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611225, 31.395214, 20.897366>,  <38.030693, 31.125456, 21.342913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611225, 31.395214, 20.897366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917328, 31.652704, 20.897839>,  <38.100990, 31.807199, 20.898123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917328, 31.652704, 20.897839>,  <37.611225, 31.395214, 20.897366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917328, 31.652704, 20.897839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101057, 0.121952, -0.987378,
		-0.635746, 0.755476, 0.158378,
		0.765255, 0.643727, 0.001184,
		38.146904, 31.845821, 20.898193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374546, 31.994572, 20.476749>,  <37.611225, 31.395214, 20.897366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374546, 31.994572, 20.476749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774483, 31.989414, 20.471947>,  <38.014446, 31.986320, 20.469065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774483, 31.989414, 20.471947>,  <37.374546, 31.994572, 20.476749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774483, 31.989414, 20.471947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011318, 0.052090, -0.998578,
		0.013499, 0.998559, 0.051936,
		0.999845, -0.012892, -0.012004,
		38.074436, 31.985546, 20.468346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512028, 32.530899, 20.044531>,  <37.374546, 31.994572, 20.476749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512028, 32.530899, 20.044531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.852219, 32.320694, 20.053606>,  <38.056335, 32.194569, 20.059052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.852219, 32.320694, 20.053606>,  <37.512028, 32.530899, 20.044531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852219, 32.320694, 20.053606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118734, 0.149777, -0.981565,
		0.512428, 0.837497, 0.189779,
		0.850482, -0.525515, 0.022690,
		38.107365, 32.163040, 20.060413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061932, 32.955776, 19.767828>,  <37.512028, 32.530899, 20.044531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061932, 32.955776, 19.767828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148540, 32.571266, 19.699625>,  <38.200504, 32.340561, 19.658703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148540, 32.571266, 19.699625>,  <38.061932, 32.955776, 19.767828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148540, 32.571266, 19.699625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305942, 0.232663, -0.923183,
		0.927103, 0.147720, 0.344470,
		0.216518, -0.961273, -0.170509,
		38.213497, 32.282883, 19.648472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481075, 33.017570, 19.315006>,  <38.061932, 32.955776, 19.767828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481075, 33.017570, 19.315006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427261, 32.621956, 19.290670>,  <38.394974, 32.384586, 19.276068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.427261, 32.621956, 19.290670>,  <38.481075, 33.017570, 19.315006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427261, 32.621956, 19.290670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233146, 0.028081, -0.972036,
		0.963090, -0.144959, 0.226813,
		-0.134536, -0.989039, -0.060841,
		38.386902, 32.325245, 19.272419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055824, 32.660759, 18.956322>,  <38.481075, 33.017570, 19.315006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055824, 32.660759, 18.956322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760612, 32.392788, 18.924063>,  <38.583485, 32.232006, 18.904707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760612, 32.392788, 18.924063>,  <39.055824, 32.660759, 18.956322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760612, 32.392788, 18.924063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220940, -0.126992, -0.966984,
		0.637567, -0.731485, 0.241739,
		-0.738034, -0.669927, -0.080649,
		38.539204, 32.191811, 18.899868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352768, 32.173183, 18.561989>,  <39.055824, 32.660759, 18.956322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352768, 32.173183, 18.561989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958431, 32.117496, 18.524614>,  <38.721828, 32.084084, 18.502190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958431, 32.117496, 18.524614>,  <39.352768, 32.173183, 18.561989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958431, 32.117496, 18.524614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128959, -0.273453, -0.953201,
		0.107156, -0.951757, 0.287536,
		-0.985844, -0.139221, -0.093435,
		38.662678, 32.075729, 18.496584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384388, 31.636496, 18.167583>,  <39.352768, 32.173183, 18.561989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384388, 31.636496, 18.167583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022930, 31.797844, 18.110001>,  <38.806057, 31.894653, 18.075451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022930, 31.797844, 18.110001>,  <39.384388, 31.636496, 18.167583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022930, 31.797844, 18.110001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078306, -0.174848, -0.981477,
		-0.421069, -0.898176, 0.126413,
		-0.903642, 0.403371, -0.143956,
		38.751839, 31.918856, 18.066814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174751, 31.303904, 17.559244>,  <39.384388, 31.636496, 18.167583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174751, 31.303904, 17.559244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915047, 31.606546, 17.590252>,  <38.759224, 31.788132, 17.608856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915047, 31.606546, 17.590252>,  <39.174751, 31.303904, 17.559244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915047, 31.606546, 17.590252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309405, -0.169639, -0.935677,
		-0.694791, -0.631480, 0.344238,
		-0.649257, 0.756608, 0.077520,
		38.720268, 31.833529, 17.613508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614677, 31.018932, 17.161169>,  <39.174751, 31.303904, 17.559244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614677, 31.018932, 17.161169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552212, 31.412310, 17.197935>,  <38.514732, 31.648336, 17.219995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552212, 31.412310, 17.197935>,  <38.614677, 31.018932, 17.161169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552212, 31.412310, 17.197935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345085, 0.032871, -0.937996,
		-0.925489, -0.178197, 0.334239,
		-0.156161, 0.983446, 0.091915,
		38.505363, 31.707344, 17.225510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911331, 31.171930, 16.927549>,  <38.614677, 31.018932, 17.161169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911331, 31.171930, 16.927549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131989, 31.504259, 16.898096>,  <38.264381, 31.703657, 16.880424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131989, 31.504259, 16.898096>,  <37.911331, 31.171930, 16.927549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131989, 31.504259, 16.898096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205569, 0.049871, -0.977371,
		-0.808350, 0.554298, 0.198303,
		0.551644, 0.830823, -0.073633,
		38.297482, 31.753506, 16.876007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467846, 31.795895, 16.766512>,  <37.911331, 31.171930, 16.927549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467846, 31.795895, 16.766512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837666, 31.785313, 16.614450>,  <38.059555, 31.778963, 16.523214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837666, 31.785313, 16.614450>,  <37.467846, 31.795895, 16.766512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837666, 31.785313, 16.614450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371833, 0.155699, -0.915149,
		0.083399, 0.987450, 0.134115,
		0.924546, -0.026454, -0.380152,
		38.115028, 31.777376, 16.500404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664406, 32.420734, 16.495998>,  <37.467846, 31.795895, 16.766512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664406, 32.420734, 16.495998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830769, 32.114136, 16.300241>,  <37.930588, 31.930178, 16.182787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830769, 32.114136, 16.300241>,  <37.664406, 32.420734, 16.495998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830769, 32.114136, 16.300241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281347, 0.403292, -0.870746,
		0.864790, 0.499842, -0.047916,
		0.415912, -0.766494, -0.489392,
		37.955544, 31.884188, 16.153423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239784, 33.097874, 16.604691>,  <37.664406, 32.420734, 16.495998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239784, 33.097874, 16.604691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857628, 33.093048, 16.486654>,  <36.628334, 33.090153, 16.415833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857628, 33.093048, 16.486654>,  <37.239784, 33.097874, 16.604691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857628, 33.093048, 16.486654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285595, 0.292262, 0.912699,
		0.075236, 0.956262, -0.282669,
		-0.955393, -0.012061, -0.295092,
		36.571011, 33.089428, 16.398127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069004, 33.653172, 16.745865>,  <37.239784, 33.097874, 16.604691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069004, 33.653172, 16.745865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728687, 33.442970, 16.745764>,  <36.524498, 33.316849, 16.745703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728687, 33.442970, 16.745764>,  <37.069004, 33.653172, 16.745865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728687, 33.442970, 16.745764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265683, 0.429726, 0.862988,
		-0.453398, 0.734288, -0.505225,
		-0.850790, -0.525506, -0.000250,
		36.473450, 33.285316, 16.745689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776669, 34.068703, 17.208572>,  <37.069004, 33.653172, 16.745865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776669, 34.068703, 17.208572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552677, 33.737549, 17.195753>,  <36.418282, 33.538857, 17.188061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552677, 33.737549, 17.195753>,  <36.776669, 34.068703, 17.208572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552677, 33.737549, 17.195753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425935, 0.254493, 0.868224,
		-0.710634, 0.499839, -0.495137,
		-0.559981, -0.827885, -0.032048,
		36.384682, 33.489182, 17.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308849, 34.286850, 17.600428>,  <36.776669, 34.068703, 17.208572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308849, 34.286850, 17.600428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220554, 33.897793, 17.571461>,  <36.167576, 33.664360, 17.554081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220554, 33.897793, 17.571461>,  <36.308849, 34.286850, 17.600428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220554, 33.897793, 17.571461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339050, 0.006906, 0.940743,
		-0.914505, 0.232212, -0.331298,
		-0.220740, -0.972641, -0.072416,
		36.154331, 33.605999, 17.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668667, 34.285381, 17.815941>,  <36.308849, 34.286850, 17.600428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668667, 34.285381, 17.815941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827263, 33.923923, 17.880711>,  <35.922421, 33.707047, 17.919573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827263, 33.923923, 17.880711>,  <35.668667, 34.285381, 17.815941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827263, 33.923923, 17.880711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350662, 0.013938, 0.936398,
		-0.848431, -0.428049, -0.311349,
		0.396485, -0.903647, 0.161926,
		35.946209, 33.652828, 17.929289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146915, 33.867447, 18.148632>,  <35.668667, 34.285381, 17.815941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146915, 33.867447, 18.148632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487503, 33.676563, 18.235596>,  <35.691856, 33.562031, 18.287775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487503, 33.676563, 18.235596>,  <35.146915, 33.867447, 18.148632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487503, 33.676563, 18.235596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335692, -0.177499, 0.925097,
		-0.402879, -0.860674, -0.311332,
		0.851468, -0.477214, 0.217411,
		35.742943, 33.533398, 18.300819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860584, 33.348232, 18.570599>,  <35.146915, 33.867447, 18.148632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860584, 33.348232, 18.570599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252155, 33.395176, 18.637453>,  <35.487099, 33.423344, 18.677565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252155, 33.395176, 18.637453>,  <34.860584, 33.348232, 18.570599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252155, 33.395176, 18.637453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161371, -0.057076, 0.985242,
		0.125168, -0.991448, -0.036934,
		0.978924, 0.117361, 0.167135,
		35.545834, 33.430386, 18.687593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104588, 32.774361, 19.086090>,  <34.860584, 33.348232, 18.570599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104588, 32.774361, 19.086090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378845, 33.065414, 19.094511>,  <35.543400, 33.240047, 19.099564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378845, 33.065414, 19.094511>,  <35.104588, 32.774361, 19.086090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378845, 33.065414, 19.094511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037202, -0.063911, 0.997262,
		0.726985, -0.682984, -0.070889,
		0.685645, 0.727632, 0.021054,
		35.584538, 33.283703, 19.100826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560165, 32.572639, 19.562593>,  <35.104588, 32.774361, 19.086090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560165, 32.572639, 19.562593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657215, 32.959766, 19.535860>,  <35.715446, 33.192043, 19.519821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657215, 32.959766, 19.535860>,  <35.560165, 32.572639, 19.562593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657215, 32.959766, 19.535860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068490, 0.051630, 0.996315,
		0.967699, -0.246312, -0.053759,
		0.242628, 0.967815, -0.066832,
		35.730003, 33.250111, 19.515810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173222, 32.675964, 19.817341>,  <35.560165, 32.572639, 19.562593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173222, 32.675964, 19.817341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044365, 33.051891, 19.862879>,  <35.967052, 33.277447, 19.890202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044365, 33.051891, 19.862879>,  <36.173222, 32.675964, 19.817341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044365, 33.051891, 19.862879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182302, -0.056423, 0.981622,
		0.928973, 0.336975, -0.153155,
		-0.322140, 0.939821, 0.113847,
		35.947723, 33.333839, 19.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750683, 33.067200, 19.987764>,  <36.173222, 32.675964, 19.817341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750683, 33.067200, 19.987764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403515, 33.220463, 20.114202>,  <36.195213, 33.312420, 20.190065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403515, 33.220463, 20.114202>,  <36.750683, 33.067200, 19.987764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403515, 33.220463, 20.114202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306819, -0.086907, 0.947792,
		0.390620, 0.919587, -0.042131,
		-0.867916, 0.383153, 0.316095,
		36.143139, 33.335407, 20.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976765, 33.551117, 20.454998>,  <36.750683, 33.067200, 19.987764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976765, 33.551117, 20.454998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585739, 33.506317, 20.526365>,  <36.351124, 33.479439, 20.569185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585739, 33.506317, 20.526365>,  <36.976765, 33.551117, 20.454998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585739, 33.506317, 20.526365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193150, -0.138463, 0.971350,
		-0.084087, 0.984014, 0.156988,
		-0.977559, -0.112001, 0.178419,
		36.292473, 33.472717, 20.579891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977757, 33.863411, 21.120152>,  <36.976765, 33.551117, 20.454998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977757, 33.863411, 21.120152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677330, 33.606796, 21.057745>,  <36.497074, 33.452827, 21.020302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.677330, 33.606796, 21.057745>,  <36.977757, 33.863411, 21.120152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677330, 33.606796, 21.057745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139718, -0.385390, 0.912115,
		-0.645278, 0.663258, 0.379086,
		-0.751063, -0.641532, -0.156015,
		36.452011, 33.414337, 21.010941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690880, 33.832317, 21.771444>,  <36.977757, 33.863411, 21.120152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690880, 33.832317, 21.771444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498539, 33.536228, 21.583464>,  <36.383137, 33.358574, 21.470676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498539, 33.536228, 21.583464>,  <36.690880, 33.832317, 21.771444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498539, 33.536228, 21.583464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216078, -0.419410, 0.881706,
		-0.849762, 0.525513, 0.041726,
		-0.480848, -0.740224, -0.469950,
		36.354286, 33.314159, 21.442478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975002, 33.802132, 22.099087>,  <36.690880, 33.832317, 21.771444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975002, 33.802132, 22.099087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043831, 33.437000, 21.950962>,  <36.085129, 33.217922, 21.862087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043831, 33.437000, 21.950962>,  <35.975002, 33.802132, 22.099087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043831, 33.437000, 21.950962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126300, -0.352374, 0.927298,
		-0.976954, -0.206336, 0.054655,
		0.172076, -0.912830, -0.370313,
		36.095455, 33.163151, 21.839869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333256, 33.288807, 22.300913>,  <35.975002, 33.802132, 22.099087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333256, 33.288807, 22.300913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653076, 33.061634, 22.222773>,  <35.844971, 32.925331, 22.175888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653076, 33.061634, 22.222773>,  <35.333256, 33.288807, 22.300913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653076, 33.061634, 22.222773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114629, -0.463590, 0.878604,
		-0.589555, -0.680097, -0.435766,
		0.799553, -0.567937, -0.195353,
		35.892941, 32.891254, 22.164167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066967, 32.637947, 22.276733>,  <35.333256, 33.288807, 22.300913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066967, 32.637947, 22.276733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453907, 32.616325, 22.375780>,  <35.686069, 32.603352, 22.435207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453907, 32.616325, 22.375780>,  <35.066967, 32.637947, 22.276733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453907, 32.616325, 22.375780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226463, -0.623012, 0.748713,
		0.113795, -0.780342, -0.614912,
		0.967350, -0.054055, 0.247615,
		35.744110, 32.600109, 22.450064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229393, 31.941298, 22.421030>,  <35.066967, 32.637947, 22.276733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229393, 31.941298, 22.421030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519753, 32.146336, 22.604469>,  <35.693970, 32.269360, 22.714533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519753, 32.146336, 22.604469>,  <35.229393, 31.941298, 22.421030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519753, 32.146336, 22.604469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015817, -0.679027, 0.733942,
		0.687618, -0.525515, -0.501014,
		0.725900, 0.512597, 0.458600,
		35.737522, 32.300114, 22.742048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505924, 31.409943, 22.705513>,  <35.229393, 31.941298, 22.421030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505924, 31.409943, 22.705513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652660, 31.722897, 22.906830>,  <35.740700, 31.910669, 23.027620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652660, 31.722897, 22.906830>,  <35.505924, 31.409943, 22.705513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652660, 31.722897, 22.906830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200873, -0.461626, 0.864032,
		0.908339, -0.418058, -0.012182,
		0.366839, 0.782387, 0.503290,
		35.762711, 31.957613, 23.057817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893204, 31.201281, 23.329533>,  <35.505924, 31.409943, 22.705513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893204, 31.201281, 23.329533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821392, 31.580667, 23.433981>,  <35.778305, 31.808300, 23.496649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821392, 31.580667, 23.433981>,  <35.893204, 31.201281, 23.329533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821392, 31.580667, 23.433981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060665, -0.275600, 0.959356,
		0.981880, 0.156392, 0.107017,
		-0.179529, 0.948465, 0.261119,
		35.767532, 31.865208, 23.512316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.857071, 30.626617, 27.720375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567650, 30.886501, 27.813631>,  <39.393997, 31.042431, 27.869585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.567650, 30.886501, 27.813631>,  <39.857071, 30.626617, 27.720375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567650, 30.886501, 27.813631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338134, 0.039157, 0.940283,
		0.601780, 0.759175, -0.248020,
		-0.723551, 0.649707, 0.233140,
		39.350586, 31.081413, 27.883574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174641, 31.091984, 28.186827>,  <39.857071, 30.626617, 27.720375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174641, 31.091984, 28.186827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786144, 31.160225, 28.253271>,  <39.553047, 31.201170, 28.293137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786144, 31.160225, 28.253271>,  <40.174641, 31.091984, 28.186827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786144, 31.160225, 28.253271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183502, 0.091717, 0.978731,
		0.151738, 0.981062, -0.120385,
		-0.971238, 0.170602, 0.166110,
		39.494774, 31.211405, 28.303104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122032, 31.744808, 28.512627>,  <40.174641, 31.091984, 28.186827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122032, 31.744808, 28.512627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791321, 31.538435, 28.602299>,  <39.592896, 31.414612, 28.656101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791321, 31.538435, 28.602299>,  <40.122032, 31.744808, 28.512627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791321, 31.538435, 28.602299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128199, 0.215223, 0.968114,
		-0.547731, 0.829151, -0.111799,
		-0.826774, -0.515934, 0.224181,
		39.543289, 31.383656, 28.669554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813042, 32.106804, 29.020405>,  <40.122032, 31.744808, 28.512627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813042, 32.106804, 29.020405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617882, 31.760223, 29.062773>,  <39.500786, 31.552275, 29.088194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.617882, 31.760223, 29.062773>,  <39.813042, 32.106804, 29.020405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617882, 31.760223, 29.062773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108146, 0.180406, 0.977629,
		-0.866177, 0.465526, -0.181722,
		-0.487896, -0.866452, 0.105919,
		39.471512, 31.500288, 29.094549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167717, 32.242264, 29.388861>,  <39.813042, 32.106804, 29.020405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167717, 32.242264, 29.388861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279701, 31.859770, 29.422880>,  <39.346893, 31.630274, 29.443293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279701, 31.859770, 29.422880>,  <39.167717, 32.242264, 29.388861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279701, 31.859770, 29.422880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069989, 0.068027, 0.995226,
		-0.957457, -0.284577, -0.047882,
		0.279960, -0.956236, 0.085050,
		39.363689, 31.572899, 29.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679062, 31.931725, 29.859259>,  <39.167717, 32.242264, 29.388861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679062, 31.931725, 29.859259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011211, 31.709017, 29.850460>,  <39.210503, 31.575392, 29.845181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011211, 31.709017, 29.850460>,  <38.679062, 31.931725, 29.859259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011211, 31.709017, 29.850460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090835, 0.096316, 0.991197,
		-0.549750, -0.825064, 0.130552,
		0.830376, -0.556769, -0.021995,
		39.260323, 31.541986, 29.843861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619732, 31.587608, 30.505072>,  <38.679062, 31.931725, 29.859259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619732, 31.587608, 30.505072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006191, 31.524845, 30.423161>,  <39.238068, 31.487186, 30.374014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006191, 31.524845, 30.423161>,  <38.619732, 31.587608, 30.505072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006191, 31.524845, 30.423161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241996, 0.276124, 0.930158,
		-0.089406, -0.948227, 0.304748,
		0.966149, -0.156910, -0.204780,
		39.296036, 31.477772, 30.361727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835072, 31.136644, 30.974760>,  <38.619732, 31.587608, 30.505072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835072, 31.136644, 30.974760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178711, 31.294741, 30.844690>,  <39.384895, 31.389599, 30.766649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178711, 31.294741, 30.844690>,  <38.835072, 31.136644, 30.974760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178711, 31.294741, 30.844690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264911, 0.200224, 0.943256,
		0.437921, -0.896490, 0.067308,
		0.859096, 0.395241, -0.325173,
		39.436440, 31.413313, 30.747139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364597, 30.900396, 31.426338>,  <38.835072, 31.136644, 30.974760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364597, 30.900396, 31.426338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511318, 31.234676, 31.262844>,  <39.599350, 31.435244, 31.164747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511318, 31.234676, 31.262844>,  <39.364597, 30.900396, 31.426338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511318, 31.234676, 31.262844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478761, 0.207139, 0.853160,
		0.797651, -0.508624, -0.324122,
		0.366799, 0.835701, -0.408733,
		39.621357, 31.485386, 31.140224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998085, 30.984226, 31.833443>,  <39.364597, 30.900396, 31.426338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998085, 30.984226, 31.833443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932343, 31.344997, 31.673687>,  <39.892895, 31.561460, 31.577833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.932343, 31.344997, 31.673687>,  <39.998085, 30.984226, 31.833443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932343, 31.344997, 31.673687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417587, 0.430446, 0.800211,
		0.893648, -0.035257, -0.447382,
		-0.164360, 0.901928, -0.399390,
		39.883034, 31.615576, 31.553869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598465, 31.482040, 31.964153>,  <39.998085, 30.984226, 31.833443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598465, 31.482040, 31.964153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313244, 31.742428, 31.859997>,  <40.142113, 31.898661, 31.797503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.313244, 31.742428, 31.859997>,  <40.598465, 31.482040, 31.964153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313244, 31.742428, 31.859997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301754, 0.620175, 0.724104,
		0.632856, 0.437747, -0.638647,
		-0.713048, 0.650968, -0.260390,
		40.099331, 31.937717, 31.781879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986782, 32.021408, 31.681549>,  <40.598465, 31.482040, 31.964153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986782, 32.021408, 31.681549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633545, 32.148949, 31.819231>,  <40.421600, 32.225471, 31.901840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633545, 32.148949, 31.819231>,  <40.986782, 32.021408, 31.681549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633545, 32.148949, 31.819231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468182, 0.550654, 0.691076,
		0.030811, 0.771437, -0.635559,
		-0.883095, 0.318850, 0.344206,
		40.368618, 32.244602, 31.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091640, 32.737110, 31.851965>,  <40.986782, 32.021408, 31.681549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091640, 32.737110, 31.851965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767937, 32.619396, 32.055336>,  <40.573715, 32.548767, 32.177361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.767937, 32.619396, 32.055336>,  <41.091640, 32.737110, 31.851965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767937, 32.619396, 32.055336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274941, 0.575104, 0.770495,
		-0.519142, 0.763317, -0.384498,
		-0.809258, -0.294282, 0.508428,
		40.525158, 32.531113, 32.207863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430191, 33.143246, 32.457737>,  <41.091640, 32.737110, 31.851965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430191, 33.143246, 32.457737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360504, 33.505665, 32.611992>,  <41.318691, 33.723118, 32.704544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360504, 33.505665, 32.611992>,  <41.430191, 33.143246, 32.457737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360504, 33.505665, 32.611992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396104, 0.294062, -0.869844,
		-0.901526, -0.304296, 0.307660,
		-0.174219, 0.906053, 0.385638,
		41.308239, 33.777481, 32.727684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760391, 33.378819, 32.446198>,  <41.430191, 33.143246, 32.457737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760391, 33.378819, 32.446198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026173, 33.675629, 32.410641>,  <41.185642, 33.853714, 32.389305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026173, 33.675629, 32.410641>,  <40.760391, 33.378819, 32.446198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026173, 33.675629, 32.410641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511293, 0.364613, -0.778227,
		-0.545050, 0.562547, 0.621660,
		0.664455, 0.742023, -0.088894,
		41.225510, 33.898235, 32.383972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442764, 33.980984, 32.351864>,  <40.760391, 33.378819, 32.446198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442764, 33.980984, 32.351864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792984, 34.070374, 32.180527>,  <41.003117, 34.124008, 32.077724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792984, 34.070374, 32.180527>,  <40.442764, 33.980984, 32.351864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792984, 34.070374, 32.180527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480385, 0.497078, -0.722595,
		0.051441, 0.838436, 0.542567,
		0.875548, 0.223470, -0.428342,
		41.055649, 34.137413, 32.052025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324055, 34.661755, 32.188438>,  <40.442764, 33.980984, 32.351864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324055, 34.661755, 32.188438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634846, 34.548904, 31.963331>,  <40.821320, 34.481194, 31.828266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634846, 34.548904, 31.963331>,  <40.324055, 34.661755, 32.188438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634846, 34.548904, 31.963331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392098, 0.482502, -0.783231,
		0.492506, 0.829215, 0.264274,
		0.776979, -0.282125, -0.562768,
		40.867939, 34.464268, 31.794500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391479, 35.216682, 31.801277>,  <40.324055, 34.661755, 32.188438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391479, 35.216682, 31.801277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585175, 34.933807, 31.595209>,  <40.701389, 34.764084, 31.471567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585175, 34.933807, 31.595209>,  <40.391479, 35.216682, 31.801277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585175, 34.933807, 31.595209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401252, 0.343743, -0.849021,
		0.777504, 0.617840, -0.117308,
		0.484236, -0.707188, -0.515171,
		40.730446, 34.721649, 31.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709686, 35.631645, 31.223745>,  <40.391479, 35.216682, 31.801277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709686, 35.631645, 31.223745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723652, 35.254311, 31.091747>,  <40.732029, 35.027908, 31.012548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723652, 35.254311, 31.091747>,  <40.709686, 35.631645, 31.223745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723652, 35.254311, 31.091747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332784, 0.300382, -0.893882,
		0.942357, 0.141023, -0.303441,
		0.034910, -0.943336, -0.329997,
		40.734123, 34.971310, 30.992748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124607, 35.597504, 30.607403>,  <40.709686, 35.631645, 31.223745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124607, 35.597504, 30.607403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907639, 35.263168, 30.573578>,  <40.777458, 35.062569, 30.553282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907639, 35.263168, 30.573578>,  <41.124607, 35.597504, 30.607403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907639, 35.263168, 30.573578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388471, 0.338799, -0.856917,
		0.744893, -0.431963, -0.508471,
		-0.542426, -0.835837, -0.084563,
		40.744911, 35.012417, 30.548208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330856, 35.224564, 29.954266>,  <41.124607, 35.597504, 30.607403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330856, 35.224564, 29.954266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957901, 35.109837, 30.042263>,  <40.734127, 35.041000, 30.095062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957901, 35.109837, 30.042263>,  <41.330856, 35.224564, 29.954266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957901, 35.109837, 30.042263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313337, 0.337858, -0.887509,
		0.180221, -0.896432, -0.404882,
		-0.932384, -0.286812, 0.219996,
		40.678185, 35.023792, 30.108261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160385, 34.796810, 29.296307>,  <41.330856, 35.224564, 29.954266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160385, 34.796810, 29.296307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821083, 34.887608, 29.487700>,  <40.617504, 34.942085, 29.602535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.821083, 34.887608, 29.487700>,  <41.160385, 34.796810, 29.296307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821083, 34.887608, 29.487700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496534, -0.026660, -0.867608,
		-0.184183, -0.973532, 0.135323,
		-0.848251, 0.226991, 0.478482,
		40.566608, 34.955704, 29.631245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576649, 34.346973, 28.933784>,  <41.160385, 34.796810, 29.296307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576649, 34.346973, 28.933784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420200, 34.660656, 29.126469>,  <40.326332, 34.848866, 29.242079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420200, 34.660656, 29.126469>,  <40.576649, 34.346973, 28.933784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420200, 34.660656, 29.126469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511316, 0.250040, -0.822214,
		-0.765233, -0.567890, 0.303182,
		-0.391120, 0.784208, 0.481709,
		40.302864, 34.895920, 29.270981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944336, 34.255943, 28.654722>,  <40.576649, 34.346973, 28.933784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944336, 34.255943, 28.654722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965321, 34.629341, 28.796616>,  <39.977913, 34.853378, 28.881752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965321, 34.629341, 28.796616>,  <39.944336, 34.255943, 28.654722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965321, 34.629341, 28.796616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533862, 0.326418, -0.780027,
		-0.843942, -0.148455, 0.515483,
		0.052464, 0.933495, 0.354733,
		39.981060, 34.909389, 28.903036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359837, 34.587009, 28.442270>,  <39.944336, 34.255943, 28.654722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359837, 34.587009, 28.442270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619289, 34.882286, 28.516411>,  <39.774960, 35.059452, 28.560896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619289, 34.882286, 28.516411>,  <39.359837, 34.587009, 28.442270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619289, 34.882286, 28.516411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362278, 0.513619, -0.777785,
		-0.669353, 0.437346, 0.600579,
		0.648630, 0.738190, 0.185352,
		39.813877, 35.103745, 28.572016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933582, 35.091240, 28.520670>,  <39.359837, 34.587009, 28.442270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933582, 35.091240, 28.520670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294647, 35.241135, 28.436035>,  <39.511288, 35.331074, 28.385254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294647, 35.241135, 28.436035>,  <38.933582, 35.091240, 28.520670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294647, 35.241135, 28.436035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377546, 0.453624, -0.807269,
		-0.206537, 0.808576, 0.550952,
		0.902663, 0.374741, -0.211585,
		39.565445, 35.353558, 28.372561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765903, 35.849182, 28.294481>,  <38.933582, 35.091240, 28.520670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765903, 35.849182, 28.294481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101486, 35.702789, 28.133385>,  <39.302837, 35.614952, 28.036728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101486, 35.702789, 28.133385>,  <38.765903, 35.849182, 28.294481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101486, 35.702789, 28.133385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213711, 0.459036, -0.862331,
		0.500472, 0.809531, 0.306898,
		0.838961, -0.365985, -0.402740,
		39.353176, 35.592995, 28.012562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077621, 36.378109, 27.954227>,  <38.765903, 35.849182, 28.294481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077621, 36.378109, 27.954227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168953, 36.023346, 27.793596>,  <39.223751, 35.810490, 27.697218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168953, 36.023346, 27.793596>,  <39.077621, 36.378109, 27.954227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168953, 36.023346, 27.793596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153540, 0.374508, -0.914423,
		0.961401, 0.270447, -0.050665,
		0.228329, -0.886906, -0.401576,
		39.237450, 35.757275, 27.673122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098282, 37.093784, 27.636150>,  <39.077621, 36.378109, 27.954227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098282, 37.093784, 27.636150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953327, 37.466518, 27.643816>,  <38.866356, 37.690159, 27.648415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953327, 37.466518, 27.643816>,  <39.098282, 37.093784, 27.636150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953327, 37.466518, 27.643816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433563, -0.186740, 0.881562,
		0.825045, 0.311158, 0.471679,
		-0.362387, 0.931831, 0.019162,
		38.844612, 37.746067, 27.649565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210358, 37.278439, 28.355688>,  <39.098282, 37.093784, 27.636150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210358, 37.278439, 28.355688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932579, 37.523026, 28.203981>,  <38.765911, 37.669777, 28.112957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932579, 37.523026, 28.203981>,  <39.210358, 37.278439, 28.355688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932579, 37.523026, 28.203981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499447, -0.030199, 0.865818,
		0.517967, 0.790692, 0.326368,
		-0.694451, 0.611469, -0.379267,
		38.724243, 37.706467, 28.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235905, 37.832207, 28.782650>,  <39.210358, 37.278439, 28.355688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235905, 37.832207, 28.782650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877163, 37.800381, 28.608603>,  <38.661919, 37.781284, 28.504173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877163, 37.800381, 28.608603>,  <39.235905, 37.832207, 28.782650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877163, 37.800381, 28.608603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422639, -0.136131, 0.896016,
		-0.130526, 0.987490, 0.088462,
		-0.896850, -0.079566, -0.435120,
		38.608109, 37.776512, 28.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856812, 38.145485, 29.203474>,  <39.235905, 37.832207, 28.782650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856812, 38.145485, 29.203474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576408, 37.950100, 28.995632>,  <38.408165, 37.832867, 28.870926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576408, 37.950100, 28.995632>,  <38.856812, 38.145485, 29.203474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576408, 37.950100, 28.995632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350874, -0.398085, 0.847594,
		-0.620867, 0.776486, 0.107670,
		-0.701007, -0.488465, -0.519607,
		38.366108, 37.803562, 28.839750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162777, 38.249996, 29.544535>,  <38.856812, 38.145485, 29.203474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162777, 38.249996, 29.544535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161278, 37.921196, 29.316746>,  <38.160378, 37.723915, 29.180073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.161278, 37.921196, 29.316746>,  <38.162777, 38.249996, 29.544535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161278, 37.921196, 29.316746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342431, -0.533990, 0.773043,
		-0.939536, 0.197903, -0.279477,
		-0.003749, -0.822003, -0.569471,
		38.160152, 37.674595, 29.145905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470036, 38.078323, 29.497065>,  <38.162777, 38.249996, 29.544535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470036, 38.078323, 29.497065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639683, 37.729904, 29.397943>,  <37.741470, 37.520855, 29.338470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639683, 37.729904, 29.397943>,  <37.470036, 38.078323, 29.497065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639683, 37.729904, 29.397943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618184, -0.478423, 0.623667,
		-0.661797, -0.111317, -0.741372,
		0.424114, -0.871045, -0.247805,
		37.766918, 37.468590, 29.323603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878101, 37.684254, 29.297060>,  <37.470036, 38.078323, 29.497065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878101, 37.684254, 29.297060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179882, 37.436859, 29.384949>,  <37.360950, 37.288422, 29.437681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179882, 37.436859, 29.384949>,  <36.878101, 37.684254, 29.297060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179882, 37.436859, 29.384949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640026, -0.619035, 0.455151,
		-0.145489, -0.484017, -0.862879,
		0.754454, -0.618485, 0.219721,
		37.406219, 37.251312, 29.450865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655575, 37.025246, 29.116144>,  <36.878101, 37.684254, 29.297060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655575, 37.025246, 29.116144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959534, 36.934563, 29.359837>,  <37.141911, 36.880154, 29.506052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959534, 36.934563, 29.359837>,  <36.655575, 37.025246, 29.116144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959534, 36.934563, 29.359837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553704, -0.716721, 0.423937,
		0.340539, -0.659482, -0.670162,
		0.759898, -0.226704, 0.609229,
		37.187504, 36.866550, 29.542604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656605, 36.301617, 29.097082>,  <36.655575, 37.025246, 29.116144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656605, 36.301617, 29.097082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866859, 36.380310, 29.428143>,  <36.993011, 36.427525, 29.626778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866859, 36.380310, 29.428143>,  <36.656605, 36.301617, 29.097082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866859, 36.380310, 29.428143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487357, -0.727781, 0.482512,
		0.697274, -0.656986, -0.286668,
		0.525635, 0.196733, 0.827649,
		37.024551, 36.439331, 29.676437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921291, 35.675552, 29.223207>,  <36.656605, 36.301617, 29.097082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921291, 35.675552, 29.223207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940533, 35.892002, 29.559032>,  <36.952076, 36.021873, 29.760529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940533, 35.892002, 29.559032>,  <36.921291, 35.675552, 29.223207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940533, 35.892002, 29.559032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495913, -0.716685, 0.490339,
		0.867039, -0.439936, 0.233880,
		0.048100, 0.541127, 0.839564,
		36.954964, 36.054340, 29.810902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046375, 35.162891, 29.785736>,  <36.921291, 35.675552, 29.223207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046375, 35.162891, 29.785736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.877354, 35.490120, 29.941786>,  <36.775940, 35.686459, 30.035416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.877354, 35.490120, 29.941786>,  <37.046375, 35.162891, 29.785736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877354, 35.490120, 29.941786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489214, -0.568225, 0.661657,
		0.762964, 0.088733, 0.640322,
		-0.422557, 0.818075, 0.390126,
		36.750587, 35.735542, 30.058823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123062, 35.122684, 30.530197>,  <37.046375, 35.162891, 29.785736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123062, 35.122684, 30.530197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808548, 35.352749, 30.439907>,  <36.619839, 35.490788, 30.385733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.808548, 35.352749, 30.439907>,  <37.123062, 35.122684, 30.530197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808548, 35.352749, 30.439907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511169, -0.400318, 0.760561,
		0.347081, 0.713399, 0.608766,
		-0.786283, 0.575159, -0.225725,
		36.572662, 35.525295, 30.372190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.867058, 38.500893, 24.054384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469692, 38.541241, 24.076103>,  <39.231274, 38.565449, 24.089134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469692, 38.541241, 24.076103>,  <39.867058, 38.500893, 24.054384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469692, 38.541241, 24.076103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060479, 0.059295, 0.996407,
		0.097288, 0.993131, -0.065005,
		-0.993417, 0.100869, 0.054295,
		39.171669, 38.571503, 24.092392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799919, 38.993698, 24.605564>,  <39.867058, 38.500893, 24.054384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799919, 38.993698, 24.605564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433739, 38.843052, 24.548841>,  <39.214031, 38.752663, 24.514809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433739, 38.843052, 24.548841>,  <39.799919, 38.993698, 24.605564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433739, 38.843052, 24.548841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136749, -0.040280, 0.989786,
		-0.378480, 0.925494, -0.014627,
		-0.915452, -0.376615, -0.141806,
		39.159103, 38.730068, 24.506300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457909, 39.340652, 25.086727>,  <39.799919, 38.993698, 24.605564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457909, 39.340652, 25.086727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283703, 38.989468, 25.007217>,  <39.179180, 38.778755, 24.959513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283703, 38.989468, 25.007217>,  <39.457909, 39.340652, 25.086727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283703, 38.989468, 25.007217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214818, -0.113069, 0.970087,
		-0.874173, 0.465189, -0.139359,
		-0.435517, -0.877961, -0.198773,
		39.153049, 38.726078, 24.947586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893608, 39.444157, 25.477259>,  <39.457909, 39.340652, 25.086727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893608, 39.444157, 25.477259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944016, 39.052975, 25.410652>,  <38.974258, 38.818268, 25.370687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944016, 39.052975, 25.410652>,  <38.893608, 39.444157, 25.477259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944016, 39.052975, 25.410652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181987, -0.187795, 0.965201,
		-0.975193, -0.091327, -0.201639,
		0.126016, -0.977953, -0.166516,
		38.981819, 38.759590, 25.360697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213078, 39.141304, 25.732918>,  <38.893608, 39.444157, 25.477259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213078, 39.141304, 25.732918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494743, 38.857605, 25.719477>,  <38.663742, 38.687386, 25.711412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494743, 38.857605, 25.719477>,  <38.213078, 39.141304, 25.732918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494743, 38.857605, 25.719477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252280, -0.294151, 0.921862,
		-0.663709, -0.640663, -0.386058,
		0.704163, -0.709243, -0.033604,
		38.705994, 38.644833, 25.709396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933235, 38.573288, 26.105844>,  <38.213078, 39.141304, 25.732918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933235, 38.573288, 26.105844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315125, 38.460472, 26.067989>,  <38.544258, 38.392784, 26.045277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315125, 38.460472, 26.067989>,  <37.933235, 38.573288, 26.105844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315125, 38.460472, 26.067989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016799, -0.266502, 0.963688,
		-0.297029, -0.921643, -0.249696,
		0.954721, -0.282049, -0.094641,
		38.601540, 38.375858, 26.039598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939747, 37.901794, 26.292147>,  <37.933235, 38.573288, 26.105844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939747, 37.901794, 26.292147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319378, 38.021225, 26.332361>,  <38.547157, 38.092884, 26.356491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319378, 38.021225, 26.332361>,  <37.939747, 37.901794, 26.292147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319378, 38.021225, 26.332361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055496, -0.155688, 0.986246,
		0.310124, -0.941601, -0.131189,
		0.949075, 0.298578, 0.100538,
		38.604099, 38.110798, 26.362522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185787, 37.422607, 26.589893>,  <37.939747, 37.901794, 26.292147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185787, 37.422607, 26.589893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428013, 37.735085, 26.650602>,  <38.573349, 37.922569, 26.687029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428013, 37.735085, 26.650602>,  <38.185787, 37.422607, 26.589893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428013, 37.735085, 26.650602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013838, -0.180355, 0.983504,
		0.795676, -0.597676, -0.098407,
		0.605565, 0.781189, 0.151774,
		38.609684, 37.969440, 26.696135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780853, 37.101040, 26.857325>,  <38.185787, 37.422607, 26.589893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780853, 37.101040, 26.857325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785526, 37.479504, 26.986717>,  <38.788330, 37.706581, 27.064352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785526, 37.479504, 26.986717>,  <38.780853, 37.101040, 26.857325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785526, 37.479504, 26.986717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082102, -0.323317, 0.942722,
		0.996555, 0.015547, -0.081459,
		0.011680, 0.946163, 0.323480,
		38.789032, 37.763351, 27.083761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078842, 36.464874, 27.155540>,  <38.780853, 37.101040, 26.857325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078842, 36.464874, 27.155540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183231, 36.078835, 27.164324>,  <39.245865, 35.847210, 27.169594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183231, 36.078835, 27.164324>,  <39.078842, 36.464874, 27.155540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183231, 36.078835, 27.164324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153186, -0.063862, -0.986132,
		0.953115, 0.253988, -0.164506,
		0.260971, -0.965097, 0.021961,
		39.261524, 35.789307, 27.170912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555771, 36.344280, 26.504871>,  <39.078842, 36.464874, 27.155540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555771, 36.344280, 26.504871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425976, 35.984455, 26.621832>,  <39.348099, 35.768559, 26.692007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425976, 35.984455, 26.621832>,  <39.555771, 36.344280, 26.504871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425976, 35.984455, 26.621832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137981, -0.260804, -0.955480,
		0.935773, -0.350383, -0.039496,
		-0.324483, -0.899563, 0.292400,
		39.328632, 35.714588, 26.709553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875263, 35.874634, 25.967579>,  <39.555771, 36.344280, 26.504871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875263, 35.874634, 25.967579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597408, 35.643681, 26.139208>,  <39.430695, 35.505108, 26.242186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597408, 35.643681, 26.139208>,  <39.875263, 35.874634, 25.967579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597408, 35.643681, 26.139208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244848, -0.371085, -0.895738,
		0.676404, -0.727275, 0.116400,
		-0.694642, -0.577380, 0.429075,
		39.389015, 35.470467, 26.267931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007072, 35.132038, 25.749941>,  <39.875263, 35.874634, 25.967579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007072, 35.132038, 25.749941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630367, 35.214951, 25.855854>,  <39.404343, 35.264698, 25.919403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630367, 35.214951, 25.855854>,  <40.007072, 35.132038, 25.749941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630367, 35.214951, 25.855854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305592, -0.198976, -0.931140,
		-0.140325, -0.957832, 0.250733,
		-0.941766, 0.207284, 0.264784,
		39.347839, 35.277138, 25.935289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672825, 34.528919, 25.661900>,  <40.007072, 35.132038, 25.749941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672825, 34.528919, 25.661900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400871, 34.820541, 25.630316>,  <39.237698, 34.995514, 25.611366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400871, 34.820541, 25.630316>,  <39.672825, 34.528919, 25.661900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400871, 34.820541, 25.630316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265688, -0.345255, -0.900116,
		-0.683494, -0.590998, 0.428435,
		-0.679886, 0.729054, -0.078959,
		39.196907, 35.039257, 25.606628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180321, 34.158836, 25.366816>,  <39.672825, 34.528919, 25.661900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180321, 34.158836, 25.366816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117912, 34.550220, 25.312742>,  <39.080467, 34.785049, 25.280298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117912, 34.550220, 25.312742>,  <39.180321, 34.158836, 25.366816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117912, 34.550220, 25.312742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204733, -0.165920, -0.964653,
		-0.966303, -0.122833, 0.226211,
		-0.156024, 0.978459, -0.135181,
		39.071106, 34.843758, 25.272188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713947, 34.137939, 24.875433>,  <39.180321, 34.158836, 25.366816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713947, 34.137939, 24.875433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822681, 34.522526, 24.858997>,  <38.887924, 34.753277, 24.849136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822681, 34.522526, 24.858997>,  <38.713947, 34.137939, 24.875433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822681, 34.522526, 24.858997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126714, -0.006563, -0.991917,
		-0.953964, 0.274849, 0.120047,
		0.271840, 0.961465, -0.041088,
		38.904232, 34.810966, 24.846670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266479, 34.519978, 24.525591>,  <38.713947, 34.137939, 24.875433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266479, 34.519978, 24.525591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615070, 34.713661, 24.494434>,  <38.824226, 34.829872, 24.475740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615070, 34.713661, 24.494434>,  <38.266479, 34.519978, 24.525591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615070, 34.713661, 24.494434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059414, -0.053416, -0.996803,
		-0.486823, 0.873320, -0.017782,
		0.871478, 0.484210, -0.077892,
		38.876514, 34.858925, 24.471067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127270, 35.008598, 24.033056>,  <38.266479, 34.519978, 24.525591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127270, 35.008598, 24.033056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525490, 34.975693, 24.014637>,  <38.764420, 34.955948, 24.003586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525490, 34.975693, 24.014637>,  <38.127270, 35.008598, 24.033056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525490, 34.975693, 24.014637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035428, 0.126170, -0.991376,
		0.087367, 0.988592, 0.122693,
		0.995546, -0.082266, -0.046047,
		38.824154, 34.951012, 24.000822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271767, 35.459015, 23.508780>,  <38.127270, 35.008598, 24.033056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271767, 35.459015, 23.508780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600239, 35.235188, 23.553600>,  <38.797321, 35.100891, 23.580494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600239, 35.235188, 23.553600>,  <38.271767, 35.459015, 23.508780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600239, 35.235188, 23.553600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087826, -0.070097, -0.993666,
		0.563875, 0.825817, -0.008418,
		0.821177, -0.559564, 0.112054,
		38.846592, 35.067318, 23.587217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766418, 35.671776, 23.063023>,  <38.271767, 35.459015, 23.508780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766418, 35.671776, 23.063023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927841, 35.314133, 23.140697>,  <39.024696, 35.099545, 23.187302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927841, 35.314133, 23.140697>,  <38.766418, 35.671776, 23.063023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927841, 35.314133, 23.140697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161368, -0.139358, -0.977005,
		0.900612, 0.425612, 0.088042,
		0.403556, -0.894110, 0.194188,
		39.048908, 35.045898, 23.198954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294621, 35.645481, 22.616541>,  <38.766418, 35.671776, 23.063023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294621, 35.645481, 22.616541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239925, 35.266441, 22.732029>,  <39.207108, 35.039017, 22.801323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239925, 35.266441, 22.732029>,  <39.294621, 35.645481, 22.616541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239925, 35.266441, 22.732029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319192, -0.318061, -0.892723,
		0.937774, -0.029913, 0.345957,
		-0.136739, -0.947598, 0.288721,
		39.198902, 34.982162, 22.818645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946983, 35.320103, 22.460045>,  <39.294621, 35.645481, 22.616541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946983, 35.320103, 22.460045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645943, 35.057499, 22.480429>,  <39.465321, 34.899937, 22.492659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645943, 35.057499, 22.480429>,  <39.946983, 35.320103, 22.460045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645943, 35.057499, 22.480429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200801, -0.302517, -0.931752,
		0.627118, -0.691001, 0.359501,
		-0.752597, -0.656506, 0.050960,
		39.420162, 34.860546, 22.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155006, 34.773094, 22.038746>,  <39.946983, 35.320103, 22.460045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155006, 34.773094, 22.038746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762028, 34.708084, 22.075384>,  <39.526241, 34.669079, 22.097366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762028, 34.708084, 22.075384>,  <40.155006, 34.773094, 22.038746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762028, 34.708084, 22.075384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013297, -0.428707, -0.903346,
		0.186087, -0.888704, 0.419019,
		-0.982443, -0.162529, 0.091594,
		39.467293, 34.659325, 22.102861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.704468, 35.359650, 22.920502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073895, 35.508331, 22.882862>,  <34.295551, 35.597542, 22.860279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073895, 35.508331, 22.882862>,  <33.704468, 35.359650, 22.920502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073895, 35.508331, 22.882862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150184, -0.124879, 0.980740,
		0.352796, -0.919913, -0.171158,
		0.923569, 0.371707, -0.094100,
		34.350964, 35.619843, 22.854631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150925, 34.862679, 23.235334>,  <33.704468, 35.359650, 22.920502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150925, 34.862679, 23.235334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345707, 35.210064, 23.198145>,  <34.462574, 35.418495, 23.175831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.345707, 35.210064, 23.198145>,  <34.150925, 34.862679, 23.235334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345707, 35.210064, 23.198145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250999, -0.037183, 0.967273,
		0.836586, -0.494354, -0.236090,
		0.486953, 0.868465, -0.092975,
		34.491795, 35.470604, 23.170252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846809, 34.727894, 23.507675>,  <34.150925, 34.862679, 23.235334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846809, 34.727894, 23.507675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776878, 35.120247, 23.541851>,  <34.734921, 35.355659, 23.562357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776878, 35.120247, 23.541851>,  <34.846809, 34.727894, 23.507675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776878, 35.120247, 23.541851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205841, -0.048448, 0.977386,
		0.962843, 0.188456, -0.193436,
		-0.174823, 0.980886, 0.085439,
		34.724430, 35.414513, 23.567482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343773, 34.914478, 24.032812>,  <34.846809, 34.727894, 23.507675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343773, 34.914478, 24.032812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073727, 35.209534, 24.028454>,  <34.911701, 35.386566, 24.025839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073727, 35.209534, 24.028454>,  <35.343773, 34.914478, 24.032812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073727, 35.209534, 24.028454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056860, 0.066753, 0.996148,
		0.735520, 0.671893, -0.087008,
		-0.675113, 0.737634, -0.010894,
		34.871193, 35.430824, 24.025185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673676, 35.560841, 24.240898>,  <35.343773, 34.914478, 24.032812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673676, 35.560841, 24.240898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281017, 35.592674, 24.310232>,  <35.045422, 35.611774, 24.351831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281017, 35.592674, 24.310232>,  <35.673676, 35.560841, 24.240898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281017, 35.592674, 24.310232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182550, 0.128726, 0.974734,
		0.055264, 0.988481, -0.140891,
		-0.981642, 0.079587, 0.173333,
		34.986526, 35.616550, 24.362232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539398, 36.028683, 24.817186>,  <35.673676, 35.560841, 24.240898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539398, 36.028683, 24.817186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191959, 35.831478, 24.797287>,  <34.983494, 35.713158, 24.785347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191959, 35.831478, 24.797287>,  <35.539398, 36.028683, 24.817186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191959, 35.831478, 24.797287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024503, -0.057540, 0.998042,
		-0.494907, 0.868119, 0.037899,
		-0.868600, -0.493009, -0.049748,
		34.931377, 35.683575, 24.782362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150818, 36.257160, 25.374252>,  <35.539398, 36.028683, 24.817186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150818, 36.257160, 25.374252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962433, 35.919586, 25.271521>,  <34.849400, 35.717041, 25.209883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962433, 35.919586, 25.271521>,  <35.150818, 36.257160, 25.374252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962433, 35.919586, 25.271521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221918, -0.168428, 0.960409,
		-0.853781, 0.509315, -0.107961,
		-0.470967, -0.843937, -0.256827,
		34.821144, 35.666405, 25.194473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450382, 36.309116, 25.657906>,  <35.150818, 36.257160, 25.374252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450382, 36.309116, 25.657906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547367, 35.927471, 25.587616>,  <34.605556, 35.698483, 25.545443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547367, 35.927471, 25.587616>,  <34.450382, 36.309116, 25.657906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547367, 35.927471, 25.587616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322549, -0.250102, 0.912913,
		-0.914972, -0.164667, -0.368389,
		0.242461, -0.954114, -0.175724,
		34.620106, 35.641235, 25.534899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867874, 35.853954, 25.995590>,  <34.450382, 36.309116, 25.657906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867874, 35.853954, 25.995590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.178120, 35.603443, 25.964104>,  <34.364265, 35.453136, 25.945211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.178120, 35.603443, 25.964104>,  <33.867874, 35.853954, 25.995590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178120, 35.603443, 25.964104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342697, -0.522542, 0.780711,
		-0.530088, -0.578545, -0.619914,
		0.775607, -0.626287, -0.078728,
		34.410805, 35.415558, 25.940489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635891, 35.235332, 26.211317>,  <33.867874, 35.853954, 25.995590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635891, 35.235332, 26.211317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.030170, 35.177101, 26.245289>,  <34.266739, 35.142162, 26.265671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.030170, 35.177101, 26.245289>,  <33.635891, 35.235332, 26.211317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030170, 35.177101, 26.245289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139534, -0.422232, 0.895684,
		-0.094536, -0.894721, -0.436505,
		0.985694, -0.145582, 0.084928,
		34.325878, 35.133427, 26.270767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683704, 34.734436, 26.692524>,  <33.635891, 35.235332, 26.211317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683704, 34.734436, 26.692524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073967, 34.815826, 26.659821>,  <34.308125, 34.864662, 26.640198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073967, 34.815826, 26.659821>,  <33.683704, 34.734436, 26.692524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073967, 34.815826, 26.659821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161350, -0.413635, 0.896032,
		0.148504, -0.887414, -0.436398,
		0.975660, 0.203477, -0.081758,
		34.366665, 34.876869, 26.635294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102375, 34.076683, 26.579500>,  <33.683704, 34.734436, 26.692524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102375, 34.076683, 26.579500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296223, 34.375576, 26.761395>,  <34.412533, 34.554913, 26.870531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.296223, 34.375576, 26.761395>,  <34.102375, 34.076683, 26.579500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296223, 34.375576, 26.761395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053362, -0.544149, 0.837290,
		0.873096, -0.381501, -0.303578,
		0.484619, 0.747234, 0.454737,
		34.441608, 34.599747, 26.897816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536491, 33.699562, 27.020962>,  <34.102375, 34.076683, 26.579500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536491, 33.699562, 27.020962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565365, 34.076572, 27.151457>,  <34.582687, 34.302780, 27.229753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565365, 34.076572, 27.151457>,  <34.536491, 33.699562, 27.020962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565365, 34.076572, 27.151457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120785, -0.316421, 0.940898,
		0.990051, -0.107322, 0.091003,
		0.072184, 0.942529, 0.326236,
		34.587021, 34.359329, 27.249327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004322, 33.710098, 27.551155>,  <34.536491, 33.699562, 27.020962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004322, 33.710098, 27.551155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784019, 34.038177, 27.613039>,  <34.651836, 34.235027, 27.650169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784019, 34.038177, 27.613039>,  <35.004322, 33.710098, 27.551155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784019, 34.038177, 27.613039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038642, -0.210215, 0.976891,
		0.833772, 0.532050, 0.147472,
		-0.550756, 0.820203, 0.154712,
		34.618793, 34.284237, 27.659452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702652, 33.693710, 27.566307>,  <35.004322, 33.710098, 27.551155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702652, 33.693710, 27.566307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722263, 33.302902, 27.649271>,  <35.734028, 33.068417, 27.699049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722263, 33.302902, 27.649271>,  <35.702652, 33.693710, 27.566307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722263, 33.302902, 27.649271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001162, -0.207605, -0.978212,
		0.998797, 0.048197, -0.009042,
		0.049024, -0.977024, 0.207412,
		35.736969, 33.009796, 27.711494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169895, 33.467049, 27.158419>,  <35.702652, 33.693710, 27.566307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169895, 33.467049, 27.158419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012032, 33.106636, 27.230398>,  <35.917313, 32.890388, 27.273586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012032, 33.106636, 27.230398>,  <36.169895, 33.467049, 27.158419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012032, 33.106636, 27.230398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042846, -0.213679, -0.975964,
		0.917826, -0.377467, 0.122937,
		-0.394663, -0.901033, 0.179947,
		35.893631, 32.836327, 27.284382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648315, 32.932079, 26.884525>,  <36.169895, 33.467049, 27.158419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648315, 32.932079, 26.884525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281990, 32.771610, 26.877176>,  <36.062195, 32.675327, 26.872766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281990, 32.771610, 26.877176>,  <36.648315, 32.932079, 26.884525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281990, 32.771610, 26.877176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137566, -0.270397, -0.952870,
		0.377301, -0.875181, 0.302823,
		-0.915816, -0.401177, -0.018374,
		36.007244, 32.651257, 26.871664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745445, 32.414288, 26.424772>,  <36.648315, 32.932079, 26.884525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745445, 32.414288, 26.424772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352551, 32.489338, 26.423937>,  <36.116814, 32.534370, 26.423435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352551, 32.489338, 26.423937>,  <36.745445, 32.414288, 26.424772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352551, 32.489338, 26.423937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017202, -0.101119, -0.994726,
		-0.186856, -0.977020, 0.102550,
		-0.982237, 0.187634, -0.002088,
		36.057880, 32.545628, 26.423311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493767, 31.778378, 26.048563>,  <36.745445, 32.414288, 26.424772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493767, 31.778378, 26.048563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156902, 31.994028, 26.044476>,  <35.954784, 32.123421, 26.042023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156902, 31.994028, 26.044476>,  <36.493767, 31.778378, 26.048563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156902, 31.994028, 26.044476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027888, -0.062471, -0.997657,
		-0.538503, -0.839904, 0.067646,
		-0.842161, 0.539128, -0.010217,
		35.904255, 32.155766, 26.041410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010788, 31.303366, 25.700886>,  <36.493767, 31.778378, 26.048563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010788, 31.303366, 25.700886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.882641, 31.681187, 25.672077>,  <35.805752, 31.907879, 25.654793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.882641, 31.681187, 25.672077>,  <36.010788, 31.303366, 25.700886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882641, 31.681187, 25.672077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094688, -0.107579, -0.989677,
		-0.942548, -0.310244, 0.123902,
		-0.320371, 0.944551, -0.072022,
		35.786530, 31.964552, 25.650471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346729, 31.278624, 25.293932>,  <36.010788, 31.303366, 25.700886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346729, 31.278624, 25.293932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451580, 31.663931, 25.270597>,  <35.514492, 31.895115, 25.256598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451580, 31.663931, 25.270597>,  <35.346729, 31.278624, 25.293932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451580, 31.663931, 25.270597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053489, -0.045853, -0.997515,
		-0.963549, 0.264600, 0.039505,
		0.262131, 0.963267, -0.058334,
		35.530220, 31.952911, 25.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951870, 31.469679, 24.732140>,  <35.346729, 31.278624, 25.293932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951870, 31.469679, 24.732140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241379, 31.742641, 24.773087>,  <35.415085, 31.906418, 24.797655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241379, 31.742641, 24.773087>,  <34.951870, 31.469679, 24.732140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241379, 31.742641, 24.773087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017676, 0.129967, -0.991361,
		-0.689814, 0.719327, 0.082005,
		0.723771, 0.682405, 0.102368,
		35.458511, 31.947363, 24.803797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720139, 32.025600, 24.399357>,  <34.951870, 31.469679, 24.732140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720139, 32.025600, 24.399357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115879, 32.083782, 24.397150>,  <35.353325, 32.118690, 24.395826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115879, 32.083782, 24.397150>,  <34.720139, 32.025600, 24.399357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115879, 32.083782, 24.397150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011492, 0.040275, -0.999123,
		-0.145101, 0.988546, 0.041517,
		0.989350, 0.145451, -0.005517,
		35.412685, 32.127419, 24.395494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873257, 32.603657, 24.038256>,  <34.720139, 32.025600, 24.399357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873257, 32.603657, 24.038256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209160, 32.387104, 24.021708>,  <35.410702, 32.257172, 24.011778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209160, 32.387104, 24.021708>,  <34.873257, 32.603657, 24.038256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209160, 32.387104, 24.021708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143264, 0.294426, -0.944875,
		0.523716, 0.787542, 0.324807,
		0.839760, -0.541380, -0.041370,
		35.461086, 32.224689, 24.009296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382866, 33.046993, 23.801682>,  <34.873257, 32.603657, 24.038256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382866, 33.046993, 23.801682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491493, 32.671345, 23.717497>,  <35.556671, 32.445953, 23.666986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491493, 32.671345, 23.717497>,  <35.382866, 33.046993, 23.801682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491493, 32.671345, 23.717497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320856, 0.294518, -0.900172,
		0.907359, 0.176933, 0.381306,
		0.271572, -0.939124, -0.210464,
		35.572964, 32.389606, 23.654358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037830, 33.195362, 23.482590>,  <35.382866, 33.046993, 23.801682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037830, 33.195362, 23.482590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959049, 32.818222, 23.375084>,  <35.911781, 32.591938, 23.310579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959049, 32.818222, 23.375084>,  <36.037830, 33.195362, 23.482590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959049, 32.818222, 23.375084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373663, 0.181256, -0.909682,
		0.906413, -0.279593, 0.316611,
		-0.196953, -0.942854, -0.268767,
		35.899963, 32.535366, 23.294455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717197, 32.982090, 23.302799>,  <36.037830, 33.195362, 23.482590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717197, 32.982090, 23.302799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413456, 32.778500, 23.140646>,  <36.231213, 32.656345, 23.043354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413456, 32.778500, 23.140646>,  <36.717197, 32.982090, 23.302799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413456, 32.778500, 23.140646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321345, 0.248394, -0.913804,
		0.565797, -0.824164, -0.025061,
		-0.759349, -0.508974, -0.405381,
		36.185650, 32.625809, 23.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994129, 32.775517, 22.723166>,  <36.717197, 32.982090, 23.302799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994129, 32.775517, 22.723166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609650, 32.714043, 22.631535>,  <36.378963, 32.677158, 22.576557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609650, 32.714043, 22.631535>,  <36.994129, 32.775517, 22.723166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609650, 32.714043, 22.631535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200239, 0.182456, -0.962608,
		0.189747, -0.971127, -0.144600,
		-0.961197, -0.153697, -0.229078,
		36.321289, 32.667938, 22.562811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344109, 32.137978, 22.496510>,  <36.994129, 32.775517, 22.723166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344109, 32.137978, 22.496510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737038, 32.064354, 22.510208>,  <37.972794, 32.020180, 22.518427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.737038, 32.064354, 22.510208>,  <37.344109, 32.137978, 22.496510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737038, 32.064354, 22.510208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032142, 0.014407, 0.999379,
		-0.184436, -0.982810, 0.008236,
		0.982319, -0.184057, 0.034246,
		38.031734, 32.009136, 22.520481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448124, 31.582867, 22.955725>,  <37.344109, 32.137978, 22.496510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448124, 31.582867, 22.955725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789680, 31.790451, 22.939968>,  <37.994614, 31.915001, 22.930513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789680, 31.790451, 22.939968>,  <37.448124, 31.582867, 22.955725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789680, 31.790451, 22.939968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066057, -0.032993, 0.997270,
		0.516243, -0.854162, -0.062453,
		0.853891, 0.518959, -0.039391,
		38.045849, 31.946138, 22.928150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977444, 31.253870, 23.255920>,  <37.448124, 31.582867, 22.955725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977444, 31.253870, 23.255920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126591, 31.623411, 23.290476>,  <38.216080, 31.845137, 23.311209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126591, 31.623411, 23.290476>,  <37.977444, 31.253870, 23.255920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126591, 31.623411, 23.290476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302921, -0.209199, 0.929771,
		0.877045, -0.320514, -0.357859,
		0.372868, 0.923854, 0.086386,
		38.238453, 31.900568, 23.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628162, 31.141550, 23.553616>,  <37.977444, 31.253870, 23.255920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628162, 31.141550, 23.553616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528976, 31.525246, 23.607838>,  <38.469463, 31.755463, 23.640371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528976, 31.525246, 23.607838>,  <38.628162, 31.141550, 23.553616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528976, 31.525246, 23.607838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280944, -0.062708, 0.957673,
		0.927137, 0.275554, -0.253943,
		-0.247967, 0.959238, 0.135554,
		38.454586, 31.813017, 23.648504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196968, 31.417398, 23.807270>,  <38.628162, 31.141550, 23.553616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196968, 31.417398, 23.807270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886471, 31.645912, 23.913921>,  <38.700172, 31.783020, 23.977911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886471, 31.645912, 23.913921>,  <39.196968, 31.417398, 23.807270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886471, 31.645912, 23.913921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354065, 0.045118, 0.934132,
		0.521624, 0.819513, -0.237293,
		-0.776239, 0.571283, 0.266626,
		38.653599, 31.817297, 23.993910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498180, 31.840954, 24.251169>,  <39.196968, 31.417398, 23.807270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498180, 31.840954, 24.251169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112480, 31.897705, 24.340700>,  <38.881062, 31.931755, 24.394419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112480, 31.897705, 24.340700>,  <39.498180, 31.840954, 24.251169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112480, 31.897705, 24.340700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234861, 0.066271, 0.969767,
		0.122756, 0.987663, -0.097224,
		-0.964246, 0.141879, 0.223829,
		38.823208, 31.940269, 24.407848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506767, 32.459240, 24.755499>,  <39.498180, 31.840954, 24.251169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506767, 32.459240, 24.755499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164593, 32.263554, 24.823496>,  <38.959290, 32.146141, 24.864294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164593, 32.263554, 24.823496>,  <39.506767, 32.459240, 24.755499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164593, 32.263554, 24.823496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127332, 0.119490, 0.984636,
		-0.502010, 0.863940, -0.039924,
		-0.855437, -0.489214, 0.169992,
		38.907963, 32.116791, 24.874493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198574, 32.806446, 25.372042>,  <39.506767, 32.459240, 24.755499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198574, 32.806446, 25.372042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.043736, 32.439011, 25.340183>,  <38.950832, 32.218548, 25.321068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.043736, 32.439011, 25.340183>,  <39.198574, 32.806446, 25.372042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043736, 32.439011, 25.340183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092821, -0.124768, 0.987835,
		-0.917353, 0.374998, 0.133562,
		-0.387101, -0.918591, -0.079648,
		38.927605, 32.163433, 25.316288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852509, 32.759693, 25.938574>,  <39.198574, 32.806446, 25.372042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852509, 32.759693, 25.938574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908321, 32.375687, 25.841499>,  <38.941811, 32.145283, 25.783255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908321, 32.375687, 25.841499>,  <38.852509, 32.759693, 25.938574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908321, 32.375687, 25.841499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079545, -0.233425, 0.969116,
		-0.987017, -0.154531, 0.043793,
		0.139536, -0.960017, -0.242686,
		38.950184, 32.087681, 25.768694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240997, 32.431568, 26.193209>,  <38.852509, 32.759693, 25.938574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240997, 32.431568, 26.193209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513653, 32.143291, 26.142647>,  <38.677246, 31.970325, 26.112310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513653, 32.143291, 26.142647>,  <38.240997, 32.431568, 26.193209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513653, 32.143291, 26.142647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201132, -0.350655, 0.914651,
		-0.703503, -0.598037, -0.383974,
		0.681637, -0.720689, -0.126403,
		38.718143, 31.927084, 26.104727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034935, 31.820498, 26.497883>,  <38.240997, 32.431568, 26.193209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034935, 31.820498, 26.497883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421703, 31.727886, 26.455059>,  <38.653763, 31.672319, 26.429365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421703, 31.727886, 26.455059>,  <38.034935, 31.820498, 26.497883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421703, 31.727886, 26.455059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025342, -0.504827, 0.862849,
		-0.253821, -0.831592, -0.493994,
		0.966919, -0.231527, -0.107062,
		38.711781, 31.658428, 26.422941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110596, 31.149170, 26.700508>,  <38.034935, 31.820498, 26.497883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110596, 31.149170, 26.700508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475319, 31.310076, 26.733467>,  <38.694153, 31.406618, 26.753242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475319, 31.310076, 26.733467>,  <38.110596, 31.149170, 26.700508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475319, 31.310076, 26.733467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072613, -0.355471, 0.931862,
		0.404145, -0.843697, -0.353331,
		0.911808, 0.402264, 0.082398,
		38.748863, 31.430756, 26.758186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624840, 30.618736, 26.715746>,  <38.110596, 31.149170, 26.700508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624840, 30.618736, 26.715746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799026, 30.928782, 26.898859>,  <38.903538, 31.114809, 27.008726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.799026, 30.928782, 26.898859>,  <38.624840, 30.618736, 26.715746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799026, 30.928782, 26.898859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035646, -0.522979, 0.851600,
		0.899497, -0.354528, -0.255371,
		0.435469, 0.775115, 0.457781,
		38.929668, 31.161316, 27.036194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173698, 30.362711, 27.242706>,  <38.624840, 30.618736, 26.715746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173698, 30.362711, 27.242706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106628, 30.734650, 27.373713>,  <39.066387, 30.957813, 27.452316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106628, 30.734650, 27.373713>,  <39.173698, 30.362711, 27.242706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106628, 30.734650, 27.373713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302047, -0.267786, 0.914909,
		0.938431, 0.252333, -0.235957,
		-0.167675, 0.929849, 0.327515,
		39.056324, 31.013605, 27.471968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.174179, 34.036144, 21.934286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.833153, 34.232616, 21.862862>,  <39.628536, 34.350498, 21.820007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.833153, 34.232616, 21.862862>,  <40.174179, 34.036144, 21.934286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833153, 34.232616, 21.862862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097926, -0.185479, -0.977757,
		-0.513371, -0.851083, 0.110033,
		-0.852561, 0.491177, -0.178563,
		39.577385, 34.379971, 21.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800652, 33.679520, 21.413954>,  <40.174179, 34.036144, 21.934286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800652, 33.679520, 21.413954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614750, 34.033684, 21.416927>,  <39.503208, 34.246181, 21.418713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614750, 34.033684, 21.416927>,  <39.800652, 33.679520, 21.413954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614750, 34.033684, 21.416927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154727, -0.072942, -0.985261,
		-0.871818, -0.459051, 0.170897,
		-0.464750, 0.885410, 0.007436,
		39.475327, 34.299309, 21.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221882, 33.541920, 20.873363>,  <39.800652, 33.679520, 21.413954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221882, 33.541920, 20.873363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281487, 33.933651, 20.928076>,  <39.317249, 34.168690, 20.960903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281487, 33.933651, 20.928076>,  <39.221882, 33.541920, 20.873363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281487, 33.933651, 20.928076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092165, 0.151477, -0.984155,
		-0.984531, 0.134046, 0.112832,
		0.149014, 0.979330, 0.136779,
		39.326191, 34.227451, 20.969110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668266, 33.916004, 20.420111>,  <39.221882, 33.541920, 20.873363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668266, 33.916004, 20.420111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.977947, 34.153473, 20.507896>,  <39.163757, 34.295956, 20.560568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.977947, 34.153473, 20.507896>,  <38.668266, 33.916004, 20.420111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977947, 34.153473, 20.507896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142459, 0.174402, -0.974315,
		-0.616698, 0.785582, 0.050449,
		0.774202, 0.593671, 0.219467,
		39.210209, 34.331573, 20.573736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479725, 34.419956, 20.059118>,  <38.668266, 33.916004, 20.420111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479725, 34.419956, 20.059118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871162, 34.445168, 20.137486>,  <39.106026, 34.460297, 20.184505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871162, 34.445168, 20.137486>,  <38.479725, 34.419956, 20.059118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871162, 34.445168, 20.137486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185652, 0.140521, -0.972516,
		-0.088830, 0.988069, 0.125811,
		0.978592, 0.063031, 0.195920,
		39.164742, 34.464077, 20.196262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727844, 34.904293, 19.575106>,  <38.479725, 34.419956, 20.059118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727844, 34.904293, 19.575106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069157, 34.725849, 19.683098>,  <39.273945, 34.618782, 19.747892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069157, 34.725849, 19.683098>,  <38.727844, 34.904293, 19.575106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069157, 34.725849, 19.683098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322996, 0.045723, -0.945295,
		0.409366, 0.893807, 0.183108,
		0.853284, -0.446114, 0.269979,
		39.325142, 34.592014, 19.764091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298164, 35.327190, 19.407953>,  <38.727844, 34.904293, 19.575106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298164, 35.327190, 19.407953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441509, 34.955479, 19.443781>,  <39.527515, 34.732452, 19.465279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441509, 34.955479, 19.443781>,  <39.298164, 35.327190, 19.407953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441509, 34.955479, 19.443781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363734, 0.050615, -0.930127,
		0.859812, 0.365899, 0.356148,
		0.358359, -0.929277, 0.089570,
		39.549015, 34.676697, 19.470652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853619, 35.361168, 18.992731>,  <39.298164, 35.327190, 19.407953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853619, 35.361168, 18.992731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805962, 34.965992, 19.032293>,  <39.777367, 34.728886, 19.056030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805962, 34.965992, 19.032293>,  <39.853619, 35.361168, 18.992731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805962, 34.965992, 19.032293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320707, -0.132569, -0.937855,
		0.939656, -0.080016, 0.332633,
		-0.119140, -0.987939, 0.098908,
		39.770218, 34.669609, 19.061966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473404, 35.048737, 18.686247>,  <39.853619, 35.361168, 18.992731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473404, 35.048737, 18.686247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.187927, 34.768620, 18.680136>,  <40.016644, 34.600548, 18.676470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.187927, 34.768620, 18.680136>,  <40.473404, 35.048737, 18.686247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187927, 34.768620, 18.680136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220231, -0.203632, -0.953956,
		0.664941, -0.684192, 0.299557,
		-0.713689, -0.700297, -0.015277,
		39.973820, 34.558529, 18.675552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691910, 34.480404, 18.344406>,  <40.473404, 35.048737, 18.686247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691910, 34.480404, 18.344406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303123, 34.387325, 18.330921>,  <40.069851, 34.331478, 18.322830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303123, 34.387325, 18.330921>,  <40.691910, 34.480404, 18.344406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303123, 34.387325, 18.330921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095738, -0.260724, -0.960655,
		0.214748, -0.936951, 0.275692,
		-0.971966, -0.232693, -0.033712,
		40.011532, 34.317516, 18.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556992, 33.773014, 17.962751>,  <40.691910, 34.480404, 18.344406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556992, 33.773014, 17.962751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201920, 33.956825, 17.951107>,  <39.988876, 34.067112, 17.944120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201920, 33.956825, 17.951107>,  <40.556992, 33.773014, 17.962751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201920, 33.956825, 17.951107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137904, -0.325650, -0.935380,
		-0.439319, -0.826306, 0.352445,
		-0.887683, 0.459534, -0.029113,
		39.935616, 34.094685, 17.942373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163246, 33.328865, 17.588722>,  <40.556992, 33.773014, 17.962751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163246, 33.328865, 17.588722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.954853, 33.668728, 17.556084>,  <39.829819, 33.872646, 17.536501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.954853, 33.668728, 17.556084>,  <40.163246, 33.328865, 17.588722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954853, 33.668728, 17.556084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172901, -0.198662, -0.964696,
		-0.835875, -0.488478, 0.250405,
		-0.520979, 0.849660, -0.081598,
		39.798561, 33.923626, 17.531605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524563, 33.158566, 17.130733>,  <40.163246, 33.328865, 17.588722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524563, 33.158566, 17.130733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590710, 33.546364, 17.058359>,  <39.630398, 33.779041, 17.014935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.590710, 33.546364, 17.058359>,  <39.524563, 33.158566, 17.130733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590710, 33.546364, 17.058359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250387, -0.136181, -0.958520,
		-0.953918, 0.203814, 0.220228,
		0.165369, 0.969492, -0.180938,
		39.640320, 33.837212, 17.004078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469501, 33.245663, 16.386295>,  <39.524563, 33.158566, 17.130733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469501, 33.245663, 16.386295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477840, 33.636215, 16.472309>,  <39.482845, 33.870548, 16.523918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477840, 33.636215, 16.472309>,  <39.469501, 33.245663, 16.386295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477840, 33.636215, 16.472309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205183, 0.214682, -0.954888,
		-0.978502, -0.024214, 0.204813,
		0.020848, 0.976384, 0.215035,
		39.484097, 33.929131, 16.536819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920650, 32.892239, 16.838697>,  <39.469501, 33.245663, 16.386295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920650, 32.892239, 16.838697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703907, 32.556076, 16.842817>,  <38.573860, 32.354378, 16.845289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703907, 32.556076, 16.842817>,  <38.920650, 32.892239, 16.838697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703907, 32.556076, 16.842817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009935, 0.018661, 0.999777,
		-0.840414, 0.541631, -0.018461,
		-0.541855, -0.840409, 0.010302,
		38.541351, 32.303955, 16.845907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362461, 32.998432, 17.281652>,  <38.920650, 32.892239, 16.838697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362461, 32.998432, 17.281652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422684, 32.603016, 17.277237>,  <38.458817, 32.365765, 17.274588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422684, 32.603016, 17.277237>,  <38.362461, 32.998432, 17.281652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422684, 32.603016, 17.277237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049143, -0.003667, 0.998785,
		-0.987380, -0.150914, 0.048028,
		0.150555, -0.988540, -0.011037,
		38.467850, 32.306454, 17.273926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724022, 32.648384, 17.604517>,  <38.362461, 32.998432, 17.281652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724022, 32.648384, 17.604517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052872, 32.421146, 17.619392>,  <38.250183, 32.284805, 17.628317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052872, 32.421146, 17.619392>,  <37.724022, 32.648384, 17.604517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052872, 32.421146, 17.619392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125041, -0.116456, 0.985293,
		-0.555408, -0.814683, -0.166777,
		0.822124, -0.568093, 0.037188,
		38.299507, 32.250717, 17.630548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547909, 31.990976, 17.758022>,  <37.724022, 32.648384, 17.604517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547909, 31.990976, 17.758022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920120, 32.053146, 17.890665>,  <38.143448, 32.090450, 17.970251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920120, 32.053146, 17.890665>,  <37.547909, 31.990976, 17.758022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920120, 32.053146, 17.890665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281031, -0.277536, 0.918692,
		0.234823, -0.948059, -0.214575,
		0.930526, 0.155427, 0.331606,
		38.199280, 32.099773, 17.990147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386467, 31.918209, 18.354445>,  <37.547909, 31.990976, 17.758022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386467, 31.918209, 18.354445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776798, 31.977474, 18.418713>,  <38.010998, 32.013031, 18.457273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776798, 31.977474, 18.418713>,  <37.386467, 31.918209, 18.354445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776798, 31.977474, 18.418713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123967, -0.230224, 0.965209,
		0.179997, -0.961793, -0.206291,
		0.975824, 0.148162, 0.160670,
		38.069546, 32.021923, 18.466913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539211, 31.376963, 18.768602>,  <37.386467, 31.918209, 18.354445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539211, 31.376963, 18.768602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839298, 31.636026, 18.821840>,  <38.019348, 31.791464, 18.853783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839298, 31.636026, 18.821840>,  <37.539211, 31.376963, 18.768602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839298, 31.636026, 18.821840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036372, -0.160567, 0.986354,
		0.660192, -0.744819, -0.096903,
		0.750215, 0.647659, 0.133096,
		38.064362, 31.830324, 18.861769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083828, 31.033121, 19.213015>,  <37.539211, 31.376963, 18.768602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083828, 31.033121, 19.213015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195488, 31.417051, 19.224419>,  <38.262482, 31.647409, 19.231260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195488, 31.417051, 19.224419>,  <38.083828, 31.033121, 19.213015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195488, 31.417051, 19.224419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052581, -0.044923, 0.997606,
		0.958807, -0.276981, -0.063009,
		0.279148, 0.959825, 0.028509,
		38.279232, 31.704998, 19.232971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712105, 31.093250, 19.620184>,  <38.083828, 31.033121, 19.213015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712105, 31.093250, 19.620184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539242, 31.453711, 19.633850>,  <38.435524, 31.669987, 19.642050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539242, 31.453711, 19.633850>,  <38.712105, 31.093250, 19.620184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539242, 31.453711, 19.633850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068465, -0.004990, 0.997641,
		0.899198, 0.433473, -0.059541,
		-0.432153, 0.901153, 0.034165,
		38.409595, 31.724056, 19.644100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198803, 31.505787, 20.083113>,  <38.712105, 31.093250, 19.620184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198803, 31.505787, 20.083113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849934, 31.700947, 20.068907>,  <38.640610, 31.818043, 20.060383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849934, 31.700947, 20.068907>,  <39.198803, 31.505787, 20.083113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849934, 31.700947, 20.068907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100043, 0.248965, 0.963332,
		0.478854, 0.836641, -0.265952,
		-0.872176, 0.487902, -0.035517,
		38.588280, 31.847317, 20.058252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392719, 32.030956, 20.461327>,  <39.198803, 31.505787, 20.083113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392719, 32.030956, 20.461327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993313, 32.020153, 20.480240>,  <38.753670, 32.013672, 20.491589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.993313, 32.020153, 20.480240>,  <39.392719, 32.030956, 20.461327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993313, 32.020153, 20.480240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038307, 0.268713, 0.962458,
		-0.038702, 0.962842, -0.267279,
		-0.998516, -0.027011, 0.047283,
		38.693756, 32.012051, 20.494425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169643, 32.652977, 20.880995>,  <39.392719, 32.030956, 20.461327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169643, 32.652977, 20.880995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851177, 32.411377, 20.895479>,  <38.660099, 32.266418, 20.904171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851177, 32.411377, 20.895479>,  <39.169643, 32.652977, 20.880995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851177, 32.411377, 20.895479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117621, 0.213194, 0.969904,
		-0.593539, 0.767943, -0.240780,
		-0.796164, -0.603997, 0.036213,
		38.612328, 32.230179, 20.906343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692329, 33.011696, 21.159159>,  <39.169643, 32.652977, 20.880995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692329, 33.011696, 21.159159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537251, 32.648022, 21.219921>,  <38.444202, 32.429817, 21.256378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537251, 32.648022, 21.219921>,  <38.692329, 33.011696, 21.159159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537251, 32.648022, 21.219921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161808, 0.229361, 0.959798,
		-0.907473, 0.347533, -0.236037,
		-0.387699, -0.909183, 0.151905,
		38.420940, 32.375267, 21.265493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055584, 33.037178, 21.580635>,  <38.692329, 33.011696, 21.159159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055584, 33.037178, 21.580635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177990, 32.660358, 21.635622>,  <38.251434, 32.434265, 21.668613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177990, 32.660358, 21.635622>,  <38.055584, 33.037178, 21.580635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177990, 32.660358, 21.635622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107426, 0.109302, 0.988186,
		-0.945946, -0.317168, -0.067752,
		0.306015, -0.942050, 0.137466,
		38.269794, 32.377743, 21.676861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588142, 32.706802, 22.065744>,  <38.055584, 33.037178, 21.580635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588142, 32.706802, 22.065744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902054, 32.460377, 22.092827>,  <38.090401, 32.312523, 22.109076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902054, 32.460377, 22.092827>,  <37.588142, 32.706802, 22.065744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902054, 32.460377, 22.092827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117894, -0.041142, 0.992174,
		-0.608456, -0.786621, -0.104918,
		0.784781, -0.616063, 0.067705,
		38.137489, 32.275558, 22.113138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983150, 32.270332, 21.893993>,  <37.588142, 32.706802, 22.065744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983150, 32.270332, 21.893993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.629700, 32.442940, 21.966652>,  <36.417629, 32.546505, 22.010246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.629700, 32.442940, 21.966652>,  <36.983150, 32.270332, 21.893993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629700, 32.442940, 21.966652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129122, 0.148316, -0.980474,
		-0.450036, -0.889827, -0.075337,
		-0.883626, 0.431522, 0.181644,
		36.364613, 32.572395, 22.021145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514011, 32.005821, 21.419819>,  <36.983150, 32.270332, 21.893993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514011, 32.005821, 21.419819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375088, 32.363583, 21.532547>,  <36.291733, 32.578239, 21.600183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375088, 32.363583, 21.532547>,  <36.514011, 32.005821, 21.419819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375088, 32.363583, 21.532547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207416, 0.219814, -0.953237,
		-0.914525, -0.389519, 0.109170,
		-0.347307, 0.894403, 0.281818,
		36.270897, 32.631905, 21.617092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913597, 32.177895, 20.992064>,  <36.514011, 32.005821, 21.419819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913597, 32.177895, 20.992064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039577, 32.537663, 21.113289>,  <36.115166, 32.753525, 21.186024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039577, 32.537663, 21.113289>,  <35.913597, 32.177895, 20.992064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039577, 32.537663, 21.113289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215299, 0.378696, -0.900131,
		-0.924366, 0.218247, 0.312914,
		0.314950, 0.899421, 0.303065,
		36.134064, 32.807487, 21.204208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429100, 32.632156, 20.754271>,  <35.913597, 32.177895, 20.992064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429100, 32.632156, 20.754271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723579, 32.887897, 20.843029>,  <35.900269, 33.041344, 20.896284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723579, 32.887897, 20.843029>,  <35.429100, 32.632156, 20.754271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723579, 32.887897, 20.843029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255410, 0.566112, -0.783762,
		-0.626721, 0.520328, 0.580068,
		0.736197, 0.639355, 0.221897,
		35.944439, 33.079704, 20.909597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047306, 33.240299, 20.815220>,  <35.429100, 32.632156, 20.754271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047306, 33.240299, 20.815220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436367, 33.307598, 20.751173>,  <35.669804, 33.347977, 20.712744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436367, 33.307598, 20.751173>,  <35.047306, 33.240299, 20.815220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436367, 33.307598, 20.751173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220960, 0.457869, -0.861123,
		-0.071569, 0.872954, 0.482524,
		0.972653, 0.168249, -0.160119,
		35.728165, 33.358074, 20.703136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233082, 34.033924, 20.695538>,  <35.047306, 33.240299, 20.815220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233082, 34.033924, 20.695538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503769, 33.798264, 20.518929>,  <35.666183, 33.656868, 20.412964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503769, 33.798264, 20.518929>,  <35.233082, 34.033924, 20.695538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503769, 33.798264, 20.518929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149309, 0.477417, -0.865898,
		0.720940, 0.651896, 0.235113,
		0.676722, -0.589156, -0.441523,
		35.706787, 33.621517, 20.386471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575047, 34.515675, 20.156300>,  <35.233082, 34.033924, 20.695538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575047, 34.515675, 20.156300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658318, 34.135220, 20.065094>,  <35.708282, 33.906944, 20.010370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658318, 34.135220, 20.065094>,  <35.575047, 34.515675, 20.156300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658318, 34.135220, 20.065094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038264, 0.225024, -0.973602,
		0.977341, 0.211411, 0.010451,
		0.208182, -0.951141, -0.228014,
		35.720772, 33.849876, 19.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738884, 35.208237, 19.978903>,  <35.575047, 34.515675, 20.156300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738884, 35.208237, 19.978903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416069, 35.444084, 19.991825>,  <35.222382, 35.585590, 19.999578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416069, 35.444084, 19.991825>,  <35.738884, 35.208237, 19.978903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416069, 35.444084, 19.991825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029043, -0.094275, 0.995122,
		0.589784, 0.802164, 0.093207,
		-0.807038, 0.589615, 0.032305,
		35.173958, 35.620968, 20.001516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844639, 35.734543, 20.490868>,  <35.738884, 35.208237, 19.978903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844639, 35.734543, 20.490868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444908, 35.736080, 20.476311>,  <35.205070, 35.737003, 20.467577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444908, 35.736080, 20.476311>,  <35.844639, 35.734543, 20.490868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444908, 35.736080, 20.476311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036242, 0.034060, 0.998762,
		0.005074, 0.999412, -0.033898,
		-0.999330, 0.003839, -0.036393,
		35.145107, 35.737232, 20.465393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588127, 36.256172, 20.992630>,  <35.844639, 35.734543, 20.490868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588127, 36.256172, 20.992630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264210, 36.027069, 20.941750>,  <35.069859, 35.889606, 20.911221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264210, 36.027069, 20.941750>,  <35.588127, 36.256172, 20.992630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264210, 36.027069, 20.941750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218399, 0.093048, 0.971413,
		-0.544553, 0.814424, -0.200440,
		-0.809792, -0.572762, -0.127200,
		35.021271, 35.855240, 20.903589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072617, 36.640102, 21.392115>,  <35.588127, 36.256172, 20.992630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072617, 36.640102, 21.392115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929451, 36.270191, 21.340448>,  <34.843552, 36.048244, 21.309448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929451, 36.270191, 21.340448>,  <35.072617, 36.640102, 21.392115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929451, 36.270191, 21.340448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340788, 0.000580, 0.940140,
		-0.869347, 0.380504, -0.315361,
		-0.357910, -0.924779, -0.129167,
		34.822079, 35.992756, 21.301699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417236, 36.756905, 21.688354>,  <35.072617, 36.640102, 21.392115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417236, 36.756905, 21.688354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493057, 36.365067, 21.661655>,  <34.538551, 36.129963, 21.645636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493057, 36.365067, 21.661655>,  <34.417236, 36.756905, 21.688354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493057, 36.365067, 21.661655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404189, -0.139805, 0.903928,
		-0.894818, -0.144364, -0.422444,
		0.189555, -0.979598, -0.066750,
		34.549923, 36.071186, 21.641630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839367, 36.283119, 21.777788>,  <34.417236, 36.756905, 21.688354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839367, 36.283119, 21.777788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162632, 36.081402, 21.899483>,  <34.356590, 35.960373, 21.972500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162632, 36.081402, 21.899483>,  <33.839367, 36.283119, 21.777788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162632, 36.081402, 21.899483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345398, 0.012586, 0.938372,
		-0.477043, -0.863441, -0.164010,
		0.808165, -0.504293, 0.304235,
		34.405083, 35.930115, 21.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655563, 35.903809, 22.427494>,  <33.839367, 36.283119, 21.777788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655563, 35.903809, 22.427494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 35.864944, 22.457748>,  <34.290695, 35.841625, 22.475901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052521, 35.864944, 22.457748>,  <33.655563, 35.903809, 22.427494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052521, 35.864944, 22.457748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088067, -0.130793, 0.987490,
		-0.086044, -0.986638, -0.138354,
		0.992391, -0.097152, 0.075637,
		34.350239, 35.835796, 22.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.112396, 37.351688, 17.615587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345810, 37.028316, 17.646372>,  <38.485859, 36.834293, 17.664843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.345810, 37.028316, 17.646372>,  <38.112396, 37.351688, 17.615587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345810, 37.028316, 17.646372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012596, 0.085747, 0.996237,
		-0.811988, -0.582312, 0.039854,
		0.583538, -0.808431, 0.076960,
		38.520870, 36.785786, 17.669460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905197, 37.103020, 18.251081>,  <38.112396, 37.351688, 17.615587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905197, 37.103020, 18.251081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232620, 36.882595, 18.186216>,  <38.429073, 36.750340, 18.147297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.232620, 36.882595, 18.186216>,  <37.905197, 37.103020, 18.251081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232620, 36.882595, 18.186216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160788, -0.051218, 0.985659,
		-0.551463, -0.832892, 0.046679,
		0.818557, -0.551060, -0.162164,
		38.478188, 36.717278, 18.137568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872784, 36.535778, 18.702770>,  <37.905197, 37.103020, 18.251081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872784, 36.535778, 18.702770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265617, 36.578953, 18.640982>,  <38.501316, 36.604858, 18.603909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.265617, 36.578953, 18.640982>,  <37.872784, 36.535778, 18.702770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265617, 36.578953, 18.640982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152573, 0.025661, 0.987959,
		0.110607, -0.993826, 0.008732,
		0.982083, 0.107943, -0.154469,
		38.560242, 36.611336, 18.594641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243900, 36.059933, 19.191332>,  <37.872784, 36.535778, 18.702770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243900, 36.059933, 19.191332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497223, 36.352806, 19.091072>,  <38.649216, 36.528530, 19.030916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.497223, 36.352806, 19.091072>,  <38.243900, 36.059933, 19.191332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497223, 36.352806, 19.091072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261088, 0.102752, 0.959831,
		0.728530, -0.673309, -0.126091,
		0.633306, 0.732186, -0.250651,
		38.687214, 36.572460, 19.015877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640335, 36.117016, 19.829004>,  <38.243900, 36.059933, 19.191332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640335, 36.117016, 19.829004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754608, 36.447849, 19.635376>,  <38.823174, 36.646347, 19.519199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754608, 36.447849, 19.635376>,  <38.640335, 36.117016, 19.829004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754608, 36.447849, 19.635376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255122, 0.421258, 0.870319,
		0.923742, -0.372132, -0.090660,
		0.285682, 0.827079, -0.484072,
		38.840313, 36.695972, 19.490154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143181, 36.342979, 20.248079>,  <38.640335, 36.117016, 19.829004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143181, 36.342979, 20.248079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031559, 36.649166, 20.016151>,  <38.964584, 36.832878, 19.876995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.031559, 36.649166, 20.016151>,  <39.143181, 36.342979, 20.248079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031559, 36.649166, 20.016151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009744, 0.606031, 0.795382,
		0.960226, 0.216305, -0.176575,
		-0.279055, 0.765466, -0.579819,
		38.947842, 36.878807, 19.842205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711586, 36.828987, 20.331800>,  <39.143181, 36.342979, 20.248079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711586, 36.828987, 20.331800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384911, 37.027313, 20.213697>,  <39.188904, 37.146309, 20.142836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.384911, 37.027313, 20.213697>,  <39.711586, 36.828987, 20.331800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384911, 37.027313, 20.213697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022296, 0.538378, 0.842408,
		0.576644, 0.681404, -0.450743,
		-0.816691, 0.495819, -0.295259,
		39.139904, 37.176060, 20.125120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814167, 37.500389, 20.548603>,  <39.711586, 36.828987, 20.331800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814167, 37.500389, 20.548603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419559, 37.479004, 20.486742>,  <39.182793, 37.466171, 20.449625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419559, 37.479004, 20.486742>,  <39.814167, 37.500389, 20.548603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419559, 37.479004, 20.486742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157714, 0.562609, 0.811540,
		0.043620, 0.824992, -0.563458,
		-0.986521, -0.053466, -0.154654,
		39.123604, 37.462963, 20.440346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538010, 38.178764, 20.601648>,  <39.814167, 37.500389, 20.548603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538010, 38.178764, 20.601648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226376, 37.935303, 20.661732>,  <39.039394, 37.789227, 20.697781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226376, 37.935303, 20.661732>,  <39.538010, 38.178764, 20.601648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226376, 37.935303, 20.661732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195150, 0.463148, 0.864529,
		-0.595769, 0.644230, -0.479611,
		-0.779087, -0.608656, 0.150208,
		38.992649, 37.752705, 20.706795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030312, 38.615643, 20.842218>,  <39.538010, 38.178764, 20.601648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030312, 38.615643, 20.842218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875950, 38.259033, 20.937092>,  <38.783333, 38.045067, 20.994015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875950, 38.259033, 20.937092>,  <39.030312, 38.615643, 20.842218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875950, 38.259033, 20.937092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356241, 0.381166, 0.853115,
		-0.850980, 0.244731, -0.464693,
		-0.385908, -0.891527, 0.237181,
		38.760178, 37.991573, 21.008245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259781, 38.738632, 21.072454>,  <39.030312, 38.615643, 20.842218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259781, 38.738632, 21.072454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.394390, 38.406372, 21.249889>,  <38.475155, 38.207016, 21.356350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.394390, 38.406372, 21.249889>,  <38.259781, 38.738632, 21.072454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394390, 38.406372, 21.249889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244712, 0.377737, 0.892990,
		-0.909322, -0.409066, -0.076151,
		0.336527, -0.830650, 0.443587,
		38.495350, 38.157177, 21.382965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721371, 38.518806, 21.402166>,  <38.259781, 38.738632, 21.072454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721371, 38.518806, 21.402166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.051392, 38.376049, 21.577398>,  <38.249405, 38.290394, 21.682537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.051392, 38.376049, 21.577398>,  <37.721371, 38.518806, 21.402166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051392, 38.376049, 21.577398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268093, 0.435224, 0.859480,
		-0.497402, -0.826565, 0.263404,
		0.825056, -0.356891, 0.438077,
		38.298908, 38.268982, 21.708822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989185, 38.406685, 21.318235>,  <37.721371, 38.518806, 21.402166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989185, 38.406685, 21.318235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702919, 38.685711, 21.304213>,  <36.531158, 38.853127, 21.295799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702919, 38.685711, 21.304213>,  <36.989185, 38.406685, 21.318235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702919, 38.685711, 21.304213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195054, -0.247808, -0.948971,
		-0.670658, -0.672304, 0.313409,
		-0.715662, 0.697567, -0.035059,
		36.488220, 38.894981, 21.293695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414177, 38.057598, 21.213640>,  <36.989185, 38.406685, 21.318235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414177, 38.057598, 21.213640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359676, 38.433865, 21.089327>,  <36.326977, 38.659622, 21.014740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359676, 38.433865, 21.089327>,  <36.414177, 38.057598, 21.213640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359676, 38.433865, 21.089327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358347, -0.339263, -0.869763,
		-0.923592, -0.007141, 0.383310,
		-0.136254, 0.940664, -0.310782,
		36.318802, 38.716064, 20.996092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607285, 38.100056, 20.905403>,  <36.414177, 38.057598, 21.213640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607285, 38.100056, 20.905403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817528, 38.412579, 20.770763>,  <35.943672, 38.600090, 20.689980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817528, 38.412579, 20.770763>,  <35.607285, 38.100056, 20.905403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817528, 38.412579, 20.770763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323470, -0.182399, -0.928492,
		-0.786830, 0.596903, 0.156858,
		0.525609, 0.781305, -0.336597,
		35.975212, 38.646969, 20.669785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138596, 38.657673, 20.477165>,  <35.607285, 38.100056, 20.905403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138596, 38.657673, 20.477165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517536, 38.719540, 20.365021>,  <35.744900, 38.756660, 20.297733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517536, 38.719540, 20.365021>,  <35.138596, 38.657673, 20.477165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517536, 38.719540, 20.365021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264128, -0.117483, -0.957306,
		-0.181000, 0.980957, -0.070446,
		0.947352, 0.154666, -0.280363,
		35.801743, 38.765938, 20.280912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086876, 39.104088, 19.934376>,  <35.138596, 38.657673, 20.477165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086876, 39.104088, 19.934376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.455963, 38.955822, 19.892057>,  <35.677418, 38.866863, 19.866667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.455963, 38.955822, 19.892057>,  <35.086876, 39.104088, 19.934376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455963, 38.955822, 19.892057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136173, -0.056691, -0.989062,
		0.360616, 0.927034, -0.102785,
		0.922721, -0.370668, -0.105793,
		35.732780, 38.844624, 19.860319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404778, 39.507477, 19.375704>,  <35.086876, 39.104088, 19.934376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404778, 39.507477, 19.375704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586967, 39.156761, 19.437380>,  <35.696281, 38.946331, 19.474386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586967, 39.156761, 19.437380>,  <35.404778, 39.507477, 19.375704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586967, 39.156761, 19.437380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037390, -0.191887, -0.980704,
		0.889461, 0.440925, -0.120184,
		0.455479, -0.876792, 0.154190,
		35.723610, 38.893723, 19.483637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731537, 39.394863, 18.761877>,  <35.404778, 39.507477, 19.375704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731537, 39.394863, 18.761877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.741688, 39.023304, 18.909668>,  <35.747780, 38.800369, 18.998343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.741688, 39.023304, 18.909668>,  <35.731537, 39.394863, 18.761877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741688, 39.023304, 18.909668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028826, -0.368762, -0.929077,
		0.999262, 0.034230, 0.017417,
		0.025379, -0.928893, 0.369477,
		35.749302, 38.744637, 19.020512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387352, 39.213974, 18.535378>,  <35.731537, 39.394863, 18.761877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387352, 39.213974, 18.535378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.247322, 38.858574, 18.654047>,  <36.163303, 38.645332, 18.725248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.247322, 38.858574, 18.654047>,  <36.387352, 39.213974, 18.535378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247322, 38.858574, 18.654047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093773, -0.348363, -0.932657,
		0.932015, -0.298683, 0.205272,
		-0.350078, -0.888499, 0.296671,
		36.142300, 38.592026, 18.743048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769390, 38.812611, 18.216063>,  <36.387352, 39.213974, 18.535378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769390, 38.812611, 18.216063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.441429, 38.593521, 18.282713>,  <36.244652, 38.462067, 18.322704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.441429, 38.593521, 18.282713>,  <36.769390, 38.812611, 18.216063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441429, 38.593521, 18.282713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202198, -0.549328, -0.810774,
		0.535613, -0.631061, 0.561142,
		-0.819899, -0.547723, 0.166628,
		36.195457, 38.429203, 18.332701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953510, 38.023197, 18.438776>,  <36.769390, 38.812611, 18.216063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953510, 38.023197, 18.438776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590450, 38.077118, 18.279779>,  <36.372616, 38.109470, 18.184381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590450, 38.077118, 18.279779>,  <36.953510, 38.023197, 18.438776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590450, 38.077118, 18.279779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217931, -0.658004, -0.720789,
		-0.358715, -0.740850, 0.567860,
		-0.907650, 0.134804, -0.397490,
		36.318153, 38.117558, 18.160532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744217, 37.369328, 18.037647>,  <36.953510, 38.023197, 18.438776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744217, 37.369328, 18.037647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.462440, 37.617615, 17.899967>,  <36.293377, 37.766586, 17.817360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.462440, 37.617615, 17.899967>,  <36.744217, 37.369328, 18.037647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462440, 37.617615, 17.899967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006383, -0.479390, -0.877579,
		-0.709737, -0.620397, 0.333738,
		-0.704438, 0.620720, -0.344201,
		36.251110, 37.803829, 17.796707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198971, 36.982388, 17.827032>,  <36.744217, 37.369328, 18.037647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198971, 36.982388, 17.827032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.177475, 37.321709, 17.616322>,  <36.164577, 37.525303, 17.489895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.177475, 37.321709, 17.616322>,  <36.198971, 36.982388, 17.827032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177475, 37.321709, 17.616322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164420, -0.527856, -0.833266,
		-0.984926, 0.041837, 0.167843,
		-0.053736, 0.848302, -0.526778,
		36.161354, 37.576199, 17.458288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547951, 36.942638, 17.430031>,  <36.198971, 36.982388, 17.827032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547951, 36.942638, 17.430031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 37.216507, 17.251881>,  <35.917194, 37.380829, 17.144991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 37.216507, 17.251881>,  <35.547951, 36.942638, 17.430031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778728, 37.216507, 17.251881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190250, -0.417633, -0.888475,
		-0.794317, 0.597333, -0.110692,
		0.576944, 0.684672, -0.445376,
		35.951813, 37.421909, 17.118267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345814, 37.588013, 17.042980>,  <35.547951, 36.942638, 17.430031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345814, 37.588013, 17.042980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154217, 37.238396, 17.010452>,  <35.039257, 37.028625, 16.990934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.154217, 37.238396, 17.010452>,  <35.345814, 37.588013, 17.042980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154217, 37.238396, 17.010452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203454, -0.200658, 0.958302,
		-0.853915, 0.442476, 0.273941,
		-0.478994, -0.874043, -0.081321,
		35.010517, 36.976181, 16.986055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031670, 37.533871, 17.632544>,  <35.345814, 37.588013, 17.042980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031670, 37.533871, 17.632544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.982124, 37.158985, 17.502132>,  <34.952396, 36.934055, 17.423885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.982124, 37.158985, 17.502132>,  <35.031670, 37.533871, 17.632544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982124, 37.158985, 17.502132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071797, -0.319234, 0.944952,
		-0.989698, 0.140457, -0.027746,
		-0.123867, -0.937209, -0.326030,
		34.944965, 36.877823, 17.404324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443626, 37.275539, 17.812809>,  <35.031670, 37.533871, 17.632544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443626, 37.275539, 17.812809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646320, 36.933441, 17.769415>,  <34.767937, 36.728184, 17.743378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.646320, 36.933441, 17.769415>,  <34.443626, 37.275539, 17.812809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646320, 36.933441, 17.769415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191130, -0.234159, 0.953225,
		-0.840646, -0.462301, -0.282121,
		0.506738, -0.855247, -0.108485,
		34.798344, 36.676868, 17.736870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084549, 36.727097, 18.151615>,  <34.443626, 37.275539, 17.812809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084549, 36.727097, 18.151615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.466431, 36.611866, 18.121799>,  <34.695560, 36.542728, 18.103910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.466431, 36.611866, 18.121799>,  <34.084549, 36.727097, 18.151615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466431, 36.611866, 18.121799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004796, -0.265369, 0.964135,
		-0.297527, -0.920103, -0.254730,
		0.954701, -0.288078, -0.074541,
		34.752842, 36.525444, 18.099438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923290, 36.040470, 18.341698>,  <34.084549, 36.727097, 18.151615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923290, 36.040470, 18.341698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322155, 36.044659, 18.371534>,  <34.561474, 36.047173, 18.389437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.322155, 36.044659, 18.371534>,  <33.923290, 36.040470, 18.341698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322155, 36.044659, 18.371534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062925, -0.428463, 0.901366,
		0.041399, -0.903499, -0.426587,
		0.997159, 0.010473, 0.074591,
		34.621304, 36.047802, 18.393911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213161, 35.425926, 18.622660>,  <33.923290, 36.040470, 18.341698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213161, 35.425926, 18.622660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492813, 35.686329, 18.740919>,  <34.660606, 35.842571, 18.811874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492813, 35.686329, 18.740919>,  <34.213161, 35.425926, 18.622660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492813, 35.686329, 18.740919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092940, -0.492737, 0.865201,
		0.708926, -0.577413, -0.404993,
		0.699133, 0.651003, 0.295649,
		34.702553, 35.881630, 18.829615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712254, 34.962624, 18.913736>,  <34.213161, 35.425926, 18.622660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712254, 34.962624, 18.913736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.797493, 35.331669, 19.042341>,  <34.848637, 35.553097, 19.119505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.797493, 35.331669, 19.042341>,  <34.712254, 34.962624, 18.913736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797493, 35.331669, 19.042341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245955, -0.369132, 0.896241,
		0.945567, -0.111907, -0.305582,
		0.213095, 0.922615, 0.321514,
		34.861423, 35.608452, 19.138796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163639, 34.841179, 19.405256>,  <34.712254, 34.962624, 18.913736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163639, 34.841179, 19.405256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.067989, 35.220394, 19.489208>,  <35.010597, 35.447922, 19.539579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.067989, 35.220394, 19.489208>,  <35.163639, 34.841179, 19.405256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067989, 35.220394, 19.489208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136755, -0.181114, 0.973907,
		0.961309, 0.261591, -0.086339,
		-0.239128, 0.948034, 0.209881,
		34.996250, 35.504803, 19.552172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839764, 34.551155, 19.295942>,  <35.163639, 34.841179, 19.405256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839764, 34.551155, 19.295942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817959, 34.163616, 19.392580>,  <35.804878, 33.931095, 19.450563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817959, 34.163616, 19.392580>,  <35.839764, 34.551155, 19.295942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817959, 34.163616, 19.392580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107955, -0.246253, -0.963174,
		0.992660, -0.026421, 0.118015,
		-0.054510, -0.968845, 0.241594,
		35.801605, 33.872963, 19.465057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474255, 34.180973, 19.174761>,  <35.839764, 34.551155, 19.295942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474255, 34.180973, 19.174761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.167709, 33.924618, 19.157110>,  <35.983784, 33.770805, 19.146521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.167709, 33.924618, 19.157110>,  <36.474255, 34.180973, 19.174761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167709, 33.924618, 19.157110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278467, -0.269515, -0.921856,
		0.578918, -0.718762, 0.385014,
		-0.766361, -0.640893, -0.044124,
		35.937801, 33.732349, 19.143873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806408, 33.601437, 19.026457>,  <36.474255, 34.180973, 19.174761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806408, 33.601437, 19.026457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.426949, 33.561634, 18.906349>,  <36.199272, 33.537750, 18.834286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.426949, 33.561634, 18.906349>,  <36.806408, 33.601437, 19.026457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426949, 33.561634, 18.906349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312510, -0.147823, -0.938342,
		0.048989, -0.983995, 0.171330,
		-0.948650, -0.099511, -0.300267,
		36.142353, 33.531780, 18.816269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754116, 32.872696, 18.709818>,  <36.806408, 33.601437, 19.026457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754116, 32.872696, 18.709818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.458092, 33.112358, 18.587622>,  <36.280476, 33.256157, 18.514303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.458092, 33.112358, 18.587622>,  <36.754116, 32.872696, 18.709818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458092, 33.112358, 18.587622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168414, -0.274662, -0.946677,
		-0.651113, -0.752047, 0.102360,
		-0.740060, 0.599155, -0.305491,
		36.236073, 33.292103, 18.495974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710583, 32.646973, 17.991865>,  <36.754116, 32.872696, 18.709818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710583, 32.646973, 17.991865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429081, 32.931126, 17.995525>,  <36.260178, 33.101616, 17.997721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429081, 32.931126, 17.995525>,  <36.710583, 32.646973, 17.991865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429081, 32.931126, 17.995525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169921, -0.155802, -0.973064,
		-0.689821, -0.686355, 0.230355,
		-0.703757, 0.710382, 0.009150,
		36.217953, 33.144241, 17.998270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156498, 32.313293, 17.659685>,  <36.710583, 32.646973, 17.991865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156498, 32.313293, 17.659685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.107101, 32.708855, 17.626650>,  <36.077461, 32.946190, 17.606829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.107101, 32.708855, 17.626650>,  <36.156498, 32.313293, 17.659685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107101, 32.708855, 17.626650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051684, -0.076705, -0.995713,
		-0.990998, -0.127234, -0.041638,
		-0.123494, 0.988902, -0.082590,
		36.070053, 33.005524, 17.601873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617817, 32.424816, 17.160925>,  <36.156498, 32.313293, 17.659685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617817, 32.424816, 17.160925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849369, 32.750854, 17.151846>,  <35.988300, 32.946476, 17.146399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849369, 32.750854, 17.151846>,  <35.617817, 32.424816, 17.160925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849369, 32.750854, 17.151846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134402, -0.122834, -0.983284,
		-0.804260, 0.566153, -0.180657,
		0.578880, 0.815096, -0.022698,
		36.023033, 32.995384, 17.145037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313560, 32.767384, 16.582209>,  <35.617817, 32.424816, 17.160925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313560, 32.767384, 16.582209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.680580, 32.912231, 16.647894>,  <35.900795, 32.999138, 16.687305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.680580, 32.912231, 16.647894>,  <35.313560, 32.767384, 16.582209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680580, 32.912231, 16.647894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184694, -0.022422, -0.982540,
		-0.352112, 0.931863, -0.087454,
		0.917554, 0.362117, 0.164215,
		35.955845, 33.020866, 16.697159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315739, 33.387848, 16.058666>,  <35.313560, 32.767384, 16.582209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315739, 33.387848, 16.058666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695271, 33.315556, 16.162247>,  <35.922989, 33.272179, 16.224396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695271, 33.315556, 16.162247>,  <35.315739, 33.387848, 16.058666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695271, 33.315556, 16.162247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272101, 0.051768, -0.960875,
		0.160258, 0.982168, 0.098297,
		0.948830, -0.180735, 0.258953,
		35.979919, 33.261333, 16.239933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.217358, 33.396954, 32.648991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482838, 33.182865, 32.439980>,  <37.642128, 33.054413, 32.314571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482838, 33.182865, 32.439980>,  <37.217358, 33.396954, 32.648991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482838, 33.182865, 32.439980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422440, 0.308285, -0.852352,
		0.617285, 0.786446, -0.021489,
		0.663705, -0.535222, -0.522526,
		37.681950, 33.022297, 32.283222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501759, 33.850533, 32.069870>,  <37.217358, 33.396954, 32.648991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501759, 33.850533, 32.069870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564857, 33.470486, 31.962252>,  <37.602718, 33.242458, 31.897682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564857, 33.470486, 31.962252>,  <37.501759, 33.850533, 32.069870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564857, 33.470486, 31.962252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402436, 0.186944, -0.896157,
		0.901754, 0.249643, -0.352872,
		0.157752, -0.950121, -0.269042,
		37.612183, 33.185448, 31.881538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735134, 33.869064, 31.331726>,  <37.501759, 33.850533, 32.069870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735134, 33.869064, 31.331726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632511, 33.484520, 31.371641>,  <37.570938, 33.253792, 31.395590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632511, 33.484520, 31.371641>,  <37.735134, 33.869064, 31.331726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632511, 33.484520, 31.371641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453190, 0.028459, -0.890959,
		0.853697, -0.273802, -0.442982,
		-0.256554, -0.961365, 0.099789,
		37.555546, 33.196110, 31.401577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859226, 33.575272, 30.743338>,  <37.735134, 33.869064, 31.331726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859226, 33.575272, 30.743338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585674, 33.323948, 30.891685>,  <37.421543, 33.173153, 30.980694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.585674, 33.323948, 30.891685>,  <37.859226, 33.575272, 30.743338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585674, 33.323948, 30.891685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516134, 0.057351, -0.854585,
		0.515672, -0.775849, -0.363511,
		-0.683877, -0.628307, 0.370868,
		37.380512, 33.135456, 31.002947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728828, 33.204792, 30.193216>,  <37.859226, 33.575272, 30.743338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728828, 33.204792, 30.193216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424927, 33.117188, 30.438103>,  <37.242584, 33.064625, 30.585035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424927, 33.117188, 30.438103>,  <37.728828, 33.204792, 30.193216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424927, 33.117188, 30.438103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559264, -0.260166, -0.787107,
		0.331662, -0.940398, 0.075178,
		-0.759753, -0.219009, 0.612217,
		37.197002, 33.051483, 30.621767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545876, 32.563427, 30.036955>,  <37.728828, 33.204792, 30.193216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545876, 32.563427, 30.036955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234989, 32.773548, 30.175516>,  <37.048458, 32.899620, 30.258654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234989, 32.773548, 30.175516>,  <37.545876, 32.563427, 30.036955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234989, 32.773548, 30.175516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480265, -0.139535, -0.865953,
		-0.406555, -0.839395, 0.360735,
		-0.777212, 0.525306, 0.346403,
		37.001827, 32.931141, 30.279438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016853, 32.119621, 29.909681>,  <37.545876, 32.563427, 30.036955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016853, 32.119621, 29.909681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791588, 32.441437, 29.985125>,  <36.656429, 32.634525, 30.030390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791588, 32.441437, 29.985125>,  <37.016853, 32.119621, 29.909681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791588, 32.441437, 29.985125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636195, -0.276468, -0.720293,
		-0.527358, -0.525630, 0.667538,
		-0.563161, 0.804536, 0.188606,
		36.622639, 32.682796, 30.041706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372349, 31.909195, 29.752932>,  <37.016853, 32.119621, 29.909681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372349, 31.909195, 29.752932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365253, 32.307953, 29.722250>,  <36.360996, 32.547207, 29.703840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365253, 32.307953, 29.722250>,  <36.372349, 31.909195, 29.752932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365253, 32.307953, 29.722250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648083, -0.069884, -0.758357,
		-0.761363, 0.036259, 0.647311,
		-0.017740, 0.996896, -0.076706,
		36.359932, 32.607021, 29.699238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645027, 32.082207, 29.693857>,  <36.372349, 31.909195, 29.752932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645027, 32.082207, 29.693857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853115, 32.386868, 29.539322>,  <35.977966, 32.569664, 29.446600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.853115, 32.386868, 29.539322>,  <35.645027, 32.082207, 29.693857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853115, 32.386868, 29.539322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573573, -0.023575, -0.818815,
		-0.632760, 0.647557, 0.424599,
		0.520220, 0.761652, -0.386339,
		36.009182, 32.615364, 29.423420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142700, 32.477779, 29.273026>,  <35.645027, 32.082207, 29.693857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142700, 32.477779, 29.273026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497520, 32.623581, 29.159697>,  <35.710415, 32.711063, 29.091700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497520, 32.623581, 29.159697>,  <35.142700, 32.477779, 29.273026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497520, 32.623581, 29.159697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363530, 0.173207, -0.915339,
		-0.284570, 0.914952, 0.286151,
		0.887055, 0.364503, -0.283323,
		35.763638, 32.732933, 29.074699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029667, 33.062355, 28.742807>,  <35.142700, 32.477779, 29.273026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029667, 33.062355, 28.742807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406509, 32.944782, 28.678265>,  <35.632614, 32.874241, 28.639540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406509, 32.944782, 28.678265>,  <35.029667, 33.062355, 28.742807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406509, 32.944782, 28.678265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179041, -0.034102, -0.983250,
		0.283505, 0.955218, -0.084753,
		0.942109, -0.293930, -0.161355,
		35.689140, 32.856602, 28.629858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149872, 33.378231, 28.160206>,  <35.029667, 33.062355, 28.742807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149872, 33.378231, 28.160206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452045, 33.116791, 28.178638>,  <35.633350, 32.959927, 28.189697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452045, 33.116791, 28.178638>,  <35.149872, 33.378231, 28.160206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452045, 33.116791, 28.178638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018664, -0.048836, -0.998632,
		0.654960, 0.755260, -0.024694,
		0.755433, -0.653604, 0.046082,
		35.678677, 32.920712, 28.192463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350330, 34.089512, 28.170498>,  <35.149872, 33.378231, 28.160206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350330, 34.089512, 28.170498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973343, 34.215950, 28.127001>,  <34.747150, 34.291813, 28.100903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973343, 34.215950, 28.127001>,  <35.350330, 34.089512, 28.170498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973343, 34.215950, 28.127001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099467, 0.045380, 0.994006,
		0.319140, 0.947640, -0.011328,
		-0.942473, 0.316100, -0.108741,
		34.690601, 34.310780, 28.094378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286667, 34.496906, 28.701162>,  <35.350330, 34.089512, 28.170498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286667, 34.496906, 28.701162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912971, 34.416222, 28.583508>,  <34.688755, 34.367809, 28.512915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912971, 34.416222, 28.583508>,  <35.286667, 34.496906, 28.701162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912971, 34.416222, 28.583508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291399, -0.043838, 0.955597,
		-0.205650, 0.978463, -0.017824,
		-0.934235, -0.201712, -0.294139,
		34.632702, 34.355709, 28.495266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830261, 35.052246, 28.998590>,  <35.286667, 34.496906, 28.701162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830261, 35.052246, 28.998590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628368, 34.714714, 28.925720>,  <34.507233, 34.512192, 28.881998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628368, 34.714714, 28.925720>,  <34.830261, 35.052246, 28.998590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628368, 34.714714, 28.925720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402589, 0.043407, 0.914351,
		-0.763653, 0.534844, -0.361628,
		-0.504733, -0.843835, -0.182175,
		34.476948, 34.461563, 28.871067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076225, 35.168739, 29.063744>,  <34.830261, 35.052246, 28.998590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076225, 35.168739, 29.063744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146622, 34.778042, 29.112743>,  <34.188862, 34.543625, 29.142143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146622, 34.778042, 29.112743>,  <34.076225, 35.168739, 29.063744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146622, 34.778042, 29.112743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406468, 0.041233, 0.912734,
		-0.896554, -0.210429, -0.389756,
		0.175995, -0.976739, 0.122501,
		34.199421, 34.485020, 29.149494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596939, 34.893990, 29.549282>,  <34.076225, 35.168739, 29.063744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596939, 34.893990, 29.549282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825138, 34.566700, 29.520876>,  <33.962059, 34.370327, 29.503832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825138, 34.566700, 29.520876>,  <33.596939, 34.893990, 29.549282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825138, 34.566700, 29.520876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191807, -0.216809, 0.957186,
		-0.798588, -0.532451, -0.280630,
		0.570497, -0.818223, -0.071013,
		33.996288, 34.321232, 29.499573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100594, 34.335815, 29.756344>,  <33.596939, 34.893990, 29.549282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100594, 34.335815, 29.756344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476200, 34.210110, 29.812176>,  <33.701565, 34.134686, 29.845675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476200, 34.210110, 29.812176>,  <33.100594, 34.335815, 29.756344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476200, 34.210110, 29.812176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226245, -0.258956, 0.939018,
		-0.258956, -0.913334, -0.314265,
		-0.939018, 0.314265, -0.139579,
		33.757904, 34.115829, 29.854050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027184, 33.641479, 30.054323>,  <33.100594, 34.335815, 29.756344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027184, 33.641479, 30.054323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386562, 33.795033, 30.139584>,  <33.602188, 33.887165, 30.190739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386562, 33.795033, 30.139584>,  <33.027184, 33.641479, 30.054323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386562, 33.795033, 30.139584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203878, -0.065215, 0.976822,
		0.388887, -0.921075, 0.019674,
		0.898443, 0.383885, 0.213149,
		33.656094, 33.910198, 30.203527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221451, 33.241238, 30.565012>,  <33.027184, 33.641479, 30.054323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221451, 33.241238, 30.565012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444008, 33.570747, 30.608517>,  <33.577541, 33.768452, 30.634619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444008, 33.570747, 30.608517>,  <33.221451, 33.241238, 30.565012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444008, 33.570747, 30.608517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286454, 0.067292, 0.955728,
		0.779985, -0.562911, 0.273414,
		0.556389, 0.823774, 0.108762,
		33.610924, 33.817879, 30.641146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712517, 33.053013, 31.188122>,  <33.221451, 33.241238, 30.565012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712517, 33.053013, 31.188122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706955, 33.451996, 31.160141>,  <33.703617, 33.691383, 31.143353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706955, 33.451996, 31.160141>,  <33.712517, 33.053013, 31.188122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706955, 33.451996, 31.160141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155454, 0.066952, 0.985571,
		0.987745, 0.024574, 0.154128,
		-0.013900, 0.997453, -0.069952,
		33.702785, 33.751232, 31.139156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022549, 33.253098, 31.755527>,  <33.712517, 33.053013, 31.188122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022549, 33.253098, 31.755527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812973, 33.581841, 31.666042>,  <33.687229, 33.779087, 31.612350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812973, 33.581841, 31.666042>,  <34.022549, 33.253098, 31.755527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812973, 33.581841, 31.666042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062318, 0.224958, 0.972374,
		0.849476, 0.523402, -0.066647,
		-0.523935, 0.821854, -0.223714,
		33.655792, 33.828396, 31.598928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251999, 33.813896, 32.224483>,  <34.022549, 33.253098, 31.755527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251999, 33.813896, 32.224483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900711, 33.939976, 32.080601>,  <33.689938, 34.015621, 31.994270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900711, 33.939976, 32.080601>,  <34.251999, 33.813896, 32.224483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900711, 33.939976, 32.080601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229747, 0.381613, 0.895314,
		0.419468, 0.868920, -0.262724,
		-0.878216, 0.315196, -0.359706,
		33.637245, 34.034534, 31.972689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196861, 34.474152, 32.486607>,  <34.251999, 33.813896, 32.224483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196861, 34.474152, 32.486607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821774, 34.361145, 32.405739>,  <33.596722, 34.293339, 32.357220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821774, 34.361145, 32.405739>,  <34.196861, 34.474152, 32.486607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821774, 34.361145, 32.405739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299835, 0.364231, 0.881722,
		-0.175466, 0.887423, -0.426254,
		-0.937716, -0.282518, -0.202170,
		33.540459, 34.276390, 32.345089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819370, 35.084129, 32.700611>,  <34.196861, 34.474152, 32.486607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819370, 35.084129, 32.700611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560684, 34.779060, 32.696686>,  <33.405472, 34.596020, 32.694332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560684, 34.779060, 32.696686>,  <33.819370, 35.084129, 32.700611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560684, 34.779060, 32.696686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284495, 0.229261, 0.930861,
		-0.707690, 0.604791, -0.365242,
		-0.646712, -0.762671, -0.009814,
		33.366669, 34.550259, 32.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150646, 35.351097, 32.762352>,  <33.819370, 35.084129, 32.700611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150646, 35.351097, 32.762352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175819, 34.981682, 32.913677>,  <33.190926, 34.760033, 33.004475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175819, 34.981682, 32.913677>,  <33.150646, 35.351097, 32.762352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175819, 34.981682, 32.913677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290309, 0.345736, 0.892293,
		-0.954861, -0.165986, -0.246351,
		0.062936, -0.923534, 0.378317,
		33.194698, 34.704620, 33.027172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149849, 35.851570, 32.205364>,  <33.150646, 35.351097, 32.762352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149849, 35.851570, 32.205364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875980, 36.051121, 31.992817>,  <32.711658, 36.170853, 31.865288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.875980, 36.051121, 31.992817>,  <33.149849, 35.851570, 32.205364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875980, 36.051121, 31.992817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616663, 0.785128, -0.057448,
		0.388533, -0.367009, -0.845190,
		-0.684667, 0.498877, -0.531369,
		32.670582, 36.200783, 31.833406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309441, 36.005608, 31.535570>,  <33.149849, 35.851570, 32.205364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309441, 36.005608, 31.535570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075008, 36.300911, 31.669127>,  <32.934349, 36.478092, 31.749260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075008, 36.300911, 31.669127>,  <33.309441, 36.005608, 31.535570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075008, 36.300911, 31.669127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700625, 0.668741, -0.248817,
		-0.406978, 0.088106, -0.909179,
		-0.586083, 0.738256, 0.333892,
		32.899185, 36.522388, 31.769295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237617, 36.767429, 31.080330>,  <33.309441, 36.005608, 31.535570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237617, 36.767429, 31.080330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584469, 36.597679, 30.976025>,  <33.792580, 36.495831, 30.913441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584469, 36.597679, 30.976025>,  <33.237617, 36.767429, 31.080330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584469, 36.597679, 30.976025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137005, 0.706552, -0.694272,
		0.478875, 0.566296, 0.670811,
		0.867127, -0.424374, -0.260764,
		33.844608, 36.470367, 30.897795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549015, 37.341488, 30.875937>,  <33.237617, 36.767429, 31.080330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549015, 37.341488, 30.875937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766537, 37.052208, 30.705641>,  <33.897049, 36.878639, 30.603464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766537, 37.052208, 30.705641>,  <33.549015, 37.341488, 30.875937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766537, 37.052208, 30.705641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332932, 0.651595, -0.681601,
		0.770343, 0.228919, 0.595120,
		0.543809, -0.723201, -0.425737,
		33.929680, 36.835247, 30.577919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189156, 37.709675, 30.685932>,  <33.549015, 37.341488, 30.875937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189156, 37.709675, 30.685932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198788, 37.380486, 30.458906>,  <34.204567, 37.182972, 30.322691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198788, 37.380486, 30.458906>,  <34.189156, 37.709675, 30.685932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198788, 37.380486, 30.458906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355557, 0.537661, -0.764526,
		0.934344, -0.183390, 0.305563,
		0.024083, -0.822975, -0.567566,
		34.206013, 37.133595, 30.288637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863270, 37.657768, 30.321535>,  <34.189156, 37.709675, 30.685932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863270, 37.657768, 30.321535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590324, 37.449837, 30.115952>,  <34.426556, 37.325077, 29.992601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590324, 37.449837, 30.115952>,  <34.863270, 37.657768, 30.321535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590324, 37.449837, 30.115952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345836, 0.389860, -0.853467,
		0.644032, -0.760121, -0.086250,
		-0.682364, -0.519831, -0.513960,
		34.385616, 37.293888, 29.961763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300453, 37.478142, 29.754593>,  <34.863270, 37.657768, 30.321535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300453, 37.478142, 29.754593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923874, 37.402393, 29.643011>,  <34.697926, 37.356945, 29.576061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923874, 37.402393, 29.643011>,  <35.300453, 37.478142, 29.754593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923874, 37.402393, 29.643011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230585, 0.241995, -0.942480,
		0.246026, -0.951610, -0.184147,
		-0.941436, -0.189413, -0.278964,
		34.641441, 37.345581, 29.559324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418362, 37.212154, 29.079733>,  <35.300453, 37.478142, 29.754593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418362, 37.212154, 29.079733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039986, 37.338806, 29.107836>,  <34.812958, 37.414799, 29.124697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039986, 37.338806, 29.107836>,  <35.418362, 37.212154, 29.079733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039986, 37.338806, 29.107836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063751, 0.393914, -0.916934,
		-0.318008, -0.862888, -0.392805,
		-0.945943, 0.316634, 0.070258,
		34.756203, 37.433796, 29.128914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159069, 36.867294, 28.420336>,  <35.418362, 37.212154, 29.079733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159069, 36.867294, 28.420336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926727, 37.163399, 28.555765>,  <34.787323, 37.341061, 28.637022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926727, 37.163399, 28.555765>,  <35.159069, 36.867294, 28.420336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926727, 37.163399, 28.555765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078996, 0.362706, -0.928549,
		-0.810167, -0.566095, -0.152201,
		-0.580852, 0.740257, 0.338572,
		34.752472, 37.385475, 28.657337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486244, 36.931030, 28.026266>,  <35.159069, 36.867294, 28.420336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486244, 36.931030, 28.026266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531391, 37.298405, 28.177914>,  <34.558479, 37.518829, 28.268902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531391, 37.298405, 28.177914>,  <34.486244, 36.931030, 28.026266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531391, 37.298405, 28.177914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076233, 0.388439, -0.918316,
		-0.990681, 0.074749, 0.113859,
		0.112870, 0.918438, 0.379121,
		34.565250, 37.573936, 28.291651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896210, 37.404205, 27.713970>,  <34.486244, 36.931030, 28.026266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896210, 37.404205, 27.713970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173100, 37.664490, 27.838810>,  <34.339233, 37.820660, 27.913713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173100, 37.664490, 27.838810>,  <33.896210, 37.404205, 27.713970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173100, 37.664490, 27.838810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023499, 0.452553, -0.891428,
		-0.721302, 0.609732, 0.328559,
		0.692222, 0.650709, 0.312099,
		34.380768, 37.859703, 27.932440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778858, 38.011414, 27.311083>,  <33.896210, 37.404205, 27.713970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778858, 38.011414, 27.311083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129913, 38.110130, 27.475447>,  <34.340546, 38.169361, 27.574064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129913, 38.110130, 27.475447>,  <33.778858, 38.011414, 27.311083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129913, 38.110130, 27.475447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209445, 0.573646, -0.791873,
		-0.431144, 0.781040, 0.451764,
		0.877638, 0.246792, 0.410909,
		34.393204, 38.184166, 27.598719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840744, 38.771523, 27.293112>,  <33.778858, 38.011414, 27.311083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840744, 38.771523, 27.293112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206383, 38.612152, 27.323259>,  <34.425766, 38.516529, 27.341349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206383, 38.612152, 27.323259>,  <33.840744, 38.771523, 27.293112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206383, 38.612152, 27.323259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281674, 0.490210, -0.824835,
		0.291686, 0.775212, 0.560326,
		0.914100, -0.398422, 0.075370,
		34.480614, 38.492626, 27.345871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264507, 39.329910, 27.294859>,  <33.840744, 38.771523, 27.293112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264507, 39.329910, 27.294859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479626, 39.009922, 27.188414>,  <34.608696, 38.817928, 27.124546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479626, 39.009922, 27.188414>,  <34.264507, 39.329910, 27.294859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479626, 39.009922, 27.188414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307135, 0.479859, -0.821829,
		0.785138, 0.360246, 0.503767,
		0.537798, -0.799974, -0.266112,
		34.640965, 38.769928, 27.108580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038280, 39.575108, 27.035994>,  <34.264507, 39.329910, 27.294859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038280, 39.575108, 27.035994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960674, 39.210709, 26.890419>,  <34.914112, 38.992069, 26.803074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960674, 39.210709, 26.890419>,  <35.038280, 39.575108, 27.035994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960674, 39.210709, 26.890419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421103, 0.257726, -0.869626,
		0.886019, -0.321975, 0.333620,
		-0.194016, -0.910994, -0.363935,
		34.902470, 38.937412, 26.781239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637169, 39.494537, 26.600910>,  <35.038280, 39.575108, 27.035994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637169, 39.494537, 26.600910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398590, 39.201599, 26.469511>,  <35.255440, 39.025837, 26.390671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398590, 39.201599, 26.469511>,  <35.637169, 39.494537, 26.600910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398590, 39.201599, 26.469511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428159, 0.055876, -0.901974,
		0.678915, -0.678634, 0.280234,
		-0.596452, -0.732349, -0.328498,
		35.219654, 38.981895, 26.370962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062325, 38.931725, 26.433304>,  <35.637169, 39.494537, 26.600910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062325, 38.931725, 26.433304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726025, 38.910671, 26.217758>,  <35.524246, 38.898037, 26.088430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726025, 38.910671, 26.217758>,  <36.062325, 38.931725, 26.433304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726025, 38.910671, 26.217758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541127, -0.048352, -0.839550,
		0.018138, -0.997442, 0.069136,
		-0.840745, -0.052639, -0.538866,
		35.473801, 38.894882, 26.056099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260868, 38.680023, 25.720608>,  <36.062325, 38.931725, 26.433304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260868, 38.680023, 25.720608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899563, 38.836487, 25.650063>,  <35.682777, 38.930367, 25.607735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.899563, 38.836487, 25.650063>,  <36.260868, 38.680023, 25.720608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899563, 38.836487, 25.650063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234954, 0.106966, -0.966103,
		-0.359038, -0.914084, -0.188524,
		-0.903266, 0.391162, -0.176362,
		35.628582, 38.953835, 25.597155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034420, 38.355663, 25.151318>,  <36.260868, 38.680023, 25.720608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034420, 38.355663, 25.151318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807476, 38.684834, 25.163340>,  <35.671310, 38.882336, 25.170553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807476, 38.684834, 25.163340>,  <36.034420, 38.355663, 25.151318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807476, 38.684834, 25.163340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048903, 0.070104, -0.996340,
		-0.822017, -0.563813, -0.080018,
		-0.567359, 0.822922, 0.030054,
		35.637268, 38.931709, 25.172356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648022, 38.303669, 24.579994>,  <36.034420, 38.355663, 25.151318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648022, 38.303669, 24.579994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595554, 38.692543, 24.657602>,  <35.564072, 38.925869, 24.704168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595554, 38.692543, 24.657602>,  <35.648022, 38.303669, 24.579994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595554, 38.692543, 24.657602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011845, 0.194161, -0.980898,
		-0.991289, -0.130964, -0.013953,
		-0.131171, 0.972188, 0.194021,
		35.556202, 38.984200, 24.715809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096798, 38.512440, 24.329016>,  <35.648022, 38.303669, 24.579994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096798, 38.512440, 24.329016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300117, 38.855022, 24.365028>,  <35.422108, 39.060574, 24.386637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300117, 38.855022, 24.365028>,  <35.096798, 38.512440, 24.329016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300117, 38.855022, 24.365028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107701, 0.166946, -0.980066,
		-0.854419, 0.488471, 0.177100,
		0.508300, 0.856461, 0.090034,
		35.452606, 39.111961, 24.392038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767998, 39.055367, 23.870312>,  <35.096798, 38.512440, 24.329016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767998, 39.055367, 23.870312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133614, 39.201454, 23.940907>,  <35.352982, 39.289108, 23.983263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133614, 39.201454, 23.940907>,  <34.767998, 39.055367, 23.870312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133614, 39.201454, 23.940907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141769, 0.120014, -0.982598,
		-0.380048, 0.923151, 0.057920,
		0.914038, 0.365223, 0.176485,
		35.407825, 39.311020, 23.993853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906662, 39.650471, 23.532856>,  <34.767998, 39.055367, 23.870312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906662, 39.650471, 23.532856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279072, 39.513569, 23.583544>,  <35.502518, 39.431427, 23.613956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279072, 39.513569, 23.583544>,  <34.906662, 39.650471, 23.532856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279072, 39.513569, 23.583544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207052, 0.209406, -0.955656,
		0.300544, 0.915974, 0.265827,
		0.931022, -0.342257, 0.126719,
		35.558380, 39.410892, 23.621559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239529, 40.100704, 23.073584>,  <34.906662, 39.650471, 23.532856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239529, 40.100704, 23.073584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471283, 39.781685, 23.140791>,  <35.610336, 39.590275, 23.181114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471283, 39.781685, 23.140791>,  <35.239529, 40.100704, 23.073584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471283, 39.781685, 23.140791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328548, 0.039884, -0.943645,
		0.745898, 0.601940, 0.285140,
		0.579390, -0.797545, 0.168017,
		35.645100, 39.542423, 23.191196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779224, 40.217209, 22.645130>,  <35.239529, 40.100704, 23.073584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779224, 40.217209, 22.645130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819450, 39.827465, 22.725634>,  <35.843586, 39.593616, 22.773935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819450, 39.827465, 22.725634>,  <35.779224, 40.217209, 22.645130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819450, 39.827465, 22.725634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528777, -0.119007, -0.840376,
		0.842782, 0.190933, 0.503253,
		0.100565, -0.974362, 0.201259,
		35.849621, 39.535156, 22.786011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481228, 40.041969, 22.478497>,  <35.779224, 40.217209, 22.645130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481228, 40.041969, 22.478497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281990, 39.695190, 22.485559>,  <36.162449, 39.487125, 22.489798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281990, 39.695190, 22.485559>,  <36.481228, 40.041969, 22.478497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281990, 39.695190, 22.485559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363190, -0.227072, -0.903621,
		0.787398, -0.443675, 0.427968,
		-0.498094, -0.866943, 0.017658,
		36.132561, 39.435108, 22.490856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982548, 39.476109, 22.365870>,  <36.481228, 40.041969, 22.478497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982548, 39.476109, 22.365870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610058, 39.382141, 22.254414>,  <36.386566, 39.325760, 22.187540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610058, 39.382141, 22.254414>,  <36.982548, 39.476109, 22.365870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610058, 39.382141, 22.254414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328733, -0.211298, -0.920482,
		0.157364, -0.948771, 0.273991,
		-0.931221, -0.234921, -0.278641,
		36.330692, 39.311665, 22.170822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102989, 38.914207, 21.835426>,  <36.982548, 39.476109, 22.365870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102989, 38.914207, 21.835426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726269, 39.024490, 21.758495>,  <36.500237, 39.090660, 21.712336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726269, 39.024490, 21.758495>,  <37.102989, 38.914207, 21.835426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726269, 39.024490, 21.758495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146492, -0.178339, -0.973003,
		-0.302563, -0.944553, 0.127572,
		-0.941804, 0.275707, -0.192328,
		36.443726, 39.107201, 21.700796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582058, 38.417431, 22.084993>,  <37.102989, 38.914207, 21.835426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582058, 38.417431, 22.084993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978054, 38.372135, 22.118673>,  <38.215652, 38.344959, 22.138882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978054, 38.372135, 22.118673>,  <37.582058, 38.417431, 22.084993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978054, 38.372135, 22.118673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051582, 0.265004, 0.962867,
		-0.131346, -0.957575, 0.256511,
		0.989994, -0.113238, 0.084200,
		38.275051, 38.338165, 22.143934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743385, 37.904228, 22.625486>,  <37.582058, 38.417431, 22.084993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743385, 37.904228, 22.625486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050293, 38.156109, 22.576855>,  <38.234436, 38.307236, 22.547676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050293, 38.156109, 22.576855>,  <37.743385, 37.904228, 22.625486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050293, 38.156109, 22.576855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073852, 0.101560, 0.992085,
		0.637064, -0.770171, 0.031419,
		0.767265, 0.629700, -0.121579,
		38.280472, 38.345020, 22.540380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283524, 37.563095, 23.107508>,  <37.743385, 37.904228, 22.625486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283524, 37.563095, 23.107508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430004, 37.931580, 23.054939>,  <38.517891, 38.152668, 23.023399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430004, 37.931580, 23.054939>,  <38.283524, 37.563095, 23.107508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430004, 37.931580, 23.054939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125822, 0.090913, 0.987878,
		0.921990, -0.378297, -0.082616,
		0.366201, 0.921209, -0.131419,
		38.539864, 38.207943, 23.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749992, 37.548534, 23.529568>,  <38.283524, 37.563095, 23.107508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749992, 37.548534, 23.529568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741383, 37.942181, 23.459089>,  <38.736217, 38.178368, 23.416803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741383, 37.942181, 23.459089>,  <38.749992, 37.548534, 23.529568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741383, 37.942181, 23.459089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074146, 0.177321, 0.981356,
		0.997015, 0.008055, -0.076785,
		-0.021521, 0.984120, -0.176194,
		38.734928, 38.237415, 23.406231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370037, 37.849327, 23.846607>,  <38.749992, 37.548534, 23.529568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370037, 37.849327, 23.846607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104004, 38.143169, 23.792898>,  <38.944386, 38.319473, 23.760674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104004, 38.143169, 23.792898>,  <39.370037, 37.849327, 23.846607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104004, 38.143169, 23.792898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040581, 0.215088, 0.975751,
		0.745668, 0.643504, -0.172862,
		-0.665080, 0.734602, -0.134271,
		38.904480, 38.363548, 23.752617>
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
