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
	<24.166521, 35.158718, 35.331810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154198, 35.002247, 34.963890>,  <24.146803, 34.908363, 34.743137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154198, 35.002247, 34.963890>,  <24.166521, 35.158718, 35.331810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154198, 35.002247, 34.963890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973242, 0.197906, -0.116767,
		0.227710, -0.898784, 0.374613,
		-0.030811, -0.391178, -0.919799,
		24.144955, 34.884895, 34.687950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663366, 34.839283, 35.854496>,  <24.166521, 35.158718, 35.331810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663366, 34.839283, 35.854496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031040, 34.786995, 35.705894>,  <25.251644, 34.755623, 35.616734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031040, 34.786995, 35.705894>,  <24.663366, 34.839283, 35.854496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031040, 34.786995, 35.705894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084060, -0.856445, 0.509348,
		-0.384755, -0.499413, -0.776242,
		0.919183, -0.130723, -0.371502,
		25.306795, 34.747780, 35.594444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823154, 34.150604, 35.472145>,  <24.663366, 34.839283, 35.854496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823154, 34.150604, 35.472145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170078, 34.288216, 35.616043>,  <25.378233, 34.370785, 35.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170078, 34.288216, 35.616043>,  <24.823154, 34.150604, 35.472145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170078, 34.288216, 35.616043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146456, -0.867094, 0.476128,
		0.475736, -0.360264, -0.802425,
		0.867310, 0.344031, 0.359746,
		25.430271, 34.391426, 35.723969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268332, 33.642467, 35.354149>,  <24.823154, 34.150604, 35.472145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268332, 33.642467, 35.354149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444481, 33.847805, 35.648781>,  <25.550171, 33.971008, 35.825558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444481, 33.847805, 35.648781>,  <25.268332, 33.642467, 35.354149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444481, 33.847805, 35.648781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192125, -0.855289, 0.481216,
		0.877017, -0.070400, -0.475273,
		0.440373, 0.513346, 0.736578,
		25.576593, 34.001808, 35.869755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946793, 33.264885, 35.561119>,  <25.268332, 33.642467, 35.354149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946793, 33.264885, 35.561119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884153, 33.494617, 35.882523>,  <25.846569, 33.632458, 36.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884153, 33.494617, 35.882523>,  <25.946793, 33.264885, 35.561119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884153, 33.494617, 35.882523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150667, -0.790130, 0.594133,
		0.976102, 0.214103, 0.037202,
		-0.156600, 0.574330, 0.803506,
		25.837173, 33.666916, 36.123573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484676, 33.449902, 35.791851>,  <25.946793, 33.264885, 35.561119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484676, 33.449902, 35.791851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202131, 33.413597, 36.072655>,  <26.032604, 33.391815, 36.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202131, 33.413597, 36.072655>,  <26.484676, 33.449902, 35.791851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202131, 33.413597, 36.072655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506407, -0.757730, 0.411579,
		0.494576, 0.646225, 0.581195,
		-0.706361, -0.090765, 0.702008,
		25.990223, 33.386368, 36.283257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855389, 33.616875, 36.381893>,  <26.484676, 33.449902, 35.791851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855389, 33.616875, 36.381893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540482, 33.382221, 36.457855>,  <26.351538, 33.241428, 36.503433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540482, 33.382221, 36.457855>,  <26.855389, 33.616875, 36.381893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540482, 33.382221, 36.457855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604379, -0.673104, 0.426212,
		-0.122206, 0.450319, 0.884465,
		-0.787268, -0.586638, 0.189906,
		26.304300, 33.206230, 36.514828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857714, 33.472355, 37.098145>,  <26.855389, 33.616875, 36.381893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857714, 33.472355, 37.098145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689396, 33.168224, 36.900219>,  <26.588406, 32.985748, 36.781464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689396, 33.168224, 36.900219>,  <26.857714, 33.472355, 37.098145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689396, 33.168224, 36.900219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546643, -0.647825, 0.530570,
		-0.723956, -0.047223, 0.688228,
		-0.420795, -0.760324, -0.494811,
		26.563158, 32.940128, 36.751774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396646, 32.952263, 37.509247>,  <26.857714, 33.472355, 37.098145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396646, 32.952263, 37.509247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610308, 32.791523, 37.211739>,  <26.738504, 32.695080, 37.033234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610308, 32.791523, 37.211739>,  <26.396646, 32.952263, 37.509247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610308, 32.791523, 37.211739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510552, -0.547900, 0.662678,
		-0.673810, -0.733706, -0.087497,
		0.534151, -0.401847, -0.743775,
		26.770554, 32.670967, 36.988605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526999, 32.249249, 37.764843>,  <26.396646, 32.952263, 37.509247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526999, 32.249249, 37.764843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783913, 32.308731, 37.464081>,  <26.938061, 32.344421, 37.283623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783913, 32.308731, 37.464081>,  <26.526999, 32.249249, 37.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783913, 32.308731, 37.464081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666505, -0.592764, 0.452109,
		-0.378469, -0.791529, -0.479837,
		0.642287, 0.148704, -0.751901,
		26.976599, 32.353344, 37.238510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675600, 31.523306, 37.461658>,  <26.526999, 32.249249, 37.764843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675600, 31.523306, 37.461658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959620, 31.799040, 37.404179>,  <27.130032, 31.964479, 37.369690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959620, 31.799040, 37.404179>,  <26.675600, 31.523306, 37.461658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959620, 31.799040, 37.404179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669988, -0.598584, 0.439105,
		0.216672, -0.408065, -0.886869,
		0.710049, 0.689333, -0.143702,
		27.172634, 32.005840, 37.361069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189671, 31.155970, 37.239567>,  <26.675600, 31.523306, 37.461658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189671, 31.155970, 37.239567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315563, 31.498886, 37.402534>,  <27.391098, 31.704636, 37.500317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315563, 31.498886, 37.402534>,  <27.189671, 31.155970, 37.239567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315563, 31.498886, 37.402534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718720, -0.495614, 0.487655,
		0.619988, 0.139344, -0.772139,
		0.314731, 0.857292, 0.407424,
		27.409983, 31.756073, 37.524761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799669, 31.306725, 36.974083>,  <27.189671, 31.155970, 37.239567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799669, 31.306725, 36.974083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781572, 31.405876, 37.361176>,  <27.770714, 31.465368, 37.593433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781572, 31.405876, 37.361176>,  <27.799669, 31.306725, 36.974083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781572, 31.405876, 37.361176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761088, -0.618921, 0.194117,
		0.647068, 0.745313, -0.160656,
		-0.045244, 0.247881, 0.967733,
		27.768000, 31.480240, 37.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467457, 31.586235, 37.189800>,  <27.799669, 31.306725, 36.974083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467457, 31.586235, 37.189800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257633, 31.401588, 37.475945>,  <28.131739, 31.290800, 37.647633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257633, 31.401588, 37.475945>,  <28.467457, 31.586235, 37.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257633, 31.401588, 37.475945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824601, -0.484529, 0.292001,
		0.211823, 0.743063, 0.634814,
		-0.524561, -0.461616, 0.715365,
		28.100266, 31.263103, 37.690556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657721, 32.321762, 36.880470>,  <28.467457, 31.586235, 37.189800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657721, 32.321762, 36.880470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449528, 31.995399, 36.779758>,  <28.324612, 31.799582, 36.719330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449528, 31.995399, 36.779758>,  <28.657721, 32.321762, 36.880470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449528, 31.995399, 36.779758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432243, -0.506058, 0.746372,
		-0.736386, 0.279642, 0.616064,
		-0.520481, -0.815908, -0.251781,
		28.293383, 31.750628, 36.704224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141195, 32.820099, 37.012577>,  <28.657721, 32.321762, 36.880470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141195, 32.820099, 37.012577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863180, 32.548126, 37.106060>,  <27.696371, 32.384945, 37.162151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863180, 32.548126, 37.106060>,  <28.141195, 32.820099, 37.012577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863180, 32.548126, 37.106060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587957, 0.350435, -0.729041,
		0.413796, -0.644122, -0.643335,
		-0.695039, -0.679928, 0.233707,
		27.654669, 32.344147, 37.176170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852606, 32.562054, 36.340221>,  <28.141195, 32.820099, 37.012577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852606, 32.562054, 36.340221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566427, 32.473301, 36.605221>,  <27.394720, 32.420052, 36.764221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566427, 32.473301, 36.605221>,  <27.852606, 32.562054, 36.340221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566427, 32.473301, 36.605221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698659, 0.222394, -0.680013,
		0.003543, -0.949374, -0.314127,
		-0.715446, -0.221877, 0.662501,
		27.351793, 32.406738, 36.803970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379824, 32.077919, 36.060150>,  <27.852606, 32.562054, 36.340221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379824, 32.077919, 36.060150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185246, 32.287334, 36.339943>,  <27.068499, 32.412983, 36.507820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185246, 32.287334, 36.339943>,  <27.379824, 32.077919, 36.060150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185246, 32.287334, 36.339943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639698, 0.331896, -0.693276,
		-0.595113, -0.784700, 0.173457,
		-0.486444, 0.523537, 0.699486,
		27.039312, 32.444397, 36.549789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716850, 31.840855, 36.309719>,  <27.379824, 32.077919, 36.060150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716850, 31.840855, 36.309719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753284, 32.239185, 36.307568>,  <26.775145, 32.478184, 36.306278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753284, 32.239185, 36.307568>,  <26.716850, 31.840855, 36.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753284, 32.239185, 36.307568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680564, 0.058308, -0.730365,
		-0.727005, 0.070184, 0.683036,
		0.091086, 0.995829, -0.005375,
		26.780611, 32.537933, 36.305954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071342, 32.152069, 36.406307>,  <26.716850, 31.840855, 36.309719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071342, 32.152069, 36.406307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311031, 32.398121, 36.201347>,  <26.454845, 32.545750, 36.078373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311031, 32.398121, 36.201347>,  <26.071342, 32.152069, 36.406307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311031, 32.398121, 36.201347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625572, -0.039636, -0.779159,
		-0.499590, 0.787432, 0.361054,
		0.599224, 0.615126, -0.512397,
		26.490799, 32.582657, 36.047626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703665, 32.051544, 36.978897>,  <26.071342, 32.152069, 36.406307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703665, 32.051544, 36.978897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911108, 32.393547, 36.979652>,  <26.035574, 32.598751, 36.980106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911108, 32.393547, 36.979652>,  <25.703665, 32.051544, 36.978897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911108, 32.393547, 36.979652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741697, 0.450973, -0.496496,
		-0.425362, 0.256085, 0.868037,
		0.518607, 0.855011, 0.001889,
		26.066690, 32.650051, 36.980221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253534, 32.578796, 37.084511>,  <25.703665, 32.051544, 36.978897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253534, 32.578796, 37.084511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553640, 32.782413, 36.915760>,  <25.733704, 32.904583, 36.814510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553640, 32.782413, 36.915760>,  <25.253534, 32.578796, 37.084511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553640, 32.782413, 36.915760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661129, 0.574347, -0.482736,
		-0.003426, 0.641097, 0.767452,
		0.750265, 0.509039, -0.421880,
		25.778719, 32.935123, 36.789196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939714, 33.151184, 37.004536>,  <25.253534, 32.578796, 37.084511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939714, 33.151184, 37.004536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269737, 33.199883, 36.783825>,  <25.467751, 33.229103, 36.651398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269737, 33.199883, 36.783825>,  <24.939714, 33.151184, 37.004536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269737, 33.199883, 36.783825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493920, 0.629699, -0.599601,
		0.274454, 0.767239, 0.579671,
		0.825056, 0.121748, -0.551778,
		25.517254, 33.236408, 36.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133366, 33.898823, 37.101723>,  <24.939714, 33.151184, 37.004536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133366, 33.898823, 37.101723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460146, 33.775326, 36.906883>,  <25.656214, 33.701225, 36.789978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460146, 33.775326, 36.906883>,  <25.133366, 33.898823, 37.101723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460146, 33.775326, 36.906883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058771, 0.795657, -0.602889,
		0.573707, 0.521157, 0.631866,
		0.816949, -0.308747, -0.487103,
		25.705231, 33.682701, 36.760754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642860, 34.489349, 37.107021>,  <25.133366, 33.898823, 37.101723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642860, 34.489349, 37.107021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715914, 34.239525, 36.803295>,  <25.759747, 34.089630, 36.621059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715914, 34.239525, 36.803295>,  <25.642860, 34.489349, 37.107021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715914, 34.239525, 36.803295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025987, 0.775103, -0.631300,
		0.982837, 0.095565, 0.157791,
		0.182635, -0.624565, -0.759317,
		25.770704, 34.052155, 36.575500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270079, 34.701138, 36.731773>,  <25.642860, 34.489349, 37.107021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270079, 34.701138, 36.731773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040892, 34.486229, 36.484211>,  <25.903379, 34.357285, 36.335674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040892, 34.486229, 36.484211>,  <26.270079, 34.701138, 36.731773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040892, 34.486229, 36.484211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132587, 0.684445, -0.716907,
		0.808783, -0.492823, -0.320929,
		-0.572966, -0.537271, -0.618910,
		25.869001, 34.325047, 36.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674822, 34.708344, 36.132633>,  <26.270079, 34.701138, 36.731773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674822, 34.708344, 36.132633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299570, 34.621719, 36.024548>,  <26.074419, 34.569744, 35.959698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299570, 34.621719, 36.024548>,  <26.674822, 34.708344, 36.132633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299570, 34.621719, 36.024548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028093, 0.825351, -0.563921,
		0.345143, -0.521440, -0.780370,
		-0.938129, -0.216556, -0.270215,
		26.018131, 34.556751, 35.943481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637672, 34.588879, 35.323597>,  <26.674822, 34.708344, 36.132633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637672, 34.588879, 35.323597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308039, 34.696445, 35.523022>,  <26.110258, 34.760986, 35.642677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308039, 34.696445, 35.523022>,  <26.637672, 34.588879, 35.323597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308039, 34.696445, 35.523022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013093, 0.888939, -0.457838,
		-0.566316, -0.370770, -0.736082,
		-0.824085, 0.268919, 0.498565,
		26.060814, 34.777122, 35.672592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756084, 34.655010, 34.556244>,  <26.637672, 34.588879, 35.323597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756084, 34.655010, 34.556244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105902, 34.788124, 34.697342>,  <27.315792, 34.867992, 34.782001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105902, 34.788124, 34.697342>,  <26.756084, 34.655010, 34.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105902, 34.788124, 34.697342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140161, 0.522887, -0.840799,
		-0.464254, 0.784755, 0.410643,
		0.874541, 0.332789, 0.352744,
		27.368263, 34.887962, 34.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883747, 35.434711, 34.747246>,  <26.756084, 34.655010, 34.556244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883747, 35.434711, 34.747246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163002, 35.207973, 34.572296>,  <27.330555, 35.071930, 34.467327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163002, 35.207973, 34.572296>,  <26.883747, 35.434711, 34.747246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163002, 35.207973, 34.572296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147444, 0.483962, -0.862578,
		0.700617, 0.666686, 0.254295,
		0.698138, -0.566842, -0.437371,
		27.372444, 35.037922, 34.441086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546276, 35.822319, 34.423683>,  <26.883747, 35.434711, 34.747246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546276, 35.822319, 34.423683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502724, 35.486122, 34.211372>,  <27.476593, 35.284405, 34.083984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502724, 35.486122, 34.211372>,  <27.546276, 35.822319, 34.423683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502724, 35.486122, 34.211372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099045, 0.540467, -0.835515,
		0.989108, -0.038400, -0.142092,
		-0.108880, -0.840488, -0.530777,
		27.470060, 35.233974, 34.052139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016640, 35.882492, 33.838718>,  <27.546276, 35.822319, 34.423683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016640, 35.882492, 33.838718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753653, 35.594627, 33.749435>,  <27.595861, 35.421909, 33.695866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753653, 35.594627, 33.749435>,  <28.016640, 35.882492, 33.838718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753653, 35.594627, 33.749435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336663, 0.545591, -0.767456,
		0.674090, -0.429431, -0.600992,
		-0.657465, -0.719666, -0.223203,
		27.556414, 35.378727, 33.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092485, 35.849228, 33.132862>,  <28.016640, 35.882492, 33.838718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092485, 35.849228, 33.132862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756708, 35.645046, 33.207451>,  <27.555243, 35.522537, 33.252205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756708, 35.645046, 33.207451>,  <28.092485, 35.849228, 33.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756708, 35.645046, 33.207451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416862, 0.384675, -0.823560,
		0.348650, -0.769070, -0.535700,
		-0.839446, -0.510448, 0.186479,
		27.504875, 35.491909, 33.263393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914843, 35.402081, 32.558392>,  <28.092485, 35.849228, 33.132862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914843, 35.402081, 32.558392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568554, 35.477562, 32.743828>,  <27.360781, 35.522850, 32.855091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568554, 35.477562, 32.743828>,  <27.914843, 35.402081, 32.558392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568554, 35.477562, 32.743828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413880, 0.250975, -0.875051,
		-0.281473, -0.949422, -0.139175,
		-0.865723, 0.188702, 0.463589,
		27.308838, 35.534172, 32.882904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475504, 34.918728, 32.353882>,  <27.914843, 35.402081, 32.558392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475504, 34.918728, 32.353882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248571, 35.217102, 32.493439>,  <27.112411, 35.396126, 32.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248571, 35.217102, 32.493439>,  <27.475504, 34.918728, 32.353882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248571, 35.217102, 32.493439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526167, -0.002445, -0.850378,
		-0.633470, -0.666019, 0.393871,
		-0.567331, 0.745931, 0.348888,
		27.078373, 35.440880, 32.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831059, 34.626339, 32.282841>,  <27.475504, 34.918728, 32.353882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831059, 34.626339, 32.282841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744116, 34.947502, 32.504868>,  <26.691950, 35.140202, 32.638084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744116, 34.947502, 32.504868>,  <26.831059, 34.626339, 32.282841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744116, 34.947502, 32.504868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646012, 0.307965, -0.698446,
		-0.731728, -0.510388, 0.451750,
		-0.217355, 0.802908, 0.555063,
		26.678909, 35.188374, 32.671387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070152, 34.628078, 32.333344>,  <26.831059, 34.626339, 32.282841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070152, 34.628078, 32.333344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231833, 34.992199, 32.369068>,  <26.328840, 35.210670, 32.390503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231833, 34.992199, 32.369068>,  <26.070152, 34.628078, 32.333344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231833, 34.992199, 32.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598632, 0.337102, -0.726637,
		-0.691564, 0.240244, 0.681192,
		0.404201, 0.910299, 0.089310,
		26.353092, 35.265289, 32.395863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473700, 35.002300, 32.189018>,  <26.070152, 34.628078, 32.333344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473700, 35.002300, 32.189018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785488, 35.248497, 32.142380>,  <25.972561, 35.396217, 32.114395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785488, 35.248497, 32.142380>,  <25.473700, 35.002300, 32.189018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785488, 35.248497, 32.142380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400366, 0.346312, -0.848395,
		-0.481803, 0.707980, 0.516363,
		0.779469, 0.615494, -0.116597,
		26.019329, 35.433144, 32.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274448, 35.748528, 32.065575>,  <25.473700, 35.002300, 32.189018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274448, 35.748528, 32.065575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645452, 35.728645, 31.917385>,  <25.868055, 35.716717, 31.828470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645452, 35.728645, 31.917385>,  <25.274448, 35.748528, 32.065575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645452, 35.728645, 31.917385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332277, 0.344354, -0.878073,
		0.171218, 0.937523, 0.302877,
		0.927511, -0.049703, -0.370477,
		25.923706, 35.713734, 31.806242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104338, 35.708557, 31.398621>,  <25.274448, 35.748528, 32.065575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104338, 35.708557, 31.398621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296524, 35.815632, 31.064556>,  <25.411837, 35.879879, 30.864117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296524, 35.815632, 31.064556>,  <25.104338, 35.708557, 31.398621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296524, 35.815632, 31.064556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765472, 0.336756, 0.548314,
		0.428024, -0.902739, -0.043110,
		0.480467, 0.267691, -0.835160,
		25.440664, 35.895939, 30.814009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790012, 35.236053, 31.440111>,  <25.104338, 35.708557, 31.398621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790012, 35.236053, 31.440111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771257, 35.601528, 31.278629>,  <25.760004, 35.820812, 31.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771257, 35.601528, 31.278629>,  <25.790012, 35.236053, 31.440111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771257, 35.601528, 31.278629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879430, 0.229419, 0.417097,
		0.473713, -0.335471, -0.814282,
		-0.046888, 0.913688, -0.403702,
		25.757191, 35.875633, 31.157518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421144, 35.398499, 31.021816>,  <25.790012, 35.236053, 31.440111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421144, 35.398499, 31.021816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214327, 35.687801, 31.204927>,  <26.090237, 35.861385, 31.314795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214327, 35.687801, 31.204927>,  <26.421144, 35.398499, 31.021816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214327, 35.687801, 31.204927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754641, 0.132777, 0.642563,
		0.403957, 0.677692, -0.614453,
		-0.517045, 0.723259, 0.457778,
		26.059214, 35.904778, 31.342260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910078, 35.822224, 31.345785>,  <26.421144, 35.398499, 31.021816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910078, 35.822224, 31.345785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574667, 35.913677, 31.543612>,  <26.373421, 35.968552, 31.662308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574667, 35.913677, 31.543612>,  <26.910078, 35.822224, 31.345785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574667, 35.913677, 31.543612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452458, -0.213520, 0.865847,
		0.303565, 0.949808, 0.075594,
		-0.838529, 0.228638, 0.494565,
		26.323109, 35.982269, 31.691980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986116, 36.330540, 31.907654>,  <26.910078, 35.822224, 31.345785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986116, 36.330540, 31.907654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685349, 36.078396, 31.984871>,  <26.504889, 35.927109, 32.031200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685349, 36.078396, 31.984871>,  <26.986116, 36.330540, 31.907654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685349, 36.078396, 31.984871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349812, -0.133298, 0.927288,
		-0.558791, 0.764775, 0.320737,
		-0.751920, -0.630358, 0.193042,
		26.459772, 35.889290, 32.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720734, 36.512501, 32.499729>,  <26.986116, 36.330540, 31.907654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720734, 36.512501, 32.499729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650318, 36.123432, 32.439178>,  <26.608068, 35.889992, 32.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650318, 36.123432, 32.439178>,  <26.720734, 36.512501, 32.499729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650318, 36.123432, 32.439178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346717, -0.205191, 0.915251,
		-0.921303, 0.108633, 0.373364,
		-0.176037, -0.972674, -0.151378,
		26.597507, 35.831631, 32.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462252, 36.276283, 33.180222>,  <26.720734, 36.512501, 32.499729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462252, 36.276283, 33.180222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573647, 35.939140, 32.996033>,  <26.640484, 35.736855, 32.885517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573647, 35.939140, 32.996033>,  <26.462252, 36.276283, 33.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573647, 35.939140, 32.996033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323228, -0.369227, 0.871318,
		-0.904416, -0.391490, 0.169609,
		0.278488, -0.842856, -0.460475,
		26.657192, 35.686283, 32.857891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232080, 35.715210, 33.590195>,  <26.462252, 36.276283, 33.180222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232080, 35.715210, 33.590195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557058, 35.645412, 33.367668>,  <26.752045, 35.603535, 33.234154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557058, 35.645412, 33.367668>,  <26.232080, 35.715210, 33.590195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557058, 35.645412, 33.367668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396265, -0.534657, 0.746402,
		-0.427677, -0.826859, -0.365236,
		0.812445, -0.174489, -0.556315,
		26.800793, 35.593067, 33.200775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390799, 34.913670, 33.526432>,  <26.232080, 35.715210, 33.590195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390799, 34.913670, 33.526432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741751, 35.092850, 33.457687>,  <26.952322, 35.200359, 33.416439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741751, 35.092850, 33.457687>,  <26.390799, 34.913670, 33.526432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741751, 35.092850, 33.457687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470325, -0.732192, 0.492635,
		0.094839, -0.513063, -0.853096,
		0.877382, 0.447954, -0.171866,
		27.004965, 35.227234, 33.406128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855137, 34.376961, 33.377640>,  <26.390799, 34.913670, 33.526432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855137, 34.376961, 33.377640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073147, 34.696445, 33.479630>,  <27.203953, 34.888134, 33.540825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073147, 34.696445, 33.479630>,  <26.855137, 34.376961, 33.377640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073147, 34.696445, 33.479630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486144, -0.548826, 0.680040,
		0.683090, -0.246685, -0.687411,
		0.545025, 0.798709, 0.254974,
		27.236654, 34.936058, 33.556122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490902, 34.128582, 33.468742>,  <26.855137, 34.376961, 33.377640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490902, 34.128582, 33.468742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455816, 34.454956, 33.697323>,  <27.434765, 34.650780, 33.834473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455816, 34.454956, 33.697323>,  <27.490902, 34.128582, 33.468742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455816, 34.454956, 33.697323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428365, -0.487016, 0.761130,
		0.899338, 0.311553, -0.306799,
		-0.087716, 0.815935, 0.571450,
		27.429501, 34.699738, 33.868759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037914, 34.099640, 33.848389>,  <27.490902, 34.128582, 33.468742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037914, 34.099640, 33.848389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816988, 34.377846, 34.032219>,  <27.684433, 34.544769, 34.142517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816988, 34.377846, 34.032219>,  <28.037914, 34.099640, 33.848389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816988, 34.377846, 34.032219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473656, -0.191841, 0.859562,
		0.686001, 0.692431, -0.223476,
		-0.552316, 0.695511, 0.459578,
		27.651293, 34.586498, 34.170094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464346, 34.611992, 34.257416>,  <28.037914, 34.099640, 33.848389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464346, 34.611992, 34.257416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104767, 34.545235, 34.419422>,  <27.889019, 34.505180, 34.516628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104767, 34.545235, 34.419422>,  <28.464346, 34.611992, 34.257416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104767, 34.545235, 34.419422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428547, -0.143437, 0.892061,
		-0.090781, 0.975486, 0.200463,
		-0.898947, -0.166890, 0.405020,
		27.835083, 34.495167, 34.540928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254889, 34.585941, 34.386837>,  <28.464346, 34.611992, 34.257416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254889, 34.585941, 34.386837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510962, 34.705715, 34.669823>,  <29.664606, 34.777580, 34.839615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510962, 34.705715, 34.669823>,  <29.254889, 34.585941, 34.386837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510962, 34.705715, 34.669823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751074, 0.050468, 0.658286,
		0.161414, -0.952779, 0.257212,
		0.640182, 0.299442, 0.707461,
		29.703016, 34.795547, 34.882061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934145, 34.416389, 34.921650>,  <29.254889, 34.585941, 34.386837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934145, 34.416389, 34.921650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215162, 34.640408, 35.097279>,  <29.383774, 34.774818, 35.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215162, 34.640408, 35.097279>,  <28.934145, 34.416389, 34.921650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215162, 34.640408, 35.097279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680503, 0.348187, 0.644733,
		0.208197, -0.751745, 0.625726,
		0.702545, 0.560040, 0.439074,
		29.425926, 34.808422, 35.229000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977228, 34.230690, 35.684837>,  <28.934145, 34.416389, 34.921650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977228, 34.230690, 35.684837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121275, 34.598438, 35.621498>,  <29.207703, 34.819088, 35.583492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121275, 34.598438, 35.621498>,  <28.977228, 34.230690, 35.684837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121275, 34.598438, 35.621498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475673, 0.326972, 0.816593,
		0.802527, -0.218747, 0.555068,
		0.360119, 0.919369, -0.158352,
		29.229311, 34.874249, 35.573994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291300, 34.473049, 36.209202>,  <28.977228, 34.230690, 35.684837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291300, 34.473049, 36.209202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227325, 34.835121, 36.051685>,  <29.188940, 35.052364, 35.957176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227325, 34.835121, 36.051685>,  <29.291300, 34.473049, 36.209202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227325, 34.835121, 36.051685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120145, 0.378113, 0.917930,
		0.979788, 0.194124, 0.048277,
		-0.159938, 0.905178, -0.393794,
		29.179344, 35.106674, 35.933548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708548, 34.977390, 36.620171>,  <29.291300, 34.473049, 36.209202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708548, 34.977390, 36.620171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389046, 35.155994, 36.458870>,  <29.197344, 35.263157, 36.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389046, 35.155994, 36.458870>,  <29.708548, 34.977390, 36.620171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389046, 35.155994, 36.458870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290835, 0.300182, 0.908463,
		0.526692, 0.842921, -0.109910,
		-0.798756, 0.446515, -0.403254,
		29.149420, 35.289948, 36.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673916, 35.672234, 36.822388>,  <29.708548, 34.977390, 36.620171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673916, 35.672234, 36.822388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306309, 35.543091, 36.731903>,  <29.085745, 35.465607, 36.677612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306309, 35.543091, 36.731903>,  <29.673916, 35.672234, 36.822388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306309, 35.543091, 36.731903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337028, 0.345816, 0.875685,
		-0.204491, 0.881009, -0.426622,
		-0.919019, -0.322853, -0.226209,
		29.030603, 35.446236, 36.664040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096502, 36.092171, 37.210854>,  <29.673916, 35.672234, 36.822388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096502, 36.092171, 37.210854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885271, 35.785767, 37.064228>,  <28.758533, 35.601925, 36.976254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885271, 35.785767, 37.064228>,  <29.096502, 36.092171, 37.210854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885271, 35.785767, 37.064228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671750, 0.112735, 0.732149,
		-0.519506, 0.632870, -0.574098,
		-0.528076, -0.766007, -0.366564,
		28.726849, 35.555965, 36.954258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392506, 36.172451, 37.355518>,  <29.096502, 36.092171, 37.210854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392506, 36.172451, 37.355518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428486, 35.779015, 37.292957>,  <28.450073, 35.542953, 37.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428486, 35.779015, 37.292957>,  <28.392506, 36.172451, 37.355518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428486, 35.779015, 37.292957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750031, -0.170216, 0.639125,
		-0.655258, 0.059816, -0.753033,
		0.089948, -0.983590, -0.156399,
		28.455471, 35.483936, 37.246037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880384, 35.841686, 36.988232>,  <28.392506, 36.172451, 37.355518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880384, 35.841686, 36.988232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035955, 35.563786, 37.230240>,  <28.129297, 35.397045, 37.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035955, 35.563786, 37.230240>,  <27.880384, 35.841686, 36.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035955, 35.563786, 37.230240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912296, -0.199012, 0.357924,
		-0.128262, -0.691167, -0.711222,
		0.388927, -0.694753, 0.605023,
		28.152634, 35.355358, 37.411747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697870, 35.171062, 36.851006>,  <27.880384, 35.841686, 36.988232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697870, 35.171062, 36.851006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747719, 35.168556, 37.247879>,  <27.777628, 35.167053, 37.486004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747719, 35.168556, 37.247879>,  <27.697870, 35.171062, 36.851006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747719, 35.168556, 37.247879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969892, -0.211645, 0.120484,
		0.209237, -0.977327, -0.032444,
		0.124619, -0.006257, 0.992185,
		27.785105, 35.166676, 37.545536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957073, 35.371334, 36.208847>,  <27.697870, 35.171062, 36.851006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957073, 35.371334, 36.208847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277643, 35.581760, 36.322666>,  <28.469986, 35.708015, 36.390957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277643, 35.581760, 36.322666>,  <27.957073, 35.371334, 36.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277643, 35.581760, 36.322666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493569, -0.313029, -0.811420,
		-0.337793, 0.790736, -0.510521,
		0.801427, 0.526069, 0.284544,
		28.518072, 35.739582, 36.408028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253561, 36.020267, 35.683784>,  <27.957073, 35.371334, 36.208847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253561, 36.020267, 35.683784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531288, 35.812466, 35.882999>,  <28.697924, 35.687782, 36.002529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531288, 35.812466, 35.882999>,  <28.253561, 36.020267, 35.683784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531288, 35.812466, 35.882999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486670, -0.170872, -0.856712,
		0.530167, 0.837207, 0.134189,
		0.694316, -0.519506, 0.498034,
		28.739582, 35.656612, 36.032410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862469, 36.249603, 35.449966>,  <28.253561, 36.020267, 35.683784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862469, 36.249603, 35.449966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966759, 35.895706, 35.604504>,  <29.029333, 35.683369, 35.697227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966759, 35.895706, 35.604504>,  <28.862469, 36.249603, 35.449966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966759, 35.895706, 35.604504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666705, -0.124425, -0.734862,
		0.698232, 0.449173, 0.557419,
		0.260724, -0.884738, 0.386344,
		29.044975, 35.630283, 35.720406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501223, 36.122803, 35.318382>,  <28.862469, 36.249603, 35.449966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501223, 36.122803, 35.318382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435314, 35.737076, 35.401272>,  <29.395769, 35.505638, 35.451004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435314, 35.737076, 35.401272>,  <29.501223, 36.122803, 35.318382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435314, 35.737076, 35.401272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654623, -0.264068, -0.708334,
		0.737780, 0.018940, 0.674775,
		-0.164771, -0.964318, 0.207222,
		29.385883, 35.447781, 35.463440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153805, 35.843643, 35.481529>,  <29.501223, 36.122803, 35.318382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153805, 35.843643, 35.481529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915731, 35.538227, 35.381325>,  <29.772886, 35.354977, 35.321201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915731, 35.538227, 35.381325>,  <30.153805, 35.843643, 35.481529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915731, 35.538227, 35.381325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663320, -0.290840, -0.689506,
		0.453609, -0.576553, 0.679577,
		-0.595185, -0.763543, -0.250511,
		29.737175, 35.309166, 35.306171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642351, 35.610912, 35.005093>,  <30.153805, 35.843643, 35.481529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642351, 35.610912, 35.005093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605373, 36.001591, 34.927612>,  <30.583187, 36.235996, 34.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605373, 36.001591, 34.927612>,  <30.642351, 35.610912, 35.005093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605373, 36.001591, 34.927612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351715, -0.149965, -0.924017,
		-0.931531, -0.153548, -0.329655,
		-0.092444, 0.976695, -0.193702,
		30.577641, 36.294598, 34.869503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190218, 35.819523, 34.442329>,  <30.642351, 35.610912, 35.005093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190218, 35.819523, 34.442329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461634, 36.111488, 34.475346>,  <30.624483, 36.286667, 34.495155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461634, 36.111488, 34.475346>,  <30.190218, 35.819523, 34.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461634, 36.111488, 34.475346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128636, -0.007437, -0.991664,
		-0.723211, 0.683503, -0.098939,
		0.678542, 0.729909, 0.082545,
		30.665195, 36.330460, 34.500111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186451, 36.171692, 33.856323>,  <30.190218, 35.819523, 34.442329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186451, 36.171692, 33.856323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533155, 36.321529, 33.988022>,  <30.741179, 36.411434, 34.067039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533155, 36.321529, 33.988022>,  <30.186451, 36.171692, 33.856323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533155, 36.321529, 33.988022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301897, 0.131383, -0.944244,
		-0.396968, 0.917832, 0.000788,
		0.866761, 0.374597, 0.329246,
		30.793184, 36.433910, 34.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447386, 36.758698, 33.370121>,  <30.186451, 36.171692, 33.856323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447386, 36.758698, 33.370121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767632, 36.653633, 33.585537>,  <30.959780, 36.590595, 33.714787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767632, 36.653633, 33.585537>,  <30.447386, 36.758698, 33.370121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767632, 36.653633, 33.585537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590647, 0.194822, -0.783058,
		0.100760, 0.945015, 0.311118,
		0.800614, -0.262662, 0.538540,
		31.007816, 36.574833, 33.747101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907444, 37.296780, 33.331417>,  <30.447386, 36.758698, 33.370121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907444, 37.296780, 33.331417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119474, 36.962322, 33.387829>,  <31.246693, 36.761650, 33.421677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119474, 36.962322, 33.387829>,  <30.907444, 37.296780, 33.331417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119474, 36.962322, 33.387829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557903, 0.218656, -0.800583,
		0.638562, 0.503052, 0.582389,
		0.530077, -0.836139, 0.141029,
		31.278498, 36.711479, 33.430138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546835, 37.500061, 33.238781>,  <30.907444, 37.296780, 33.331417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546835, 37.500061, 33.238781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545198, 37.102329, 33.196270>,  <31.544216, 36.863689, 33.170765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545198, 37.102329, 33.196270>,  <31.546835, 37.500061, 33.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545198, 37.102329, 33.196270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491806, 0.090536, -0.865985,
		0.870695, -0.055809, 0.488646,
		-0.004090, -0.994328, -0.106277,
		31.543972, 36.804031, 33.164387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311813, 37.150482, 33.143085>,  <31.546835, 37.500061, 33.238781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311813, 37.150482, 33.143085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104710, 36.843964, 32.990917>,  <31.980448, 36.660053, 32.899616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104710, 36.843964, 32.990917>,  <32.311813, 37.150482, 33.143085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104710, 36.843964, 32.990917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720896, -0.151329, -0.676319,
		0.460689, -0.624416, 0.630769,
		-0.517758, -0.766293, -0.380424,
		31.949383, 36.614075, 32.876789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889824, 36.737038, 32.799335>,  <32.311813, 37.150482, 33.143085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889824, 36.737038, 32.799335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558243, 36.573017, 32.647179>,  <32.359295, 36.474606, 32.555885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558243, 36.573017, 32.647179>,  <32.889824, 36.737038, 32.799335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558243, 36.573017, 32.647179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448044, -0.079727, -0.890449,
		0.334799, -0.908573, 0.249809,
		-0.828955, -0.410047, -0.380388,
		32.309555, 36.450005, 32.533062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063908, 36.042278, 32.401554>,  <32.889824, 36.737038, 32.799335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063908, 36.042278, 32.401554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717201, 36.194756, 32.272923>,  <32.509178, 36.286243, 32.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717201, 36.194756, 32.272923>,  <33.063908, 36.042278, 32.401554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717201, 36.194756, 32.272923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356810, 0.023496, -0.933881,
		-0.348435, -0.924196, -0.156380,
		-0.866764, 0.381195, -0.321575,
		32.457172, 36.309113, 32.176449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920376, 35.592869, 31.913002>,  <33.063908, 36.042278, 32.401554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920376, 35.592869, 31.913002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704884, 35.920956, 31.836040>,  <32.575588, 36.117805, 31.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704884, 35.920956, 31.836040>,  <32.920376, 35.592869, 31.913002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704884, 35.920956, 31.836040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255862, -0.058302, -0.964953,
		-0.802685, -0.569079, -0.178452,
		-0.538731, 0.820213, -0.192404,
		32.543262, 36.167019, 31.778318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615681, 35.379520, 31.280737>,  <32.920376, 35.592869, 31.913002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615681, 35.379520, 31.280737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581814, 35.777222, 31.306953>,  <32.561493, 36.015842, 31.322683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581814, 35.777222, 31.306953>,  <32.615681, 35.379520, 31.280737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581814, 35.777222, 31.306953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175187, 0.079607, -0.981311,
		-0.980887, -0.071607, -0.180920,
		-0.084671, 0.994251, 0.065541,
		32.556412, 36.075497, 31.326616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275196, 35.712685, 30.578926>,  <32.615681, 35.379520, 31.280737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275196, 35.712685, 30.578926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486759, 36.031456, 30.695662>,  <32.613697, 36.222717, 30.765703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486759, 36.031456, 30.695662>,  <32.275196, 35.712685, 30.578926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486759, 36.031456, 30.695662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101076, 0.282275, -0.953994,
		-0.842641, 0.534069, 0.068747,
		0.528904, 0.796926, 0.291838,
		32.645432, 36.270535, 30.783213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012646, 36.238464, 30.201200>,  <32.275196, 35.712685, 30.578926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012646, 36.238464, 30.201200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352043, 36.401295, 30.336460>,  <32.555683, 36.498993, 30.417616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352043, 36.401295, 30.336460>,  <32.012646, 36.238464, 30.201200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352043, 36.401295, 30.336460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081646, 0.530628, -0.843664,
		-0.522866, 0.743453, 0.416999,
		0.848496, 0.407077, 0.338147,
		32.606590, 36.523418, 30.437904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097065, 36.925652, 29.902309>,  <32.012646, 36.238464, 30.201200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097065, 36.925652, 29.902309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473736, 36.809490, 29.970318>,  <32.699738, 36.739792, 30.011122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473736, 36.809490, 29.970318>,  <32.097065, 36.925652, 29.902309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473736, 36.809490, 29.970318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292550, 0.456802, -0.840087,
		0.166299, 0.840831, 0.515119,
		0.941679, -0.290404, 0.170020,
		32.756241, 36.722370, 30.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581577, 37.681152, 29.962337>,  <32.097065, 36.925652, 29.902309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581577, 37.681152, 29.962337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797966, 37.355320, 29.878624>,  <32.927799, 37.159821, 29.828396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797966, 37.355320, 29.878624>,  <32.581577, 37.681152, 29.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797966, 37.355320, 29.878624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287688, 0.413058, -0.864071,
		0.790304, 0.407233, 0.457800,
		0.540976, -0.814582, -0.209286,
		32.960258, 37.110947, 29.815838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168541, 37.979755, 29.803938>,  <32.581577, 37.681152, 29.962337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168541, 37.979755, 29.803938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177258, 37.607300, 29.658337>,  <33.182487, 37.383827, 29.570976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177258, 37.607300, 29.658337>,  <33.168541, 37.979755, 29.803938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177258, 37.607300, 29.658337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400648, 0.341707, -0.850128,
		0.915973, -0.127313, 0.380506,
		0.021790, -0.931143, -0.364002,
		33.183796, 37.327957, 29.549135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796322, 38.001740, 29.355951>,  <33.168541, 37.979755, 29.803938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796322, 38.001740, 29.355951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590069, 37.688263, 29.217415>,  <33.466316, 37.500175, 29.134293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590069, 37.688263, 29.217415>,  <33.796322, 38.001740, 29.355951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590069, 37.688263, 29.217415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145356, 0.318349, -0.936763,
		0.844391, -0.533367, -0.050236,
		-0.515631, -0.783693, -0.346339,
		33.435379, 37.453156, 29.113514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224510, 37.759907, 28.815426>,  <33.796322, 38.001740, 29.355951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224510, 37.759907, 28.815426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865074, 37.599262, 28.744724>,  <33.649410, 37.502876, 28.702303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865074, 37.599262, 28.744724>,  <34.224510, 37.759907, 28.815426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865074, 37.599262, 28.744724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111136, 0.181376, -0.977114,
		0.424475, -0.897672, -0.118350,
		-0.898593, -0.401607, -0.176753,
		33.595497, 37.478779, 28.691698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352688, 37.387444, 28.240667>,  <34.224510, 37.759907, 28.815426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352688, 37.387444, 28.240667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964565, 37.475746, 28.280210>,  <33.731693, 37.528728, 28.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964565, 37.475746, 28.280210>,  <34.352688, 37.387444, 28.240667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964565, 37.475746, 28.280210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005702, 0.387718, -0.921760,
		-0.241812, -0.894954, -0.374947,
		-0.970306, 0.220754, 0.098858,
		33.673473, 37.541973, 28.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108204, 37.164864, 27.582035>,  <34.352688, 37.387444, 28.240667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108204, 37.164864, 27.582035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811752, 37.397457, 27.716261>,  <33.633881, 37.537014, 27.796797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811752, 37.397457, 27.716261>,  <34.108204, 37.164864, 27.582035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811752, 37.397457, 27.716261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200120, 0.285760, -0.937173,
		-0.640843, -0.761719, -0.095418,
		-0.741129, 0.581486, 0.335563,
		33.589413, 37.571903, 27.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469532, 37.020115, 27.096952>,  <34.108204, 37.164864, 27.582035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469532, 37.020115, 27.096952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411152, 37.367012, 27.287361>,  <33.376125, 37.575150, 27.401606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411152, 37.367012, 27.287361>,  <33.469532, 37.020115, 27.096952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411152, 37.367012, 27.287361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487234, 0.355756, -0.797522,
		-0.860989, -0.348333, 0.370625,
		-0.145951, 0.867238, 0.476021,
		33.367367, 37.627182, 27.430168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729668, 37.175606, 27.048449>,  <33.469532, 37.020115, 27.096952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729668, 37.175606, 27.048449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909725, 37.525753, 27.118994>,  <33.017761, 37.735840, 27.161322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909725, 37.525753, 27.118994>,  <32.729668, 37.175606, 27.048449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909725, 37.525753, 27.118994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433023, 0.386720, -0.814211,
		-0.780934, 0.290146, 0.553134,
		0.450149, 0.875364, 0.176363,
		33.044769, 37.788361, 27.171904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252575, 37.588253, 26.714899>,  <32.729668, 37.175606, 27.048449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252575, 37.588253, 26.714899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565769, 37.816048, 26.815001>,  <32.753685, 37.952724, 26.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565769, 37.816048, 26.815001>,  <32.252575, 37.588253, 26.714899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565769, 37.816048, 26.815001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137682, 0.550992, -0.823074,
		-0.606617, 0.609996, 0.509824,
		0.782981, 0.569484, 0.250255,
		32.800663, 37.986893, 26.890078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090336, 38.323025, 26.663187>,  <32.252575, 37.588253, 26.714899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090336, 38.323025, 26.663187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486046, 38.278374, 26.625523>,  <32.723473, 38.251583, 26.602924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486046, 38.278374, 26.625523>,  <32.090336, 38.323025, 26.663187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486046, 38.278374, 26.625523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004238, 0.622544, -0.782573,
		0.145979, 0.774582, 0.615396,
		0.989279, -0.111631, -0.094161,
		32.782829, 38.244884, 26.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294472, 39.030720, 26.545158>,  <32.090336, 38.323025, 26.663187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294472, 39.030720, 26.545158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601467, 38.801792, 26.429638>,  <32.785664, 38.664436, 26.360327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601467, 38.801792, 26.429638>,  <32.294472, 39.030720, 26.545158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601467, 38.801792, 26.429638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053428, 0.506041, -0.860853,
		0.638830, 0.645267, 0.418959,
		0.767490, -0.572323, -0.288799,
		32.831715, 38.630096, 26.342999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685429, 39.456043, 26.159971>,  <32.294472, 39.030720, 26.545158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685429, 39.456043, 26.159971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816006, 39.094311, 26.049976>,  <32.894352, 38.877270, 25.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816006, 39.094311, 26.049976>,  <32.685429, 39.456043, 26.159971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816006, 39.094311, 26.049976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347836, 0.385445, -0.854659,
		0.878889, 0.183345, 0.440384,
		0.326441, -0.904332, -0.274989,
		32.913937, 38.823009, 25.967480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431446, 39.541718, 26.058760>,  <32.685429, 39.456043, 26.159971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431446, 39.541718, 26.058760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293453, 39.228405, 25.851892>,  <33.210659, 39.040417, 25.727772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293453, 39.228405, 25.851892>,  <33.431446, 39.541718, 26.058760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293453, 39.228405, 25.851892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512241, 0.304589, -0.803016,
		0.786509, -0.541940, 0.296151,
		-0.344982, -0.783279, -0.517166,
		33.189957, 38.993420, 25.696743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000130, 39.216621, 25.761200>,  <33.431446, 39.541718, 26.058760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000130, 39.216621, 25.761200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680531, 39.114376, 25.543480>,  <33.488770, 39.053028, 25.412848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680531, 39.114376, 25.543480>,  <34.000130, 39.216621, 25.761200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680531, 39.114376, 25.543480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490183, 0.247438, -0.835760,
		0.348314, -0.934577, -0.072404,
		-0.798998, -0.255616, -0.544300,
		33.440830, 39.037693, 25.380190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300453, 38.892231, 25.161304>,  <34.000130, 39.216621, 25.761200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300453, 38.892231, 25.161304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927055, 38.999084, 25.065609>,  <33.703018, 39.063198, 25.008192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927055, 38.999084, 25.065609>,  <34.300453, 38.892231, 25.161304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927055, 38.999084, 25.065609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330071, 0.379282, -0.864406,
		-0.140175, -0.885880, -0.442230,
		-0.933490, 0.267135, -0.239238,
		33.647007, 39.079224, 24.993837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140396, 38.651344, 24.540462>,  <34.300453, 38.892231, 25.161304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140396, 38.651344, 24.540462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886032, 38.956463, 24.587368>,  <33.733414, 39.139534, 24.615511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886032, 38.956463, 24.587368>,  <34.140396, 38.651344, 24.540462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886032, 38.956463, 24.587368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339459, 0.412914, -0.845145,
		-0.693098, -0.497631, -0.521516,
		-0.635912, 0.762801, 0.117265,
		33.695259, 39.185303, 24.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811474, 38.841949, 23.872133>,  <34.140396, 38.651344, 24.540462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811474, 38.841949, 23.872133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777222, 39.165958, 24.104179>,  <33.756668, 39.360363, 24.243406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777222, 39.165958, 24.104179>,  <33.811474, 38.841949, 23.872133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777222, 39.165958, 24.104179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439781, 0.553193, -0.707510,
		-0.894013, 0.194537, -0.403603,
		-0.085633, 0.810020, 0.580115,
		33.751534, 39.408966, 24.278214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578022, 39.224571, 23.451057>,  <33.811474, 38.841949, 23.872133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578022, 39.224571, 23.451057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691185, 39.480759, 23.736647>,  <33.759083, 39.634472, 23.908001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691185, 39.480759, 23.736647>,  <33.578022, 39.224571, 23.451057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691185, 39.480759, 23.736647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445997, 0.571171, -0.689093,
		-0.849145, 0.513383, -0.124057,
		0.282911, 0.640470, 0.713975,
		33.776058, 39.672901, 23.950840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390720, 39.883171, 23.276037>,  <33.578022, 39.224571, 23.451057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390720, 39.883171, 23.276037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689281, 39.935589, 23.537022>,  <33.868420, 39.967041, 23.693613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689281, 39.935589, 23.537022>,  <33.390720, 39.883171, 23.276037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689281, 39.935589, 23.537022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466191, 0.596697, -0.653161,
		-0.474915, 0.791694, 0.384286,
		0.746406, 0.131045, 0.652461,
		33.913204, 39.974903, 23.732759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388035, 40.611706, 23.309626>,  <33.390720, 39.883171, 23.276037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388035, 40.611706, 23.309626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743862, 40.494839, 23.450083>,  <33.957359, 40.424721, 23.534357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743862, 40.494839, 23.450083>,  <33.388035, 40.611706, 23.309626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743862, 40.494839, 23.450083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431644, 0.789193, -0.436873,
		-0.149480, 0.540198, 0.828155,
		0.889573, -0.292164, 0.351142,
		34.010735, 40.407188, 23.555426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781113, 41.229286, 23.342745>,  <33.388035, 40.611706, 23.309626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781113, 41.229286, 23.342745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065723, 40.953564, 23.397270>,  <34.236492, 40.788132, 23.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065723, 40.953564, 23.397270>,  <33.781113, 41.229286, 23.342745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065723, 40.953564, 23.397270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615238, 0.517457, -0.594745,
		0.339425, 0.507044, 0.792273,
		0.711529, -0.689308, 0.136315,
		34.279182, 40.746773, 23.438164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368011, 41.333572, 23.882278>,  <33.781113, 41.229286, 23.342745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368011, 41.333572, 23.882278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504356, 41.106926, 23.582211>,  <34.586163, 40.970936, 23.402170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504356, 41.106926, 23.582211>,  <34.368011, 41.333572, 23.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504356, 41.106926, 23.582211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517392, 0.779306, -0.353536,
		0.784932, -0.267624, 0.558801,
		0.340862, -0.566621, -0.750169,
		34.606613, 40.936939, 23.357161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136402, 41.389191, 23.904409>,  <34.368011, 41.333572, 23.882278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136402, 41.389191, 23.904409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060265, 41.278595, 23.527618>,  <35.014580, 41.212238, 23.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060265, 41.278595, 23.527618>,  <35.136402, 41.389191, 23.904409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060265, 41.278595, 23.527618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398931, 0.854943, -0.331551,
		0.897008, -0.438894, -0.052436,
		-0.190346, -0.276485, -0.941979,
		35.003162, 41.195648, 23.245026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758148, 41.438763, 23.555162>,  <35.136402, 41.389191, 23.904409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758148, 41.438763, 23.555162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482441, 41.465797, 23.266624>,  <35.317017, 41.482018, 23.093502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482441, 41.465797, 23.266624>,  <35.758148, 41.438763, 23.555162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482441, 41.465797, 23.266624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412094, 0.855468, -0.313613,
		0.595888, -0.513426, -0.617504,
		-0.689272, 0.067592, -0.721343,
		35.275658, 41.486076, 23.050222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108253, 41.615650, 22.865290>,  <35.758148, 41.438763, 23.555162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108253, 41.615650, 22.865290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728973, 41.708744, 22.778805>,  <35.501404, 41.764599, 22.726913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728973, 41.708744, 22.778805>,  <36.108253, 41.615650, 22.865290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728973, 41.708744, 22.778805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312609, 0.804599, -0.504871,
		0.056464, -0.546310, -0.835677,
		-0.948202, 0.232733, -0.216213,
		35.444511, 41.778564, 22.713942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104404, 41.596848, 22.123249>,  <36.108253, 41.615650, 22.865290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104404, 41.596848, 22.123249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802917, 41.801521, 22.288218>,  <35.622025, 41.924324, 22.387199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802917, 41.801521, 22.288218>,  <36.104404, 41.596848, 22.123249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802917, 41.801521, 22.288218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473144, 0.858021, -0.199835,
		-0.456119, 0.044516, -0.888805,
		-0.753718, 0.511681, 0.412422,
		35.576801, 41.955025, 22.411943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946583, 42.047779, 21.557978>,  <36.104404, 41.596848, 22.123249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946583, 42.047779, 21.557978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827587, 42.227345, 21.895018>,  <35.756187, 42.335083, 22.097240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827587, 42.227345, 21.895018>,  <35.946583, 42.047779, 21.557978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827587, 42.227345, 21.895018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613525, 0.766094, -0.191541,
		-0.731495, 0.459973, -0.503328,
		-0.297493, 0.448916, 0.842599,
		35.738338, 42.362019, 22.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774887, 42.708317, 21.437202>,  <35.946583, 42.047779, 21.557978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774887, 42.708317, 21.437202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822063, 42.731331, 21.833744>,  <35.850368, 42.745140, 22.071669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822063, 42.731331, 21.833744>,  <35.774887, 42.708317, 21.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822063, 42.731331, 21.833744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478053, 0.871732, -0.107469,
		-0.870377, 0.486593, 0.075303,
		0.117938, 0.057539, 0.991352,
		35.857445, 42.748592, 22.131149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649559, 43.355602, 21.592060>,  <35.774887, 42.708317, 21.437202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649559, 43.355602, 21.592060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861946, 43.216053, 21.900959>,  <35.989380, 43.132324, 22.086298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861946, 43.216053, 21.900959>,  <35.649559, 43.355602, 21.592060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861946, 43.216053, 21.900959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705264, 0.687135, -0.174493,
		-0.469763, 0.637288, 0.610890,
		0.530966, -0.348869, 0.772247,
		36.021236, 43.111393, 22.132633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356842, 43.480846, 21.772839>,  <35.649559, 43.355602, 21.592060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356842, 43.480846, 21.772839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601292, 43.796486, 21.797638>,  <36.747963, 43.985870, 21.812517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601292, 43.796486, 21.797638>,  <36.356842, 43.480846, 21.772839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601292, 43.796486, 21.797638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098890, 0.001597, -0.995097,
		-0.785332, 0.614260, -0.077058,
		0.611125, 0.789102, 0.061999,
		36.784630, 44.033218, 21.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144993, 43.837364, 21.258726>,  <36.356842, 43.480846, 21.772839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144993, 43.837364, 21.258726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487816, 44.027935, 21.337179>,  <36.693508, 44.142277, 21.384251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487816, 44.027935, 21.337179>,  <36.144993, 43.837364, 21.258726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487816, 44.027935, 21.337179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162209, 0.111800, -0.980402,
		-0.489018, 0.872077, 0.018538,
		0.857059, 0.476428, 0.196130,
		36.744934, 44.170864, 21.396019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100029, 44.541965, 21.045193>,  <36.144993, 43.837364, 21.258726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100029, 44.541965, 21.045193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478306, 44.412205, 21.037008>,  <36.705273, 44.334347, 21.032097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478306, 44.412205, 21.037008>,  <36.100029, 44.541965, 21.045193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478306, 44.412205, 21.037008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046776, 0.198112, -0.979063,
		0.321668, 0.924939, 0.202528,
		0.945696, -0.324406, -0.020461,
		36.762016, 44.314884, 21.030870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551220, 44.976467, 20.618601>,  <36.100029, 44.541965, 21.045193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551220, 44.976467, 20.618601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734989, 44.622227, 20.645870>,  <36.845249, 44.409683, 20.662231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734989, 44.622227, 20.645870>,  <36.551220, 44.976467, 20.618601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734989, 44.622227, 20.645870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122155, -0.013026, -0.992425,
		0.879780, 0.464267, 0.102196,
		0.459419, -0.885599, 0.068173,
		36.872814, 44.356548, 20.666323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220596, 44.891140, 20.195568>,  <36.551220, 44.976467, 20.618601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220596, 44.891140, 20.195568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048447, 44.530411, 20.211040>,  <36.945156, 44.313972, 20.220324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048447, 44.530411, 20.211040>,  <37.220596, 44.891140, 20.195568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048447, 44.530411, 20.211040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215904, -0.144453, -0.965670,
		0.876451, -0.407245, 0.256875,
		-0.430371, -0.901823, 0.038680,
		36.919334, 44.259865, 20.222645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728001, 44.421555, 19.896345>,  <37.220596, 44.891140, 20.195568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728001, 44.421555, 19.896345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383564, 44.218624, 19.909828>,  <37.176903, 44.096867, 19.917919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383564, 44.218624, 19.909828>,  <37.728001, 44.421555, 19.896345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383564, 44.218624, 19.909828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241003, -0.465642, -0.851525,
		0.447695, -0.725121, 0.523229,
		-0.861096, -0.507324, 0.033709,
		37.125237, 44.066425, 19.919941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007210, 44.064392, 20.486471>,  <37.728001, 44.421555, 19.896345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007210, 44.064392, 20.486471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270462, 43.905025, 20.742010>,  <38.428413, 43.809406, 20.895332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270462, 43.905025, 20.742010>,  <38.007210, 44.064392, 20.486471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270462, 43.905025, 20.742010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299505, 0.639943, 0.707651,
		-0.690767, -0.657065, 0.301838,
		0.658132, -0.398420, 0.638846,
		38.467903, 43.785500, 20.933664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547241, 43.571827, 20.882051>,  <38.007210, 44.064392, 20.486471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547241, 43.571827, 20.882051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421051, 43.939308, 20.787012>,  <37.345337, 44.159798, 20.729988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421051, 43.939308, 20.787012>,  <37.547241, 43.571827, 20.882051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421051, 43.939308, 20.787012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259568, 0.157289, 0.952830,
		0.912742, 0.362269, 0.188846,
		-0.315477, 0.918706, -0.237598,
		37.326408, 44.214920, 20.715733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047443, 43.937820, 21.279263>,  <37.547241, 43.571827, 20.882051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047443, 43.937820, 21.279263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679794, 44.074661, 21.201096>,  <37.459206, 44.156765, 21.154196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679794, 44.074661, 21.201096>,  <38.047443, 43.937820, 21.279263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679794, 44.074661, 21.201096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245555, -0.109544, 0.963173,
		0.308098, 0.933255, 0.184690,
		-0.919118, 0.342103, -0.195415,
		37.404060, 44.177292, 21.142471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968174, 44.657196, 21.564642>,  <38.047443, 43.937820, 21.279263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968174, 44.657196, 21.564642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613621, 44.473450, 21.541620>,  <37.400890, 44.363201, 21.527807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613621, 44.473450, 21.541620>,  <37.968174, 44.657196, 21.564642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613621, 44.473450, 21.541620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220202, 0.308968, 0.925230,
		-0.407240, 0.832777, -0.375017,
		-0.886378, -0.459370, -0.057555,
		37.347706, 44.335640, 21.524353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437660, 45.121315, 22.058430>,  <37.968174, 44.657196, 21.564642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437660, 45.121315, 22.058430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269703, 44.766983, 21.979437>,  <37.168930, 44.554386, 21.932041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269703, 44.766983, 21.979437>,  <37.437660, 45.121315, 22.058430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269703, 44.766983, 21.979437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258438, -0.091883, 0.961648,
		-0.870000, 0.454825, -0.190351,
		-0.419892, -0.885828, -0.197483,
		37.143734, 44.501236, 21.920193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739445, 45.182514, 22.089951>,  <37.437660, 45.121315, 22.058430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739445, 45.182514, 22.089951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878010, 44.829391, 22.216850>,  <36.961147, 44.617516, 22.292990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878010, 44.829391, 22.216850>,  <36.739445, 45.182514, 22.089951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878010, 44.829391, 22.216850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215688, 0.254174, 0.942801,
		-0.912951, -0.395022, -0.102363,
		0.346409, -0.882809, 0.317250,
		36.981934, 44.564548, 22.312025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304131, 44.992416, 22.599491>,  <36.739445, 45.182514, 22.089951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304131, 44.992416, 22.599491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634281, 44.781727, 22.680805>,  <36.832371, 44.655315, 22.729593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634281, 44.781727, 22.680805>,  <36.304131, 44.992416, 22.599491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634281, 44.781727, 22.680805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176637, 0.101075, 0.979073,
		-0.536244, -0.844009, -0.009613,
		0.825374, -0.526719, 0.203284,
		36.881893, 44.623711, 22.741791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111740, 44.802891, 23.180044>,  <36.304131, 44.992416, 22.599491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111740, 44.802891, 23.180044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495129, 44.688820, 23.180317>,  <36.725163, 44.620377, 23.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495129, 44.688820, 23.180317>,  <36.111740, 44.802891, 23.180044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495129, 44.688820, 23.180317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054463, -0.180691, 0.982031,
		-0.279933, -0.941288, -0.188720,
		0.958473, -0.285181, 0.000684,
		36.782669, 44.603268, 23.180523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097404, 44.273949, 23.671688>,  <36.111740, 44.802891, 23.180044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097404, 44.273949, 23.671688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482830, 44.378777, 23.650282>,  <36.714085, 44.441673, 23.637438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482830, 44.378777, 23.650282>,  <36.097404, 44.273949, 23.671688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482830, 44.378777, 23.650282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053564, 0.006961, 0.998540,
		0.262055, -0.965025, -0.007330,
		0.963565, 0.262065, -0.053515,
		36.771900, 44.457397, 23.634228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474434, 43.832199, 24.034998>,  <36.097404, 44.273949, 23.671688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474434, 43.832199, 24.034998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727467, 44.141895, 24.027094>,  <36.879288, 44.327713, 24.022352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727467, 44.141895, 24.027094>,  <36.474434, 43.832199, 24.034998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727467, 44.141895, 24.027094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061208, -0.024543, 0.997823,
		0.772069, -0.632416, -0.062915,
		0.632584, 0.774240, -0.019760,
		36.917240, 44.374168, 24.021166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058437, 43.679806, 24.371950>,  <36.474434, 43.832199, 24.034998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058437, 43.679806, 24.371950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026058, 44.078320, 24.383770>,  <37.006630, 44.317429, 24.390862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026058, 44.078320, 24.383770>,  <37.058437, 43.679806, 24.371950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026058, 44.078320, 24.383770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253542, -0.008091, 0.967290,
		0.963932, 0.085790, -0.251944,
		-0.080946, 0.996280, 0.029551,
		37.001774, 44.377205, 24.392635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667500, 43.838394, 24.575045>,  <37.058437, 43.679806, 24.371950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667500, 43.838394, 24.575045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423485, 44.142582, 24.664082>,  <37.277077, 44.325096, 24.717503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423485, 44.142582, 24.664082>,  <37.667500, 43.838394, 24.575045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423485, 44.142582, 24.664082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410152, 0.062699, 0.909859,
		0.677964, 0.646340, -0.350157,
		-0.610033, 0.760469, 0.222590,
		37.240475, 44.370724, 24.730858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061665, 44.319359, 25.022402>,  <37.667500, 43.838394, 24.575045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061665, 44.319359, 25.022402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670559, 44.369583, 25.089582>,  <37.435894, 44.399715, 25.129890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670559, 44.369583, 25.089582>,  <38.061665, 44.319359, 25.022402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670559, 44.369583, 25.089582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181449, 0.105113, 0.977767,
		0.105113, 0.986502, -0.125558,
		-0.977767, 0.125558, 0.167951,
		37.377228, 44.407249, 25.139967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094276, 44.406487, 25.706360>,  <38.061665, 44.319359, 25.022402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094276, 44.406487, 25.706360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699993, 44.361137, 25.656519>,  <37.463425, 44.333927, 25.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699993, 44.361137, 25.656519>,  <38.094276, 44.406487, 25.706360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699993, 44.361137, 25.656519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105471, -0.161413, 0.981235,
		-0.131362, 0.980353, 0.147148,
		-0.985708, -0.113377, -0.124602,
		37.404282, 44.327126, 25.619139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811836, 44.684586, 26.321909>,  <38.094276, 44.406487, 25.706360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811836, 44.684586, 26.321909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507710, 44.482201, 26.158976>,  <37.325233, 44.360771, 26.061214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507710, 44.482201, 26.158976>,  <37.811836, 44.684586, 26.321909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507710, 44.482201, 26.158976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371790, -0.175231, 0.911628,
		-0.532626, 0.844569, -0.054880,
		-0.760316, -0.505961, -0.407336,
		37.279613, 44.330414, 26.036776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226917, 44.641499, 26.840601>,  <37.811836, 44.684586, 26.321909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226917, 44.641499, 26.840601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152218, 44.334091, 26.595816>,  <37.107399, 44.149647, 26.448944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152218, 44.334091, 26.595816>,  <37.226917, 44.641499, 26.840601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152218, 44.334091, 26.595816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389260, -0.514052, 0.764348,
		-0.901999, 0.380953, -0.203158,
		-0.186747, -0.768522, -0.611964,
		37.096195, 44.103535, 26.412226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446796, 44.529373, 26.774168>,  <37.226917, 44.641499, 26.840601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446796, 44.529373, 26.774168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626347, 44.185944, 26.675085>,  <36.734077, 43.979885, 26.615635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626347, 44.185944, 26.675085>,  <36.446796, 44.529373, 26.774168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626347, 44.185944, 26.675085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438969, -0.453312, 0.775767,
		-0.778345, -0.239483, -0.580368,
		0.448871, -0.858578, -0.247708,
		36.761009, 43.928371, 26.600773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993126, 44.152660, 26.886454>,  <36.446796, 44.529373, 26.774168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993126, 44.152660, 26.886454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301128, 43.897682, 26.897346>,  <36.485931, 43.744694, 26.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301128, 43.897682, 26.897346>,  <35.993126, 44.152660, 26.886454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301128, 43.897682, 26.897346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414047, -0.466767, 0.781469,
		-0.485432, -0.613019, -0.623349,
		0.770014, -0.637445, 0.027235,
		36.532131, 43.706448, 26.905516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654903, 43.430225, 26.846020>,  <35.993126, 44.152660, 26.886454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654903, 43.430225, 26.846020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020348, 43.436565, 27.008528>,  <36.239616, 43.440369, 27.106033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020348, 43.436565, 27.008528>,  <35.654903, 43.430225, 26.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020348, 43.436565, 27.008528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317025, -0.597874, 0.736235,
		0.254566, -0.801434, -0.541203,
		0.913615, 0.015845, 0.406272,
		36.294434, 43.441319, 27.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573414, 42.875191, 27.203665>,  <35.654903, 43.430225, 26.846020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573414, 42.875191, 27.203665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889076, 43.038723, 27.387009>,  <36.078472, 43.136841, 27.497015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889076, 43.038723, 27.387009>,  <35.573414, 42.875191, 27.203665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889076, 43.038723, 27.387009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350706, -0.312720, 0.882730,
		0.504223, -0.857360, -0.103406,
		0.789154, 0.408828, 0.458362,
		36.125824, 43.161373, 27.524517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918850, 42.332436, 27.665619>,  <35.573414, 42.875191, 27.203665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918850, 42.332436, 27.665619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048199, 42.678799, 27.818264>,  <36.125809, 42.886616, 27.909851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048199, 42.678799, 27.818264>,  <35.918850, 42.332436, 27.665619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048199, 42.678799, 27.818264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326601, -0.276368, 0.903854,
		0.888122, -0.416918, 0.193437,
		0.323373, 0.865910, 0.381615,
		36.145210, 42.938572, 27.932749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197662, 42.202972, 28.374960>,  <35.918850, 42.332436, 27.665619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197662, 42.202972, 28.374960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128311, 42.596916, 28.374815>,  <36.086700, 42.833282, 28.374729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128311, 42.596916, 28.374815>,  <36.197662, 42.202972, 28.374960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128311, 42.596916, 28.374815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567070, -0.099531, 0.817634,
		0.805215, 0.141966, 0.575738,
		-0.173380, 0.984855, -0.000361,
		36.076298, 42.892372, 28.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494774, 42.473831, 28.967562>,  <36.197662, 42.202972, 28.374960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494774, 42.473831, 28.967562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215790, 42.727757, 28.834555>,  <36.048401, 42.880112, 28.754751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215790, 42.727757, 28.834555>,  <36.494774, 42.473831, 28.967562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215790, 42.727757, 28.834555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523471, -0.134419, 0.841373,
		0.489415, 0.760887, 0.426056,
		-0.697460, 0.634809, -0.332516,
		36.006550, 42.918198, 28.734800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423302, 43.066971, 29.500807>,  <36.494774, 42.473831, 28.967562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423302, 43.066971, 29.500807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079926, 43.038479, 29.297628>,  <35.873901, 43.021385, 29.175720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079926, 43.038479, 29.297628>,  <36.423302, 43.066971, 29.500807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079926, 43.038479, 29.297628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511502, 0.192395, 0.837466,
		0.038076, 0.978729, -0.201592,
		-0.858438, -0.071228, -0.507948,
		35.822395, 43.017109, 29.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014336, 43.323769, 29.978083>,  <36.423302, 43.066971, 29.500807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014336, 43.323769, 29.978083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734062, 43.173389, 29.735531>,  <35.565899, 43.083160, 29.590000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734062, 43.173389, 29.735531>,  <36.014336, 43.323769, 29.978083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734062, 43.173389, 29.735531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636186, -0.055499, 0.769537,
		-0.322961, 0.924976, -0.200287,
		-0.700688, -0.375950, -0.606381,
		35.523857, 43.060604, 29.553616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379196, 43.599407, 30.255806>,  <36.014336, 43.323769, 29.978083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379196, 43.599407, 30.255806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262310, 43.288898, 30.032375>,  <35.192177, 43.102592, 29.898317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262310, 43.288898, 30.032375>,  <35.379196, 43.599407, 30.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262310, 43.288898, 30.032375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773161, -0.152008, 0.615723,
		-0.562878, 0.611794, -0.555766,
		-0.292215, -0.776274, -0.558578,
		35.174644, 43.056015, 29.864801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583984, 43.629360, 30.111851>,  <35.379196, 43.599407, 30.255806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583984, 43.629360, 30.111851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679840, 43.243427, 30.068634>,  <34.737354, 43.011868, 30.042704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679840, 43.243427, 30.068634>,  <34.583984, 43.629360, 30.111851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679840, 43.243427, 30.068634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821638, -0.260832, 0.506831,
		-0.517187, -0.032688, -0.855248,
		0.239643, -0.964831, -0.108041,
		34.751732, 42.953979, 30.036222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933308, 43.350826, 30.170662>,  <34.583984, 43.629360, 30.111851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933308, 43.350826, 30.170662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165176, 43.024960, 30.177650>,  <34.304298, 42.829441, 30.181845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165176, 43.024960, 30.177650>,  <33.933308, 43.350826, 30.170662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165176, 43.024960, 30.177650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735002, -0.513491, 0.442832,
		-0.351787, -0.269540, -0.896434,
		0.579672, -0.814663, 0.017473,
		34.339077, 42.780560, 30.182892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443256, 42.715149, 30.023569>,  <33.933308, 43.350826, 30.170662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443256, 42.715149, 30.023569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767742, 42.571327, 30.208029>,  <33.962433, 42.485035, 30.318705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767742, 42.571327, 30.208029>,  <33.443256, 42.715149, 30.023569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767742, 42.571327, 30.208029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580114, -0.593966, 0.557380,
		0.073499, -0.719672, -0.690413,
		0.811213, -0.359552, 0.461148,
		34.011105, 42.463463, 30.346373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378586, 41.947742, 30.026852>,  <33.443256, 42.715149, 30.023569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378586, 41.947742, 30.026852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644341, 42.040478, 30.311060>,  <33.803795, 42.096119, 30.481585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644341, 42.040478, 30.311060>,  <33.378586, 41.947742, 30.026852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644341, 42.040478, 30.311060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481392, -0.594464, 0.644107,
		0.571709, -0.769976, -0.283348,
		0.664387, 0.231840, 0.710521,
		33.843658, 42.110031, 30.524216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670109, 41.279015, 30.314116>,  <33.378586, 41.947742, 30.026852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670109, 41.279015, 30.314116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725422, 41.563179, 30.590141>,  <33.758610, 41.733677, 30.755756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725422, 41.563179, 30.590141>,  <33.670109, 41.279015, 30.314116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725422, 41.563179, 30.590141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532189, -0.534318, 0.656718,
		0.835256, -0.458059, 0.304186,
		0.138284, 0.710412, 0.690066,
		33.766907, 41.776302, 30.797161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988754, 40.982746, 30.898867>,  <33.670109, 41.279015, 30.314116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988754, 40.982746, 30.898867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817039, 41.315674, 31.039133>,  <33.714012, 41.515430, 31.123293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817039, 41.315674, 31.039133>,  <33.988754, 40.982746, 30.898867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817039, 41.315674, 31.039133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373183, -0.517030, 0.770334,
		0.822465, 0.199831, 0.532559,
		-0.429285, 0.832315, 0.350665,
		33.688255, 41.565369, 31.144333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873432, 40.788624, 31.563778>,  <33.988754, 40.982746, 30.898867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873432, 40.788624, 31.563778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661957, 41.128094, 31.557589>,  <33.535072, 41.331776, 31.553875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661957, 41.128094, 31.557589>,  <33.873432, 40.788624, 31.563778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661957, 41.128094, 31.557589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532626, -0.317496, 0.784542,
		0.660909, 0.423018, 0.619883,
		-0.528685, 0.848677, -0.015474,
		33.503349, 41.382698, 31.552946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951683, 41.174656, 32.199657>,  <33.873432, 40.788624, 31.563778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951683, 41.174656, 32.199657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594646, 41.244694, 32.033470>,  <33.380424, 41.286716, 31.933758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594646, 41.244694, 32.033470>,  <33.951683, 41.174656, 32.199657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594646, 41.244694, 32.033470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450667, -0.319739, 0.833466,
		0.013091, 0.931187, 0.364306,
		-0.892596, 0.175092, -0.415470,
		33.326866, 41.297222, 31.908829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619923, 41.313408, 32.745323>,  <33.951683, 41.174656, 32.199657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619923, 41.313408, 32.745323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351936, 41.261234, 32.452984>,  <33.191147, 41.229931, 32.277580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351936, 41.261234, 32.452984>,  <33.619923, 41.313408, 32.745323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351936, 41.261234, 32.452984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688738, -0.258262, 0.677452,
		-0.277113, 0.957229, 0.083191,
		-0.669962, -0.130434, -0.730848,
		33.150948, 41.222103, 32.233730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042912, 41.531536, 33.029438>,  <33.619923, 41.313408, 32.745323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042912, 41.531536, 33.029438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922588, 41.308308, 32.720097>,  <32.850395, 41.174370, 32.534492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922588, 41.308308, 32.720097>,  <33.042912, 41.531536, 33.029438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922588, 41.308308, 32.720097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741993, -0.372486, 0.557406,
		-0.599133, 0.741495, -0.302035,
		-0.300810, -0.558068, -0.773352,
		32.832344, 41.140888, 32.488091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263737, 41.532532, 33.114658>,  <33.042912, 41.531536, 33.029438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263737, 41.532532, 33.114658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374786, 41.222370, 32.887794>,  <32.441418, 41.036274, 32.751675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374786, 41.222370, 32.887794>,  <32.263737, 41.532532, 33.114658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374786, 41.222370, 32.887794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643608, -0.588417, 0.489423,
		-0.713228, 0.229155, -0.662415,
		0.277622, -0.775406, -0.567161,
		32.458073, 40.989750, 32.717648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670073, 41.145702, 32.989418>,  <32.263737, 41.532532, 33.114658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670073, 41.145702, 32.989418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955873, 40.876358, 32.913456>,  <32.127354, 40.714752, 32.867878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955873, 40.876358, 32.913456>,  <31.670073, 41.145702, 32.989418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955873, 40.876358, 32.913456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555935, -0.711232, 0.430215,
		-0.424760, -0.201814, -0.882525,
		0.714504, -0.673365, -0.189908,
		32.170223, 40.674347, 32.856483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296926, 40.523350, 32.911808>,  <31.670073, 41.145702, 32.989418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296926, 40.523350, 32.911808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675545, 40.398949, 32.946056>,  <31.902716, 40.324306, 32.966606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675545, 40.398949, 32.946056>,  <31.296926, 40.523350, 32.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675545, 40.398949, 32.946056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309345, -0.799944, 0.514193,
		-0.091427, -0.513192, -0.853390,
		0.946545, -0.311003, 0.085617,
		31.959509, 40.305649, 32.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320032, 39.851208, 32.649288>,  <31.296926, 40.523350, 32.911808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320032, 39.851208, 32.649288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637945, 39.883541, 32.889881>,  <31.828693, 39.902943, 33.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637945, 39.883541, 32.889881>,  <31.320032, 39.851208, 32.649288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637945, 39.883541, 32.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351910, -0.746072, 0.565274,
		0.494446, -0.660940, -0.564519,
		0.794785, 0.080838, 0.601484,
		31.876381, 39.907791, 33.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585447, 39.163860, 32.753105>,  <31.320032, 39.851208, 32.649288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585447, 39.163860, 32.753105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741177, 39.361668, 33.063946>,  <31.834614, 39.480350, 33.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741177, 39.361668, 33.063946>,  <31.585447, 39.163860, 32.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741177, 39.361668, 33.063946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110596, -0.812462, 0.572429,
		0.914437, -0.308805, -0.261620,
		0.389325, 0.494516, 0.777098,
		31.857973, 39.510021, 33.297073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949772, 38.597363, 33.143120>,  <31.585447, 39.163860, 32.753105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949772, 38.597363, 33.143120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906256, 38.878799, 33.424011>,  <31.880146, 39.047661, 33.592545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906256, 38.878799, 33.424011>,  <31.949772, 38.597363, 33.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906256, 38.878799, 33.424011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055097, -0.709604, 0.702443,
		0.992537, 0.037727, 0.115963,
		-0.108789, 0.703590, 0.702229,
		31.873619, 39.089878, 33.634682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335915, 38.409794, 33.673611>,  <31.949772, 38.597363, 33.143120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335915, 38.409794, 33.673611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097878, 38.672039, 33.859535>,  <31.955057, 38.829384, 33.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097878, 38.672039, 33.859535>,  <32.335915, 38.409794, 33.673611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097878, 38.672039, 33.859535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002738, -0.576707, 0.816946,
		0.803656, 0.487428, 0.341397,
		-0.595088, 0.655609, 0.464809,
		31.919352, 38.868721, 33.998978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929657, 38.761364, 33.828960>,  <32.335915, 38.409794, 33.673611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929657, 38.761364, 33.828960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249683, 38.704273, 34.062035>,  <33.441700, 38.670021, 34.201878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249683, 38.704273, 34.062035>,  <32.929657, 38.761364, 33.828960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249683, 38.704273, 34.062035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597291, 0.280145, -0.751506,
		-0.055979, 0.949289, 0.309382,
		0.800069, -0.142723, 0.582684,
		33.489704, 38.661457, 34.236839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377918, 39.347637, 33.718590>,  <32.929657, 38.761364, 33.828960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377918, 39.347637, 33.718590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638729, 39.088478, 33.876122>,  <33.795216, 38.932983, 33.970638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638729, 39.088478, 33.876122>,  <33.377918, 39.347637, 33.718590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638729, 39.088478, 33.876122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679754, 0.269437, -0.682157,
		0.335854, 0.712487, 0.616088,
		0.652025, -0.647893, 0.393825,
		33.834335, 38.894112, 33.994270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023426, 39.764233, 33.828686>,  <33.377918, 39.347637, 33.718590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023426, 39.764233, 33.828686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136551, 39.380573, 33.825977>,  <34.204426, 39.150375, 33.824352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136551, 39.380573, 33.825977>,  <34.023426, 39.764233, 33.828686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136551, 39.380573, 33.825977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771481, 0.231654, -0.592582,
		0.569944, 0.162365, 0.805482,
		0.282808, -0.959153, -0.006768,
		34.221394, 39.092827, 33.823948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787056, 39.766834, 33.832993>,  <34.023426, 39.764233, 33.828686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787056, 39.766834, 33.832993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667625, 39.422306, 33.668564>,  <34.595966, 39.215588, 33.569904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667625, 39.422306, 33.668564>,  <34.787056, 39.766834, 33.832993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667625, 39.422306, 33.668564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699444, 0.095570, -0.708269,
		0.649333, -0.498992, 0.573910,
		-0.298572, -0.861321, -0.411074,
		34.578053, 39.163910, 33.545242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487007, 39.505718, 33.619587>,  <34.787056, 39.766834, 33.832993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487007, 39.505718, 33.619587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187893, 39.317421, 33.432304>,  <35.008423, 39.204441, 33.319935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187893, 39.317421, 33.432304>,  <35.487007, 39.505718, 33.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187893, 39.317421, 33.432304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484376, 0.095498, -0.869632,
		0.454089, -0.877085, 0.156607,
		-0.747786, -0.470747, -0.468203,
		34.963558, 39.176197, 33.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862080, 39.063755, 33.253109>,  <35.487007, 39.505718, 33.619587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862080, 39.063755, 33.253109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503193, 39.071499, 33.076641>,  <35.287861, 39.076145, 32.970760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503193, 39.071499, 33.076641>,  <35.862080, 39.063755, 33.253109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503193, 39.071499, 33.076641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441555, 0.052070, -0.895722,
		0.005631, -0.998456, -0.055266,
		-0.897217, 0.019359, -0.441167,
		35.234028, 39.077305, 32.944290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957630, 38.711483, 32.716515>,  <35.862080, 39.063755, 33.253109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957630, 38.711483, 32.716515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629086, 38.916843, 32.617092>,  <35.431957, 39.040062, 32.557438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629086, 38.916843, 32.617092>,  <35.957630, 38.711483, 32.716515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629086, 38.916843, 32.617092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372278, 0.152342, -0.915533,
		-0.432172, -0.844517, -0.316257,
		-0.821363, 0.513403, -0.248557,
		35.382675, 39.070866, 32.542526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862373, 38.517872, 32.004368>,  <35.957630, 38.711483, 32.716515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862373, 38.517872, 32.004368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643650, 38.847095, 32.065781>,  <35.512417, 39.044632, 32.102627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643650, 38.847095, 32.065781>,  <35.862373, 38.517872, 32.004368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643650, 38.847095, 32.065781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293843, 0.360359, -0.885324,
		-0.784002, -0.438987, -0.438898,
		-0.546806, 0.823063, 0.153529,
		35.479607, 39.094013, 32.111839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727470, 38.732647, 31.369051>,  <35.862373, 38.517872, 32.004368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727470, 38.732647, 31.369051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693913, 39.059910, 31.596586>,  <35.673779, 39.256268, 31.733107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693913, 39.059910, 31.596586>,  <35.727470, 38.732647, 31.369051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693913, 39.059910, 31.596586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443658, 0.541817, -0.713864,
		-0.892261, 0.192481, -0.408437,
		-0.083893, 0.818160, 0.568838,
		35.668743, 39.305359, 31.767239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342628, 39.244987, 30.895512>,  <35.727470, 38.732647, 31.369051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342628, 39.244987, 30.895512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517807, 39.456581, 31.186272>,  <35.622913, 39.583538, 31.360727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517807, 39.456581, 31.186272>,  <35.342628, 39.244987, 30.895512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517807, 39.456581, 31.186272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327298, 0.659255, -0.676949,
		-0.837305, 0.534379, 0.115583,
		0.437946, 0.528982, 0.726898,
		35.649189, 39.615276, 31.404341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293903, 39.976665, 30.670506>,  <35.342628, 39.244987, 30.895512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293903, 39.976665, 30.670506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577576, 39.954483, 30.951643>,  <35.747780, 39.941174, 31.120325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577576, 39.954483, 30.951643>,  <35.293903, 39.976665, 30.670506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577576, 39.954483, 30.951643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603125, 0.563983, -0.564060,
		-0.365112, 0.823923, 0.433411,
		0.709178, -0.055456, 0.702845,
		35.790329, 39.937847, 31.162497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450836, 40.628220, 30.856556>,  <35.293903, 39.976665, 30.670506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450836, 40.628220, 30.856556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779926, 40.413418, 30.931126>,  <35.977379, 40.284534, 30.975868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779926, 40.413418, 30.931126>,  <35.450836, 40.628220, 30.856556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779926, 40.413418, 30.931126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559708, 0.707990, -0.430671,
		0.099287, 0.458665, 0.883045,
		0.822721, -0.537007, 0.186424,
		36.026741, 40.252316, 30.987053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978340, 41.108158, 31.078644>,  <35.450836, 40.628220, 30.856556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978340, 41.108158, 31.078644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173683, 40.779430, 30.961254>,  <36.290890, 40.582195, 30.890820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173683, 40.779430, 30.961254>,  <35.978340, 41.108158, 31.078644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173683, 40.779430, 30.961254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648010, 0.566763, -0.508786,
		0.584458, 0.058295, 0.809327,
		0.488356, -0.821816, -0.293474,
		36.320190, 40.532887, 30.873213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644215, 41.363304, 31.091696>,  <35.978340, 41.108158, 31.078644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644215, 41.363304, 31.091696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711647, 41.012325, 30.912067>,  <36.752106, 40.801739, 30.804291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711647, 41.012325, 30.912067>,  <36.644215, 41.363304, 31.091696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711647, 41.012325, 30.912067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756814, 0.407113, -0.511363,
		0.631518, -0.253658, 0.732696,
		0.168579, -0.877449, -0.449071,
		36.762222, 40.749092, 30.777346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437187, 41.179470, 31.126436>,  <36.644215, 41.363304, 31.091696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437187, 41.179470, 31.126436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264862, 40.995293, 30.815979>,  <37.161465, 40.884789, 30.629705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264862, 40.995293, 30.815979>,  <37.437187, 41.179470, 31.126436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264862, 40.995293, 30.815979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677814, 0.402707, -0.615139,
		0.595792, -0.791089, 0.138600,
		-0.430815, -0.460439, -0.776141,
		37.135616, 40.857162, 30.583138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999023, 40.881557, 30.737503>,  <37.437187, 41.179470, 31.126436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999023, 40.881557, 30.737503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691933, 40.881317, 30.481194>,  <37.507679, 40.881172, 30.327408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691933, 40.881317, 30.481194>,  <37.999023, 40.881557, 30.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691933, 40.881317, 30.481194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596327, 0.365287, -0.714814,
		0.234495, -0.930895, -0.280084,
		-0.767728, -0.000598, -0.640776,
		37.461613, 40.881138, 30.288961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245342, 40.520180, 30.236034>,  <37.999023, 40.881557, 30.737503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245342, 40.520180, 30.236034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956432, 40.739552, 30.067493>,  <37.783085, 40.871174, 29.966370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956432, 40.739552, 30.067493>,  <38.245342, 40.520180, 30.236034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956432, 40.739552, 30.067493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646964, 0.320452, -0.691916,
		-0.244447, -0.772355, -0.586272,
		-0.722277, 0.548433, -0.421352,
		37.739750, 40.904083, 29.941088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389923, 40.437428, 29.588356>,  <38.245342, 40.520180, 30.236034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389923, 40.437428, 29.588356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134773, 40.745441, 29.593330>,  <37.981682, 40.930248, 29.596315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134773, 40.745441, 29.593330>,  <38.389923, 40.437428, 29.588356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134773, 40.745441, 29.593330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502110, 0.428073, -0.751424,
		-0.583948, -0.473073, -0.659702,
		-0.637879, 0.770036, 0.012438,
		37.943409, 40.976452, 29.597061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314892, 40.570152, 28.913507>,  <38.389923, 40.437428, 29.588356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314892, 40.570152, 28.913507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185284, 40.909584, 29.080801>,  <38.107517, 41.113243, 29.181177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185284, 40.909584, 29.080801>,  <38.314892, 40.570152, 28.913507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185284, 40.909584, 29.080801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381825, 0.521780, -0.762860,
		-0.865575, -0.087490, -0.493077,
		-0.324021, 0.848582, 0.418234,
		38.088078, 41.164158, 29.206272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021507, 40.911907, 28.357109>,  <38.314892, 40.570152, 28.913507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021507, 40.911907, 28.357109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130302, 41.183136, 28.630236>,  <38.195580, 41.345875, 28.794111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130302, 41.183136, 28.630236>,  <38.021507, 40.911907, 28.357109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130302, 41.183136, 28.630236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304672, 0.612383, -0.729495,
		-0.912795, 0.406450, -0.040027,
		0.271992, 0.678075, 0.682814,
		38.211899, 41.386559, 28.835079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643536, 41.489120, 28.312939>,  <38.021507, 40.911907, 28.357109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643536, 41.489120, 28.312939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995884, 41.592720, 28.471420>,  <38.207294, 41.654881, 28.566509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995884, 41.592720, 28.471420>,  <37.643536, 41.489120, 28.312939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995884, 41.592720, 28.471420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165810, 0.615161, -0.770769,
		-0.443357, 0.744646, 0.498936,
		0.880875, 0.258998, 0.396206,
		38.260147, 41.670418, 28.590282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762196, 42.288628, 28.202402>,  <37.643536, 41.489120, 28.312939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762196, 42.288628, 28.202402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098854, 42.078682, 28.253231>,  <38.300850, 41.952713, 28.283728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098854, 42.078682, 28.253231>,  <37.762196, 42.288628, 28.202402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098854, 42.078682, 28.253231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433363, 0.516036, -0.738852,
		0.322225, 0.676920, 0.661778,
		0.841645, -0.524867, 0.127073,
		38.351349, 41.921223, 28.291353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258743, 42.762367, 28.212807>,  <37.762196, 42.288628, 28.202402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258743, 42.762367, 28.212807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420212, 42.412811, 28.104454>,  <38.517094, 42.203079, 28.039442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420212, 42.412811, 28.104454>,  <38.258743, 42.762367, 28.212807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420212, 42.412811, 28.104454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448143, 0.446986, -0.774190,
		0.797634, 0.191121, 0.572059,
		0.403667, -0.873885, -0.270882,
		38.541313, 42.150646, 28.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956543, 42.971447, 27.947874>,  <38.258743, 42.762367, 28.212807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956543, 42.971447, 27.947874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880569, 42.603168, 27.811499>,  <38.834984, 42.382202, 27.729673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880569, 42.603168, 27.811499>,  <38.956543, 42.971447, 27.947874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880569, 42.603168, 27.811499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466696, 0.220850, -0.856399,
		0.863782, -0.321776, 0.387739,
		-0.189936, -0.920699, -0.340938,
		38.823589, 42.326958, 27.709217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608524, 42.678440, 27.565197>,  <38.956543, 42.971447, 27.947874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608524, 42.678440, 27.565197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287693, 42.479259, 27.433310>,  <39.095196, 42.359753, 27.354177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287693, 42.479259, 27.433310>,  <39.608524, 42.678440, 27.565197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287693, 42.479259, 27.433310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331035, 0.088826, -0.939429,
		0.497078, -0.862643, 0.093594,
		-0.802078, -0.497952, -0.329718,
		39.047070, 42.329872, 27.334394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817127, 42.315033, 27.020283>,  <39.608524, 42.678440, 27.565197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817127, 42.315033, 27.020283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424568, 42.309559, 26.943682>,  <39.189034, 42.306274, 26.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424568, 42.309559, 26.943682>,  <39.817127, 42.315033, 27.020283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424568, 42.309559, 26.943682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191978, -0.081356, -0.978021,
		-0.002196, -0.996591, 0.082469,
		-0.981397, -0.013684, -0.191503,
		39.130150, 42.305454, 26.886230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663567, 41.768265, 26.546303>,  <39.817127, 42.315033, 27.020283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663567, 41.768265, 26.546303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361317, 42.028141, 26.513004>,  <39.179966, 42.184067, 26.493025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361317, 42.028141, 26.513004>,  <39.663567, 41.768265, 26.546303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361317, 42.028141, 26.513004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004707, -0.132476, -0.991175,
		-0.654990, -0.748563, 0.103160,
		-0.755623, 0.649695, -0.083247,
		39.134628, 42.223049, 26.488029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357861, 41.560951, 26.010435>,  <39.663567, 41.768265, 26.546303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357861, 41.560951, 26.010435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214462, 41.931820, 26.053959>,  <39.128426, 42.154339, 26.080072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214462, 41.931820, 26.053959>,  <39.357861, 41.560951, 26.010435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214462, 41.931820, 26.053959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169170, 0.050106, -0.984312,
		-0.918077, -0.371276, 0.138886,
		-0.358493, 0.927169, 0.108810,
		39.106915, 42.209972, 26.086601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778355, 41.596012, 25.607561>,  <39.357861, 41.560951, 26.010435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778355, 41.596012, 25.607561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883678, 41.977333, 25.666735>,  <38.946873, 42.206127, 25.702238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883678, 41.977333, 25.666735>,  <38.778355, 41.596012, 25.607561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883678, 41.977333, 25.666735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068700, 0.134425, -0.988540,
		-0.962261, 0.270457, -0.030096,
		0.263312, 0.953301, 0.147932,
		38.962673, 42.263325, 25.711115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204430, 42.097790, 25.260342>,  <38.778355, 41.596012, 25.607561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204430, 42.097790, 25.260342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565041, 42.257263, 25.327642>,  <38.781406, 42.352947, 25.368023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565041, 42.257263, 25.327642>,  <38.204430, 42.097790, 25.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565041, 42.257263, 25.327642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045716, 0.298891, -0.953192,
		-0.430307, 0.867017, 0.251231,
		0.901524, 0.398680, 0.168252,
		38.835499, 42.376865, 25.378119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022491, 42.803471, 25.018383>,  <38.204430, 42.097790, 25.260342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022491, 42.803471, 25.018383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410599, 42.706707, 25.021479>,  <38.643463, 42.648651, 25.023336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410599, 42.706707, 25.021479>,  <38.022491, 42.803471, 25.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410599, 42.706707, 25.021479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093537, 0.345285, -0.933825,
		0.223226, 0.906785, 0.357647,
		0.970269, -0.241907, 0.007741,
		38.701679, 42.634136, 25.023802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317791, 43.350052, 24.574919>,  <38.022491, 42.803471, 25.018383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317791, 43.350052, 24.574919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595016, 43.063915, 24.610569>,  <38.761353, 42.892231, 24.631960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595016, 43.063915, 24.610569>,  <38.317791, 43.350052, 24.574919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595016, 43.063915, 24.610569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259609, 0.132335, -0.956603,
		0.672508, 0.686125, 0.277427,
		0.693063, -0.715346, 0.089128,
		38.802937, 42.849312, 24.637308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854973, 43.566475, 24.216757>,  <38.317791, 43.350052, 24.574919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854973, 43.566475, 24.216757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976921, 43.190796, 24.279951>,  <39.050091, 42.965389, 24.317867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976921, 43.190796, 24.279951>,  <38.854973, 43.566475, 24.216757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976921, 43.190796, 24.279951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393195, -0.026968, -0.919060,
		0.867441, 0.342310, 0.361067,
		0.304866, -0.939200, 0.157987,
		39.068382, 42.909035, 24.327347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519939, 43.519798, 24.084610>,  <38.854973, 43.566475, 24.216757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519939, 43.519798, 24.084610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365929, 43.153873, 24.035824>,  <39.273521, 42.934319, 24.006552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365929, 43.153873, 24.035824>,  <39.519939, 43.519798, 24.084610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365929, 43.153873, 24.035824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361103, -0.027711, -0.932115,
		0.849329, -0.402931, 0.341010,
		-0.385027, -0.914811, -0.121963,
		39.250420, 42.879429, 23.999235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988411, 43.099918, 23.675783>,  <39.519939, 43.519798, 24.084610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988411, 43.099918, 23.675783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700294, 42.827698, 23.622072>,  <39.527424, 42.664368, 23.589846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700294, 42.827698, 23.622072>,  <39.988411, 43.099918, 23.675783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700294, 42.827698, 23.622072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286134, -0.115155, -0.951245,
		0.631904, -0.723599, 0.277673,
		-0.720295, -0.680547, -0.134279,
		39.484207, 42.623535, 23.581789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247551, 42.531212, 23.338076>,  <39.988411, 43.099918, 23.675783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247551, 42.531212, 23.338076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858250, 42.508743, 23.248964>,  <39.624668, 42.495262, 23.195498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858250, 42.508743, 23.248964>,  <40.247551, 42.531212, 23.338076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858250, 42.508743, 23.248964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229751, -0.234100, -0.944676,
		0.000913, -0.970589, 0.240744,
		-0.973249, -0.056173, -0.222780,
		39.566277, 42.491890, 23.182131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232040, 42.002766, 22.907274>,  <40.247551, 42.531212, 23.338076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232040, 42.002766, 22.907274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869186, 42.152412, 22.830189>,  <39.651474, 42.242203, 22.783937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869186, 42.152412, 22.830189>,  <40.232040, 42.002766, 22.907274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869186, 42.152412, 22.830189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106129, -0.239762, -0.965013,
		-0.407235, -0.895851, 0.177792,
		-0.907136, 0.374118, -0.192715,
		39.597046, 42.264648, 22.772373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910713, 41.531929, 22.465332>,  <40.232040, 42.002766, 22.907274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910713, 41.531929, 22.465332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695286, 41.863293, 22.403772>,  <39.566029, 42.062111, 22.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695286, 41.863293, 22.403772>,  <39.910713, 41.531929, 22.465332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695286, 41.863293, 22.403772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034865, -0.204406, -0.978265,
		-0.841863, -0.521493, 0.138969,
		-0.538565, 0.828410, -0.153899,
		39.533718, 42.111816, 22.357603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616646, 40.859589, 22.229784>,  <39.910713, 41.531929, 22.465332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616646, 40.859589, 22.229784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977093, 40.816772, 22.061720>,  <40.193359, 40.791084, 21.960882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977093, 40.816772, 22.061720>,  <39.616646, 40.859589, 22.229784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977093, 40.816772, 22.061720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365531, -0.333639, 0.868949,
		-0.233188, -0.936605, -0.261523,
		0.901116, -0.107034, -0.420159,
		40.247429, 40.784660, 21.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794163, 40.218826, 22.453022>,  <39.616646, 40.859589, 22.229784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794163, 40.218826, 22.453022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128407, 40.407200, 22.339897>,  <40.328953, 40.520226, 22.272022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128407, 40.407200, 22.339897>,  <39.794163, 40.218826, 22.453022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128407, 40.407200, 22.339897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474967, -0.360739, 0.802667,
		0.275982, -0.805040, -0.525114,
		0.835608, 0.470934, -0.282810,
		40.379089, 40.548481, 22.255054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231876, 39.733833, 22.619566>,  <39.794163, 40.218826, 22.453022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231876, 39.733833, 22.619566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453510, 40.065754, 22.592993>,  <40.586491, 40.264908, 22.577049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453510, 40.065754, 22.592993>,  <40.231876, 39.733833, 22.619566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453510, 40.065754, 22.592993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458284, -0.237440, 0.856503,
		0.694954, -0.505025, -0.511848,
		0.554089, 0.829803, -0.066435,
		40.619736, 40.314693, 22.573063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868553, 39.503574, 22.734461>,  <40.231876, 39.733833, 22.619566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868553, 39.503574, 22.734461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878761, 39.893902, 22.821295>,  <40.884888, 40.128098, 22.873396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878761, 39.893902, 22.821295>,  <40.868553, 39.503574, 22.734461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878761, 39.893902, 22.821295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360974, -0.211500, 0.908276,
		0.932226, 0.055181, -0.357644,
		0.025522, 0.975819, 0.217084,
		40.886417, 40.186649, 22.886419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581745, 39.701530, 23.067255>,  <40.868553, 39.503574, 22.734461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581745, 39.701530, 23.067255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311489, 39.971451, 23.186020>,  <41.149338, 40.133404, 23.257278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311489, 39.971451, 23.186020>,  <41.581745, 39.701530, 23.067255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311489, 39.971451, 23.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197561, -0.222286, 0.954756,
		0.710270, 0.703727, 0.016870,
		-0.675637, 0.674802, 0.296912,
		41.108799, 40.173893, 23.275093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798382, 39.819729, 23.694223>,  <41.581745, 39.701530, 23.067255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798382, 39.819729, 23.694223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445068, 40.007236, 23.697317>,  <41.233078, 40.119740, 23.699173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445068, 40.007236, 23.697317>,  <41.798382, 39.819729, 23.694223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445068, 40.007236, 23.697317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049716, -0.110060, 0.992681,
		0.466187, 0.876439, 0.120520,
		-0.883288, 0.468767, 0.007736,
		41.180080, 40.147865, 23.699638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809410, 40.215679, 24.385456>,  <41.798382, 39.819729, 23.694223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809410, 40.215679, 24.385456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431267, 40.169292, 24.263575>,  <41.204380, 40.141460, 24.190445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431267, 40.169292, 24.263575>,  <41.809410, 40.215679, 24.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431267, 40.169292, 24.263575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302260, -0.038549, 0.952446,
		-0.122202, 0.992504, 0.001389,
		-0.945360, -0.115971, -0.304705,
		41.147659, 40.134502, 24.172163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339916, 40.738636, 24.742641>,  <41.809410, 40.215679, 24.385456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339916, 40.738636, 24.742641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110512, 40.433430, 24.623383>,  <40.972870, 40.250305, 24.551828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110512, 40.433430, 24.623383>,  <41.339916, 40.738636, 24.742641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110512, 40.433430, 24.623383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079415, -0.310450, 0.947267,
		-0.815337, 0.566948, 0.117453,
		-0.573514, -0.763014, -0.298146,
		40.938457, 40.204525, 24.533939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813419, 40.809078, 25.169218>,  <41.339916, 40.738636, 24.742641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813419, 40.809078, 25.169218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802883, 40.436077, 25.025143>,  <40.796562, 40.212276, 24.938698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802883, 40.436077, 25.025143>,  <40.813419, 40.809078, 25.169218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802883, 40.436077, 25.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450372, -0.310603, 0.837072,
		-0.892452, 0.184272, -0.411793,
		-0.026345, -0.932507, -0.360189,
		40.794979, 40.156326, 24.917086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283096, 40.592270, 25.528250>,  <40.813419, 40.809078, 25.169218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283096, 40.592270, 25.528250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449558, 40.249306, 25.407145>,  <40.549435, 40.043530, 25.334482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449558, 40.249306, 25.407145>,  <40.283096, 40.592270, 25.528250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449558, 40.249306, 25.407145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305189, -0.445357, 0.841734,
		-0.856547, -0.257893, -0.447010,
		0.416156, -0.857408, -0.302763,
		40.574406, 39.992085, 25.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806217, 40.096687, 25.647627>,  <40.283096, 40.592270, 25.528250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806217, 40.096687, 25.647627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164398, 39.918644, 25.645082>,  <40.379307, 39.811817, 25.643555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164398, 39.918644, 25.645082>,  <39.806217, 40.096687, 25.647627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164398, 39.918644, 25.645082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241959, -0.498669, 0.832337,
		-0.373647, -0.743783, -0.554233,
		0.895457, -0.445102, -0.006361,
		40.433037, 39.785114, 25.643173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746925, 39.327221, 25.840307>,  <39.806217, 40.096687, 25.647627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746925, 39.327221, 25.840307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107880, 39.470009, 25.936861>,  <40.324451, 39.555683, 25.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107880, 39.470009, 25.936861>,  <39.746925, 39.327221, 25.840307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107880, 39.470009, 25.936861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114493, -0.341416, 0.932913,
		0.415436, -0.869487, -0.267219,
		0.902388, 0.356971, 0.241386,
		40.378597, 39.577099, 26.009277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081112, 38.937534, 26.287664>,  <39.746925, 39.327221, 25.840307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081112, 38.937534, 26.287664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333496, 39.242016, 26.347612>,  <40.484928, 39.424706, 26.383581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333496, 39.242016, 26.347612>,  <40.081112, 38.937534, 26.287664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333496, 39.242016, 26.347612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091168, -0.119088, 0.988689,
		0.770441, -0.637485, -0.005743,
		0.630959, 0.761203, 0.149868,
		40.522785, 39.470375, 26.392572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572269, 38.629890, 26.774210>,  <40.081112, 38.937534, 26.287664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572269, 38.629890, 26.774210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613319, 39.026279, 26.808712>,  <40.637947, 39.264114, 26.829414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613319, 39.026279, 26.808712>,  <40.572269, 38.629890, 26.774210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613319, 39.026279, 26.808712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349735, -0.045234, 0.935756,
		0.931211, -0.126196, 0.341936,
		0.102622, 0.990973, 0.086257,
		40.644108, 39.323570, 26.834589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019547, 38.730591, 27.352449>,  <40.572269, 38.629890, 26.774210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019547, 38.730591, 27.352449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778526, 39.044041, 27.291964>,  <40.633915, 39.232109, 27.255672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778526, 39.044041, 27.291964>,  <41.019547, 38.730591, 27.352449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778526, 39.044041, 27.291964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330132, -0.072234, 0.941167,
		0.726598, 0.617021, 0.302224,
		-0.602551, 0.783624, -0.151213,
		40.597759, 39.279129, 27.246599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990013, 38.965355, 28.033976>,  <41.019547, 38.730591, 27.352449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990013, 38.965355, 28.033976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705643, 39.172272, 27.843401>,  <40.535023, 39.296421, 27.729055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705643, 39.172272, 27.843401>,  <40.990013, 38.965355, 28.033976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705643, 39.172272, 27.843401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408710, 0.247410, 0.878490,
		0.572314, 0.819265, 0.035534,
		-0.710924, 0.517295, -0.476438,
		40.492367, 39.327461, 27.700470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956020, 39.583206, 28.355492>,  <40.990013, 38.965355, 28.033976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956020, 39.583206, 28.355492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607670, 39.543056, 28.163036>,  <40.398659, 39.518967, 28.047564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607670, 39.543056, 28.163036>,  <40.956020, 39.583206, 28.355492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607670, 39.543056, 28.163036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488904, 0.277291, 0.827093,
		0.050397, 0.955529, -0.290560,
		-0.870881, -0.100373, -0.481136,
		40.346405, 39.512943, 28.018696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485027, 40.128250, 28.677418>,  <40.956020, 39.583206, 28.355492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485027, 40.128250, 28.677418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261581, 39.868069, 28.471558>,  <40.127514, 39.711960, 28.348042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261581, 39.868069, 28.471558>,  <40.485027, 40.128250, 28.677418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261581, 39.868069, 28.471558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707169, 0.049256, 0.705327,
		-0.433431, 0.757950, -0.487494,
		-0.558614, -0.650451, -0.514649,
		40.093998, 39.672932, 28.317163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791367, 40.330811, 28.762856>,  <40.485027, 40.128250, 28.677418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791367, 40.330811, 28.762856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776871, 39.945587, 28.656124>,  <39.768173, 39.714451, 28.592085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776871, 39.945587, 28.656124>,  <39.791367, 40.330811, 28.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776871, 39.945587, 28.656124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641272, -0.182373, 0.745325,
		-0.766457, 0.198119, -0.610977,
		-0.036237, -0.963062, -0.266829,
		39.765999, 39.656670, 28.576075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049576, 40.064510, 28.677172>,  <39.791367, 40.330811, 28.762856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049576, 40.064510, 28.677172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248871, 39.727196, 28.757793>,  <39.368446, 39.524807, 28.806168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248871, 39.727196, 28.757793>,  <39.049576, 40.064510, 28.677172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248871, 39.727196, 28.757793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664954, -0.222461, 0.712985,
		-0.556413, -0.489261, -0.671586,
		0.498237, -0.843288, 0.201556,
		39.398342, 39.474209, 28.818260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529518, 39.654327, 28.804728>,  <39.049576, 40.064510, 28.677172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529518, 39.654327, 28.804728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844406, 39.450230, 28.943256>,  <39.033337, 39.327770, 29.026373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844406, 39.450230, 28.943256>,  <38.529518, 39.654327, 28.804728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844406, 39.450230, 28.943256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564697, -0.370784, 0.737317,
		-0.247798, -0.775999, -0.580019,
		0.787219, -0.510240, 0.346325,
		39.080570, 39.297157, 29.047153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140640, 39.162868, 29.165977>,  <38.529518, 39.654327, 28.804728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140640, 39.162868, 29.165977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518982, 39.118313, 29.287933>,  <38.745987, 39.091579, 29.361107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518982, 39.118313, 29.287933>,  <38.140640, 39.162868, 29.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518982, 39.118313, 29.287933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320431, -0.470470, 0.822181,
		0.051857, -0.875357, -0.480688,
		0.945851, -0.111391, 0.304889,
		38.802738, 39.084896, 29.379400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065659, 38.629326, 29.515152>,  <38.140640, 39.162868, 29.165977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065659, 38.629326, 29.515152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398720, 38.798565, 29.658077>,  <38.598557, 38.900108, 29.743832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398720, 38.798565, 29.658077>,  <38.065659, 38.629326, 29.515152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398720, 38.798565, 29.658077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206538, -0.361403, 0.909247,
		0.513835, -0.830888, -0.213538,
		0.832656, 0.423100, 0.357311,
		38.648518, 38.925495, 29.765270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384464, 38.114738, 29.955114>,  <38.065659, 38.629326, 29.515152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384464, 38.114738, 29.955114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535507, 38.471096, 30.056091>,  <38.626133, 38.684910, 30.116678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535507, 38.471096, 30.056091>,  <38.384464, 38.114738, 29.955114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535507, 38.471096, 30.056091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255490, -0.161803, 0.953176,
		0.890021, -0.424424, 0.166515,
		0.377608, 0.890890, 0.252445,
		38.648788, 38.738361, 30.131824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822647, 37.971767, 30.514345>,  <38.384464, 38.114738, 29.955114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822647, 37.971767, 30.514345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732738, 38.357224, 30.572140>,  <38.678795, 38.588497, 30.606817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732738, 38.357224, 30.572140>,  <38.822647, 37.971767, 30.514345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732738, 38.357224, 30.572140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344771, -0.217339, 0.913180,
		0.911379, 0.155442, 0.381086,
		-0.224771, 0.963640, 0.144486,
		38.665306, 38.646317, 30.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145016, 38.146816, 31.007729>,  <38.822647, 37.971767, 30.514345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145016, 38.146816, 31.007729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864681, 38.432137, 31.005465>,  <38.696480, 38.603329, 31.004107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864681, 38.432137, 31.005465>,  <39.145016, 38.146816, 31.007729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864681, 38.432137, 31.005465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290681, -0.278339, 0.915441,
		0.651410, 0.643217, 0.402413,
		-0.700835, 0.713301, -0.005658,
		38.654430, 38.646126, 31.003767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235634, 38.388683, 31.645094>,  <39.145016, 38.146816, 31.007729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235634, 38.388683, 31.645094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880901, 38.538143, 31.536350>,  <38.668060, 38.627819, 31.471104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880901, 38.538143, 31.536350>,  <39.235634, 38.388683, 31.645094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880901, 38.538143, 31.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351081, -0.162316, 0.922169,
		0.300440, 0.913258, 0.275129,
		-0.886836, 0.373649, -0.271861,
		38.614849, 38.650238, 31.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012619, 38.961903, 32.142895>,  <39.235634, 38.388683, 31.645094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012619, 38.961903, 32.142895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677769, 38.807178, 31.988184>,  <38.476856, 38.714344, 31.895357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677769, 38.807178, 31.988184>,  <39.012619, 38.961903, 32.142895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677769, 38.807178, 31.988184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354801, -0.154201, 0.922138,
		-0.416333, 0.909176, -0.008155,
		-0.837128, -0.386810, -0.386775,
		38.426632, 38.691135, 31.872150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675865, 38.898933, 32.749298>,  <39.012619, 38.961903, 32.142895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675865, 38.898933, 32.749298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426956, 38.696312, 32.510574>,  <38.277611, 38.574741, 32.367340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426956, 38.696312, 32.510574>,  <38.675865, 38.898933, 32.749298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426956, 38.696312, 32.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397773, -0.452026, 0.798404,
		-0.674207, 0.734220, 0.079791,
		-0.622272, -0.506550, -0.596812,
		38.240276, 38.544346, 32.331532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919353, 38.952705, 33.096062>,  <38.675865, 38.898933, 32.749298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919353, 38.952705, 33.096062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911636, 38.635120, 32.852997>,  <37.907005, 38.444569, 32.707157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911636, 38.635120, 32.852997>,  <37.919353, 38.952705, 33.096062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911636, 38.635120, 32.852997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347628, -0.564531, 0.748639,
		-0.937434, 0.225686, -0.265110,
		-0.019295, -0.793959, -0.607666,
		37.905849, 38.396935, 32.670696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212383, 38.575710, 33.044502>,  <37.919353, 38.952705, 33.096062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212383, 38.575710, 33.044502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498711, 38.313225, 32.949009>,  <37.670506, 38.155735, 32.891712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498711, 38.313225, 32.949009>,  <37.212383, 38.575710, 33.044502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498711, 38.313225, 32.949009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311736, -0.606232, 0.731645,
		-0.624845, -0.449298, -0.638514,
		0.715814, -0.656212, -0.238738,
		37.713455, 38.116364, 32.877388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922459, 37.868061, 33.082832>,  <37.212383, 38.575710, 33.044502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922459, 37.868061, 33.082832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318794, 37.814190, 33.078705>,  <37.556595, 37.781868, 33.076229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318794, 37.814190, 33.078705>,  <36.922459, 37.868061, 33.082832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318794, 37.814190, 33.078705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088291, -0.703579, 0.705111,
		-0.102221, -0.697738, -0.709022,
		0.990836, -0.134677, -0.010316,
		37.616043, 37.773788, 33.075611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043041, 37.168446, 32.912109>,  <36.922459, 37.868061, 33.082832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043041, 37.168446, 32.912109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381512, 37.284821, 33.090698>,  <37.584595, 37.354645, 33.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381512, 37.284821, 33.090698>,  <37.043041, 37.168446, 32.912109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381512, 37.284821, 33.090698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024571, -0.815625, 0.578059,
		0.532330, -0.500112, -0.683017,
		0.846180, 0.290936, 0.446470,
		37.635365, 37.372101, 33.224640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474709, 36.523945, 33.016972>,  <37.043041, 37.168446, 32.912109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474709, 36.523945, 33.016972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593365, 36.803608, 33.277184>,  <37.664558, 36.971405, 33.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593365, 36.803608, 33.277184>,  <37.474709, 36.523945, 33.016972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593365, 36.803608, 33.277184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061793, -0.693813, 0.717499,
		0.952989, -0.172638, -0.249012,
		0.296636, 0.699156, 0.650529,
		37.682354, 37.013355, 33.472343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974098, 36.135651, 33.430798>,  <37.474709, 36.523945, 33.016972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974098, 36.135651, 33.430798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919102, 36.450462, 33.671360>,  <37.886105, 36.639351, 33.815697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919102, 36.450462, 33.671360>,  <37.974098, 36.135651, 33.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919102, 36.450462, 33.671360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269777, -0.554460, 0.787270,
		0.953057, 0.270484, -0.136091,
		-0.137487, 0.787028, 0.601402,
		37.877857, 36.686569, 33.851780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589607, 36.161972, 33.857353>,  <37.974098, 36.135651, 33.430798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589607, 36.161972, 33.857353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303478, 36.360199, 34.054424>,  <38.131802, 36.479137, 34.172665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303478, 36.360199, 34.054424>,  <38.589607, 36.161972, 33.857353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303478, 36.360199, 34.054424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320938, -0.393294, 0.861579,
		0.620740, 0.774422, 0.122283,
		-0.715319, 0.495571, 0.492675,
		38.088882, 36.508869, 34.202229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960529, 36.356850, 34.541954>,  <38.589607, 36.161972, 33.857353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960529, 36.356850, 34.541954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564690, 36.372417, 34.597359>,  <38.327187, 36.381760, 34.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564690, 36.372417, 34.597359>,  <38.960529, 36.356850, 34.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564690, 36.372417, 34.597359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109033, -0.425268, 0.898476,
		0.093877, 0.904230, 0.416599,
		-0.989595, 0.038923, 0.138514,
		38.267811, 36.384094, 34.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887993, 36.623447, 35.207188>,  <38.960529, 36.356850, 34.541954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887993, 36.623447, 35.207188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523666, 36.479897, 35.125580>,  <38.305069, 36.393768, 35.076614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523666, 36.479897, 35.125580>,  <38.887993, 36.623447, 35.207188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523666, 36.479897, 35.125580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057416, -0.379281, 0.923499,
		-0.408800, 0.852851, 0.324850,
		-0.910816, -0.358875, -0.204017,
		38.250420, 36.372234, 35.064373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417042, 36.762440, 35.849998>,  <38.887993, 36.623447, 35.207188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417042, 36.762440, 35.849998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229980, 36.469940, 35.651375>,  <38.117744, 36.294441, 35.532200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229980, 36.469940, 35.651375>,  <38.417042, 36.762440, 35.849998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229980, 36.469940, 35.651375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209664, -0.453977, 0.865994,
		-0.858687, 0.509095, 0.058986,
		-0.467651, -0.731250, -0.496563,
		38.089684, 36.250565, 35.502407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754604, 36.598045, 36.199745>,  <38.417042, 36.762440, 35.849998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754604, 36.598045, 36.199745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849995, 36.276760, 35.981396>,  <37.907230, 36.083988, 35.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849995, 36.276760, 35.981396>,  <37.754604, 36.598045, 36.199745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849995, 36.276760, 35.981396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238704, -0.593325, 0.768756,
		-0.941355, -0.053027, -0.333223,
		0.238474, -0.803215, -0.545871,
		37.921535, 36.035797, 35.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249832, 36.145947, 36.281658>,  <37.754604, 36.598045, 36.199745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249832, 36.145947, 36.281658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562252, 35.917282, 36.181133>,  <37.749706, 35.780083, 36.120819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562252, 35.917282, 36.181133>,  <37.249832, 36.145947, 36.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562252, 35.917282, 36.181133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248003, -0.653306, 0.715322,
		-0.573104, -0.496380, -0.652042,
		0.781055, -0.571662, -0.251308,
		37.796570, 35.745785, 36.105740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923080, 35.627689, 36.385937>,  <37.249832, 36.145947, 36.281658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923080, 35.627689, 36.385937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290359, 35.474972, 36.343708>,  <37.510727, 35.383343, 36.318371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290359, 35.474972, 36.343708>,  <36.923080, 35.627689, 36.385937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290359, 35.474972, 36.343708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248421, -0.762595, 0.597274,
		-0.308540, -0.522191, -0.795059,
		0.918199, -0.381792, -0.105568,
		37.565819, 35.360435, 36.312038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784767, 34.951706, 36.240810>,  <36.923080, 35.627689, 36.385937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784767, 34.951706, 36.240810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163559, 34.990799, 36.363239>,  <37.390835, 35.014256, 36.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163559, 34.990799, 36.363239>,  <36.784767, 34.951706, 36.240810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163559, 34.990799, 36.363239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170651, -0.654148, 0.736863,
		0.272230, -0.750026, -0.602787,
		0.946979, 0.097730, 0.306071,
		37.447651, 35.020119, 36.455059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932434, 34.298912, 36.448410>,  <36.784767, 34.951706, 36.240810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932434, 34.298912, 36.448410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250774, 34.482098, 36.606842>,  <37.441780, 34.592010, 36.701900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250774, 34.482098, 36.606842>,  <36.932434, 34.298912, 36.448410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250774, 34.482098, 36.606842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143262, -0.493151, 0.858067,
		0.588294, -0.739640, -0.326867,
		0.795855, 0.457968, 0.396080,
		37.489532, 34.619488, 36.725666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407204, 33.756104, 36.694614>,  <36.932434, 34.298912, 36.448410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407204, 33.756104, 36.694614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439835, 34.098518, 36.898788>,  <37.459415, 34.303967, 37.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439835, 34.098518, 36.898788>,  <37.407204, 33.756104, 36.694614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439835, 34.098518, 36.898788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327700, -0.460625, 0.824886,
		0.941253, -0.234564, 0.242946,
		0.081581, 0.856040, 0.510431,
		37.464310, 34.355331, 37.051918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723270, 33.540375, 37.366013>,  <37.407204, 33.756104, 36.694614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723270, 33.540375, 37.366013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597797, 33.908691, 37.458748>,  <37.522514, 34.129681, 37.514389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597797, 33.908691, 37.458748>,  <37.723270, 33.540375, 37.366013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597797, 33.908691, 37.458748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065254, -0.264490, 0.962178,
		0.947285, 0.286686, 0.143050,
		-0.313678, 0.920791, 0.231840,
		37.503693, 34.184929, 37.528301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285469, 33.808460, 37.943363>,  <37.723270, 33.540375, 37.366013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285469, 33.808460, 37.943363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920319, 33.971714, 37.946819>,  <37.701229, 34.069668, 37.948895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920319, 33.971714, 37.946819>,  <38.285469, 33.808460, 37.943363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920319, 33.971714, 37.946819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217551, -0.504287, 0.835683,
		0.345432, 0.760998, 0.549144,
		-0.912879, 0.408138, 0.008641,
		37.646454, 34.094154, 37.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225956, 34.141323, 38.616123>,  <38.285469, 33.808460, 37.943363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225956, 34.141323, 38.616123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862099, 34.084209, 38.460091>,  <37.643784, 34.049942, 38.366470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862099, 34.084209, 38.460091>,  <38.225956, 34.141323, 38.616123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862099, 34.084209, 38.460091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254871, -0.549673, 0.795550,
		-0.328010, 0.823087, 0.463614,
		-0.909643, -0.142786, -0.390079,
		37.589207, 34.041374, 38.343067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642952, 34.379810, 39.169888>,  <38.225956, 34.141323, 38.616123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642952, 34.379810, 39.169888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523838, 34.091278, 38.919765>,  <37.452370, 33.918159, 38.769691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523838, 34.091278, 38.919765>,  <37.642952, 34.379810, 39.169888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523838, 34.091278, 38.919765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144967, -0.613258, 0.776466,
		-0.943560, 0.321871, 0.078053,
		-0.297789, -0.721327, -0.625307,
		37.434502, 33.874878, 38.732174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476295, 33.857330, 39.629116>,  <37.642952, 34.379810, 39.169888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476295, 33.857330, 39.629116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321980, 33.639133, 39.331497>,  <37.229389, 33.508217, 39.152924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321980, 33.639133, 39.331497>,  <37.476295, 33.857330, 39.629116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321980, 33.639133, 39.331497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422254, -0.612658, 0.668096,
		-0.820287, 0.571921, 0.006020,
		-0.385786, -0.545488, -0.744051,
		37.206245, 33.475487, 39.108280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833546, 33.764915, 39.845093>,  <37.476295, 33.857330, 39.629116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833546, 33.764915, 39.845093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920670, 33.487621, 39.570290>,  <36.972942, 33.321243, 39.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920670, 33.487621, 39.570290>,  <36.833546, 33.764915, 39.845093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920670, 33.487621, 39.570290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484094, -0.687955, 0.540713,
		-0.847474, 0.214806, -0.485435,
		0.217809, -0.693236, -0.687010,
		36.986012, 33.279652, 39.364185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190308, 33.449360, 39.625252>,  <36.833546, 33.764915, 39.845093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190308, 33.449360, 39.625252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514725, 33.218929, 39.584564>,  <36.709377, 33.080673, 39.560150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514725, 33.218929, 39.584564>,  <36.190308, 33.449360, 39.625252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514725, 33.218929, 39.584564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450122, -0.725618, 0.520450,
		-0.373626, -0.376323, -0.847812,
		0.811045, -0.576072, -0.101718,
		36.758038, 33.046108, 39.554050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054897, 33.005436, 40.181957>,  <36.190308, 33.449360, 39.625252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054897, 33.005436, 40.181957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305515, 32.807438, 39.941151>,  <36.455887, 32.688637, 39.796669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305515, 32.807438, 39.941151>,  <36.054897, 33.005436, 40.181957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305515, 32.807438, 39.941151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236073, -0.856664, 0.458690,
		-0.742773, -0.145271, -0.653594,
		0.626544, -0.494999, -0.602012,
		36.493477, 32.658939, 39.760548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745922, 32.452782, 39.774487>,  <36.054897, 33.005436, 40.181957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745922, 32.452782, 39.774487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125542, 32.329006, 39.798309>,  <36.353313, 32.254742, 39.812603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125542, 32.329006, 39.798309>,  <35.745922, 32.452782, 39.774487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125542, 32.329006, 39.798309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298334, -0.821464, 0.485997,
		-0.101461, -0.479005, -0.871929,
		0.949053, -0.309435, 0.059557,
		36.410259, 32.236176, 39.816177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721367, 31.817591, 39.586143>,  <35.745922, 32.452782, 39.774487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721367, 31.817591, 39.586143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057884, 31.845972, 39.800503>,  <36.259796, 31.863001, 39.929119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057884, 31.845972, 39.800503>,  <35.721367, 31.817591, 39.586143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057884, 31.845972, 39.800503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266113, -0.808548, 0.524818,
		0.470533, -0.584137, -0.661349,
		0.841298, 0.070951, 0.535895,
		36.310272, 31.867258, 39.961273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148430, 31.171001, 39.510025>,  <35.721367, 31.817591, 39.586143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148430, 31.171001, 39.510025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200645, 31.358120, 39.859684>,  <36.231976, 31.470390, 40.069477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200645, 31.358120, 39.859684>,  <36.148430, 31.171001, 39.510025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200645, 31.358120, 39.859684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274660, -0.830117, 0.485250,
		0.952639, -0.303436, 0.020124,
		0.130537, 0.467796, 0.874144,
		36.239807, 31.498459, 40.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675083, 30.836918, 39.988308>,  <36.148430, 31.171001, 39.510025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675083, 30.836918, 39.988308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393925, 31.019367, 40.206623>,  <36.225231, 31.128838, 40.337612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393925, 31.019367, 40.206623>,  <36.675083, 30.836918, 39.988308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393925, 31.019367, 40.206623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127404, -0.835647, 0.534287,
		0.699788, 0.306014, 0.645486,
		-0.702897, 0.456125, 0.545789,
		36.183056, 31.156204, 40.370361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832531, 30.599546, 40.598995>,  <36.675083, 30.836918, 39.988308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832531, 30.599546, 40.598995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467815, 30.746923, 40.671532>,  <36.248985, 30.835350, 40.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467815, 30.746923, 40.671532>,  <36.832531, 30.599546, 40.598995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467815, 30.746923, 40.671532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227565, -0.820932, 0.523722,
		0.341829, 0.436259, 0.832364,
		-0.911793, 0.368441, 0.181342,
		36.194279, 30.857456, 40.725933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763084, 30.578363, 41.310501>,  <36.832531, 30.599546, 40.598995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763084, 30.578363, 41.310501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384289, 30.604347, 41.184643>,  <36.157013, 30.619938, 41.109127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384289, 30.604347, 41.184643>,  <36.763084, 30.578363, 41.310501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384289, 30.604347, 41.184643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255522, -0.745937, 0.615050,
		-0.194751, 0.662841, 0.722989,
		-0.946985, 0.064959, -0.314642,
		36.100193, 30.623835, 41.090252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298313, 30.780128, 41.844112>,  <36.763084, 30.578363, 41.310501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298313, 30.780128, 41.844112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118519, 30.540890, 41.578709>,  <36.010643, 30.397346, 41.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118519, 30.540890, 41.578709>,  <36.298313, 30.780128, 41.844112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118519, 30.540890, 41.578709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100512, -0.704195, 0.702856,
		-0.887616, 0.382613, 0.256408,
		-0.449483, -0.598095, -0.663512,
		35.983673, 30.361462, 41.379654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670200, 30.464905, 42.113567>,  <36.298313, 30.780128, 41.844112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670200, 30.464905, 42.113567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771011, 30.213285, 41.819416>,  <35.831497, 30.062313, 41.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771011, 30.213285, 41.819416>,  <35.670200, 30.464905, 42.113567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771011, 30.213285, 41.819416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251088, -0.776389, 0.578079,
		-0.934579, 0.038954, -0.353616,
		0.252025, -0.629049, -0.735378,
		35.846619, 30.024570, 41.598804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808052, 29.721535, 42.161205>,  <35.670200, 30.464905, 42.113567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808052, 29.721535, 42.161205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882782, 29.856941, 42.530094>,  <35.927620, 29.938185, 42.751427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882782, 29.856941, 42.530094>,  <35.808052, 29.721535, 42.161205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882782, 29.856941, 42.530094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055744, -0.940896, 0.334076,
		0.980809, -0.011006, -0.194657,
		0.186829, 0.338516, 0.922226,
		35.938831, 29.958496, 42.806763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091267, 29.018045, 41.839291>,  <35.808052, 29.721535, 42.161205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091267, 29.018045, 41.839291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787518, 29.108698, 41.595325>,  <35.605267, 29.163090, 41.448948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787518, 29.108698, 41.595325>,  <36.091267, 29.018045, 41.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787518, 29.108698, 41.595325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343640, 0.935673, -0.080171,
		0.552507, -0.270469, -0.788405,
		-0.759373, 0.226632, -0.609910,
		35.559704, 29.176687, 41.412354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267277, 29.439451, 41.177292>,  <36.091267, 29.018045, 41.839291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267277, 29.439451, 41.177292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878551, 29.503225, 41.246765>,  <35.645317, 29.541489, 41.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878551, 29.503225, 41.246765>,  <36.267277, 29.439451, 41.177292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878551, 29.503225, 41.246765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117395, 0.966093, -0.229962,
		-0.204462, -0.203089, -0.957575,
		-0.971810, 0.159433, 0.173688,
		35.587009, 29.551056, 41.298870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878979, 29.662241, 40.539955>,  <36.267277, 29.439451, 41.177292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878979, 29.662241, 40.539955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719574, 29.800430, 40.879799>,  <35.623932, 29.883345, 41.083706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719574, 29.800430, 40.879799>,  <35.878979, 29.662241, 40.539955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719574, 29.800430, 40.879799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081203, 0.909417, -0.407881,
		-0.913560, -0.231537, -0.334362,
		-0.398514, 0.345473, 0.849609,
		35.600021, 29.904072, 41.134682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177330, 29.995926, 40.437401>,  <35.878979, 29.662241, 40.539955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177330, 29.995926, 40.437401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350552, 30.124697, 40.774166>,  <35.454487, 30.201960, 40.976227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350552, 30.124697, 40.774166>,  <35.177330, 29.995926, 40.437401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350552, 30.124697, 40.774166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083739, 0.915637, -0.393187,
		-0.897468, 0.240774, 0.369565,
		0.433057, 0.321926, 0.841918,
		35.480469, 30.221275, 41.026741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933311, 30.645298, 40.493732>,  <35.177330, 29.995926, 40.437401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933311, 30.645298, 40.493732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269516, 30.650169, 40.710396>,  <35.471237, 30.653091, 40.840393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269516, 30.650169, 40.710396>,  <34.933311, 30.645298, 40.493732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269516, 30.650169, 40.710396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198032, 0.923669, -0.328053,
		-0.504311, 0.382998, 0.773940,
		0.840508, 0.012176, 0.541663,
		35.521667, 30.653822, 40.872894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965801, 31.317852, 40.905109>,  <34.933311, 30.645298, 40.493732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965801, 31.317852, 40.905109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331017, 31.170599, 40.834858>,  <35.550144, 31.082247, 40.792709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331017, 31.170599, 40.834858>,  <34.965801, 31.317852, 40.905109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331017, 31.170599, 40.834858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309202, 0.905509, -0.290597,
		0.266008, 0.211022, 0.940590,
		0.913035, -0.368134, -0.175625,
		35.604927, 31.060160, 40.782169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347717, 31.909307, 40.968716>,  <34.965801, 31.317852, 40.905109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347717, 31.909307, 40.968716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601055, 31.655918, 40.790916>,  <35.753059, 31.503885, 40.684235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601055, 31.655918, 40.790916>,  <35.347717, 31.909307, 40.968716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601055, 31.655918, 40.790916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453488, 0.769247, -0.450119,
		0.627070, 0.083506, 0.774474,
		0.633350, -0.633471, -0.444502,
		35.791061, 31.465878, 40.657566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087418, 31.980509, 40.690071>,  <35.347717, 31.909307, 40.968716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087418, 31.980509, 40.690071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231781, 31.607502, 40.685139>,  <36.318401, 31.383698, 40.682178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231781, 31.607502, 40.685139>,  <36.087418, 31.980509, 40.690071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231781, 31.607502, 40.685139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585725, 0.236939, -0.775104,
		0.725719, 0.272525, 0.631713,
		0.360913, -0.932518, -0.012327,
		36.340054, 31.327747, 40.681442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746555, 32.020889, 41.080536>,  <36.087418, 31.980509, 40.690071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746555, 32.020889, 41.080536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607189, 31.809429, 40.770920>,  <36.523567, 31.682554, 40.585152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607189, 31.809429, 40.770920>,  <36.746555, 32.020889, 41.080536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607189, 31.809429, 40.770920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554155, 0.549842, -0.624968,
		0.755987, -0.646689, 0.101377,
		-0.348419, -0.528646, -0.774039,
		36.502663, 31.650835, 40.538708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361080, 31.860796, 40.721436>,  <36.746555, 32.020889, 41.080536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361080, 31.860796, 40.721436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034946, 31.871260, 40.490074>,  <36.839268, 31.877539, 40.351257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034946, 31.871260, 40.490074>,  <37.361080, 31.860796, 40.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034946, 31.871260, 40.490074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513186, 0.495210, -0.701004,
		0.268094, -0.868379, -0.417185,
		-0.815331, 0.026159, -0.578403,
		36.790348, 31.879107, 40.316555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634022, 31.896320, 40.068668>,  <37.361080, 31.860796, 40.721436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634022, 31.896320, 40.068668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255798, 32.001804, 39.992386>,  <37.028862, 32.065094, 39.946617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255798, 32.001804, 39.992386>,  <37.634022, 31.896320, 40.068668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255798, 32.001804, 39.992386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312256, 0.570081, -0.759937,
		-0.091687, -0.778117, -0.621392,
		-0.945563, 0.263710, -0.190702,
		36.972130, 32.080917, 39.935177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464409, 31.866138, 39.413517>,  <37.634022, 31.896320, 40.068668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464409, 31.866138, 39.413517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213764, 32.154469, 39.532024>,  <37.063377, 32.327465, 39.603127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213764, 32.154469, 39.532024>,  <37.464409, 31.866138, 39.413517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213764, 32.154469, 39.532024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206454, 0.520104, -0.828775,
		-0.751492, -0.458152, -0.474718,
		-0.626608, 0.720825, 0.296267,
		37.025784, 32.370716, 39.620903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685848, 32.396160, 38.971203>,  <37.464409, 31.866138, 39.413517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685848, 32.396160, 38.971203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339909, 32.523457, 39.126514>,  <37.132343, 32.599834, 39.219700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339909, 32.523457, 39.126514>,  <37.685848, 32.396160, 38.971203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339909, 32.523457, 39.126514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018140, 0.792717, -0.609320,
		-0.501707, -0.519925, -0.691353,
		-0.864848, 0.318241, 0.388280,
		37.080456, 32.618927, 39.243000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164841, 32.402737, 38.383377>,  <37.685848, 32.396160, 38.971203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164841, 32.402737, 38.383377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082684, 32.658146, 38.680054>,  <37.033390, 32.811390, 38.858059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082684, 32.658146, 38.680054>,  <37.164841, 32.402737, 38.383377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082684, 32.658146, 38.680054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099217, 0.740358, -0.664850,
		-0.973638, -0.210142, -0.088710,
		-0.205390, 0.638521, 0.741691,
		37.021065, 32.849701, 38.902561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641747, 32.873600, 38.113464>,  <37.164841, 32.402737, 38.383377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641747, 32.873600, 38.113464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848274, 33.037323, 38.414368>,  <36.972191, 33.135555, 38.594910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848274, 33.037323, 38.414368>,  <36.641747, 32.873600, 38.113464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848274, 33.037323, 38.414368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031043, 0.886760, -0.461186,
		-0.855835, 0.214766, 0.470555,
		0.516317, 0.409307, 0.752254,
		37.003170, 33.160114, 38.640045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309605, 33.474007, 38.453281>,  <36.641747, 32.873600, 38.113464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309605, 33.474007, 38.453281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707016, 33.516190, 38.470188>,  <36.945461, 33.541500, 38.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707016, 33.516190, 38.470188>,  <36.309605, 33.474007, 38.453281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707016, 33.516190, 38.470188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059338, 0.798908, -0.598519,
		-0.096889, 0.592135, 0.799993,
		0.993525, 0.105461, 0.042269,
		37.005074, 33.547829, 38.482868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436203, 33.953964, 37.878780>,  <36.309605, 33.474007, 38.453281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436203, 33.953964, 37.878780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791008, 34.015003, 38.053104>,  <37.003891, 34.051624, 38.157700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791008, 34.015003, 38.053104>,  <36.436203, 33.953964, 37.878780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791008, 34.015003, 38.053104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243683, 0.646988, -0.722513,
		-0.392212, 0.747075, 0.536701,
		0.887011, 0.152593, 0.435806,
		37.057110, 34.060780, 38.183846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516129, 34.728546, 38.055672>,  <36.436203, 33.953964, 37.878780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516129, 34.728546, 38.055672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863106, 34.535160, 38.008682>,  <37.071293, 34.419128, 37.980488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863106, 34.535160, 38.008682>,  <36.516129, 34.728546, 38.055672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863106, 34.535160, 38.008682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249262, 0.626645, -0.738366,
		0.430588, 0.611211, 0.664090,
		0.867446, -0.483464, -0.117475,
		37.123341, 34.390121, 37.973438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973282, 35.221184, 38.055523>,  <36.516129, 34.728546, 38.055672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973282, 35.221184, 38.055523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156727, 34.916557, 37.872356>,  <37.266792, 34.733780, 37.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156727, 34.916557, 37.872356>,  <36.973282, 35.221184, 38.055523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156727, 34.916557, 37.872356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339674, 0.626410, -0.701593,
		0.821155, 0.166217, 0.545964,
		0.458614, -0.761566, -0.457920,
		37.294312, 34.688087, 37.734982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680466, 35.441097, 37.765591>,  <36.973282, 35.221184, 38.055523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680466, 35.441097, 37.765591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644485, 35.107021, 37.548569>,  <37.622898, 34.906574, 37.418354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644485, 35.107021, 37.548569>,  <37.680466, 35.441097, 37.765591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644485, 35.107021, 37.548569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509101, 0.429655, -0.745796,
		0.855994, -0.343299, 0.386550,
		-0.089948, -0.835190, -0.542556,
		37.617500, 34.856464, 37.385803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246864, 35.362942, 37.487648>,  <37.680466, 35.441097, 37.765591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246864, 35.362942, 37.487648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032188, 35.142315, 37.232231>,  <37.903381, 35.009937, 37.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032188, 35.142315, 37.232231>,  <38.246864, 35.362942, 37.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032188, 35.142315, 37.232231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435452, 0.467144, -0.769518,
		0.722733, -0.691048, -0.010531,
		-0.536693, -0.551570, -0.638538,
		37.871181, 34.976845, 37.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661167, 35.093254, 37.014980>,  <38.246864, 35.362942, 37.487648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661167, 35.093254, 37.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307014, 35.073662, 36.830074>,  <38.094521, 35.061905, 36.719131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307014, 35.073662, 36.830074>,  <38.661167, 35.093254, 37.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307014, 35.073662, 36.830074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360149, 0.556464, -0.748760,
		0.293913, -0.829427, -0.475043,
		-0.885386, -0.048984, -0.462269,
		38.041397, 35.058968, 36.691395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872250, 35.083763, 36.348061>,  <38.661167, 35.093254, 37.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872250, 35.083763, 36.348061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477692, 35.132225, 36.303616>,  <38.240955, 35.161301, 36.276951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477692, 35.132225, 36.303616>,  <38.872250, 35.083763, 36.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477692, 35.132225, 36.303616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159316, 0.537980, -0.827766,
		-0.040512, -0.834206, -0.549963,
		-0.986396, 0.121152, -0.111108,
		38.181774, 35.168571, 36.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719254, 34.875191, 35.668716>,  <38.872250, 35.083763, 36.348061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719254, 34.875191, 35.668716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448410, 35.140495, 35.796215>,  <38.285904, 35.299679, 35.872715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448410, 35.140495, 35.796215>,  <38.719254, 34.875191, 35.668716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448410, 35.140495, 35.796215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218859, 0.595064, -0.773304,
		-0.702581, -0.453852, -0.548087,
		-0.677112, 0.663262, 0.318751,
		38.245277, 35.339474, 35.891842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322323, 35.268867, 35.308048>,  <38.719254, 34.875191, 35.668716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322323, 35.268867, 35.308048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466606, 35.192917, 34.942791>,  <39.553177, 35.147346, 34.723637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466606, 35.192917, 34.942791>,  <39.322323, 35.268867, 35.308048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466606, 35.192917, 34.942791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922139, 0.219367, 0.318650,
		0.139808, -0.956987, 0.254225,
		0.360713, -0.189881, -0.913144,
		39.574821, 35.135952, 34.668846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004871, 34.907948, 35.329063>,  <39.322323, 35.268867, 35.308048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004871, 34.907948, 35.329063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982697, 35.069637, 34.963871>,  <39.969391, 35.166653, 34.744755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982697, 35.069637, 34.963871>,  <40.004871, 34.907948, 35.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982697, 35.069637, 34.963871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939616, 0.330392, 0.089234,
		0.337711, -0.852901, -0.398135,
		-0.055433, 0.404229, -0.912976,
		39.966068, 35.190907, 34.689980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565926, 34.634842, 34.938744>,  <40.004871, 34.907948, 35.329063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565926, 34.634842, 34.938744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489246, 35.008453, 34.818180>,  <40.443237, 35.232620, 34.745842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489246, 35.008453, 34.818180>,  <40.565926, 34.634842, 34.938744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489246, 35.008453, 34.818180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981444, 0.181012, -0.063267,
		-0.004535, -0.307943, -0.951394,
		-0.191696, 0.934026, -0.301408,
		40.431736, 35.288662, 34.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989258, 34.695709, 34.400433>,  <40.565926, 34.634842, 34.938744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989258, 34.695709, 34.400433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900673, 35.052002, 34.559200>,  <40.847523, 35.265778, 34.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900673, 35.052002, 34.559200>,  <40.989258, 34.695709, 34.400433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900673, 35.052002, 34.559200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974880, 0.212129, 0.067897,
		-0.023720, 0.401988, -0.915338,
		-0.221464, 0.890734, 0.396922,
		40.834232, 35.319221, 34.678276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092556, 35.304733, 33.842541>,  <40.989258, 34.695709, 34.400433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092556, 35.304733, 33.842541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135319, 35.377045, 34.233620>,  <41.160976, 35.420429, 34.468266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135319, 35.377045, 34.233620>,  <41.092556, 35.304733, 33.842541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135319, 35.377045, 34.233620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991922, -0.086909, -0.092395,
		0.068268, 0.979677, -0.188608,
		0.106909, 0.180777, 0.977696,
		41.167393, 35.431278, 34.526928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742935, 35.736073, 33.754936>,  <41.092556, 35.304733, 33.842541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742935, 35.736073, 33.754936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697693, 35.552704, 34.107540>,  <41.670547, 35.442684, 34.319103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697693, 35.552704, 34.107540>,  <41.742935, 35.736073, 33.754936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697693, 35.552704, 34.107540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990504, 0.017763, 0.136328,
		-0.078154, 0.888557, 0.452061,
		-0.113105, -0.458423, 0.881507,
		41.663761, 35.415176, 34.371994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065754, 36.122143, 34.317436>,  <41.742935, 35.736073, 33.754936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065754, 36.122143, 34.317436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086723, 35.729900, 34.392979>,  <42.099304, 35.494556, 34.438305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086723, 35.729900, 34.392979>,  <42.065754, 36.122143, 34.317436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086723, 35.729900, 34.392979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998284, 0.056400, 0.015751,
		-0.026097, 0.187706, 0.981878,
		0.052422, -0.980604, 0.188856,
		42.102451, 35.435719, 34.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271206, 35.988865, 35.011475>,  <42.065754, 36.122143, 34.317436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271206, 35.988865, 35.011475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378078, 35.710884, 34.744446>,  <42.442204, 35.544098, 34.584229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378078, 35.710884, 34.744446>,  <42.271206, 35.988865, 35.011475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378078, 35.710884, 34.744446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953491, 0.290956, 0.078732,
		0.139520, -0.657565, 0.740367,
		0.267186, -0.694948, -0.667577,
		42.458233, 35.502399, 34.544174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933681, 35.845295, 35.378918>,  <42.271206, 35.988865, 35.011475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933681, 35.845295, 35.378918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937126, 35.661587, 35.023617>,  <42.939194, 35.551361, 34.810436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937126, 35.661587, 35.023617>,  <42.933681, 35.845295, 35.378918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937126, 35.661587, 35.023617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999639, 0.026549, -0.004033,
		0.025434, -0.887901, 0.459331,
		0.008613, -0.459268, -0.888256,
		42.939709, 35.523808, 34.757141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110512, 35.113056, 35.470829>,  <42.933681, 35.845295, 35.378918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110512, 35.113056, 35.470829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228268, 35.236168, 35.108921>,  <43.298920, 35.310036, 34.891777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228268, 35.236168, 35.108921>,  <43.110512, 35.113056, 35.470829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228268, 35.236168, 35.108921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935856, -0.284700, 0.207654,
		-0.193676, -0.907864, -0.371850,
		0.294387, 0.307781, -0.904769,
		43.316586, 35.328503, 34.837490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651882, 34.675682, 35.402332>,  <43.110512, 35.113056, 35.470829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651882, 34.675682, 35.402332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642017, 34.912075, 35.079811>,  <43.636097, 35.053909, 34.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642017, 34.912075, 35.079811>,  <43.651882, 34.675682, 35.402332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642017, 34.912075, 35.079811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967760, -0.188121, -0.167485,
		-0.250664, -0.784442, -0.567291,
		-0.024663, 0.590984, -0.806306,
		43.634617, 35.089371, 34.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791233, 34.336067, 34.747112>,  <43.651882, 34.675682, 35.402332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791233, 34.336067, 34.747112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906837, 34.718544, 34.728451>,  <43.976200, 34.948029, 34.717255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906837, 34.718544, 34.728451>,  <43.791233, 34.336067, 34.747112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906837, 34.718544, 34.728451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954532, -0.291547, -0.062202,
		-0.073078, -0.026555, -0.996973,
		0.289013, 0.956188, -0.046653,
		43.993542, 35.005402, 34.714455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488873, 34.240017, 34.438969>,  <43.791233, 34.336067, 34.747112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488873, 34.240017, 34.438969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496758, 34.634277, 34.506035>,  <44.501488, 34.870834, 34.546276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496758, 34.634277, 34.506035>,  <44.488873, 34.240017, 34.438969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496758, 34.634277, 34.506035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995433, -0.035015, 0.088814,
		0.093410, 0.165148, -0.981835,
		0.019711, 0.985647, 0.167664,
		44.502670, 34.929970, 34.556335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806545, 34.524426, 33.894112>,  <44.488873, 34.240017, 34.438969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806545, 34.524426, 33.894112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870346, 34.673645, 34.259712>,  <44.908627, 34.763176, 34.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870346, 34.673645, 34.259712>,  <44.806545, 34.524426, 33.894112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870346, 34.673645, 34.259712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982464, -0.150548, -0.110001,
		0.096565, 0.915516, -0.390519,
		0.159500, 0.373048, 0.913999,
		44.918198, 34.785561, 34.533913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369888, 35.132717, 33.909081>,  <44.806545, 34.524426, 33.894112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369888, 35.132717, 33.909081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343796, 34.889893, 34.225872>,  <45.328140, 34.744198, 34.415947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343796, 34.889893, 34.225872>,  <45.369888, 35.132717, 33.909081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343796, 34.889893, 34.225872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993048, 0.038440, 0.111256,
		-0.097982, 0.793727, 0.600330,
		-0.065230, -0.607058, 0.791976,
		45.324226, 34.707775, 34.463467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787281, 35.304729, 34.449627>,  <45.369888, 35.132717, 33.909081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787281, 35.304729, 34.449627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729206, 34.932526, 34.584133>,  <45.694363, 34.709202, 34.664837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729206, 34.932526, 34.584133>,  <45.787281, 35.304729, 34.449627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729206, 34.932526, 34.584133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930963, -0.013403, 0.364866,
		-0.335004, 0.366024, 0.868216,
		-0.145187, -0.930509, 0.336265,
		45.685650, 34.653374, 34.685013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752449, 35.172363, 35.151497>,  <45.787281, 35.304729, 34.449627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752449, 35.172363, 35.151497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918194, 34.858082, 34.967770>,  <46.017639, 34.669514, 34.857533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918194, 34.858082, 34.967770>,  <45.752449, 35.172363, 35.151497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918194, 34.858082, 34.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892166, 0.250939, 0.375592,
		-0.179845, -0.565416, 0.804960,
		0.414362, -0.785706, -0.459314,
		46.042503, 34.622372, 34.829975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056698, 34.695049, 35.643116>,  <45.752449, 35.172363, 35.151497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056698, 34.695049, 35.643116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255615, 34.730816, 35.297932>,  <46.374966, 34.752277, 35.090820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255615, 34.730816, 35.297932>,  <46.056698, 34.695049, 35.643116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255615, 34.730816, 35.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706690, 0.535256, 0.462699,
		0.503278, -0.839944, 0.202991,
		0.497293, 0.089415, -0.862963,
		46.404804, 34.757641, 35.039043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754440, 34.391068, 35.577686>,  <46.056698, 34.695049, 35.643116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754440, 34.391068, 35.577686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773651, 34.665787, 35.287582>,  <46.785179, 34.830620, 35.113522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773651, 34.665787, 35.287582>,  <46.754440, 34.391068, 35.577686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773651, 34.665787, 35.287582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824117, 0.383020, 0.417286,
		0.564380, -0.617739, -0.547608,
		0.048029, 0.686800, -0.725257,
		46.788059, 34.871826, 35.070004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491215, 34.467541, 35.309952>,  <46.754440, 34.391068, 35.577686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491215, 34.467541, 35.309952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285168, 34.804806, 35.248333>,  <47.161541, 35.007164, 35.211361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285168, 34.804806, 35.248333>,  <47.491215, 34.467541, 35.309952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285168, 34.804806, 35.248333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800123, 0.537478, 0.266309,
		0.307339, 0.013923, -0.951498,
		-0.515117, 0.843163, -0.154048,
		47.130634, 35.057755, 35.202118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894276, 34.785248, 34.844128>,  <47.491215, 34.467541, 35.309952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894276, 34.785248, 34.844128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674450, 34.994987, 35.104294>,  <47.542553, 35.120831, 35.260391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674450, 34.994987, 35.104294>,  <47.894276, 34.785248, 34.844128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674450, 34.994987, 35.104294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827555, 0.448437, 0.337723,
		-0.114586, 0.723854, -0.680371,
		-0.549566, 0.524347, 0.650414,
		47.509579, 35.152290, 35.299419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.905556, 35.362659, 25.619532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571365, 35.581566, 25.599632>,  <35.370850, 35.712910, 25.587692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.571365, 35.581566, 25.599632>,  <35.905556, 35.362659, 25.619532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571365, 35.581566, 25.599632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145124, -0.132421, 0.980512,
		0.530014, 0.826416, 0.190056,
		-0.835478, 0.547267, -0.049748,
		35.320721, 35.745747, 25.584707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017056, 35.816563, 26.148859>,  <35.905556, 35.362659, 25.619532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017056, 35.816563, 26.148859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629128, 35.757519, 26.071228>,  <35.396370, 35.722092, 26.024649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629128, 35.757519, 26.071228>,  <36.017056, 35.816563, 26.148859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629128, 35.757519, 26.071228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180548, -0.100238, 0.978445,
		-0.163879, 0.983954, 0.070563,
		-0.969817, -0.147607, -0.194078,
		35.338181, 35.713238, 26.013004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659653, 36.105343, 26.634089>,  <36.017056, 35.816563, 26.148859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659653, 36.105343, 26.634089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312225, 35.933964, 26.534466>,  <35.103771, 35.831135, 26.474693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312225, 35.933964, 26.534466>,  <35.659653, 36.105343, 26.634089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312225, 35.933964, 26.534466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268996, -0.014491, 0.963032,
		-0.416218, 0.903450, -0.102664,
		-0.868564, -0.428448, -0.249056,
		35.051655, 35.805431, 26.459749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192085, 36.372410, 27.077419>,  <35.659653, 36.105343, 26.634089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192085, 36.372410, 27.077419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999954, 36.036366, 26.976618>,  <34.884678, 35.834740, 26.916138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999954, 36.036366, 26.976618>,  <35.192085, 36.372410, 27.077419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999954, 36.036366, 26.976618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246880, -0.146199, 0.957954,
		-0.841628, 0.522344, -0.137184,
		-0.480325, -0.840109, -0.252001,
		34.855858, 35.784332, 26.901018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609669, 36.378082, 27.540571>,  <35.192085, 36.372410, 27.077419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609669, 36.378082, 27.540571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607941, 36.003593, 27.400021>,  <34.606903, 35.778900, 27.315691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607941, 36.003593, 27.400021>,  <34.609669, 36.378082, 27.540571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607941, 36.003593, 27.400021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352687, -0.327371, 0.876607,
		-0.935731, 0.127716, -0.328779,
		-0.004324, -0.936225, -0.351375,
		34.606644, 35.722725, 27.294607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899101, 36.075886, 27.667278>,  <34.609669, 36.378082, 27.540571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899101, 36.075886, 27.667278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.172844, 35.785637, 27.638622>,  <34.337090, 35.611488, 27.621429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.172844, 35.785637, 27.638622>,  <33.899101, 36.075886, 27.667278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172844, 35.785637, 27.638622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197250, -0.278826, 0.939866,
		-0.701959, -0.629074, -0.333945,
		0.684358, -0.725618, -0.071640,
		34.378151, 35.567951, 27.617130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616940, 35.463299, 28.071249>,  <33.899101, 36.075886, 27.667278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616940, 35.463299, 28.071249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.013329, 35.412918, 28.052885>,  <34.251163, 35.382690, 28.041866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.013329, 35.412918, 28.052885>,  <33.616940, 35.463299, 28.071249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013329, 35.412918, 28.052885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000792, -0.336960, 0.941519,
		-0.134057, -0.933056, -0.333818,
		0.990973, -0.125953, -0.045911,
		34.310619, 35.375134, 28.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748112, 34.785126, 28.295197>,  <33.616940, 35.463299, 28.071249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748112, 34.785126, 28.295197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.101231, 34.959179, 28.365995>,  <34.313103, 35.063610, 28.408474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.101231, 34.959179, 28.365995>,  <33.748112, 34.785126, 28.295197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101231, 34.959179, 28.365995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094635, -0.533799, 0.840300,
		0.460120, -0.725066, -0.512415,
		0.882799, 0.435131, 0.176995,
		34.366070, 35.089718, 28.419094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312958, 34.259876, 28.519503>,  <33.748112, 34.785126, 28.295197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312958, 34.259876, 28.519503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406887, 34.618031, 28.670839>,  <34.463245, 34.832924, 28.761641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406887, 34.618031, 28.670839>,  <34.312958, 34.259876, 28.519503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406887, 34.618031, 28.670839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186437, -0.423484, 0.886512,
		0.953992, -0.137635, -0.266376,
		0.234821, 0.895387, 0.378340,
		34.477333, 34.886646, 28.784342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914806, 34.114880, 29.051716>,  <34.312958, 34.259876, 28.519503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914806, 34.114880, 29.051716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816227, 34.491711, 29.142710>,  <34.757080, 34.717808, 29.197306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816227, 34.491711, 29.142710>,  <34.914806, 34.114880, 29.051716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816227, 34.491711, 29.142710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361505, -0.128424, 0.923483,
		0.899208, 0.309832, -0.308916,
		-0.246452, 0.942078, 0.227485,
		34.742290, 34.774334, 29.210955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501003, 34.364422, 29.452145>,  <34.914806, 34.114880, 29.051716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501003, 34.364422, 29.452145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189919, 34.605289, 29.524319>,  <35.003269, 34.749809, 29.567623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189919, 34.605289, 29.524319>,  <35.501003, 34.364422, 29.452145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189919, 34.605289, 29.524319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285813, 0.083070, 0.954678,
		0.559889, 0.794035, -0.236712,
		-0.777712, 0.602169, 0.180436,
		34.956604, 34.785938, 29.578449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759033, 35.003658, 29.738621>,  <35.501003, 34.364422, 29.452145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759033, 35.003658, 29.738621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381134, 34.960564, 29.862461>,  <35.154396, 34.934708, 29.936766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381134, 34.960564, 29.862461>,  <35.759033, 35.003658, 29.738621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381134, 34.960564, 29.862461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258796, 0.334565, 0.906140,
		-0.201206, 0.936194, -0.288197,
		-0.944744, -0.107737, 0.309600,
		35.097710, 34.928242, 29.955341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725002, 35.476391, 30.162422>,  <35.759033, 35.003658, 29.738621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725002, 35.476391, 30.162422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407967, 35.266071, 30.285931>,  <35.217747, 35.139881, 30.360037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407967, 35.266071, 30.285931>,  <35.725002, 35.476391, 30.162422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407967, 35.266071, 30.285931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180847, 0.280896, 0.942545,
		-0.582323, 0.802890, -0.127546,
		-0.792587, -0.525800, 0.308773,
		35.170189, 35.108330, 30.378563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445038, 35.808945, 30.712675>,  <35.725002, 35.476391, 30.162422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445038, 35.808945, 30.712675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275826, 35.447876, 30.744251>,  <35.174297, 35.231236, 30.763197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275826, 35.447876, 30.744251>,  <35.445038, 35.808945, 30.712675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275826, 35.447876, 30.744251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120695, 0.030208, 0.992230,
		-0.898040, 0.429274, 0.096169,
		-0.423034, -0.902669, 0.078939,
		35.148914, 35.177074, 30.767933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953011, 35.782116, 31.324726>,  <35.445038, 35.808945, 30.712675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953011, 35.782116, 31.324726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007767, 35.389290, 31.272865>,  <35.040619, 35.153595, 31.241749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007767, 35.389290, 31.272865>,  <34.953011, 35.782116, 31.324726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007767, 35.389290, 31.272865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109615, -0.115062, 0.987292,
		-0.984503, -0.149363, 0.091898,
		0.136891, -0.982065, -0.129652,
		35.048836, 35.094669, 31.233971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579380, 35.519604, 31.848928>,  <34.953011, 35.782116, 31.324726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579380, 35.519604, 31.848928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861828, 35.262787, 31.729475>,  <35.031296, 35.108696, 31.657803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861828, 35.262787, 31.729475>,  <34.579380, 35.519604, 31.848928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861828, 35.262787, 31.729475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219343, -0.202673, 0.954365,
		-0.673265, -0.739398, -0.002284,
		0.706119, -0.642039, -0.298634,
		35.073662, 35.070175, 31.639885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520973, 35.008926, 32.384403>,  <34.579380, 35.519604, 31.848928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520973, 35.008926, 32.384403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860252, 34.894238, 32.206253>,  <35.063820, 34.825424, 32.099361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860252, 34.894238, 32.206253>,  <34.520973, 35.008926, 32.384403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860252, 34.894238, 32.206253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374398, -0.270262, 0.887009,
		-0.374691, -0.919103, -0.121887,
		0.848194, -0.286720, -0.445375,
		35.114712, 34.808224, 32.072639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570950, 34.363045, 32.599792>,  <34.520973, 35.008926, 32.384403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570950, 34.363045, 32.599792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934620, 34.503979, 32.511009>,  <35.152821, 34.588539, 32.457737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.934620, 34.503979, 32.511009>,  <34.570950, 34.363045, 32.599792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934620, 34.503979, 32.511009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348234, -0.351017, 0.869206,
		0.228339, -0.867553, -0.441830,
		0.909172, 0.352334, -0.221961,
		35.207371, 34.609680, 32.444420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982712, 33.898800, 32.660347>,  <34.570950, 34.363045, 32.599792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982712, 33.898800, 32.660347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223366, 34.215889, 32.699566>,  <35.367760, 34.406143, 32.723099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223366, 34.215889, 32.699566>,  <34.982712, 33.898800, 32.660347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223366, 34.215889, 32.699566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268874, -0.316577, 0.909662,
		0.752155, -0.520924, -0.403609,
		0.601639, 0.792727, 0.098052,
		35.403858, 34.453709, 32.728981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685535, 33.637390, 32.900185>,  <34.982712, 33.898800, 32.660347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685535, 33.637390, 32.900185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657822, 34.021896, 33.006893>,  <35.641193, 34.252602, 33.070919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657822, 34.021896, 33.006893>,  <35.685535, 33.637390, 32.900185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657822, 34.021896, 33.006893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263176, -0.240334, 0.934333,
		0.962257, 0.134940, -0.236332,
		-0.069281, 0.961265, 0.266776,
		35.637039, 34.310276, 33.086926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342644, 33.798882, 33.236923>,  <35.685535, 33.637390, 32.900185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342644, 33.798882, 33.236923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082191, 34.074348, 33.364525>,  <35.925919, 34.239628, 33.441086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082191, 34.074348, 33.364525>,  <36.342644, 33.798882, 33.236923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082191, 34.074348, 33.364525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244008, -0.208051, 0.947193,
		0.718672, 0.694586, -0.032573,
		-0.651130, 0.688669, 0.319005,
		35.886852, 34.280949, 33.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655663, 34.330006, 33.677464>,  <36.342644, 33.798882, 33.236923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655663, 34.330006, 33.677464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282764, 34.208939, 33.756771>,  <36.059025, 34.136299, 33.804356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282764, 34.208939, 33.756771>,  <36.655663, 34.330006, 33.677464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282764, 34.208939, 33.756771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342637, -0.562405, 0.752530,
		-0.116260, 0.769477, 0.628004,
		-0.932247, -0.302666, 0.198266,
		36.003090, 34.118137, 33.816250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412983, 34.277981, 33.660851>,  <36.655663, 34.330006, 33.677464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412983, 34.277981, 33.660851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799519, 34.177311, 33.682209>,  <38.031441, 34.116909, 33.695023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799519, 34.177311, 33.682209>,  <37.412983, 34.277981, 33.660851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799519, 34.177311, 33.682209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087642, 0.126883, -0.988038,
		0.241890, 0.959458, 0.144669,
		0.966337, -0.251676, 0.053397,
		38.089420, 34.101807, 33.698227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910591, 34.744034, 33.263676>,  <37.412983, 34.277981, 33.660851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910591, 34.744034, 33.263676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133270, 34.411827, 33.270851>,  <38.266876, 34.212502, 33.275158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133270, 34.411827, 33.270851>,  <37.910591, 34.744034, 33.263676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133270, 34.411827, 33.270851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272517, 0.162183, -0.948383,
		0.784743, 0.532851, 0.316619,
		0.556698, -0.830521, 0.017939,
		38.300278, 34.162670, 33.276234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553577, 34.875378, 32.853550>,  <37.910591, 34.744034, 33.263676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553577, 34.875378, 32.853550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504791, 34.478390, 32.849079>,  <38.475517, 34.240196, 32.846397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504791, 34.478390, 32.849079>,  <38.553577, 34.875378, 32.853550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504791, 34.478390, 32.849079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070353, 0.019874, -0.997324,
		0.990037, -0.120856, -0.072248,
		-0.121969, -0.992471, -0.011173,
		38.468201, 34.180649, 32.845726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034435, 34.638897, 32.322666>,  <38.553577, 34.875378, 32.853550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034435, 34.638897, 32.322666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781677, 34.334816, 32.383080>,  <38.630024, 34.152367, 32.419327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781677, 34.334816, 32.383080>,  <39.034435, 34.638897, 32.322666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781677, 34.334816, 32.383080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036312, -0.165617, -0.985521,
		0.774207, -0.628226, 0.077047,
		-0.631890, -0.760199, 0.151034,
		38.592110, 34.106754, 32.428391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265778, 34.109402, 31.886381>,  <39.034435, 34.638897, 32.322666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265778, 34.109402, 31.886381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888294, 33.999550, 31.960131>,  <38.661804, 33.933640, 32.004379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888294, 33.999550, 31.960131>,  <39.265778, 34.109402, 31.886381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888294, 33.999550, 31.960131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082840, -0.343408, -0.935526,
		0.320237, -0.898137, 0.301327,
		-0.943708, -0.274628, 0.184374,
		38.605183, 33.917160, 32.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154892, 33.377144, 31.696812>,  <39.265778, 34.109402, 31.886381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154892, 33.377144, 31.696812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800678, 33.562180, 31.679630>,  <38.588150, 33.673203, 31.669321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.800678, 33.562180, 31.679630>,  <39.154892, 33.377144, 31.696812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800678, 33.562180, 31.679630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177895, -0.423045, -0.888474,
		-0.429170, -0.779131, 0.456912,
		-0.885532, 0.462588, -0.042954,
		38.535019, 33.700958, 31.666744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719269, 32.814594, 31.505693>,  <39.154892, 33.377144, 31.696812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719269, 32.814594, 31.505693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560566, 33.167175, 31.403219>,  <38.465343, 33.378723, 31.341736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560566, 33.167175, 31.403219>,  <38.719269, 32.814594, 31.505693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560566, 33.167175, 31.403219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248718, -0.371883, -0.894339,
		-0.883585, -0.291118, 0.366780,
		-0.396757, 0.881450, -0.256184,
		38.441540, 33.431610, 31.326365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189587, 32.688053, 31.018129>,  <38.719269, 32.814594, 31.505693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189587, 32.688053, 31.018129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218159, 33.081520, 30.952044>,  <38.235302, 33.317600, 30.912392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218159, 33.081520, 30.952044>,  <38.189587, 32.688053, 31.018129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218159, 33.081520, 30.952044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204918, -0.147632, -0.967581,
		-0.976170, 0.102967, 0.191027,
		0.071427, 0.983668, -0.165213,
		38.239586, 33.376621, 30.902479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562740, 32.868210, 30.595091>,  <38.189587, 32.688053, 31.018129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562740, 32.868210, 30.595091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804554, 33.185867, 30.570181>,  <37.949642, 33.376461, 30.555235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804554, 33.185867, 30.570181>,  <37.562740, 32.868210, 30.595091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804554, 33.185867, 30.570181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154381, 0.040105, -0.987197,
		-0.781478, 0.606406, 0.146845,
		0.604531, 0.794143, -0.062277,
		37.985912, 33.424110, 30.551498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163284, 33.285843, 29.965284>,  <37.562740, 32.868210, 30.595091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163284, 33.285843, 29.965284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546627, 33.398262, 29.985558>,  <37.776634, 33.465714, 29.997721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546627, 33.398262, 29.985558>,  <37.163284, 33.285843, 29.965284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546627, 33.398262, 29.985558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038186, 0.049771, -0.998030,
		-0.283014, 0.958403, 0.036966,
		0.958355, 0.281045, 0.050684,
		37.834133, 33.482574, 30.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203495, 33.806450, 29.471247>,  <37.163284, 33.285843, 29.965284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203495, 33.806450, 29.471247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575535, 33.665611, 29.513079>,  <37.798759, 33.581108, 29.538177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575535, 33.665611, 29.513079>,  <37.203495, 33.806450, 29.471247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575535, 33.665611, 29.513079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138780, 0.073262, -0.987610,
		0.340070, 0.933093, 0.117005,
		0.930103, -0.352095, 0.104580,
		37.854565, 33.559982, 29.544453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665813, 34.349033, 29.105650>,  <37.203495, 33.806450, 29.471247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665813, 34.349033, 29.105650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889950, 34.020180, 29.145901>,  <38.024429, 33.822868, 29.170052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889950, 34.020180, 29.145901>,  <37.665813, 34.349033, 29.105650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889950, 34.020180, 29.145901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378693, 0.146247, -0.913895,
		0.736623, 0.550196, 0.393282,
		0.560337, -0.822129, 0.100627,
		38.058052, 33.773540, 29.176088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257702, 34.645687, 29.022137>,  <37.665813, 34.349033, 29.105650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257702, 34.645687, 29.022137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256462, 34.254345, 28.939381>,  <38.255718, 34.019539, 28.889727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256462, 34.254345, 28.939381>,  <38.257702, 34.645687, 29.022137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256462, 34.254345, 28.939381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205302, 0.201860, -0.957655,
		0.978694, -0.045446, 0.200233,
		-0.003103, -0.978359, -0.206890,
		38.255531, 33.960838, 28.877314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886890, 34.484043, 28.800209>,  <38.257702, 34.645687, 29.022137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886890, 34.484043, 28.800209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633381, 34.215069, 28.647284>,  <38.481277, 34.053684, 28.555527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633381, 34.215069, 28.647284>,  <38.886890, 34.484043, 28.800209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633381, 34.215069, 28.647284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181174, 0.351463, -0.918504,
		0.752006, -0.651385, -0.100918,
		-0.633769, -0.672437, -0.382316,
		38.443249, 34.013336, 28.532589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104042, 34.276340, 28.236588>,  <38.886890, 34.484043, 28.800209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104042, 34.276340, 28.236588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729645, 34.157482, 28.161093>,  <38.505005, 34.086166, 28.115795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729645, 34.157482, 28.161093>,  <39.104042, 34.276340, 28.236588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729645, 34.157482, 28.161093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052915, 0.411302, -0.909962,
		0.348018, -0.861705, -0.369252,
		-0.935993, -0.297145, -0.188738,
		38.448849, 34.068336, 28.104471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096645, 34.052082, 27.534163>,  <39.104042, 34.276340, 28.236588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096645, 34.052082, 27.534163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703777, 34.057484, 27.609175>,  <38.468056, 34.060726, 27.654182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703777, 34.057484, 27.609175>,  <39.096645, 34.052082, 27.534163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703777, 34.057484, 27.609175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173644, 0.317330, -0.932282,
		-0.072100, -0.948219, -0.309326,
		-0.982166, 0.013505, 0.187532,
		38.409126, 34.061535, 27.665434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716782, 33.689350, 26.995703>,  <39.096645, 34.052082, 27.534163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716782, 33.689350, 26.995703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457260, 33.948166, 27.155899>,  <38.301548, 34.103455, 27.252018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457260, 33.948166, 27.155899>,  <38.716782, 33.689350, 26.995703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457260, 33.948166, 27.155899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296715, 0.269530, -0.916141,
		-0.700720, -0.713232, 0.017112,
		-0.648808, 0.647035, 0.400492,
		38.262619, 34.142277, 27.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044380, 33.575260, 26.580551>,  <38.716782, 33.689350, 26.995703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044380, 33.575260, 26.580551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020943, 33.934887, 26.754101>,  <38.006878, 34.150661, 26.858231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020943, 33.934887, 26.754101>,  <38.044380, 33.575260, 26.580551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020943, 33.934887, 26.754101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516323, 0.344678, -0.783969,
		-0.854387, -0.269958, 0.444011,
		-0.058598, 0.899066, 0.433874,
		38.003365, 34.204605, 26.884262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.287296, 33.699780, 26.353817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462246, 34.038551, 26.474754>,  <37.567215, 34.241814, 26.547316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462246, 34.038551, 26.474754>,  <37.287296, 33.699780, 26.353817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462246, 34.038551, 26.474754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390697, 0.481773, -0.784379,
		-0.809976, 0.224942, 0.541608,
		0.437372, 0.846933, 0.302341,
		37.593456, 34.292633, 26.565456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786182, 34.305714, 26.282579>,  <37.287296, 33.699780, 26.353817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786182, 34.305714, 26.282579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147434, 34.475685, 26.307228>,  <37.364185, 34.577667, 26.322018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147434, 34.475685, 26.307228>,  <36.786182, 34.305714, 26.282579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147434, 34.475685, 26.307228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226792, 0.593945, -0.771878,
		-0.364597, 0.683126, 0.632778,
		0.903125, 0.424933, 0.061623,
		37.418373, 34.603165, 26.325714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712795, 35.060246, 26.251066>,  <36.786182, 34.305714, 26.282579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712795, 35.060246, 26.251066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099720, 35.018402, 26.158655>,  <37.331875, 34.993298, 26.103209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099720, 35.018402, 26.158655>,  <36.712795, 35.060246, 26.251066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099720, 35.018402, 26.158655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095626, 0.693285, -0.714291,
		0.234888, 0.713031, 0.660617,
		0.967307, -0.104606, -0.231028,
		37.389912, 34.987019, 26.089346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904217, 35.745003, 26.101715>,  <36.712795, 35.060246, 26.251066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904217, 35.745003, 26.101715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170010, 35.506264, 25.921831>,  <37.329487, 35.363022, 25.813900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170010, 35.506264, 25.921831>,  <36.904217, 35.745003, 26.101715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170010, 35.506264, 25.921831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138234, 0.689559, -0.710915,
		0.734408, 0.410225, 0.540704,
		0.664482, -0.596845, -0.449710,
		37.369354, 35.327209, 25.786919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471210, 36.145912, 26.041426>,  <36.904217, 35.745003, 26.101715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471210, 36.145912, 26.041426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518639, 35.854301, 25.771770>,  <37.547096, 35.679337, 25.609978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518639, 35.854301, 25.771770>,  <37.471210, 36.145912, 26.041426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518639, 35.854301, 25.771770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349009, 0.666206, -0.659062,
		0.929588, -0.157138, 0.333426,
		0.118567, -0.729025, -0.674139,
		37.554207, 35.635593, 25.569529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162415, 36.207348, 25.689301>,  <37.471210, 36.145912, 26.041426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162415, 36.207348, 25.689301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949631, 35.976406, 25.441534>,  <37.821960, 35.837841, 25.292873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949631, 35.976406, 25.441534>,  <38.162415, 36.207348, 25.689301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949631, 35.976406, 25.441534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253672, 0.589250, -0.767095,
		0.807877, -0.565195, -0.167001,
		-0.531964, -0.577355, -0.619416,
		37.790043, 35.803200, 25.255709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599316, 36.226555, 25.044233>,  <38.162415, 36.207348, 25.689301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599316, 36.226555, 25.044233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241444, 36.082474, 24.938557>,  <38.026722, 35.996025, 24.875151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241444, 36.082474, 24.938557>,  <38.599316, 36.226555, 25.044233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241444, 36.082474, 24.938557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003915, 0.585075, -0.810970,
		0.446687, -0.726594, -0.522045,
		-0.894681, -0.360206, -0.264190,
		37.973038, 35.974411, 24.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693802, 36.067059, 24.288755>,  <38.599316, 36.226555, 25.044233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693802, 36.067059, 24.288755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302731, 36.124424, 24.350185>,  <38.068089, 36.158844, 24.387043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302731, 36.124424, 24.350185>,  <38.693802, 36.067059, 24.288755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302731, 36.124424, 24.350185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006158, 0.711001, -0.703164,
		-0.210035, -0.688411, -0.694245,
		-0.977675, 0.143414, 0.153574,
		38.009430, 36.167450, 24.396257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329117, 35.965057, 23.682207>,  <38.693802, 36.067059, 24.288755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329117, 35.965057, 23.682207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086876, 36.199169, 23.897875>,  <37.941532, 36.339634, 24.027275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086876, 36.199169, 23.897875>,  <38.329117, 35.965057, 23.682207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086876, 36.199169, 23.897875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072689, 0.715396, -0.694928,
		-0.792442, -0.381657, -0.475787,
		-0.605600, 0.585275, 0.539168,
		37.905197, 36.374752, 24.059626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839741, 36.183285, 23.234234>,  <38.329117, 35.965057, 23.682207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839741, 36.183285, 23.234234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827282, 36.441830, 23.539192>,  <37.819805, 36.596954, 23.722168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827282, 36.441830, 23.539192>,  <37.839741, 36.183285, 23.234234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827282, 36.441830, 23.539192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110948, 0.760288, -0.640041,
		-0.993338, 0.064650, -0.095395,
		-0.031149, 0.646361, 0.762396,
		37.817936, 36.635738, 23.767912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348122, 36.668304, 23.037901>,  <37.839741, 36.183285, 23.234234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348122, 36.668304, 23.037901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570774, 36.847301, 23.317875>,  <37.704365, 36.954700, 23.485859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570774, 36.847301, 23.317875>,  <37.348122, 36.668304, 23.037901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570774, 36.847301, 23.317875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182089, 0.756322, -0.628348,
		-0.810558, 0.477209, 0.339510,
		0.556632, 0.447491, 0.699937,
		37.737762, 36.981548, 23.527857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128181, 37.387543, 22.885838>,  <37.348122, 36.668304, 23.037901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128181, 37.387543, 22.885838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453579, 37.391140, 23.118437>,  <37.648819, 37.393299, 23.257996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453579, 37.391140, 23.118437>,  <37.128181, 37.387543, 22.885838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453579, 37.391140, 23.118437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304724, 0.845043, -0.439370,
		-0.495343, 0.534623, 0.684700,
		0.813498, 0.008995, 0.581499,
		37.697628, 37.393837, 23.292887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090805, 38.003380, 23.111601>,  <37.128181, 37.387543, 22.885838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090805, 38.003380, 23.111601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477207, 37.899998, 23.109419>,  <37.709049, 37.837967, 23.108109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477207, 37.899998, 23.109419>,  <37.090805, 38.003380, 23.111601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477207, 37.899998, 23.109419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230738, 0.871535, -0.432650,
		0.116577, 0.416684, 0.901545,
		0.966007, -0.258458, -0.005456,
		37.767010, 37.822460, 23.107782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446693, 38.639698, 23.282309>,  <37.090805, 38.003380, 23.111601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446693, 38.639698, 23.282309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730026, 38.379833, 23.171888>,  <37.900028, 38.223915, 23.105637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730026, 38.379833, 23.171888>,  <37.446693, 38.639698, 23.282309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730026, 38.379833, 23.171888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412203, 0.698167, -0.585365,
		0.573017, 0.300846, 0.762328,
		0.708336, -0.649657, -0.276052,
		37.942528, 38.184937, 23.089073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047588, 39.002758, 23.283865>,  <37.446693, 38.639698, 23.282309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047588, 39.002758, 23.283865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114765, 38.690807, 23.042671>,  <38.155071, 38.503639, 22.897955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114765, 38.690807, 23.042671>,  <38.047588, 39.002758, 23.283865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114765, 38.690807, 23.042671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447078, 0.605406, -0.658486,
		0.878588, -0.158996, 0.450337,
		0.167939, -0.779874, -0.602986,
		38.165146, 38.456844, 22.861774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630905, 39.240185, 23.016237>,  <38.047588, 39.002758, 23.283865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630905, 39.240185, 23.016237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499687, 38.949841, 22.774406>,  <38.420956, 38.775635, 22.629307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499687, 38.949841, 22.774406>,  <38.630905, 39.240185, 23.016237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499687, 38.949841, 22.774406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492768, 0.414539, -0.765073,
		0.805956, -0.548897, 0.221691,
		-0.328047, -0.725857, -0.604579,
		38.401272, 38.732082, 22.593033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238209, 39.024757, 22.644037>,  <38.630905, 39.240185, 23.016237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238209, 39.024757, 22.644037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916672, 38.902634, 22.439835>,  <38.723747, 38.829357, 22.317312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916672, 38.902634, 22.439835>,  <39.238209, 39.024757, 22.644037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916672, 38.902634, 22.439835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400300, 0.357165, -0.843916,
		0.439993, -0.882733, -0.164889,
		-0.803845, -0.305312, -0.510508,
		38.675518, 38.811039, 22.286682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516373, 38.767956, 21.996365>,  <39.238209, 39.024757, 22.644037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516373, 38.767956, 21.996365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134514, 38.861423, 21.922552>,  <38.905399, 38.917503, 21.878265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134514, 38.861423, 21.922552>,  <39.516373, 38.767956, 21.996365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134514, 38.861423, 21.922552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279396, 0.488815, -0.826437,
		-0.102911, -0.840511, -0.531931,
		-0.954645, 0.233669, -0.184532,
		38.848122, 38.931522, 21.867193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401882, 38.524361, 21.305000>,  <39.516373, 38.767956, 21.996365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401882, 38.524361, 21.305000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.114357, 38.790363, 21.386070>,  <38.941841, 38.949963, 21.434711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.114357, 38.790363, 21.386070>,  <39.401882, 38.524361, 21.305000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114357, 38.790363, 21.386070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180410, 0.459979, -0.869408,
		-0.671388, -0.588377, -0.450612,
		-0.718812, 0.665005, 0.202675,
		38.898712, 38.989864, 21.446873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884655, 38.572853, 20.710791>,  <39.401882, 38.524361, 21.305000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884655, 38.572853, 20.710791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868114, 38.924942, 20.899891>,  <38.858189, 39.136196, 21.013351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868114, 38.924942, 20.899891>,  <38.884655, 38.572853, 20.710791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868114, 38.924942, 20.899891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082989, 0.474544, -0.876311,
		-0.995692, 0.002997, -0.092672,
		-0.041351, 0.880227, 0.472748,
		38.855709, 39.189011, 21.041716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497570, 38.978172, 20.236734>,  <38.884655, 38.572853, 20.710791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497570, 38.978172, 20.236734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673100, 39.238873, 20.484171>,  <38.778416, 39.395290, 20.632633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673100, 39.238873, 20.484171>,  <38.497570, 38.978172, 20.236734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673100, 39.238873, 20.484171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330360, 0.523186, -0.785582,
		-0.835641, 0.549090, 0.014274,
		0.438823, 0.651749, 0.618593,
		38.804745, 39.434399, 20.669748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293598, 39.579739, 19.960207>,  <38.497570, 38.978172, 20.236734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293598, 39.579739, 19.960207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.617714, 39.657127, 20.181477>,  <38.812183, 39.703560, 20.314240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.617714, 39.657127, 20.181477>,  <38.293598, 39.579739, 19.960207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617714, 39.657127, 20.181477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326404, 0.634970, -0.700195,
		-0.486718, 0.747918, 0.451358,
		0.810288, 0.193473, 0.553175,
		38.860802, 39.715168, 20.347429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509510, 40.336449, 19.954855>,  <38.293598, 39.579739, 19.960207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509510, 40.336449, 19.954855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847645, 40.144516, 20.048811>,  <39.050526, 40.029358, 20.105185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847645, 40.144516, 20.048811>,  <38.509510, 40.336449, 19.954855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847645, 40.144516, 20.048811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493196, 0.531912, -0.688351,
		0.205350, 0.697734, 0.686293,
		0.845334, -0.479830, 0.234892,
		39.101246, 40.000568, 20.119278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790478, 40.653172, 20.105473>,  <38.509510, 40.336449, 19.954855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790478, 40.653172, 20.105473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432690, 40.693535, 20.279713>,  <37.218018, 40.717754, 20.384256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432690, 40.693535, 20.279713>,  <37.790478, 40.653172, 20.105473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432690, 40.693535, 20.279713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445494, 0.284546, 0.848863,
		-0.038290, 0.953336, -0.299472,
		-0.894466, 0.100910, 0.435601,
		37.164349, 40.723808, 20.410393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058308, 40.667622, 19.825218>,  <37.790478, 40.653172, 20.105473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058308, 40.667622, 19.825218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686909, 40.810726, 19.785433>,  <36.464069, 40.896587, 19.761562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686909, 40.810726, 19.785433>,  <37.058308, 40.667622, 19.825218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686909, 40.810726, 19.785433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228788, -0.340204, 0.912095,
		0.292474, 0.869638, 0.397731,
		-0.928502, 0.357760, -0.099462,
		36.408360, 40.918053, 19.755594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806366, 41.176506, 20.389908>,  <37.058308, 40.667622, 19.825218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806366, 41.176506, 20.389908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493534, 40.980171, 20.236319>,  <36.305836, 40.862370, 20.144165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493534, 40.980171, 20.236319>,  <36.806366, 41.176506, 20.389908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493534, 40.980171, 20.236319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229761, -0.345632, 0.909807,
		-0.579282, 0.799759, 0.157535,
		-0.782075, -0.490840, -0.383972,
		36.258911, 40.832920, 20.121126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190926, 41.382206, 20.851316>,  <36.806366, 41.176506, 20.389908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190926, 41.382206, 20.851316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064995, 41.061218, 20.648565>,  <35.989437, 40.868626, 20.526915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064995, 41.061218, 20.648565>,  <36.190926, 41.382206, 20.851316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064995, 41.061218, 20.648565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617890, -0.232101, 0.751226,
		-0.720484, 0.549700, -0.422768,
		-0.314824, -0.802470, -0.506879,
		35.970547, 40.820477, 20.496502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483978, 41.268360, 21.022129>,  <36.190926, 41.382206, 20.851316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483978, 41.268360, 21.022129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593426, 40.908226, 20.886757>,  <35.659092, 40.692146, 20.805534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593426, 40.908226, 20.886757>,  <35.483978, 41.268360, 21.022129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593426, 40.908226, 20.886757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431543, -0.429366, 0.793357,
		-0.859597, -0.071026, -0.506013,
		0.273614, -0.900333, -0.338431,
		35.675510, 40.638126, 20.785227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896267, 40.737774, 21.168648>,  <35.483978, 41.268360, 21.022129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896267, 40.737774, 21.168648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236103, 40.533123, 21.117373>,  <35.440006, 40.410332, 21.086607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236103, 40.533123, 21.117373>,  <34.896267, 40.737774, 21.168648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236103, 40.533123, 21.117373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234097, -0.583562, 0.777595,
		-0.472644, -0.630630, -0.615559,
		0.849591, -0.511627, -0.128189,
		35.490982, 40.379635, 21.078917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674473, 40.073147, 21.412844>,  <34.896267, 40.737774, 21.168648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674473, 40.073147, 21.412844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074181, 40.058437, 21.408684>,  <35.314007, 40.049610, 21.406189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.074181, 40.058437, 21.408684>,  <34.674473, 40.073147, 21.412844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074181, 40.058437, 21.408684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013752, -0.599912, 0.799948,
		-0.035655, -0.799221, -0.599979,
		0.999269, -0.036773, -0.010399,
		35.373962, 40.047405, 21.405563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909321, 39.336685, 21.272915>,  <34.674473, 40.073147, 21.412844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909321, 39.336685, 21.272915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176872, 39.544666, 21.485422>,  <35.337402, 39.669456, 21.612926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176872, 39.544666, 21.485422>,  <34.909321, 39.336685, 21.272915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176872, 39.544666, 21.485422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016187, -0.724693, 0.688882,
		0.743192, -0.452182, -0.493151,
		0.668883, 0.519954, 0.531267,
		35.377537, 39.700653, 21.644802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385750, 38.825115, 21.452419>,  <34.909321, 39.336685, 21.272915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385750, 38.825115, 21.452419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505638, 39.129662, 21.682371>,  <35.577572, 39.312389, 21.820343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505638, 39.129662, 21.682371>,  <35.385750, 38.825115, 21.452419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505638, 39.129662, 21.682371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307133, -0.647507, 0.697426,
		0.903237, -0.032468, -0.427912,
		0.299720, 0.761368, 0.574880,
		35.595554, 39.358070, 21.854836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070141, 38.610699, 21.634525>,  <35.385750, 38.825115, 21.452419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070141, 38.610699, 21.634525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931915, 38.877575, 21.898478>,  <35.848980, 39.037701, 22.056849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.931915, 38.877575, 21.898478>,  <36.070141, 38.610699, 21.634525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931915, 38.877575, 21.898478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131139, -0.661966, 0.737973,
		0.929186, 0.341555, 0.141259,
		-0.345567, 0.667189, 0.659881,
		35.828247, 39.077732, 22.096441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593552, 38.691189, 22.203476>,  <36.070141, 38.610699, 21.634525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593552, 38.691189, 22.203476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237446, 38.820297, 22.332008>,  <36.023785, 38.897762, 22.409128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237446, 38.820297, 22.332008>,  <36.593552, 38.691189, 22.203476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237446, 38.820297, 22.332008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130484, -0.495189, 0.858931,
		0.436359, 0.806600, 0.398730,
		-0.890261, 0.322774, 0.321329,
		35.970367, 38.917130, 22.428408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758831, 38.987907, 22.929852>,  <36.593552, 38.691189, 22.203476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758831, 38.987907, 22.929852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369392, 38.898666, 22.910557>,  <36.135727, 38.845123, 22.898979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369392, 38.898666, 22.910557>,  <36.758831, 38.987907, 22.929852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369392, 38.898666, 22.910557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062822, -0.465075, 0.883039,
		-0.219441, 0.856698, 0.466813,
		-0.973601, -0.223101, -0.048237,
		36.077312, 38.831738, 22.896086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529461, 38.982445, 23.629570>,  <36.758831, 38.987907, 22.929852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529461, 38.982445, 23.629570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264595, 38.749382, 23.441082>,  <36.105675, 38.609547, 23.327990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264595, 38.749382, 23.441082>,  <36.529461, 38.982445, 23.629570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264595, 38.749382, 23.441082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097166, -0.556767, 0.824966,
		-0.743029, 0.592053, 0.312060,
		-0.662169, -0.582652, -0.471221,
		36.065945, 38.574585, 23.299715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114834, 38.758415, 24.214573>,  <36.529461, 38.982445, 23.629570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114834, 38.758415, 24.214573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000252, 38.523491, 23.911783>,  <35.931503, 38.382538, 23.730110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000252, 38.523491, 23.911783>,  <36.114834, 38.758415, 24.214573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000252, 38.523491, 23.911783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310508, -0.690530, 0.653263,
		-0.906382, 0.422177, 0.015441,
		-0.286455, -0.587311, -0.756973,
		35.914314, 38.347298, 23.684690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449261, 38.549068, 24.468552>,  <36.114834, 38.758415, 24.214573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449261, 38.549068, 24.468552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574684, 38.270432, 24.210423>,  <35.649937, 38.103249, 24.055546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574684, 38.270432, 24.210423>,  <35.449261, 38.549068, 24.468552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574684, 38.270432, 24.210423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339801, -0.716905, 0.608755,
		-0.886688, 0.028401, -0.461494,
		0.313558, -0.696592, -0.645322,
		35.668751, 38.061455, 24.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932293, 38.048874, 24.462334>,  <35.449261, 38.549068, 24.468552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932293, 38.048874, 24.462334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235935, 37.850632, 24.293509>,  <35.418121, 37.731686, 24.192213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235935, 37.850632, 24.293509>,  <34.932293, 38.048874, 24.462334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235935, 37.850632, 24.293509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229978, -0.810722, 0.538368,
		-0.608994, -0.311612, -0.729400,
		0.759102, -0.495609, -0.422061,
		35.463665, 37.701950, 24.166889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688980, 37.514496, 24.118910>,  <34.932293, 38.048874, 24.462334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688980, 37.514496, 24.118910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060837, 37.384819, 24.188955>,  <35.283951, 37.307014, 24.230982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060837, 37.384819, 24.188955>,  <34.688980, 37.514496, 24.118910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060837, 37.384819, 24.188955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367169, -0.854833, 0.366672,
		0.030822, -0.405170, -0.913722,
		0.929643, -0.324189, 0.175113,
		35.339729, 37.287563, 24.241489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588654, 36.893486, 24.030750>,  <34.688980, 37.514496, 24.118910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588654, 36.893486, 24.030750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957016, 36.878117, 24.185900>,  <35.178036, 36.868896, 24.278990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957016, 36.878117, 24.185900>,  <34.588654, 36.893486, 24.030750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957016, 36.878117, 24.185900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227894, -0.860385, 0.455852,
		0.316208, -0.508193, -0.801094,
		0.920911, -0.038421, 0.387875,
		35.233288, 36.866589, 24.302261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614071, 36.226154, 24.075703>,  <34.588654, 36.893486, 24.030750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614071, 36.226154, 24.075703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895763, 36.379658, 24.314631>,  <35.064777, 36.471760, 24.457987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895763, 36.379658, 24.314631>,  <34.614071, 36.226154, 24.075703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895763, 36.379658, 24.314631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159869, -0.734005, 0.660059,
		0.691740, -0.560325, -0.455556,
		0.704228, 0.383760, 0.597319,
		35.107033, 36.494785, 24.493826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892941, 35.545685, 24.315971>,  <34.614071, 36.226154, 24.075703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892941, 35.545685, 24.315971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047607, 35.834507, 24.545448>,  <35.140408, 36.007801, 24.683134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047607, 35.834507, 24.545448>,  <34.892941, 35.545685, 24.315971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047607, 35.834507, 24.545448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118473, -0.578032, 0.807368,
		0.914576, -0.380154, -0.137964,
		0.386672, 0.722054, 0.573692,
		35.163609, 36.051125, 24.717556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413151, 35.232277, 24.803503>,  <34.892941, 35.545685, 24.315971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413151, 35.232277, 24.803503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266155, 35.562016, 24.975739>,  <35.177956, 35.759857, 25.079079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266155, 35.562016, 24.975739>,  <35.413151, 35.232277, 24.803503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266155, 35.562016, 24.975739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110396, -0.498376, 0.859904,
		0.923451, 0.268474, 0.274154,
		-0.367493, 0.824344, 0.430587,
		35.155907, 35.809319, 25.104916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.830715, 32.722679, 29.237947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601429, 33.050297, 29.228209>,  <38.463860, 33.246868, 29.222366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601429, 33.050297, 29.228209>,  <38.830715, 32.722679, 29.237947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601429, 33.050297, 29.228209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039149, 0.057052, 0.997603,
		0.818472, 0.570884, -0.064768,
		-0.573211, 0.819046, -0.024346,
		38.429466, 33.296009, 29.220905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126274, 33.199097, 29.739836>,  <38.830715, 32.722679, 29.237947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126274, 33.199097, 29.739836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747669, 33.320374, 29.695669>,  <38.520508, 33.393139, 29.669168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747669, 33.320374, 29.695669>,  <39.126274, 33.199097, 29.739836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747669, 33.320374, 29.695669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109650, 0.019604, 0.993777,
		0.303473, 0.952727, 0.014690,
		-0.946510, 0.303195, -0.110416,
		38.463715, 33.411331, 29.662544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998573, 33.969364, 30.006672>,  <39.126274, 33.199097, 29.739836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998573, 33.969364, 30.006672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.631672, 33.810284, 30.015471>,  <38.411533, 33.714836, 30.020750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.631672, 33.810284, 30.015471>,  <38.998573, 33.969364, 30.006672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631672, 33.810284, 30.015471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029471, 0.122837, 0.991989,
		-0.397219, 0.909254, -0.124393,
		-0.917251, -0.397703, 0.021996,
		38.356495, 33.690971, 30.022070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736591, 34.469406, 30.433619>,  <38.998573, 33.969364, 30.006672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736591, 34.469406, 30.433619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511650, 34.138977, 30.448338>,  <38.376686, 33.940720, 30.457169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511650, 34.138977, 30.448338>,  <38.736591, 34.469406, 30.433619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511650, 34.138977, 30.448338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055445, 0.082070, 0.995083,
		-0.825035, 0.557550, -0.091954,
		-0.562356, -0.826076, 0.036797,
		38.342945, 33.891155, 30.459377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227386, 34.658333, 30.801546>,  <38.736591, 34.469406, 30.433619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227386, 34.658333, 30.801546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219357, 34.259861, 30.835537>,  <38.214539, 34.020779, 30.855932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.219357, 34.259861, 30.835537>,  <38.227386, 34.658333, 30.801546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219357, 34.259861, 30.835537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124802, 0.086828, 0.988375,
		-0.991979, 0.009236, -0.126068,
		-0.020074, -0.996181, 0.084979,
		38.213333, 33.961006, 30.861031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599491, 34.504055, 31.214571>,  <38.227386, 34.658333, 30.801546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599491, 34.504055, 31.214571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.835850, 34.184082, 31.256447>,  <37.977665, 33.992100, 31.281572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.835850, 34.184082, 31.256447>,  <37.599491, 34.504055, 31.214571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835850, 34.184082, 31.256447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107435, 0.050589, 0.992924,
		-0.799565, -0.597959, -0.056048,
		0.590892, -0.799929, 0.104691,
		38.013119, 33.944103, 31.287853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314522, 34.111809, 31.729897>,  <37.599491, 34.504055, 31.214571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314522, 34.111809, 31.729897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694347, 33.989605, 31.701637>,  <37.922241, 33.916283, 31.684681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.694347, 33.989605, 31.701637>,  <37.314522, 34.111809, 31.729897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694347, 33.989605, 31.701637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057798, -0.050924, 0.997029,
		-0.308203, -0.950825, -0.030698,
		0.949563, -0.305513, -0.070651,
		37.979218, 33.897953, 31.680443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405315, 33.600792, 32.310040>,  <37.314522, 34.111809, 31.729897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405315, 33.600792, 32.310040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.773766, 33.720081, 32.209972>,  <37.994835, 33.791656, 32.149933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.773766, 33.720081, 32.209972>,  <37.405315, 33.600792, 32.310040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773766, 33.720081, 32.209972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264066, -0.006562, 0.964482,
		0.285991, -0.954473, -0.084796,
		0.921128, 0.298225, -0.250167,
		38.050106, 33.809547, 32.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813519, 33.100281, 32.629097>,  <37.405315, 33.600792, 32.310040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813519, 33.100281, 32.629097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052284, 33.413544, 32.559406>,  <38.195545, 33.601501, 32.517593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052284, 33.413544, 32.559406>,  <37.813519, 33.100281, 32.629097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052284, 33.413544, 32.559406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384338, -0.088510, 0.918940,
		0.704253, -0.615493, -0.353830,
		0.596919, 0.783157, -0.174223,
		38.231361, 33.648491, 32.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424835, 32.878624, 32.906109>,  <37.813519, 33.100281, 32.629097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424835, 32.878624, 32.906109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.434589, 33.278263, 32.892189>,  <38.440441, 33.518047, 32.883839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.434589, 33.278263, 32.892189>,  <38.424835, 32.878624, 32.906109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434589, 33.278263, 32.892189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095379, 0.032326, 0.994916,
		0.995142, -0.027578, -0.094505,
		0.024383, 0.999097, -0.034799,
		38.441906, 33.577991, 32.881748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991299, 33.063560, 33.331871>,  <38.424835, 32.878624, 32.906109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991299, 33.063560, 33.331871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776649, 33.400967, 33.322773>,  <38.647858, 33.603409, 33.317314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776649, 33.400967, 33.322773>,  <38.991299, 33.063560, 33.331871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776649, 33.400967, 33.322773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171598, 0.135485, 0.975806,
		0.826188, 0.519739, -0.217450,
		-0.536626, 0.843514, -0.022750,
		38.615662, 33.654022, 33.315948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303284, 33.651901, 33.776512>,  <38.991299, 33.063560, 33.331871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303284, 33.651901, 33.776512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925472, 33.770016, 33.719009>,  <38.698784, 33.840885, 33.684505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925472, 33.770016, 33.719009>,  <39.303284, 33.651901, 33.776512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925472, 33.770016, 33.719009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108629, 0.132204, 0.985252,
		0.309933, 0.946219, -0.092795,
		-0.944533, 0.295282, -0.143761,
		38.642113, 33.858601, 33.675880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226562, 34.334969, 34.128311>,  <39.303284, 33.651901, 33.776512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226562, 34.334969, 34.128311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.901772, 34.102245, 34.109566>,  <38.706898, 33.962612, 34.098320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.901772, 34.102245, 34.109566>,  <39.226562, 34.334969, 34.128311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901772, 34.102245, 34.109566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095277, 0.052900, 0.994044,
		-0.575865, 0.811603, -0.098386,
		-0.811974, -0.581809, -0.046864,
		38.658180, 33.927704, 34.095505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604870, 34.718304, 34.416340>,  <39.226562, 34.334969, 34.128311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604870, 34.718304, 34.416340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556286, 34.321632, 34.433453>,  <38.527134, 34.083630, 34.443722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556286, 34.321632, 34.433453>,  <38.604870, 34.718304, 34.416340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556286, 34.321632, 34.433453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397116, 0.088050, 0.913535,
		-0.909696, 0.093971, -0.404504,
		-0.121462, -0.991674, 0.042782,
		38.519848, 34.024132, 34.446289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314148, 35.067600, 35.065395>,  <38.604870, 34.718304, 34.416340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314148, 35.067600, 35.065395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185055, 35.350220, 35.317314>,  <38.107601, 35.519791, 35.468464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185055, 35.350220, 35.317314>,  <38.314148, 35.067600, 35.065395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185055, 35.350220, 35.317314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074071, 0.644503, -0.761006,
		-0.943588, -0.292249, -0.155666,
		-0.322730, 0.706546, 0.629792,
		38.088234, 35.562183, 35.506252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629341, 35.242626, 34.792782>,  <38.314148, 35.067600, 35.065395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629341, 35.242626, 34.792782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774143, 35.547142, 35.007957>,  <37.861027, 35.729851, 35.137062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774143, 35.547142, 35.007957>,  <37.629341, 35.242626, 34.792782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774143, 35.547142, 35.007957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236431, 0.633198, -0.736995,
		-0.901693, 0.139613, 0.409217,
		0.362010, 0.761294, 0.537941,
		37.882748, 35.775532, 35.169338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093399, 35.772182, 34.828602>,  <37.629341, 35.242626, 34.792782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093399, 35.772182, 34.828602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446743, 35.946884, 34.896629>,  <37.658749, 36.051704, 34.937447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446743, 35.946884, 34.896629>,  <37.093399, 35.772182, 34.828602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446743, 35.946884, 34.896629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232116, 0.722893, -0.650806,
		-0.407186, 0.535419, 0.739951,
		0.883358, 0.436753, 0.170073,
		37.711750, 36.077911, 34.947651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975258, 36.488201, 34.755592>,  <37.093399, 35.772182, 34.828602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975258, 36.488201, 34.755592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374126, 36.473515, 34.729385>,  <37.613449, 36.464703, 34.713661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374126, 36.473515, 34.729385>,  <36.975258, 36.488201, 34.755592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374126, 36.473515, 34.729385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023896, 0.671970, -0.740192,
		0.071203, 0.739667, 0.669195,
		0.997176, -0.036713, -0.065521,
		37.673279, 36.462502, 34.709728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228062, 37.184155, 34.794212>,  <36.975258, 36.488201, 34.755592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228062, 37.184155, 34.794212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520248, 36.969337, 34.625446>,  <37.695560, 36.840446, 34.524185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520248, 36.969337, 34.625446>,  <37.228062, 37.184155, 34.794212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520248, 36.969337, 34.625446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086649, 0.685663, -0.722743,
		0.677434, 0.491378, 0.547386,
		0.730462, -0.537041, -0.421914,
		37.739388, 36.808224, 34.498871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640835, 37.681225, 34.548298>,  <37.228062, 37.184155, 34.794212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640835, 37.681225, 34.548298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770145, 37.367508, 34.336498>,  <37.847733, 37.179276, 34.209419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770145, 37.367508, 34.336498>,  <37.640835, 37.681225, 34.548298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770145, 37.367508, 34.336498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208936, 0.604893, -0.768407,
		0.922949, 0.137780, 0.359418,
		0.323281, -0.784296, -0.529499,
		37.867130, 37.132217, 34.177650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285091, 37.854523, 34.274197>,  <37.640835, 37.681225, 34.548298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285091, 37.854523, 34.274197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.134487, 37.598640, 34.006161>,  <38.044125, 37.445110, 33.845341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.134487, 37.598640, 34.006161>,  <38.285091, 37.854523, 34.274197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134487, 37.598640, 34.006161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154191, 0.669955, -0.726214,
		0.913489, -0.376752, -0.153612,
		-0.376515, -0.639702, -0.670088,
		38.021534, 37.406731, 33.805134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801388, 37.731899, 33.767151>,  <38.285091, 37.854523, 34.274197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801388, 37.731899, 33.767151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441380, 37.640678, 33.618584>,  <38.225376, 37.585945, 33.529442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441380, 37.640678, 33.618584>,  <38.801388, 37.731899, 33.767151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441380, 37.640678, 33.618584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198108, 0.545013, -0.814687,
		0.388219, -0.806817, -0.445345,
		-0.900022, -0.228050, -0.371421,
		38.171371, 37.572262, 33.507156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864704, 37.419674, 33.035778>,  <38.801388, 37.731899, 33.767151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864704, 37.419674, 33.035778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495384, 37.570515, 33.064922>,  <38.273792, 37.661018, 33.082409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495384, 37.570515, 33.064922>,  <38.864704, 37.419674, 33.035778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495384, 37.570515, 33.064922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088701, 0.393928, -0.914851,
		-0.373696, -0.838220, -0.397164,
		-0.923300, 0.377105, 0.072858,
		38.218395, 37.683647, 33.086781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559479, 37.219048, 32.472034>,  <38.864704, 37.419674, 33.035778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559479, 37.219048, 32.472034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.318287, 37.506363, 32.610874>,  <38.173573, 37.678753, 32.694180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.318287, 37.506363, 32.610874>,  <38.559479, 37.219048, 32.472034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318287, 37.506363, 32.610874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019599, 0.448301, -0.893668,
		-0.797518, -0.532058, -0.284393,
		-0.602977, 0.718290, 0.347101,
		38.137394, 37.721851, 32.715004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993679, 37.276329, 31.956169>,  <38.559479, 37.219048, 32.472034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993679, 37.276329, 31.956169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979786, 37.626659, 32.148720>,  <37.971451, 37.836857, 32.264252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979786, 37.626659, 32.148720>,  <37.993679, 37.276329, 31.956169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979786, 37.626659, 32.148720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118978, 0.481867, -0.868129,
		-0.992289, 0.027122, -0.120940,
		-0.034732, 0.875825, 0.481378,
		37.969368, 37.889408, 32.293133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453407, 37.764030, 31.600037>,  <37.993679, 37.276329, 31.956169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453407, 37.764030, 31.600037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675571, 38.011196, 31.822641>,  <37.808868, 38.159496, 31.956203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675571, 38.011196, 31.822641>,  <37.453407, 37.764030, 31.600037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675571, 38.011196, 31.822641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157639, 0.578855, -0.800048,
		-0.816498, 0.532083, 0.224095,
		0.555411, 0.617912, 0.556511,
		37.842194, 38.196571, 31.989595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245846, 38.430492, 31.488775>,  <37.453407, 37.764030, 31.600037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245846, 38.430492, 31.488775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635181, 38.470150, 31.571501>,  <37.868782, 38.493946, 31.621136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635181, 38.470150, 31.571501>,  <37.245846, 38.430492, 31.488775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635181, 38.470150, 31.571501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112701, 0.578595, -0.807791,
		-0.199751, 0.809567, 0.551998,
		0.973344, 0.099147, 0.206814,
		37.927185, 38.499893, 31.633545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405018, 39.035351, 31.292841>,  <37.245846, 38.430492, 31.488775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405018, 39.035351, 31.292841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770229, 38.875458, 31.325331>,  <37.989357, 38.779522, 31.344824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770229, 38.875458, 31.325331>,  <37.405018, 39.035351, 31.292841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770229, 38.875458, 31.325331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225788, 0.329432, -0.916785,
		0.339710, 0.855388, 0.391035,
		0.913026, -0.399732, 0.081225,
		38.044136, 38.755539, 31.349699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026260, 39.657047, 31.439640>,  <37.405018, 39.035351, 31.292841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026260, 39.657047, 31.439640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705849, 39.817577, 31.261967>,  <36.513603, 39.913895, 31.155363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.705849, 39.817577, 31.261967>,  <37.026260, 39.657047, 31.439640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705849, 39.817577, 31.261967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591487, -0.416311, 0.690528,
		0.092209, 0.815857, 0.570854,
		-0.801025, 0.401325, -0.444181,
		36.465542, 39.937977, 31.128712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768429, 39.954361, 31.991886>,  <37.026260, 39.657047, 31.439640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768429, 39.954361, 31.991886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462978, 39.937237, 31.734192>,  <36.279709, 39.926964, 31.579575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462978, 39.937237, 31.734192>,  <36.768429, 39.954361, 31.991886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462978, 39.937237, 31.734192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544804, -0.492757, 0.678513,
		-0.346498, 0.869113, 0.352960,
		-0.763628, -0.042809, -0.644236,
		36.233891, 39.924393, 31.540920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259216, 40.271713, 32.369152>,  <36.768429, 39.954361, 31.991886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259216, 40.271713, 32.369152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047680, 40.105965, 32.072876>,  <35.920757, 40.006516, 31.895111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047680, 40.105965, 32.072876>,  <36.259216, 40.271713, 32.369152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047680, 40.105965, 32.072876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689444, -0.299215, 0.659649,
		-0.494966, 0.859515, -0.127449,
		-0.528844, -0.414373, -0.740689,
		35.889027, 39.981651, 31.850670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499317, 40.398426, 32.421814>,  <36.259216, 40.271713, 32.369152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499317, 40.398426, 32.421814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531723, 40.061722, 32.208321>,  <35.551167, 39.859699, 32.080223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.531723, 40.061722, 32.208321>,  <35.499317, 40.398426, 32.421814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531723, 40.061722, 32.208321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697929, -0.430207, 0.572553,
		-0.711570, 0.326125, -0.622343,
		0.081013, -0.841762, -0.533734,
		35.556026, 39.809193, 32.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784645, 40.197132, 32.282215>,  <35.499317, 40.398426, 32.421814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784645, 40.197132, 32.282215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014732, 39.875511, 32.222046>,  <35.152786, 39.682537, 32.185944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014732, 39.875511, 32.222046>,  <34.784645, 40.197132, 32.282215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014732, 39.875511, 32.222046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620349, -0.548654, 0.560487,
		-0.533187, -0.229092, -0.814389,
		0.575221, -0.804049, -0.150418,
		35.187298, 39.634296, 32.176918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286118, 39.722435, 32.167847>,  <34.784645, 40.197132, 32.282215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286118, 39.722435, 32.167847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.619610, 39.536858, 32.287613>,  <34.819706, 39.425510, 32.359470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.619610, 39.536858, 32.287613>,  <34.286118, 39.722435, 32.167847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619610, 39.536858, 32.287613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506916, -0.428121, 0.748164,
		-0.218921, -0.775545, -0.592118,
		0.833732, -0.463943, 0.299411,
		34.869728, 39.397675, 32.377438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098522, 39.160976, 32.293736>,  <34.286118, 39.722435, 32.167847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098522, 39.160976, 32.293736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.446167, 39.135189, 32.489891>,  <34.654755, 39.119717, 32.607586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.446167, 39.135189, 32.489891>,  <34.098522, 39.160976, 32.293736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446167, 39.135189, 32.489891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449542, -0.516460, 0.728821,
		0.206283, -0.853881, -0.477844,
		0.869114, -0.064467, 0.490393,
		34.706902, 39.115849, 32.637009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104778, 38.578465, 32.556309>,  <34.098522, 39.160976, 32.293736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104778, 38.578465, 32.556309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.372200, 38.762981, 32.789627>,  <34.532654, 38.873692, 32.929619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.372200, 38.762981, 32.789627>,  <34.104778, 38.578465, 32.556309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372200, 38.762981, 32.789627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483357, -0.326536, 0.812244,
		0.565152, -0.824974, 0.004662,
		0.668558, 0.461295, 0.583299,
		34.572769, 38.901371, 32.964619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257210, 38.066517, 32.986164>,  <34.104778, 38.578465, 32.556309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257210, 38.066517, 32.986164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.363167, 38.410179, 33.161289>,  <34.426743, 38.616379, 33.266365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.363167, 38.410179, 33.161289>,  <34.257210, 38.066517, 32.986164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363167, 38.410179, 33.161289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447186, -0.292800, 0.845158,
		0.854316, -0.419659, 0.306643,
		0.264893, 0.859159, 0.437810,
		34.442635, 38.667927, 33.292633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496868, 37.845329, 33.575848>,  <34.257210, 38.066517, 32.986164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496868, 37.845329, 33.575848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.396408, 38.225876, 33.647198>,  <34.336132, 38.454205, 33.690010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.396408, 38.225876, 33.647198>,  <34.496868, 37.845329, 33.575848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396408, 38.225876, 33.647198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360956, -0.263045, 0.894717,
		0.898128, 0.160322, 0.409467,
		-0.251151, 0.951370, 0.178378,
		34.321064, 38.511288, 33.700710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686119, 37.969379, 34.342949>,  <34.496868, 37.845329, 33.575848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686119, 37.969379, 34.342949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.420368, 38.242954, 34.222397>,  <34.260918, 38.407097, 34.150066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.420368, 38.242954, 34.222397>,  <34.686119, 37.969379, 34.342949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420368, 38.242954, 34.222397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485375, -0.088190, 0.869847,
		0.568340, 0.724193, 0.390556,
		-0.664381, 0.683935, -0.301383,
		34.221054, 38.448135, 34.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500721, 38.215248, 34.969421>,  <34.686119, 37.969379, 34.342949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500721, 38.215248, 34.969421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191952, 38.351768, 34.754890>,  <34.006691, 38.433681, 34.626171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.191952, 38.351768, 34.754890>,  <34.500721, 38.215248, 34.969421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191952, 38.351768, 34.754890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614630, -0.185185, 0.766770,
		0.162382, 0.921530, 0.352725,
		-0.771921, 0.341305, -0.536329,
		33.960377, 38.454159, 34.593990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.319061, 42.050072, 29.252954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992622, 41.940342, 29.049492>,  <38.796761, 41.874504, 28.927414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992622, 41.940342, 29.049492>,  <39.319061, 42.050072, 29.252954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992622, 41.940342, 29.049492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460707, -0.222566, 0.859194,
		-0.348906, 0.935527, 0.055253,
		-0.816097, -0.274323, -0.508658,
		38.747795, 41.858044, 28.896894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700054, 42.232521, 29.653448>,  <39.319061, 42.050072, 29.252954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700054, 42.232521, 29.653448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546165, 41.959053, 29.405388>,  <38.453831, 41.794971, 29.256552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546165, 41.959053, 29.405388>,  <38.700054, 42.232521, 29.653448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546165, 41.959053, 29.405388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516008, -0.397768, 0.758628,
		-0.765326, 0.611864, -0.199748,
		-0.384724, -0.683669, -0.620148,
		38.430748, 41.753952, 29.219343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894695, 42.351833, 29.713818>,  <38.700054, 42.232521, 29.653448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894695, 42.351833, 29.713818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975697, 41.986927, 29.571405>,  <38.024300, 41.767982, 29.485958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975697, 41.986927, 29.571405>,  <37.894695, 42.351833, 29.713818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975697, 41.986927, 29.571405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780385, -0.369967, 0.504108,
		-0.591601, 0.175754, -0.786841,
		0.202506, -0.912269, -0.356029,
		38.036449, 41.713245, 29.464598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245773, 42.068249, 29.587191>,  <37.894695, 42.351833, 29.713818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245773, 42.068249, 29.587191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463306, 41.732578, 29.589249>,  <37.593826, 41.531174, 29.590483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463306, 41.732578, 29.589249>,  <37.245773, 42.068249, 29.587191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463306, 41.732578, 29.589249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732341, -0.471584, 0.491207,
		-0.409783, -0.270904, -0.871028,
		0.543833, -0.839178, 0.005147,
		37.626457, 41.480824, 29.590792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742462, 41.593540, 29.379128>,  <37.245773, 42.068249, 29.587191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742462, 41.593540, 29.379128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028038, 41.366032, 29.542482>,  <37.199383, 41.229527, 29.640495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028038, 41.366032, 29.542482>,  <36.742462, 41.593540, 29.379128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028038, 41.366032, 29.542482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696531, -0.517240, 0.497301,
		-0.071616, -0.639501, -0.765447,
		0.713944, -0.568772, 0.408390,
		37.242222, 41.195400, 29.664999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460548, 40.952225, 29.424721>,  <36.742462, 41.593540, 29.379128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460548, 40.952225, 29.424721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773418, 40.920883, 29.671965>,  <36.961140, 40.902077, 29.820311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773418, 40.920883, 29.671965>,  <36.460548, 40.952225, 29.424721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773418, 40.920883, 29.671965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525524, -0.615893, 0.586942,
		0.334697, -0.783924, -0.522916,
		0.782178, -0.078357, 0.618108,
		37.008072, 40.897377, 29.857397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523304, 40.267639, 29.596611>,  <36.460548, 40.952225, 29.424721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523304, 40.267639, 29.596611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730133, 40.436172, 29.894636>,  <36.854229, 40.537292, 30.073452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730133, 40.436172, 29.894636>,  <36.523304, 40.267639, 29.596611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730133, 40.436172, 29.894636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462910, -0.594525, 0.657461,
		0.719968, -0.684849, -0.112371,
		0.517069, 0.421333, 0.745062,
		36.885254, 40.562572, 30.118155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866173, 39.746037, 30.026142>,  <36.523304, 40.267639, 29.596611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866173, 39.746037, 30.026142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814301, 40.066628, 30.259663>,  <36.783176, 40.258980, 30.399775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814301, 40.066628, 30.259663>,  <36.866173, 39.746037, 30.026142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814301, 40.066628, 30.259663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508330, -0.559252, 0.654857,
		0.851342, -0.211843, 0.479936,
		-0.129678, 0.801473, 0.583801,
		36.775398, 40.307068, 30.434803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145348, 39.564613, 30.725496>,  <36.866173, 39.746037, 30.026142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145348, 39.564613, 30.725496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859493, 39.844177, 30.736900>,  <36.687981, 40.011917, 30.743744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859493, 39.844177, 30.736900>,  <37.145348, 39.564613, 30.725496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859493, 39.844177, 30.736900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434672, -0.475648, 0.764734,
		0.548046, 0.534114, 0.643714,
		-0.714637, 0.698914, 0.028512,
		36.645103, 40.053852, 30.745455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829823, 39.623215, 30.979740>,  <37.145348, 39.564613, 30.725496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829823, 39.623215, 30.979740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059235, 39.295555, 30.982702>,  <38.196880, 39.098957, 30.984480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059235, 39.295555, 30.982702>,  <37.829823, 39.623215, 30.979740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059235, 39.295555, 30.982702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480924, 0.329375, -0.812542,
		0.663155, 0.469579, 0.582856,
		0.573531, -0.819151, 0.007405,
		38.231293, 39.049809, 30.984924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438286, 39.900753, 30.780355>,  <37.829823, 39.623215, 30.979740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438286, 39.900753, 30.780355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499306, 39.508652, 30.730019>,  <38.535915, 39.273392, 30.699816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499306, 39.508652, 30.730019>,  <38.438286, 39.900753, 30.780355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499306, 39.508652, 30.730019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677375, 0.196424, -0.708929,
		0.719647, 0.022901, 0.693962,
		0.152546, -0.980252, -0.125844,
		38.545071, 39.214577, 30.692266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181175, 39.893806, 30.496237>,  <38.438286, 39.900753, 30.780355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181175, 39.893806, 30.496237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049442, 39.527153, 30.405615>,  <38.970402, 39.307159, 30.351242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049442, 39.527153, 30.405615>,  <39.181175, 39.893806, 30.496237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049442, 39.527153, 30.405615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483849, 0.042212, -0.874133,
		0.810822, -0.397496, 0.429610,
		-0.329329, -0.916632, -0.226555,
		38.950642, 39.252163, 30.337648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699909, 39.486156, 30.223625>,  <39.181175, 39.893806, 30.496237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699909, 39.486156, 30.223625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387367, 39.272850, 30.093941>,  <39.199844, 39.144867, 30.016130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387367, 39.272850, 30.093941>,  <39.699909, 39.486156, 30.223625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387367, 39.272850, 30.093941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493689, -0.210341, -0.843818,
		0.381787, -0.819378, 0.427619,
		-0.781352, -0.533269, -0.324212,
		39.152962, 39.112869, 29.996677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929562, 38.872387, 29.927576>,  <39.699909, 39.486156, 30.223625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929562, 38.872387, 29.927576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584904, 38.958492, 29.743734>,  <39.378109, 39.010155, 29.633429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584904, 38.958492, 29.743734>,  <39.929562, 38.872387, 29.927576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584904, 38.958492, 29.743734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481621, 0.061219, -0.874239,
		-0.160054, -0.974636, -0.156423,
		-0.861640, 0.215262, -0.459606,
		39.326412, 39.023071, 29.605852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967510, 38.429146, 29.344114>,  <39.929562, 38.872387, 29.927576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967510, 38.429146, 29.344114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705559, 38.719749, 29.260866>,  <39.548386, 38.894112, 29.210918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705559, 38.719749, 29.260866>,  <39.967510, 38.429146, 29.344114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705559, 38.719749, 29.260866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489966, 0.198498, -0.848841,
		-0.575380, -0.657862, -0.485958,
		-0.654883, 0.726509, -0.208118,
		39.509094, 38.937702, 29.198431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494968, 38.232548, 28.797861>,  <39.967510, 38.429146, 29.344114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494968, 38.232548, 28.797861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514736, 38.631973, 28.806179>,  <39.526596, 38.871628, 28.811171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514736, 38.631973, 28.806179>,  <39.494968, 38.232548, 28.797861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514736, 38.631973, 28.806179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480688, -0.005531, -0.876874,
		-0.875498, 0.053335, -0.480270,
		0.049424, 0.998561, 0.020795,
		39.529564, 38.931541, 28.812418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646229, 38.438622, 28.111141>,  <39.494968, 38.232548, 28.797861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646229, 38.438622, 28.111141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673759, 38.803909, 28.271786>,  <39.690277, 39.023083, 28.368174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673759, 38.803909, 28.271786>,  <39.646229, 38.438622, 28.111141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673759, 38.803909, 28.271786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391871, 0.345463, -0.852697,
		-0.917442, 0.216070, -0.334086,
		0.068828, 0.913219, 0.401614,
		39.694408, 39.077873, 28.392269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213818, 38.871258, 27.779205>,  <39.646229, 38.438622, 28.111141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213818, 38.871258, 27.779205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517288, 39.088715, 27.922798>,  <39.699371, 39.219189, 28.008953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517288, 39.088715, 27.922798>,  <39.213818, 38.871258, 27.779205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517288, 39.088715, 27.922798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250845, 0.264775, -0.931113,
		-0.601243, 0.796458, 0.064507,
		0.758672, 0.543644, 0.358981,
		39.744888, 39.251808, 28.030493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173557, 39.464497, 27.401960>,  <39.213818, 38.871258, 27.779205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173557, 39.464497, 27.401960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530800, 39.474663, 27.581612>,  <39.745144, 39.480762, 27.689404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530800, 39.474663, 27.581612>,  <39.173557, 39.464497, 27.401960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530800, 39.474663, 27.581612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435218, 0.203750, -0.876967,
		-0.113795, 0.978693, 0.170911,
		0.893105, 0.025411, 0.449130,
		39.798733, 39.482285, 27.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537254, 39.987053, 27.045233>,  <39.173557, 39.464497, 27.401960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537254, 39.987053, 27.045233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826588, 39.798466, 27.247026>,  <40.000187, 39.685314, 27.368103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826588, 39.798466, 27.247026>,  <39.537254, 39.987053, 27.045233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826588, 39.798466, 27.247026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615628, 0.109457, -0.780398,
		0.312714, 0.875064, 0.369423,
		0.723334, -0.471469, 0.504485,
		40.043587, 39.657024, 27.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049263, 40.493301, 27.105482>,  <39.537254, 39.987053, 27.045233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049263, 40.493301, 27.105482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230400, 40.137405, 27.128448>,  <40.339085, 39.923870, 27.142229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230400, 40.137405, 27.128448>,  <40.049263, 40.493301, 27.105482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230400, 40.137405, 27.128448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634948, 0.276617, -0.721335,
		0.625916, 0.363111, 0.690202,
		0.452847, -0.889738, 0.057418,
		40.366253, 39.870483, 27.145674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722622, 40.627167, 26.791496>,  <40.049263, 40.493301, 27.105482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722622, 40.627167, 26.791496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698929, 40.228001, 26.801708>,  <40.684715, 39.988499, 26.807835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698929, 40.228001, 26.801708>,  <40.722622, 40.627167, 26.791496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698929, 40.228001, 26.801708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471476, -0.050507, -0.880432,
		0.879888, -0.040110, 0.473486,
		-0.059228, -0.997918, 0.025530,
		40.681160, 39.928627, 26.809366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424988, 40.397354, 26.627354>,  <40.722622, 40.627167, 26.791496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424988, 40.397354, 26.627354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147160, 40.123650, 26.538490>,  <40.980465, 39.959427, 26.485172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147160, 40.123650, 26.538490>,  <41.424988, 40.397354, 26.627354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147160, 40.123650, 26.538490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396255, -0.106130, -0.911986,
		0.600463, -0.721468, 0.344858,
		-0.694568, -0.684266, -0.222159,
		40.938789, 39.918369, 26.471842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.387703, 38.719936, 24.710184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.737259, 38.784801, 24.893497>,  <32.946991, 38.823719, 25.003485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.737259, 38.784801, 24.893497>,  <32.387703, 38.719936, 24.710184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737259, 38.784801, 24.893497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248090, -0.661946, 0.707304,
		0.418057, -0.731800, -0.538235,
		0.873888, 0.162163, 0.458283,
		32.999424, 38.833450, 25.030983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730469, 38.006622, 24.933477>,  <32.387703, 38.719936, 24.710184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730469, 38.006622, 24.933477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885937, 38.293140, 25.165293>,  <32.979218, 38.465050, 25.304382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885937, 38.293140, 25.165293>,  <32.730469, 38.006622, 24.933477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885937, 38.293140, 25.165293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155443, -0.670949, 0.725028,
		0.908172, -0.191709, -0.372118,
		0.388667, 0.716292, 0.579537,
		33.002537, 38.508030, 25.339153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175110, 37.690651, 25.391632>,  <32.730469, 38.006622, 24.933477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175110, 37.690651, 25.391632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.139816, 38.033783, 25.594152>,  <33.118641, 38.239662, 25.715664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.139816, 38.033783, 25.594152>,  <33.175110, 37.690651, 25.391632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139816, 38.033783, 25.594152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203483, -0.482043, 0.852191,
		0.975095, 0.178212, -0.132024,
		-0.088230, 0.857832, 0.506300,
		33.113346, 38.291134, 25.746042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779770, 37.874458, 25.862629>,  <33.175110, 37.690651, 25.391632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779770, 37.874458, 25.862629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484158, 38.097614, 26.013670>,  <33.306789, 38.231510, 26.104294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.484158, 38.097614, 26.013670>,  <33.779770, 37.874458, 25.862629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484158, 38.097614, 26.013670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160130, -0.398974, 0.902872,
		0.654361, 0.727718, 0.205520,
		-0.739034, 0.557894, 0.377602,
		33.262447, 38.264984, 26.126951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013996, 38.415703, 26.351669>,  <33.779770, 37.874458, 25.862629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013996, 38.415703, 26.351669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629768, 38.349983, 26.441387>,  <33.399231, 38.310551, 26.495218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629768, 38.349983, 26.441387>,  <34.013996, 38.415703, 26.351669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629768, 38.349983, 26.441387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248837, -0.148157, 0.957147,
		-0.124030, 0.975220, 0.183200,
		-0.960571, -0.164302, 0.224295,
		33.341599, 38.300694, 26.508677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143448, 38.348858, 26.958500>,  <34.013996, 38.415703, 26.351669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143448, 38.348858, 26.958500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745857, 38.319576, 26.925875>,  <33.507301, 38.302006, 26.906300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745857, 38.319576, 26.925875>,  <34.143448, 38.348858, 26.958500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745857, 38.319576, 26.925875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064471, -0.211263, 0.975301,
		-0.088627, 0.974684, 0.205271,
		-0.993976, -0.073204, -0.081562,
		33.447666, 38.297615, 26.901405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703632, 38.824108, 27.491209>,  <34.143448, 38.348858, 26.958500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703632, 38.824108, 27.491209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.498413, 38.497501, 27.385311>,  <33.375282, 38.301537, 27.321774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.498413, 38.497501, 27.385311>,  <33.703632, 38.824108, 27.491209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498413, 38.497501, 27.385311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086784, -0.257505, 0.962372,
		-0.853962, 0.516718, 0.061252,
		-0.513047, -0.816513, -0.264742,
		33.344498, 38.252548, 27.305889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176281, 38.795574, 27.966497>,  <33.703632, 38.824108, 27.491209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176281, 38.795574, 27.966497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213314, 38.431389, 27.805262>,  <33.235535, 38.212875, 27.708519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.213314, 38.431389, 27.805262>,  <33.176281, 38.795574, 27.966497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213314, 38.431389, 27.805262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106229, -0.411550, 0.905175,
		-0.990022, -0.040982, -0.134819,
		0.092580, -0.910465, -0.403091,
		33.241089, 38.158249, 27.684334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674549, 38.390926, 28.311344>,  <33.176281, 38.795574, 27.966497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674549, 38.390926, 28.311344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.941723, 38.131741, 28.164917>,  <33.102028, 37.976231, 28.077061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.941723, 38.131741, 28.164917>,  <32.674549, 38.390926, 28.311344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941723, 38.131741, 28.164917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011470, -0.482860, 0.875622,
		-0.744132, -0.589057, -0.315086,
		0.667934, -0.647965, -0.366069,
		33.142101, 37.937351, 28.055096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396038, 37.678993, 28.405706>,  <32.674549, 38.390926, 28.311344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396038, 37.678993, 28.405706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790447, 37.625401, 28.366102>,  <33.027092, 37.593246, 28.342340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790447, 37.625401, 28.366102>,  <32.396038, 37.678993, 28.405706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790447, 37.625401, 28.366102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010010, -0.545588, 0.837994,
		-0.166294, -0.827274, -0.536623,
		0.986025, -0.133982, -0.099009,
		33.086254, 37.585205, 28.336399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426949, 37.038258, 28.403696>,  <32.396038, 37.678993, 28.405706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426949, 37.038258, 28.403696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.783619, 37.190163, 28.502245>,  <32.997620, 37.281307, 28.561375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.783619, 37.190163, 28.502245>,  <32.426949, 37.038258, 28.403696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783619, 37.190163, 28.502245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065439, -0.430395, 0.900265,
		0.447927, -0.818864, -0.358920,
		0.891672, 0.379765, 0.246372,
		33.051121, 37.304092, 28.576157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753319, 36.470234, 28.677620>,  <32.426949, 37.038258, 28.403696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753319, 36.470234, 28.677620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971188, 36.774658, 28.818546>,  <33.101910, 36.957314, 28.903103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.971188, 36.774658, 28.818546>,  <32.753319, 36.470234, 28.677620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971188, 36.774658, 28.818546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219729, -0.534926, 0.815827,
		0.809354, -0.366942, -0.458584,
		0.544669, 0.761057, 0.352317,
		33.134590, 37.002975, 28.924242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388737, 36.188625, 28.980667>,  <32.753319, 36.470234, 28.677620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388737, 36.188625, 28.980667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307178, 36.536388, 29.160690>,  <33.258244, 36.745049, 29.268705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307178, 36.536388, 29.160690>,  <33.388737, 36.188625, 28.980667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307178, 36.536388, 29.160690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130179, -0.479711, 0.867716,
		0.970299, 0.118333, 0.210989,
		-0.203894, 0.869411, 0.450059,
		33.246010, 36.797211, 29.295708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702351, 36.124023, 29.612522>,  <33.388737, 36.188625, 28.980667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702351, 36.124023, 29.612522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466415, 36.442116, 29.668673>,  <33.324856, 36.632969, 29.702362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466415, 36.442116, 29.668673>,  <33.702351, 36.124023, 29.612522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466415, 36.442116, 29.668673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153485, -0.281066, 0.947335,
		0.792802, 0.537228, 0.287839,
		-0.589837, 0.795228, 0.140374,
		33.289463, 36.680683, 29.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447594, 36.029324, 29.552103>,  <33.702351, 36.124023, 29.612522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447594, 36.029324, 29.552103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.520176, 35.652058, 29.440741>,  <34.563725, 35.425697, 29.373924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.520176, 35.652058, 29.440741>,  <34.447594, 36.029324, 29.552103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520176, 35.652058, 29.440741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044563, 0.290700, -0.955776,
		0.982388, 0.161027, 0.094780,
		0.181458, -0.943167, -0.278405,
		34.574612, 35.369106, 29.357220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971931, 36.043900, 29.050097>,  <34.447594, 36.029324, 29.552103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971931, 36.043900, 29.050097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823959, 35.679134, 28.979019>,  <34.735176, 35.460278, 28.936373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823959, 35.679134, 28.979019>,  <34.971931, 36.043900, 29.050097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823959, 35.679134, 28.979019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191525, 0.112302, -0.975042,
		0.909105, -0.394727, 0.133110,
		-0.369927, -0.911909, -0.177695,
		34.712982, 35.405563, 28.925711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417866, 35.753757, 28.659430>,  <34.971931, 36.043900, 29.050097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417866, 35.753757, 28.659430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079235, 35.556263, 28.579899>,  <34.876057, 35.437767, 28.532181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079235, 35.556263, 28.579899>,  <35.417866, 35.753757, 28.659430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079235, 35.556263, 28.579899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157133, 0.125067, -0.979626,
		0.508547, -0.860569, -0.028296,
		-0.846575, -0.493740, -0.198827,
		34.825264, 35.408142, 28.520250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569191, 35.213078, 28.182596>,  <35.417866, 35.753757, 28.659430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569191, 35.213078, 28.182596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176537, 35.235535, 28.109665>,  <34.940945, 35.249008, 28.065907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176537, 35.235535, 28.109665>,  <35.569191, 35.213078, 28.182596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176537, 35.235535, 28.109665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178472, -0.067398, -0.981634,
		-0.067398, -0.996145, 0.056140,
		0.981634, -0.056140, 0.182327,
		34.882046, 35.252377, 28.054966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441597, 34.728836, 27.605873>,  <35.569191, 35.213078, 28.182596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441597, 34.728836, 27.605873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117359, 34.962971, 27.612961>,  <34.922817, 35.103451, 27.617214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117359, 34.962971, 27.612961>,  <35.441597, 34.728836, 27.605873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117359, 34.962971, 27.612961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060786, 0.114198, -0.991597,
		-0.582440, -0.802709, -0.128149,
		-0.810598, 0.585335, 0.017720,
		34.874180, 35.138573, 27.618277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044559, 34.549324, 27.042734>,  <35.441597, 34.728836, 27.605873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044559, 34.549324, 27.042734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915462, 34.918182, 27.128042>,  <34.838005, 35.139496, 27.179228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915462, 34.918182, 27.128042>,  <35.044559, 34.549324, 27.042734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915462, 34.918182, 27.128042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022956, 0.217637, -0.975760,
		-0.946210, -0.319811, -0.049071,
		-0.322738, 0.922147, 0.213272,
		34.818642, 35.194828, 27.192024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374870, 34.617447, 26.608873>,  <35.044559, 34.549324, 27.042734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374870, 34.617447, 26.608873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518703, 34.981834, 26.689709>,  <34.605003, 35.200466, 26.738211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518703, 34.981834, 26.689709>,  <34.374870, 34.617447, 26.608873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518703, 34.981834, 26.689709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079911, 0.185718, -0.979349,
		-0.929684, 0.368309, -0.006014,
		0.359586, 0.910965, 0.202091,
		34.626579, 35.255123, 26.750336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976795, 35.163494, 26.309114>,  <34.374870, 34.617447, 26.608873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976795, 35.163494, 26.309114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343201, 35.322956, 26.326984>,  <34.563042, 35.418633, 26.337706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343201, 35.322956, 26.326984>,  <33.976795, 35.163494, 26.309114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343201, 35.322956, 26.326984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058211, 0.242280, -0.968458,
		-0.396905, 0.884519, 0.245138,
		0.916012, 0.398656, 0.044673,
		34.618004, 35.442554, 26.340387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995960, 35.699738, 25.962521>,  <33.976795, 35.163494, 26.309114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995960, 35.699738, 25.962521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395950, 35.696999, 25.963900>,  <34.635944, 35.695354, 25.964727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395950, 35.696999, 25.963900>,  <33.995960, 35.699738, 25.962521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395950, 35.696999, 25.963900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005159, 0.268173, -0.963357,
		0.005669, 0.963346, 0.268200,
		0.999971, -0.006845, 0.003449,
		34.695942, 35.694946, 25.964935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088188, 36.253357, 25.592682>,  <33.995960, 35.699738, 25.962521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088188, 36.253357, 25.592682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457985, 36.101002, 25.586555>,  <34.679863, 36.009590, 25.582880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457985, 36.101002, 25.586555>,  <34.088188, 36.253357, 25.592682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457985, 36.101002, 25.586555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121116, 0.331596, -0.935615,
		0.361445, 0.863115, 0.352690,
		0.924494, -0.380889, -0.015316,
		34.735332, 35.986736, 25.581961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626934, 36.842506, 25.628071>,  <34.088188, 36.253357, 25.592682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626934, 36.842506, 25.628071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795471, 36.516392, 25.469187>,  <34.896595, 36.320724, 25.373856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795471, 36.516392, 25.469187>,  <34.626934, 36.842506, 25.628071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795471, 36.516392, 25.469187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461004, 0.569725, -0.680359,
		0.780987, 0.103552, 0.615902,
		0.421347, -0.815286, -0.397210,
		34.921875, 36.271805, 25.350023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350517, 36.953400, 25.630924>,  <34.626934, 36.842506, 25.628071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350517, 36.953400, 25.630924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322685, 36.681854, 25.338539>,  <35.305984, 36.518929, 25.163109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322685, 36.681854, 25.338539>,  <35.350517, 36.953400, 25.630924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322685, 36.681854, 25.338539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495762, 0.612315, -0.615866,
		0.865666, -0.405236, 0.293949,
		-0.069582, -0.678863, -0.730961,
		35.301811, 36.478195, 25.119251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954956, 36.768925, 25.451571>,  <35.350517, 36.953400, 25.630924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954956, 36.768925, 25.451571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723133, 36.694763, 25.134148>,  <35.584038, 36.650265, 24.943693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723133, 36.694763, 25.134148>,  <35.954956, 36.768925, 25.451571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723133, 36.694763, 25.134148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643863, 0.492742, -0.585359,
		0.499555, -0.850192, -0.166189,
		-0.579556, -0.185416, -0.793559,
		35.549263, 36.639141, 24.896080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381374, 36.857651, 24.942791>,  <35.954956, 36.768925, 25.451571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381374, 36.857651, 24.942791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028412, 36.877968, 24.755695>,  <35.816635, 36.890160, 24.643438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028412, 36.877968, 24.755695>,  <36.381374, 36.857651, 24.942791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028412, 36.877968, 24.755695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366517, 0.697554, -0.615698,
		0.295000, -0.714730, -0.634142,
		-0.882406, 0.050793, -0.467739,
		35.763691, 36.893204, 24.615374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724483, 36.284931, 24.544266>,  <36.381374, 36.857651, 24.942791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724483, 36.284931, 24.544266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115704, 36.223415, 24.488033>,  <37.350437, 36.186504, 24.454294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115704, 36.223415, 24.488033>,  <36.724483, 36.284931, 24.544266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115704, 36.223415, 24.488033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037717, -0.794229, 0.606446,
		-0.204922, -0.587833, -0.782598,
		0.978051, -0.153791, -0.140583,
		37.409119, 36.177277, 24.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751381, 35.587360, 24.531139>,  <36.724483, 36.284931, 24.544266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751381, 35.587360, 24.531139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129459, 35.700893, 24.595682>,  <37.356308, 35.769012, 24.634407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129459, 35.700893, 24.595682>,  <36.751381, 35.587360, 24.531139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129459, 35.700893, 24.595682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142635, -0.803528, 0.577926,
		0.293690, -0.523240, -0.799979,
		0.945199, 0.283836, 0.161356,
		37.413017, 35.786045, 24.644089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151455, 35.067642, 24.392851>,  <36.751381, 35.587360, 24.531139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151455, 35.067642, 24.392851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333057, 35.280712, 24.678547>,  <37.442020, 35.408554, 24.849964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333057, 35.280712, 24.678547>,  <37.151455, 35.067642, 24.392851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333057, 35.280712, 24.678547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008909, -0.798862, 0.601449,
		0.890953, -0.279425, -0.357944,
		0.454007, 0.532674, 0.714238,
		37.469261, 35.440514, 24.892818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542553, 34.678520, 24.708292>,  <37.151455, 35.067642, 24.392851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542553, 34.678520, 24.708292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557018, 34.976494, 24.974754>,  <37.565697, 35.155277, 25.134632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557018, 34.976494, 24.974754>,  <37.542553, 34.678520, 24.708292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557018, 34.976494, 24.974754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153749, -0.662801, 0.732841,
		0.987448, 0.075918, -0.138503,
		0.036164, 0.744937, 0.666154,
		37.567867, 35.199974, 25.174601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169373, 34.546772, 25.058826>,  <37.542553, 34.678520, 24.708292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169373, 34.546772, 25.058826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922615, 34.776630, 25.273947>,  <37.774563, 34.914543, 25.403019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922615, 34.776630, 25.273947>,  <38.169373, 34.546772, 25.058826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922615, 34.776630, 25.273947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237476, -0.515567, 0.823284,
		0.750368, 0.635590, 0.181584,
		-0.616890, 0.574644, 0.537802,
		37.737549, 34.949024, 25.435287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572762, 34.702526, 25.770245>,  <38.169373, 34.546772, 25.058826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572762, 34.702526, 25.770245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199284, 34.806755, 25.868486>,  <37.975197, 34.869293, 25.927431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199284, 34.806755, 25.868486>,  <38.572762, 34.702526, 25.770245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199284, 34.806755, 25.868486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135243, -0.378472, 0.915679,
		0.331554, 0.888179, 0.318136,
		-0.933692, 0.260571, 0.245604,
		37.919174, 34.884926, 25.942167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581829, 35.173424, 26.427708>,  <38.572762, 34.702526, 25.770245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581829, 35.173424, 26.427708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.232738, 34.980324, 26.398594>,  <38.023285, 34.864464, 26.381126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.232738, 34.980324, 26.398594>,  <38.581829, 35.173424, 26.427708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232738, 34.980324, 26.398594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028383, -0.199002, 0.979588,
		-0.487378, 0.852850, 0.187377,
		-0.872730, -0.482748, -0.072783,
		37.970921, 34.835499, 26.376759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142567, 35.441132, 26.913418>,  <38.581829, 35.173424, 26.427708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142567, 35.441132, 26.913418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003235, 35.074913, 26.832981>,  <37.919636, 34.855183, 26.784719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003235, 35.074913, 26.832981>,  <38.142567, 35.441132, 26.913418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003235, 35.074913, 26.832981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021938, -0.222430, 0.974702,
		-0.937115, 0.335106, 0.097564,
		-0.348329, -0.915549, -0.201091,
		37.898735, 34.800247, 26.772654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875797, 35.348969, 27.486616>,  <38.142567, 35.441132, 26.913418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875797, 35.348969, 27.486616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887413, 34.989563, 27.311424>,  <37.894382, 34.773918, 27.206310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887413, 34.989563, 27.311424>,  <37.875797, 35.348969, 27.486616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887413, 34.989563, 27.311424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139873, -0.430199, 0.891832,
		-0.989743, -0.087163, 0.113183,
		0.029044, -0.898516, -0.437979,
		37.896126, 34.720009, 27.180031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381477, 34.886227, 27.808676>,  <37.875797, 35.348969, 27.486616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381477, 34.886227, 27.808676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664677, 34.660519, 27.638809>,  <37.834595, 34.525093, 27.536890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664677, 34.660519, 27.638809>,  <37.381477, 34.886227, 27.808676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664677, 34.660519, 27.638809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013271, -0.590593, 0.806861,
		-0.706090, -0.576891, -0.410650,
		0.707998, -0.564267, -0.424668,
		37.877075, 34.491238, 27.511410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169174, 34.181351, 27.921043>,  <37.381477, 34.886227, 27.808676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169174, 34.181351, 27.921043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560978, 34.146328, 27.848499>,  <37.796062, 34.125317, 27.804974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560978, 34.146328, 27.848499>,  <37.169174, 34.181351, 27.921043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560978, 34.146328, 27.848499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095039, -0.592995, 0.799578,
		-0.177551, -0.800432, -0.572525,
		0.979512, -0.087554, -0.181359,
		37.854832, 34.120060, 27.794092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296444, 33.509182, 27.920214>,  <37.169174, 34.181351, 27.921043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296444, 33.509182, 27.920214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657749, 33.674004, 27.968092>,  <37.874531, 33.772896, 27.996819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657749, 33.674004, 27.968092>,  <37.296444, 33.509182, 27.920214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657749, 33.674004, 27.968092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143228, -0.552494, 0.821119,
		0.404477, -0.724542, -0.558065,
		0.903263, 0.412054, 0.119697,
		37.928726, 33.797619, 28.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711098, 33.020866, 28.058609>,  <37.296444, 33.509182, 27.920214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711098, 33.020866, 28.058609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942314, 33.316586, 28.196777>,  <38.081043, 33.494019, 28.279678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942314, 33.316586, 28.196777>,  <37.711098, 33.020866, 28.058609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942314, 33.316586, 28.196777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084336, -0.475161, 0.875848,
		0.811641, -0.477141, -0.337009,
		0.578036, 0.739296, 0.345420,
		38.115726, 33.538376, 28.300404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273701, 32.722305, 28.478939>,  <37.711098, 33.020866, 28.058609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273701, 32.722305, 28.478939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271652, 33.099918, 28.610863>,  <38.270424, 33.326485, 28.690018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271652, 33.099918, 28.610863>,  <38.273701, 32.722305, 28.478939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271652, 33.099918, 28.610863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138593, -0.325962, 0.935169,
		0.990336, 0.050495, -0.129169,
		-0.005117, 0.944033, 0.329810,
		38.270119, 33.383129, 28.709806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.679943, 39.738621, 25.986988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284172, 39.693703, 26.023693>,  <41.046707, 39.666752, 26.045715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284172, 39.693703, 26.023693>,  <41.679943, 39.738621, 25.986988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284172, 39.693703, 26.023693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066466, -0.211239, -0.975172,
		0.128888, -0.970963, 0.201542,
		-0.989429, -0.112293, 0.091762,
		40.987343, 39.660015, 26.051222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510509, 39.033340, 25.668184>,  <41.679943, 39.738621, 25.986988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510509, 39.033340, 25.668184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200424, 39.285137, 25.647057>,  <41.014374, 39.436214, 25.634380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200424, 39.285137, 25.647057>,  <41.510509, 39.033340, 25.668184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200424, 39.285137, 25.647057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013885, -0.100573, -0.994833,
		-0.631548, -0.770474, 0.086706,
		-0.775213, 0.629488, -0.052818,
		40.967861, 39.473984, 25.631210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312408, 38.948784, 25.049856>,  <41.510509, 39.033340, 25.668184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312408, 38.948784, 25.049856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073742, 39.260731, 25.125528>,  <40.930542, 39.447899, 25.170933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073742, 39.260731, 25.125528>,  <41.312408, 38.948784, 25.049856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073742, 39.260731, 25.125528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039433, 0.263953, -0.963729,
		-0.801517, -0.567569, -0.188246,
		-0.596671, 0.779868, 0.189182,
		40.894741, 39.494690, 25.182283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772327, 38.879734, 24.629864>,  <41.312408, 38.948784, 25.049856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772327, 38.879734, 24.629864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.804008, 39.268295, 24.719404>,  <40.823017, 39.501431, 24.773129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.804008, 39.268295, 24.719404>,  <40.772327, 38.879734, 24.629864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804008, 39.268295, 24.719404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104548, 0.215225, -0.970952,
		-0.991361, 0.100303, -0.084512,
		0.079200, 0.971400, 0.223852,
		40.827770, 39.559715, 24.786560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225632, 39.209465, 24.115147>,  <40.772327, 38.879734, 24.629864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225632, 39.209465, 24.115147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.472031, 39.490654, 24.257345>,  <40.619869, 39.659367, 24.342665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.472031, 39.490654, 24.257345>,  <40.225632, 39.209465, 24.115147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472031, 39.490654, 24.257345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017911, 0.438667, -0.898471,
		-0.787543, 0.559826, 0.257628,
		0.616000, 0.702970, 0.355496,
		40.656830, 39.701546, 24.363995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855053, 39.892292, 23.843008>,  <40.225632, 39.209465, 24.115147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855053, 39.892292, 23.843008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.243397, 39.951664, 23.918262>,  <40.476402, 39.987286, 23.963415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.243397, 39.951664, 23.918262>,  <39.855053, 39.892292, 23.843008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243397, 39.951664, 23.918262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101774, 0.455378, -0.884462,
		-0.216950, 0.877838, 0.427004,
		0.970863, 0.148426, 0.188135,
		40.534657, 39.996193, 23.974703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920532, 40.537685, 23.711990>,  <39.855053, 39.892292, 23.843008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920532, 40.537685, 23.711990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306980, 40.434563, 23.707201>,  <40.538849, 40.372688, 23.704327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306980, 40.434563, 23.707201>,  <39.920532, 40.537685, 23.711990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306980, 40.434563, 23.707201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090145, 0.380561, -0.920352,
		0.241826, 0.888094, 0.390909,
		0.966123, -0.257803, -0.011973,
		40.596817, 40.357224, 23.703609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406460, 41.119686, 23.713991>,  <39.920532, 40.537685, 23.711990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406460, 41.119686, 23.713991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.602295, 40.807285, 23.558897>,  <40.719795, 40.619843, 23.465841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.602295, 40.807285, 23.558897>,  <40.406460, 41.119686, 23.713991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602295, 40.807285, 23.558897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012282, 0.450803, -0.892539,
		0.871868, 0.432212, 0.230299,
		0.489586, -0.781005, -0.387733,
		40.749172, 40.572983, 23.442577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935188, 41.410023, 23.287977>,  <40.406460, 41.119686, 23.713991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935188, 41.410023, 23.287977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886230, 41.033386, 23.162485>,  <40.856857, 40.807404, 23.087191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886230, 41.033386, 23.162485>,  <40.935188, 41.410023, 23.287977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886230, 41.033386, 23.162485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205766, 0.333312, -0.920089,
		0.970917, -0.048059, -0.234543,
		-0.122395, -0.941591, -0.313729,
		40.849510, 40.750908, 23.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379219, 41.363789, 22.650618>,  <40.935188, 41.410023, 23.287977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379219, 41.363789, 22.650618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131676, 41.050694, 22.624262>,  <40.983150, 40.862839, 22.608448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131676, 41.050694, 22.624262>,  <41.379219, 41.363789, 22.650618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131676, 41.050694, 22.624262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214289, 0.248935, -0.944517,
		0.755707, -0.570403, -0.321787,
		-0.618859, -0.782733, -0.065891,
		40.946018, 40.815872, 22.604494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645950, 40.893337, 21.986979>,  <41.379219, 41.363789, 22.650618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645950, 40.893337, 21.986979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259346, 40.817348, 22.055992>,  <41.027382, 40.771755, 22.097401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259346, 40.817348, 22.055992>,  <41.645950, 40.893337, 21.986979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259346, 40.817348, 22.055992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176254, 0.002745, -0.984341,
		0.186523, -0.981786, -0.036136,
		-0.966511, -0.189971, 0.172532,
		40.969391, 40.760357, 22.107752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407986, 40.692783, 21.367678>,  <41.645950, 40.893337, 21.986979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407986, 40.692783, 21.367678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.054596, 40.723942, 21.552462>,  <40.842564, 40.742638, 21.663332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.054596, 40.723942, 21.552462>,  <41.407986, 40.692783, 21.367678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054596, 40.723942, 21.552462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462765, 0.008457, -0.886441,
		-0.072965, -0.996925, 0.028580,
		-0.883473, 0.077905, 0.461959,
		40.789555, 40.747311, 21.691050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989876, 40.078575, 21.132103>,  <41.407986, 40.692783, 21.367678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989876, 40.078575, 21.132103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779476, 40.401825, 21.238131>,  <40.653236, 40.595776, 21.301746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779476, 40.401825, 21.238131>,  <40.989876, 40.078575, 21.132103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779476, 40.401825, 21.238131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435199, 0.012021, -0.900254,
		-0.730703, -0.588891, 0.345371,
		-0.526000, 0.808123, 0.265068,
		40.621677, 40.644260, 21.317652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280777, 40.268841, 20.705557>,  <40.989876, 40.078575, 21.132103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280777, 40.268841, 20.705557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293869, 40.390804, 21.086285>,  <40.301723, 40.463982, 21.314722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293869, 40.390804, 21.086285>,  <40.280777, 40.268841, 20.705557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293869, 40.390804, 21.086285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677463, -0.706943, 0.203163,
		0.734828, 0.638173, -0.229702,
		0.032732, 0.304905, 0.951820,
		40.303688, 40.482277, 21.371830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826576, 39.896614, 21.163275>,  <40.280777, 40.268841, 20.705557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826576, 39.896614, 21.163275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503700, 39.897369, 20.927160>,  <39.309975, 39.897823, 20.785492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.503700, 39.897369, 20.927160>,  <39.826576, 39.896614, 21.163275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503700, 39.897369, 20.927160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548572, -0.371660, 0.748958,
		-0.217973, 0.928367, 0.301036,
		-0.807191, 0.001888, -0.590288,
		39.261543, 39.897934, 20.750074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222115, 40.350895, 21.491833>,  <39.826576, 39.896614, 21.163275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222115, 40.350895, 21.491833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.099052, 40.072903, 21.231876>,  <39.025215, 39.906109, 21.075903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.099052, 40.072903, 21.231876>,  <39.222115, 40.350895, 21.491833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099052, 40.072903, 21.231876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528918, -0.442855, 0.723965,
		-0.790946, 0.566467, -0.231342,
		-0.307652, -0.694978, -0.649889,
		39.006756, 39.864410, 21.036909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594669, 40.300224, 21.664639>,  <39.222115, 40.350895, 21.491833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594669, 40.300224, 21.664639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680302, 39.953861, 21.483810>,  <38.731682, 39.746044, 21.375313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680302, 39.953861, 21.483810>,  <38.594669, 40.300224, 21.664639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680302, 39.953861, 21.483810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428514, -0.499144, 0.753147,
		-0.877807, 0.032485, -0.477912,
		0.214081, -0.865910, -0.452072,
		38.744526, 39.694088, 21.348188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053669, 39.874653, 21.799580>,  <38.594669, 40.300224, 21.664639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053669, 39.874653, 21.799580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312866, 39.605984, 21.655933>,  <38.468384, 39.444782, 21.569746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312866, 39.605984, 21.655933>,  <38.053669, 39.874653, 21.799580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312866, 39.605984, 21.655933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519734, -0.734603, 0.436159,
		-0.556763, -0.095983, -0.825107,
		0.647990, -0.671673, -0.359114,
		38.507263, 39.404480, 21.548199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645298, 39.256035, 21.519756>,  <38.053669, 39.874653, 21.799580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645298, 39.256035, 21.519756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015274, 39.141525, 21.619785>,  <38.237259, 39.072819, 21.679802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015274, 39.141525, 21.619785>,  <37.645298, 39.256035, 21.519756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015274, 39.141525, 21.619785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374584, -0.798269, 0.471650,
		0.064604, -0.529920, -0.845583,
		0.924940, -0.286272, 0.250071,
		38.292755, 39.055645, 21.694807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695576, 38.484406, 21.492590>,  <37.645298, 39.256035, 21.519756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695576, 38.484406, 21.492590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986130, 38.577099, 21.751406>,  <38.160461, 38.632717, 21.906696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986130, 38.577099, 21.751406>,  <37.695576, 38.484406, 21.492590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986130, 38.577099, 21.751406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295537, -0.744642, 0.598469,
		0.620501, -0.625944, -0.472411,
		0.726385, 0.231736, 0.647041,
		38.204044, 38.646618, 21.945518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727493, 37.867619, 21.856762>,  <37.695576, 38.484406, 21.492590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727493, 37.867619, 21.856762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979706, 38.105927, 22.055752>,  <38.131035, 38.248913, 22.175146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979706, 38.105927, 22.055752>,  <37.727493, 37.867619, 21.856762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979706, 38.105927, 22.055752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033485, -0.661228, 0.749437,
		0.775438, -0.455888, -0.436877,
		0.630535, 0.595772, 0.497476,
		38.168865, 38.284657, 22.204994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248966, 37.389328, 22.054436>,  <37.727493, 37.867619, 21.856762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248966, 37.389328, 22.054436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261417, 37.704613, 22.300283>,  <38.268887, 37.893784, 22.447792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261417, 37.704613, 22.300283>,  <38.248966, 37.389328, 22.054436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261417, 37.704613, 22.300283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031736, -0.615388, 0.787585,
		0.999012, -0.005008, -0.044168,
		0.031124, 0.788209, 0.614620,
		38.270756, 37.941074, 22.484669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668438, 37.178955, 22.585186>,  <38.248966, 37.389328, 22.054436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668438, 37.178955, 22.585186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.458008, 37.487373, 22.728701>,  <38.331749, 37.672424, 22.814810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.458008, 37.487373, 22.728701>,  <38.668438, 37.178955, 22.585186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458008, 37.487373, 22.728701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146753, -0.497865, 0.854748,
		0.837679, 0.397010, 0.375069,
		-0.526077, 0.771047, 0.358789,
		38.300186, 37.718689, 22.836338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028103, 37.419868, 23.277969>,  <38.668438, 37.178955, 22.585186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028103, 37.419868, 23.277969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.644348, 37.522640, 23.231384>,  <38.414097, 37.584305, 23.203434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.644348, 37.522640, 23.231384>,  <39.028103, 37.419868, 23.277969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644348, 37.522640, 23.231384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254805, -0.612144, 0.748568,
		0.121037, 0.747842, 0.652749,
		-0.959388, 0.256928, -0.116462,
		38.356533, 37.599720, 23.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861881, 37.529629, 23.971933>,  <39.028103, 37.419868, 23.277969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861881, 37.529629, 23.971933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519661, 37.487026, 23.769274>,  <38.314331, 37.461464, 23.647678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519661, 37.487026, 23.769274>,  <38.861881, 37.529629, 23.971933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519661, 37.487026, 23.769274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335752, -0.630780, 0.699562,
		-0.394093, 0.768618, 0.503903,
		-0.855548, -0.106506, -0.506651,
		38.262997, 37.455074, 23.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381699, 37.550194, 24.565863>,  <38.861881, 37.529629, 23.971933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381699, 37.550194, 24.565863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184715, 37.400784, 24.251419>,  <38.066525, 37.311138, 24.062754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.184715, 37.400784, 24.251419>,  <38.381699, 37.550194, 24.565863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184715, 37.400784, 24.251419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482419, -0.634624, 0.603759,
		-0.724403, 0.676557, 0.132327,
		-0.492455, -0.373528, -0.786107,
		38.036980, 37.288727, 24.015587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607243, 37.446274, 24.769777>,  <38.381699, 37.550194, 24.565863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607243, 37.446274, 24.769777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677002, 37.194252, 24.467093>,  <37.718857, 37.043037, 24.285482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677002, 37.194252, 24.467093>,  <37.607243, 37.446274, 24.769777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677002, 37.194252, 24.467093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442014, -0.736804, 0.511608,
		-0.879891, 0.245252, -0.406994,
		0.174402, -0.630056, -0.756712,
		37.729324, 37.005234, 24.240078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106060, 37.033615, 24.772701>,  <37.607243, 37.446274, 24.769777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106060, 37.033615, 24.772701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354038, 36.826401, 24.536970>,  <37.502823, 36.702072, 24.395533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354038, 36.826401, 24.536970>,  <37.106060, 37.033615, 24.772701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354038, 36.826401, 24.536970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223186, -0.836470, 0.500505,
		-0.752235, -0.178756, -0.634184,
		0.619945, -0.518039, -0.589326,
		37.540020, 36.670990, 24.360172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582336, 36.980679, 24.244440>,  <37.106060, 37.033615, 24.772701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582336, 36.980679, 24.244440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188530, 37.050224, 24.235451>,  <35.952248, 37.091953, 24.230057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.188530, 37.050224, 24.235451>,  <36.582336, 36.980679, 24.244440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188530, 37.050224, 24.235451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133604, 0.661122, -0.738287,
		-0.113505, -0.729856, -0.674112,
		-0.984513, 0.173864, -0.022471,
		35.893177, 37.102383, 24.228710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546387, 37.197601, 23.591549>,  <36.582336, 36.980679, 24.244440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546387, 37.197601, 23.591549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213181, 37.331631, 23.767645>,  <36.013256, 37.412048, 23.873302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213181, 37.331631, 23.767645>,  <36.546387, 37.197601, 23.591549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213181, 37.331631, 23.767645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002740, 0.798218, -0.602362,
		-0.553244, -0.500570, -0.665845,
		-0.833015, 0.335078, 0.440238,
		35.963276, 37.432156, 23.899715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179623, 37.348137, 23.095112>,  <36.546387, 37.197601, 23.591549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179623, 37.348137, 23.095112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.962143, 37.547844, 23.364962>,  <35.831654, 37.667667, 23.526871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.962143, 37.547844, 23.364962>,  <36.179623, 37.348137, 23.095112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962143, 37.547844, 23.364962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160036, 0.727391, -0.667302,
		-0.823880, -0.470776, -0.315582,
		-0.543701, 0.499272, 0.674624,
		35.799034, 37.697624, 23.567348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563610, 37.486549, 22.813160>,  <36.179623, 37.348137, 23.095112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563610, 37.486549, 22.813160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650532, 37.765491, 23.086355>,  <35.702686, 37.932858, 23.250273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650532, 37.765491, 23.086355>,  <35.563610, 37.486549, 22.813160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650532, 37.765491, 23.086355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087165, 0.710776, -0.697997,
		-0.972204, 0.092147, 0.215242,
		0.217307, 0.697357, 0.682987,
		35.715725, 37.974697, 23.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028828, 38.070389, 22.646191>,  <35.563610, 37.486549, 22.813160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028828, 38.070389, 22.646191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337437, 38.221581, 22.850891>,  <35.522602, 38.312294, 22.973711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337437, 38.221581, 22.850891>,  <35.028828, 38.070389, 22.646191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337437, 38.221581, 22.850891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068284, 0.848934, -0.524069,
		-0.632529, 0.369385, 0.680780,
		0.771521, 0.377975, 0.511752,
		35.568893, 38.334972, 23.004417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782383, 38.765026, 22.812891>,  <35.028828, 38.070389, 22.646191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782383, 38.765026, 22.812891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181484, 38.758862, 22.838966>,  <35.420944, 38.755161, 22.854610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181484, 38.758862, 22.838966>,  <34.782383, 38.765026, 22.812891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181484, 38.758862, 22.838966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048276, 0.840122, -0.540245,
		-0.046437, 0.542179, 0.838979,
		0.997754, -0.015416, 0.065187,
		35.480812, 38.754238, 22.858522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972328, 39.435150, 23.056200>,  <34.782383, 38.765026, 22.812891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972328, 39.435150, 23.056200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269360, 39.266376, 22.848146>,  <35.447578, 39.165112, 22.723314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269360, 39.266376, 22.848146>,  <34.972328, 39.435150, 23.056200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269360, 39.266376, 22.848146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101356, 0.838455, -0.535462,
		0.662040, 0.344907, 0.665389,
		0.742583, -0.421938, -0.520133,
		35.492134, 39.139793, 22.692106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223034, 39.767345, 23.628511>,  <34.972328, 39.435150, 23.056200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223034, 39.767345, 23.628511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977612, 40.080250, 23.585392>,  <34.830360, 40.267994, 23.559521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977612, 40.080250, 23.585392>,  <35.223034, 39.767345, 23.628511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977612, 40.080250, 23.585392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630952, -0.403567, 0.662596,
		0.474819, 0.474553, 0.741179,
		-0.613552, 0.782262, -0.107798,
		34.793545, 40.314930, 23.553053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045113, 39.875664, 24.279942>,  <35.223034, 39.767345, 23.628511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045113, 39.875664, 24.279942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761383, 40.055199, 24.062538>,  <34.591145, 40.162922, 23.932096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.761383, 40.055199, 24.062538>,  <35.045113, 39.875664, 24.279942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761383, 40.055199, 24.062538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679446, -0.230112, 0.696708,
		0.187643, 0.863476, 0.468187,
		-0.709326, 0.448840, -0.543507,
		34.548584, 40.189850, 23.899487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695480, 40.388565, 24.679239>,  <35.045113, 39.875664, 24.279942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695480, 40.388565, 24.679239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448856, 40.271015, 24.387077>,  <34.300884, 40.200485, 24.211781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448856, 40.271015, 24.387077>,  <34.695480, 40.388565, 24.679239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448856, 40.271015, 24.387077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720567, -0.163187, 0.673909,
		-0.317241, 0.941810, -0.111145,
		-0.616557, -0.293879, -0.730406,
		34.263889, 40.182850, 24.167955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105206, 40.623150, 24.842262>,  <34.695480, 40.388565, 24.679239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105206, 40.623150, 24.842262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014389, 40.319599, 24.598112>,  <33.959900, 40.137470, 24.451622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.014389, 40.319599, 24.598112>,  <34.105206, 40.623150, 24.842262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014389, 40.319599, 24.598112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645893, -0.351741, 0.677569,
		-0.728886, 0.548073, -0.410294,
		-0.227040, -0.758877, -0.610376,
		33.946278, 40.091934, 24.414999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509102, 40.427261, 25.065660>,  <34.105206, 40.623150, 24.842262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509102, 40.427261, 25.065660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558167, 40.127472, 24.805429>,  <33.587605, 39.947598, 24.649290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558167, 40.127472, 24.805429>,  <33.509102, 40.427261, 25.065660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558167, 40.127472, 24.805429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727726, -0.513644, 0.454516,
		-0.674811, 0.417691, -0.608412,
		0.122660, -0.749469, -0.650577,
		33.594963, 39.902630, 24.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812080, 40.099003, 24.662678>,  <33.509102, 40.427261, 25.065660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812080, 40.099003, 24.662678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096375, 39.817657, 24.667213>,  <33.266953, 39.648849, 24.669935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096375, 39.817657, 24.667213>,  <32.812080, 40.099003, 24.662678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096375, 39.817657, 24.667213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640729, -0.640619, 0.423170,
		-0.290380, -0.308028, -0.905979,
		0.710736, -0.703367, 0.011340,
		33.309597, 39.606647, 24.670616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370880, 39.502796, 24.721603>,  <32.812080, 40.099003, 24.662678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370880, 39.502796, 24.721603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742313, 39.383781, 24.810337>,  <32.965172, 39.312370, 24.863577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742313, 39.383781, 24.810337>,  <32.370880, 39.502796, 24.721603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742313, 39.383781, 24.810337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368303, -0.665056, 0.649656,
		-0.045766, -0.684960, -0.727142,
		0.928579, -0.297541, 0.221835,
		33.020885, 39.294518, 24.876888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.971619, 43.229160, 22.096746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160290, 42.887409, 22.183977>,  <39.273495, 42.682358, 22.236317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160290, 42.887409, 22.183977>,  <38.971619, 43.229160, 22.096746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160290, 42.887409, 22.183977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253106, 0.105725, 0.961644,
		-0.844661, -0.508788, -0.166379,
		0.471682, -0.854375, 0.218079,
		39.301796, 42.631096, 22.249401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475674, 42.880928, 22.478310>,  <38.971619, 43.229160, 22.096746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475674, 42.880928, 22.478310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.828606, 42.723961, 22.582230>,  <39.040367, 42.629780, 22.644581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.828606, 42.723961, 22.582230>,  <38.475674, 42.880928, 22.478310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828606, 42.723961, 22.582230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256225, 0.062495, 0.964595,
		-0.394764, -0.917660, -0.045407,
		0.882332, -0.392421, 0.259798,
		39.093304, 42.606236, 22.660170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346539, 42.259861, 22.827028>,  <38.475674, 42.880928, 22.478310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346539, 42.259861, 22.827028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724018, 42.336697, 22.934757>,  <38.950504, 42.382797, 22.999393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724018, 42.336697, 22.934757>,  <38.346539, 42.259861, 22.827028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724018, 42.336697, 22.934757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245982, -0.136897, 0.959558,
		0.221193, -0.971782, -0.081939,
		0.943698, 0.192092, 0.269322,
		39.007126, 42.394325, 23.015554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360283, 42.028355, 23.503456>,  <38.346539, 42.259861, 22.827028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360283, 42.028355, 23.503456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.722816, 42.195736, 23.526955>,  <38.940338, 42.296165, 23.541054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.722816, 42.195736, 23.526955>,  <38.360283, 42.028355, 23.503456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722816, 42.195736, 23.526955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039295, -0.221888, 0.974280,
		0.420725, -0.880717, -0.217549,
		0.906337, 0.418453, 0.058746,
		38.994717, 42.321270, 23.544579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837025, 41.619759, 23.916763>,  <38.360283, 42.028355, 23.503456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837025, 41.619759, 23.916763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973789, 41.995144, 23.936285>,  <39.055847, 42.220375, 23.947998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973789, 41.995144, 23.936285>,  <38.837025, 41.619759, 23.916763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973789, 41.995144, 23.936285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030741, -0.040737, 0.998697,
		0.939231, -0.342962, 0.014921,
		0.341907, 0.938466, 0.048804,
		39.076363, 42.276684, 23.950926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347210, 41.627537, 24.391647>,  <38.837025, 41.619759, 23.916763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347210, 41.627537, 24.391647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203442, 42.000031, 24.367609>,  <39.117180, 42.223526, 24.353186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203442, 42.000031, 24.367609>,  <39.347210, 41.627537, 24.391647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203442, 42.000031, 24.367609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004104, 0.065976, 0.997813,
		0.933166, 0.358391, -0.027535,
		-0.359423, 0.931237, -0.060096,
		39.095615, 42.279404, 24.349581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734455, 41.914120, 24.922398>,  <39.347210, 41.627537, 24.391647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734455, 41.914120, 24.922398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.447750, 42.172413, 24.817108>,  <39.275726, 42.327389, 24.753935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.447750, 42.172413, 24.817108>,  <39.734455, 41.914120, 24.922398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447750, 42.172413, 24.817108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029585, 0.348979, 0.936663,
		0.696690, 0.679152, -0.231031,
		-0.716762, 0.645729, -0.263222,
		39.232723, 42.366131, 24.738142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035511, 42.550743, 25.094858>,  <39.734455, 41.914120, 24.922398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035511, 42.550743, 25.094858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636459, 42.569748, 25.074966>,  <39.397026, 42.581150, 25.063030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636459, 42.569748, 25.074966>,  <40.035511, 42.550743, 25.094858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636459, 42.569748, 25.074966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035020, 0.271403, 0.961829,
		0.059196, 0.961292, -0.269096,
		-0.997632, 0.047513, -0.049731,
		39.337170, 42.584003, 25.060047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892670, 43.082809, 25.497349>,  <40.035511, 42.550743, 25.094858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892670, 43.082809, 25.497349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.562302, 42.859970, 25.462715>,  <39.364079, 42.726269, 25.441935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.562302, 42.859970, 25.462715>,  <39.892670, 43.082809, 25.497349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562302, 42.859970, 25.462715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244032, 0.214814, 0.945676,
		-0.508231, 0.802186, -0.313369,
		-0.825924, -0.557094, -0.086584,
		39.314526, 42.692841, 25.436739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403870, 43.491272, 25.876762>,  <39.892670, 43.082809, 25.497349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403870, 43.491272, 25.876762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268444, 43.118755, 25.822990>,  <39.187191, 42.895245, 25.790728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268444, 43.118755, 25.822990>,  <39.403870, 43.491272, 25.876762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268444, 43.118755, 25.822990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336562, -0.013561, 0.941564,
		-0.878693, 0.364023, -0.308846,
		-0.338562, -0.931292, -0.134432,
		39.166874, 42.839367, 25.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741135, 43.446850, 26.248058>,  <39.403870, 43.491272, 25.876762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741135, 43.446850, 26.248058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844593, 43.063393, 26.200550>,  <38.906670, 42.833317, 26.172045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.844593, 43.063393, 26.200550>,  <38.741135, 43.446850, 26.248058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844593, 43.063393, 26.200550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395084, -0.217187, 0.892602,
		-0.881482, -0.183944, -0.434919,
		0.258648, -0.958642, -0.118773,
		38.922188, 42.775799, 26.164919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160393, 43.091644, 26.409809>,  <38.741135, 43.446850, 26.248058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160393, 43.091644, 26.409809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451057, 42.818905, 26.443405>,  <38.625454, 42.655262, 26.463562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451057, 42.818905, 26.443405>,  <38.160393, 43.091644, 26.409809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451057, 42.818905, 26.443405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438282, -0.365963, 0.820963,
		-0.529034, -0.633369, -0.564771,
		0.726657, -0.681846, 0.083988,
		38.669056, 42.614349, 26.468601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400963, 42.828766, 26.326710>,  <38.160393, 43.091644, 26.409809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400963, 42.828766, 26.326710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183601, 43.155396, 26.404594>,  <37.053185, 43.351376, 26.451324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183601, 43.155396, 26.404594>,  <37.400963, 42.828766, 26.326710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183601, 43.155396, 26.404594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275980, 0.392828, -0.877223,
		-0.792807, -0.422954, -0.438824,
		-0.543408, 0.816576, 0.194710,
		37.020580, 43.400368, 26.463007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903713, 43.058155, 25.743673>,  <37.400963, 42.828766, 26.326710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903713, 43.058155, 25.743673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937965, 43.400558, 25.947603>,  <36.958515, 43.605999, 26.069962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.937965, 43.400558, 25.947603>,  <36.903713, 43.058155, 25.743673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937965, 43.400558, 25.947603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062484, 0.506084, -0.860218,
		-0.994366, 0.105515, -0.010151,
		0.085629, 0.856006, 0.509826,
		36.963654, 43.657360, 26.100552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401779, 43.473087, 25.497059>,  <36.903713, 43.058155, 25.743673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401779, 43.473087, 25.497059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669735, 43.727478, 25.650305>,  <36.830509, 43.880112, 25.742252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669735, 43.727478, 25.650305>,  <36.401779, 43.473087, 25.497059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669735, 43.727478, 25.650305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036799, 0.543812, -0.838400,
		-0.741548, 0.547538, 0.387698,
		0.669890, 0.635980, 0.383114,
		36.870701, 43.918274, 25.765240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118458, 44.128712, 25.450291>,  <36.401779, 43.473087, 25.497059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118458, 44.128712, 25.450291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.503963, 44.222130, 25.501850>,  <36.735268, 44.278179, 25.532785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.503963, 44.222130, 25.501850>,  <36.118458, 44.128712, 25.450291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503963, 44.222130, 25.501850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004206, 0.496458, -0.868050,
		-0.266724, 0.836053, 0.479450,
		0.963764, 0.233547, 0.128901,
		36.793091, 44.292194, 25.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165058, 44.848862, 25.237427>,  <36.118458, 44.128712, 25.450291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165058, 44.848862, 25.237427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539169, 44.712013, 25.201197>,  <36.763638, 44.629902, 25.179459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.539169, 44.712013, 25.201197>,  <36.165058, 44.848862, 25.237427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539169, 44.712013, 25.201197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092322, 0.482917, -0.870786,
		0.341655, 0.806067, 0.483248,
		0.935280, -0.342123, -0.090574,
		36.819752, 44.609375, 25.174025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507793, 45.422226, 24.942930>,  <36.165058, 44.848862, 25.237427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507793, 45.422226, 24.942930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 45.097122, 24.887611>,  <36.869999, 44.902058, 24.854420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 45.097122, 24.887611>,  <36.507793, 45.422226, 24.942930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734173, 45.097122, 24.887611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143057, 0.262014, -0.954402,
		0.811937, 0.520354, 0.264556,
		0.565944, -0.812761, -0.138299,
		36.903957, 44.853294, 24.846121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076752, 45.641376, 24.445139>,  <36.507793, 45.422226, 24.942930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076752, 45.641376, 24.445139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041286, 45.243187, 24.431417>,  <37.020008, 45.004272, 24.423183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.041286, 45.243187, 24.431417>,  <37.076752, 45.641376, 24.445139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041286, 45.243187, 24.431417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055122, 0.029484, -0.998044,
		0.994536, -0.090376, 0.052258,
		-0.088659, -0.995471, -0.034305,
		37.014690, 44.944546, 24.421125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572441, 45.511044, 23.980518>,  <37.076752, 45.641376, 24.445139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572441, 45.511044, 23.980518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.376179, 45.162991, 23.998964>,  <37.258423, 44.954159, 24.010033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.376179, 45.162991, 23.998964>,  <37.572441, 45.511044, 23.980518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376179, 45.162991, 23.998964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209962, -0.169429, -0.962917,
		0.845680, -0.462777, 0.265826,
		-0.490655, -0.870133, 0.046117,
		37.228981, 44.901951, 24.012800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970333, 45.010933, 23.603434>,  <37.572441, 45.511044, 23.980518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970333, 45.010933, 23.603434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619080, 44.819645, 23.608934>,  <37.408329, 44.704872, 23.612234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.619080, 44.819645, 23.608934>,  <37.970333, 45.010933, 23.603434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619080, 44.819645, 23.608934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088792, -0.191151, -0.977536,
		0.470106, -0.857185, 0.210318,
		-0.878132, -0.478221, 0.013750,
		37.355640, 44.676178, 23.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069656, 44.388191, 23.312925>,  <37.970333, 45.010933, 23.603434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069656, 44.388191, 23.312925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.681179, 44.466385, 23.258411>,  <37.448093, 44.513302, 23.225702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.681179, 44.466385, 23.258411>,  <38.069656, 44.388191, 23.312925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681179, 44.466385, 23.258411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073928, -0.296533, -0.952157,
		-0.226546, -0.934802, 0.273538,
		-0.971191, 0.195486, -0.136286,
		37.389820, 44.525032, 23.217525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879246, 43.832314, 22.968224>,  <38.069656, 44.388191, 23.312925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879246, 43.832314, 22.968224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575798, 44.085648, 22.907049>,  <37.393730, 44.237648, 22.870344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575798, 44.085648, 22.907049>,  <37.879246, 43.832314, 22.968224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575798, 44.085648, 22.907049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062887, -0.162457, -0.984710,
		-0.648497, -0.756633, 0.083413,
		-0.758614, 0.633336, -0.152935,
		37.348213, 44.275650, 22.861168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305046, 43.418011, 22.702486>,  <37.879246, 43.832314, 22.968224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305046, 43.418011, 22.702486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.260139, 43.793781, 22.572943>,  <37.233196, 44.019241, 22.495216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.260139, 43.793781, 22.572943>,  <37.305046, 43.418011, 22.702486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260139, 43.793781, 22.572943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062336, -0.318617, -0.945831,
		-0.991721, -0.126372, -0.022791,
		-0.112265, 0.939422, -0.323857,
		37.226460, 44.075607, 22.475786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208637, 42.709145, 22.520876>,  <37.305046, 43.418011, 22.702486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208637, 42.709145, 22.520876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.904186, 42.967312, 22.495205>,  <36.721516, 43.122211, 22.479803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.904186, 42.967312, 22.495205>,  <37.208637, 42.709145, 22.520876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904186, 42.967312, 22.495205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601453, -0.665308, 0.442288,
		0.242762, 0.375239, 0.894574,
		-0.761131, 0.645415, -0.064177,
		36.675846, 43.160938, 22.475952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690926, 42.726707, 23.135983>,  <37.208637, 42.709145, 22.520876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690926, 42.726707, 23.135983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473442, 42.860458, 22.828068>,  <36.342953, 42.940708, 22.643320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.473442, 42.860458, 22.828068>,  <36.690926, 42.726707, 23.135983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473442, 42.860458, 22.828068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725171, -0.648903, 0.230331,
		-0.422498, 0.683460, 0.595296,
		-0.543711, 0.334377, -0.769786,
		36.310329, 42.960770, 22.597132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015392, 42.829723, 23.393730>,  <36.690926, 42.726707, 23.135983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015392, 42.829723, 23.393730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.944969, 42.808422, 23.000555>,  <35.902714, 42.795643, 22.764650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.944969, 42.808422, 23.000555>,  <36.015392, 42.829723, 23.393730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944969, 42.808422, 23.000555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796811, -0.578614, 0.174065,
		-0.578011, 0.813861, 0.059439,
		-0.176057, -0.053250, -0.982939,
		35.892151, 42.792446, 22.705673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236809, 42.897594, 23.248077>,  <36.015392, 42.829723, 23.393730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236809, 42.897594, 23.248077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409683, 42.710976, 22.939388>,  <35.513409, 42.599007, 22.754175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409683, 42.710976, 22.939388>,  <35.236809, 42.897594, 23.248077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409683, 42.710976, 22.939388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693360, -0.719094, 0.046426,
		-0.576599, 0.515015, -0.634265,
		0.432187, -0.466543, -0.771721,
		35.539341, 42.571014, 22.707872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622566, 42.694908, 22.848806>,  <35.236809, 42.897594, 23.248077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622566, 42.694908, 22.848806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.922874, 42.462170, 22.723715>,  <35.103062, 42.322529, 22.648661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.922874, 42.462170, 22.723715>,  <34.622566, 42.694908, 22.848806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922874, 42.462170, 22.723715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574797, -0.808731, 0.124744,
		-0.325494, 0.086100, -0.941616,
		0.750774, -0.581842, -0.312727,
		35.148106, 42.287617, 22.629896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203644, 42.150429, 22.499434>,  <34.622566, 42.694908, 22.848806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203644, 42.150429, 22.499434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580605, 42.030537, 22.558807>,  <34.806782, 41.958603, 22.594431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580605, 42.030537, 22.558807>,  <34.203644, 42.150429, 22.499434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580605, 42.030537, 22.558807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323079, -0.930592, 0.172099,
		0.086549, -0.210143, -0.973832,
		0.942406, -0.299730, 0.148435,
		34.863327, 41.940617, 22.603338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394390, 41.564915, 22.123163>,  <34.203644, 42.150429, 22.499434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394390, 41.564915, 22.123163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682442, 41.519150, 22.396898>,  <34.855274, 41.491692, 22.561140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682442, 41.519150, 22.396898>,  <34.394390, 41.564915, 22.123163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682442, 41.519150, 22.396898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362211, -0.903238, 0.230140,
		0.591790, -0.413606, -0.691892,
		0.720130, -0.114416, 0.684340,
		34.898479, 41.484825, 22.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956688, 40.943699, 22.021530>,  <34.394390, 41.564915, 22.123163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956688, 40.943699, 22.021530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938740, 41.009403, 22.415688>,  <34.927971, 41.048824, 22.652184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.938740, 41.009403, 22.415688>,  <34.956688, 40.943699, 22.021530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938740, 41.009403, 22.415688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227724, -0.962102, 0.150007,
		0.972691, -0.217667, 0.080578,
		-0.044872, 0.164260, 0.985396,
		34.925278, 41.058681, 22.711306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986584, 40.305183, 22.313046>,  <34.956688, 40.943699, 22.021530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986584, 40.305183, 22.313046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.873219, 40.509850, 22.637484>,  <34.805199, 40.632648, 22.832146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.873219, 40.509850, 22.637484>,  <34.986584, 40.305183, 22.313046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873219, 40.509850, 22.637484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208451, -0.858420, 0.468682,
		0.936069, -0.036243, 0.349945,
		-0.283413, 0.511665, 0.811095,
		34.788193, 40.663349, 22.880812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398975, 40.013680, 22.931194>,  <34.986584, 40.305183, 22.313046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398975, 40.013680, 22.931194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.536087, 39.735008, 22.679117>,  <35.618355, 39.567806, 22.527870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.536087, 39.735008, 22.679117>,  <35.398975, 40.013680, 22.931194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536087, 39.735008, 22.679117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141524, 0.701476, -0.698501,
		0.928696, 0.150241, 0.339045,
		0.342775, -0.696678, -0.630195,
		35.638920, 39.526005, 22.490059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032463, 40.237221, 22.627851>,  <35.398975, 40.013680, 22.931194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032463, 40.237221, 22.627851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.907669, 39.946392, 22.383217>,  <35.832794, 39.771896, 22.236437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.907669, 39.946392, 22.383217>,  <36.032463, 40.237221, 22.627851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907669, 39.946392, 22.383217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284733, 0.542576, -0.790277,
		0.906418, -0.420692, 0.037745,
		-0.311983, -0.727069, -0.611586,
		35.814075, 39.728271, 22.199741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510170, 40.116753, 22.112841>,  <36.032463, 40.237221, 22.627851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510170, 40.116753, 22.112841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.165524, 39.976059, 21.966471>,  <35.958736, 39.891644, 21.878649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.165524, 39.976059, 21.966471>,  <36.510170, 40.116753, 22.112841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165524, 39.976059, 21.966471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215260, 0.399669, -0.891026,
		0.459659, -0.846489, -0.268645,
		-0.861613, -0.351740, -0.365927,
		35.907040, 39.870537, 21.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658489, 39.852203, 21.496920>,  <36.510170, 40.116753, 22.112841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658489, 39.852203, 21.496920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.264668, 39.902195, 21.447874>,  <36.028374, 39.932190, 21.418446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.264668, 39.902195, 21.447874>,  <36.658489, 39.852203, 21.496920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264668, 39.902195, 21.447874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168604, 0.487988, -0.856411,
		-0.047201, -0.863856, -0.501523,
		-0.984553, 0.124983, -0.122616,
		35.969303, 39.939690, 21.411089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540539, 39.663235, 20.819778>,  <36.658489, 39.852203, 21.496920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540539, 39.663235, 20.819778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.189388, 39.837971, 20.898270>,  <35.978699, 39.942810, 20.945364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.189388, 39.837971, 20.898270>,  <36.540539, 39.663235, 20.819778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189388, 39.837971, 20.898270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100494, 0.232593, -0.967368,
		-0.468224, -0.868950, -0.160288,
		-0.877877, 0.436837, 0.196230,
		35.926025, 39.969021, 20.957138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936176, 39.470982, 20.285841>,  <36.540539, 39.663235, 20.819778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936176, 39.470982, 20.285841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.873322, 39.833035, 20.443850>,  <35.835609, 40.050266, 20.538654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.873322, 39.833035, 20.443850>,  <35.936176, 39.470982, 20.285841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873322, 39.833035, 20.443850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037855, 0.405217, -0.913436,
		-0.986851, -0.128584, -0.097939,
		-0.157140, 0.905132, 0.395021,
		35.826180, 40.104576, 20.562357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497578, 39.760933, 19.854673>,  <35.936176, 39.470982, 20.285841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497578, 39.760933, 19.854673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654324, 40.074074, 20.047998>,  <35.748371, 40.261959, 20.163994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654324, 40.074074, 20.047998>,  <35.497578, 39.760933, 19.854673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654324, 40.074074, 20.047998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064616, 0.500612, -0.863257,
		-0.917752, 0.369508, 0.145586,
		0.391863, 0.782848, 0.483314,
		35.771881, 40.308929, 20.192993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150272, 40.402615, 19.669943>,  <35.497578, 39.760933, 19.854673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150272, 40.402615, 19.669943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510323, 40.505917, 19.810274>,  <35.726353, 40.567898, 19.894472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510323, 40.505917, 19.810274>,  <35.150272, 40.402615, 19.669943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510323, 40.505917, 19.810274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072954, 0.704591, -0.705854,
		-0.429482, 0.660950, 0.615378,
		0.900124, 0.258257, 0.350828,
		35.780361, 40.583393, 19.915522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185734, 41.183704, 19.659407>,  <35.150272, 40.402615, 19.669943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185734, 41.183704, 19.659407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.569702, 41.071606, 19.658052>,  <35.800083, 41.004349, 19.657240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.569702, 41.071606, 19.658052>,  <35.185734, 41.183704, 19.659407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569702, 41.071606, 19.658052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197785, 0.685930, -0.700272,
		0.198567, 0.671538, 0.713868,
		0.959923, -0.280244, -0.003384,
		35.857677, 40.987534, 19.657038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.728947, 34.616447, 34.029518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125923, 34.570801, 34.011482>,  <35.364109, 34.543411, 34.000660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125923, 34.570801, 34.011482>,  <34.728947, 34.616447, 34.029518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125923, 34.570801, 34.011482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006613, 0.416697, -0.909022,
		0.122525, 0.901854, 0.414302,
		0.992443, -0.114117, -0.045092,
		35.423656, 34.536564, 33.997955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989792, 35.186092, 33.777855>,  <34.728947, 34.616447, 34.029518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989792, 35.186092, 33.777855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257458, 34.898998, 33.700829>,  <35.418056, 34.726742, 33.654613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257458, 34.898998, 33.700829>,  <34.989792, 35.186092, 33.777855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257458, 34.898998, 33.700829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035163, 0.289419, -0.956556,
		0.742282, 0.633322, 0.218907,
		0.669164, -0.717732, -0.192561,
		35.458206, 34.683678, 33.643059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434845, 35.539238, 33.400768>,  <34.989792, 35.186092, 33.777855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434845, 35.539238, 33.400768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520905, 35.159382, 33.309654>,  <35.572540, 34.931469, 33.254986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520905, 35.159382, 33.309654>,  <35.434845, 35.539238, 33.400768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520905, 35.159382, 33.309654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186979, 0.268994, -0.944818,
		0.958513, 0.160689, 0.235438,
		0.215154, -0.949643, -0.227789,
		35.585449, 34.874489, 33.241318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115139, 35.531399, 32.930305>,  <35.434845, 35.539238, 33.400768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115139, 35.531399, 32.930305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894432, 35.204784, 32.862392>,  <35.762009, 35.008816, 32.821644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894432, 35.204784, 32.862392>,  <36.115139, 35.531399, 32.930305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894432, 35.204784, 32.862392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137169, 0.111958, -0.984200,
		0.822640, -0.566339, 0.050228,
		-0.551768, -0.816533, -0.169785,
		35.728901, 34.959824, 32.811459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333855, 35.301178, 32.220337>,  <36.115139, 35.531399, 32.930305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333855, 35.301178, 32.220337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001232, 35.087692, 32.281876>,  <35.801659, 34.959602, 32.318798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001232, 35.087692, 32.281876>,  <36.333855, 35.301178, 32.220337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001232, 35.087692, 32.281876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158874, -0.036870, -0.986610,
		0.532241, -0.844861, -0.054134,
		-0.831552, -0.533714, 0.153850,
		35.751766, 34.927578, 32.328030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296692, 34.631382, 31.812408>,  <36.333855, 35.301178, 32.220337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296692, 34.631382, 31.812408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908684, 34.710026, 31.869560>,  <35.675880, 34.757210, 31.903851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908684, 34.710026, 31.869560>,  <36.296692, 34.631382, 31.812408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908684, 34.710026, 31.869560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114101, 0.150679, -0.981976,
		-0.214594, -0.968835, -0.123728,
		-0.970016, 0.196608, 0.142879,
		35.617680, 34.769009, 31.912424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050793, 34.347275, 31.232912>,  <36.296692, 34.631382, 31.812408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050793, 34.347275, 31.232912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741188, 34.567772, 31.357521>,  <35.555428, 34.700069, 31.432287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741188, 34.567772, 31.357521>,  <36.050793, 34.347275, 31.232912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741188, 34.567772, 31.357521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403931, -0.050997, -0.913367,
		-0.487597, -0.832788, 0.262135,
		-0.774009, 0.551239, 0.311522,
		35.508984, 34.733143, 31.450977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468887, 33.895435, 31.025545>,  <36.050793, 34.347275, 31.232912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468887, 33.895435, 31.025545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330803, 34.265812, 31.086824>,  <35.247952, 34.488037, 31.123592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330803, 34.265812, 31.086824>,  <35.468887, 33.895435, 31.025545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330803, 34.265812, 31.086824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321194, 0.036820, -0.946297,
		-0.881853, -0.375877, 0.284695,
		-0.345208, 0.925938, 0.153200,
		35.227242, 34.543594, 31.132784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691319, 33.979282, 30.973764>,  <35.468887, 33.895435, 31.025545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691319, 33.979282, 30.973764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842064, 34.342392, 30.900106>,  <34.932510, 34.560257, 30.855911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842064, 34.342392, 30.900106>,  <34.691319, 33.979282, 30.973764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842064, 34.342392, 30.900106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557000, 0.063256, -0.828100,
		-0.740083, 0.414652, 0.529472,
		0.376866, 0.907779, -0.184147,
		34.955124, 34.614727, 30.844862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227547, 34.232201, 30.591536>,  <34.691319, 33.979282, 30.973764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227547, 34.232201, 30.591536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499039, 34.519474, 30.530169>,  <34.661934, 34.691837, 30.493349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499039, 34.519474, 30.530169>,  <34.227547, 34.232201, 30.591536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499039, 34.519474, 30.530169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382753, 0.167651, -0.908512,
		-0.626760, 0.675353, 0.388678,
		0.678728, 0.718186, -0.153416,
		34.702656, 34.734928, 30.484144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866203, 34.929939, 30.324915>,  <34.227547, 34.232201, 30.591536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866203, 34.929939, 30.324915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249744, 34.914650, 30.212385>,  <34.479870, 34.905476, 30.144867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249744, 34.914650, 30.212385>,  <33.866203, 34.929939, 30.324915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249744, 34.914650, 30.212385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277526, 0.082750, -0.957148,
		0.059865, 0.995837, 0.068737,
		0.958851, -0.038224, -0.281324,
		34.537399, 34.903183, 30.127989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045250, 35.578136, 30.032145>,  <33.866203, 34.929939, 30.324915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045250, 35.578136, 30.032145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272354, 35.292858, 29.867704>,  <34.408615, 35.121693, 29.769041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272354, 35.292858, 29.867704>,  <34.045250, 35.578136, 30.032145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272354, 35.292858, 29.867704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230113, 0.341987, -0.911094,
		0.790378, 0.611881, 0.030051,
		0.567759, -0.713194, -0.411101,
		34.442680, 35.078899, 29.744373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849728, 36.214397, 30.375607>,  <34.045250, 35.578136, 30.032145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849728, 36.214397, 30.375607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527943, 36.417526, 30.252348>,  <33.334873, 36.539406, 30.178392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527943, 36.417526, 30.252348>,  <33.849728, 36.214397, 30.375607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527943, 36.417526, 30.252348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423468, -0.126508, 0.897035,
		0.416554, 0.852120, 0.316818,
		-0.804461, 0.507826, -0.308148,
		33.286606, 36.569874, 30.159903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806179, 36.816360, 30.833885>,  <33.849728, 36.214397, 30.375607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806179, 36.816360, 30.833885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442429, 36.723724, 30.695667>,  <33.224178, 36.668144, 30.612738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442429, 36.723724, 30.695667>,  <33.806179, 36.816360, 30.833885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442429, 36.723724, 30.695667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274114, -0.291184, 0.916555,
		-0.312882, 0.928212, 0.201313,
		-0.909377, -0.231591, -0.345542,
		33.169617, 36.654247, 30.592005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310238, 37.236572, 31.165998>,  <33.806179, 36.816360, 30.833885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310238, 37.236572, 31.165998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106697, 36.908901, 31.060163>,  <32.984573, 36.712296, 30.996662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106697, 36.908901, 31.060163>,  <33.310238, 37.236572, 31.165998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106697, 36.908901, 31.060163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376744, -0.064441, 0.924073,
		-0.774034, 0.569901, -0.275832,
		-0.508856, -0.819182, -0.264586,
		32.954041, 36.663147, 30.980787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629173, 37.350574, 31.450584>,  <33.310238, 37.236572, 31.165998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629173, 37.350574, 31.450584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582565, 36.958290, 31.387800>,  <32.554600, 36.722919, 31.350130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582565, 36.958290, 31.387800>,  <32.629173, 37.350574, 31.450584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582565, 36.958290, 31.387800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521449, -0.074098, 0.850059,
		-0.845290, 0.180893, -0.502756,
		-0.116517, -0.980707, -0.156961,
		32.547611, 36.664078, 31.340712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867310, 37.199638, 31.515522>,  <32.629173, 37.350574, 31.450584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867310, 37.199638, 31.515522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076630, 36.866707, 31.588608>,  <32.202221, 36.666946, 31.632460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076630, 36.866707, 31.588608>,  <31.867310, 37.199638, 31.515522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076630, 36.866707, 31.588608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572304, -0.184412, 0.799037,
		-0.631368, -0.522703, -0.572849,
		0.523299, -0.832330, 0.182713,
		32.233620, 36.617008, 31.643421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376780, 36.631805, 31.579679>,  <31.867310, 37.199638, 31.515522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376780, 36.631805, 31.579679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700211, 36.551670, 31.800974>,  <31.894268, 36.503590, 31.933750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700211, 36.551670, 31.800974>,  <31.376780, 36.631805, 31.579679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700211, 36.551670, 31.800974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580342, -0.116549, 0.805990,
		-0.096992, -0.972770, -0.210504,
		0.808576, -0.200339, 0.553235,
		31.942783, 36.491570, 31.966944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197933, 36.065746, 32.030964>,  <31.376780, 36.631805, 31.579679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197933, 36.065746, 32.030964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523046, 36.223534, 32.202442>,  <31.718115, 36.318207, 32.305328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523046, 36.223534, 32.202442>,  <31.197933, 36.065746, 32.030964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523046, 36.223534, 32.202442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309015, -0.331895, 0.891266,
		0.493857, -0.856879, -0.147862,
		0.812782, 0.394467, 0.428697,
		31.766882, 36.341873, 32.331051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295265, 35.603317, 32.507458>,  <31.197933, 36.065746, 32.030964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295265, 35.603317, 32.507458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.487396, 35.933640, 32.625664>,  <31.602674, 36.131832, 32.696587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.487396, 35.933640, 32.625664>,  <31.295265, 35.603317, 32.507458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487396, 35.933640, 32.625664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353503, -0.126078, 0.926898,
		0.802696, -0.549680, 0.231367,
		0.480327, 0.825806, 0.295516,
		31.631495, 36.181381, 32.714317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451324, 35.514877, 33.206287>,  <31.295265, 35.603317, 32.507458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451324, 35.514877, 33.206287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519487, 35.909004, 33.201912>,  <31.560385, 36.145481, 33.199287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519487, 35.909004, 33.201912>,  <31.451324, 35.514877, 33.206287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519487, 35.909004, 33.201912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392154, 0.078002, 0.916587,
		0.903978, -0.151901, 0.399687,
		0.170407, 0.985313, -0.010943,
		31.570610, 36.204597, 33.198627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016655, 35.719795, 33.774998>,  <31.451324, 35.514877, 33.206287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016655, 35.719795, 33.774998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768723, 36.015026, 33.668377>,  <31.619963, 36.192165, 33.604404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.768723, 36.015026, 33.668377>,  <32.016655, 35.719795, 33.774998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768723, 36.015026, 33.668377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253445, 0.133187, 0.958137,
		0.742680, 0.661442, 0.104508,
		-0.619833, 0.738076, -0.266554,
		31.582773, 36.236450, 33.588409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936853, 35.999649, 34.416473>,  <32.016655, 35.719795, 33.774998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936853, 35.999649, 34.416473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658876, 36.187130, 34.198345>,  <31.492090, 36.299618, 34.067471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.658876, 36.187130, 34.198345>,  <31.936853, 35.999649, 34.416473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658876, 36.187130, 34.198345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391590, 0.389367, 0.833697,
		0.603083, 0.792914, -0.087050,
		-0.694944, 0.468701, -0.545318,
		31.450394, 36.327740, 34.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913403, 36.720406, 34.648796>,  <31.936853, 35.999649, 34.416473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913403, 36.720406, 34.648796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568529, 36.615074, 34.475685>,  <31.361605, 36.551876, 34.371819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568529, 36.615074, 34.475685>,  <31.913403, 36.720406, 34.648796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568529, 36.615074, 34.475685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497102, 0.275184, 0.822899,
		-0.097599, 0.924626, -0.368160,
		-0.862186, -0.263327, -0.432776,
		31.309874, 36.536076, 34.345852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515917, 37.278473, 34.827702>,  <31.913403, 36.720406, 34.648796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515917, 37.278473, 34.827702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285692, 36.964821, 34.734867>,  <31.147556, 36.776630, 34.679165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285692, 36.964821, 34.734867>,  <31.515917, 37.278473, 34.827702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285692, 36.964821, 34.734867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602750, 0.214991, 0.768421,
		-0.552648, 0.582164, -0.596377,
		-0.575562, -0.784133, -0.232085,
		31.113024, 36.729580, 34.665241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182146, 37.915421, 35.058159>,  <31.515917, 37.278473, 34.827702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182146, 37.915421, 35.058159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349829, 38.265472, 35.154835>,  <31.450438, 38.475502, 35.212841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349829, 38.265472, 35.154835>,  <31.182146, 37.915421, 35.058159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349829, 38.265472, 35.154835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007826, 0.262714, -0.964842,
		-0.907857, 0.406359, 0.103283,
		0.419206, 0.875130, 0.241687,
		31.475590, 38.528011, 35.227341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968428, 38.404556, 34.613777>,  <31.182146, 37.915421, 35.058159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968428, 38.404556, 34.613777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281214, 38.613037, 34.750530>,  <31.468885, 38.738125, 34.832581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281214, 38.613037, 34.750530>,  <30.968428, 38.404556, 34.613777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281214, 38.613037, 34.750530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171615, 0.347263, -0.921931,
		-0.599234, 0.779588, 0.182101,
		0.781963, 0.521201, 0.341881,
		31.515802, 38.769398, 34.853096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769384, 39.118069, 34.491718>,  <30.968428, 38.404556, 34.613777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769384, 39.118069, 34.491718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161243, 39.041016, 34.514290>,  <31.396358, 38.994785, 34.527832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.161243, 39.041016, 34.514290>,  <30.769384, 39.118069, 34.491718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161243, 39.041016, 34.514290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137767, 0.440800, -0.886970,
		0.145983, 0.876692, 0.458366,
		0.979648, -0.192630, 0.056430,
		31.455137, 38.983227, 34.531219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153814, 39.758396, 34.532562>,  <30.769384, 39.118069, 34.491718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153814, 39.758396, 34.532562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440834, 39.514858, 34.397255>,  <31.613047, 39.368736, 34.316071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.440834, 39.514858, 34.397255>,  <31.153814, 39.758396, 34.532562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440834, 39.514858, 34.397255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240545, 0.672405, -0.700007,
		0.653653, 0.420920, 0.628939,
		0.717549, -0.608849, -0.338269,
		31.656099, 39.332203, 34.295773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758802, 40.131924, 34.360359>,  <31.153814, 39.758396, 34.532562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758802, 40.131924, 34.360359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838837, 39.800392, 34.151360>,  <31.886858, 39.601475, 34.025959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838837, 39.800392, 34.151360>,  <31.758802, 40.131924, 34.360359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838837, 39.800392, 34.151360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384376, 0.556935, -0.736259,
		0.901232, -0.053521, 0.430019,
		0.200087, -0.828829, -0.522501,
		31.898863, 39.551743, 33.994610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484230, 39.954330, 34.323494>,  <31.758802, 40.131924, 34.360359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484230, 39.954330, 34.323494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276890, 39.828236, 34.005516>,  <32.152485, 39.752579, 33.814728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276890, 39.828236, 34.005516>,  <32.484230, 39.954330, 34.323494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276890, 39.828236, 34.005516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485106, 0.657149, -0.576912,
		0.704265, -0.684674, -0.187705,
		-0.518347, -0.315242, -0.794946,
		32.121384, 39.733662, 33.767033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915791, 40.072472, 33.821674>,  <32.484230, 39.954330, 34.323494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915791, 40.072472, 33.821674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590611, 40.001686, 33.599758>,  <32.395500, 39.959213, 33.466610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590611, 40.001686, 33.599758>,  <32.915791, 40.072472, 33.821674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590611, 40.001686, 33.599758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384708, 0.551991, -0.739801,
		0.437155, -0.814856, -0.380665,
		-0.812955, -0.176963, -0.554787,
		32.346725, 39.948597, 33.433323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216900, 39.902988, 33.235806>,  <32.915791, 40.072472, 33.821674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216900, 39.902988, 33.235806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846676, 40.016254, 33.135281>,  <32.624542, 40.084213, 33.074966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846676, 40.016254, 33.135281>,  <33.216900, 39.902988, 33.235806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846676, 40.016254, 33.135281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364518, 0.487147, -0.793609,
		-0.102299, -0.826139, -0.554103,
		-0.925560, 0.283166, -0.251308,
		32.569008, 40.101204, 33.059887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998466, 39.758114, 32.583038>,  <33.216900, 39.902988, 33.235806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998466, 39.758114, 32.583038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758297, 40.065197, 32.672588>,  <32.614197, 40.249447, 32.726318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758297, 40.065197, 32.672588>,  <32.998466, 39.758114, 32.583038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758297, 40.065197, 32.672588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297094, 0.474066, -0.828853,
		-0.742447, -0.431150, -0.512721,
		-0.600423, 0.767705, 0.223876,
		32.578171, 40.295509, 32.739750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758381, 39.984478, 31.939814>,  <32.998466, 39.758114, 32.583038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758381, 39.984478, 31.939814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654930, 40.294460, 32.170483>,  <32.592861, 40.480450, 32.308884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654930, 40.294460, 32.170483>,  <32.758381, 39.984478, 31.939814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654930, 40.294460, 32.170483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315129, 0.632010, -0.707995,
		-0.913130, -0.001381, -0.407667,
		-0.258628, 0.774959, 0.576672,
		32.577343, 40.526947, 32.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264469, 40.447643, 31.567245>,  <32.758381, 39.984478, 31.939814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264469, 40.447643, 31.567245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466507, 40.647491, 31.848745>,  <32.587730, 40.767399, 32.017647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466507, 40.647491, 31.848745>,  <32.264469, 40.447643, 31.567245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466507, 40.647491, 31.848745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315546, 0.652054, -0.689389,
		-0.803314, 0.570270, 0.171695,
		0.505092, 0.499618, 0.703750,
		32.618034, 40.797379, 32.059872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098049, 41.254921, 31.411484>,  <32.264469, 40.447643, 31.567245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098049, 41.254921, 31.411484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416130, 41.223061, 31.651918>,  <32.606979, 41.203945, 31.796179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.416130, 41.223061, 31.651918>,  <32.098049, 41.254921, 31.411484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416130, 41.223061, 31.651918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477405, 0.693404, -0.539700,
		-0.373809, 0.716134, 0.589423,
		0.795205, -0.079649, 0.601086,
		32.654690, 41.199165, 31.832245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296577, 41.900219, 31.540499>,  <32.098049, 41.254921, 31.411484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296577, 41.900219, 31.540499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627533, 41.693047, 31.627378>,  <32.826107, 41.568741, 31.679506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627533, 41.693047, 31.627378>,  <32.296577, 41.900219, 31.540499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627533, 41.693047, 31.627378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539552, 0.625649, -0.563424,
		0.155927, 0.583360, 0.797106,
		0.827388, -0.517933, 0.217198,
		32.875748, 41.537666, 31.692537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699421, 42.430599, 31.487629>,  <32.296577, 41.900219, 31.540499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699421, 42.430599, 31.487629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942986, 42.115643, 31.526094>,  <33.089123, 41.926670, 31.549173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942986, 42.115643, 31.526094>,  <32.699421, 42.430599, 31.487629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942986, 42.115643, 31.526094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688804, 0.464716, -0.556406,
		0.393420, 0.405038, 0.825327,
		0.608908, -0.787390, 0.096163,
		33.125656, 41.879425, 31.554943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288853, 42.677746, 31.716419>,  <32.699421, 42.430599, 31.487629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288853, 42.677746, 31.716419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413471, 42.345047, 31.532621>,  <33.488243, 42.145428, 31.422342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413471, 42.345047, 31.532621>,  <33.288853, 42.677746, 31.716419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413471, 42.345047, 31.532621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665540, 0.536139, -0.519241,
		0.678231, -0.144046, 0.720592,
		0.311543, -0.831748, -0.459495,
		33.506935, 42.095524, 31.394773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063736, 42.617584, 31.798582>,  <33.288853, 42.677746, 31.716419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063736, 42.617584, 31.798582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954155, 42.391430, 31.487379>,  <33.888405, 42.255737, 31.300657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954155, 42.391430, 31.487379>,  <34.063736, 42.617584, 31.798582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954155, 42.391430, 31.487379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789376, 0.329930, -0.517718,
		0.549396, -0.755968, 0.355915,
		-0.273951, -0.565383, -0.778006,
		33.871971, 42.221813, 31.253977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698803, 42.532829, 31.454388>,  <34.063736, 42.617584, 31.798582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698803, 42.532829, 31.454388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435764, 42.378754, 31.195406>,  <34.277939, 42.286308, 31.040018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435764, 42.378754, 31.195406>,  <34.698803, 42.532829, 31.454388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435764, 42.378754, 31.195406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614157, 0.223643, -0.756832,
		0.436321, -0.895329, 0.089499,
		-0.657598, -0.385188, -0.647453,
		34.238483, 42.263199, 31.001169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123146, 42.108620, 30.989492>,  <34.698803, 42.532829, 31.454388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123146, 42.108620, 30.989492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791969, 42.218704, 30.794033>,  <34.593266, 42.284756, 30.676758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791969, 42.218704, 30.794033>,  <35.123146, 42.108620, 30.989492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791969, 42.218704, 30.794033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552730, 0.252977, -0.794035,
		-0.094911, -0.927502, -0.361567,
		-0.827938, 0.275212, -0.488648,
		34.543587, 42.301270, 30.647438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283207, 41.849560, 30.382818>,  <35.123146, 42.108620, 30.989492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283207, 41.849560, 30.382818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999340, 42.129074, 30.346901>,  <34.829018, 42.296783, 30.325350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999340, 42.129074, 30.346901>,  <35.283207, 41.849560, 30.382818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999340, 42.129074, 30.346901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386403, 0.279471, -0.878970,
		-0.589120, -0.658475, -0.468346,
		-0.709669, 0.698789, -0.089795,
		34.786438, 42.338711, 30.319963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880432, 41.761364, 29.768789>,  <35.283207, 41.849560, 30.382818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880432, 41.761364, 29.768789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880112, 42.149864, 29.864012>,  <34.879921, 42.382965, 29.921144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880112, 42.149864, 29.864012>,  <34.880432, 41.761364, 29.768789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880112, 42.149864, 29.864012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332922, 0.224733, -0.915783,
		-0.942954, 0.078520, -0.323531,
		-0.000801, 0.971252, 0.238054,
		34.879871, 42.441238, 29.935429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758629, 42.099464, 29.190701>,  <34.880432, 41.761364, 29.768789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758629, 42.099464, 29.190701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898746, 42.422287, 29.380840>,  <34.982815, 42.615982, 29.494925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898746, 42.422287, 29.380840>,  <34.758629, 42.099464, 29.190701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898746, 42.422287, 29.380840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400169, 0.329900, -0.855003,
		-0.846853, 0.489720, -0.207398,
		0.350292, 0.807056, 0.475348,
		35.003834, 42.664402, 29.523445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614956, 42.668758, 28.774109>,  <34.758629, 42.099464, 29.190701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614956, 42.668758, 28.774109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912117, 42.782272, 29.016613>,  <35.090416, 42.850380, 29.162115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912117, 42.782272, 29.016613>,  <34.614956, 42.668758, 28.774109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912117, 42.782272, 29.016613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515307, 0.335621, -0.788554,
		-0.427258, 0.898233, 0.103096,
		0.742906, 0.283790, 0.606262,
		35.134991, 42.867409, 29.198492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766785, 43.318565, 28.544691>,  <34.614956, 42.668758, 28.774109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766785, 43.318565, 28.544691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095383, 43.172371, 28.719765>,  <35.292542, 43.084656, 28.824808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095383, 43.172371, 28.719765>,  <34.766785, 43.318565, 28.544691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095383, 43.172371, 28.719765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567842, 0.454414, -0.686341,
		0.051956, 0.812361, 0.580835,
		0.821497, -0.365482, 0.437683,
		35.341831, 43.062725, 28.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224892, 43.967262, 28.513599>,  <34.766785, 43.318565, 28.544691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224892, 43.967262, 28.513599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448589, 43.639030, 28.560768>,  <35.582806, 43.442093, 28.589069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448589, 43.639030, 28.560768>,  <35.224892, 43.967262, 28.513599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448589, 43.639030, 28.560768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661666, 0.356121, -0.659830,
		0.499446, 0.447029, 0.742104,
		0.559242, -0.820575, 0.117920,
		35.616364, 43.392857, 28.596144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914078, 44.143883, 28.576046>,  <35.224892, 43.967262, 28.513599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914078, 44.143883, 28.576046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933994, 43.756012, 28.480337>,  <35.945942, 43.523289, 28.422913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933994, 43.756012, 28.480337>,  <35.914078, 44.143883, 28.576046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933994, 43.756012, 28.480337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666615, 0.210661, -0.715015,
		0.743738, -0.123902, 0.656888,
		0.049789, -0.969675, -0.239272,
		35.948933, 43.465111, 28.408556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594807, 44.133034, 28.325430>,  <35.914078, 44.143883, 28.576046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594807, 44.133034, 28.325430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464283, 43.770489, 28.218071>,  <36.385971, 43.552963, 28.153656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464283, 43.770489, 28.218071>,  <36.594807, 44.133034, 28.325430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464283, 43.770489, 28.218071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650798, -0.009483, -0.759192,
		0.685555, -0.422402, 0.592951,
		-0.326307, -0.906359, -0.268397,
		36.366390, 43.498581, 28.137552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180576, 43.804104, 28.069334>,  <36.594807, 44.133034, 28.325430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180576, 43.804104, 28.069334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870567, 43.602009, 27.917509>,  <36.684563, 43.480751, 27.826414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870567, 43.602009, 27.917509>,  <37.180576, 43.804104, 28.069334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870567, 43.602009, 27.917509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411421, 0.052482, -0.909933,
		0.479655, -0.861381, 0.167192,
		-0.775024, -0.505241, -0.379564,
		36.638062, 43.450436, 27.803640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474079, 43.256588, 27.691031>,  <37.180576, 43.804104, 28.069334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474079, 43.256588, 27.691031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113117, 43.290993, 27.522141>,  <36.896542, 43.311634, 27.420807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113117, 43.290993, 27.522141>,  <37.474079, 43.256588, 27.691031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113117, 43.290993, 27.522141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429448, 0.259728, -0.864937,
		0.035271, -0.961844, -0.271316,
		-0.902402, 0.086009, -0.422223,
		36.842396, 43.316795, 27.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576443, 42.919510, 27.072803>,  <37.474079, 43.256588, 27.691031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576443, 42.919510, 27.072803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257454, 43.150814, 27.003923>,  <37.066063, 43.289597, 26.962595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257454, 43.150814, 27.003923>,  <37.576443, 42.919510, 27.072803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257454, 43.150814, 27.003923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345226, 0.203244, -0.916248,
		-0.494834, -0.790129, -0.361713,
		-0.797470, 0.578263, -0.172201,
		37.018211, 43.324291, 26.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857510, 42.347961, 26.797832>,  <37.576443, 42.919510, 27.072803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857510, 42.347961, 26.797832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256805, 42.329830, 26.813120>,  <38.496384, 42.318951, 26.822292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256805, 42.329830, 26.813120>,  <37.857510, 42.347961, 26.797832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256805, 42.329830, 26.813120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056100, -0.513390, 0.856320,
		-0.019195, -0.856957, -0.515030,
		0.998240, -0.045331, 0.038221,
		38.556278, 42.316231, 26.824587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155483, 41.662479, 26.770367>,  <37.857510, 42.347961, 26.797832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155483, 41.662479, 26.770367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427036, 41.887005, 26.959700>,  <38.589970, 42.021721, 27.073299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427036, 41.887005, 26.959700>,  <38.155483, 41.662479, 26.770367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427036, 41.887005, 26.959700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012848, -0.653635, 0.756701,
		0.734134, -0.507629, -0.450953,
		0.678882, 0.561314, 0.473334,
		38.630699, 42.055401, 27.101700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668518, 41.204044, 27.056238>,  <38.155483, 41.662479, 26.770367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668518, 41.204044, 27.056238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692902, 41.538712, 27.273960>,  <38.707531, 41.739513, 27.404593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692902, 41.538712, 27.273960>,  <38.668518, 41.204044, 27.056238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692902, 41.538712, 27.273960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144474, -0.546971, 0.824591,
		0.987629, 0.028373, -0.154219,
		0.060957, 0.836670, 0.544304,
		38.711189, 41.789711, 27.437252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143002, 41.073414, 27.598675>,  <38.668518, 41.204044, 27.056238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143002, 41.073414, 27.598675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952179, 41.398396, 27.732738>,  <38.837685, 41.593384, 27.813177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952179, 41.398396, 27.732738>,  <39.143002, 41.073414, 27.598675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952179, 41.398396, 27.732738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081934, -0.420803, 0.903444,
		0.875046, 0.403531, 0.267314,
		-0.477055, 0.812458, 0.335159,
		38.809063, 41.642132, 27.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367298, 41.125393, 28.320583>,  <39.143002, 41.073414, 27.598675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367298, 41.125393, 28.320583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037445, 41.351345, 28.308563>,  <38.839535, 41.486916, 28.301352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037445, 41.351345, 28.308563>,  <39.367298, 41.125393, 28.320583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037445, 41.351345, 28.308563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171202, -0.198591, 0.965014,
		0.539146, 0.800922, 0.260472,
		-0.824628, 0.564876, -0.030050,
		38.790058, 41.520809, 28.299549>
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
