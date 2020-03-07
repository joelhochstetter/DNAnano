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
	<5.149257, 2.230134, 1.989673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.405621, 2.518093, 2.096241>,  <5.559439, 2.690869, 2.160182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.405621, 2.518093, 2.096241>,  <5.149257, 2.230134, 1.989673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.405621, 2.518093, 2.096241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766339, 0.620078, 0.168009,
		-0.044252, -0.311848, 0.949101,
		0.640910, 0.719899, 0.266421,
		5.597894, 2.734063, 2.176167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.139829, 2.506422, 2.711490>,  <5.149257, 2.230134, 1.989673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.139829, 2.506422, 2.711490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.235468, 2.789455, 2.445511>,  <5.292851, 2.959276, 2.285923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.235468, 2.789455, 2.445511>,  <5.139829, 2.506422, 2.711490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235468, 2.789455, 2.445511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818493, 0.515302, 0.254034,
		0.522402, 0.483521, 0.702356,
		0.239095, 0.707581, -0.664953,
		5.307198, 3.001731, 2.246026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.084361, 3.247429, 2.968785>,  <5.139829, 2.506422, 2.711490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.084361, 3.247429, 2.968785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.008366, 3.297306, 2.579250>,  <4.962769, 3.327232, 2.345530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.008366, 3.297306, 2.579250>,  <5.084361, 3.247429, 2.968785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.008366, 3.297306, 2.579250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877984, 0.422321, 0.225363,
		0.439372, 0.897829, 0.029241,
		-0.189988, 0.124692, -0.973836,
		4.951369, 3.334714, 2.287100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.033427, 3.936976, 2.805659>,  <5.084361, 3.247429, 2.968785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.033427, 3.936976, 2.805659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.812057, 3.712460, 2.559513>,  <4.679236, 3.577750, 2.411825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.812057, 3.712460, 2.559513>,  <5.033427, 3.936976, 2.805659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.812057, 3.712460, 2.559513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832524, 0.394988, 0.388444,
		0.025031, 0.727280, -0.685884,
		-0.553424, -0.561291, -0.615365,
		4.646030, 3.544072, 2.374903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.407293, 4.331627, 2.665486>,  <5.033427, 3.936976, 2.805659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.407293, 4.331627, 2.665486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320162, 3.950638, 2.580307>,  <4.267883, 3.722044, 2.529200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320162, 3.950638, 2.580307>,  <4.407293, 4.331627, 2.665486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320162, 3.950638, 2.580307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917492, 0.125441, 0.377455,
		-0.332804, 0.277598, -0.901211,
		-0.217829, -0.952473, -0.212947,
		4.254813, 3.664896, 2.516423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681990, 4.347959, 2.379132>,  <4.407293, 4.331627, 2.665486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681990, 4.347959, 2.379132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.754432, 3.979893, 2.517982>,  <3.797897, 3.759053, 2.601293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.754432, 3.979893, 2.517982>,  <3.681990, 4.347959, 2.379132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.754432, 3.979893, 2.517982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926031, -0.040697, 0.375248,
		-0.331163, -0.389409, -0.859472,
		0.181103, -0.920166, 0.347127,
		3.808763, 3.703843, 2.622121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.085607, 3.990702, 2.257925>,  <3.681990, 4.347959, 2.379132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.085607, 3.990702, 2.257925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.271913, 3.790672, 2.549950>,  <3.383696, 3.670655, 2.725164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.271913, 3.790672, 2.549950>,  <3.085607, 3.990702, 2.257925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.271913, 3.790672, 2.549950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876018, -0.143915, 0.460304,
		-0.125118, -0.853942, -0.505102,
		0.465765, -0.500071, 0.730063,
		3.411642, 3.640650, 2.768968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.685960, 3.468290, 2.368065>,  <3.085607, 3.990702, 2.257925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.685960, 3.468290, 2.368065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.916202, 3.444286, 2.694275>,  <3.054347, 3.429884, 2.890001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.916202, 3.444286, 2.694275>,  <2.685960, 3.468290, 2.368065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.916202, 3.444286, 2.694275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805657, -0.212349, 0.553014,
		0.139990, -0.975350, -0.170574,
		0.575603, -0.060008, 0.815524,
		3.088883, 3.426284, 2.938932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.852245, 2.957878, 3.749888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.994785, 3.227921, 4.008266>,  <2.080310, 3.389946, 4.163293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.994785, 3.227921, 4.008266>,  <1.852245, 2.957878, 3.749888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.994785, 3.227921, 4.008266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932881, -0.218294, -0.286498,
		-0.052411, 0.704684, -0.707583,
		0.356352, 0.675106, 0.645945,
		2.101691, 3.430452, 4.202050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.118184, 3.527484, 3.498053>,  <1.852245, 2.957878, 3.749888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.118184, 3.527484, 3.498053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.306499, 3.417068, 3.833233>,  <2.419489, 3.350819, 4.034341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.306499, 3.417068, 3.833233>,  <2.118184, 3.527484, 3.498053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.306499, 3.417068, 3.833233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826682, -0.193719, -0.528271,
		0.308150, 0.941422, 0.136995,
		0.470788, -0.276038, 0.837951,
		2.447736, 3.334257, 4.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.647547, 4.033977, 3.523535>,  <2.118184, 3.527484, 3.498053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.647547, 4.033977, 3.523535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734640, 3.684250, 3.697044>,  <2.786896, 3.474413, 3.801150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734640, 3.684250, 3.697044>,  <2.647547, 4.033977, 3.523535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.734640, 3.684250, 3.697044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768872, -0.120106, -0.628021,
		0.601189, 0.470257, 0.646088,
		0.217733, -0.874318, 0.433774,
		2.799960, 3.421954, 3.827177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.353868, 3.998808, 3.855223>,  <2.647547, 4.033977, 3.523535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.353868, 3.998808, 3.855223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214157, 3.647621, 3.724270>,  <3.130330, 3.436909, 3.645698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.214157, 3.647621, 3.724270>,  <3.353868, 3.998808, 3.855223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214157, 3.647621, 3.724270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825371, -0.122871, -0.551058,
		0.443584, -0.462685, 0.767564,
		-0.349278, -0.877966, -0.327384,
		3.109374, 3.384231, 3.626055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.805542, 3.442412, 3.995820>,  <3.353868, 3.998808, 3.855223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.805542, 3.442412, 3.995820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585155, 3.408035, 3.663784>,  <3.452924, 3.387409, 3.464562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585155, 3.408035, 3.663784>,  <3.805542, 3.442412, 3.995820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585155, 3.408035, 3.663784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829461, 0.053039, -0.556040,
		0.091815, -0.994887, 0.042063,
		-0.550966, -0.085942, -0.830090,
		3.419866, 3.382253, 3.414757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.996871, 2.820917, 3.547273>,  <3.805542, 3.442412, 3.995820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.996871, 2.820917, 3.547273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847649, 3.103004, 3.306110>,  <3.758116, 3.272257, 3.161413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847649, 3.103004, 3.306110>,  <3.996871, 2.820917, 3.547273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847649, 3.103004, 3.306110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728401, -0.179883, -0.661116,
		-0.574684, -0.685790, -0.446576,
		-0.373055, 0.705220, -0.602906,
		3.735732, 3.314570, 3.125239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.184138, 2.498159, 2.969736>,  <3.996871, 2.820917, 3.547273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.184138, 2.498159, 2.969736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.061911, 2.863426, 2.861847>,  <3.988574, 3.082587, 2.797113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.061911, 2.863426, 2.861847>,  <4.184138, 2.498159, 2.969736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.061911, 2.863426, 2.861847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676964, 0.009149, -0.735959,
		-0.669587, -0.407478, -0.620979,
		-0.305569, 0.913169, -0.269722,
		3.970240, 3.137377, 2.780930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.940184, 2.469148, 2.258460>,  <4.184138, 2.498159, 2.969736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.940184, 2.469148, 2.258460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054695, 2.839401, 2.357452>,  <4.123402, 3.061553, 2.416848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.054695, 2.839401, 2.357452>,  <3.940184, 2.469148, 2.258460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.054695, 2.839401, 2.357452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771448, -0.069488, -0.632487,
		-0.568254, 0.371987, -0.733971,
		0.286279, 0.925633, 0.247482,
		4.140579, 3.117091, 2.431697>
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
