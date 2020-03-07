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
	<2.618158, 3.334666, -0.359224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.608978, 3.649389, -0.605932>,  <2.603470, 3.838223, -0.753957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.608978, 3.649389, -0.605932>,  <2.618158, 3.334666, -0.359224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.608978, 3.649389, -0.605932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311496, 0.580594, 0.752251,
		0.949970, 0.209386, 0.231763,
		-0.022951, 0.786809, -0.616770,
		2.602093, 3.885432, -0.790963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930372, 3.913037, -0.047134>,  <2.618158, 3.334666, -0.359224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930372, 3.913037, -0.047134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.684860, 4.087280, -0.310503>,  <2.537553, 4.191826, -0.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.684860, 4.087280, -0.310503>,  <2.930372, 3.913037, -0.047134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684860, 4.087280, -0.310503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411250, 0.535495, 0.737644,
		0.673906, 0.723527, -0.149532,
		-0.613779, 0.435608, -0.658423,
		2.500727, 4.217963, -0.508030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.951123, 4.642179, -0.003851>,  <2.930372, 3.913037, -0.047134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.951123, 4.642179, -0.003851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591446, 4.528515, -0.136942>,  <2.375640, 4.460317, -0.216796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.591446, 4.528515, -0.136942>,  <2.951123, 4.642179, -0.003851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.591446, 4.528515, -0.136942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435983, 0.646259, 0.626313,
		0.037055, 0.708239, -0.705000,
		-0.899192, -0.284160, -0.332727,
		2.321688, 4.443267, -0.236760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.599753, 5.220154, -0.154805>,  <2.951123, 4.642179, -0.003851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.599753, 5.220154, -0.154805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317661, 4.949644, -0.069666>,  <2.148406, 4.787338, -0.018582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317661, 4.949644, -0.069666>,  <2.599753, 5.220154, -0.154805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.317661, 4.949644, -0.069666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502473, 0.688557, 0.522886,
		-0.500173, 0.261804, -0.825400,
		-0.705229, -0.676275, 0.212848,
		2.106093, 4.746761, -0.005812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.004605, 5.517335, -0.282096>,  <2.599753, 5.220154, -0.154805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.004605, 5.517335, -0.282096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912842, 5.239853, -0.008997>,  <1.857784, 5.073363, 0.154862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912842, 5.239853, -0.008997>,  <2.004605, 5.517335, -0.282096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912842, 5.239853, -0.008997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462480, 0.694901, 0.550659,
		-0.856437, -0.189431, -0.480241,
		-0.229408, -0.693707, 0.682746,
		1.844019, 5.031741, 0.195827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.351487, 5.719792, -0.078796>,  <2.004605, 5.517335, -0.282096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.351487, 5.719792, -0.078796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478329, 5.469437, 0.206219>,  <1.554434, 5.319223, 0.377228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.478329, 5.469437, 0.206219>,  <1.351487, 5.719792, -0.078796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.478329, 5.469437, 0.206219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450335, 0.561837, 0.693929,
		-0.834652, -0.540928, -0.103698,
		0.317105, -0.625888, 0.712538,
		1.573460, 5.281671, 0.419980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704732, 5.445121, 0.238493>,  <1.351487, 5.719792, -0.078796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704732, 5.445121, 0.238493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005379, 5.393585, 0.497252>,  <1.185767, 5.362664, 0.652506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005379, 5.393585, 0.497252>,  <0.704732, 5.445121, 0.238493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005379, 5.393585, 0.497252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503218, 0.522044, 0.688653,
		-0.426433, -0.843132, 0.327542,
		0.751616, -0.128840, 0.646895,
		1.230864, 5.354933, 0.691320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.374845, 5.524880, 0.883543>,  <0.704732, 5.445121, 0.238493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.374845, 5.524880, 0.883543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.763981, 5.510674, 0.975039>,  <0.997462, 5.502150, 1.029936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.763981, 5.510674, 0.975039>,  <0.374845, 5.524880, 0.883543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.763981, 5.510674, 0.975039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203693, 0.338082, 0.918809,
		-0.109967, -0.940446, 0.321665,
		0.972839, -0.035518, 0.228740,
		1.055833, 5.500019, 1.043660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.621531, 1.117868, 1.425359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.902374, 1.268860, 1.666872>,  <1.070880, 1.359455, 1.811780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.902374, 1.268860, 1.666872>,  <0.621531, 1.117868, 1.425359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.902374, 1.268860, 1.666872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710013, -0.306724, -0.633878,
		-0.054081, 0.873745, -0.483368,
		0.702109, 0.377479, 0.603783,
		1.113007, 1.382103, 1.848007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.057275, 1.635215, 1.192222>,  <0.621531, 1.117868, 1.425359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.057275, 1.635215, 1.192222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204369, 1.373802, 1.456848>,  <1.292625, 1.216954, 1.615624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.204369, 1.373802, 1.456848>,  <1.057275, 1.635215, 1.192222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.204369, 1.373802, 1.456848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545842, -0.424272, -0.722530,
		0.752880, 0.626808, 0.200707,
		0.367734, -0.653532, 0.661564,
		1.314689, 1.177742, 1.655317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.894490, 1.547739, 1.201705>,  <1.057275, 1.635215, 1.192222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.894490, 1.547739, 1.201705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.661163, 1.241070, 1.309004>,  <1.521168, 1.057068, 1.373383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.661163, 1.241070, 1.309004>,  <1.894490, 1.547739, 1.201705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.661163, 1.241070, 1.309004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512829, -0.603729, -0.610342,
		0.629880, -0.218457, 0.745337,
		-0.583315, -0.766673, 0.268246,
		1.486169, 1.011068, 1.389478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.312991, 0.864866, 1.225506>,  <1.894490, 1.547739, 1.201705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.312991, 0.864866, 1.225506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929466, 0.755695, 1.194031>,  <1.699351, 0.690193, 1.175146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929466, 0.755695, 1.194031>,  <2.312991, 0.864866, 1.225506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.929466, 0.755695, 1.194031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272174, -0.803548, -0.529369,
		0.081250, -0.528982, 0.844735,
		-0.958812, -0.272925, -0.078687,
		1.641823, 0.673818, 1.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.201846, 0.154287, 1.533410>,  <2.312991, 0.864866, 1.225506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.201846, 0.154287, 1.533410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.910408, 0.217655, 1.266861>,  <1.735545, 0.255676, 1.106932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.910408, 0.217655, 1.266861>,  <2.201846, 0.154287, 1.533410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.910408, 0.217655, 1.266861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153808, -0.910197, -0.384558,
		-0.667451, -0.382680, 0.638799,
		-0.728595, 0.158421, -0.666372,
		1.691829, 0.265182, 1.066949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.950068, -0.539220, 1.397027>,  <2.201846, 0.154287, 1.533410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.950068, -0.539220, 1.397027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.821709, -0.301037, 1.102421>,  <1.744693, -0.158127, 0.925657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.821709, -0.301037, 1.102421>,  <1.950068, -0.539220, 1.397027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.821709, -0.301037, 1.102421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137853, -0.739995, -0.658335,
		-0.937027, -0.312790, 0.155378,
		-0.320900, 0.595458, -0.736515,
		1.725439, -0.122399, 0.881467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.566700, -1.003545, 0.991929>,  <1.950068, -0.539220, 1.397027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.566700, -1.003545, 0.991929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.611076, -0.692574, 0.744286>,  <1.637702, -0.505990, 0.595700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.611076, -0.692574, 0.744286>,  <1.566700, -1.003545, 0.991929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.611076, -0.692574, 0.744286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192919, -0.627951, -0.753963,
		-0.974923, -0.035792, -0.219647,
		0.110941, 0.777430, -0.619108,
		1.644359, -0.459345, 0.558553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.222108, -1.153195, 0.357557>,  <1.566700, -1.003545, 0.991929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.222108, -1.153195, 0.357557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515129, -0.903671, 0.248579>,  <1.690942, -0.753957, 0.183192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515129, -0.903671, 0.248579>,  <1.222108, -1.153195, 0.357557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.515129, -0.903671, 0.248579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212522, -0.589821, -0.779067,
		-0.646683, 0.512808, -0.564649,
		0.732554, 0.623810, -0.272444,
		1.734895, -0.716528, 0.166846>
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
