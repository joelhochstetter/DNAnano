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
	<2.400936, 4.415655, 3.872841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160408, 4.096558, 3.890823>,  <2.016091, 3.905099, 3.901613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.160408, 4.096558, 3.890823>,  <2.400936, 4.415655, 3.872841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.160408, 4.096558, 3.890823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134075, 0.045276, -0.989936,
		0.787680, -0.601295, -0.134183,
		-0.601319, -0.797743, 0.044956,
		1.980012, 3.857235, 3.904310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.702694, 3.966518, 3.364873>,  <2.400936, 4.415655, 3.872841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.702694, 3.966518, 3.364873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317863, 3.882027, 3.433914>,  <2.086965, 3.831332, 3.475339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.317863, 3.882027, 3.433914>,  <2.702694, 3.966518, 3.364873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.317863, 3.882027, 3.433914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148173, -0.126594, -0.980826,
		0.229028, -0.969204, 0.090495,
		-0.962077, -0.211228, 0.172603,
		2.029241, 3.818658, 3.485695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.566457, 3.420352, 3.061125>,  <2.702694, 3.966518, 3.364873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.566457, 3.420352, 3.061125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.258240, 3.674690, 3.078850>,  <2.073309, 3.827293, 3.089485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.258240, 3.674690, 3.078850>,  <2.566457, 3.420352, 3.061125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.258240, 3.674690, 3.078850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027647, 0.102798, -0.994318,
		-0.636787, -0.764940, -0.096790,
		-0.770544, 0.635845, 0.044312,
		2.027076, 3.865444, 3.092144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.037885, 3.204915, 2.667498>,  <2.566457, 3.420352, 3.061125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.037885, 3.204915, 2.667498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031937, 3.604469, 2.685417>,  <2.028368, 3.844202, 2.696169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031937, 3.604469, 2.685417>,  <2.037885, 3.204915, 2.667498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.031937, 3.604469, 2.685417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037954, 0.044207, -0.998301,
		-0.999169, -0.016546, 0.037254,
		-0.014871, 0.998885, 0.044798,
		2.027475, 3.904135, 2.698857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.375378, 3.513660, 2.352224>,  <2.037885, 3.204915, 2.667498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.375378, 3.513660, 2.352224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.649574, 3.804047, 2.330032>,  <1.814092, 3.978278, 2.316718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.649574, 3.804047, 2.330032>,  <1.375378, 3.513660, 2.352224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649574, 3.804047, 2.330032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191296, 0.106061, -0.975785,
		-0.702502, 0.679504, 0.211578,
		0.685490, 0.725965, -0.055478,
		1.855221, 4.021836, 2.313389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.015254, 3.929627, 1.887339>,  <1.375378, 3.513660, 2.352224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.015254, 3.929627, 1.887339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.402027, 4.031631, 1.886139>,  <1.634091, 4.092834, 1.885419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.402027, 4.031631, 1.886139>,  <1.015254, 3.929627, 1.887339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.402027, 4.031631, 1.886139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033767, 0.116361, -0.992633,
		-0.252783, 0.959911, 0.121125,
		0.966934, 0.255010, -0.002999,
		1.692107, 4.108135, 1.885239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.296990, 4.721949, 1.649639>,  <1.015254, 3.929627, 1.887339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.296990, 4.721949, 1.649639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525074, 4.403801, 1.567421>,  <1.661924, 4.212913, 1.518090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525074, 4.403801, 1.567421>,  <1.296990, 4.721949, 1.649639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.525074, 4.403801, 1.567421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058655, 0.210150, -0.975908,
		0.819402, 0.568529, 0.073178,
		0.570210, -0.795369, -0.205544,
		1.696137, 4.165190, 1.505758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.902465, 4.920627, 1.237562>,  <1.296990, 4.721949, 1.649639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.902465, 4.920627, 1.237562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786575, 4.542976, 1.174713>,  <1.717042, 4.316386, 1.137004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786575, 4.542976, 1.174713>,  <1.902465, 4.920627, 1.237562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.786575, 4.542976, 1.174713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123146, 0.199569, -0.972115,
		0.949155, -0.262296, -0.174085,
		-0.289724, -0.944126, -0.157121,
		1.699658, 4.259739, 1.127577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.745547, 3.437026, -0.230618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885303, 3.353348, 0.134712>,  <2.969157, 3.303141, 0.353910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885303, 3.353348, 0.134712>,  <2.745547, 3.437026, -0.230618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885303, 3.353348, 0.134712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600907, 0.697874, 0.389722,
		-0.718914, -0.684989, 0.118125,
		0.349391, -0.209194, 0.913325,
		2.990121, 3.290589, 0.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.140049, 3.308628, 0.231002>,  <2.745547, 3.437026, -0.230618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.140049, 3.308628, 0.231002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.458355, 3.424179, 0.443909>,  <2.649338, 3.493510, 0.571653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.458355, 3.424179, 0.443909>,  <2.140049, 3.308628, 0.231002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.458355, 3.424179, 0.443909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595131, 0.535781, 0.598965,
		-0.112150, -0.793403, 0.598276,
		0.795765, 0.288878, 0.532266,
		2.697084, 3.510843, 0.603589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.879160, 3.335085, 0.850320>,  <2.140049, 3.308628, 0.231002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.879160, 3.335085, 0.850320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196823, 3.577255, 0.829254>,  <2.387421, 3.722558, 0.816615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196823, 3.577255, 0.829254>,  <1.879160, 3.335085, 0.850320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196823, 3.577255, 0.829254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428114, 0.618859, 0.658583,
		0.431315, -0.500472, 0.750663,
		0.794157, 0.605426, -0.052664,
		2.435070, 3.758883, 0.813455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.464217, 3.424849, 1.400845>,  <1.879160, 3.335085, 0.850320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.464217, 3.424849, 1.400845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461161, 3.790085, 1.237770>,  <2.459327, 4.009226, 1.139925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461161, 3.790085, 1.237770>,  <2.464217, 3.424849, 1.400845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461161, 3.790085, 1.237770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408049, 0.369364, 0.834905,
		0.912928, 0.172737, 0.369763,
		-0.007641, 0.913089, -0.407688,
		2.458868, 4.064012, 1.115464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.994957, 3.971547, 1.546666>,  <2.464217, 3.424849, 1.400845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.994957, 3.971547, 1.546666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624289, 4.120895, 1.529343>,  <2.401887, 4.210504, 1.518949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624289, 4.120895, 1.529343>,  <2.994957, 3.971547, 1.546666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624289, 4.120895, 1.529343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015107, 0.078130, 0.996829,
		0.375570, 0.924387, -0.066760,
		-0.926671, 0.373370, -0.043308,
		2.346287, 4.232906, 1.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.918184, 4.690500, 1.872957>,  <2.994957, 3.971547, 1.546666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.918184, 4.690500, 1.872957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.551832, 4.530258, 1.883392>,  <2.332021, 4.434113, 1.889654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.551832, 4.530258, 1.883392>,  <2.918184, 4.690500, 1.872957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551832, 4.530258, 1.883392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017088, 0.103830, 0.994448,
		-0.401090, 0.910349, -0.101941,
		-0.915879, -0.400605, 0.026089,
		2.277068, 4.410077, 1.891219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.480434, 5.121432, 2.415574>,  <2.918184, 4.690500, 1.872957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.480434, 5.121432, 2.415574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277020, 4.780029, 2.370117>,  <2.154971, 4.575187, 2.342843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277020, 4.780029, 2.370117>,  <2.480434, 5.121432, 2.415574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.277020, 4.780029, 2.370117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100342, -0.072339, 0.992320,
		-0.855173, 0.516034, -0.048856,
		-0.508537, -0.853508, -0.113643,
		2.124458, 4.523977, 2.336024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.048430, 5.158090, 2.911746>,  <2.480434, 5.121432, 2.415574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.048430, 5.158090, 2.911746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028395, 4.765228, 2.839233>,  <2.016373, 4.529511, 2.795726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028395, 4.765228, 2.839233>,  <2.048430, 5.158090, 2.911746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028395, 4.765228, 2.839233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188832, -0.168922, 0.967372,
		-0.980731, 0.082686, -0.177002,
		-0.050089, -0.982155, -0.181281,
		2.013368, 4.470582, 2.784849>
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
