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
	<1.555450, 4.880008, 5.209325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.260765, 4.661392, 5.050051>,  <1.083954, 4.530223, 4.954487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.260765, 4.661392, 5.050051>,  <1.555450, 4.880008, 5.209325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.260765, 4.661392, 5.050051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465711, 0.016849, -0.884776,
		0.490274, -0.837264, 0.242116,
		-0.736712, -0.546539, -0.398184,
		1.039751, 4.497431, 4.930596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.899541, 4.490276, 4.718056>,  <1.555450, 4.880008, 5.209325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.899541, 4.490276, 4.718056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511269, 4.543205, 4.637785>,  <1.278305, 4.574963, 4.589623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.511269, 4.543205, 4.637785>,  <1.899541, 4.490276, 4.718056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.511269, 4.543205, 4.637785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214017, 0.095665, -0.972134,
		-0.109440, -0.986579, -0.121180,
		-0.970680, 0.132324, -0.200675,
		1.220065, 4.582902, 4.577583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.723012, 3.919777, 4.173225>,  <1.899541, 4.490276, 4.718056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.723012, 3.919777, 4.173225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.479385, 4.235863, 4.146097>,  <1.333209, 4.425514, 4.129820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.479385, 4.235863, 4.146097>,  <1.723012, 3.919777, 4.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.479385, 4.235863, 4.146097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245834, 0.106794, -0.963411,
		-0.754057, -0.603455, -0.259306,
		-0.609067, 0.790213, -0.067821,
		1.296665, 4.472927, 4.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.136860, 3.746742, 3.635551>,  <1.723012, 3.919777, 4.173225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.136860, 3.746742, 3.635551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207794, 4.139809, 3.657172>,  <1.250354, 4.375648, 3.670144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.207794, 4.139809, 3.657172>,  <1.136860, 3.746742, 3.635551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207794, 4.139809, 3.657172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054629, 0.045009, -0.997492,
		-0.982633, 0.179842, -0.045701,
		0.177334, 0.982665, 0.054052,
		1.260994, 4.434608, 3.673387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759614, 4.109056, 3.041313>,  <1.136860, 3.746742, 3.635551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759614, 4.109056, 3.041313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.043633, 4.363220, 3.162698>,  <1.214044, 4.515718, 3.235528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.043633, 4.363220, 3.162698>,  <0.759614, 4.109056, 3.041313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.043633, 4.363220, 3.162698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165131, 0.268685, -0.948968,
		-0.684518, 0.723923, 0.085853,
		0.710047, 0.635409, 0.303462,
		1.256647, 4.553843, 3.253736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619429, 4.820958, 2.784362>,  <0.759614, 4.109056, 3.041313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619429, 4.820958, 2.784362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.004654, 4.740250, 2.855694>,  <1.235789, 4.691824, 2.898493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.004654, 4.740250, 2.855694>,  <0.619429, 4.820958, 2.784362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.004654, 4.740250, 2.855694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221364, 0.216115, -0.950943,
		0.153334, 0.955292, 0.252797,
		0.963061, -0.201772, 0.178329,
		1.293572, 4.679718, 2.909192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.020112, 5.314789, 2.424475>,  <0.619429, 4.820958, 2.784362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.020112, 5.314789, 2.424475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.287384, 5.032539, 2.518821>,  <1.447747, 4.863190, 2.575429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.287384, 5.032539, 2.518821>,  <1.020112, 5.314789, 2.424475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.287384, 5.032539, 2.518821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470292, 0.154925, -0.868806,
		0.576509, 0.691444, 0.435366,
		0.668179, -0.705623, 0.235865,
		1.487838, 4.820852, 2.589581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584512, 5.623209, 2.433279>,  <1.020112, 5.314789, 2.424475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584512, 5.623209, 2.433279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.649620, 5.237198, 2.351080>,  <1.688685, 5.005591, 2.301760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.649620, 5.237198, 2.351080>,  <1.584512, 5.623209, 2.433279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649620, 5.237198, 2.351080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509752, 0.260577, -0.819910,
		0.844783, 0.028704, 0.534339,
		0.162771, -0.965026, -0.205499,
		1.698451, 4.947690, 2.289430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.209621, 5.152962, 1.218199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502602, 4.897232, 1.124578>,  <1.678390, 4.743794, 1.068406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.502602, 4.897232, 1.124578>,  <1.209621, 5.152962, 1.218199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.502602, 4.897232, 1.124578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237869, -0.081803, 0.967847,
		-0.637915, -0.764573, 0.092159,
		0.732450, -0.639325, -0.234051,
		1.722337, 4.705435, 1.054363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.139044, 4.442151, 1.464839>,  <1.209621, 5.152962, 1.218199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.139044, 4.442151, 1.464839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518982, 4.559975, 1.422835>,  <1.746945, 4.630669, 1.397633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518982, 4.559975, 1.422835>,  <1.139044, 4.442151, 1.464839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518982, 4.559975, 1.422835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137629, -0.092233, 0.986180,
		0.280805, -0.951171, -0.128147,
		0.949846, 0.294561, -0.105009,
		1.803936, 4.648343, 1.391333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.558809, 3.947554, 1.670202>,  <1.139044, 4.442151, 1.464839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.558809, 3.947554, 1.670202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.751610, 4.293098, 1.728739>,  <1.867290, 4.500425, 1.763861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.751610, 4.293098, 1.728739>,  <1.558809, 3.947554, 1.670202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.751610, 4.293098, 1.728739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256850, -0.299002, 0.919035,
		0.837676, -0.405389, -0.366003,
		0.482002, 0.863862, 0.146343,
		1.896210, 4.552257, 1.772642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.986022, 3.664630, 2.088551>,  <1.558809, 3.947554, 1.670202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.986022, 3.664630, 2.088551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912086, 4.053741, 2.144461>,  <1.867725, 4.287209, 2.178006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.912086, 4.053741, 2.144461>,  <1.986022, 3.664630, 2.088551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912086, 4.053741, 2.144461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040479, -0.149639, 0.987912,
		0.981935, 0.176946, 0.067036,
		-0.184838, 0.972778, 0.139774,
		1.856635, 4.345575, 2.186393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.233505, 3.766011, 2.741898>,  <1.986022, 3.664630, 2.088551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.233505, 3.766011, 2.741898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.037346, 4.108414, 2.676461>,  <1.919651, 4.313856, 2.637199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.037346, 4.108414, 2.676461>,  <2.233505, 3.766011, 2.741898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.037346, 4.108414, 2.676461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043241, 0.163582, 0.985582,
		0.870426, 0.490400, -0.043205,
		-0.490397, 0.856007, -0.163591,
		1.890227, 4.365216, 2.627384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.499663, 4.376340, 3.156250>,  <2.233505, 3.766011, 2.741898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.499663, 4.376340, 3.156250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115410, 4.452484, 3.075308>,  <1.884858, 4.498170, 3.026743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115410, 4.452484, 3.075308>,  <2.499663, 4.376340, 3.156250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115410, 4.452484, 3.075308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185042, 0.104889, 0.977117,
		0.207228, 0.976095, -0.065536,
		-0.960633, 0.190359, -0.202354,
		1.827220, 4.509592, 3.014602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.432400, 5.025917, 3.524795>,  <2.499663, 4.376340, 3.156250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.432400, 5.025917, 3.524795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.073990, 4.859619, 3.462449>,  <1.858944, 4.759840, 3.425041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.073990, 4.859619, 3.462449>,  <2.432400, 5.025917, 3.524795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073990, 4.859619, 3.462449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292952, 0.289782, 0.911156,
		-0.333641, 0.862080, -0.381445,
		-0.896026, -0.415744, -0.155865,
		1.805182, 4.734896, 3.415690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.954901, 5.612357, 3.587574>,  <2.432400, 5.025917, 3.524795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.954901, 5.612357, 3.587574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.786842, 5.258942, 3.670363>,  <1.686007, 5.046893, 3.720037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.786842, 5.258942, 3.670363>,  <1.954901, 5.612357, 3.587574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.786842, 5.258942, 3.670363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474308, 0.408259, 0.779972,
		-0.773633, 0.229534, -0.590598,
		-0.420148, -0.883538, 0.206973,
		1.660798, 4.993880, 3.732455>
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
