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
	<4.708757, 4.018918, 3.672594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.715889, 3.963280, 4.068642>,  <4.720168, 3.929897, 4.306270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.715889, 3.963280, 4.068642>,  <4.708757, 4.018918, 3.672594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.715889, 3.963280, 4.068642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707107, -0.701874, -0.085868,
		0.706882, -0.698588, -0.110870,
		0.017831, -0.139095, 0.990118,
		4.721238, 3.921551, 4.365677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.536164, 3.335018, 3.889830>,  <4.708757, 4.018918, 3.672594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.536164, 3.335018, 3.889830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.474129, 3.495209, 4.251064>,  <4.436907, 3.591323, 4.467805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.474129, 3.495209, 4.251064>,  <4.536164, 3.335018, 3.889830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.474129, 3.495209, 4.251064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777925, -0.612965, 0.138227,
		0.608917, -0.681096, 0.406606,
		-0.155089, 0.400478, 0.903086,
		4.427602, 3.615352, 4.521990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.522727, 2.847632, 4.603679>,  <4.536164, 3.335018, 3.889830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.522727, 2.847632, 4.603679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253273, 3.141914, 4.575531>,  <4.091601, 3.318484, 4.558642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.253273, 3.141914, 4.575531>,  <4.522727, 2.847632, 4.603679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.253273, 3.141914, 4.575531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728050, -0.644202, 0.234410,
		0.127124, 0.209140, 0.969588,
		-0.673634, 0.735707, -0.070371,
		4.051183, 3.362627, 4.554420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.082111, 2.961341, 5.205808>,  <4.522727, 2.847632, 4.603679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.082111, 2.961341, 5.205808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.856667, 3.075462, 4.895725>,  <3.721400, 3.143935, 4.709676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.856667, 3.075462, 4.895725>,  <4.082111, 2.961341, 5.205808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.856667, 3.075462, 4.895725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778306, -0.497812, 0.382654,
		-0.276734, 0.819015, 0.502625,
		-0.563612, 0.285303, -0.775206,
		3.687583, 3.161053, 4.663164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.411803, 3.245209, 5.452796>,  <4.082111, 2.961341, 5.205808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.411803, 3.245209, 5.452796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377068, 3.105385, 5.079643>,  <3.356226, 3.021490, 4.855752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377068, 3.105385, 5.079643>,  <3.411803, 3.245209, 5.452796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.377068, 3.105385, 5.079643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816536, -0.511490, 0.267670,
		-0.570726, 0.784975, -0.241012,
		-0.086839, -0.349561, -0.932880,
		3.351016, 3.000516, 4.799779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.729190, 3.355762, 5.248710>,  <3.411803, 3.245209, 5.452796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.729190, 3.355762, 5.248710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869415, 3.047691, 5.035568>,  <2.953550, 2.862849, 4.907683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869415, 3.047691, 5.035568>,  <2.729190, 3.355762, 5.248710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869415, 3.047691, 5.035568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852415, -0.498071, 0.159101,
		-0.387936, 0.398439, -0.831115,
		0.350563, -0.770176, -0.532855,
		2.974584, 2.816638, 4.875712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.266581, 3.225672, 4.823740>,  <2.729190, 3.355762, 5.248710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.266581, 3.225672, 4.823740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.475906, 2.885689, 4.848114>,  <2.601502, 2.681699, 4.862738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.475906, 2.885689, 4.848114>,  <2.266581, 3.225672, 4.823740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.475906, 2.885689, 4.848114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839444, -0.501900, 0.208397,
		-0.146545, -0.160209, -0.976144,
		0.523314, -0.849958, 0.060935,
		2.632900, 2.630701, 4.866395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859899, 2.760954, 4.374569>,  <2.266581, 3.225672, 4.823740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859899, 2.760954, 4.374569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.089729, 2.549316, 4.624344>,  <2.227628, 2.422334, 4.774209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.089729, 2.549316, 4.624344>,  <1.859899, 2.760954, 4.374569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.089729, 2.549316, 4.624344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801092, -0.519862, 0.296640,
		0.167671, -0.670674, -0.722553,
		0.574576, -0.529094, 0.624437,
		2.262102, 2.390588, 4.811675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.997803, 1.751359, 4.490772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.034260, 1.481308, 4.783592>,  <1.056134, 1.319277, 4.959284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.034260, 1.481308, 4.783592>,  <0.997803, 1.751359, 4.490772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.034260, 1.481308, 4.783592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967414, 0.234406, 0.095733,
		-0.236228, 0.699469, 0.674492,
		0.091142, -0.675127, 0.732049,
		1.061603, 1.278770, 5.003207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230065, 2.120409, 5.169328>,  <0.997803, 1.751359, 4.490772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230065, 2.120409, 5.169328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370693, 1.751724, 5.103790>,  <1.455070, 1.530513, 5.064468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370693, 1.751724, 5.103790>,  <1.230065, 2.120409, 5.169328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.370693, 1.751724, 5.103790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919145, 0.306633, 0.247285,
		-0.177686, -0.237534, 0.954990,
		0.351570, -0.921713, -0.163844,
		1.476164, 1.475211, 5.054637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.773028, 1.876264, 5.680562>,  <1.230065, 2.120409, 5.169328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.773028, 1.876264, 5.680562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.859520, 1.702087, 5.331017>,  <1.911415, 1.597582, 5.121289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.859520, 1.702087, 5.331017>,  <1.773028, 1.876264, 5.680562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.859520, 1.702087, 5.331017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828789, 0.554979, -0.071468,
		0.516095, -0.708794, 0.480892,
		0.216229, -0.435442, -0.873863,
		1.924389, 1.571455, 5.068858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.441525, 1.613796, 5.833974>,  <1.773028, 1.876264, 5.680562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.441525, 1.613796, 5.833974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.358044, 1.703735, 5.453262>,  <2.307955, 1.757699, 5.224835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.358044, 1.703735, 5.453262>,  <2.441525, 1.613796, 5.833974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.358044, 1.703735, 5.453262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800330, 0.598590, -0.034083,
		0.562063, -0.768851, -0.304882,
		-0.208704, 0.224850, -0.951780,
		2.295433, 1.771190, 5.167728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.073363, 1.581672, 5.454597>,  <2.441525, 1.613796, 5.833974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.073363, 1.581672, 5.454597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823692, 1.822540, 5.255482>,  <2.673890, 1.967061, 5.136013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823692, 1.822540, 5.255482>,  <3.073363, 1.581672, 5.454597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.823692, 1.822540, 5.255482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772073, 0.572953, -0.275004,
		0.119610, -0.555981, -0.822544,
		-0.624176, 0.602171, -0.497789,
		2.636439, 2.003192, 5.106145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.425344, 1.609497, 4.783104>,  <3.073363, 1.581672, 5.454597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.425344, 1.609497, 4.783104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162663, 1.910019, 4.809280>,  <3.005054, 2.090332, 4.824986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162663, 1.910019, 4.809280>,  <3.425344, 1.609497, 4.783104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.162663, 1.910019, 4.809280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614271, 0.583221, -0.531530,
		-0.437508, -0.308859, -0.844508,
		-0.656703, 0.751305, 0.065441,
		2.965652, 2.135410, 4.828913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.535058, 1.935960, 4.129124>,  <3.425344, 1.609497, 4.783104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.535058, 1.935960, 4.129124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327259, 2.190948, 4.356720>,  <3.202579, 2.343942, 4.493278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327259, 2.190948, 4.356720>,  <3.535058, 1.935960, 4.129124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327259, 2.190948, 4.356720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512483, 0.765286, -0.389486,
		-0.683728, 0.089261, -0.724258,
		-0.519498, 0.637472, 0.568991,
		3.171410, 2.382190, 4.527417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.092316, 2.378339, 3.752397>,  <3.535058, 1.935960, 4.129124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.092316, 2.378339, 3.752397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240623, 2.543411, 4.085197>,  <3.329608, 2.642455, 4.284877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240623, 2.543411, 4.085197>,  <3.092316, 2.378339, 3.752397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240623, 2.543411, 4.085197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371709, 0.755030, -0.540150,
		-0.851095, 0.509533, 0.126544,
		0.370769, 0.412682, 0.832000,
		3.351854, 2.667216, 4.334797>
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
