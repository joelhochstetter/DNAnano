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
	<3.751334, 4.457456, 4.027598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.757380, 4.153455, 3.767701>,  <3.761007, 3.971054, 3.611763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.757380, 4.153455, 3.767701>,  <3.751334, 4.457456, 4.027598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.757380, 4.153455, 3.767701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431651, 0.581187, -0.689854,
		0.901914, 0.290889, -0.319272,
		0.015115, -0.760003, -0.649744,
		3.761914, 3.925454, 3.572778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.108663, 4.587439, 3.416384>,  <3.751334, 4.457456, 4.027598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.108663, 4.587439, 3.416384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835485, 4.317030, 3.305689>,  <3.671579, 4.154785, 3.239272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.835485, 4.317030, 3.305689>,  <4.108663, 4.587439, 3.416384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.835485, 4.317030, 3.305689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249232, 0.571760, -0.781648,
		0.686639, -0.464849, -0.558966,
		-0.682943, -0.676022, -0.276738,
		3.630602, 4.114223, 3.222668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.172915, 4.387484, 2.677547>,  <4.108663, 4.587439, 3.416384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.172915, 4.387484, 2.677547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805593, 4.370746, 2.835010>,  <3.585200, 4.360703, 2.929487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805593, 4.370746, 2.835010>,  <4.172915, 4.387484, 2.677547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.805593, 4.370746, 2.835010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302851, 0.714659, -0.630511,
		-0.254945, -0.698220, -0.668948,
		-0.918305, -0.041846, 0.393656,
		3.530102, 4.358192, 2.953106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.659474, 4.049931, 2.220519>,  <4.172915, 4.387484, 2.677547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.659474, 4.049931, 2.220519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.500826, 4.345219, 2.438776>,  <3.405637, 4.522391, 2.569730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.500826, 4.345219, 2.438776>,  <3.659474, 4.049931, 2.220519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.500826, 4.345219, 2.438776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262847, 0.478180, -0.838006,
		-0.879547, -0.475791, 0.004383,
		-0.396620, 0.738219, 0.545643,
		3.381840, 4.566684, 2.602469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.968055, 4.039104, 2.108301>,  <3.659474, 4.049931, 2.220519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.968055, 4.039104, 2.108301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.074673, 4.405824, 2.227250>,  <3.138644, 4.625856, 2.298620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.074673, 4.405824, 2.227250>,  <2.968055, 4.039104, 2.108301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.074673, 4.405824, 2.227250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307955, 0.373372, -0.875075,
		-0.913300, 0.141670, 0.381854,
		0.266546, 0.916800, 0.297372,
		3.154636, 4.680864, 2.316462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.445454, 4.430735, 1.936781>,  <2.968055, 4.039104, 2.108301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.445454, 4.430735, 1.936781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693956, 4.736211, 2.007004>,  <2.843058, 4.919497, 2.049138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693956, 4.736211, 2.007004>,  <2.445454, 4.430735, 1.936781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.693956, 4.736211, 2.007004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396163, 0.499397, -0.770491,
		-0.676089, 0.409122, 0.612799,
		0.621255, 0.763689, 0.175558,
		2.880333, 4.965318, 2.059672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.023693, 4.949365, 1.814982>,  <2.445454, 4.430735, 1.936781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.023693, 4.949365, 1.814982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.390245, 5.108459, 1.796868>,  <2.610177, 5.203916, 1.785999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.390245, 5.108459, 1.796868>,  <2.023693, 4.949365, 1.814982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.390245, 5.108459, 1.796868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275380, 0.544247, -0.792440,
		-0.290535, 0.738648, 0.608266,
		0.916381, 0.397736, -0.045286,
		2.665160, 5.227780, 1.783282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.883700, 5.699584, 1.838911>,  <2.023693, 4.949365, 1.814982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.883700, 5.699584, 1.838911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220596, 5.595489, 1.650059>,  <2.422734, 5.533031, 1.536748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220596, 5.595489, 1.650059>,  <1.883700, 5.699584, 1.838911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.220596, 5.595489, 1.650059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263552, 0.565220, -0.781707,
		0.470287, 0.782816, 0.407465,
		0.842241, -0.260238, -0.472129,
		2.473269, 5.517417, 1.508420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.931221, 0.929167, 0.311836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.320518, 1.006638, 0.262383>,  <2.554097, 1.053120, 0.232710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.320518, 1.006638, 0.262383>,  <1.931221, 0.929167, 0.311836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.320518, 1.006638, 0.262383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206889, -0.504542, 0.838233,
		0.099968, -0.841384, -0.531112,
		0.973244, 0.193677, -0.123635,
		2.612492, 1.064741, 0.225292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.313816, 0.306665, 0.388011>,  <1.931221, 0.929167, 0.311836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.313816, 0.306665, 0.388011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543991, 0.614597, 0.498453>,  <2.682096, 0.799356, 0.564719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543991, 0.614597, 0.498453>,  <2.313816, 0.306665, 0.388011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543991, 0.614597, 0.498453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285527, -0.505460, 0.814238,
		0.766385, -0.389707, -0.510668,
		0.575437, 0.769830, 0.276105,
		2.716622, 0.845546, 0.581285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.044412, 0.075361, 0.508924>,  <2.313816, 0.306665, 0.388011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.044412, 0.075361, 0.508924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.933327, 0.377132, 0.746819>,  <2.866676, 0.558195, 0.889555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.933327, 0.377132, 0.746819>,  <3.044412, 0.075361, 0.508924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.933327, 0.377132, 0.746819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376610, -0.484034, 0.789859,
		0.883765, 0.443337, -0.149703,
		-0.277712, 0.754429, 0.594737,
		2.850013, 0.603461, 0.925240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.644224, 0.316648, 0.927912>,  <3.044412, 0.075361, 0.508924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.644224, 0.316648, 0.927912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.300030, 0.399609, 1.114052>,  <3.093513, 0.449385, 1.225736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.300030, 0.399609, 1.114052>,  <3.644224, 0.316648, 0.927912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300030, 0.399609, 1.114052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380851, -0.344839, 0.857927,
		0.338406, 0.915462, 0.217740,
		-0.860485, 0.207401, 0.465350,
		3.041884, 0.461829, 1.253657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.880687, 0.493952, 1.442005>,  <3.644224, 0.316648, 0.927912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.880687, 0.493952, 1.442005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.504135, 0.415779, 1.551994>,  <3.278204, 0.368875, 1.617988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.504135, 0.415779, 1.551994>,  <3.880687, 0.493952, 1.442005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.504135, 0.415779, 1.551994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323237, -0.289246, 0.901030,
		-0.096556, 0.937093, 0.335461,
		-0.941379, -0.195433, 0.274974,
		3.221721, 0.357149, 1.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756605, 0.891317, 2.080451>,  <3.880687, 0.493952, 1.442005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756605, 0.891317, 2.080451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482796, 0.599754, 2.076001>,  <3.318510, 0.424817, 2.073331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482796, 0.599754, 2.076001>,  <3.756605, 0.891317, 2.080451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.482796, 0.599754, 2.076001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323982, -0.317854, 0.891069,
		-0.653042, 0.606354, 0.453731,
		-0.684524, -0.728906, -0.011124,
		3.277439, 0.381083, 2.072664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.602519, 0.841591, 2.787088>,  <3.756605, 0.891317, 2.080451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.602519, 0.841591, 2.787088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.476837, 0.500679, 2.619806>,  <3.401428, 0.296132, 2.519437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.476837, 0.500679, 2.619806>,  <3.602519, 0.841591, 2.787088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.476837, 0.500679, 2.619806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138342, -0.476917, 0.867993,
		-0.939222, 0.214871, 0.267755,
		-0.314204, -0.852280, -0.418205,
		3.382576, 0.244995, 2.494345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.997412, 0.643119, 3.209267>,  <3.602519, 0.841591, 2.787088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.997412, 0.643119, 3.209267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176414, 0.331387, 3.033821>,  <3.283816, 0.144347, 2.928554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176414, 0.331387, 3.033821>,  <2.997412, 0.643119, 3.209267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176414, 0.331387, 3.033821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156496, -0.414652, 0.896422,
		-0.880481, -0.469796, -0.063597,
		0.447506, -0.779330, -0.438614,
		3.310666, 0.097587, 2.902237>
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
