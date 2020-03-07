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
	<5.343532, 4.100841, 0.070923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.198723, 3.929848, 0.402271>,  <5.111837, 3.827252, 0.601080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.198723, 3.929848, 0.402271>,  <5.343532, 4.100841, 0.070923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.198723, 3.929848, 0.402271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914483, 0.335155, -0.226698,
		-0.180723, -0.839601, -0.512259,
		-0.362022, -0.427482, 0.828371,
		5.090116, 3.801603, 0.650782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.656749, 3.758673, -0.014679>,  <5.343532, 4.100841, 0.070923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.656749, 3.758673, -0.014679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.663391, 3.862572, 0.371534>,  <4.667377, 3.924911, 0.603262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.663391, 3.862572, 0.371534>,  <4.656749, 3.758673, -0.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.663391, 3.862572, 0.371534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933428, 0.350150, -0.078144,
		-0.358380, -0.899959, 0.248270,
		0.016605, 0.259747, 0.965534,
		4.668373, 3.940496, 0.661195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.064620, 3.421200, 0.316937>,  <4.656749, 3.758673, -0.014679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.064620, 3.421200, 0.316937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.172630, 3.764999, 0.490534>,  <4.237437, 3.971279, 0.594692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.172630, 3.764999, 0.490534>,  <4.064620, 3.421200, 0.316937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.172630, 3.764999, 0.490534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912390, 0.372414, -0.169861,
		-0.307620, -0.350103, 0.884759,
		0.270027, 0.859498, 0.433992,
		4.253638, 4.022849, 0.620731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.607200, 3.596483, 0.892319>,  <4.064620, 3.421200, 0.316937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.607200, 3.596483, 0.892319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760971, 3.947815, 0.778650>,  <3.853234, 4.158614, 0.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760971, 3.947815, 0.778650>,  <3.607200, 3.596483, 0.892319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760971, 3.947815, 0.778650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914432, 0.404522, 0.013269,
		0.126608, 0.254755, 0.958682,
		0.384427, 0.878330, -0.284172,
		3.876299, 4.211314, 0.693399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325780, 4.149744, 1.296576>,  <3.607200, 3.596483, 0.892319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325780, 4.149744, 1.296576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443512, 4.353088, 0.972862>,  <3.514151, 4.475095, 0.778634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443512, 4.353088, 0.972862>,  <3.325780, 4.149744, 1.296576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.443512, 4.353088, 0.972862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820889, 0.568103, 0.058310,
		0.489399, 0.647170, 0.584517,
		0.294329, 0.508360, -0.809284,
		3.531811, 4.505597, 0.730077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.285364, 4.814142, 1.529266>,  <3.325780, 4.149744, 1.296576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.285364, 4.814142, 1.529266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.272629, 4.832909, 1.129910>,  <3.264987, 4.844169, 0.890296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.272629, 4.832909, 1.129910>,  <3.285364, 4.814142, 1.529266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.272629, 4.832909, 1.129910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797464, 0.600975, 0.053672,
		0.602526, 0.797890, 0.018280,
		-0.031839, 0.046916, -0.998391,
		3.263077, 4.846983, 0.830392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.192033, 5.523336, 1.399443>,  <3.285364, 4.814142, 1.529266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.192033, 5.523336, 1.399443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.067818, 5.336143, 1.068491>,  <2.993289, 5.223828, 0.869920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.067818, 5.336143, 1.068491>,  <3.192033, 5.523336, 1.399443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.067818, 5.336143, 1.068491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745364, 0.660056, -0.093586,
		0.589914, 0.587638, -0.553790,
		-0.310538, -0.467983, -0.827380,
		2.974656, 5.195749, 0.820277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122800, 6.080883, 0.981576>,  <3.192033, 5.523336, 1.399443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122800, 6.080883, 0.981576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898186, 5.784367, 0.834515>,  <2.763417, 5.606457, 0.746278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898186, 5.784367, 0.834515>,  <3.122800, 6.080883, 0.981576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.898186, 5.784367, 0.834515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772003, 0.629265, -0.089652,
		0.297809, 0.233486, -0.925632,
		-0.561535, -0.741289, -0.367653,
		2.729725, 5.561980, 0.724219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.674110, 1.171169, 1.044381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528107, 0.985832, 0.721375>,  <1.440505, 0.874630, 0.527571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.528107, 0.985832, 0.721375>,  <1.674110, 1.171169, 1.044381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528107, 0.985832, 0.721375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840924, -0.536288, -0.072395,
		-0.399518, -0.705485, 0.585386,
		-0.365009, -0.463342, -0.807516,
		1.418604, 0.846830, 0.479120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.463459, 0.430738, 1.126250>,  <1.674110, 1.171169, 1.044381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.463459, 0.430738, 1.126250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.624130, 0.506386, 0.767834>,  <1.720533, 0.551774, 0.552784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.624130, 0.506386, 0.767834>,  <1.463459, 0.430738, 1.126250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.624130, 0.506386, 0.767834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850648, -0.439457, 0.288577,
		-0.339196, -0.878130, -0.337393,
		0.401677, 0.189119, -0.896041,
		1.744634, 0.563121, 0.499021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.754141, -0.217271, 0.847135>,  <1.463459, 0.430738, 1.126250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.754141, -0.217271, 0.847135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.939125, 0.081619, 0.656227>,  <2.050115, 0.260953, 0.541682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.939125, 0.081619, 0.656227>,  <1.754141, -0.217271, 0.847135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.939125, 0.081619, 0.656227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841359, -0.539662, -0.029657,
		-0.279725, -0.387840, -0.878256,
		0.462459, 0.747225, -0.477270,
		2.077863, 0.305787, 0.513046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.974500, -0.251058, 0.099398>,  <1.754141, -0.217271, 0.847135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.974500, -0.251058, 0.099398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.228722, -0.010063, 0.292511>,  <2.381255, 0.134534, 0.408379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.228722, -0.010063, 0.292511>,  <1.974500, -0.251058, 0.099398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.228722, -0.010063, 0.292511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765281, -0.574273, -0.290783,
		0.102056, 0.554273, -0.826054,
		0.635554, 0.602487, 0.482783,
		2.419388, 0.170683, 0.437346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.622888, -0.338549, -0.270845>,  <1.974500, -0.251058, 0.099398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.622888, -0.338549, -0.270845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.714912, -0.153305, 0.071524>,  <2.770127, -0.042159, 0.276945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.714912, -0.153305, 0.071524>,  <2.622888, -0.338549, -0.270845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.714912, -0.153305, 0.071524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908257, -0.418029, -0.017946,
		0.349489, 0.781525, -0.516794,
		0.230060, 0.463109, 0.855922,
		2.783931, -0.014372, 0.328300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.224267, -0.032093, -0.472523>,  <2.622888, -0.338549, -0.270845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.224267, -0.032093, -0.472523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.217056, -0.033134, -0.072589>,  <3.212730, -0.033759, 0.167371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.217056, -0.033134, -0.072589>,  <3.224267, -0.032093, -0.472523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.217056, -0.033134, -0.072589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957195, -0.288974, 0.016505,
		0.288883, 0.957333, 0.007699,
		-0.018026, -0.002602, 0.999834,
		3.211648, -0.033916, 0.227361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891571, 0.231821, -0.257593>,  <3.224267, -0.032093, -0.472523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891571, 0.231821, -0.257593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.778839, 0.005020, 0.052009>,  <3.711200, -0.131060, 0.237769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.778839, 0.005020, 0.052009>,  <3.891571, 0.231821, -0.257593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.778839, 0.005020, 0.052009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886511, -0.462433, -0.015962,
		0.366975, 0.681664, 0.632980,
		-0.281830, -0.567001, 0.774003,
		3.694290, -0.165080, 0.284210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.384766, 0.301338, 0.305443>,  <3.891571, 0.231821, -0.257593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.384766, 0.301338, 0.305443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.210052, -0.053528, 0.364986>,  <4.105225, -0.266447, 0.400712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.210052, -0.053528, 0.364986>,  <4.384766, 0.301338, 0.305443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.210052, -0.053528, 0.364986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898988, -0.424549, 0.107605,
		-0.032266, 0.180821, 0.982987,
		-0.436783, -0.887165, 0.148858,
		4.079018, -0.319677, 0.409644>
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
