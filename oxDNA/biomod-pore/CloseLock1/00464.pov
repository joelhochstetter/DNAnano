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
	<24.504080, 34.737160, 34.941868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382706, 35.102329, 35.051048>,  <24.309881, 35.321430, 35.116558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382706, 35.102329, 35.051048>,  <24.504080, 34.737160, 34.941868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382706, 35.102329, 35.051048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509073, 0.397472, -0.763453,
		-0.805463, -0.092706, -0.585350,
		-0.303437, 0.912919, 0.272955,
		24.291674, 35.376205, 35.132935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292053, 34.773098, 35.126991>,  <24.504080, 34.737160, 34.941868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292053, 34.773098, 35.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573790, 34.505356, 35.221539>,  <25.742832, 34.344711, 35.278267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573790, 34.505356, 35.221539>,  <25.292053, 34.773098, 35.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573790, 34.505356, 35.221539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708077, 0.638880, -0.300763,
		0.050303, 0.379210, 0.923943,
		0.704341, -0.669352, 0.236373,
		25.785091, 34.304550, 35.292450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746088, 35.067661, 35.599239>,  <25.292053, 34.773098, 35.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746088, 35.067661, 35.599239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950644, 34.775539, 35.418072>,  <26.073378, 34.600266, 35.309372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950644, 34.775539, 35.418072>,  <25.746088, 35.067661, 35.599239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950644, 34.775539, 35.418072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775542, 0.619234, -0.122817,
		0.370155, -0.288449, 0.883053,
		0.511390, -0.730306, -0.452917,
		26.104061, 34.556446, 35.282196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306341, 35.029118, 36.055012>,  <25.746088, 35.067661, 35.599239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306341, 35.029118, 36.055012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420336, 34.895344, 35.695694>,  <26.488733, 34.815079, 35.480103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420336, 34.895344, 35.695694>,  <26.306341, 35.029118, 36.055012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420336, 34.895344, 35.695694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780299, 0.625232, 0.014778,
		0.556701, -0.705151, 0.439143,
		0.284987, -0.334436, -0.898296,
		26.505833, 34.795013, 35.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900105, 35.254032, 35.938614>,  <26.306341, 35.029118, 36.055012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900105, 35.254032, 35.938614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802813, 35.159149, 35.562408>,  <26.744436, 35.102219, 35.336685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802813, 35.159149, 35.562408>,  <26.900105, 35.254032, 35.938614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802813, 35.159149, 35.562408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518171, 0.787903, -0.332727,
		0.819962, -0.568277, -0.068727,
		-0.243232, -0.237211, -0.940515,
		26.729843, 35.087986, 35.280254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179167, 35.379734, 36.569546>,  <26.900105, 35.254032, 35.938614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179167, 35.379734, 36.569546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363594, 35.492115, 36.906231>,  <27.474251, 35.559544, 37.108242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363594, 35.492115, 36.906231>,  <27.179167, 35.379734, 36.569546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363594, 35.492115, 36.906231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819495, 0.498645, 0.282455,
		-0.340361, -0.820012, 0.460147,
		0.461067, 0.280951, 0.841715,
		27.501915, 35.576401, 37.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881245, 35.157085, 36.234192>,  <27.179167, 35.379734, 36.569546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881245, 35.157085, 36.234192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259041, 35.213268, 36.352989>,  <28.485720, 35.246979, 36.424267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259041, 35.213268, 36.352989>,  <27.881245, 35.157085, 36.234192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259041, 35.213268, 36.352989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327121, 0.485850, 0.810519,
		-0.030448, -0.862682, 0.504830,
		0.944492, 0.140462, 0.296994,
		28.542389, 35.255405, 36.442089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038202, 34.908146, 36.930965>,  <27.881245, 35.157085, 36.234192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038202, 34.908146, 36.930965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339222, 35.169193, 36.895721>,  <28.519835, 35.325821, 36.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339222, 35.169193, 36.895721>,  <28.038202, 34.908146, 36.930965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339222, 35.169193, 36.895721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176874, 0.329194, 0.927549,
		0.634339, -0.682441, 0.363165,
		0.752549, 0.652614, -0.088115,
		28.564987, 35.364979, 36.869286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335615, 34.894665, 37.602352>,  <28.038202, 34.908146, 36.930965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335615, 34.894665, 37.602352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492176, 35.223595, 37.437141>,  <28.586113, 35.420952, 37.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492176, 35.223595, 37.437141>,  <28.335615, 34.894665, 37.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492176, 35.223595, 37.437141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121009, 0.398944, 0.908956,
		0.912228, -0.405749, 0.056640,
		0.391404, 0.822321, -0.413027,
		28.609598, 35.470291, 37.313232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959179, 35.088066, 38.101753>,  <28.335615, 34.894665, 37.602352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959179, 35.088066, 38.101753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857000, 35.412479, 37.891239>,  <28.795692, 35.607128, 37.764931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857000, 35.412479, 37.891239>,  <28.959179, 35.088066, 38.101753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857000, 35.412479, 37.891239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509125, 0.575598, 0.639905,
		0.821912, -0.104484, -0.559951,
		-0.255446, 0.811031, -0.526286,
		28.780367, 35.655788, 37.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701117, 35.412418, 37.966217>,  <28.959179, 35.088066, 38.101753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701117, 35.412418, 37.966217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372309, 35.638725, 37.940334>,  <29.175024, 35.774509, 37.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372309, 35.638725, 37.940334>,  <29.701117, 35.412418, 37.966217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372309, 35.638725, 37.940334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358849, 0.602880, 0.712575,
		0.442164, 0.562530, -0.698606,
		-0.822021, 0.565769, -0.064709,
		29.125702, 35.808456, 37.920921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972776, 36.025414, 38.267387>,  <29.701117, 35.412418, 37.966217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972776, 36.025414, 38.267387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578999, 36.092335, 38.245926>,  <29.342731, 36.132488, 38.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578999, 36.092335, 38.245926>,  <29.972776, 36.025414, 38.267387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578999, 36.092335, 38.245926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066032, 0.635312, 0.769427,
		0.162818, 0.753915, -0.636476,
		-0.984444, 0.167305, -0.053658,
		29.283665, 36.142525, 38.229828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918587, 36.754135, 38.357098>,  <29.972776, 36.025414, 38.267387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918587, 36.754135, 38.357098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552687, 36.611851, 38.433735>,  <29.333147, 36.526482, 38.479717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552687, 36.611851, 38.433735>,  <29.918587, 36.754135, 38.357098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552687, 36.611851, 38.433735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003120, 0.467971, 0.883739,
		-0.404011, 0.808997, -0.426966,
		-0.914749, -0.355708, 0.191589,
		29.278261, 36.505138, 38.491211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556393, 37.358322, 38.573505>,  <29.918587, 36.754135, 38.357098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556393, 37.358322, 38.573505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342255, 37.039162, 38.684334>,  <29.213772, 36.847668, 38.750832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342255, 37.039162, 38.684334>,  <29.556393, 37.358322, 38.573505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342255, 37.039162, 38.684334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010278, 0.321856, 0.946733,
		-0.844571, 0.509677, -0.164103,
		-0.535345, -0.797896, 0.277068,
		29.181650, 36.799793, 38.767456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912151, 37.662743, 39.005333>,  <29.556393, 37.358322, 38.573505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912151, 37.662743, 39.005333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016842, 37.290318, 39.107010>,  <29.079657, 37.066860, 39.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016842, 37.290318, 39.107010>,  <28.912151, 37.662743, 39.005333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016842, 37.290318, 39.107010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024376, 0.256911, 0.966128,
		-0.964834, -0.259058, 0.044545,
		0.261727, -0.931067, 0.254191,
		29.095360, 37.010998, 39.183266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444254, 37.400536, 39.532864>,  <28.912151, 37.662743, 39.005333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444254, 37.400536, 39.532864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761225, 37.160156, 39.574669>,  <28.951406, 37.015930, 39.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761225, 37.160156, 39.574669>,  <28.444254, 37.400536, 39.532864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761225, 37.160156, 39.574669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085950, 0.059623, 0.994514,
		-0.603881, -0.797062, -0.004405,
		0.792427, -0.600947, 0.104513,
		28.998953, 36.979874, 39.606022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373516, 37.086403, 40.086166>,  <28.444254, 37.400536, 39.532864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373516, 37.086403, 40.086166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760750, 37.004791, 40.027946>,  <28.993090, 36.955826, 39.993015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760750, 37.004791, 40.027946>,  <28.373516, 37.086403, 40.086166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760750, 37.004791, 40.027946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194623, 0.246092, 0.949505,
		-0.157905, -0.947530, 0.277946,
		0.968085, -0.204026, -0.145552,
		29.051176, 36.943584, 39.984280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507387, 36.646374, 40.677010>,  <28.373516, 37.086403, 40.086166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507387, 36.646374, 40.677010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866680, 36.759697, 40.542599>,  <29.082256, 36.827690, 40.461952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866680, 36.759697, 40.542599>,  <28.507387, 36.646374, 40.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866680, 36.759697, 40.542599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314368, 0.120196, 0.941661,
		0.307167, -0.951468, 0.018901,
		0.898232, 0.283305, -0.336031,
		29.136150, 36.844688, 40.441788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993505, 36.170750, 41.113625>,  <28.507387, 36.646374, 40.677010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993505, 36.170750, 41.113625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167549, 36.491756, 40.950340>,  <29.271976, 36.684361, 40.852367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167549, 36.491756, 40.950340>,  <28.993505, 36.170750, 41.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167549, 36.491756, 40.950340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357189, 0.262326, 0.896438,
		0.826496, -0.535859, -0.172511,
		0.435110, 0.802521, -0.408214,
		29.298082, 36.732513, 40.827877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621767, 36.082443, 41.328342>,  <28.993505, 36.170750, 41.113625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621767, 36.082443, 41.328342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560638, 36.476730, 41.300026>,  <29.523962, 36.713303, 41.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560638, 36.476730, 41.300026>,  <29.621767, 36.082443, 41.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560638, 36.476730, 41.300026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358937, 0.122101, 0.925341,
		0.920766, 0.116003, -0.372470,
		-0.152821, 0.985715, -0.070788,
		29.514791, 36.772446, 41.278790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221806, 36.335560, 41.738544>,  <29.621767, 36.082443, 41.328342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221806, 36.335560, 41.738544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964808, 36.641163, 41.714905>,  <29.810608, 36.824524, 41.700722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964808, 36.641163, 41.714905>,  <30.221806, 36.335560, 41.738544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964808, 36.641163, 41.714905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279351, 0.305338, 0.910347,
		0.713557, 0.568384, -0.409604,
		-0.642494, 0.764008, -0.059098,
		29.772058, 36.870365, 41.697174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462221, 36.830383, 42.188244>,  <30.221806, 36.335560, 41.738544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462221, 36.830383, 42.188244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077858, 36.932735, 42.145947>,  <29.847240, 36.994148, 42.120567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077858, 36.932735, 42.145947>,  <30.462221, 36.830383, 42.188244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077858, 36.932735, 42.145947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032524, 0.274956, 0.960907,
		0.274956, 0.926781, -0.255885,
		-0.960907, 0.255885, -0.105743,
		29.789585, 37.009502, 42.114223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452696, 37.409855, 42.718582>,  <30.462221, 36.830383, 42.188244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452696, 37.409855, 42.718582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083256, 37.292049, 42.620422>,  <29.861591, 37.221367, 42.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083256, 37.292049, 42.620422>,  <30.452696, 37.409855, 42.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083256, 37.292049, 42.620422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285686, 0.101926, 0.952888,
		-0.255625, 0.950196, -0.178277,
		-0.923601, -0.294513, -0.245403,
		29.806175, 37.203697, 42.546803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950546, 37.842480, 43.026775>,  <30.452696, 37.409855, 42.718582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950546, 37.842480, 43.026775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763084, 37.494221, 42.967007>,  <29.650606, 37.285263, 42.931145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763084, 37.494221, 42.967007>,  <29.950546, 37.842480, 43.026775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763084, 37.494221, 42.967007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339330, 0.021257, 0.940427,
		-0.815608, 0.491441, -0.305401,
		-0.468656, -0.870651, -0.149424,
		29.622488, 37.233025, 42.922180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190567, 37.988895, 43.124031>,  <29.950546, 37.842480, 43.026775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190567, 37.988895, 43.124031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276754, 37.602562, 43.181625>,  <29.328466, 37.370762, 43.216183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276754, 37.602562, 43.181625>,  <29.190567, 37.988895, 43.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276754, 37.602562, 43.181625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612418, -0.018803, 0.790311,
		-0.760604, -0.258468, -0.595547,
		0.215468, -0.965837, 0.143989,
		29.341394, 37.312809, 43.224823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560589, 37.661709, 43.436646>,  <29.190567, 37.988895, 43.124031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560589, 37.661709, 43.436646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888830, 37.459442, 43.543163>,  <29.085775, 37.338081, 43.607075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888830, 37.459442, 43.543163>,  <28.560589, 37.661709, 43.436646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888830, 37.459442, 43.543163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413434, -0.203557, 0.887489,
		-0.394570, -0.838370, -0.376100,
		0.820602, -0.505669, 0.266293,
		29.135012, 37.307743, 43.623051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328505, 37.010456, 43.631317>,  <28.560589, 37.661709, 43.436646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328505, 37.010456, 43.631317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654747, 37.129669, 43.829697>,  <28.850492, 37.201195, 43.948723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654747, 37.129669, 43.829697>,  <28.328505, 37.010456, 43.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654747, 37.129669, 43.829697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395732, -0.337996, 0.853906,
		0.422118, -0.892713, -0.157731,
		0.815606, 0.298029, 0.495949,
		28.899429, 37.219078, 43.978481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292227, 36.746311, 44.287354>,  <28.328505, 37.010456, 43.631317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292227, 36.746311, 44.287354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625099, 36.954746, 44.363190>,  <28.824823, 37.079807, 44.408691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625099, 36.954746, 44.363190>,  <28.292227, 36.746311, 44.287354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625099, 36.954746, 44.363190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178738, -0.071574, 0.981290,
		0.524905, -0.850498, 0.033575,
		0.832182, 0.521085, 0.189586,
		28.874754, 37.111073, 44.420067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870850, 37.312031, 44.646389>,  <28.292227, 36.746311, 44.287354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870850, 37.312031, 44.646389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567757, 37.065067, 44.561867>,  <27.385900, 36.916889, 44.511154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567757, 37.065067, 44.561867>,  <27.870850, 37.312031, 44.646389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567757, 37.065067, 44.561867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578173, -0.785322, 0.221327,
		-0.302590, 0.045537, 0.952032,
		-0.757730, -0.617411, -0.211302,
		27.340437, 36.879845, 44.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682972, 36.872707, 45.234158>,  <27.870850, 37.312031, 44.646389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682972, 36.872707, 45.234158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591402, 36.698444, 44.885952>,  <27.536461, 36.593887, 44.677029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591402, 36.698444, 44.885952>,  <27.682972, 36.872707, 45.234158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591402, 36.698444, 44.885952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595269, -0.770227, 0.228923,
		-0.770227, -0.465786, 0.435653,
		-0.228923, -0.435653, -0.870518,
		27.522726, 36.567749, 44.624798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613756, 36.196571, 45.384380>,  <27.682972, 36.872707, 45.234158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613756, 36.196571, 45.384380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689829, 36.216599, 44.992191>,  <27.735472, 36.228615, 44.756878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689829, 36.216599, 44.992191>,  <27.613756, 36.196571, 45.384380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689829, 36.216599, 44.992191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666513, -0.739856, 0.091505,
		-0.720828, -0.670899, -0.174074,
		0.190180, 0.050063, -0.980472,
		27.746883, 36.231617, 44.698051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666546, 35.482628, 45.001717>,  <27.613756, 36.196571, 45.384380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666546, 35.482628, 45.001717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913250, 35.773968, 44.882305>,  <28.061272, 35.948772, 44.810658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913250, 35.773968, 44.882305>,  <27.666546, 35.482628, 45.001717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913250, 35.773968, 44.882305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779084, -0.618996, 0.099362,
		-0.112419, -0.293863, -0.949214,
		0.616758, 0.728347, -0.298531,
		28.098278, 35.992474, 44.792747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145756, 35.103584, 44.631351>,  <27.666546, 35.482628, 45.001717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145756, 35.103584, 44.631351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302778, 35.447475, 44.762054>,  <28.396992, 35.653809, 44.840477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302778, 35.447475, 44.762054>,  <28.145756, 35.103584, 44.631351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302778, 35.447475, 44.762054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797839, -0.495062, 0.344043,
		0.457549, 0.125644, -0.880263,
		0.392558, 0.859725, 0.326759,
		28.420546, 35.705395, 44.860081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634716, 34.526012, 44.420223>,  <28.145756, 35.103584, 44.631351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634716, 34.526012, 44.420223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730230, 34.138897, 44.452129>,  <27.787539, 33.906628, 44.471272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730230, 34.138897, 44.452129>,  <27.634716, 34.526012, 44.420223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730230, 34.138897, 44.452129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819081, 0.156609, -0.551887,
		0.521620, 0.197115, 0.830096,
		0.238786, -0.967791, 0.079763,
		27.801867, 33.848560, 44.476059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355015, 34.434116, 44.539062>,  <27.634716, 34.526012, 44.420223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355015, 34.434116, 44.539062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254353, 34.111057, 44.325756>,  <28.193956, 33.917221, 44.197773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254353, 34.111057, 44.325756>,  <28.355015, 34.434116, 44.539062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254353, 34.111057, 44.325756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833090, 0.099660, -0.544085,
		0.492576, -0.581180, 0.647765,
		-0.251655, -0.807650, -0.533265,
		28.178856, 33.868763, 44.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887571, 34.422279, 44.062420>,  <28.355015, 34.434116, 44.539062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887571, 34.422279, 44.062420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696877, 34.087925, 43.953594>,  <28.582458, 33.887314, 43.888298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696877, 34.087925, 43.953594>,  <28.887571, 34.422279, 44.062420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696877, 34.087925, 43.953594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628429, -0.107675, -0.770379,
		0.614653, -0.538241, 0.576627,
		-0.476738, -0.835884, -0.272063,
		28.553856, 33.837158, 43.871975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364454, 34.009647, 43.807713>,  <28.887571, 34.422279, 44.062420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364454, 34.009647, 43.807713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034731, 33.880627, 43.621605>,  <28.836897, 33.803215, 43.509941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034731, 33.880627, 43.621605>,  <29.364454, 34.009647, 43.807713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034731, 33.880627, 43.621605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511549, -0.072267, -0.856210,
		0.242549, -0.943789, 0.224571,
		-0.824310, -0.322552, -0.465266,
		28.787437, 33.783859, 43.482025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712175, 33.491131, 43.282661>,  <29.364454, 34.009647, 43.807713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712175, 33.491131, 43.282661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332180, 33.544830, 43.169880>,  <29.104183, 33.577049, 43.102211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332180, 33.544830, 43.169880>,  <29.712175, 33.491131, 43.282661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332180, 33.544830, 43.169880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268331, -0.110956, -0.956916,
		-0.159757, -0.984715, 0.069382,
		-0.949988, 0.134256, -0.281955,
		29.047184, 33.585106, 43.085293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590895, 32.922699, 42.912636>,  <29.712175, 33.491131, 43.282661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590895, 32.922699, 42.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344025, 33.211391, 42.787285>,  <29.195904, 33.384605, 42.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344025, 33.211391, 42.787285>,  <29.590895, 32.922699, 42.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344025, 33.211391, 42.787285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269734, -0.180074, -0.945948,
		-0.739148, -0.668342, -0.083538,
		-0.617174, 0.721728, -0.313376,
		29.158873, 33.427910, 42.693272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261065, 32.595821, 42.306328>,  <29.590895, 32.922699, 42.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261065, 32.595821, 42.306328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215635, 32.989639, 42.252998>,  <29.188377, 33.225929, 42.221001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215635, 32.989639, 42.252998>,  <29.261065, 32.595821, 42.306328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215635, 32.989639, 42.252998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202457, -0.108441, -0.973269,
		-0.972683, -0.137530, -0.187011,
		-0.113574, 0.984544, -0.133323,
		29.181562, 33.285004, 42.213001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126148, 32.602875, 41.670197>,  <29.261065, 32.595821, 42.306328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126148, 32.602875, 41.670197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183729, 32.992615, 41.739380>,  <29.218279, 33.226460, 41.780891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183729, 32.992615, 41.739380>,  <29.126148, 32.602875, 41.670197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183729, 32.992615, 41.739380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333471, 0.116793, -0.935498,
		-0.931705, 0.192345, -0.308106,
		0.143954, 0.974352, 0.172958,
		29.226915, 33.284920, 41.791267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843658, 32.995792, 41.061413>,  <29.126148, 32.602875, 41.670197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843658, 32.995792, 41.061413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113100, 33.224518, 41.248722>,  <29.274765, 33.361755, 41.361107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113100, 33.224518, 41.248722>,  <28.843658, 32.995792, 41.061413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113100, 33.224518, 41.248722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456370, 0.176574, -0.872094,
		-0.581364, 0.801153, -0.142020,
		0.673603, 0.571818, 0.468276,
		29.315182, 33.396065, 41.389206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087374, 33.474792, 40.557331>,  <28.843658, 32.995792, 41.061413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087374, 33.474792, 40.557331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370548, 33.548534, 40.830048>,  <29.540453, 33.592781, 40.993679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370548, 33.548534, 40.830048>,  <29.087374, 33.474792, 40.557331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370548, 33.548534, 40.830048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615639, 0.312027, -0.723621,
		-0.346143, 0.932014, 0.107396,
		0.707936, 0.184359, 0.681791,
		29.582930, 33.603844, 41.034584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206209, 34.295883, 40.620331>,  <29.087374, 33.474792, 40.557331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206209, 34.295883, 40.620331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541231, 34.109329, 40.734161>,  <29.742245, 33.997398, 40.802460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541231, 34.109329, 40.734161>,  <29.206209, 34.295883, 40.620331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541231, 34.109329, 40.734161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525694, 0.546067, -0.652270,
		0.148809, 0.695915, 0.702537,
		0.837557, -0.466384, 0.284578,
		29.792498, 33.969414, 40.819534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744457, 34.804142, 40.557941>,  <29.206209, 34.295883, 40.620331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744457, 34.804142, 40.557941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947773, 34.460369, 40.579922>,  <30.069761, 34.254105, 40.593109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947773, 34.460369, 40.579922>,  <29.744457, 34.804142, 40.557941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947773, 34.460369, 40.579922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625831, 0.324788, -0.709118,
		0.591591, 0.394827, 0.702945,
		0.508287, -0.859433, 0.054953,
		30.100260, 34.202538, 40.596409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506170, 34.955479, 40.650314>,  <29.744457, 34.804142, 40.557941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506170, 34.955479, 40.650314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459097, 34.599533, 40.474003>,  <30.430853, 34.385963, 40.368214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459097, 34.599533, 40.474003>,  <30.506170, 34.955479, 40.650314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459097, 34.599533, 40.474003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431369, 0.353992, -0.829826,
		0.894467, -0.287798, 0.342202,
		-0.117685, -0.889867, -0.440781,
		30.423792, 34.332573, 40.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183483, 34.794983, 40.399525>,  <30.506170, 34.955479, 40.650314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183483, 34.794983, 40.399525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950520, 34.533611, 40.206100>,  <30.810741, 34.376789, 40.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950520, 34.533611, 40.206100>,  <31.183483, 34.794983, 40.399525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950520, 34.533611, 40.206100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431835, 0.255280, -0.865073,
		0.688706, -0.712645, 0.133496,
		-0.582411, -0.653429, -0.483558,
		30.775797, 34.337582, 40.061031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584410, 34.419376, 39.813850>,  <31.183483, 34.794983, 40.399525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584410, 34.419376, 39.813850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202642, 34.356441, 39.712395>,  <30.973583, 34.318680, 39.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202642, 34.356441, 39.712395>,  <31.584410, 34.419376, 39.813850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202642, 34.356441, 39.712395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239419, 0.103882, -0.965343,
		0.178235, -0.982066, -0.061477,
		-0.954417, -0.157339, -0.253640,
		30.916317, 34.309242, 39.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696236, 33.944309, 39.273495>,  <31.584410, 34.419376, 39.813850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696236, 33.944309, 39.273495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341053, 34.126400, 39.247272>,  <31.127943, 34.235653, 39.231537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341053, 34.126400, 39.247272>,  <31.696236, 33.944309, 39.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341053, 34.126400, 39.247272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140424, 0.132606, -0.981171,
		-0.437962, -0.880446, -0.181673,
		-0.887959, 0.455226, -0.065559,
		31.074665, 34.262966, 39.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459879, 33.730949, 38.622765>,  <31.696236, 33.944309, 39.273495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459879, 33.730949, 38.622765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253716, 34.064369, 38.702305>,  <31.130016, 34.264423, 38.750027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253716, 34.064369, 38.702305>,  <31.459879, 33.730949, 38.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253716, 34.064369, 38.702305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185600, 0.335118, -0.923715,
		-0.836603, -0.439186, -0.327431,
		-0.515410, 0.833554, 0.198847,
		31.099092, 34.314434, 38.761959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087708, 33.824608, 37.966084>,  <31.459879, 33.730949, 38.622765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087708, 33.824608, 37.966084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052849, 34.180904, 38.144512>,  <31.031933, 34.394684, 38.251572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052849, 34.180904, 38.144512>,  <31.087708, 33.824608, 37.966084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052849, 34.180904, 38.144512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161070, 0.429288, -0.888689,
		-0.983088, -0.149297, 0.106060,
		-0.087148, 0.890743, 0.446075,
		31.026705, 34.448128, 38.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482573, 34.087811, 37.723621>,  <31.087708, 33.824608, 37.966084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482573, 34.087811, 37.723621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688349, 34.410545, 37.839802>,  <30.811813, 34.604187, 37.909512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688349, 34.410545, 37.839802>,  <30.482573, 34.087811, 37.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688349, 34.410545, 37.839802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125461, 0.405879, -0.905274,
		-0.848299, 0.429269, 0.310027,
		0.514440, 0.806840, 0.290450,
		30.842680, 34.652596, 37.926937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051300, 34.692226, 37.490276>,  <30.482573, 34.087811, 37.723621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051300, 34.692226, 37.490276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426449, 34.818054, 37.548851>,  <30.651537, 34.893551, 37.583996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426449, 34.818054, 37.548851>,  <30.051300, 34.692226, 37.490276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426449, 34.818054, 37.548851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013436, 0.388791, -0.921228,
		-0.346727, 0.865959, 0.360409,
		0.937870, 0.314572, 0.146439,
		30.707809, 34.912426, 37.592781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050186, 35.325596, 37.223476>,  <30.051300, 34.692226, 37.490276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050186, 35.325596, 37.223476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444632, 35.260490, 37.236675>,  <30.681299, 35.221428, 37.244595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444632, 35.260490, 37.236675>,  <30.050186, 35.325596, 37.223476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444632, 35.260490, 37.236675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100864, 0.429126, -0.897595,
		0.131937, 0.888459, 0.439584,
		0.986113, -0.162764, 0.032996,
		30.740465, 35.211662, 37.246574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347187, 35.974716, 37.095844>,  <30.050186, 35.325596, 37.223476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347187, 35.974716, 37.095844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618399, 35.700066, 36.990906>,  <30.781126, 35.535275, 36.927944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618399, 35.700066, 36.990906>,  <30.347187, 35.974716, 37.095844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618399, 35.700066, 36.990906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127679, 0.461507, -0.877901,
		0.723860, 0.561747, 0.400583,
		0.678030, -0.686623, -0.262343,
		30.821808, 35.494080, 36.912205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801655, 36.375431, 36.798229>,  <30.347187, 35.974716, 37.095844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801655, 36.375431, 36.798229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900251, 36.012108, 36.663048>,  <30.959410, 35.794113, 36.581940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900251, 36.012108, 36.663048>,  <30.801655, 36.375431, 36.798229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900251, 36.012108, 36.663048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172472, 0.384262, -0.906971,
		0.953674, 0.165273, 0.251376,
		0.246492, -0.908310, -0.337955,
		30.974199, 35.739616, 36.561661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476761, 36.419266, 36.444965>,  <30.801655, 36.375431, 36.798229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476761, 36.419266, 36.444965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266794, 36.109943, 36.302719>,  <31.140814, 35.924351, 36.217373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266794, 36.109943, 36.302719>,  <31.476761, 36.419266, 36.444965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266794, 36.109943, 36.302719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181173, 0.306716, -0.934399,
		0.831648, -0.554909, -0.020899,
		-0.524916, -0.773305, -0.355614,
		31.109320, 35.877953, 36.196033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766867, 35.815853, 36.008064>,  <31.476761, 36.419266, 36.444965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766867, 35.815853, 36.008064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409967, 35.903168, 35.849953>,  <31.195827, 35.955555, 35.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409967, 35.903168, 35.849953>,  <31.766867, 35.815853, 36.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409967, 35.903168, 35.849953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450936, 0.385215, -0.805150,
		-0.023485, -0.896638, -0.442140,
		-0.892247, 0.218286, -0.395279,
		31.142294, 35.968655, 35.731369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512325, 35.687954, 35.727818>,  <31.766867, 35.815853, 36.008064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512325, 35.687954, 35.727818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490311, 35.299271, 35.819691>,  <32.477104, 35.066059, 35.874813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490311, 35.299271, 35.819691>,  <32.512325, 35.687954, 35.727818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490311, 35.299271, 35.819691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929929, 0.033886, 0.366174,
		-0.363598, 0.233740, 0.901755,
		-0.055033, -0.971708, 0.229683,
		32.473801, 35.007759, 35.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915871, 35.142559, 35.372753>,  <32.512325, 35.687954, 35.727818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915871, 35.142559, 35.372753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280373, 35.280571, 35.282799>,  <33.499073, 35.363377, 35.228825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280373, 35.280571, 35.282799>,  <32.915871, 35.142559, 35.372753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280373, 35.280571, 35.282799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305845, -0.932614, -0.191547,
		-0.275825, 0.105766, -0.955371,
		0.911251, 0.345029, -0.224891,
		33.553749, 35.384079, 35.215332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209946, 35.017414, 34.683178>,  <32.915871, 35.142559, 35.372753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209946, 35.017414, 34.683178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480259, 35.029179, 34.977783>,  <33.642448, 35.036236, 35.154545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480259, 35.029179, 34.977783>,  <33.209946, 35.017414, 34.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480259, 35.029179, 34.977783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342105, -0.897580, -0.278055,
		0.652903, 0.439870, -0.616629,
		0.675782, 0.029409, 0.736515,
		33.682995, 35.038002, 35.198738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780441, 34.846256, 34.451897>,  <33.209946, 35.017414, 34.683178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780441, 34.846256, 34.451897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856113, 34.755833, 34.834126>,  <33.901516, 34.701580, 35.063461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856113, 34.755833, 34.834126>,  <33.780441, 34.846256, 34.451897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856113, 34.755833, 34.834126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398131, -0.871905, -0.285085,
		0.897609, 0.434374, -0.074948,
		0.189181, -0.226056, 0.955567,
		33.912868, 34.688015, 35.120796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409130, 34.744457, 34.669029>,  <33.780441, 34.846256, 34.451897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409130, 34.744457, 34.669029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235764, 34.511032, 34.943726>,  <34.131744, 34.370975, 35.108543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235764, 34.511032, 34.943726>,  <34.409130, 34.744457, 34.669029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235764, 34.511032, 34.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462250, -0.798105, -0.386462,
		0.773613, 0.149946, 0.615662,
		-0.433414, -0.583562, 0.686737,
		34.105740, 34.335964, 35.149746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048752, 34.924683, 35.140598>,  <34.409130, 34.744457, 34.669029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048752, 34.924683, 35.140598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164654, 34.598057, 35.340305>,  <35.234196, 34.402081, 35.460129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164654, 34.598057, 35.340305>,  <35.048752, 34.924683, 35.140598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164654, 34.598057, 35.340305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128857, 0.483615, 0.865744,
		-0.948387, -0.315187, 0.034910,
		0.289755, -0.816562, 0.499268,
		35.251579, 34.353088, 35.490086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496155, 34.783264, 35.528831>,  <35.048752, 34.924683, 35.140598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496155, 34.783264, 35.528831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836617, 34.644810, 35.686676>,  <35.040894, 34.561737, 35.781384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836617, 34.644810, 35.686676>,  <34.496155, 34.783264, 35.528831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836617, 34.644810, 35.686676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152253, 0.556653, 0.816674,
		-0.502346, -0.755199, 0.421098,
		0.851156, -0.346140, 0.394614,
		35.091965, 34.540966, 35.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353813, 34.590748, 36.216942>,  <34.496155, 34.783264, 35.528831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353813, 34.590748, 36.216942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745632, 34.668678, 36.196793>,  <34.980724, 34.715439, 36.184704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745632, 34.668678, 36.196793>,  <34.353813, 34.590748, 36.216942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745632, 34.668678, 36.196793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040239, 0.434905, 0.899577,
		0.197170, -0.879147, 0.433848,
		0.979543, 0.194827, -0.050374,
		35.039494, 34.727127, 36.181679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534431, 34.452305, 36.843838>,  <34.353813, 34.590748, 36.216942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534431, 34.452305, 36.843838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842003, 34.662388, 36.698017>,  <35.026546, 34.788437, 36.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842003, 34.662388, 36.698017>,  <34.534431, 34.452305, 36.843838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842003, 34.662388, 36.698017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054801, 0.513966, 0.856058,
		0.636977, -0.678229, 0.366423,
		0.768932, 0.525209, -0.364552,
		35.072681, 34.819950, 36.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065239, 34.453514, 37.385727>,  <34.534431, 34.452305, 36.843838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065239, 34.453514, 37.385727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205387, 34.753204, 37.160904>,  <35.289474, 34.933018, 37.026012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205387, 34.753204, 37.160904>,  <35.065239, 34.453514, 37.385727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205387, 34.753204, 37.160904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315476, 0.470626, 0.824006,
		0.881883, -0.466018, -0.071471,
		0.350366, 0.749225, -0.562055,
		35.310497, 34.977970, 36.992287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817135, 34.495041, 37.536301>,  <35.065239, 34.453514, 37.385727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817135, 34.495041, 37.536301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640198, 34.836452, 37.426159>,  <35.534035, 35.041298, 37.360073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640198, 34.836452, 37.426159>,  <35.817135, 34.495041, 37.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640198, 34.836452, 37.426159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371085, 0.453701, 0.810217,
		0.816472, 0.256216, -0.517424,
		-0.442346, 0.853527, -0.275357,
		35.507496, 35.092510, 37.343552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220364, 35.001820, 37.828426>,  <35.817135, 34.495041, 37.536301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220364, 35.001820, 37.828426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902126, 35.216530, 37.716064>,  <35.711185, 35.345356, 37.648647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902126, 35.216530, 37.716064>,  <36.220364, 35.001820, 37.828426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902126, 35.216530, 37.716064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166138, 0.639197, 0.750883,
		0.582611, 0.550726, -0.597718,
		-0.795590, 0.536776, -0.280906,
		35.663448, 35.377563, 37.631794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439907, 35.718033, 37.862518>,  <36.220364, 35.001820, 37.828426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439907, 35.718033, 37.862518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039921, 35.720863, 37.863945>,  <35.799927, 35.722561, 37.864799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039921, 35.720863, 37.863945>,  <36.439907, 35.718033, 37.862518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039921, 35.720863, 37.863945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007330, 0.655731, 0.754959,
		0.003007, 0.754962, -0.655762,
		-0.999969, 0.007077, 0.003563,
		35.739929, 35.722988, 37.865013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230354, 36.496166, 37.971088>,  <36.439907, 35.718033, 37.862518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230354, 36.496166, 37.971088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952152, 36.240665, 38.102707>,  <35.785233, 36.087364, 38.181679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952152, 36.240665, 38.102707>,  <36.230354, 36.496166, 37.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952152, 36.240665, 38.102707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053865, 0.410313, 0.910352,
		-0.716503, 0.650875, -0.250967,
		-0.695501, -0.638752, 0.329050,
		35.743504, 36.049042, 38.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764771, 36.860100, 38.307262>,  <36.230354, 36.496166, 37.971088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764771, 36.860100, 38.307262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715069, 36.490257, 38.451294>,  <35.685246, 36.268353, 38.537712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715069, 36.490257, 38.451294>,  <35.764771, 36.860100, 38.307262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715069, 36.490257, 38.451294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000650, 0.362817, 0.931860,
		-0.992250, 0.116026, -0.044482,
		-0.124259, -0.924609, 0.360080,
		35.677792, 36.212875, 38.559319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220734, 36.983147, 38.700172>,  <35.764771, 36.860100, 38.307262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220734, 36.983147, 38.700172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387108, 36.639599, 38.819736>,  <35.486935, 36.433472, 38.891476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387108, 36.639599, 38.819736>,  <35.220734, 36.983147, 38.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387108, 36.639599, 38.819736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166572, 0.251177, 0.953501,
		-0.894008, -0.446387, -0.038589,
		0.415937, -0.858865, 0.298910,
		35.511890, 36.381939, 38.909409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733299, 36.614056, 39.226952>,  <35.220734, 36.983147, 38.700172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733299, 36.614056, 39.226952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104950, 36.474911, 39.277088>,  <35.327942, 36.391426, 39.307171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104950, 36.474911, 39.277088>,  <34.733299, 36.614056, 39.226952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104950, 36.474911, 39.277088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021470, 0.287658, 0.957492,
		-0.369127, -0.892327, 0.259803,
		0.929131, -0.347858, 0.125341,
		35.383690, 36.370552, 39.314690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685440, 36.495937, 39.946854>,  <34.733299, 36.614056, 39.226952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685440, 36.495937, 39.946854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073402, 36.441219, 39.866291>,  <35.306179, 36.408390, 39.817955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073402, 36.441219, 39.866291>,  <34.685440, 36.495937, 39.946854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073402, 36.441219, 39.866291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197095, -0.044497, 0.979374,
		-0.142935, -0.989599, -0.016196,
		0.969909, -0.136795, -0.201405,
		35.364376, 36.400181, 39.805870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816502, 35.816708, 40.202961>,  <34.685440, 36.495937, 39.946854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816502, 35.816708, 40.202961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119751, 36.077530, 40.199375>,  <35.301701, 36.234024, 40.197224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119751, 36.077530, 40.199375>,  <34.816502, 35.816708, 40.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119751, 36.077530, 40.199375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133960, -0.142265, 0.980722,
		0.638206, -0.744708, -0.195203,
		0.758121, 0.652052, -0.008967,
		35.347187, 36.273144, 40.196686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254570, 35.524315, 40.724205>,  <34.816502, 35.816708, 40.202961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254570, 35.524315, 40.724205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424026, 35.883907, 40.679718>,  <35.525700, 36.099663, 40.653027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424026, 35.883907, 40.679718>,  <35.254570, 35.524315, 40.724205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424026, 35.883907, 40.679718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313103, -0.030114, 0.949241,
		0.849998, -0.436957, -0.294230,
		0.423639, 0.898978, -0.111215,
		35.551117, 36.153599, 40.646355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809170, 35.508099, 41.153893>,  <35.254570, 35.524315, 40.724205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809170, 35.508099, 41.153893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710850, 35.887939, 41.076080>,  <35.651855, 36.115845, 41.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710850, 35.887939, 41.076080>,  <35.809170, 35.508099, 41.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710850, 35.887939, 41.076080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146919, 0.234865, 0.960861,
		0.958121, 0.207602, -0.197245,
		-0.245803, 0.949600, -0.194529,
		35.637108, 36.172821, 41.017723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215370, 35.882080, 41.596245>,  <35.809170, 35.508099, 41.153893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215370, 35.882080, 41.596245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902531, 36.116920, 41.512688>,  <35.714828, 36.257824, 41.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902531, 36.116920, 41.512688>,  <36.215370, 35.882080, 41.596245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902531, 36.116920, 41.512688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198736, 0.082717, 0.976556,
		0.590619, 0.805275, 0.051986,
		-0.782096, 0.587104, -0.208891,
		35.667900, 36.293053, 41.450020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178921, 36.410847, 42.157639>,  <36.215370, 35.882080, 41.596245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178921, 36.410847, 42.157639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819710, 36.443592, 41.984734>,  <35.604183, 36.463238, 41.880989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819710, 36.443592, 41.984734>,  <36.178921, 36.410847, 42.157639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819710, 36.443592, 41.984734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417675, 0.150014, 0.896127,
		0.138206, 0.985289, -0.100523,
		-0.898024, 0.081864, -0.432263,
		35.550304, 36.468151, 41.855053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924046, 37.035564, 42.435051>,  <36.178921, 36.410847, 42.157639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924046, 37.035564, 42.435051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621681, 36.811378, 42.299717>,  <35.440262, 36.676868, 42.218517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621681, 36.811378, 42.299717>,  <35.924046, 37.035564, 42.435051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621681, 36.811378, 42.299717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591616, 0.363520, 0.719614,
		-0.280325, 0.744133, -0.606370,
		-0.755916, -0.560464, -0.338337,
		35.394905, 36.643238, 42.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393269, 37.515480, 42.209625>,  <35.924046, 37.035564, 42.435051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393269, 37.515480, 42.209625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237534, 37.159031, 42.302853>,  <35.144093, 36.945164, 42.358788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237534, 37.159031, 42.302853>,  <35.393269, 37.515480, 42.209625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237534, 37.159031, 42.302853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692978, 0.450074, 0.563218,
		-0.606793, 0.057770, -0.792758,
		-0.389336, -0.891121, 0.233068,
		35.120731, 36.891693, 42.372772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688435, 37.642723, 42.223755>,  <35.393269, 37.515480, 42.209625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688435, 37.642723, 42.223755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740395, 37.302078, 42.426884>,  <34.771568, 37.097691, 42.548759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740395, 37.302078, 42.426884>,  <34.688435, 37.642723, 42.223755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740395, 37.302078, 42.426884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685132, 0.293133, 0.666834,
		-0.716743, -0.434544, -0.545390,
		0.129897, -0.851613, 0.507821,
		34.779366, 37.046593, 42.579231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069855, 37.619350, 42.591953>,  <34.688435, 37.642723, 42.223755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069855, 37.619350, 42.591953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271008, 37.329803, 42.780895>,  <34.391697, 37.156075, 42.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271008, 37.329803, 42.780895>,  <34.069855, 37.619350, 42.591953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271008, 37.329803, 42.780895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690545, -0.007775, 0.723248,
		-0.519866, -0.689891, -0.503775,
		0.502879, -0.723872, 0.472359,
		34.421871, 37.112640, 42.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560493, 37.237526, 42.875050>,  <34.069855, 37.619350, 42.591953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560493, 37.237526, 42.875050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886780, 37.126850, 43.078247>,  <34.082550, 37.060444, 43.200165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886780, 37.126850, 43.078247>,  <33.560493, 37.237526, 42.875050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886780, 37.126850, 43.078247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532840, -0.017583, 0.846033,
		-0.225156, -0.960799, -0.161774,
		0.815712, -0.276689, 0.507993,
		34.131493, 37.043842, 43.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420864, 36.562172, 43.306404>,  <33.560493, 37.237526, 42.875050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420864, 36.562172, 43.306404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739777, 36.752010, 43.455589>,  <33.931126, 36.865913, 43.545101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739777, 36.752010, 43.455589>,  <33.420864, 36.562172, 43.306404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739777, 36.752010, 43.455589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464180, 0.087084, 0.881449,
		0.385851, -0.875886, 0.289728,
		0.797280, 0.474594, 0.372967,
		33.978962, 36.894390, 43.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522762, 36.292290, 44.005424>,  <33.420864, 36.562172, 43.306404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522762, 36.292290, 44.005424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701748, 36.649952, 43.998894>,  <33.809139, 36.864548, 43.994976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701748, 36.649952, 43.998894>,  <33.522762, 36.292290, 44.005424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701748, 36.649952, 43.998894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341029, 0.187482, 0.921167,
		0.826727, -0.406619, 0.388824,
		0.447461, 0.894154, -0.016327,
		33.835987, 36.918198, 43.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630196, 36.371681, 44.687977>,  <33.522762, 36.292290, 44.005424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630196, 36.371681, 44.687977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681854, 36.748260, 44.563400>,  <33.712849, 36.974209, 44.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681854, 36.748260, 44.563400>,  <33.630196, 36.371681, 44.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681854, 36.748260, 44.563400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304827, 0.336552, 0.890962,
		0.943611, -0.020130, 0.330444,
		0.129147, 0.941450, -0.311438,
		33.720600, 37.030697, 44.469971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044521, 36.564331, 45.195137>,  <33.630196, 36.371681, 44.687977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044521, 36.564331, 45.195137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904999, 36.903534, 45.035530>,  <33.821285, 37.107056, 44.939766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904999, 36.903534, 45.035530>,  <34.044521, 36.564331, 45.195137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904999, 36.903534, 45.035530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185850, 0.354717, 0.916316,
		0.918583, 0.393774, 0.033875,
		-0.348806, 0.848008, -0.399020,
		33.800358, 37.157936, 44.915825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356518, 37.070503, 45.512836>,  <34.044521, 36.564331, 45.195137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356518, 37.070503, 45.512836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028984, 37.248413, 45.367676>,  <33.832466, 37.355160, 45.280579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028984, 37.248413, 45.367676>,  <34.356518, 37.070503, 45.512836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028984, 37.248413, 45.367676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247963, 0.296107, 0.922407,
		0.517717, 0.845280, -0.132175,
		-0.818830, 0.444772, -0.362898,
		33.783337, 37.381844, 45.258808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428391, 37.679802, 45.738312>,  <34.356518, 37.070503, 45.512836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428391, 37.679802, 45.738312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037888, 37.618107, 45.677483>,  <33.803585, 37.581089, 45.640984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037888, 37.618107, 45.677483>,  <34.428391, 37.679802, 45.738312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037888, 37.618107, 45.677483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178786, 0.177453, 0.967753,
		-0.122281, 0.971967, -0.200817,
		-0.976260, -0.154241, -0.152075,
		33.745010, 37.571835, 45.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151230, 38.240398, 45.879944>,  <34.428391, 37.679802, 45.738312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151230, 38.240398, 45.879944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834042, 37.999882, 45.919220>,  <33.643726, 37.855572, 45.942787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834042, 37.999882, 45.919220>,  <34.151230, 38.240398, 45.879944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834042, 37.999882, 45.919220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199675, 0.408753, 0.890534,
		-0.575608, 0.686562, -0.444193,
		-0.792972, -0.601293, 0.098192,
		33.596149, 37.819492, 45.948677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682270, 38.598175, 46.188648>,  <34.151230, 38.240398, 45.879944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682270, 38.598175, 46.188648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509045, 38.243523, 46.253559>,  <33.405109, 38.030731, 46.292507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509045, 38.243523, 46.253559>,  <33.682270, 38.598175, 46.188648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509045, 38.243523, 46.253559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269993, 0.299369, 0.915140,
		-0.859976, 0.352501, -0.369032,
		-0.433065, -0.886635, 0.162277,
		33.379124, 37.977531, 46.302242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008881, 38.673450, 46.536671>,  <33.682270, 38.598175, 46.188648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008881, 38.673450, 46.536671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097431, 38.295727, 46.634052>,  <33.150562, 38.069092, 46.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097431, 38.295727, 46.634052>,  <33.008881, 38.673450, 46.536671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097431, 38.295727, 46.634052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495361, 0.106151, 0.862177,
		-0.840007, -0.311458, -0.444277,
		0.221372, -0.944312, 0.243452,
		33.163841, 38.012432, 46.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427132, 38.340771, 46.962078>,  <33.008881, 38.673450, 46.536671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427132, 38.340771, 46.962078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750946, 38.130333, 47.066292>,  <32.945236, 38.004070, 47.128819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750946, 38.130333, 47.066292>,  <32.427132, 38.340771, 46.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750946, 38.130333, 47.066292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388374, -0.147128, 0.909681,
		-0.440245, -0.837604, -0.323426,
		0.809537, -0.526092, 0.260531,
		32.993809, 37.972504, 47.144451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226200, 37.699764, 47.384796>,  <32.427132, 38.340771, 46.962078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226200, 37.699764, 47.384796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616482, 37.731323, 47.466545>,  <32.850651, 37.750259, 47.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616482, 37.731323, 47.466545>,  <32.226200, 37.699764, 47.384796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616482, 37.731323, 47.466545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181020, -0.235112, 0.954963,
		0.123397, -0.968761, -0.215118,
		0.975707, 0.078899, 0.204377,
		32.909195, 37.754993, 47.527859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331326, 37.115246, 47.880577>,  <32.226200, 37.699764, 47.384796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331326, 37.115246, 47.880577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678257, 37.312328, 47.908829>,  <32.886414, 37.430576, 47.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678257, 37.312328, 47.908829>,  <32.331326, 37.115246, 47.880577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678257, 37.312328, 47.908829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103671, -0.317604, 0.942539,
		0.486824, -0.810167, -0.326545,
		0.867326, 0.492704, 0.070627,
		32.938454, 37.460140, 47.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828030, 36.687088, 48.061333>,  <32.331326, 37.115246, 47.880577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828030, 36.687088, 48.061333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944077, 37.045269, 48.196388>,  <33.013702, 37.260178, 48.277420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944077, 37.045269, 48.196388>,  <32.828030, 36.687088, 48.061333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944077, 37.045269, 48.196388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013222, -0.349030, 0.937018,
		0.956900, -0.276308, -0.089420,
		0.290115, 0.895451, 0.337640,
		33.031113, 37.313904, 48.297680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444080, 36.552574, 48.535652>,  <32.828030, 36.687088, 48.061333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444080, 36.552574, 48.535652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318478, 36.924721, 48.611347>,  <33.243118, 37.148010, 48.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318478, 36.924721, 48.611347>,  <33.444080, 36.552574, 48.535652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318478, 36.924721, 48.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226857, -0.120024, 0.966504,
		0.921920, 0.346418, -0.173373,
		-0.314005, 0.930370, 0.189240,
		33.224277, 37.203831, 48.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845814, 36.705566, 49.128887>,  <33.444080, 36.552574, 48.535652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845814, 36.705566, 49.128887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543343, 36.965668, 49.099556>,  <33.361862, 37.121727, 49.081955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543343, 36.965668, 49.099556>,  <33.845814, 36.705566, 49.128887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543343, 36.965668, 49.099556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124508, -0.032954, 0.991671,
		0.642417, 0.759006, 0.105880,
		-0.756173, 0.650249, -0.073332,
		33.316490, 37.160744, 49.077557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934574, 37.240414, 49.679314>,  <33.845814, 36.705566, 49.128887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934574, 37.240414, 49.679314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549919, 37.310532, 49.594906>,  <33.319126, 37.352604, 49.544262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549919, 37.310532, 49.594906>,  <33.934574, 37.240414, 49.679314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549919, 37.310532, 49.594906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205018, 0.051888, 0.977382,
		0.182282, 0.983147, -0.013958,
		-0.961634, 0.175298, -0.211021,
		33.261429, 37.363121, 49.531601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671593, 37.749187, 50.108437>,  <33.934574, 37.240414, 49.679314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671593, 37.749187, 50.108437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347092, 37.547329, 49.990311>,  <33.152393, 37.426212, 49.919437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347092, 37.547329, 49.990311>,  <33.671593, 37.749187, 50.108437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347092, 37.547329, 49.990311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325300, -0.030137, 0.945130,
		-0.485856, 0.862801, -0.139713,
		-0.811249, -0.504646, -0.295311,
		33.103718, 37.395935, 49.901718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084991, 38.077415, 50.481277>,  <33.671593, 37.749187, 50.108437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084991, 38.077415, 50.481277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949638, 37.732933, 50.329586>,  <32.868427, 37.526241, 50.238571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949638, 37.732933, 50.329586>,  <33.084991, 38.077415, 50.481277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949638, 37.732933, 50.329586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472453, -0.193041, 0.859956,
		-0.813809, 0.470162, -0.341559,
		-0.338383, -0.861210, -0.379228,
		32.848122, 37.474571, 50.215816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305325, 38.098495, 50.510651>,  <33.084991, 38.077415, 50.481277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305325, 38.098495, 50.510651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456924, 37.729118, 50.534698>,  <32.547886, 37.507492, 50.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456924, 37.729118, 50.534698>,  <32.305325, 38.098495, 50.510651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456924, 37.729118, 50.534698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528644, -0.162725, 0.833100,
		-0.759536, -0.347527, -0.549845,
		0.378999, -0.923442, 0.060122,
		32.570625, 37.452087, 50.552734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787022, 37.657982, 50.685097>,  <32.305325, 38.098495, 50.510651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787022, 37.657982, 50.685097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108238, 37.443256, 50.788605>,  <32.300968, 37.314423, 50.850708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108238, 37.443256, 50.788605>,  <31.787022, 37.657982, 50.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108238, 37.443256, 50.788605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532544, -0.451577, 0.715874,
		-0.267435, -0.712681, -0.648510,
		0.803041, -0.536809, 0.258766,
		32.349152, 37.282215, 50.866234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703337, 36.891708, 50.731457>,  <31.787022, 37.657982, 50.685097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703337, 36.891708, 50.731457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989601, 37.029552, 50.974461>,  <32.161362, 37.112259, 51.120262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989601, 37.029552, 50.974461>,  <31.703337, 36.891708, 50.731457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989601, 37.029552, 50.974461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472780, -0.401225, 0.784537,
		0.514108, -0.848683, -0.124217,
		0.715662, 0.344609, 0.607513,
		32.204300, 37.132935, 51.156715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089268, 36.346256, 51.012356>,  <31.703337, 36.891708, 50.731457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089268, 36.346256, 51.012356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099300, 36.658974, 51.261566>,  <32.105320, 36.846603, 51.411095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099300, 36.658974, 51.261566>,  <32.089268, 36.346256, 51.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099300, 36.658974, 51.261566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328656, -0.582132, 0.743712,
		0.944117, -0.223418, 0.242339,
		0.025085, 0.781797, 0.623028,
		32.106827, 36.893513, 51.448475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311871, 36.230480, 51.641212>,  <32.089268, 36.346256, 51.012356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311871, 36.230480, 51.641212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 36.515877, 51.652611>,  <31.863813, 36.687115, 51.659451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 36.515877, 51.652611>,  <32.311871, 36.230480, 51.641212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031834, 36.515877, 51.652611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543120, -0.557975, 0.627443,
		0.463571, 0.423791, 0.778141,
		-0.700088, 0.713488, 0.028492,
		31.821808, 36.729923, 51.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137180, 36.358097, 52.263351>,  <32.311871, 36.230480, 51.641212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137180, 36.358097, 52.263351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809216, 36.458710, 52.057644>,  <31.612436, 36.519077, 51.934219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809216, 36.458710, 52.057644>,  <32.137180, 36.358097, 52.263351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809216, 36.458710, 52.057644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564195, -0.507394, 0.651333,
		-0.097107, 0.824186, 0.557932,
		-0.819911, 0.251534, -0.514273,
		31.563242, 36.534168, 51.903362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795090, 36.178463, 52.828701>,  <32.137180, 36.358097, 52.263351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795090, 36.178463, 52.828701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026115, 35.894188, 52.989372>,  <33.164730, 35.723621, 53.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026115, 35.894188, 52.989372>,  <32.795090, 36.178463, 52.828701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026115, 35.894188, 52.989372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065650, -0.450010, -0.890607,
		0.813702, 0.540752, -0.213252,
		0.577563, -0.710689, 0.401674,
		33.199383, 35.680981, 53.109875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124027, 35.910503, 52.312813>,  <32.795090, 36.178463, 52.828701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124027, 35.910503, 52.312813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194916, 35.631828, 52.590870>,  <33.237450, 35.464622, 52.757706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194916, 35.631828, 52.590870>,  <33.124027, 35.910503, 52.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194916, 35.631828, 52.590870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194558, -0.667585, -0.718663,
		0.964749, 0.262606, 0.017237,
		0.177218, -0.696684, 0.695144,
		33.248081, 35.422825, 52.799412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786835, 35.769638, 52.366100>,  <33.124027, 35.910503, 52.312813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786835, 35.769638, 52.366100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564732, 35.452221, 52.465687>,  <33.431469, 35.261772, 52.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564732, 35.452221, 52.465687>,  <33.786835, 35.769638, 52.366100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564732, 35.452221, 52.465687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475967, -0.548679, -0.687318,
		0.682018, -0.263137, 0.682356,
		-0.555254, -0.793543, 0.248965,
		33.398155, 35.214157, 52.540375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143532, 35.242470, 52.323082>,  <33.786835, 35.769638, 52.366100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143532, 35.242470, 52.323082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779316, 35.080811, 52.288242>,  <33.560787, 34.983814, 52.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779316, 35.080811, 52.288242>,  <34.143532, 35.242470, 52.323082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779316, 35.080811, 52.288242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304138, -0.512101, -0.803276,
		0.280036, -0.757904, 0.589204,
		-0.910538, -0.404146, -0.087100,
		33.506153, 34.959568, 52.262112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238567, 34.567394, 52.098228>,  <34.143532, 35.242470, 52.323082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238567, 34.567394, 52.098228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888840, 34.728497, 51.989891>,  <33.679005, 34.825157, 51.924889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888840, 34.728497, 51.989891>,  <34.238567, 34.567394, 52.098228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888840, 34.728497, 51.989891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209612, -0.189963, -0.959154,
		-0.437755, -0.895378, 0.081666,
		-0.874319, 0.402756, -0.270839,
		33.626545, 34.849323, 51.908638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872730, 34.147312, 51.727348>,  <34.238567, 34.567394, 52.098228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872730, 34.147312, 51.727348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705948, 34.485638, 51.594231>,  <33.605877, 34.688633, 51.514362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705948, 34.485638, 51.594231>,  <33.872730, 34.147312, 51.727348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705948, 34.485638, 51.594231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067817, -0.336168, -0.939357,
		-0.906392, -0.414242, 0.082808,
		-0.416959, 0.845810, -0.332793,
		33.580860, 34.739380, 51.494392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143013, 34.012901, 51.376091>,  <33.872730, 34.147312, 51.727348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143013, 34.012901, 51.376091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333744, 34.339794, 51.246620>,  <33.448185, 34.535931, 51.168938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333744, 34.339794, 51.246620>,  <33.143013, 34.012901, 51.376091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333744, 34.339794, 51.246620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139490, -0.433927, -0.890084,
		-0.867856, 0.379270, -0.320905,
		0.476831, 0.817228, -0.323681,
		33.476795, 34.584961, 51.149517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841614, 34.172253, 50.776566>,  <33.143013, 34.012901, 51.376091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841614, 34.172253, 50.776566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173450, 34.391525, 50.734093>,  <33.372551, 34.523090, 50.708611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173450, 34.391525, 50.734093>,  <32.841614, 34.172253, 50.776566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173450, 34.391525, 50.734093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100181, -0.333202, -0.937518,
		-0.549312, 0.767118, -0.331339,
		0.829590, 0.548184, -0.106181,
		33.422329, 34.555981, 50.702240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881912, 34.356285, 50.086308>,  <32.841614, 34.172253, 50.776566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881912, 34.356285, 50.086308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251186, 34.425690, 50.223495>,  <33.472752, 34.467335, 50.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251186, 34.425690, 50.223495>,  <32.881912, 34.356285, 50.086308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251186, 34.425690, 50.223495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379683, -0.272818, -0.883975,
		-0.059815, 0.946289, -0.317741,
		0.923181, 0.173515, 0.342971,
		33.528141, 34.477745, 50.326385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303711, 34.850601, 49.592022>,  <32.881912, 34.356285, 50.086308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303711, 34.850601, 49.592022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535542, 34.604580, 49.805862>,  <33.674641, 34.456966, 49.934166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535542, 34.604580, 49.805862>,  <33.303711, 34.850601, 49.592022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535542, 34.604580, 49.805862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463187, -0.291115, -0.837084,
		0.670482, 0.732776, 0.116161,
		0.579579, -0.615054, 0.534600,
		33.709415, 34.420063, 49.966244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879169, 34.892124, 49.216240>,  <33.303711, 34.850601, 49.592022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879169, 34.892124, 49.216240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946072, 34.566380, 49.438534>,  <33.986214, 34.370934, 49.571911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946072, 34.566380, 49.438534>,  <33.879169, 34.892124, 49.216240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946072, 34.566380, 49.438534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572286, -0.378803, -0.727322,
		0.802818, 0.439685, 0.402692,
		0.167251, -0.814362, 0.555735,
		33.996246, 34.322071, 49.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599766, 34.927422, 49.222641>,  <33.879169, 34.892124, 49.216240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599766, 34.927422, 49.222641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482601, 34.563618, 49.340614>,  <34.412300, 34.345333, 49.411400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482601, 34.563618, 49.340614>,  <34.599766, 34.927422, 49.222641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482601, 34.563618, 49.340614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731631, -0.411797, -0.543267,
		0.615562, 0.056653, 0.786050,
		-0.292916, -0.909513, 0.294936,
		34.394726, 34.290764, 49.429096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180817, 34.526836, 49.616566>,  <34.599766, 34.927422, 49.222641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180817, 34.526836, 49.616566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913593, 34.302063, 49.421455>,  <34.753258, 34.167198, 49.304390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913593, 34.302063, 49.421455>,  <35.180817, 34.526836, 49.616566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913593, 34.302063, 49.421455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699325, -0.250166, -0.669598,
		0.254248, -0.788443, 0.560103,
		-0.668059, -0.561938, -0.487773,
		34.713177, 34.133480, 49.275124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549507, 34.241756, 49.067589>,  <35.180817, 34.526836, 49.616566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549507, 34.241756, 49.067589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192688, 34.082840, 48.981415>,  <34.978596, 33.987492, 48.929710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192688, 34.082840, 48.981415>,  <35.549507, 34.241756, 49.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192688, 34.082840, 48.981415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384328, -0.416051, -0.824132,
		0.237787, -0.817963, 0.523827,
		-0.892048, -0.397289, -0.215434,
		34.925072, 33.963654, 48.916786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736782, 33.537731, 48.968853>,  <35.549507, 34.241756, 49.067589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736782, 33.537731, 48.968853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413975, 33.640316, 48.756077>,  <35.220291, 33.701866, 48.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413975, 33.640316, 48.756077>,  <35.736782, 33.537731, 48.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413975, 33.640316, 48.756077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466700, -0.274933, -0.840597,
		-0.361826, -0.926628, 0.102185,
		-0.807015, 0.256460, -0.531936,
		35.171871, 33.717255, 48.596497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706875, 33.056820, 48.430935>,  <35.736782, 33.537731, 48.968853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706875, 33.056820, 48.430935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476162, 33.344082, 48.275208>,  <35.337734, 33.516441, 48.181770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476162, 33.344082, 48.275208>,  <35.706875, 33.056820, 48.430935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476162, 33.344082, 48.275208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464177, -0.104037, -0.879611,
		-0.672204, -0.688058, -0.273346,
		-0.576785, 0.718159, -0.389315,
		35.303127, 33.559528, 48.158413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621284, 32.837002, 47.812813>,  <35.706875, 33.056820, 48.430935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621284, 32.837002, 47.812813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498997, 33.217285, 47.792088>,  <35.425625, 33.445457, 47.779652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498997, 33.217285, 47.792088>,  <35.621284, 32.837002, 47.812813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498997, 33.217285, 47.792088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272348, 0.035177, -0.961556,
		-0.912339, -0.308077, -0.269679,
		-0.305719, 0.950711, -0.051811,
		35.407280, 33.502499, 47.776543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251293, 32.803844, 47.232208>,  <35.621284, 32.837002, 47.812813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251293, 32.803844, 47.232208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336536, 33.189777, 47.293758>,  <35.387680, 33.421337, 47.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336536, 33.189777, 47.293758>,  <35.251293, 32.803844, 47.232208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336536, 33.189777, 47.293758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119123, 0.130659, -0.984245,
		-0.969740, 0.228077, -0.087090,
		0.213104, 0.964836, 0.153875,
		35.400467, 33.479229, 47.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850647, 33.262428, 46.849926>,  <35.251293, 32.803844, 47.232208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850647, 33.262428, 46.849926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160652, 33.501350, 46.932472>,  <35.346657, 33.644703, 46.981998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160652, 33.501350, 46.932472>,  <34.850647, 33.262428, 46.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160652, 33.501350, 46.932472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175412, 0.110393, -0.978286,
		-0.607113, 0.794383, -0.019218,
		0.775012, 0.597302, 0.206366,
		35.393154, 33.680542, 46.994381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771694, 33.977718, 46.524261>,  <34.850647, 33.262428, 46.849926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771694, 33.977718, 46.524261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157314, 33.915337, 46.610313>,  <35.388687, 33.877907, 46.661945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157314, 33.915337, 46.610313>,  <34.771694, 33.977718, 46.524261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157314, 33.915337, 46.610313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220192, 0.015709, -0.975330,
		0.148726, 0.987639, 0.049484,
		0.964052, -0.155953, 0.215134,
		35.446529, 33.868549, 46.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097775, 34.417068, 45.997269>,  <34.771694, 33.977718, 46.524261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097775, 34.417068, 45.997269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380138, 34.172474, 46.140259>,  <35.549557, 34.025719, 46.226051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380138, 34.172474, 46.140259>,  <35.097775, 34.417068, 45.997269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380138, 34.172474, 46.140259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397910, -0.075167, -0.914340,
		0.585974, 0.787679, 0.190255,
		0.705905, -0.611484, 0.357471,
		35.591911, 33.989029, 46.247501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767876, 34.610661, 45.676586>,  <35.097775, 34.417068, 45.997269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767876, 34.610661, 45.676586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785667, 34.227676, 45.790634>,  <35.796341, 33.997887, 45.859062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785667, 34.227676, 45.790634>,  <35.767876, 34.610661, 45.676586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785667, 34.227676, 45.790634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138277, -0.276759, -0.950938,
		0.989394, 0.081719, 0.120085,
		0.044475, -0.957458, 0.285124,
		35.799011, 33.940437, 45.876171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259884, 34.281742, 45.133934>,  <35.767876, 34.610661, 45.676586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259884, 34.281742, 45.133934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041813, 33.992516, 45.303616>,  <35.910969, 33.818977, 45.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041813, 33.992516, 45.303616>,  <36.259884, 34.281742, 45.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041813, 33.992516, 45.303616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126928, -0.428988, -0.894348,
		0.828656, -0.541422, 0.142097,
		-0.545178, -0.723071, 0.424205,
		35.878258, 33.775593, 45.430878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634109, 33.731308, 44.867203>,  <36.259884, 34.281742, 45.133934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634109, 33.731308, 44.867203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278446, 33.594978, 44.989346>,  <36.065048, 33.513180, 45.062630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278446, 33.594978, 44.989346>,  <36.634109, 33.731308, 44.867203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278446, 33.594978, 44.989346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218084, -0.271025, -0.937542,
		0.402297, -0.900213, 0.166655,
		-0.889155, -0.340826, 0.305355,
		36.011700, 33.492729, 45.080952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614861, 33.059971, 44.503113>,  <36.634109, 33.731308, 44.867203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614861, 33.059971, 44.503113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252960, 33.145256, 44.650612>,  <36.035820, 33.196426, 44.739109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252960, 33.145256, 44.650612>,  <36.614861, 33.059971, 44.503113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252960, 33.145256, 44.650612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425802, -0.475445, -0.769834,
		0.011177, -0.853517, 0.520945,
		-0.904747, 0.213215, 0.368744,
		35.981537, 33.209221, 44.761234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180443, 32.458099, 44.328850>,  <36.614861, 33.059971, 44.503113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180443, 32.458099, 44.328850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925388, 32.763344, 44.370949>,  <35.772358, 32.946491, 44.396210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925388, 32.763344, 44.370949>,  <36.180443, 32.458099, 44.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925388, 32.763344, 44.370949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501294, -0.307305, -0.808869,
		-0.584916, -0.568523, 0.578493,
		-0.637634, 0.763116, 0.105250,
		35.734097, 32.992279, 44.402523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527065, 32.171169, 44.296940>,  <36.180443, 32.458099, 44.328850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527065, 32.171169, 44.296940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488071, 32.560875, 44.215641>,  <35.464676, 32.794697, 44.166862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488071, 32.560875, 44.215641>,  <35.527065, 32.171169, 44.296940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488071, 32.560875, 44.215641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639629, -0.217788, -0.737186,
		-0.762478, 0.058142, 0.644397,
		-0.097481, 0.974263, -0.203248,
		35.458828, 32.853153, 44.154667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814949, 32.178452, 43.960018>,  <35.527065, 32.171169, 44.296940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814949, 32.178452, 43.960018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019325, 32.507710, 43.860924>,  <35.141949, 32.705265, 43.801468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019325, 32.507710, 43.860924>,  <34.814949, 32.178452, 43.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019325, 32.507710, 43.860924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538858, 0.082157, -0.838381,
		-0.669757, 0.561854, 0.485536,
		0.510938, 0.823147, -0.247734,
		35.172607, 32.754654, 43.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259396, 32.515701, 43.719112>,  <34.814949, 32.178452, 43.960018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259396, 32.515701, 43.719112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584389, 32.691437, 43.565823>,  <34.779385, 32.796879, 43.473850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584389, 32.691437, 43.565823>,  <34.259396, 32.515701, 43.719112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584389, 32.691437, 43.565823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487196, 0.150663, -0.860198,
		-0.320179, 0.885598, 0.336454,
		0.812481, 0.439337, -0.383221,
		34.828133, 32.823238, 43.450855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027653, 33.036293, 43.257259>,  <34.259396, 32.515701, 43.719112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027653, 33.036293, 43.257259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402725, 32.962860, 43.139236>,  <34.627769, 32.918800, 43.068424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402725, 32.962860, 43.139236>,  <34.027653, 33.036293, 43.257259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402725, 32.962860, 43.139236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228081, 0.315464, -0.921120,
		0.262179, 0.931010, 0.253933,
		0.937679, -0.183582, -0.295054,
		34.684029, 32.907787, 43.050720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252937, 33.625450, 42.739422>,  <34.027653, 33.036293, 43.257259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252937, 33.625450, 42.739422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486401, 33.304657, 42.688560>,  <34.626480, 33.112183, 42.658043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486401, 33.304657, 42.688560>,  <34.252937, 33.625450, 42.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486401, 33.304657, 42.688560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098102, 0.085802, -0.991471,
		0.806052, 0.591154, -0.028597,
		0.583658, -0.801982, -0.127155,
		34.661499, 33.064064, 42.650414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744671, 33.845974, 42.203510>,  <34.252937, 33.625450, 42.739422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744671, 33.845974, 42.203510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761833, 33.446419, 42.211231>,  <34.772129, 33.206684, 42.215866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761833, 33.446419, 42.211231>,  <34.744671, 33.845974, 42.203510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761833, 33.446419, 42.211231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086884, -0.015521, -0.996098,
		0.995294, 0.044412, 0.086121,
		0.042902, -0.998893, 0.019306,
		34.774704, 33.146751, 42.217022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313034, 33.670586, 41.745602>,  <34.744671, 33.845974, 42.203510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313034, 33.670586, 41.745602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076900, 33.348625, 41.769722>,  <34.935219, 33.155449, 41.784195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076900, 33.348625, 41.769722>,  <35.313034, 33.670586, 41.745602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076900, 33.348625, 41.769722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028952, -0.095780, -0.994981,
		0.806640, -0.585625, 0.079846,
		-0.590333, -0.804904, 0.060305,
		34.899799, 33.107155, 41.787815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558662, 33.188278, 41.274296>,  <35.313034, 33.670586, 41.745602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558662, 33.188278, 41.274296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188526, 33.043301, 41.318790>,  <34.966442, 32.956314, 41.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188526, 33.043301, 41.318790>,  <35.558662, 33.188278, 41.274296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188526, 33.043301, 41.318790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008761, -0.272869, -0.962011,
		0.379030, -0.891165, 0.249322,
		-0.925343, -0.362447, 0.111233,
		34.910923, 32.934566, 41.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651711, 32.570621, 40.998524>,  <35.558662, 33.188278, 41.274296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651711, 32.570621, 40.998524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257824, 32.638924, 41.012222>,  <35.021492, 32.679905, 41.020439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257824, 32.638924, 41.012222>,  <35.651711, 32.570621, 40.998524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257824, 32.638924, 41.012222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074018, -0.232358, -0.969810,
		-0.157640, -0.957525, 0.241446,
		-0.984719, 0.170752, 0.034245,
		34.962410, 32.690151, 41.022495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206711, 32.015240, 40.690384>,  <35.651711, 32.570621, 40.998524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206711, 32.015240, 40.690384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932556, 32.303852, 40.651119>,  <34.768063, 32.477020, 40.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932556, 32.303852, 40.651119>,  <35.206711, 32.015240, 40.690384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932556, 32.303852, 40.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072265, -0.201542, -0.976810,
		-0.724584, -0.662400, 0.190276,
		-0.685388, 0.721531, -0.098165,
		34.726940, 32.520309, 40.621670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848389, 31.825939, 40.105183>,  <35.206711, 32.015240, 40.690384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848389, 31.825939, 40.105183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751511, 32.211323, 40.150936>,  <34.693382, 32.442554, 40.178387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751511, 32.211323, 40.150936>,  <34.848389, 31.825939, 40.105183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751511, 32.211323, 40.150936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038703, 0.127394, -0.991097,
		-0.969455, -0.235613, -0.068143,
		-0.242197, 0.963461, 0.114384,
		34.678852, 32.500362, 40.185253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279884, 31.956575, 39.655235>,  <34.848389, 31.825939, 40.105183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279884, 31.956575, 39.655235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468441, 32.306133, 39.702732>,  <34.581573, 32.515869, 39.731232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468441, 32.306133, 39.702732>,  <34.279884, 31.956575, 39.655235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468441, 32.306133, 39.702732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069882, 0.171230, -0.982750,
		-0.879150, 0.454963, 0.141785,
		0.471393, 0.873893, 0.118743,
		34.609859, 32.568302, 39.738354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830566, 32.447922, 39.374607>,  <34.279884, 31.956575, 39.655235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830566, 32.447922, 39.374607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180660, 32.640793, 39.389950>,  <34.390717, 32.756516, 39.399155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180660, 32.640793, 39.389950>,  <33.830566, 32.447922, 39.374607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180660, 32.640793, 39.389950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114997, 0.284447, -0.951770,
		-0.469832, 0.828610, 0.304407,
		0.875234, 0.482177, 0.038354,
		34.443230, 32.785446, 39.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691624, 32.976738, 38.979092>,  <33.830566, 32.447922, 39.374607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691624, 32.976738, 38.979092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090862, 32.953197, 38.986397>,  <34.330406, 32.939072, 38.990780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090862, 32.953197, 38.986397>,  <33.691624, 32.976738, 38.979092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090862, 32.953197, 38.986397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036489, 0.325667, -0.944780,
		0.049655, 0.943651, 0.327195,
		0.998100, -0.058852, 0.018262,
		34.390293, 32.935543, 38.991875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985615, 33.573025, 38.513767>,  <33.691624, 32.976738, 38.979092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985615, 33.573025, 38.513767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261219, 33.284054, 38.536972>,  <34.426582, 33.110672, 38.550896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261219, 33.284054, 38.536972>,  <33.985615, 33.573025, 38.513767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261219, 33.284054, 38.536972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122833, 0.037512, -0.991718,
		0.714269, 0.690427, 0.114584,
		0.689008, -0.722428, 0.058014,
		34.467922, 33.067326, 38.554375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501709, 33.774529, 38.079044>,  <33.985615, 33.573025, 38.513767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501709, 33.774529, 38.079044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615665, 33.393612, 38.122826>,  <34.684040, 33.165062, 38.149094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615665, 33.393612, 38.122826>,  <34.501709, 33.774529, 38.079044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615665, 33.393612, 38.122826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388758, 0.010417, -0.921281,
		0.876188, 0.305011, 0.373179,
		0.284888, -0.952292, 0.109449,
		34.701130, 33.107925, 38.155659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183399, 33.757481, 37.912567>,  <34.501709, 33.774529, 38.079044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183399, 33.757481, 37.912567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032516, 33.392384, 37.849819>,  <34.941986, 33.173325, 37.812168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032516, 33.392384, 37.849819>,  <35.183399, 33.757481, 37.912567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032516, 33.392384, 37.849819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472512, -0.043990, -0.880226,
		0.796522, -0.406151, 0.447877,
		-0.377207, -0.912746, -0.156872,
		34.919353, 33.118561, 37.802757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692181, 33.465923, 37.474079>,  <35.183399, 33.757481, 37.912567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692181, 33.465923, 37.474079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414177, 33.180809, 37.436333>,  <35.247375, 33.009743, 37.413685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414177, 33.180809, 37.436333>,  <35.692181, 33.465923, 37.474079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414177, 33.180809, 37.436333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236520, -0.102702, -0.966183,
		0.678987, -0.693825, 0.239966,
		-0.695007, -0.712783, -0.094370,
		35.205673, 32.966972, 37.408020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377514, 33.438221, 37.516438>,  <35.692181, 33.465923, 37.474079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377514, 33.438221, 37.516438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280491, 33.644768, 37.187920>,  <36.222279, 33.768696, 36.990807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280491, 33.644768, 37.187920>,  <36.377514, 33.438221, 37.516438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280491, 33.644768, 37.187920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859435, 0.507095, 0.065003,
		0.450041, -0.690086, -0.566784,
		-0.242556, 0.516369, -0.821298,
		36.207726, 33.799679, 36.941532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087204, 33.532204, 37.724560>,  <36.377514, 33.438221, 37.516438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087204, 33.532204, 37.724560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434387, 33.376331, 37.601402>,  <37.642696, 33.282806, 37.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434387, 33.376331, 37.601402>,  <37.087204, 33.532204, 37.724560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434387, 33.376331, 37.601402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321122, -0.032571, 0.946478,
		-0.378854, -0.920373, 0.096865,
		0.867958, -0.389682, -0.307892,
		37.694775, 33.259426, 37.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162888, 32.847195, 37.990540>,  <37.087204, 33.532204, 37.724560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162888, 32.847195, 37.990540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524895, 32.995434, 37.907017>,  <37.742100, 33.084377, 37.856903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524895, 32.995434, 37.907017>,  <37.162888, 32.847195, 37.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524895, 32.995434, 37.907017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206556, 0.046255, 0.977341,
		0.371859, -0.927641, -0.034688,
		0.905017, 0.370598, -0.208810,
		37.796398, 33.106613, 37.844376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633949, 32.359154, 38.343235>,  <37.162888, 32.847195, 37.990540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633949, 32.359154, 38.343235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789055, 32.724358, 38.292564>,  <37.882118, 32.943481, 38.262161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789055, 32.724358, 38.292564>,  <37.633949, 32.359154, 38.343235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789055, 32.724358, 38.292564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228384, 0.037978, 0.972830,
		0.893016, -0.406162, -0.193791,
		0.387767, 0.913011, -0.126676,
		37.905384, 32.998260, 38.254562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332512, 32.321354, 38.674694>,  <37.633949, 32.359154, 38.343235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332512, 32.321354, 38.674694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246140, 32.711433, 38.655258>,  <38.194317, 32.945480, 38.643597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246140, 32.711433, 38.655258>,  <38.332512, 32.321354, 38.674694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246140, 32.711433, 38.655258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479891, 0.149338, 0.864524,
		0.850339, 0.163362, -0.500236,
		-0.215935, 0.975198, -0.048592,
		38.181358, 33.003994, 38.640682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955986, 32.542915, 38.808353>,  <38.332512, 32.321354, 38.674694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955986, 32.542915, 38.808353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693394, 32.839989, 38.861202>,  <38.535839, 33.018234, 38.892914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693394, 32.839989, 38.861202>,  <38.955986, 32.542915, 38.808353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693394, 32.839989, 38.861202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505717, 0.303343, 0.807609,
		0.559719, 0.596996, -0.574726,
		-0.656479, 0.742683, 0.132124,
		38.496449, 33.062794, 38.900841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359322, 33.199013, 38.961086>,  <38.955986, 32.542915, 38.808353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359322, 33.199013, 38.961086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989052, 33.243568, 39.105705>,  <38.766891, 33.270302, 39.192478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989052, 33.243568, 39.105705>,  <39.359322, 33.199013, 38.961086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989052, 33.243568, 39.105705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377162, 0.197060, 0.904940,
		0.029555, 0.974043, -0.224426,
		-0.925676, 0.111390, 0.361547,
		38.711349, 33.276985, 39.214169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339439, 33.775242, 39.451584>,  <39.359322, 33.199013, 38.961086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339439, 33.775242, 39.451584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997257, 33.588470, 39.541180>,  <38.791946, 33.476410, 39.594936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997257, 33.588470, 39.541180>,  <39.339439, 33.775242, 39.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997257, 33.588470, 39.541180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102866, 0.270701, 0.957152,
		-0.507555, 0.841844, -0.183543,
		-0.855457, -0.466926, 0.223993,
		38.740620, 33.448391, 39.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956196, 34.233196, 39.850258>,  <39.339439, 33.775242, 39.451584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956196, 34.233196, 39.850258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773098, 33.891159, 39.947651>,  <38.663239, 33.685936, 40.006084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773098, 33.891159, 39.947651>,  <38.956196, 34.233196, 39.850258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773098, 33.891159, 39.947651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066975, 0.239913, 0.968481,
		-0.886558, 0.459623, -0.052549,
		-0.457743, -0.855096, 0.243480,
		38.635777, 33.634632, 40.020695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383541, 34.356922, 40.299023>,  <38.956196, 34.233196, 39.850258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383541, 34.356922, 40.299023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436329, 33.969078, 40.381424>,  <38.468002, 33.736370, 40.430862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436329, 33.969078, 40.381424>,  <38.383541, 34.356922, 40.299023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436329, 33.969078, 40.381424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000713, 0.207911, 0.978148,
		-0.991253, -0.128940, 0.028130,
		0.131971, -0.969612, 0.206001,
		38.475922, 33.678196, 40.443226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907936, 34.266376, 40.784634>,  <38.383541, 34.356922, 40.299023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907936, 34.266376, 40.784634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165806, 33.964222, 40.831612>,  <38.320526, 33.782928, 40.859798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165806, 33.964222, 40.831612>,  <37.907936, 34.266376, 40.784634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165806, 33.964222, 40.831612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104673, 0.064966, 0.992383,
		-0.757260, -0.652054, -0.037186,
		0.644672, -0.755384, 0.117448,
		38.359207, 33.737606, 40.866848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736435, 33.869740, 41.395542>,  <37.907936, 34.266376, 40.784634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736435, 33.869740, 41.395542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119900, 33.772259, 41.336777>,  <38.349979, 33.713772, 41.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119900, 33.772259, 41.336777>,  <37.736435, 33.869740, 41.395542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119900, 33.772259, 41.336777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136406, -0.059556, 0.988861,
		-0.249735, -0.968021, -0.023852,
		0.958658, -0.243699, -0.146917,
		38.407497, 33.699150, 41.292702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769234, 33.211720, 41.711510>,  <37.736435, 33.869740, 41.395542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769234, 33.211720, 41.711510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129532, 33.384792, 41.696308>,  <38.345711, 33.488636, 41.687187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129532, 33.384792, 41.696308>,  <37.769234, 33.211720, 41.711510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129532, 33.384792, 41.696308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141854, -0.210359, 0.967278,
		0.410529, -0.876662, -0.250858,
		0.900746, 0.432681, -0.038000,
		38.399757, 33.514595, 41.684910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263702, 32.703716, 42.139343>,  <37.769234, 33.211720, 41.711510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263702, 32.703716, 42.139343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426960, 33.068665, 42.126709>,  <38.524914, 33.287632, 42.119129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426960, 33.068665, 42.126709>,  <38.263702, 32.703716, 42.139343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426960, 33.068665, 42.126709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300907, -0.101785, 0.948206,
		0.861901, -0.396510, -0.316081,
		0.408145, 0.912370, -0.031584,
		38.549404, 33.342377, 42.117233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936733, 32.554577, 42.330757>,  <38.263702, 32.703716, 42.139343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936733, 32.554577, 42.330757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840553, 32.935482, 42.405994>,  <38.782845, 33.164024, 42.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840553, 32.935482, 42.405994>,  <38.936733, 32.554577, 42.330757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840553, 32.935482, 42.405994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069868, -0.176292, 0.981855,
		0.968143, 0.249232, -0.024143,
		-0.240453, 0.952263, 0.188089,
		38.768417, 33.221161, 42.462421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477215, 32.809261, 42.675484>,  <38.936733, 32.554577, 42.330757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477215, 32.809261, 42.675484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151684, 33.027931, 42.754311>,  <38.956364, 33.159134, 42.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151684, 33.027931, 42.754311>,  <39.477215, 32.809261, 42.675484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151684, 33.027931, 42.754311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112471, -0.184528, 0.976371,
		0.570119, 0.816761, 0.088689,
		-0.813827, 0.546673, 0.197065,
		38.907536, 33.191933, 42.813431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743011, 33.278751, 43.185059>,  <39.477215, 32.809261, 42.675484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743011, 33.278751, 43.185059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343666, 33.297184, 43.198601>,  <39.104057, 33.308243, 43.206726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343666, 33.297184, 43.198601>,  <39.743011, 33.278751, 43.185059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343666, 33.297184, 43.198601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039992, 0.139496, 0.989415,
		0.040868, 0.989150, -0.141110,
		-0.998364, 0.046079, 0.033857,
		39.044155, 33.311008, 43.208759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744648, 33.778641, 43.734161>,  <39.743011, 33.278751, 43.185059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744648, 33.778641, 43.734161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396370, 33.587109, 43.689228>,  <39.187405, 33.472191, 43.662270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396370, 33.587109, 43.689228>,  <39.744648, 33.778641, 43.734161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396370, 33.587109, 43.689228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126060, -0.003500, 0.992017,
		-0.475401, 0.877900, -0.057314,
		-0.870691, -0.478831, -0.112332,
		39.135162, 33.443459, 43.655529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214275, 34.204292, 43.914612>,  <39.744648, 33.778641, 43.734161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214275, 34.204292, 43.914612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053314, 33.840748, 43.958519>,  <38.956738, 33.622623, 43.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053314, 33.840748, 43.958519>,  <39.214275, 34.204292, 43.914612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053314, 33.840748, 43.958519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268009, 0.231605, 0.935163,
		-0.875352, 0.346895, -0.336781,
		-0.402404, -0.908858, 0.109765,
		38.932594, 33.568092, 43.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751747, 34.319748, 44.465717>,  <39.214275, 34.204292, 43.914612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751747, 34.319748, 44.465717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752388, 33.920464, 44.441841>,  <38.752773, 33.680893, 44.427513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752388, 33.920464, 44.441841>,  <38.751747, 34.319748, 44.465717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752388, 33.920464, 44.441841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249674, -0.058204, 0.966579,
		-0.968329, 0.013351, -0.249322,
		0.001607, -0.998215, -0.059694,
		38.752869, 33.620998, 44.423931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046764, 34.042259, 44.747604>,  <38.751747, 34.319748, 44.465717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046764, 34.042259, 44.747604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333084, 33.766426, 44.791630>,  <38.504875, 33.600925, 44.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333084, 33.766426, 44.791630>,  <38.046764, 34.042259, 44.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333084, 33.766426, 44.791630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189930, -0.040585, 0.980959,
		-0.671983, -0.723071, -0.160022,
		0.715797, -0.689580, 0.110060,
		38.547825, 33.559551, 44.824650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675011, 33.564651, 45.021648>,  <38.046764, 34.042259, 44.747604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675011, 33.564651, 45.021648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063240, 33.519222, 45.106579>,  <38.296177, 33.491966, 45.157536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063240, 33.519222, 45.106579>,  <37.675011, 33.564651, 45.021648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063240, 33.519222, 45.106579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225699, -0.121834, 0.966549,
		-0.083897, -0.986032, -0.143881,
		0.970577, -0.113564, 0.212325,
		38.354412, 33.485149, 45.170277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636333, 33.190800, 45.507713>,  <37.675011, 33.564651, 45.021648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636333, 33.190800, 45.507713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026249, 33.277874, 45.527332>,  <38.260197, 33.330116, 45.539104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026249, 33.277874, 45.527332>,  <37.636333, 33.190800, 45.507713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026249, 33.277874, 45.527332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054756, 0.020248, 0.998294,
		0.216319, -0.975809, 0.031657,
		0.974786, 0.217684, 0.049051,
		38.318684, 33.343178, 45.542049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839764, 32.824226, 46.084213>,  <37.636333, 33.190800, 45.507713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839764, 32.824226, 46.084213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130108, 33.097221, 46.049938>,  <38.304314, 33.261017, 46.029373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130108, 33.097221, 46.049938>,  <37.839764, 32.824226, 46.084213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130108, 33.097221, 46.049938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014754, 0.140001, 0.990041,
		0.687688, -0.717364, 0.111690,
		0.725857, 0.682487, -0.085692,
		38.347866, 33.301968, 46.024231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382610, 32.633202, 46.553989>,  <37.839764, 32.824226, 46.084213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382610, 32.633202, 46.553989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390743, 33.021614, 46.458755>,  <38.395622, 33.254662, 46.401615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390743, 33.021614, 46.458755>,  <38.382610, 32.633202, 46.553989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390743, 33.021614, 46.458755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031673, 0.237392, 0.970897,
		0.999292, -0.027278, -0.025930,
		0.020328, 0.971031, -0.238088,
		38.396843, 33.312923, 46.387329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639290, 32.952377, 47.206223>,  <38.382610, 32.633202, 46.553989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639290, 32.952377, 47.206223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528988, 33.265213, 46.982689>,  <38.462807, 33.452915, 46.848568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528988, 33.265213, 46.982689>,  <38.639290, 32.952377, 47.206223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528988, 33.265213, 46.982689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083368, 0.559722, 0.824477,
		0.957606, 0.273942, -0.089144,
		-0.275754, 0.782092, -0.558831,
		38.446262, 33.499840, 46.815041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081669, 33.527134, 47.529472>,  <38.639290, 32.952377, 47.206223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081669, 33.527134, 47.529472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776451, 33.676655, 47.318554>,  <38.593323, 33.766365, 47.192001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776451, 33.676655, 47.318554>,  <39.081669, 33.527134, 47.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776451, 33.676655, 47.318554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182421, 0.658097, 0.730501,
		0.620074, 0.653592, -0.433965,
		-0.763040, 0.373800, -0.527298,
		38.547539, 33.788795, 47.160366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058624, 34.349247, 47.394066>,  <39.081669, 33.527134, 47.529472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058624, 34.349247, 47.394066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680462, 34.219002, 47.399464>,  <38.453564, 34.140854, 47.402702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680462, 34.219002, 47.399464>,  <39.058624, 34.349247, 47.394066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680462, 34.219002, 47.399464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213790, 0.650936, 0.728406,
		-0.245962, 0.685756, -0.685012,
		-0.945408, -0.325609, 0.013497,
		38.396839, 34.121319, 47.403511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681263, 34.968143, 47.614563>,  <39.058624, 34.349247, 47.394066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681263, 34.968143, 47.614563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399891, 34.685764, 47.647629>,  <38.231068, 34.516338, 47.667469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399891, 34.685764, 47.647629>,  <38.681263, 34.968143, 47.614563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399891, 34.685764, 47.647629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398331, 0.487862, 0.776739,
		-0.588662, 0.513453, -0.624374,
		-0.703428, -0.705944, 0.082661,
		38.188862, 34.473980, 47.672428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022621, 35.358356, 47.733219>,  <38.681263, 34.968143, 47.614563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022621, 35.358356, 47.733219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969128, 34.986095, 47.869461>,  <37.937031, 34.762741, 47.951206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969128, 34.986095, 47.869461>,  <38.022621, 35.358356, 47.733219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969128, 34.986095, 47.869461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357719, 0.365848, 0.859181,
		-0.924203, -0.006938, -0.381837,
		-0.133734, -0.930649, 0.340600,
		37.929008, 34.706902, 47.971642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449474, 35.425636, 48.031368>,  <38.022621, 35.358356, 47.733219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449474, 35.425636, 48.031368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613113, 35.100662, 48.197548>,  <37.711296, 34.905678, 48.297256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613113, 35.100662, 48.197548>,  <37.449474, 35.425636, 48.031368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613113, 35.100662, 48.197548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371000, 0.267865, 0.889161,
		-0.833665, -0.517884, -0.191829,
		0.409098, -0.812431, 0.415445,
		37.735844, 34.856934, 48.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962746, 35.030342, 48.381264>,  <37.449474, 35.425636, 48.031368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962746, 35.030342, 48.381264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301403, 34.904598, 48.553020>,  <37.504597, 34.829151, 48.656075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301403, 34.904598, 48.553020>,  <36.962746, 35.030342, 48.381264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301403, 34.904598, 48.553020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397020, 0.164180, 0.903006,
		-0.354368, -0.934998, 0.014193,
		0.846639, -0.314362, 0.429393,
		37.555393, 34.810291, 48.681839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689167, 34.602615, 49.030346>,  <36.962746, 35.030342, 48.381264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689167, 34.602615, 49.030346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074566, 34.683235, 49.100834>,  <37.305805, 34.731606, 49.143127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074566, 34.683235, 49.100834>,  <36.689167, 34.602615, 49.030346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074566, 34.683235, 49.100834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200672, 0.107998, 0.973687,
		0.177217, -0.973506, 0.144502,
		0.963496, 0.201552, 0.176216,
		37.363613, 34.743698, 49.153698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946419, 34.281513, 49.627739>,  <36.689167, 34.602615, 49.030346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946419, 34.281513, 49.627739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183922, 34.602238, 49.600765>,  <37.326424, 34.794674, 49.584583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183922, 34.602238, 49.600765>,  <36.946419, 34.281513, 49.627739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183922, 34.602238, 49.600765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283899, 0.287168, 0.914842,
		0.752897, -0.524051, 0.398142,
		0.593757, 0.801813, -0.067430,
		37.362049, 34.842781, 49.580536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333836, 34.191414, 50.203220>,  <36.946419, 34.281513, 49.627739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333836, 34.191414, 50.203220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405334, 34.575294, 50.116478>,  <37.448235, 34.805622, 50.064434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405334, 34.575294, 50.116478>,  <37.333836, 34.191414, 50.203220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405334, 34.575294, 50.116478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011716, 0.218313, 0.975809,
		0.983825, -0.176966, 0.027780,
		0.178750, 0.959699, -0.216855,
		37.458958, 34.863205, 50.051422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024433, 34.441998, 50.544140>,  <37.333836, 34.191414, 50.203220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024433, 34.441998, 50.544140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791958, 34.758980, 50.470131>,  <37.652473, 34.949169, 50.425728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791958, 34.758980, 50.470131>,  <38.024433, 34.441998, 50.544140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791958, 34.758980, 50.470131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062709, 0.270296, 0.960733,
		0.811352, 0.546761, -0.206786,
		-0.581185, 0.792460, -0.185018,
		37.617603, 34.996719, 50.414627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356102, 34.992298, 50.956932>,  <38.024433, 34.441998, 50.544140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356102, 34.992298, 50.956932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980587, 35.100246, 50.871288>,  <37.755276, 35.165016, 50.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980587, 35.100246, 50.871288>,  <38.356102, 34.992298, 50.956932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980587, 35.100246, 50.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156402, 0.219881, 0.962907,
		0.306935, 0.937456, -0.164215,
		-0.938791, 0.269867, -0.214109,
		37.698948, 35.181206, 50.807056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262173, 35.520992, 51.469833>,  <38.356102, 34.992298, 50.956932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262173, 35.520992, 51.469833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895176, 35.446301, 51.329357>,  <37.674976, 35.401485, 51.245071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895176, 35.446301, 51.329357>,  <38.262173, 35.520992, 51.469833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895176, 35.446301, 51.329357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385504, 0.200124, 0.900743,
		-0.097918, 0.961811, -0.255599,
		-0.917496, -0.186734, -0.351186,
		37.619926, 35.390282, 51.224003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947968, 36.048557, 51.794308>,  <38.262173, 35.520992, 51.469833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947968, 36.048557, 51.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663795, 35.794880, 51.672264>,  <37.493294, 35.642673, 51.599037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663795, 35.794880, 51.672264>,  <37.947968, 36.048557, 51.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663795, 35.794880, 51.672264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502728, 0.153925, 0.850630,
		-0.492496, 0.757701, -0.428178,
		-0.710431, -0.634189, -0.305110,
		37.450665, 35.604622, 51.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730133, 36.749916, 51.619743>,  <37.947968, 36.048557, 51.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730133, 36.749916, 51.619743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927956, 37.097576, 51.620247>,  <38.046650, 37.306171, 51.620548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927956, 37.097576, 51.620247>,  <37.730133, 36.749916, 51.619743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927956, 37.097576, 51.620247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243185, -0.136988, -0.960258,
		-0.834432, 0.475205, -0.279111,
		0.494554, 0.869146, 0.001255,
		38.076321, 37.358318, 51.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589661, 37.166840, 51.040039>,  <37.730133, 36.749916, 51.619743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589661, 37.166840, 51.040039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940052, 37.326248, 51.148731>,  <38.150288, 37.421894, 51.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940052, 37.326248, 51.148731>,  <37.589661, 37.166840, 51.040039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940052, 37.326248, 51.148731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307096, -0.026371, -0.951313,
		-0.371952, 0.916780, -0.145484,
		0.875982, 0.398521, 0.271731,
		38.202847, 37.445805, 51.230251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757538, 37.583214, 50.463932>,  <37.589661, 37.166840, 51.040039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757538, 37.583214, 50.463932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108620, 37.559242, 50.654106>,  <38.319267, 37.544861, 50.768211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108620, 37.559242, 50.654106>,  <37.757538, 37.583214, 50.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108620, 37.559242, 50.654106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469260, -0.093545, -0.878091,
		0.097098, 0.993810, -0.053983,
		0.877705, -0.059929, 0.475439,
		38.371933, 37.541264, 50.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285576, 37.927193, 49.993725>,  <37.757538, 37.583214, 50.463932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285576, 37.927193, 49.993725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515110, 37.699715, 50.229454>,  <38.652828, 37.563229, 50.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515110, 37.699715, 50.229454>,  <38.285576, 37.927193, 49.993725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515110, 37.699715, 50.229454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611202, -0.181589, -0.770362,
		0.545113, 0.802257, 0.243383,
		0.573833, -0.568690, 0.589328,
		38.687260, 37.529106, 50.406254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902134, 38.135170, 49.766056>,  <38.285576, 37.927193, 49.993725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902134, 38.135170, 49.766056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940361, 37.784782, 49.955177>,  <38.963299, 37.574551, 50.068649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940361, 37.784782, 49.955177>,  <38.902134, 38.135170, 49.766056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940361, 37.784782, 49.955177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637716, -0.310827, -0.704773,
		0.764320, 0.368871, 0.528913,
		0.095570, -0.875968, 0.472806,
		38.969032, 37.521992, 50.097019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596699, 37.940029, 49.666363>,  <38.902134, 38.135170, 49.766056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596699, 37.940029, 49.666363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399143, 37.604546, 49.758137>,  <39.280609, 37.403255, 49.813202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399143, 37.604546, 49.758137>,  <39.596699, 37.940029, 49.666363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399143, 37.604546, 49.758137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517101, -0.495436, -0.697961,
		0.699056, -0.226076, 0.678388,
		-0.493890, -0.838709, 0.229433,
		39.250977, 37.352932, 49.826965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065350, 37.463772, 49.409016>,  <39.596699, 37.940029, 49.666363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065350, 37.463772, 49.409016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729790, 37.248920, 49.444210>,  <39.528454, 37.120010, 49.465324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729790, 37.248920, 49.444210>,  <40.065350, 37.463772, 49.409016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729790, 37.248920, 49.444210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294374, -0.583711, -0.756720,
		0.457813, -0.608912, 0.647791,
		-0.838899, -0.537129, 0.087982,
		39.478119, 37.087780, 49.470604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283371, 36.734108, 49.414436>,  <40.065350, 37.463772, 49.409016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283371, 36.734108, 49.414436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898617, 36.720711, 49.305882>,  <39.667763, 36.712673, 49.240749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898617, 36.720711, 49.305882>,  <40.283371, 36.734108, 49.414436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898617, 36.720711, 49.305882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239062, -0.584775, -0.775170,
		-0.132739, -0.810504, 0.570494,
		-0.961889, -0.033489, -0.271383,
		39.610050, 36.710663, 49.224468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988506, 36.017521, 49.316406>,  <40.283371, 36.734108, 49.414436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988506, 36.017521, 49.316406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741554, 36.258862, 49.114491>,  <39.593384, 36.403664, 48.993340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741554, 36.258862, 49.114491>,  <39.988506, 36.017521, 49.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741554, 36.258862, 49.114491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162178, -0.530284, -0.832164,
		-0.769770, -0.595624, 0.229535,
		-0.617375, 0.603349, -0.504794,
		39.556343, 36.439865, 48.963051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611752, 35.623386, 48.919247>,  <39.988506, 36.017521, 49.316406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611752, 35.623386, 48.919247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582684, 35.982826, 48.746162>,  <39.565243, 36.198490, 48.642311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582684, 35.982826, 48.746162>,  <39.611752, 35.623386, 48.919247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582684, 35.982826, 48.746162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308072, -0.392419, -0.866660,
		-0.948584, -0.196285, -0.248317,
		-0.072668, 0.898598, -0.432713,
		39.560883, 36.252407, 48.616348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477112, 35.547199, 48.171364>,  <39.611752, 35.623386, 48.919247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477112, 35.547199, 48.171364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587704, 35.931351, 48.157314>,  <39.654057, 36.161842, 48.148884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587704, 35.931351, 48.157314>,  <39.477112, 35.547199, 48.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587704, 35.931351, 48.157314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182418, -0.088329, -0.979246,
		-0.943549, 0.264330, -0.199611,
		0.276475, 0.960379, -0.035125,
		39.670647, 36.219463, 48.146778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025902, 35.910896, 47.685982>,  <39.477112, 35.547199, 48.171364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025902, 35.910896, 47.685982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362061, 36.126259, 47.710785>,  <39.563755, 36.255478, 47.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362061, 36.126259, 47.710785>,  <39.025902, 35.910896, 47.685982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362061, 36.126259, 47.710785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126667, -0.083875, -0.988393,
		-0.526960, 0.838498, -0.138688,
		0.840398, 0.538411, 0.062011,
		39.614182, 36.287781, 47.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020660, 36.190445, 47.056065>,  <39.025902, 35.910896, 47.685982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020660, 36.190445, 47.056065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404991, 36.224174, 47.161667>,  <39.635590, 36.244411, 47.225029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404991, 36.224174, 47.161667>,  <39.020660, 36.190445, 47.056065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404991, 36.224174, 47.161667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240958, 0.216501, -0.946080,
		-0.136935, 0.972634, 0.187702,
		0.960827, 0.084323, 0.264010,
		39.693237, 36.249470, 47.240871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217270, 36.834892, 46.819965>,  <39.020660, 36.190445, 47.056065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217270, 36.834892, 46.819965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537594, 36.596611, 46.844780>,  <39.729786, 36.453644, 46.859669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537594, 36.596611, 46.844780>,  <39.217270, 36.834892, 46.819965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537594, 36.596611, 46.844780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126061, 0.066382, -0.989799,
		0.585507, 0.800457, 0.128254,
		0.800806, -0.595702, 0.062040,
		39.777836, 36.417900, 46.863392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800091, 37.007946, 46.314835>,  <39.217270, 36.834892, 46.819965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800091, 37.007946, 46.314835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895641, 36.626686, 46.389076>,  <39.952972, 36.397930, 46.433620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895641, 36.626686, 46.389076>,  <39.800091, 37.007946, 46.314835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895641, 36.626686, 46.389076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239814, -0.127313, -0.962435,
		0.940973, 0.274410, 0.198167,
		0.238872, -0.953148, 0.185605,
		39.967304, 36.340740, 46.444759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541985, 36.822037, 46.066399>,  <39.800091, 37.007946, 46.314835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541985, 36.822037, 46.066399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348106, 36.473042, 46.091187>,  <40.231781, 36.263645, 46.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348106, 36.473042, 46.091187>,  <40.541985, 36.822037, 46.066399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348106, 36.473042, 46.091187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192343, -0.175428, -0.965520,
		0.853272, -0.456065, 0.252846,
		-0.484697, -0.872485, 0.061967,
		40.202698, 36.211296, 46.109776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696987, 36.484272, 45.493488>,  <40.541985, 36.822037, 46.066399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696987, 36.484272, 45.493488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430767, 36.198246, 45.579025>,  <40.271034, 36.026630, 45.630348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430767, 36.198246, 45.579025>,  <40.696987, 36.484272, 45.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430767, 36.198246, 45.579025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064944, -0.229946, -0.971034,
		0.743523, -0.660159, 0.106601,
		-0.665550, -0.715063, 0.213843,
		40.231102, 35.983727, 45.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966743, 35.840576, 45.290928>,  <40.696987, 36.484272, 45.493488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966743, 35.840576, 45.290928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568619, 35.805023, 45.306175>,  <40.329742, 35.783691, 45.315323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568619, 35.805023, 45.306175>,  <40.966743, 35.840576, 45.290928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568619, 35.805023, 45.306175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008064, -0.316505, -0.948556,
		0.096376, -0.944417, 0.314305,
		-0.995313, -0.088883, 0.038120,
		40.270023, 35.778358, 45.317612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809570, 35.184490, 44.957676>,  <40.966743, 35.840576, 45.290928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809570, 35.184490, 44.957676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489182, 35.422184, 44.928474>,  <40.296947, 35.564800, 44.910954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489182, 35.422184, 44.928474>,  <40.809570, 35.184490, 44.957676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489182, 35.422184, 44.928474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057463, -0.197680, -0.978581,
		-0.595935, -0.779623, 0.192483,
		-0.800974, 0.594231, -0.073005,
		40.248890, 35.600452, 44.906574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460094, 34.939728, 44.368385>,  <40.809570, 35.184490, 44.957676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460094, 34.939728, 44.368385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276100, 35.291241, 44.419224>,  <40.165703, 35.502148, 44.449726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276100, 35.291241, 44.419224>,  <40.460094, 34.939728, 44.368385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276100, 35.291241, 44.419224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254793, 0.006484, -0.966974,
		-0.850586, -0.477174, 0.220925,
		-0.459982, 0.878785, 0.127096,
		40.138107, 35.554874, 44.457352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766399, 34.853024, 44.089161>,  <40.460094, 34.939728, 44.368385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766399, 34.853024, 44.089161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834225, 35.247116, 44.079571>,  <39.874920, 35.483570, 44.073814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834225, 35.247116, 44.079571>,  <39.766399, 34.853024, 44.089161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834225, 35.247116, 44.079571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357717, 0.038858, -0.933022,
		-0.918307, 0.166783, 0.359021,
		0.169563, 0.985228, -0.023977,
		39.885094, 35.542683, 44.072376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112778, 35.223846, 43.928951>,  <39.766399, 34.853024, 44.089161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112778, 35.223846, 43.928951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434380, 35.446293, 43.844749>,  <39.627342, 35.579762, 43.794228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434380, 35.446293, 43.844749>,  <39.112778, 35.223846, 43.928951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434380, 35.446293, 43.844749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189175, -0.096392, -0.977201,
		-0.563728, 0.825496, 0.027703,
		0.804005, 0.556116, -0.210502,
		39.675583, 35.613129, 43.781597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884216, 35.418686, 43.213390>,  <39.112778, 35.223846, 43.928951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884216, 35.418686, 43.213390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273056, 35.506065, 43.247574>,  <39.506359, 35.558491, 43.268085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273056, 35.506065, 43.247574>,  <38.884216, 35.418686, 43.213390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273056, 35.506065, 43.247574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074937, 0.056035, -0.995613,
		-0.222275, 0.974239, 0.038102,
		0.972100, 0.218445, 0.085461,
		39.564686, 35.571598, 43.273212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035439, 35.976002, 42.762325>,  <38.884216, 35.418686, 43.213390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035439, 35.976002, 42.762325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385544, 35.790485, 42.817200>,  <39.595608, 35.679176, 42.850124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385544, 35.790485, 42.817200>,  <39.035439, 35.976002, 42.762325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385544, 35.790485, 42.817200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209490, 0.107889, -0.971840,
		0.435931, 0.879350, 0.191590,
		0.875259, -0.463792, 0.137183,
		39.648121, 35.651348, 42.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433941, 36.321278, 42.237518>,  <39.035439, 35.976002, 42.762325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433941, 36.321278, 42.237518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655464, 36.001640, 42.331108>,  <39.788376, 35.809856, 42.387260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655464, 36.001640, 42.331108>,  <39.433941, 36.321278, 42.237518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655464, 36.001640, 42.331108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429597, 0.033504, -0.902399,
		0.713266, 0.600267, 0.361845,
		0.553804, -0.799098, 0.233976,
		39.821606, 35.761909, 42.401302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121765, 36.490692, 41.945354>,  <39.433941, 36.321278, 42.237518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121765, 36.490692, 41.945354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082195, 36.098164, 42.011353>,  <40.058453, 35.862648, 42.050953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082195, 36.098164, 42.011353>,  <40.121765, 36.490692, 41.945354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082195, 36.098164, 42.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606835, -0.190904, -0.771561,
		0.788647, 0.023798, 0.614385,
		-0.098927, -0.981320, 0.164998,
		40.052517, 35.803768, 42.060852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767143, 36.176140, 41.991241>,  <40.121765, 36.490692, 41.945354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767143, 36.176140, 41.991241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504982, 35.894691, 41.881424>,  <40.347687, 35.725822, 41.815533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504982, 35.894691, 41.881424>,  <40.767143, 36.176140, 41.991241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504982, 35.894691, 41.881424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516380, -0.152175, -0.842730,
		0.551181, -0.694094, 0.463069,
		-0.655402, -0.703617, -0.274540,
		40.308361, 35.683605, 41.799061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156101, 35.624680, 41.730225>,  <40.767143, 36.176140, 41.991241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156101, 35.624680, 41.730225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797169, 35.561127, 41.565514>,  <40.581810, 35.522995, 41.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797169, 35.561127, 41.565514>,  <41.156101, 35.624680, 41.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797169, 35.561127, 41.565514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440360, -0.385254, -0.810964,
		-0.029795, -0.909031, 0.415663,
		-0.897327, -0.158879, -0.411779,
		40.527969, 35.513462, 41.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167965, 34.973846, 41.375416>,  <41.156101, 35.624680, 41.730225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167965, 34.973846, 41.375416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849831, 35.156502, 41.215950>,  <40.658951, 35.266094, 41.120270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849831, 35.156502, 41.215950>,  <41.167965, 34.973846, 41.375416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849831, 35.156502, 41.215950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275120, -0.314108, -0.908650,
		-0.540145, -0.832358, 0.124191,
		-0.795332, 0.456635, -0.398662,
		40.611233, 35.293491, 41.096352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035915, 34.528191, 40.835854>,  <41.167965, 34.973846, 41.375416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035915, 34.528191, 40.835854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 34.871098, 40.750053>,  <40.736359, 35.076843, 40.698574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 34.871098, 40.750053>,  <41.035915, 34.528191, 40.835854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848694, 34.871098, 40.750053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258936, -0.099027, -0.960805,
		-0.844911, -0.505252, -0.175629,
		-0.468056, 0.857271, -0.214497,
		40.708279, 35.128281, 40.685703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458488, 34.405891, 40.301182>,  <41.035915, 34.528191, 40.835854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458488, 34.405891, 40.301182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571484, 34.789597, 40.299530>,  <40.639282, 35.019817, 40.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571484, 34.789597, 40.299530>,  <40.458488, 34.405891, 40.301182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571484, 34.789597, 40.299530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246142, -0.076644, -0.966199,
		-0.927153, 0.271928, -0.257766,
		0.282492, 0.959261, -0.004128,
		40.656231, 35.077374, 40.298290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294563, 34.568443, 39.641003>,  <40.458488, 34.405891, 40.301182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294563, 34.568443, 39.641003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568665, 34.826527, 39.776134>,  <40.733128, 34.981377, 39.857212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568665, 34.826527, 39.776134>,  <40.294563, 34.568443, 39.641003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568665, 34.826527, 39.776134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413525, 0.037144, -0.909735,
		-0.599517, 0.763103, -0.241356,
		0.685257, 0.645208, 0.337830,
		40.774242, 35.020088, 39.877483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315372, 35.076317, 39.186424>,  <40.294563, 34.568443, 39.641003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315372, 35.076317, 39.186424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665565, 35.086311, 39.379463>,  <40.875683, 35.092308, 39.495285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665565, 35.086311, 39.379463>,  <40.315372, 35.076317, 39.186424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665565, 35.086311, 39.379463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474542, 0.144213, -0.868339,
		-0.091293, 0.989231, 0.114399,
		0.875486, 0.024986, 0.482598,
		40.928211, 35.093807, 39.524242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622475, 35.649487, 38.955967>,  <40.315372, 35.076317, 39.186424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622475, 35.649487, 38.955967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941704, 35.473808, 39.120983>,  <41.133240, 35.368401, 39.219994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941704, 35.473808, 39.120983>,  <40.622475, 35.649487, 38.955967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941704, 35.473808, 39.120983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569709, 0.327002, -0.753990,
		0.196247, 0.836766, 0.511184,
		0.798072, -0.439195, 0.412540,
		41.181126, 35.342049, 39.244743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215187, 35.999363, 38.756222>,  <40.622475, 35.649487, 38.955967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215187, 35.999363, 38.756222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404446, 35.667042, 38.873455>,  <41.518002, 35.467648, 38.943794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404446, 35.667042, 38.873455>,  <41.215187, 35.999363, 38.756222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404446, 35.667042, 38.873455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662044, 0.115822, -0.740462,
		0.581232, 0.544383, 0.604828,
		0.473147, -0.830803, 0.293086,
		41.546391, 35.417801, 38.961380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891083, 36.247494, 38.798256>,  <41.215187, 35.999363, 38.756222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891083, 36.247494, 38.798256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889523, 35.848995, 38.763649>,  <41.888584, 35.609898, 38.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889523, 35.848995, 38.763649>,  <41.891083, 36.247494, 38.798256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889523, 35.848995, 38.763649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764346, 0.052814, -0.642640,
		0.644795, -0.068637, 0.761268,
		-0.003903, -0.996243, -0.086516,
		41.888351, 35.550121, 38.737694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694588, 36.051147, 38.738613>,  <41.891083, 36.247494, 38.798256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694588, 36.051147, 38.738613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506062, 35.720699, 38.615074>,  <42.392944, 35.522430, 38.540951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506062, 35.720699, 38.615074>,  <42.694588, 36.051147, 38.738613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506062, 35.720699, 38.615074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747666, -0.188502, -0.636759,
		0.467819, -0.531032, 0.706506,
		-0.471317, -0.826118, -0.308850,
		42.364666, 35.472862, 38.522419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193829, 35.451664, 38.753147>,  <42.694588, 36.051147, 38.738613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193829, 35.451664, 38.753147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904427, 35.374844, 38.487919>,  <42.730785, 35.328751, 38.328781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904427, 35.374844, 38.487919>,  <43.193829, 35.451664, 38.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904427, 35.374844, 38.487919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687402, -0.288706, -0.666429,
		-0.063447, -0.937959, 0.340893,
		-0.723500, -0.192048, -0.663072,
		42.687378, 35.317230, 38.288998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262730, 34.724976, 38.574352>,  <43.193829, 35.451664, 38.753147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262730, 34.724976, 38.574352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069759, 34.929512, 38.289875>,  <42.953976, 35.052235, 38.119190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069759, 34.929512, 38.289875>,  <43.262730, 34.724976, 38.574352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069759, 34.929512, 38.289875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615941, -0.379253, -0.690495,
		-0.622800, -0.771166, -0.131994,
		-0.482427, 0.511342, -0.711191,
		42.925030, 35.082916, 38.076519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344158, 34.390583, 37.945324>,  <43.262730, 34.724976, 38.574352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344158, 34.390583, 37.945324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213860, 34.745419, 37.814503>,  <43.135681, 34.958321, 37.736012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213860, 34.745419, 37.814503>,  <43.344158, 34.390583, 37.945324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213860, 34.745419, 37.814503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549591, -0.103806, -0.828959,
		-0.769311, -0.449773, -0.453723,
		-0.325744, 0.887090, -0.327050,
		43.116135, 35.011547, 37.716389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894283, 34.352501, 37.288715>,  <43.344158, 34.390583, 37.945324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894283, 34.352501, 37.288715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122913, 34.674473, 37.352455>,  <43.260094, 34.867657, 37.390701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122913, 34.674473, 37.352455>,  <42.894283, 34.352501, 37.288715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122913, 34.674473, 37.352455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494149, -0.182623, -0.849980,
		-0.655069, 0.564574, -0.502137,
		0.571578, 0.804926, 0.159353,
		43.294388, 34.915951, 37.400261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951168, 35.069912, 36.699562>,  <42.894283, 34.352501, 37.288715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951168, 35.069912, 36.699562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261425, 34.941154, 36.916733>,  <43.447578, 34.863899, 37.047035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261425, 34.941154, 36.916733>,  <42.951168, 35.069912, 36.699562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261425, 34.941154, 36.916733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428071, -0.363835, -0.827272,
		0.463824, 0.874077, -0.144414,
		0.775643, -0.321889, 0.542923,
		43.494118, 34.844589, 37.079609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569843, 35.289116, 36.443382>,  <42.951168, 35.069912, 36.699562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569843, 35.289116, 36.443382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635834, 34.940521, 36.628120>,  <43.675426, 34.731365, 36.738964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635834, 34.940521, 36.628120>,  <43.569843, 35.289116, 36.443382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635834, 34.940521, 36.628120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306681, -0.399719, -0.863812,
		0.937406, 0.284147, 0.201323,
		0.164977, -0.871485, 0.461841,
		43.685326, 34.679077, 36.766674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294579, 35.055740, 36.356079>,  <43.569843, 35.289116, 36.443382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294579, 35.055740, 36.356079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021336, 34.765156, 36.386055>,  <43.857388, 34.590805, 36.404041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021336, 34.765156, 36.386055>,  <44.294579, 35.055740, 36.356079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021336, 34.765156, 36.386055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257323, -0.335452, -0.906232,
		0.683480, -0.599773, 0.416086,
		-0.683111, -0.726460, 0.074940,
		43.816402, 34.547218, 36.408535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625835, 34.463291, 36.155853>,  <44.294579, 35.055740, 36.356079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625835, 34.463291, 36.155853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233135, 34.406639, 36.105080>,  <43.997517, 34.372650, 36.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233135, 34.406639, 36.105080>,  <44.625835, 34.463291, 36.155853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233135, 34.406639, 36.105080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127325, 0.006333, -0.991841,
		0.141276, -0.989900, 0.011815,
		-0.981748, -0.141627, -0.126934,
		43.938610, 34.364151, 36.066998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512981, 33.915638, 35.569706>,  <44.625835, 34.463291, 36.155853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512981, 33.915638, 35.569706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195995, 34.152763, 35.627079>,  <44.005806, 34.295040, 35.661503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.195995, 34.152763, 35.627079>,  <44.512981, 33.915638, 35.569706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195995, 34.152763, 35.627079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026153, 0.201922, -0.979053,
		-0.609359, -0.779614, -0.144512,
		-0.792463, 0.592815, 0.143432,
		43.958256, 34.330608, 35.670109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825874, 33.680359, 35.328072>,  <44.512981, 33.915638, 35.569706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825874, 33.680359, 35.328072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855343, 34.078907, 35.311005>,  <43.873024, 34.318035, 35.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855343, 34.078907, 35.311005>,  <43.825874, 33.680359, 35.328072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855343, 34.078907, 35.311005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093094, -0.035728, -0.995016,
		-0.992928, 0.077281, 0.090123,
		0.073676, 0.996369, -0.042669,
		43.877445, 34.377819, 35.298203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272919, 33.909710, 34.906448>,  <43.825874, 33.680359, 35.328072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272919, 33.909710, 34.906448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587795, 34.154266, 34.874115>,  <43.776722, 34.300999, 34.854713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587795, 34.154266, 34.874115>,  <43.272919, 33.909710, 34.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587795, 34.154266, 34.874115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337575, 0.317478, -0.886144,
		-0.516114, 0.724853, 0.456305,
		0.787191, 0.611389, -0.080837,
		43.823952, 34.337685, 34.849865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046886, 34.603920, 34.707001>,  <43.272919, 33.909710, 34.906448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046886, 34.603920, 34.707001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433109, 34.596935, 34.603161>,  <43.664845, 34.592743, 34.540859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433109, 34.596935, 34.603161>,  <43.046886, 34.603920, 34.707001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433109, 34.596935, 34.603161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250651, 0.205152, -0.946090,
		0.069781, 0.978574, 0.193709,
		0.965559, -0.017465, -0.259597,
		43.722778, 34.591694, 34.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280094, 35.294781, 34.328735>,  <43.046886, 34.603920, 34.707001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280094, 35.294781, 34.328735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486656, 34.971901, 34.214363>,  <43.610592, 34.778172, 34.145741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486656, 34.971901, 34.214363>,  <43.280094, 35.294781, 34.328735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486656, 34.971901, 34.214363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370956, 0.090086, -0.924271,
		0.771829, 0.583365, -0.252914,
		0.516403, -0.807199, -0.285933,
		43.641579, 34.729740, 34.128582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189564, 35.315884, 33.600216>,  <43.280094, 35.294781, 34.328735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189564, 35.315884, 33.600216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412197, 34.985409, 33.635162>,  <43.545776, 34.787125, 33.656132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412197, 34.985409, 33.635162>,  <43.189564, 35.315884, 33.600216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412197, 34.985409, 33.635162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216182, -0.245562, -0.944968,
		0.802174, 0.507064, -0.315282,
		0.556581, -0.826187, 0.087365,
		43.579170, 34.737553, 33.661373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660892, 35.235329, 33.063148>,  <43.189564, 35.315884, 33.600216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660892, 35.235329, 33.063148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654545, 34.849960, 33.170151>,  <43.650734, 34.618740, 33.234352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654545, 34.849960, 33.170151>,  <43.660892, 35.235329, 33.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654545, 34.849960, 33.170151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279994, -0.252553, -0.926186,
		0.959870, -0.089601, -0.265745,
		-0.015872, -0.963425, 0.267506,
		43.649784, 34.560932, 33.250404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082279, 34.823711, 32.670033>,  <43.660892, 35.235329, 33.063148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082279, 34.823711, 32.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778172, 34.603458, 32.807903>,  <43.595707, 34.471306, 32.890625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778172, 34.603458, 32.807903>,  <44.082279, 34.823711, 32.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778172, 34.603458, 32.807903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368252, -0.071781, -0.926951,
		0.535151, -0.831655, -0.148200,
		-0.760265, -0.550634, 0.344672,
		43.550091, 34.438267, 32.911304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046486, 34.299828, 32.161354>,  <44.082279, 34.823711, 32.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046486, 34.299828, 32.161354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691345, 34.281342, 32.344475>,  <43.478260, 34.270248, 32.454346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691345, 34.281342, 32.344475>,  <44.046486, 34.299828, 32.161354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691345, 34.281342, 32.344475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459267, 0.028146, -0.887852,
		0.028146, -0.998535, -0.046215,
		0.887852, 0.046215, -0.457802,
		43.424988, 34.267479, 32.481815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536079, 33.972370, 31.739309>,  <44.046486, 34.299828, 32.161354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536079, 33.972370, 31.739309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287945, 34.163963, 31.987745>,  <43.139065, 34.278919, 32.136806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287945, 34.163963, 31.987745>,  <43.536079, 33.972370, 31.739309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287945, 34.163963, 31.987745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615548, 0.193442, -0.763991,
		-0.486085, -0.856243, 0.174839,
		-0.620341, 0.478986, 0.621088,
		43.101841, 34.307659, 32.174072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982685, 33.672913, 31.674067>,  <43.536079, 33.972370, 31.739309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982685, 33.672913, 31.674067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874977, 34.032330, 31.812695>,  <42.810352, 34.247978, 31.895872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874977, 34.032330, 31.812695>,  <42.982685, 33.672913, 31.674067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874977, 34.032330, 31.812695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594650, 0.127945, -0.793739,
		-0.757551, -0.419822, 0.499867,
		-0.269273, 0.898543, 0.346572,
		42.794193, 34.301891, 31.916666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235638, 33.627373, 31.501228>,  <42.982685, 33.672913, 31.674067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235638, 33.627373, 31.501228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320278, 34.009449, 31.584017>,  <42.371063, 34.238693, 31.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320278, 34.009449, 31.584017>,  <42.235638, 33.627373, 31.501228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320278, 34.009449, 31.584017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728794, 0.295309, -0.617781,
		-0.651218, -0.020117, 0.758624,
		0.211600, 0.955190, 0.206971,
		42.383759, 34.296005, 31.646109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584621, 33.965656, 31.597019>,  <42.235638, 33.627373, 31.501228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584621, 33.965656, 31.597019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851925, 34.250805, 31.511936>,  <42.012306, 34.421894, 31.460886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851925, 34.250805, 31.511936>,  <41.584621, 33.965656, 31.597019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851925, 34.250805, 31.511936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674986, 0.460811, -0.576236,
		-0.312763, 0.528650, 0.789118,
		0.668262, 0.712869, -0.212707,
		42.052402, 34.464664, 31.448124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183319, 34.563057, 31.735533>,  <41.584621, 33.965656, 31.597019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183319, 34.563057, 31.735533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484928, 34.697048, 31.509527>,  <41.665894, 34.777443, 31.373924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484928, 34.697048, 31.509527>,  <41.183319, 34.563057, 31.735533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484928, 34.697048, 31.509527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650824, 0.497239, -0.573744,
		0.088759, 0.800341, 0.592938,
		0.754023, 0.334974, -0.565016,
		41.711136, 34.797539, 31.340023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151829, 35.308758, 31.588453>,  <41.183319, 34.563057, 31.735533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151829, 35.308758, 31.588453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382591, 35.191013, 31.283682>,  <41.521049, 35.120369, 31.100819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382591, 35.191013, 31.283682>,  <41.151829, 35.308758, 31.588453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382591, 35.191013, 31.283682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525363, 0.580541, -0.622066,
		0.625440, 0.759162, 0.180271,
		0.576903, -0.294357, -0.761929,
		41.555664, 35.102707, 31.055103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360996, 35.962910, 31.335350>,  <41.151829, 35.308758, 31.588453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360996, 35.962910, 31.335350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417191, 35.675552, 31.062826>,  <41.450909, 35.503139, 30.899313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417191, 35.675552, 31.062826>,  <41.360996, 35.962910, 31.335350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417191, 35.675552, 31.062826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312858, 0.620663, -0.718955,
		0.939353, 0.314156, -0.137559,
		0.140487, -0.718389, -0.681308,
		41.459335, 35.460037, 30.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422928, 36.298229, 30.622665>,  <41.360996, 35.962910, 31.335350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422928, 36.298229, 30.622665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365322, 35.924213, 30.493073>,  <41.330761, 35.699806, 30.415316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365322, 35.924213, 30.493073>,  <41.422928, 36.298229, 30.622665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365322, 35.924213, 30.493073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304104, 0.353370, -0.884675,
		0.941691, -0.028877, -0.335238,
		-0.144010, -0.935038, -0.323984,
		41.322121, 35.643703, 30.395878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707306, 36.292488, 29.908281>,  <41.422928, 36.298229, 30.622665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707306, 36.292488, 29.908281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470520, 35.970242, 29.898804>,  <41.328449, 35.776894, 29.893118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470520, 35.970242, 29.898804>,  <41.707306, 36.292488, 29.908281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470520, 35.970242, 29.898804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319720, 0.261710, -0.910652,
		0.739838, -0.531496, -0.412494,
		-0.591962, -0.805618, -0.023693,
		41.292931, 35.728558, 29.891695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761837, 35.985630, 29.208796>,  <41.707306, 36.292488, 29.908281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761837, 35.985630, 29.208796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423409, 35.829018, 29.353497>,  <41.220352, 35.735050, 29.440317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423409, 35.829018, 29.353497>,  <41.761837, 35.985630, 29.208796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423409, 35.829018, 29.353497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406339, 0.034447, -0.913073,
		0.345039, -0.919518, -0.188241,
		-0.846071, -0.391535, 0.361751,
		41.169586, 35.711555, 29.462021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601482, 35.398335, 28.729414>,  <41.761837, 35.985630, 29.208796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601482, 35.398335, 28.729414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278996, 35.543304, 28.916460>,  <41.085503, 35.630287, 29.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278996, 35.543304, 28.916460>,  <41.601482, 35.398335, 28.729414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278996, 35.543304, 28.916460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484798, 0.048316, -0.873291,
		-0.339092, -0.930761, 0.136748,
		-0.806218, 0.362421, 0.467614,
		41.037128, 35.652031, 29.056744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987293, 35.097038, 28.396534>,  <41.601482, 35.398335, 28.729414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987293, 35.097038, 28.396534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828869, 35.414577, 28.581116>,  <40.733814, 35.605103, 28.691864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828869, 35.414577, 28.581116>,  <40.987293, 35.097038, 28.396534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828869, 35.414577, 28.581116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439836, 0.277127, -0.854251,
		-0.806028, -0.541298, 0.239406,
		-0.396059, 0.793849, 0.461455,
		40.710052, 35.652733, 28.719553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373669, 35.220524, 28.026539>,  <40.987293, 35.097038, 28.396534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373669, 35.220524, 28.026539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467003, 35.569527, 28.198257>,  <40.523003, 35.778927, 28.301289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467003, 35.569527, 28.198257>,  <40.373669, 35.220524, 28.026539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467003, 35.569527, 28.198257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372807, 0.488014, -0.789213,
		-0.898093, 0.024104, 0.439144,
		0.233331, 0.872503, 0.429296,
		40.537003, 35.831276, 28.327045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722675, 35.562893, 28.025780>,  <40.373669, 35.220524, 28.026539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722675, 35.562893, 28.025780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013126, 35.834980, 28.065866>,  <40.187397, 35.998234, 28.089918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013126, 35.834980, 28.065866>,  <39.722675, 35.562893, 28.025780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013126, 35.834980, 28.065866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354266, 0.495060, -0.793354,
		-0.589270, 0.540570, 0.600454,
		0.726124, 0.680220, 0.100219,
		40.230965, 36.039047, 28.095932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519875, 36.374634, 27.977352>,  <39.722675, 35.562893, 28.025780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519875, 36.374634, 27.977352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879925, 36.263882, 27.842821>,  <40.095955, 36.197430, 27.762102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879925, 36.263882, 27.842821>,  <39.519875, 36.374634, 27.977352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879925, 36.263882, 27.842821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230526, 0.352349, -0.907033,
		0.369640, 0.893974, 0.253331,
		0.900125, -0.276876, -0.336326,
		40.149963, 36.180820, 27.741924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966675, 37.015491, 28.149033>,  <39.519875, 36.374634, 27.977352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966675, 37.015491, 28.149033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286163, 37.249401, 28.205715>,  <40.477856, 37.389748, 28.239725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286163, 37.249401, 28.205715>,  <39.966675, 37.015491, 28.149033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286163, 37.249401, 28.205715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601675, 0.778309, 0.179502,
		-0.005324, -0.228635, 0.973498,
		0.798723, 0.584774, 0.141707,
		40.525780, 37.424835, 28.248228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010468, 37.230255, 28.824427>,  <39.966675, 37.015491, 28.149033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010468, 37.230255, 28.824427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143650, 37.504017, 28.564970>,  <40.223560, 37.668274, 28.409296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143650, 37.504017, 28.564970>,  <40.010468, 37.230255, 28.824427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143650, 37.504017, 28.564970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661109, 0.659932, 0.356964,
		0.672368, 0.309972, 0.672190,
		0.332951, 0.684402, -0.648643,
		40.243538, 37.709339, 28.370378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136288, 37.785011, 29.302097>,  <40.010468, 37.230255, 28.824427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136288, 37.785011, 29.302097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028706, 37.864597, 28.925146>,  <39.964157, 37.912350, 28.698977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028706, 37.864597, 28.925146>,  <40.136288, 37.785011, 29.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028706, 37.864597, 28.925146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838699, 0.432675, 0.330720,
		0.473547, 0.879319, 0.050505,
		-0.268957, 0.198970, -0.942376,
		39.948017, 37.924290, 28.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475819, 38.092484, 28.858311>,  <40.136288, 37.785011, 29.302097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475819, 38.092484, 28.858311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562874, 38.296577, 28.525492>,  <39.615108, 38.419033, 28.325800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562874, 38.296577, 28.525492>,  <39.475819, 38.092484, 28.858311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562874, 38.296577, 28.525492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843301, 0.527500, 0.102894,
		0.491403, 0.679271, 0.545082,
		0.217638, 0.510230, -0.832045,
		39.628166, 38.449646, 28.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512650, 38.735897, 29.131496>,  <39.475819, 38.092484, 28.858311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512650, 38.735897, 29.131496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404026, 38.703178, 28.747921>,  <39.338852, 38.683548, 28.517776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404026, 38.703178, 28.747921>,  <39.512650, 38.735897, 29.131496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404026, 38.703178, 28.747921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745725, 0.647751, 0.155928,
		0.608399, 0.757448, -0.236903,
		-0.271561, -0.081798, -0.958939,
		39.322559, 38.678638, 28.460239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770279, 39.345757, 28.894928>,  <39.512650, 38.735897, 29.131496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770279, 39.345757, 28.894928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422451, 39.169220, 28.806318>,  <39.213757, 39.063297, 28.753153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422451, 39.169220, 28.806318>,  <39.770279, 39.345757, 28.894928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422451, 39.169220, 28.806318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493382, 0.757708, 0.427145,
		-0.020664, 0.480728, -0.876626,
		-0.869567, -0.441338, -0.221525,
		39.161579, 39.036819, 28.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323063, 39.799316, 28.823210>,  <39.770279, 39.345757, 28.894928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323063, 39.799316, 28.823210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414066, 40.116436, 29.049383>,  <40.468666, 40.306705, 29.185087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414066, 40.116436, 29.049383>,  <40.323063, 39.799316, 28.823210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414066, 40.116436, 29.049383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268588, -0.609224, 0.746128,
		0.936003, -0.017881, -0.351538,
		0.227506, 0.792797, 0.565433,
		40.482319, 40.354275, 29.219013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916599, 39.583588, 29.119057>,  <40.323063, 39.799316, 28.823210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916599, 39.583588, 29.119057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771294, 39.869522, 29.358072>,  <40.684109, 40.041080, 29.501482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771294, 39.869522, 29.358072>,  <40.916599, 39.583588, 29.119057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771294, 39.869522, 29.358072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144265, -0.590459, 0.794069,
		0.920448, 0.374662, 0.111368,
		-0.363266, 0.714833, 0.597538,
		40.662315, 40.083973, 29.537334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513916, 39.821201, 29.629259>,  <40.916599, 39.583588, 29.119057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513916, 39.821201, 29.629259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127979, 39.845684, 29.731508>,  <40.896420, 39.860374, 29.792858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127979, 39.845684, 29.731508>,  <41.513916, 39.821201, 29.629259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127979, 39.845684, 29.731508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202753, -0.445585, 0.871978,
		0.167273, 0.893145, 0.417507,
		-0.964837, 0.061207, 0.255622,
		40.838528, 39.864048, 29.808195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376114, 40.336098, 30.223373>,  <41.513916, 39.821201, 29.629259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376114, 40.336098, 30.223373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151611, 40.007195, 30.185680>,  <41.016911, 39.809853, 30.163065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151611, 40.007195, 30.185680>,  <41.376114, 40.336098, 30.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151611, 40.007195, 30.185680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412131, -0.376398, 0.829743,
		-0.717733, 0.426862, 0.550134,
		-0.561256, -0.822261, -0.094230,
		40.983234, 39.760517, 30.157412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906677, 40.253288, 30.758860>,  <41.376114, 40.336098, 30.223373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906677, 40.253288, 30.758860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983868, 39.886433, 30.619368>,  <41.030182, 39.666317, 30.535673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983868, 39.886433, 30.619368>,  <40.906677, 40.253288, 30.758860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983868, 39.886433, 30.619368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208646, -0.308927, 0.927918,
		-0.958764, -0.251823, 0.131743,
		0.192972, -0.917142, -0.348730,
		41.041759, 39.611290, 30.514750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834263, 39.760014, 31.355951>,  <40.906677, 40.253288, 30.758860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834263, 39.760014, 31.355951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019688, 39.516270, 31.098644>,  <41.130943, 39.370026, 30.944260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019688, 39.516270, 31.098644>,  <40.834263, 39.760014, 31.355951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019688, 39.516270, 31.098644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538425, -0.382855, 0.750680,
		-0.703710, -0.694340, 0.150615,
		0.463564, -0.609356, -0.643269,
		41.158756, 39.333462, 30.905664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926044, 39.130096, 31.745852>,  <40.834263, 39.760014, 31.355951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926044, 39.130096, 31.745852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190277, 39.088673, 31.448420>,  <41.348816, 39.063820, 31.269960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190277, 39.088673, 31.448420>,  <40.926044, 39.130096, 31.745852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190277, 39.088673, 31.448420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633335, -0.454974, 0.626008,
		-0.403138, -0.884463, -0.234958,
		0.660580, -0.103561, -0.743578,
		41.388451, 39.057606, 31.225346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162758, 38.456421, 31.735506>,  <40.926044, 39.130096, 31.745852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162758, 38.456421, 31.735506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439056, 38.666065, 31.536236>,  <41.604836, 38.791851, 31.416674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439056, 38.666065, 31.536236>,  <41.162758, 38.456421, 31.735506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439056, 38.666065, 31.536236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722324, -0.468248, 0.508912,
		0.033457, -0.711373, -0.702018,
		0.690745, 0.524111, -0.498176,
		41.646278, 38.823299, 31.386784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685432, 37.942894, 31.513870>,  <41.162758, 38.456421, 31.735506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685432, 37.942894, 31.513870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868126, 38.298717, 31.517429>,  <41.977741, 38.512211, 31.519564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868126, 38.298717, 31.517429>,  <41.685432, 37.942894, 31.513870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868126, 38.298717, 31.517429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846760, -0.437778, 0.302237,
		0.272753, -0.130508, -0.953191,
		0.456730, 0.889561, 0.008896,
		42.005146, 38.565586, 31.520098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257465, 37.771374, 31.173670>,  <41.685432, 37.942894, 31.513870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257465, 37.771374, 31.173670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330025, 38.092182, 31.401304>,  <42.373562, 38.284668, 31.537886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330025, 38.092182, 31.401304>,  <42.257465, 37.771374, 31.173670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330025, 38.092182, 31.401304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843906, -0.424060, 0.328627,
		0.504892, 0.420642, -0.753754,
		0.181403, 0.802018, 0.569087,
		42.384445, 38.332787, 31.572031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973091, 37.854389, 31.128799>,  <42.257465, 37.771374, 31.173670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973091, 37.854389, 31.128799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874916, 38.105747, 31.424065>,  <42.816013, 38.256561, 31.601225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874916, 38.105747, 31.424065>,  <42.973091, 37.854389, 31.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874916, 38.105747, 31.424065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827494, -0.260857, 0.497200,
		0.504991, 0.732856, -0.455967,
		-0.245434, 0.628391, 0.738164,
		42.801285, 38.294266, 31.645514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601173, 38.154137, 31.242655>,  <42.973091, 37.854389, 31.128799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601173, 38.154137, 31.242655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378845, 38.196201, 31.572504>,  <43.245449, 38.221439, 31.770414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378845, 38.196201, 31.572504>,  <43.601173, 38.154137, 31.242655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378845, 38.196201, 31.572504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752698, -0.357391, 0.552917,
		0.352860, 0.928015, 0.119487,
		-0.555819, 0.105165, 0.824625,
		43.212101, 38.227749, 31.819891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093811, 38.379166, 31.770229>,  <43.601173, 38.154137, 31.242655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093811, 38.379166, 31.770229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779591, 38.235504, 31.971792>,  <43.591061, 38.149307, 32.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779591, 38.235504, 31.971792>,  <44.093811, 38.379166, 31.770229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779591, 38.235504, 31.971792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608421, -0.596816, 0.523101,
		0.112866, 0.717509, 0.687345,
		-0.785548, -0.359155, 0.503907,
		43.543926, 38.127758, 32.122963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214375, 38.591393, 32.461121>,  <44.093811, 38.379166, 31.770229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214375, 38.591393, 32.461121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975479, 38.272701, 32.424183>,  <43.832142, 38.081486, 32.402020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975479, 38.272701, 32.424183>,  <44.214375, 38.591393, 32.461121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975479, 38.272701, 32.424183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646722, -0.546465, 0.532096,
		-0.474399, 0.258069, 0.841633,
		-0.597241, -0.796729, -0.092344,
		43.796307, 38.033684, 32.396481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195282, 38.337879, 33.094929>,  <44.214375, 38.591393, 32.461121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195282, 38.337879, 33.094929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059532, 38.027149, 32.882751>,  <43.978085, 37.840714, 32.755444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059532, 38.027149, 32.882751>,  <44.195282, 38.337879, 33.094929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059532, 38.027149, 32.882751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595949, -0.613863, 0.517703,
		-0.727785, -0.140424, 0.671275,
		-0.339373, -0.776823, -0.530446,
		43.957722, 37.794102, 32.723618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140034, 37.887321, 33.534912>,  <44.195282, 38.337879, 33.094929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140034, 37.887321, 33.534912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127754, 37.673866, 33.196850>,  <44.120384, 37.545792, 32.994011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127754, 37.673866, 33.196850>,  <44.140034, 37.887321, 33.534912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127754, 37.673866, 33.196850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443931, -0.764861, 0.466813,
		-0.895535, -0.360857, 0.260383,
		-0.030703, -0.533639, -0.845155,
		44.118542, 37.513775, 32.943302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907463, 37.232388, 33.792690>,  <44.140034, 37.887321, 33.534912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907463, 37.232388, 33.792690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077225, 37.140800, 33.442272>,  <44.179081, 37.085846, 33.232021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077225, 37.140800, 33.442272>,  <43.907463, 37.232388, 33.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077225, 37.140800, 33.442272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468199, -0.772628, 0.428761,
		-0.775034, -0.592129, -0.220695,
		0.424397, -0.228975, -0.876047,
		44.204544, 37.072109, 33.179459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856258, 36.503239, 33.800396>,  <43.907463, 37.232388, 33.792690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856258, 36.503239, 33.800396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148289, 36.606369, 33.547253>,  <44.323509, 36.668247, 33.395367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148289, 36.606369, 33.547253>,  <43.856258, 36.503239, 33.800396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148289, 36.606369, 33.547253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616768, -0.647372, 0.447779,
		-0.294247, -0.717242, -0.631651,
		0.730079, 0.257824, -0.632859,
		44.367313, 36.683716, 33.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224831, 35.919964, 33.624115>,  <43.856258, 36.503239, 33.800396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224831, 35.919964, 33.624115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487389, 36.212521, 33.550125>,  <44.644924, 36.388054, 33.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487389, 36.212521, 33.550125>,  <44.224831, 35.919964, 33.624115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487389, 36.212521, 33.550125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735101, -0.564932, 0.374805,
		0.169633, -0.381992, -0.908464,
		0.656393, 0.731392, -0.184972,
		44.684307, 36.431938, 33.494633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809246, 35.646965, 33.446774>,  <44.224831, 35.919964, 33.624115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809246, 35.646965, 33.446774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961746, 36.005547, 33.537117>,  <45.053246, 36.220695, 33.591324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961746, 36.005547, 33.537117>,  <44.809246, 35.646965, 33.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961746, 36.005547, 33.537117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742340, -0.442471, 0.503140,
		0.550981, -0.024155, -0.834168,
		0.381249, 0.896457, 0.225862,
		45.076122, 36.274483, 33.604874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479588, 35.605865, 33.278725>,  <44.809246, 35.646965, 33.446774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479588, 35.605865, 33.278725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468658, 35.918716, 33.527733>,  <45.462101, 36.106426, 33.677135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468658, 35.918716, 33.527733>,  <45.479588, 35.605865, 33.278725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468658, 35.918716, 33.527733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861094, -0.297878, 0.412051,
		0.507711, 0.547305, -0.665347,
		-0.027325, 0.782129, 0.622517,
		45.460461, 36.153355, 33.714489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180088, 35.877983, 33.299614>,  <45.479588, 35.605865, 33.278725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180088, 35.877983, 33.299614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983662, 35.998817, 33.626442>,  <45.865807, 36.071320, 33.822536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983662, 35.998817, 33.626442>,  <46.180088, 35.877983, 33.299614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983662, 35.998817, 33.626442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716790, -0.392898, 0.576059,
		0.495044, 0.868547, -0.023594,
		-0.491064, 0.302086, 0.817068,
		45.836342, 36.089443, 33.871563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605110, 36.364388, 33.642849>,  <46.180088, 35.877983, 33.299614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605110, 36.364388, 33.642849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363602, 36.203354, 33.918060>,  <46.218697, 36.106735, 34.083187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363602, 36.203354, 33.918060>,  <46.605110, 36.364388, 33.642849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363602, 36.203354, 33.918060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796004, -0.350833, 0.493247,
		0.042810, 0.845484, 0.532282,
		-0.603775, -0.402583, 0.688028,
		46.182468, 36.082581, 34.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810093, 36.610065, 34.301907>,  <46.605110, 36.364388, 33.642849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810093, 36.610065, 34.301907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643047, 36.250671, 34.356041>,  <46.542820, 36.035034, 34.388523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643047, 36.250671, 34.356041>,  <46.810093, 36.610065, 34.301907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643047, 36.250671, 34.356041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764806, -0.267174, 0.586250,
		-0.490579, 0.348337, 0.798745,
		-0.417617, -0.898487, 0.135341,
		46.517761, 35.981125, 34.396645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.018661, 36.397648, 35.026527>,  <46.810093, 36.610065, 34.301907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.018661, 36.397648, 35.026527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889336, 36.078835, 34.822483>,  <46.811741, 35.887547, 34.700058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889336, 36.078835, 34.822483>,  <47.018661, 36.397648, 35.026527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889336, 36.078835, 34.822483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798549, -0.519032, 0.304837,
		-0.507726, -0.308786, 0.804279,
		-0.323317, -0.797030, -0.510107,
		46.792339, 35.839725, 34.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296204, 36.006824, 35.430527>,  <47.018661, 36.397648, 35.026527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296204, 36.006824, 35.430527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204102, 35.838795, 35.079411>,  <47.148842, 35.737976, 34.868740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204102, 35.838795, 35.079411>,  <47.296204, 36.006824, 35.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204102, 35.838795, 35.079411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753802, -0.647466, 0.112123,
		-0.615440, -0.635864, 0.465737,
		-0.230254, -0.420078, -0.877791,
		47.135025, 35.712772, 34.816074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311840, 35.231316, 35.399364>,  <47.296204, 36.006824, 35.430527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311840, 35.231316, 35.399364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426777, 35.325851, 35.028080>,  <47.495739, 35.382572, 34.805309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426777, 35.325851, 35.028080>,  <47.311840, 35.231316, 35.399364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426777, 35.325851, 35.028080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761916, -0.643664, 0.071976,
		-0.580445, -0.727901, -0.365026,
		0.287345, 0.236340, -0.928211,
		47.512981, 35.396755, 34.749619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455269, 34.658363, 35.016483>,  <47.311840, 35.231316, 35.399364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455269, 34.658363, 35.016483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688568, 34.938972, 34.852684>,  <47.828548, 35.107338, 34.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688568, 34.938972, 34.852684>,  <47.455269, 34.658363, 35.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688568, 34.938972, 34.852684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792999, -0.600969, 0.099940,
		-0.175985, -0.383020, -0.906821,
		0.583251, 0.701521, -0.409496,
		47.863544, 35.149429, 34.729836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.579136, 39.335865, 44.694359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246014, 39.260403, 44.486187>,  <37.046139, 39.215126, 44.361286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246014, 39.260403, 44.486187>,  <37.579136, 39.335865, 44.694359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246014, 39.260403, 44.486187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552267, -0.347450, -0.757813,
		-0.037858, -0.918525, 0.393545,
		-0.832807, -0.188653, -0.520424,
		36.996170, 39.203808, 44.330059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745213, 38.696892, 44.355015>,  <37.579136, 39.335865, 44.694359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745213, 38.696892, 44.355015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452896, 38.873096, 44.146442>,  <37.277504, 38.978821, 44.021297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452896, 38.873096, 44.146442>,  <37.745213, 38.696892, 44.355015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452896, 38.873096, 44.146442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354919, -0.407296, -0.841512,
		-0.583074, -0.800037, 0.141302,
		-0.730792, 0.440513, -0.521432,
		37.233658, 39.005249, 43.990013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579330, 38.223751, 43.934265>,  <37.745213, 38.696892, 44.355015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579330, 38.223751, 43.934265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421410, 38.547428, 43.760212>,  <37.326656, 38.741634, 43.655781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421410, 38.547428, 43.760212>,  <37.579330, 38.223751, 43.934265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421410, 38.547428, 43.760212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177097, -0.397705, -0.900260,
		-0.901538, -0.432483, 0.013709,
		-0.394799, 0.809190, -0.435137,
		37.302971, 38.790184, 43.629669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036572, 38.008675, 43.536957>,  <37.579330, 38.223751, 43.934265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036572, 38.008675, 43.536957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174656, 38.351994, 43.385090>,  <37.257507, 38.557987, 43.293968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174656, 38.351994, 43.385090>,  <37.036572, 38.008675, 43.536957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174656, 38.351994, 43.385090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202788, -0.463197, -0.862743,
		-0.916354, 0.220838, -0.333955,
		0.345213, 0.858300, -0.379669,
		37.278221, 38.609482, 43.271191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590740, 38.113430, 42.901287>,  <37.036572, 38.008675, 43.536957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590740, 38.113430, 42.901287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899605, 38.362022, 42.848320>,  <37.084923, 38.511177, 42.816540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899605, 38.362022, 42.848320>,  <36.590740, 38.113430, 42.901287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899605, 38.362022, 42.848320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018776, -0.230609, -0.972865,
		-0.635152, 0.748720, -0.189736,
		0.772159, 0.621480, -0.132414,
		37.131252, 38.548466, 42.808598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438660, 38.279663, 42.266243>,  <36.590740, 38.113430, 42.901287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438660, 38.279663, 42.266243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802578, 38.439224, 42.312107>,  <37.020931, 38.534962, 42.339626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802578, 38.439224, 42.312107>,  <36.438660, 38.279663, 42.266243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802578, 38.439224, 42.312107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161724, -0.086276, -0.983057,
		-0.382247, 0.912927, -0.143005,
		0.909798, 0.398899, 0.114664,
		37.075516, 38.558895, 42.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459984, 38.857147, 41.804859>,  <36.438660, 38.279663, 42.266243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459984, 38.857147, 41.804859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820728, 38.694820, 41.864136>,  <37.037174, 38.597424, 41.899700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820728, 38.694820, 41.864136>,  <36.459984, 38.857147, 41.804859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820728, 38.694820, 41.864136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109289, -0.117549, -0.987035,
		0.417972, 0.906365, -0.061662,
		0.901862, -0.405814, 0.148188,
		37.091286, 38.573074, 41.908592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793064, 39.100830, 41.313847>,  <36.459984, 38.857147, 41.804859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793064, 39.100830, 41.313847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005684, 38.777287, 41.414406>,  <37.133255, 38.583160, 41.474743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005684, 38.777287, 41.414406>,  <36.793064, 39.100830, 41.313847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005684, 38.777287, 41.414406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125524, -0.218304, -0.967774,
		0.837676, 0.545975, -0.014507,
		0.531547, -0.808860, 0.251401,
		37.165150, 38.534630, 41.489826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345291, 39.093872, 40.913181>,  <36.793064, 39.100830, 41.313847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345291, 39.093872, 40.913181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347279, 38.710808, 41.028320>,  <37.348469, 38.480968, 41.097404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347279, 38.710808, 41.028320>,  <37.345291, 39.093872, 40.913181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347279, 38.710808, 41.028320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449403, -0.255008, -0.856159,
		0.893315, 0.133612, 0.429110,
		0.004967, -0.957663, 0.287848,
		37.348770, 38.423508, 41.114674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038338, 38.846195, 40.808304>,  <37.345291, 39.093872, 40.913181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038338, 38.846195, 40.808304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786770, 38.535732, 40.826351>,  <37.635830, 38.349453, 40.837181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786770, 38.535732, 40.826351>,  <38.038338, 38.846195, 40.808304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786770, 38.535732, 40.826351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403532, -0.375486, -0.834369,
		0.664544, -0.506546, 0.549357,
		-0.628922, -0.776158, 0.045119,
		37.598095, 38.302883, 40.839886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459354, 38.300674, 40.762619>,  <38.038338, 38.846195, 40.808304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459354, 38.300674, 40.762619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107769, 38.144176, 40.653557>,  <37.896816, 38.050278, 40.588120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107769, 38.144176, 40.653557>,  <38.459354, 38.300674, 40.762619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107769, 38.144176, 40.653557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458052, -0.533575, -0.710975,
		0.132685, -0.749815, 0.648207,
		-0.878967, -0.391248, -0.272657,
		37.844078, 38.026802, 40.571758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680923, 37.802197, 40.402245>,  <38.459354, 38.300674, 40.762619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680923, 37.802197, 40.402245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295959, 37.802475, 40.293602>,  <38.064983, 37.802643, 40.228416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295959, 37.802475, 40.293602>,  <38.680923, 37.802197, 40.402245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295959, 37.802475, 40.293602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209066, -0.636452, -0.742442,
		-0.173385, -0.771316, 0.612380,
		-0.962408, 0.000700, -0.271607,
		38.007236, 37.802685, 40.212120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452339, 37.105587, 40.470215>,  <38.680923, 37.802197, 40.402245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452339, 37.105587, 40.470215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237896, 37.322277, 40.211254>,  <38.109230, 37.452290, 40.055878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237896, 37.322277, 40.211254>,  <38.452339, 37.105587, 40.470215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237896, 37.322277, 40.211254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092384, -0.724668, -0.682878,
		-0.839080, -0.425905, 0.338452,
		-0.536106, 0.541722, -0.647401,
		38.077065, 37.484795, 40.017033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974091, 36.649353, 40.243454>,  <38.452339, 37.105587, 40.470215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974091, 36.649353, 40.243454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999088, 36.930218, 39.959747>,  <38.014088, 37.098736, 39.789524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999088, 36.930218, 39.959747>,  <37.974091, 36.649353, 40.243454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999088, 36.930218, 39.959747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320342, -0.687170, -0.652057,
		-0.945238, -0.186461, -0.267874,
		0.062492, 0.702161, -0.709271,
		38.017838, 37.140865, 39.746967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728058, 36.319340, 39.658653>,  <37.974091, 36.649353, 40.243454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728058, 36.319340, 39.658653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935284, 36.636944, 39.531425>,  <38.059620, 36.827507, 39.455090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935284, 36.636944, 39.531425>,  <37.728058, 36.319340, 39.658653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935284, 36.636944, 39.531425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451266, -0.569618, -0.686946,
		-0.726617, 0.212345, -0.653404,
		0.518060, 0.794006, -0.318070,
		38.090702, 36.875145, 39.436005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688812, 36.369331, 38.960052>,  <37.728058, 36.319340, 39.658653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688812, 36.369331, 38.960052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028111, 36.563442, 39.044891>,  <38.231689, 36.679909, 39.095795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028111, 36.563442, 39.044891>,  <37.688812, 36.369331, 38.960052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028111, 36.563442, 39.044891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433427, -0.405959, -0.804573,
		-0.304342, 0.774403, -0.554686,
		0.848243, 0.485282, 0.212097,
		38.282585, 36.709026, 39.108521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872719, 36.590317, 38.264797>,  <37.688812, 36.369331, 38.960052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872719, 36.590317, 38.264797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206001, 36.640636, 38.480183>,  <38.405972, 36.670826, 38.609413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206001, 36.640636, 38.480183>,  <37.872719, 36.590317, 38.264797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206001, 36.640636, 38.480183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550219, -0.285456, -0.784713,
		0.054993, 0.950100, -0.307060,
		0.833208, 0.125797, 0.538461,
		38.455963, 36.678375, 38.641720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342579, 36.882256, 37.762413>,  <37.872719, 36.590317, 38.264797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342579, 36.882256, 37.762413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577999, 36.743931, 38.054722>,  <38.719250, 36.660934, 38.230106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577999, 36.743931, 38.054722>,  <38.342579, 36.882256, 37.762413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577999, 36.743931, 38.054722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671235, -0.294796, -0.680102,
		0.450616, 0.890791, 0.058620,
		0.588548, -0.345813, 0.730770,
		38.754562, 36.640186, 38.273952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964001, 37.195744, 37.629559>,  <38.342579, 36.882256, 37.762413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964001, 37.195744, 37.629559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056198, 36.886009, 37.865280>,  <39.111519, 36.700169, 38.006714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056198, 36.886009, 37.865280>,  <38.964001, 37.195744, 37.629559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056198, 36.886009, 37.865280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677993, -0.306612, -0.668067,
		0.697995, 0.553531, 0.454320,
		0.230496, -0.774334, 0.589304,
		39.125347, 36.653709, 38.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625473, 37.147755, 37.660950>,  <38.964001, 37.195744, 37.629559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625473, 37.147755, 37.660950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564602, 36.774117, 37.790138>,  <39.528080, 36.549934, 37.867649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564602, 36.774117, 37.790138>,  <39.625473, 37.147755, 37.660950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564602, 36.774117, 37.790138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717145, -0.329220, -0.614262,
		0.680106, 0.138135, 0.719982,
		-0.152181, -0.934095, 0.322967,
		39.518948, 36.493889, 37.887028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319077, 36.928211, 37.791676>,  <39.625473, 37.147755, 37.660950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319077, 36.928211, 37.791676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103767, 36.592838, 37.757515>,  <39.974579, 36.391617, 37.737019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103767, 36.592838, 37.757515>,  <40.319077, 36.928211, 37.791676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103767, 36.592838, 37.757515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761170, -0.440160, -0.476318,
		0.361769, -0.321395, 0.875116,
		-0.538278, -0.838430, -0.085400,
		39.942284, 36.341309, 37.731895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740940, 36.367970, 38.081551>,  <40.319077, 36.928211, 37.791676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740940, 36.367970, 38.081551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.488747, 36.263123, 37.789307>,  <40.337429, 36.200214, 37.613960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.488747, 36.263123, 37.789307>,  <40.740940, 36.367970, 38.081551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488747, 36.263123, 37.789307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764911, -0.369777, -0.527424,
		-0.131914, -0.891380, 0.433635,
		-0.630484, -0.262117, -0.730605,
		40.299603, 36.184486, 37.570126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066959, 37.046032, 37.903473>,  <40.740940, 36.367970, 38.081551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066959, 37.046032, 37.903473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403568, 37.240227, 37.808701>,  <41.605534, 37.356743, 37.751839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403568, 37.240227, 37.808701>,  <41.066959, 37.046032, 37.903473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403568, 37.240227, 37.808701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074057, 0.330769, 0.940801,
		0.535119, -0.809253, 0.242397,
		0.841524, 0.485490, -0.236932,
		41.656025, 37.385872, 37.737621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395641, 37.027195, 38.510708>,  <41.066959, 37.046032, 37.903473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395641, 37.027195, 38.510708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.576237, 37.325401, 38.314602>,  <41.684593, 37.504326, 38.196938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.576237, 37.325401, 38.314602>,  <41.395641, 37.027195, 38.510708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576237, 37.325401, 38.314602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219462, 0.439795, 0.870872,
		0.864867, -0.500782, 0.034949,
		0.451488, 0.745518, -0.490267,
		41.711681, 37.549057, 38.167522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809486, 37.195454, 39.013149>,  <41.395641, 37.027195, 38.510708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809486, 37.195454, 39.013149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.828602, 37.497795, 38.751949>,  <41.840069, 37.679199, 38.595230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.828602, 37.497795, 38.751949>,  <41.809486, 37.195454, 39.013149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828602, 37.497795, 38.751949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130203, 0.643451, 0.754333,
		0.990335, -0.121069, -0.067666,
		0.047787, 0.755853, -0.652996,
		41.842937, 37.724552, 38.556049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432796, 37.514687, 39.150349>,  <41.809486, 37.195454, 39.013149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432796, 37.514687, 39.150349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155666, 37.758709, 38.996555>,  <41.989388, 37.905121, 38.904282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.155666, 37.758709, 38.996555>,  <42.432796, 37.514687, 39.150349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155666, 37.758709, 38.996555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027390, 0.555061, 0.831359,
		0.720587, 0.565454, -0.401269,
		-0.692824, 0.610057, -0.384481,
		41.947819, 37.941727, 38.881210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680058, 38.258709, 39.227299>,  <42.432796, 37.514687, 39.150349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680058, 38.258709, 39.227299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282768, 38.298664, 39.203526>,  <42.044395, 38.322639, 39.189262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282768, 38.298664, 39.203526>,  <42.680058, 38.258709, 39.227299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282768, 38.298664, 39.203526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001473, 0.500434, 0.865773,
		0.116224, 0.859993, -0.496895,
		-0.993222, 0.099892, -0.059429,
		41.984802, 38.328632, 39.185696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560150, 39.026134, 39.356842>,  <42.680058, 38.258709, 39.227299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560150, 39.026134, 39.356842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.246563, 38.792061, 39.439747>,  <42.058411, 38.651615, 39.489491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.246563, 38.792061, 39.439747>,  <42.560150, 39.026134, 39.356842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246563, 38.792061, 39.439747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001767, 0.331749, 0.943366,
		-0.620801, 0.739933, -0.259046,
		-0.783966, -0.585185, 0.207258,
		42.011372, 38.616505, 39.501923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036572, 39.508121, 39.696854>,  <42.560150, 39.026134, 39.356842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036572, 39.508121, 39.696854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891365, 39.143288, 39.773087>,  <41.804241, 38.924389, 39.818829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891365, 39.143288, 39.773087>,  <42.036572, 39.508121, 39.696854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891365, 39.143288, 39.773087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257057, 0.294631, 0.920388,
		-0.895623, 0.285125, -0.341413,
		-0.363017, -0.912083, 0.190585,
		41.782459, 38.869663, 39.830261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419003, 39.590076, 39.918621>,  <42.036572, 39.508121, 39.696854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419003, 39.590076, 39.918621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.507679, 39.229267, 40.066788>,  <41.560886, 39.012783, 40.155689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.507679, 39.229267, 40.066788>,  <41.419003, 39.590076, 39.918621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507679, 39.229267, 40.066788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356899, 0.278456, 0.891676,
		-0.907456, -0.329880, -0.260198,
		0.221693, -0.902021, 0.370420,
		41.574188, 38.958660, 40.177914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827835, 39.465382, 40.211861>,  <41.419003, 39.590076, 39.918621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827835, 39.465382, 40.211861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.096165, 39.210068, 40.362907>,  <41.257164, 39.056881, 40.453533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.096165, 39.210068, 40.362907>,  <40.827835, 39.465382, 40.211861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096165, 39.210068, 40.362907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336691, 0.191561, 0.921924,
		-0.660783, -0.745587, -0.086400,
		0.670824, -0.638282, 0.377613,
		41.297413, 39.018581, 40.476192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437893, 39.006359, 40.597759>,  <40.827835, 39.465382, 40.211861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437893, 39.006359, 40.597759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805573, 38.940975, 40.741062>,  <41.026180, 38.901745, 40.827045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805573, 38.940975, 40.741062>,  <40.437893, 39.006359, 40.597759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805573, 38.940975, 40.741062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358220, 0.030758, 0.933131,
		-0.163548, -0.986070, -0.030282,
		0.919201, -0.163459, 0.358260,
		41.081333, 38.891937, 40.848541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351730, 38.550968, 41.081642>,  <40.437893, 39.006359, 40.597759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351730, 38.550968, 41.081642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.704929, 38.700665, 41.194962>,  <40.916851, 38.790482, 41.262955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.704929, 38.700665, 41.194962>,  <40.351730, 38.550968, 41.081642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704929, 38.700665, 41.194962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334126, 0.077267, 0.939356,
		0.329652, -0.924108, 0.193269,
		0.883000, 0.374237, 0.283297,
		40.969830, 38.812935, 41.279949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563019, 38.240749, 41.750595>,  <40.351730, 38.550968, 41.081642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563019, 38.240749, 41.750595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794392, 38.567009, 41.745949>,  <40.933216, 38.762764, 41.743160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794392, 38.567009, 41.745949>,  <40.563019, 38.240749, 41.750595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794392, 38.567009, 41.745949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074643, 0.067107, 0.994950,
		0.812305, -0.574648, 0.099699,
		0.578437, 0.815644, -0.011618,
		40.967922, 38.811703, 41.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928844, 38.206730, 42.348831>,  <40.563019, 38.240749, 41.750595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928844, 38.206730, 42.348831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968323, 38.590431, 42.242931>,  <40.992008, 38.820652, 42.179390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968323, 38.590431, 42.242931>,  <40.928844, 38.206730, 42.348831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968323, 38.590431, 42.242931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377176, 0.282261, 0.882081,
		0.920868, 0.012804, 0.389664,
		0.098692, 0.959252, -0.264754,
		40.997929, 38.878208, 42.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398113, 38.542824, 42.817425>,  <40.928844, 38.206730, 42.348831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398113, 38.542824, 42.817425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173546, 38.831799, 42.655987>,  <41.038807, 39.005184, 42.559124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173546, 38.831799, 42.655987>,  <41.398113, 38.542824, 42.817425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173546, 38.831799, 42.655987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258883, 0.309904, 0.914844,
		0.785996, 0.618093, 0.013042,
		-0.561417, 0.722440, -0.403598,
		41.005119, 39.048531, 42.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510460, 39.105270, 43.173176>,  <41.398113, 38.542824, 42.817425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510460, 39.105270, 43.173176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142200, 39.126400, 43.018452>,  <40.921246, 39.139076, 42.925617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142200, 39.126400, 43.018452>,  <41.510460, 39.105270, 43.173176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142200, 39.126400, 43.018452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363053, 0.248461, 0.898031,
		0.143546, 0.967200, -0.209566,
		-0.920645, 0.052825, -0.386810,
		40.866009, 39.142246, 42.902409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143822, 39.748119, 43.378643>,  <41.510460, 39.105270, 43.173176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143822, 39.748119, 43.378643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.821712, 39.528797, 43.288403>,  <40.628445, 39.397205, 43.234257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.821712, 39.528797, 43.288403>,  <41.143822, 39.748119, 43.378643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821712, 39.528797, 43.288403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431595, 0.281203, 0.857117,
		-0.406519, 0.787585, -0.463091,
		-0.805275, -0.548302, -0.225603,
		40.580132, 39.364307, 43.220722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564632, 40.221973, 43.597107>,  <41.143822, 39.748119, 43.378643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564632, 40.221973, 43.597107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364555, 39.889423, 43.500259>,  <40.244511, 39.689892, 43.442150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364555, 39.889423, 43.500259>,  <40.564632, 40.221973, 43.597107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364555, 39.889423, 43.500259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646968, 0.172971, 0.742640,
		-0.575535, 0.528103, -0.624393,
		-0.500192, -0.831377, -0.242115,
		40.214497, 39.640011, 43.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877907, 40.395798, 43.634865>,  <40.564632, 40.221973, 43.597107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877907, 40.395798, 43.634865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877060, 39.998268, 43.679230>,  <39.876553, 39.759750, 43.705849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877060, 39.998268, 43.679230>,  <39.877907, 40.395798, 43.634865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877060, 39.998268, 43.679230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576744, 0.091816, 0.811748,
		-0.816922, -0.062248, -0.573379,
		-0.002116, -0.993828, 0.110908,
		39.876427, 39.700119, 43.712502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.111500, 40.120174, 43.711636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329800, 39.811661, 43.842644>,  <39.460781, 39.626553, 43.921249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329800, 39.811661, 43.842644>,  <39.111500, 40.120174, 43.711636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329800, 39.811661, 43.842644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590573, -0.076752, 0.803325,
		-0.594458, -0.631841, -0.497390,
		0.545750, -0.771289, 0.327522,
		39.493526, 39.580273, 43.940899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689835, 39.519821, 43.872860>,  <39.111500, 40.120174, 43.711636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689835, 39.519821, 43.872860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010136, 39.472160, 44.107670>,  <39.202316, 39.443565, 44.248554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010136, 39.472160, 44.107670>,  <38.689835, 39.519821, 43.872860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010136, 39.472160, 44.107670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598727, -0.188451, 0.778468,
		0.017873, -0.974828, -0.222239,
		0.800754, -0.119147, 0.587024,
		39.250362, 39.436417, 44.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580235, 38.920097, 44.195221>,  <38.689835, 39.519821, 43.872860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580235, 38.920097, 44.195221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849892, 39.095051, 44.433289>,  <39.011684, 39.200024, 44.576130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849892, 39.095051, 44.433289>,  <38.580235, 38.920097, 44.195221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849892, 39.095051, 44.433289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580426, -0.184614, 0.793110,
		0.456770, -0.880121, 0.129412,
		0.674142, 0.437383, 0.595171,
		39.052135, 39.226265, 44.611839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584850, 38.501034, 44.790619>,  <38.580235, 38.920097, 44.195221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584850, 38.501034, 44.790619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748619, 38.857105, 44.870579>,  <38.846882, 39.070747, 44.918552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.748619, 38.857105, 44.870579>,  <38.584850, 38.501034, 44.790619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748619, 38.857105, 44.870579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595479, 0.094737, 0.797765,
		0.691215, -0.445657, 0.568869,
		0.409422, 0.890177, 0.199896,
		38.871445, 39.124157, 44.930546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593716, 38.490337, 45.483677>,  <38.584850, 38.501034, 44.790619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593716, 38.490337, 45.483677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640610, 38.873753, 45.379787>,  <38.668747, 39.103802, 45.317451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.640610, 38.873753, 45.379787>,  <38.593716, 38.490337, 45.483677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640610, 38.873753, 45.379787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585363, 0.277964, 0.761634,
		0.802251, 0.062746, 0.593680,
		0.117232, 0.958540, -0.259726,
		38.675781, 39.161316, 45.301868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790459, 38.731792, 46.067142>,  <38.593716, 38.490337, 45.483677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790459, 38.731792, 46.067142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.662876, 39.053051, 45.865856>,  <38.586327, 39.245804, 45.745083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.662876, 39.053051, 45.865856>,  <38.790459, 38.731792, 46.067142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662876, 39.053051, 45.865856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505381, 0.305045, 0.807179,
		0.801786, 0.511768, 0.308599,
		-0.318952, 0.803145, -0.503218,
		38.567192, 39.293995, 45.714890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136566, 39.325745, 46.359833>,  <38.790459, 38.731792, 46.067142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136566, 39.325745, 46.359833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808846, 39.460567, 46.174301>,  <38.612213, 39.541462, 46.062981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808846, 39.460567, 46.174301>,  <39.136566, 39.325745, 46.359833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808846, 39.460567, 46.174301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362039, 0.323175, 0.874349,
		0.444600, 0.884281, -0.142751,
		-0.819304, 0.337054, -0.463828,
		38.563053, 39.561684, 46.035152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073082, 39.951786, 46.582733>,  <39.136566, 39.325745, 46.359833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073082, 39.951786, 46.582733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700062, 39.857845, 46.473045>,  <38.476250, 39.801479, 46.407234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700062, 39.857845, 46.473045>,  <39.073082, 39.951786, 46.582733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700062, 39.857845, 46.473045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359707, 0.539084, 0.761577,
		-0.031033, 0.808846, -0.587202,
		-0.932549, -0.234854, -0.274218,
		38.420296, 39.787388, 46.390781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739033, 40.654739, 46.684368>,  <39.073082, 39.951786, 46.582733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739033, 40.654739, 46.684368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464027, 40.366783, 46.646229>,  <38.299026, 40.194012, 46.623344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464027, 40.366783, 46.646229>,  <38.739033, 40.654739, 46.684368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464027, 40.366783, 46.646229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511212, 0.386554, 0.767619,
		-0.515743, 0.576488, -0.633775,
		-0.687511, -0.719887, -0.095346,
		38.257774, 40.150818, 46.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119625, 40.933640, 46.866905>,  <38.739033, 40.654739, 46.684368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119625, 40.933640, 46.866905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027874, 40.546188, 46.905144>,  <37.972824, 40.313717, 46.928089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027874, 40.546188, 46.905144>,  <38.119625, 40.933640, 46.866905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027874, 40.546188, 46.905144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434121, 0.189718, 0.880651,
		-0.871163, 0.160499, -0.464020,
		-0.229376, -0.968632, 0.095599,
		37.959061, 40.255600, 46.933823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435368, 40.812141, 47.204174>,  <38.119625, 40.933640, 46.866905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435368, 40.812141, 47.204174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639801, 40.478508, 47.287212>,  <37.762463, 40.278328, 47.337036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639801, 40.478508, 47.287212>,  <37.435368, 40.812141, 47.204174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639801, 40.478508, 47.287212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231823, 0.098804, 0.967727,
		-0.827678, -0.542715, -0.142863,
		0.511084, -0.834086, 0.207591,
		37.793125, 40.228283, 47.349491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212345, 40.698383, 47.812477>,  <37.435368, 40.812141, 47.204174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212345, 40.698383, 47.812477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463619, 40.387180, 47.808754>,  <37.614384, 40.200459, 47.806519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463619, 40.387180, 47.808754>,  <37.212345, 40.698383, 47.812477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463619, 40.387180, 47.808754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227891, -0.195416, 0.953875,
		-0.743945, -0.597085, -0.300058,
		0.628181, -0.778012, -0.009308,
		37.652073, 40.153778, 47.805962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837074, 40.059029, 48.026348>,  <37.212345, 40.698383, 47.812477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837074, 40.059029, 48.026348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229450, 40.026340, 48.096870>,  <37.464874, 40.006725, 48.139183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229450, 40.026340, 48.096870>,  <36.837074, 40.059029, 48.026348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229450, 40.026340, 48.096870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190300, -0.220186, 0.956715,
		-0.039364, -0.972029, -0.231540,
		0.980936, -0.081722, 0.176310,
		37.523731, 40.001823, 48.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855892, 39.469368, 48.450542>,  <36.837074, 40.059029, 48.026348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855892, 39.469368, 48.450542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192978, 39.675503, 48.512856>,  <37.395229, 39.799183, 48.550243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192978, 39.675503, 48.512856>,  <36.855892, 39.469368, 48.450542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192978, 39.675503, 48.512856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041021, -0.227051, 0.973019,
		0.536801, -0.826364, -0.170199,
		0.842712, 0.515335, 0.155779,
		37.445793, 39.830105, 48.559589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273243, 39.083668, 48.781956>,  <36.855892, 39.469368, 48.450542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273243, 39.083668, 48.781956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419884, 39.447971, 48.857986>,  <37.507866, 39.666553, 48.903606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419884, 39.447971, 48.857986>,  <37.273243, 39.083668, 48.781956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419884, 39.447971, 48.857986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028304, -0.193289, 0.980734,
		0.929949, -0.364916, -0.045081,
		0.366599, 0.910756, 0.190077,
		37.529865, 39.721199, 48.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698845, 39.011578, 49.369358>,  <37.273243, 39.083668, 48.781956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698845, 39.011578, 49.369358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618839, 39.403149, 49.352852>,  <37.570835, 39.638092, 49.342949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618839, 39.403149, 49.352852>,  <37.698845, 39.011578, 49.369358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618839, 39.403149, 49.352852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100964, 0.062486, 0.992926,
		0.974577, 0.194435, -0.111335,
		-0.200016, 0.978923, -0.041267,
		37.558834, 39.696827, 49.340473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059818, 39.329720, 50.027870>,  <37.698845, 39.011578, 49.369358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059818, 39.329720, 50.027870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801914, 39.606037, 49.896969>,  <37.647171, 39.771828, 49.818428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801914, 39.606037, 49.896969>,  <38.059818, 39.329720, 50.027870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801914, 39.606037, 49.896969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308944, 0.156094, 0.938184,
		0.699172, 0.706004, 0.112773,
		-0.644758, 0.690792, -0.327252,
		37.608486, 39.813274, 49.798794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101448, 39.918571, 50.537498>,  <38.059818, 39.329720, 50.027870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101448, 39.918571, 50.537498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762257, 39.952461, 50.328213>,  <37.558743, 39.972794, 50.202641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762257, 39.952461, 50.328213>,  <38.101448, 39.918571, 50.537498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762257, 39.952461, 50.328213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518291, 0.074069, 0.851991,
		0.110936, 0.993648, -0.018899,
		-0.847979, 0.084722, -0.523215,
		37.507862, 39.977879, 50.171249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762386, 40.509537, 50.787941>,  <38.101448, 39.918571, 50.537498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762386, 40.509537, 50.787941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459862, 40.308582, 50.620323>,  <37.278347, 40.188011, 50.519753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459862, 40.308582, 50.620323>,  <37.762386, 40.509537, 50.787941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459862, 40.308582, 50.620323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452472, -0.060928, 0.889695,
		-0.472501, 0.862494, -0.181235,
		-0.756315, -0.502386, -0.419043,
		37.232967, 40.157867, 50.494610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126286, 40.811878, 51.097008>,  <37.762386, 40.509537, 50.787941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126286, 40.811878, 51.097008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038746, 40.444725, 50.964592>,  <36.986221, 40.224434, 50.885143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038746, 40.444725, 50.964592>,  <37.126286, 40.811878, 51.097008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038746, 40.444725, 50.964592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623384, -0.129475, 0.771121,
		-0.750663, 0.375127, -0.543860,
		-0.218852, -0.917886, -0.331041,
		36.973091, 40.169357, 50.865280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412273, 40.749687, 51.094257>,  <37.126286, 40.811878, 51.097008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412273, 40.749687, 51.094257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554501, 40.375877, 51.087997>,  <36.639835, 40.151592, 51.084240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554501, 40.375877, 51.087997>,  <36.412273, 40.749687, 51.094257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554501, 40.375877, 51.087997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679785, -0.270061, 0.681880,
		-0.641457, -0.231813, -0.731297,
		0.355564, -0.934521, -0.015649,
		36.661171, 40.095520, 51.083302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875122, 40.235416, 50.893364>,  <36.412273, 40.749687, 51.094257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875122, 40.235416, 50.893364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132530, 40.021919, 51.112816>,  <36.286976, 39.893822, 51.244488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132530, 40.021919, 51.112816>,  <35.875122, 40.235416, 50.893364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132530, 40.021919, 51.112816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756249, -0.332699, 0.563381,
		-0.118170, -0.777452, -0.617741,
		0.643524, -0.533741, 0.548632,
		36.325588, 39.861797, 51.277405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754692, 39.450062, 50.931648>,  <35.875122, 40.235416, 50.893364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754692, 39.450062, 50.931648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942364, 39.588139, 51.256786>,  <36.054966, 39.670982, 51.451870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942364, 39.588139, 51.256786>,  <35.754692, 39.450062, 50.931648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942364, 39.588139, 51.256786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714108, -0.393206, 0.579171,
		0.519538, -0.852193, 0.062017,
		0.469180, 0.345189, 0.812844,
		36.083118, 39.691696, 51.500641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798916, 38.899788, 51.441925>,  <35.754692, 39.450062, 50.931648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798916, 38.899788, 51.441925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823589, 39.242809, 51.646198>,  <35.838394, 39.448624, 51.768761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823589, 39.242809, 51.646198>,  <35.798916, 38.899788, 51.441925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823589, 39.242809, 51.646198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555241, -0.395693, 0.731529,
		0.829399, -0.328675, 0.451741,
		0.061684, 0.857555, 0.510681,
		35.842094, 39.500076, 51.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109394, 38.907860, 51.671059>,  <35.798916, 38.899788, 51.441925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109394, 38.907860, 51.671059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713287, 38.960934, 51.654236>,  <34.475624, 38.992779, 51.644142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713287, 38.960934, 51.654236>,  <35.109394, 38.907860, 51.671059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713287, 38.960934, 51.654236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054548, 0.091977, -0.994266,
		-0.128057, -0.986881, -0.098319,
		-0.990266, 0.132686, -0.042054,
		34.416206, 39.000740, 51.641621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862064, 38.506485, 51.051010>,  <35.109394, 38.907860, 51.671059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862064, 38.506485, 51.051010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572762, 38.773964, 51.119995>,  <34.399181, 38.934452, 51.161388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572762, 38.773964, 51.119995>,  <34.862064, 38.506485, 51.051010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572762, 38.773964, 51.119995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135645, 0.107313, -0.984929,
		-0.677125, -0.735752, 0.013090,
		-0.723258, 0.668695, 0.172465,
		34.355785, 38.974571, 51.171734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667244, 38.560669, 50.406155>,  <34.862064, 38.506485, 51.051010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667244, 38.560669, 50.406155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489063, 38.866634, 50.592262>,  <34.382156, 39.050213, 50.703926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489063, 38.866634, 50.592262>,  <34.667244, 38.560669, 50.406155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489063, 38.866634, 50.592262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204260, 0.419148, -0.884643,
		-0.871694, -0.489102, -0.030469,
		-0.445452, 0.764915, 0.465273,
		34.355427, 39.096107, 50.731846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999481, 38.617458, 50.125103>,  <34.667244, 38.560669, 50.406155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999481, 38.617458, 50.125103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130955, 38.970387, 50.259846>,  <34.209839, 39.182144, 50.340691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130955, 38.970387, 50.259846>,  <33.999481, 38.617458, 50.125103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130955, 38.970387, 50.259846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121323, 0.393165, -0.911428,
		-0.936614, 0.258705, 0.236274,
		0.328686, 0.882322, 0.336857,
		34.229561, 39.235085, 50.360905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543175, 39.169621, 49.899662>,  <33.999481, 38.617458, 50.125103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543175, 39.169621, 49.899662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871864, 39.384769, 49.974995>,  <34.069077, 39.513859, 50.020195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871864, 39.384769, 49.974995>,  <33.543175, 39.169621, 49.899662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871864, 39.384769, 49.974995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205622, 0.588035, -0.782262,
		-0.531504, 0.604075, 0.593799,
		0.821720, 0.537874, 0.188332,
		34.118382, 39.546131, 50.031494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369125, 39.825134, 49.527683>,  <33.543175, 39.169621, 49.899662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369125, 39.825134, 49.527683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758659, 39.854034, 49.613869>,  <33.992378, 39.871376, 49.665581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758659, 39.854034, 49.613869>,  <33.369125, 39.825134, 49.527683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758659, 39.854034, 49.613869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176811, 0.354726, -0.918100,
		-0.142764, 0.932174, 0.332670,
		0.973836, 0.072252, 0.215460,
		34.050812, 39.875710, 49.678505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621658, 40.428883, 49.180210>,  <33.369125, 39.825134, 49.527683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621658, 40.428883, 49.180210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966919, 40.234432, 49.234833>,  <34.174076, 40.117764, 49.267605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966919, 40.234432, 49.234833>,  <33.621658, 40.428883, 49.180210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966919, 40.234432, 49.234833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176858, 0.037757, -0.983512,
		0.472954, 0.873073, 0.118565,
		0.863154, -0.486126, 0.136553,
		34.225864, 40.088596, 49.275799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097351, 40.795189, 48.752003>,  <33.621658, 40.428883, 49.180210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097351, 40.795189, 48.752003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250416, 40.434895, 48.834221>,  <34.342255, 40.218719, 48.883553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250416, 40.434895, 48.834221>,  <34.097351, 40.795189, 48.752003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250416, 40.434895, 48.834221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242698, -0.116662, -0.963062,
		0.891440, 0.418415, 0.173963,
		0.382665, -0.900732, 0.205545,
		34.365215, 40.164677, 48.895885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809441, 40.791500, 48.381634>,  <34.097351, 40.795189, 48.752003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809441, 40.791500, 48.381634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721149, 40.407143, 48.448524>,  <34.668175, 40.176529, 48.488659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721149, 40.407143, 48.448524>,  <34.809441, 40.791500, 48.381634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721149, 40.407143, 48.448524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382427, -0.242988, -0.891463,
		0.897234, -0.132820, 0.421106,
		-0.220728, -0.960893, 0.167223,
		34.654930, 40.118874, 48.498692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395603, 40.424610, 48.288754>,  <34.809441, 40.791500, 48.381634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395603, 40.424610, 48.288754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125370, 40.135883, 48.228661>,  <34.963230, 39.962646, 48.192604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.125370, 40.135883, 48.228661>,  <35.395603, 40.424610, 48.288754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125370, 40.135883, 48.228661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461047, -0.254595, -0.850069,
		0.575347, -0.643554, 0.504791,
		-0.675582, -0.721817, -0.150228,
		34.922695, 39.919338, 48.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829895, 39.880222, 48.062584>,  <35.395603, 40.424610, 48.288754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829895, 39.880222, 48.062584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455349, 39.802830, 47.945423>,  <35.230621, 39.756393, 47.875126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455349, 39.802830, 47.945423>,  <35.829895, 39.880222, 48.062584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455349, 39.802830, 47.945423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344347, -0.344201, -0.873471,
		0.068181, -0.918745, 0.388921,
		-0.936364, -0.193478, -0.292899,
		35.174438, 39.744785, 47.857552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909901, 39.223522, 47.864647>,  <35.829895, 39.880222, 48.062584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909901, 39.223522, 47.864647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581703, 39.395378, 47.713806>,  <35.384785, 39.498493, 47.623302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.581703, 39.395378, 47.713806>,  <35.909901, 39.223522, 47.864647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581703, 39.395378, 47.713806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288132, -0.258937, -0.921917,
		-0.493739, -0.865078, 0.088662,
		-0.820489, 0.429641, -0.377104,
		35.335556, 39.524269, 47.600674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843433, 38.815792, 47.237888>,  <35.909901, 39.223522, 47.864647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843433, 38.815792, 47.237888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604992, 39.131401, 47.178417>,  <35.461926, 39.320766, 47.142735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604992, 39.131401, 47.178417>,  <35.843433, 38.815792, 47.237888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604992, 39.131401, 47.178417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196530, -0.036154, -0.979831,
		-0.778481, -0.613303, -0.133514,
		-0.596107, 0.789019, -0.148678,
		35.426159, 39.368107, 47.133812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363018, 38.619061, 46.684467>,  <35.843433, 38.815792, 47.237888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363018, 38.619061, 46.684467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394165, 39.017494, 46.701241>,  <35.412853, 39.256554, 46.711304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394165, 39.017494, 46.701241>,  <35.363018, 38.619061, 46.684467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394165, 39.017494, 46.701241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235227, 0.022512, -0.971680,
		-0.968816, 0.085529, -0.232552,
		0.077871, 0.996081, 0.041929,
		35.417526, 39.316319, 46.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168392, 38.775410, 46.090488>,  <35.363018, 38.619061, 46.684467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168392, 38.775410, 46.090488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363861, 39.110348, 46.188503>,  <35.481144, 39.311310, 46.247311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363861, 39.110348, 46.188503>,  <35.168392, 38.775410, 46.090488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363861, 39.110348, 46.188503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386737, 0.043856, -0.921147,
		-0.782067, 0.544907, -0.302403,
		0.488677, 0.837349, 0.245034,
		35.510464, 39.361553, 46.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035038, 39.298176, 45.520500>,  <35.168392, 38.775410, 46.090488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035038, 39.298176, 45.520500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373104, 39.402321, 45.707222>,  <35.575943, 39.464809, 45.819256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373104, 39.402321, 45.707222>,  <35.035038, 39.298176, 45.520500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373104, 39.402321, 45.707222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450681, 0.122403, -0.884254,
		-0.287368, 0.957719, -0.013891,
		0.845166, 0.260367, 0.466800,
		35.626656, 39.480431, 45.847263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310642, 39.928715, 45.237770>,  <35.035038, 39.298176, 45.520500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310642, 39.928715, 45.237770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612625, 39.710606, 45.383492>,  <35.793816, 39.579742, 45.470924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612625, 39.710606, 45.383492>,  <35.310642, 39.928715, 45.237770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612625, 39.710606, 45.383492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470318, 0.063086, -0.880239,
		0.456986, 0.835883, 0.304078,
		0.754960, -0.545271, 0.364302,
		35.839111, 39.547024, 45.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797520, 40.220848, 44.933327>,  <35.310642, 39.928715, 45.237770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797520, 40.220848, 44.933327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938908, 39.867085, 45.055233>,  <36.023739, 39.654827, 45.128376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938908, 39.867085, 45.055233>,  <35.797520, 40.220848, 44.933327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938908, 39.867085, 45.055233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633876, -0.013144, -0.773323,
		0.687939, 0.466529, 0.555960,
		0.353470, -0.884408, 0.304764,
		36.044949, 39.601761, 45.146664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500980, 40.354660, 44.916687>,  <35.797520, 40.220848, 44.933327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500980, 40.354660, 44.916687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424126, 39.962498, 44.899307>,  <36.378014, 39.727200, 44.888878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424126, 39.962498, 44.899307>,  <36.500980, 40.354660, 44.916687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424126, 39.962498, 44.899307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666199, -0.097793, -0.739334,
		0.720599, -0.170997, 0.671936,
		-0.192135, -0.980406, -0.043448,
		36.366486, 39.668377, 44.886272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162128, 40.145912, 44.654640>,  <36.500980, 40.354660, 44.916687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162128, 40.145912, 44.654640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941483, 39.815868, 44.605778>,  <36.809093, 39.617844, 44.576462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941483, 39.815868, 44.605778>,  <37.162128, 40.145912, 44.654640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941483, 39.815868, 44.605778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625941, -0.312698, -0.714436,
		0.551288, -0.470554, 0.688956,
		-0.551616, -0.825105, -0.122152,
		36.775997, 39.568336, 44.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.205025, 36.882790, 28.166161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879238, 36.651546, 28.146452>,  <40.683765, 36.512798, 28.134626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879238, 36.651546, 28.146452>,  <41.205025, 36.882790, 28.166161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879238, 36.651546, 28.146452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227439, -0.396238, 0.889532,
		-0.533770, 0.713291, 0.454208,
		-0.814470, -0.578110, -0.049270,
		40.634895, 36.478115, 28.131672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894066, 36.982666, 28.812313>,  <41.205025, 36.882790, 28.166161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894066, 36.982666, 28.812313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759098, 36.628986, 28.683105>,  <40.678116, 36.416779, 28.605581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759098, 36.628986, 28.683105>,  <40.894066, 36.982666, 28.812313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759098, 36.628986, 28.683105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042465, -0.357093, 0.933103,
		-0.940396, 0.301129, 0.158037,
		-0.337418, -0.884198, -0.323021,
		40.657871, 36.363728, 28.586199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369038, 36.726318, 29.333218>,  <40.894066, 36.982666, 28.812313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369038, 36.726318, 29.333218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491432, 36.399643, 29.137503>,  <40.564869, 36.203640, 29.020073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491432, 36.399643, 29.137503>,  <40.369038, 36.726318, 29.333218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491432, 36.399643, 29.137503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128400, -0.473841, 0.871199,
		-0.943339, -0.329395, -0.040125,
		0.305982, -0.816684, -0.489287,
		40.583225, 36.154636, 28.990717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034409, 36.183952, 29.690460>,  <40.369038, 36.726318, 29.333218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034409, 36.183952, 29.690460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341068, 36.015648, 29.496466>,  <40.525063, 35.914665, 29.380070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341068, 36.015648, 29.496466>,  <40.034409, 36.183952, 29.690460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341068, 36.015648, 29.496466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293307, -0.442424, 0.847486,
		-0.571161, -0.791971, -0.215769,
		0.766646, -0.420764, -0.484986,
		40.571064, 35.889420, 29.350969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984425, 35.458958, 29.852118>,  <40.034409, 36.183952, 29.690460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984425, 35.458958, 29.852118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362148, 35.515942, 29.733471>,  <40.588783, 35.550133, 29.662283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.362148, 35.515942, 29.733471>,  <39.984425, 35.458958, 29.852118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362148, 35.515942, 29.733471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328780, -0.445220, 0.832876,
		-0.013411, -0.884016, -0.467264,
		0.944311, 0.142457, -0.296618,
		40.645443, 35.558678, 29.644485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372608, 34.812450, 29.931890>,  <39.984425, 35.458958, 29.852118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372608, 34.812450, 29.931890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665730, 35.084385, 29.920429>,  <40.841602, 35.247547, 29.913551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.665730, 35.084385, 29.920429>,  <40.372608, 34.812450, 29.931890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665730, 35.084385, 29.920429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464371, -0.468876, 0.751342,
		0.497358, -0.563890, -0.659291,
		0.732800, 0.679841, -0.028654,
		40.885571, 35.288338, 29.911833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039047, 34.394413, 29.955711>,  <40.372608, 34.812450, 29.931890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039047, 34.394413, 29.955711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.163319, 34.761650, 30.054163>,  <41.237881, 34.981995, 30.113234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.163319, 34.761650, 30.054163>,  <41.039047, 34.394413, 29.955711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163319, 34.761650, 30.054163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668707, -0.395138, 0.629840,
		0.675508, -0.031090, -0.736697,
		0.310678, 0.918096, 0.246129,
		41.256523, 35.037079, 30.128002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674725, 34.365776, 30.031700>,  <41.039047, 34.394413, 29.955711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674725, 34.365776, 30.031700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601521, 34.696781, 30.244015>,  <41.557598, 34.895382, 30.371403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601521, 34.696781, 30.244015>,  <41.674725, 34.365776, 30.031700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601521, 34.696781, 30.244015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722242, -0.253126, 0.643657,
		0.666987, 0.501155, -0.551336,
		-0.183015, 0.827509, 0.530787,
		41.546616, 34.945034, 30.403252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337727, 34.773247, 30.101192>,  <41.674725, 34.365776, 30.031700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337727, 34.773247, 30.101192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099281, 34.863091, 30.409529>,  <41.956215, 34.916996, 30.594530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099281, 34.863091, 30.409529>,  <42.337727, 34.773247, 30.101192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099281, 34.863091, 30.409529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771599, -0.105194, 0.627350,
		0.221998, 0.968754, -0.110603,
		-0.596113, 0.224612, 0.770843,
		41.920448, 34.930473, 30.640781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667465, 35.205078, 30.493254>,  <42.337727, 34.773247, 30.101192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667465, 35.205078, 30.493254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386738, 35.056450, 30.736362>,  <42.218300, 34.967274, 30.882227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.386738, 35.056450, 30.736362>,  <42.667465, 35.205078, 30.493254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386738, 35.056450, 30.736362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707459, -0.263699, 0.655717,
		-0.083375, 0.890168, 0.447939,
		-0.701820, -0.371568, 0.607771,
		42.176193, 34.944981, 30.918694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706242, 35.521618, 31.217457>,  <42.667465, 35.205078, 30.493254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706242, 35.521618, 31.217457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518044, 35.175552, 31.286892>,  <42.405125, 34.967915, 31.328554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518044, 35.175552, 31.286892>,  <42.706242, 35.521618, 31.217457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518044, 35.175552, 31.286892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535411, -0.123528, 0.835510,
		-0.701407, 0.486043, 0.521336,
		-0.470494, -0.865161, 0.173589,
		42.376896, 34.916004, 31.338968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816425, 35.503006, 31.888592>,  <42.706242, 35.521618, 31.217457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816425, 35.503006, 31.888592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632267, 35.153797, 31.824251>,  <42.521770, 34.944271, 31.785646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632267, 35.153797, 31.824251>,  <42.816425, 35.503006, 31.888592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632267, 35.153797, 31.824251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258638, -0.305255, 0.916475,
		-0.849200, 0.380340, 0.366334,
		-0.460398, -0.873018, -0.160852,
		42.494148, 34.891891, 31.775995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384857, 35.430920, 32.425861>,  <42.816425, 35.503006, 31.888592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384857, 35.430920, 32.425861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497498, 35.077587, 32.275967>,  <42.565083, 34.865589, 32.186031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497498, 35.077587, 32.275967>,  <42.384857, 35.430920, 32.425861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497498, 35.077587, 32.275967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341571, -0.272673, 0.899432,
		-0.896676, -0.381283, 0.224934,
		0.281605, -0.883330, -0.374735,
		42.581978, 34.812588, 32.163548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158665, 34.825027, 32.866859>,  <42.384857, 35.430920, 32.425861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158665, 34.825027, 32.866859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471455, 34.676758, 32.666412>,  <42.659126, 34.587795, 32.546146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471455, 34.676758, 32.666412>,  <42.158665, 34.825027, 32.866859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471455, 34.676758, 32.666412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346008, -0.410568, 0.843631,
		-0.518458, -0.833086, -0.192795,
		0.781972, -0.370678, -0.501116,
		42.706047, 34.565556, 32.516079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264885, 34.151161, 33.122143>,  <42.158665, 34.825027, 32.866859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264885, 34.151161, 33.122143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613716, 34.181973, 32.928833>,  <42.823013, 34.200459, 32.812847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613716, 34.181973, 32.928833>,  <42.264885, 34.151161, 33.122143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613716, 34.181973, 32.928833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484581, -0.273804, 0.830790,
		-0.068324, -0.958695, -0.276106,
		0.872074, 0.077032, -0.483273,
		42.875340, 34.205082, 32.783852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663055, 33.588844, 33.334450>,  <42.264885, 34.151161, 33.122143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663055, 33.588844, 33.334450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950714, 33.836639, 33.208549>,  <43.123310, 33.985317, 33.133011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950714, 33.836639, 33.208549>,  <42.663055, 33.588844, 33.334450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950714, 33.836639, 33.208549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525165, -0.187951, 0.829986,
		0.455009, -0.762174, -0.460497,
		0.719144, 0.619488, -0.314748,
		43.166458, 34.022484, 33.114124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371689, 33.364285, 33.559525>,  <42.663055, 33.588844, 33.334450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371689, 33.364285, 33.559525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456482, 33.745247, 33.471905>,  <43.507359, 33.973824, 33.419334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.456482, 33.745247, 33.471905>,  <43.371689, 33.364285, 33.559525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456482, 33.745247, 33.471905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662078, 0.024904, 0.749021,
		0.718829, -0.303809, -0.625289,
		0.211987, 0.952408, -0.219047,
		43.520077, 34.030968, 33.406189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109150, 33.462452, 33.754299>,  <43.371689, 33.364285, 33.559525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109150, 33.462452, 33.754299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949535, 33.828972, 33.740673>,  <43.853767, 34.048885, 33.732498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949535, 33.828972, 33.740673>,  <44.109150, 33.462452, 33.754299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949535, 33.828972, 33.740673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555198, 0.271015, 0.786324,
		0.729744, 0.294856, -0.616874,
		-0.399034, 0.916303, -0.034068,
		43.829826, 34.103863, 33.730453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648510, 33.941963, 33.932819>,  <44.109150, 33.462452, 33.754299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648510, 33.941963, 33.932819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335621, 34.187962, 33.972645>,  <44.147888, 34.335560, 33.996540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335621, 34.187962, 33.972645>,  <44.648510, 33.941963, 33.932819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335621, 34.187962, 33.972645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421892, 0.405310, 0.811006,
		0.458412, 0.676389, -0.576503,
		-0.782219, 0.614997, 0.099564,
		44.100956, 34.372459, 34.002514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976433, 34.546955, 34.214676>,  <44.648510, 33.941963, 33.932819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976433, 34.546955, 34.214676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588478, 34.561993, 34.310925>,  <44.355705, 34.571014, 34.368675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588478, 34.561993, 34.310925>,  <44.976433, 34.546955, 34.214676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588478, 34.561993, 34.310925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242830, 0.224629, 0.943703,
		-0.018574, 0.973719, -0.226995,
		-0.969891, 0.037593, 0.240620,
		44.297512, 34.573269, 34.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852795, 35.105465, 34.685802>,  <44.976433, 34.546955, 34.214676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852795, 35.105465, 34.685802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524521, 34.889824, 34.761524>,  <44.327557, 34.760437, 34.806957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524521, 34.889824, 34.761524>,  <44.852795, 35.105465, 34.685802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524521, 34.889824, 34.761524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102450, 0.187100, 0.976984,
		-0.562116, 0.821194, -0.098319,
		-0.820689, -0.539105, 0.189303,
		44.278313, 34.728092, 34.818314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646255, 35.113743, 34.693371>,  <44.852795, 35.105465, 34.685802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646255, 35.113743, 34.693371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.898918, 35.418415, 34.751137>,  <46.050514, 35.601219, 34.785797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.898918, 35.418415, 34.751137>,  <45.646255, 35.113743, 34.693371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898918, 35.418415, 34.751137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631790, 0.613714, -0.473495,
		-0.449280, 0.207846, 0.868877,
		0.631656, 0.761679, 0.144414,
		46.088413, 35.646919, 34.794460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321888, 35.689224, 35.017765>,  <45.646255, 35.113743, 34.693371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321888, 35.689224, 35.017765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599312, 35.804173, 34.753525>,  <45.765766, 35.873142, 34.594982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599312, 35.804173, 34.753525>,  <45.321888, 35.689224, 35.017765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599312, 35.804173, 34.753525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700791, 0.481617, -0.526248,
		0.166929, 0.827928, 0.535416,
		0.693561, 0.287369, -0.660600,
		45.807381, 35.890385, 34.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413692, 36.446770, 35.066231>,  <45.321888, 35.689224, 35.017765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413692, 36.446770, 35.066231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531696, 36.335365, 34.700630>,  <45.602497, 36.268524, 34.481270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.531696, 36.335365, 34.700630>,  <45.413692, 36.446770, 35.066231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531696, 36.335365, 34.700630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787587, 0.470728, -0.397645,
		0.540994, 0.837167, -0.080480,
		0.295011, -0.278509, -0.914003,
		45.620201, 36.251812, 34.426430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333492, 37.087944, 34.636578>,  <45.413692, 36.446770, 35.066231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333492, 37.087944, 34.636578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378300, 36.800411, 34.362137>,  <45.405186, 36.627892, 34.197472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378300, 36.800411, 34.362137>,  <45.333492, 37.087944, 34.636578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378300, 36.800411, 34.362137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566213, 0.521224, -0.638537,
		0.816612, 0.460008, -0.348623,
		0.112022, -0.718831, -0.686100,
		45.411907, 36.584763, 34.156307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416172, 37.419098, 34.020210>,  <45.333492, 37.087944, 34.636578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416172, 37.419098, 34.020210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308853, 37.053310, 33.899040>,  <45.244461, 36.833839, 33.826340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308853, 37.053310, 33.899040>,  <45.416172, 37.419098, 34.020210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308853, 37.053310, 33.899040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582069, 0.404449, -0.705419,
		0.767602, -0.012939, -0.640796,
		-0.268297, -0.914469, -0.302925,
		45.228363, 36.778969, 33.808163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564911, 37.432999, 33.282486>,  <45.416172, 37.419098, 34.020210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564911, 37.432999, 33.282486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.299343, 37.144909, 33.362968>,  <45.140003, 36.972054, 33.411259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.299343, 37.144909, 33.362968>,  <45.564911, 37.432999, 33.282486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299343, 37.144909, 33.362968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543802, 0.280313, -0.791014,
		0.513308, -0.634587, -0.577766,
		-0.663923, -0.720225, 0.201202,
		45.100166, 36.928841, 33.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380085, 36.942764, 32.621525>,  <45.564911, 37.432999, 33.282486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380085, 36.942764, 32.621525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058620, 36.871220, 32.848553>,  <44.865742, 36.828293, 32.984772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058620, 36.871220, 32.848553>,  <45.380085, 36.942764, 32.621525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058620, 36.871220, 32.848553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564671, 0.530220, -0.632466,
		-0.187816, -0.828780, -0.527114,
		-0.803661, -0.178859, 0.567572,
		44.817520, 36.817562, 33.018826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758606, 36.767612, 32.111454>,  <45.380085, 36.942764, 32.621525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758606, 36.767612, 32.111454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584026, 36.851959, 32.461319>,  <44.479279, 36.902569, 32.671238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.584026, 36.851959, 32.461319>,  <44.758606, 36.767612, 32.111454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584026, 36.851959, 32.461319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678586, 0.561190, -0.473906,
		-0.590787, -0.800375, -0.101838,
		-0.436453, 0.210871, 0.874667,
		44.453091, 36.915222, 32.723721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051575, 36.793926, 31.865004>,  <44.758606, 36.767612, 32.111454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051575, 36.793926, 31.865004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078251, 37.020168, 32.193794>,  <44.094257, 37.155914, 32.391068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078251, 37.020168, 32.193794>,  <44.051575, 36.793926, 31.865004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078251, 37.020168, 32.193794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720598, 0.597115, -0.352409,
		-0.690138, -0.568812, 0.447396,
		0.066692, 0.565604, 0.821976,
		44.098259, 37.189850, 32.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402771, 36.833778, 32.075764>,  <44.051575, 36.793926, 31.865004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402771, 36.833778, 32.075764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576008, 37.117054, 32.298798>,  <43.679951, 37.287018, 32.432617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576008, 37.117054, 32.298798>,  <43.402771, 36.833778, 32.075764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576008, 37.117054, 32.298798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748230, 0.627398, -0.215694,
		-0.502581, -0.323788, 0.801607,
		0.433088, 0.708190, 0.557586,
		43.705933, 37.329510, 32.466072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889423, 37.091682, 32.501404>,  <43.402771, 36.833778, 32.075764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889423, 37.091682, 32.501404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175953, 37.364952, 32.444622>,  <43.347870, 37.528915, 32.410553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175953, 37.364952, 32.444622>,  <42.889423, 37.091682, 32.501404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175953, 37.364952, 32.444622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697421, 0.694591, -0.176484,
		-0.021969, 0.225422, 0.974013,
		0.716325, 0.683175, -0.141955,
		43.390850, 37.569904, 32.402035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495499, 37.680550, 32.740189>,  <42.889423, 37.091682, 32.501404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495499, 37.680550, 32.740189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807484, 37.818062, 32.531013>,  <42.994675, 37.900570, 32.405506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807484, 37.818062, 32.531013>,  <42.495499, 37.680550, 32.740189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807484, 37.818062, 32.531013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549923, 0.775359, -0.310489,
		0.298725, 0.529748, 0.793807,
		0.779966, 0.343782, -0.522940,
		43.041473, 37.921196, 32.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436848, 38.354347, 32.923553>,  <42.495499, 37.680550, 32.740189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436848, 38.354347, 32.923553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671383, 38.315311, 32.601887>,  <42.812103, 38.291889, 32.408886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671383, 38.315311, 32.601887>,  <42.436848, 38.354347, 32.923553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671383, 38.315311, 32.601887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496214, 0.741396, -0.451778,
		0.640296, 0.663934, 0.386281,
		0.586338, -0.097594, -0.804166,
		42.847282, 38.286034, 32.360638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601940, 39.010906, 32.685757>,  <42.436848, 38.354347, 32.923553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601940, 39.010906, 32.685757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647820, 38.780704, 32.361870>,  <42.675346, 38.642582, 32.167538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647820, 38.780704, 32.361870>,  <42.601940, 39.010906, 32.685757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647820, 38.780704, 32.361870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657142, 0.567315, -0.496304,
		0.744989, 0.589024, -0.313116,
		0.114700, -0.575503, -0.809716,
		42.682228, 38.608055, 32.118954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750664, 39.449589, 32.171837>,  <42.601940, 39.010906, 32.685757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750664, 39.449589, 32.171837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637791, 39.107254, 31.998442>,  <42.570065, 38.901852, 31.894403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637791, 39.107254, 31.998442>,  <42.750664, 39.449589, 32.171837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637791, 39.107254, 31.998442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593268, 0.510770, -0.622212,
		0.753926, 0.081595, -0.651873,
		-0.282187, -0.855837, -0.433490,
		42.553135, 38.850502, 31.868395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565742, 39.728935, 31.547722>,  <42.750664, 39.449589, 32.171837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565742, 39.728935, 31.547722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.406990, 39.361794, 31.545803>,  <42.311737, 39.141506, 31.544651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.406990, 39.361794, 31.545803>,  <42.565742, 39.728935, 31.547722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406990, 39.361794, 31.545803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570588, 0.250809, -0.782000,
		0.718968, -0.307623, -0.623260,
		-0.396881, -0.917858, -0.004798,
		42.287926, 39.086437, 31.544363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499729, 39.459599, 30.721893>,  <42.565742, 39.728935, 31.547722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499729, 39.459599, 30.721893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230080, 39.248066, 30.928150>,  <42.068291, 39.121147, 31.051905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.230080, 39.248066, 30.928150>,  <42.499729, 39.459599, 30.721893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230080, 39.248066, 30.928150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665431, 0.131859, -0.734721,
		0.320557, -0.838417, -0.440795,
		-0.674125, -0.528838, 0.515641,
		42.027843, 39.089417, 31.082842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146698, 39.009949, 30.212917>,  <42.499729, 39.459599, 30.721893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146698, 39.009949, 30.212917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913330, 39.040951, 30.536304>,  <41.773312, 39.059551, 30.730337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913330, 39.040951, 30.536304>,  <42.146698, 39.009949, 30.212917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913330, 39.040951, 30.536304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792832, 0.161597, -0.587626,
		-0.176188, -0.983809, -0.032832,
		-0.583417, 0.077503, 0.808466,
		41.738304, 39.064201, 30.778845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619343, 38.570797, 29.974159>,  <42.146698, 39.009949, 30.212917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619343, 38.570797, 29.974159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504803, 38.808121, 30.275087>,  <41.436077, 38.950516, 30.455645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504803, 38.808121, 30.275087>,  <41.619343, 38.570797, 29.974159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504803, 38.808121, 30.275087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742086, 0.359341, -0.565847,
		-0.606062, -0.720318, 0.337388,
		-0.286353, 0.593309, 0.752321,
		41.418896, 38.986115, 30.500784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994270, 38.407856, 30.079708>,  <41.619343, 38.570797, 29.974159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994270, 38.407856, 30.079708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042240, 38.783100, 30.209671>,  <41.071022, 39.008247, 30.287649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042240, 38.783100, 30.209671>,  <40.994270, 38.407856, 30.079708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042240, 38.783100, 30.209671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710429, 0.309694, -0.631965,
		-0.693476, -0.155037, 0.703602,
		0.119924, 0.938111, 0.324908,
		41.078217, 39.064533, 30.307144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288845, 38.664486, 30.091301>,  <40.994270, 38.407856, 30.079708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288845, 38.664486, 30.091301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523003, 38.988010, 30.068922>,  <40.663498, 39.182125, 30.055494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523003, 38.988010, 30.068922>,  <40.288845, 38.664486, 30.091301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523003, 38.988010, 30.068922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623699, 0.405178, -0.668454,
		-0.517987, 0.426204, 0.741647,
		0.585397, 0.808814, -0.055947,
		40.698620, 39.230656, 30.052137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.640476, 39.912880, 41.612381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432827, 39.573986, 41.657463>,  <41.308235, 39.370651, 41.684513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432827, 39.573986, 41.657463>,  <41.640476, 39.912880, 41.612381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432827, 39.573986, 41.657463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360816, -0.336779, -0.869708,
		0.774802, -0.410823, 0.480527,
		-0.519127, -0.847233, 0.112705,
		41.277088, 39.319817, 41.691273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113579, 39.435513, 41.494003>,  <41.640476, 39.912880, 41.612381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113579, 39.435513, 41.494003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769093, 39.238194, 41.445072>,  <41.562401, 39.119801, 41.415714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769093, 39.238194, 41.445072>,  <42.113579, 39.435513, 41.494003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769093, 39.238194, 41.445072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307878, -0.314859, -0.897817,
		0.404375, -0.810877, 0.423037,
		-0.861216, -0.493298, -0.122330,
		41.510727, 39.090202, 41.408375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338032, 38.864891, 41.291000>,  <42.113579, 39.435513, 41.494003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338032, 38.864891, 41.291000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964260, 38.885300, 41.150005>,  <41.739998, 38.897545, 41.065407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964260, 38.885300, 41.150005>,  <42.338032, 38.864891, 41.291000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964260, 38.885300, 41.150005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259024, -0.581923, -0.770891,
		-0.244451, -0.811642, 0.530547,
		-0.934425, 0.051021, -0.352486,
		41.683933, 38.900604, 41.044258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179882, 38.258545, 40.976974>,  <42.338032, 38.864891, 41.291000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179882, 38.258545, 40.976974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895626, 38.500500, 40.833248>,  <41.725075, 38.645672, 40.747013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895626, 38.500500, 40.833248>,  <42.179882, 38.258545, 40.976974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895626, 38.500500, 40.833248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078031, -0.439799, -0.894700,
		-0.699218, -0.663845, 0.265337,
		-0.710637, 0.604886, -0.359316,
		41.682434, 38.681965, 40.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744843, 37.800354, 40.680584>,  <42.179882, 38.258545, 40.976974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744843, 37.800354, 40.680584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720264, 38.159325, 40.505840>,  <41.705517, 38.374706, 40.400993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720264, 38.159325, 40.505840>,  <41.744843, 37.800354, 40.680584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720264, 38.159325, 40.505840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034207, -0.439319, -0.897680,
		-0.997524, -0.040213, 0.057692,
		-0.061443, 0.897431, -0.436855,
		41.701832, 38.428555, 40.374783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315594, 37.651291, 40.054161>,  <41.744843, 37.800354, 40.680584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315594, 37.651291, 40.054161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452621, 38.022583, 39.996132>,  <41.534836, 38.245358, 39.961315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452621, 38.022583, 39.996132>,  <41.315594, 37.651291, 40.054161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452621, 38.022583, 39.996132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039376, -0.168465, -0.984921,
		-0.938668, 0.331688, -0.094261,
		0.342566, 0.928226, -0.145072,
		41.555389, 38.301052, 39.952610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837391, 38.077206, 39.737270>,  <41.315594, 37.651291, 40.054161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837391, 38.077206, 39.737270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194080, 38.237904, 39.653912>,  <41.408096, 38.334320, 39.603897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194080, 38.237904, 39.653912>,  <40.837391, 38.077206, 39.737270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194080, 38.237904, 39.653912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100834, -0.272537, -0.956847,
		-0.441201, 0.874259, -0.202519,
		0.891726, 0.401740, -0.208399,
		41.461597, 38.358425, 39.591393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774990, 38.462761, 39.067772>,  <40.837391, 38.077206, 39.737270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774990, 38.462761, 39.067772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174923, 38.460938, 39.074944>,  <41.414883, 38.459843, 39.079247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174923, 38.460938, 39.074944>,  <40.774990, 38.462761, 39.067772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174923, 38.460938, 39.074944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016240, -0.247592, -0.968728,
		0.008857, 0.968854, -0.247475,
		0.999829, -0.004561, 0.017928,
		41.474873, 38.459568, 39.080322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038673, 38.697445, 38.409561>,  <40.774990, 38.462761, 39.067772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038673, 38.697445, 38.409561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348732, 38.487556, 38.550308>,  <41.534767, 38.361626, 38.634758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348732, 38.487556, 38.550308>,  <41.038673, 38.697445, 38.409561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348732, 38.487556, 38.550308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145492, -0.393725, -0.907642,
		0.614795, 0.754753, -0.228854,
		0.775151, -0.524718, 0.351870,
		41.581276, 38.330143, 38.655869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626465, 38.860401, 37.918922>,  <41.038673, 38.697445, 38.409561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626465, 38.860401, 37.918922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718521, 38.511982, 38.092503>,  <41.773754, 38.302929, 38.196651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718521, 38.511982, 38.092503>,  <41.626465, 38.860401, 37.918922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718521, 38.511982, 38.092503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020320, -0.441521, -0.897021,
		0.972945, 0.215259, -0.083912,
		0.230140, -0.871047, 0.433949,
		41.787563, 38.250668, 38.222687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239090, 38.532013, 37.521694>,  <41.626465, 38.860401, 37.918922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239090, 38.532013, 37.521694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115501, 38.213627, 37.729912>,  <42.041348, 38.022594, 37.854843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115501, 38.213627, 37.729912>,  <42.239090, 38.532013, 37.521694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115501, 38.213627, 37.729912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179539, -0.586302, -0.789946,
		0.933970, -0.150615, 0.324060,
		-0.308975, -0.795968, 0.520548,
		42.022808, 37.974838, 37.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733948, 38.076424, 37.467556>,  <42.239090, 38.532013, 37.521694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733948, 38.076424, 37.467556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396244, 37.873348, 37.536236>,  <42.193623, 37.751503, 37.577446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396244, 37.873348, 37.536236>,  <42.733948, 38.076424, 37.467556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396244, 37.873348, 37.536236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131364, -0.506630, -0.852097,
		0.519593, -0.696832, 0.494417,
		-0.844255, -0.507693, 0.171703,
		42.142967, 37.721039, 37.587746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871284, 37.311161, 37.447758>,  <42.733948, 38.076424, 37.467556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871284, 37.311161, 37.447758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493935, 37.407330, 37.356327>,  <42.267525, 37.465031, 37.301468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493935, 37.407330, 37.356327>,  <42.871284, 37.311161, 37.447758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493935, 37.407330, 37.356327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073299, -0.520933, -0.850444,
		-0.323538, -0.819040, 0.473811,
		-0.943372, 0.240421, -0.228576,
		42.210922, 37.479458, 37.287754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467606, 36.748363, 37.284393>,  <42.871284, 37.311161, 37.447758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467606, 36.748363, 37.284393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308014, 37.065411, 37.099972>,  <42.212261, 37.255638, 36.989319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308014, 37.065411, 37.099972>,  <42.467606, 36.748363, 37.284393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308014, 37.065411, 37.099972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055400, -0.522726, -0.850699,
		-0.915286, -0.313867, 0.252466,
		-0.398977, 0.792619, -0.461056,
		42.188320, 37.303196, 36.961655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566319, 36.020252, 37.183197>,  <42.467606, 36.748363, 37.284393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566319, 36.020252, 37.183197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673237, 35.653107, 37.300556>,  <42.737389, 35.432819, 37.370972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673237, 35.653107, 37.300556>,  <42.566319, 36.020252, 37.183197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673237, 35.653107, 37.300556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554929, 0.102299, 0.825583,
		-0.787785, -0.383494, -0.482003,
		0.267298, -0.917860, 0.293402,
		42.753426, 35.377750, 37.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970905, 35.463352, 37.183838>,  <42.566319, 36.020252, 37.183197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970905, 35.463352, 37.183838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266804, 35.368877, 37.435863>,  <42.444344, 35.312191, 37.587078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266804, 35.368877, 37.435863>,  <41.970905, 35.463352, 37.183838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266804, 35.368877, 37.435863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662412, -0.091072, 0.743584,
		-0.118252, -0.967428, -0.223831,
		0.739748, -0.236199, 0.630066,
		42.488728, 35.298019, 37.624886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728436, 34.863777, 37.489330>,  <41.970905, 35.463352, 37.183838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728436, 34.863777, 37.489330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029274, 34.992603, 37.719330>,  <42.209778, 35.069901, 37.857330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029274, 34.992603, 37.719330>,  <41.728436, 34.863777, 37.489330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029274, 34.992603, 37.719330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514958, -0.257305, 0.817687,
		0.411300, -0.911080, -0.027667,
		0.752097, 0.322068, 0.574998,
		42.254902, 35.089222, 37.891830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731365, 34.445808, 38.054855>,  <41.728436, 34.863777, 37.489330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731365, 34.445808, 38.054855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929863, 34.768223, 38.183880>,  <42.048962, 34.961674, 38.261295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929863, 34.768223, 38.183880>,  <41.731365, 34.445808, 38.054855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929863, 34.768223, 38.183880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418770, -0.103228, 0.902206,
		0.760512, -0.582789, 0.286319,
		0.496240, 0.806040, 0.322560,
		42.078735, 35.010036, 38.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032265, 34.248798, 38.629360>,  <41.731365, 34.445808, 38.054855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032265, 34.248798, 38.629360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029926, 34.646706, 38.670162>,  <42.028522, 34.885448, 38.694641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029926, 34.646706, 38.670162>,  <42.032265, 34.248798, 38.629360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029926, 34.646706, 38.670162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484494, -0.092050, 0.869938,
		0.874775, -0.044334, 0.482497,
		-0.005845, 0.994767, 0.102002,
		42.028172, 34.945137, 38.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198151, 34.350918, 39.308617>,  <42.032265, 34.248798, 38.629360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198151, 34.350918, 39.308617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000629, 34.683575, 39.207012>,  <41.882118, 34.883171, 39.146049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000629, 34.683575, 39.207012>,  <42.198151, 34.350918, 39.308617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000629, 34.683575, 39.207012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447738, 0.007244, 0.894136,
		0.745445, 0.555258, 0.368782,
		-0.493804, 0.831647, -0.254010,
		41.852489, 34.933067, 39.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280212, 34.762901, 39.775200>,  <42.198151, 34.350918, 39.308617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280212, 34.762901, 39.775200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944744, 34.909828, 39.614349>,  <41.743462, 34.997986, 39.517838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944744, 34.909828, 39.614349>,  <42.280212, 34.762901, 39.775200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944744, 34.909828, 39.614349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369538, 0.158609, 0.915579,
		0.400093, 0.916471, 0.002719,
		-0.838670, 0.367322, -0.402129,
		41.693142, 35.020023, 39.493710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971893, 35.326420, 40.233994>,  <42.280212, 34.762901, 39.775200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971893, 35.326420, 40.233994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656284, 35.273647, 39.993980>,  <41.466919, 35.241985, 39.849972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656284, 35.273647, 39.993980>,  <41.971893, 35.326420, 40.233994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656284, 35.273647, 39.993980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606156, 0.326281, 0.725338,
		0.100084, 0.936021, -0.337414,
		-0.789023, -0.131931, -0.600030,
		41.419579, 35.234070, 39.813972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617802, 35.952946, 40.181480>,  <41.971893, 35.326420, 40.233994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617802, 35.952946, 40.181480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358047, 35.660267, 40.098610>,  <41.202194, 35.484661, 40.048885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358047, 35.660267, 40.098610>,  <41.617802, 35.952946, 40.181480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358047, 35.660267, 40.098610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658121, 0.404237, 0.635192,
		-0.381017, 0.548833, -0.744049,
		-0.649386, -0.731693, -0.207178,
		41.163231, 35.440758, 40.036457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047611, 36.325016, 40.168209>,  <41.617802, 35.952946, 40.181480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047611, 36.325016, 40.168209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930389, 35.945038, 40.211521>,  <40.860058, 35.717052, 40.237511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930389, 35.945038, 40.211521>,  <41.047611, 36.325016, 40.168209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930389, 35.945038, 40.211521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596144, 0.270095, 0.756083,
		-0.747484, 0.157021, -0.645456,
		-0.293055, -0.949944, 0.108285,
		40.842472, 35.660053, 40.244007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349316, 36.321426, 40.457039>,  <41.047611, 36.325016, 40.168209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349316, 36.321426, 40.457039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475292, 35.947395, 40.522087>,  <40.550877, 35.722977, 40.561115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475292, 35.947395, 40.522087>,  <40.349316, 36.321426, 40.457039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475292, 35.947395, 40.522087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501292, -0.018389, 0.865083,
		-0.805929, -0.353967, -0.474538,
		0.314937, -0.935077, 0.162621,
		40.569775, 35.666874, 40.570873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615669, 36.075050, 40.677853>,  <40.349316, 36.321426, 40.457039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615669, 36.075050, 40.677853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901558, 35.821915, 40.796967>,  <40.073093, 35.670033, 40.868435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901558, 35.821915, 40.796967>,  <39.615669, 36.075050, 40.677853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901558, 35.821915, 40.796967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353581, 0.040417, 0.934530,
		-0.603447, -0.773225, -0.194875,
		0.714725, -0.632843, 0.297787,
		40.115974, 35.632061, 40.886303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311062, 35.379700, 40.980484>,  <39.615669, 36.075050, 40.677853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311062, 35.379700, 40.980484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680790, 35.440617, 41.120449>,  <39.902626, 35.477165, 41.204430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680790, 35.440617, 41.120449>,  <39.311062, 35.379700, 40.980484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680790, 35.440617, 41.120449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357287, 0.023168, 0.933707,
		0.134091, -0.988064, 0.075827,
		0.924319, 0.152294, 0.349916,
		39.958084, 35.486305, 41.225426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406780, 34.762329, 41.453125>,  <39.311062, 35.379700, 40.980484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406780, 34.762329, 41.453125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667953, 35.049522, 41.549614>,  <39.824657, 35.221836, 41.607506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667953, 35.049522, 41.549614>,  <39.406780, 34.762329, 41.453125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667953, 35.049522, 41.549614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395588, 0.051666, 0.916974,
		0.645906, -0.694143, 0.317759,
		0.652928, 0.717981, 0.241224,
		39.863831, 35.264915, 41.621983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507313, 34.062115, 41.466232>,  <39.406780, 34.762329, 41.453125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507313, 34.062115, 41.466232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163490, 33.876324, 41.551491>,  <38.957199, 33.764851, 41.602646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163490, 33.876324, 41.551491>,  <39.507313, 34.062115, 41.466232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163490, 33.876324, 41.551491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001163, -0.418849, -0.908055,
		0.511045, -0.780274, 0.360563,
		-0.859553, -0.464476, 0.213143,
		38.905624, 33.736980, 41.615433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616112, 33.258289, 41.205528>,  <39.507313, 34.062115, 41.466232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616112, 33.258289, 41.205528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246754, 33.409744, 41.230717>,  <39.025139, 33.500618, 41.245831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246754, 33.409744, 41.230717>,  <39.616112, 33.258289, 41.205528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246754, 33.409744, 41.230717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181123, -0.285172, -0.941207,
		-0.338429, -0.880513, 0.331909,
		-0.923396, 0.378648, 0.062970,
		38.969734, 33.523338, 41.249607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206539, 32.710175, 40.867901>,  <39.616112, 33.258289, 41.205528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206539, 32.710175, 40.867901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978943, 33.039108, 40.868797>,  <38.842384, 33.236469, 40.869335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978943, 33.039108, 40.868797>,  <39.206539, 32.710175, 40.867901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978943, 33.039108, 40.868797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529875, -0.364544, -0.765729,
		-0.628870, -0.436884, 0.643160,
		-0.568995, 0.822338, 0.002243,
		38.808243, 33.285809, 40.869469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566769, 32.438908, 40.758221>,  <39.206539, 32.710175, 40.867901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566769, 32.438908, 40.758221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555664, 32.824966, 40.654125>,  <38.549000, 33.056602, 40.591667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555664, 32.824966, 40.654125>,  <38.566769, 32.438908, 40.758221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555664, 32.824966, 40.654125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283178, -0.257270, -0.923917,
		-0.958665, 0.048041, 0.280451,
		-0.027765, 0.965145, -0.260240,
		38.547333, 33.114510, 40.576054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072632, 32.491989, 40.258232>,  <38.566769, 32.438908, 40.758221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072632, 32.491989, 40.258232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259659, 32.839241, 40.191624>,  <38.371876, 33.047592, 40.151657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259659, 32.839241, 40.191624>,  <38.072632, 32.491989, 40.258232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259659, 32.839241, 40.191624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144112, -0.110999, -0.983316,
		-0.872129, 0.483769, 0.073208,
		0.467572, 0.868128, -0.166522,
		38.399929, 33.099678, 40.141666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619759, 32.914223, 39.879131>,  <38.072632, 32.491989, 40.258232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619759, 32.914223, 39.879131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978458, 33.072021, 39.798916>,  <38.193676, 33.166702, 39.750786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978458, 33.072021, 39.798916>,  <37.619759, 32.914223, 39.879131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978458, 33.072021, 39.798916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235068, 0.040675, -0.971127,
		-0.374949, 0.917997, 0.129209,
		0.896748, 0.394496, -0.200541,
		38.247482, 33.190369, 39.738754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453499, 33.618866, 39.518345>,  <37.619759, 32.914223, 39.879131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453499, 33.618866, 39.518345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831711, 33.510048, 39.446835>,  <38.058640, 33.444759, 39.403931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831711, 33.510048, 39.446835>,  <37.453499, 33.618866, 39.518345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831711, 33.510048, 39.446835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172283, 0.047762, -0.983889,
		0.276198, 0.961099, -0.001708,
		0.945533, -0.272043, -0.178773,
		38.115372, 33.428436, 39.393204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604748, 34.036015, 39.015644>,  <37.453499, 33.618866, 39.518345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604748, 34.036015, 39.015644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895496, 33.763599, 38.980217>,  <38.069946, 33.600151, 38.958961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895496, 33.763599, 38.980217>,  <37.604748, 34.036015, 39.015644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895496, 33.763599, 38.980217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156519, -0.038700, -0.986917,
		0.668704, 0.731221, -0.134726,
		0.726868, -0.681042, -0.088571,
		38.113556, 33.559288, 38.953644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032284, 34.311295, 38.397545>,  <37.604748, 34.036015, 39.015644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032284, 34.311295, 38.397545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088223, 33.923519, 38.478184>,  <38.121784, 33.690853, 38.526566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088223, 33.923519, 38.478184>,  <38.032284, 34.311295, 38.397545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088223, 33.923519, 38.478184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044314, -0.197262, -0.979349,
		0.989181, 0.145891, 0.015373,
		0.139846, -0.969434, 0.201593,
		38.130177, 33.632690, 38.538662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595863, 34.071770, 38.079178>,  <38.032284, 34.311295, 38.397545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595863, 34.071770, 38.079178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378014, 33.738552, 38.118004>,  <38.247303, 33.538620, 38.141300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378014, 33.738552, 38.118004>,  <38.595863, 34.071770, 38.079178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378014, 33.738552, 38.118004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167029, -0.221159, -0.960828,
		0.821880, -0.507076, 0.259591,
		-0.544624, -0.833044, 0.097069,
		38.214626, 33.488640, 38.147125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939812, 33.607018, 37.561840>,  <38.595863, 34.071770, 38.079178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939812, 33.607018, 37.561840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574238, 33.469582, 37.648243>,  <38.354893, 33.387119, 37.700085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574238, 33.469582, 37.648243>,  <38.939812, 33.607018, 37.561840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574238, 33.469582, 37.648243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159190, -0.186090, -0.969551,
		0.373328, -0.920497, 0.115378,
		-0.913939, -0.343594, 0.216007,
		38.300056, 33.366505, 37.713043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815380, 32.899014, 37.100353>,  <38.939812, 33.607018, 37.561840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815380, 32.899014, 37.100353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466331, 33.042130, 37.233330>,  <38.256901, 33.127998, 37.313114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466331, 33.042130, 37.233330>,  <38.815380, 32.899014, 37.100353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466331, 33.042130, 37.233330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414674, -0.183167, -0.891345,
		-0.258024, -0.915661, 0.308203,
		-0.872622, 0.357792, 0.332439,
		38.204544, 33.149467, 37.333061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.627842, 33.157547, 45.388432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245590, 33.262955, 45.335773>,  <39.016239, 33.326199, 45.304180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245590, 33.262955, 45.335773>,  <39.627842, 33.157547, 45.388432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245590, 33.262955, 45.335773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116819, -0.071231, -0.990595,
		-0.270418, -0.962021, 0.037286,
		-0.955629, 0.263519, -0.131645,
		38.958900, 33.342010, 45.296280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325760, 32.572994, 44.997192>,  <39.627842, 33.157547, 45.388432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325760, 32.572994, 44.997192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108768, 32.902592, 44.931778>,  <38.978573, 33.100349, 44.892529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108768, 32.902592, 44.931778>,  <39.325760, 32.572994, 44.997192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108768, 32.902592, 44.931778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011683, -0.202054, -0.979305,
		-0.839986, -0.529344, 0.119237,
		-0.542481, 0.823996, -0.163538,
		38.946022, 33.149792, 44.882717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984299, 32.351246, 44.411041>,  <39.325760, 32.572994, 44.997192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984299, 32.351246, 44.411041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886787, 32.739174, 44.412849>,  <38.828281, 32.971931, 44.413933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886787, 32.739174, 44.412849>,  <38.984299, 32.351246, 44.411041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886787, 32.739174, 44.412849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062120, 0.020261, -0.997863,
		-0.967841, -0.242972, -0.065184,
		-0.243774, 0.969822, 0.004516,
		38.813656, 33.030121, 44.414204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279388, 32.449131, 44.037384>,  <38.984299, 32.351246, 44.411041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279388, 32.449131, 44.037384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501892, 32.781448, 44.029842>,  <38.635395, 32.980839, 44.025318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501892, 32.781448, 44.029842>,  <38.279388, 32.449131, 44.037384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501892, 32.781448, 44.029842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124842, 0.061110, -0.990293,
		-0.821580, 0.553210, 0.137712,
		0.556256, 0.830797, -0.018857,
		38.668770, 33.030689, 44.024185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970474, 32.898552, 43.669407>,  <38.279388, 32.449131, 44.037384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970474, 32.898552, 43.669407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339359, 33.052826, 43.658367>,  <38.560692, 33.145390, 43.651741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339359, 33.052826, 43.658367>,  <37.970474, 32.898552, 43.669407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339359, 33.052826, 43.658367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049256, 0.046369, -0.997709,
		-0.383525, 0.921463, 0.061760,
		0.922216, 0.385688, -0.027604,
		38.616024, 33.168533, 43.650085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766312, 33.463394, 43.351723>,  <37.970474, 32.898552, 43.669407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766312, 33.463394, 43.351723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159893, 33.402103, 43.315174>,  <38.396042, 33.365330, 43.293243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159893, 33.402103, 43.315174>,  <37.766312, 33.463394, 43.351723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159893, 33.402103, 43.315174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030698, 0.359107, -0.932791,
		0.175740, 0.920632, 0.348643,
		0.983958, -0.153227, -0.091371,
		38.455082, 33.356136, 43.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966293, 34.044525, 43.070187>,  <37.766312, 33.463394, 43.351723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966293, 34.044525, 43.070187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252659, 33.776344, 42.992252>,  <38.424477, 33.615437, 42.945492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252659, 33.776344, 42.992252>,  <37.966293, 34.044525, 43.070187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252659, 33.776344, 42.992252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127853, 0.400232, -0.907452,
		0.686387, 0.624743, 0.372249,
		0.715910, -0.670456, -0.194839,
		38.467430, 33.575207, 42.933800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531029, 34.534752, 42.710400>,  <37.966293, 34.044525, 43.070187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531029, 34.534752, 42.710400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600189, 34.151886, 42.617504>,  <38.641685, 33.922165, 42.561768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600189, 34.151886, 42.617504>,  <38.531029, 34.534752, 42.710400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600189, 34.151886, 42.617504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233732, 0.268924, -0.934371,
		0.956804, 0.107273, 0.270218,
		0.172901, -0.957169, -0.232235,
		38.652058, 33.864735, 42.547832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027493, 34.606842, 42.201672>,  <38.531029, 34.534752, 42.710400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027493, 34.606842, 42.201672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881771, 34.235634, 42.170528>,  <38.794338, 34.012909, 42.151840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.881771, 34.235634, 42.170528>,  <39.027493, 34.606842, 42.201672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881771, 34.235634, 42.170528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153351, 0.022689, -0.987911,
		0.918570, -0.371835, 0.134048,
		-0.364299, -0.928021, -0.077862,
		38.772480, 33.957226, 42.147171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834557, 34.512459, 42.153851>,  <39.027493, 34.606842, 42.201672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834557, 34.512459, 42.153851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920597, 34.902252, 42.128227>,  <39.972221, 35.136131, 42.112854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.920597, 34.902252, 42.128227>,  <39.834557, 34.512459, 42.153851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920597, 34.902252, 42.128227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236998, 0.115726, 0.964593,
		0.947398, -0.192303, 0.255845,
		0.215102, 0.974489, -0.064063,
		39.985126, 35.194599, 42.109009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295631, 34.597485, 42.712616>,  <39.834557, 34.512459, 42.153851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295631, 34.597485, 42.712616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189583, 34.974552, 42.631531>,  <40.125954, 35.200790, 42.582878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189583, 34.974552, 42.631531>,  <40.295631, 34.597485, 42.712616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189583, 34.974552, 42.631531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087443, 0.185863, 0.978677,
		0.960242, 0.277194, 0.033154,
		-0.265121, 0.942666, -0.202712,
		40.110046, 35.257351, 42.570717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809422, 35.122520, 43.111649>,  <40.295631, 34.597485, 42.712616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809422, 35.122520, 43.111649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454082, 35.285191, 43.026371>,  <40.240879, 35.382793, 42.975204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454082, 35.285191, 43.026371>,  <40.809422, 35.122520, 43.111649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454082, 35.285191, 43.026371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114061, 0.254295, 0.960377,
		0.444776, 0.877467, -0.179517,
		-0.888349, 0.406677, -0.213189,
		40.187576, 35.407192, 42.962414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896233, 35.892467, 43.272049>,  <40.809422, 35.122520, 43.111649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896233, 35.892467, 43.272049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514397, 35.773533, 43.279442>,  <40.285294, 35.702171, 43.283878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514397, 35.773533, 43.279442>,  <40.896233, 35.892467, 43.272049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514397, 35.773533, 43.279442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098577, 0.373807, 0.922253,
		-0.281129, 0.878555, -0.386144,
		-0.954594, -0.297337, 0.018483,
		40.228020, 35.684330, 43.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510181, 36.553375, 43.474174>,  <40.896233, 35.892467, 43.272049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510181, 36.553375, 43.474174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260788, 36.255108, 43.568199>,  <40.111153, 36.076149, 43.624615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260788, 36.255108, 43.568199>,  <40.510181, 36.553375, 43.474174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260788, 36.255108, 43.568199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053044, 0.259614, 0.964254,
		-0.780034, 0.613666, -0.122312,
		-0.623484, -0.745664, 0.235059,
		40.073742, 36.031410, 43.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046722, 36.846577, 43.958492>,  <40.510181, 36.553375, 43.474174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046722, 36.846577, 43.958492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038921, 36.448414, 43.995968>,  <40.034241, 36.209515, 44.018452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.038921, 36.448414, 43.995968>,  <40.046722, 36.846577, 43.958492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038921, 36.448414, 43.995968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016888, 0.093363, 0.995489,
		-0.999667, 0.020994, 0.014990,
		-0.019500, -0.995411, 0.093686,
		40.033070, 36.149792, 44.024075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685524, 36.767666, 44.596909>,  <40.046722, 36.846577, 43.958492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685524, 36.767666, 44.596909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829941, 36.397030, 44.554821>,  <39.916592, 36.174648, 44.529568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829941, 36.397030, 44.554821>,  <39.685524, 36.767666, 44.596909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829941, 36.397030, 44.554821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132861, -0.162792, 0.977674,
		-0.923037, -0.339001, -0.181883,
		0.361041, -0.926595, -0.105223,
		39.938251, 36.119053, 44.523254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150898, 36.290447, 44.830204>,  <39.685524, 36.767666, 44.596909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150898, 36.290447, 44.830204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490276, 36.079739, 44.850819>,  <39.693901, 35.953316, 44.863190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490276, 36.079739, 44.850819>,  <39.150898, 36.290447, 44.830204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490276, 36.079739, 44.850819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158212, -0.159487, 0.974440,
		-0.505086, -0.834911, -0.218657,
		0.848444, -0.526770, 0.051538,
		39.744808, 35.921707, 44.866280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950874, 35.723293, 45.253658>,  <39.150898, 36.290447, 44.830204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950874, 35.723293, 45.253658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349770, 35.745277, 45.273659>,  <39.589108, 35.758469, 45.285660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349770, 35.745277, 45.273659>,  <38.950874, 35.723293, 45.253658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349770, 35.745277, 45.273659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047305, -0.049268, 0.997665,
		0.057295, -0.997272, -0.046531,
		0.997236, 0.054960, 0.049999,
		39.648941, 35.761765, 45.288658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185886, 35.241310, 45.837471>,  <38.950874, 35.723293, 45.253658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185886, 35.241310, 45.837471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507824, 35.470387, 45.775188>,  <39.700985, 35.607834, 45.737820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507824, 35.470387, 45.775188>,  <39.185886, 35.241310, 45.837471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507824, 35.470387, 45.775188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179665, 0.014942, 0.983615,
		0.565638, -0.819632, -0.090867,
		0.804844, 0.572695, -0.155711,
		39.749279, 35.642197, 45.728474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653248, 35.042393, 46.328091>,  <39.185886, 35.241310, 45.837471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653248, 35.042393, 46.328091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805859, 35.402687, 46.245037>,  <39.897427, 35.618862, 46.195206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805859, 35.402687, 46.245037>,  <39.653248, 35.042393, 46.328091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805859, 35.402687, 46.245037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152422, 0.160245, 0.975238,
		0.911704, -0.403729, -0.076153,
		0.381529, 0.900736, -0.207633,
		39.920319, 35.672909, 46.182747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269295, 35.117237, 46.768444>,  <39.653248, 35.042393, 46.328091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269295, 35.117237, 46.768444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.157047, 35.490360, 46.678005>,  <40.089699, 35.714233, 46.623741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.157047, 35.490360, 46.678005>,  <40.269295, 35.117237, 46.768444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157047, 35.490360, 46.678005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098527, 0.262312, 0.959940,
		0.954749, 0.247102, -0.165517,
		-0.280620, 0.932809, -0.226096,
		40.072861, 35.770203, 46.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867073, 35.642803, 47.044781>,  <40.269295, 35.117237, 46.768444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867073, 35.642803, 47.044781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.529362, 35.844208, 46.971390>,  <40.326733, 35.965050, 46.927357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.529362, 35.844208, 46.971390>,  <40.867073, 35.642803, 47.044781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529362, 35.844208, 46.971390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033614, 0.391448, 0.919586,
		0.534844, 0.770223, -0.347417,
		-0.844282, 0.503513, -0.183474,
		40.276077, 35.995262, 46.916348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910408, 36.289875, 47.648502>,  <40.867073, 35.642803, 47.044781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910408, 36.289875, 47.648502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535461, 36.273853, 47.510082>,  <40.310493, 36.264240, 47.427032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535461, 36.273853, 47.510082>,  <40.910408, 36.289875, 47.648502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535461, 36.273853, 47.510082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332055, 0.403050, 0.852813,
		0.105319, 0.914301, -0.391103,
		-0.937362, -0.040050, -0.346047,
		40.254253, 36.261837, 47.406269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.686142, 37.791336, 44.741646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014771, 37.662853, 44.930046>,  <33.211948, 37.585762, 45.043087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014771, 37.662853, 44.930046>,  <32.686142, 37.791336, 44.741646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014771, 37.662853, 44.930046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485339, -0.039368, -0.873439,
		0.299099, 0.946189, 0.123552,
		0.821575, -0.321210, 0.470998,
		33.261242, 37.566490, 45.071346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229031, 38.203171, 44.339581>,  <32.686142, 37.791336, 44.741646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229031, 38.203171, 44.339581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412048, 37.901329, 44.527718>,  <33.521858, 37.720222, 44.640602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412048, 37.901329, 44.527718>,  <33.229031, 38.203171, 44.339581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412048, 37.901329, 44.527718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498108, -0.220660, -0.838569,
		0.736576, 0.617963, 0.274914,
		0.457542, -0.754606, 0.470345,
		33.549313, 37.674946, 44.668819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876633, 38.284904, 44.192497>,  <33.229031, 38.203171, 44.339581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876633, 38.284904, 44.192497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827347, 37.894524, 44.264420>,  <33.797775, 37.660294, 44.307575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827347, 37.894524, 44.264420>,  <33.876633, 38.284904, 44.192497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827347, 37.894524, 44.264420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562230, -0.217957, -0.797742,
		0.817751, 0.002802, 0.575566,
		-0.123213, -0.975954, 0.179810,
		33.790382, 37.601738, 44.318363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506664, 38.026402, 44.120834>,  <33.876633, 38.284904, 44.192497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506664, 38.026402, 44.120834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293427, 37.691097, 44.075016>,  <34.165485, 37.489914, 44.047523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293427, 37.691097, 44.075016>,  <34.506664, 38.026402, 44.120834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293427, 37.691097, 44.075016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626728, -0.300311, -0.719045,
		0.568350, -0.455110, 0.685458,
		-0.533095, -0.838265, -0.114548,
		34.133499, 37.439617, 44.040653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966587, 37.553829, 44.047031>,  <34.506664, 38.026402, 44.120834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966587, 37.553829, 44.047031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664597, 37.334927, 43.902523>,  <34.483402, 37.203587, 43.815819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664597, 37.334927, 43.902523>,  <34.966587, 37.553829, 44.047031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664597, 37.334927, 43.902523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595172, -0.340592, -0.727851,
		0.275273, -0.764533, 0.582851,
		-0.754980, -0.547254, -0.361273,
		34.438103, 37.170750, 43.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260971, 36.900322, 43.930878>,  <34.966587, 37.553829, 44.047031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260971, 36.900322, 43.930878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921715, 36.929688, 43.721012>,  <34.718163, 36.947308, 43.595093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921715, 36.929688, 43.721012>,  <35.260971, 36.900322, 43.930878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921715, 36.929688, 43.721012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457298, -0.398540, -0.795012,
		-0.267458, -0.914208, 0.304450,
		-0.848142, 0.073408, -0.524658,
		34.667271, 36.951710, 43.563614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098164, 36.220543, 43.613377>,  <35.260971, 36.900322, 43.930878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098164, 36.220543, 43.613377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871101, 36.466602, 43.394520>,  <34.734863, 36.614239, 43.263206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871101, 36.466602, 43.394520>,  <35.098164, 36.220543, 43.613377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871101, 36.466602, 43.394520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313330, -0.453150, -0.834553,
		-0.761309, -0.645174, 0.064489,
		-0.567655, 0.615146, -0.547140,
		34.700806, 36.651146, 43.230377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840393, 35.870598, 43.112900>,  <35.098164, 36.220543, 43.613377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840393, 35.870598, 43.112900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793610, 36.234837, 42.954334>,  <34.765541, 36.453381, 42.859196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793610, 36.234837, 42.954334>,  <34.840393, 35.870598, 43.112900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793610, 36.234837, 42.954334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281687, -0.352341, -0.892473,
		-0.952352, -0.216043, -0.215294,
		-0.116956, 0.910594, -0.396410,
		34.758522, 36.508015, 42.835411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449322, 35.769783, 42.518639>,  <34.840393, 35.870598, 43.112900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449322, 35.769783, 42.518639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662617, 36.105579, 42.476837>,  <34.790592, 36.307056, 42.451756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662617, 36.105579, 42.476837>,  <34.449322, 35.769783, 42.518639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662617, 36.105579, 42.476837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282474, -0.293131, -0.913391,
		-0.797415, 0.457531, -0.393441,
		0.533234, 0.839488, -0.104507,
		34.822586, 36.357426, 42.445484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338490, 35.909153, 41.892563>,  <34.449322, 35.769783, 42.518639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338490, 35.909153, 41.892563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665981, 36.120697, 41.981991>,  <34.862476, 36.247623, 42.035648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665981, 36.120697, 41.981991>,  <34.338490, 35.909153, 41.892563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665981, 36.120697, 41.981991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321417, -0.099488, -0.941697,
		-0.475783, 0.842858, -0.251438,
		0.818732, 0.528860, 0.223574,
		34.911602, 36.279354, 42.049065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329830, 36.566978, 41.431511>,  <34.338490, 35.909153, 41.892563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329830, 36.566978, 41.431511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706486, 36.507069, 41.552094>,  <34.932480, 36.471123, 41.624443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706486, 36.507069, 41.552094>,  <34.329830, 36.566978, 41.431511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706486, 36.507069, 41.552094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317171, 0.094819, -0.943617,
		0.112747, 0.984163, 0.136790,
		0.941643, -0.149776, 0.301457,
		34.988979, 36.462135, 41.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685608, 37.065121, 41.059948>,  <34.329830, 36.566978, 41.431511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685608, 37.065121, 41.059948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984680, 36.834087, 41.191021>,  <35.164124, 36.695469, 41.269665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984680, 36.834087, 41.191021>,  <34.685608, 37.065121, 41.059948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984680, 36.834087, 41.191021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445065, 0.069630, -0.892787,
		0.492841, 0.813358, 0.309122,
		0.747680, -0.577581, 0.327681,
		35.208984, 36.660812, 41.289326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297119, 37.450314, 40.931553>,  <34.685608, 37.065121, 41.059948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297119, 37.450314, 40.931553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409512, 37.066547, 40.922005>,  <35.476948, 36.836288, 40.916275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409512, 37.066547, 40.922005>,  <35.297119, 37.450314, 40.931553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409512, 37.066547, 40.922005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398296, 0.139202, -0.906633,
		0.873160, 0.245242, 0.421245,
		0.280982, -0.959416, -0.023866,
		35.493805, 36.778721, 40.914845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994423, 37.418743, 40.600384>,  <35.297119, 37.450314, 40.931553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994423, 37.418743, 40.600384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851822, 37.045670, 40.578449>,  <35.766262, 36.821827, 40.565289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851822, 37.045670, 40.578449>,  <35.994423, 37.418743, 40.600384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851822, 37.045670, 40.578449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355681, -0.081209, -0.931073,
		0.863944, -0.351433, 0.360689,
		-0.356501, -0.932684, -0.054838,
		35.744873, 36.765865, 40.561996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679985, 37.292774, 40.956722>,  <35.994423, 37.418743, 40.600384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679985, 37.292774, 40.956722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974457, 37.560379, 40.915806>,  <37.151138, 37.720943, 40.891258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974457, 37.560379, 40.915806>,  <36.679985, 37.292774, 40.956722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974457, 37.560379, 40.915806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087814, 0.244283, 0.965720,
		0.671065, -0.701961, 0.238585,
		0.736180, 0.669011, -0.102287,
		37.195312, 37.761082, 40.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202473, 37.207874, 41.565605>,  <36.679985, 37.292774, 40.956722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202473, 37.207874, 41.565605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236542, 37.577282, 41.416012>,  <37.256981, 37.798927, 41.326256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236542, 37.577282, 41.416012>,  <37.202473, 37.207874, 41.565605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236542, 37.577282, 41.416012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148057, 0.382913, 0.911843,
		0.985305, -0.022290, 0.169345,
		0.085169, 0.923515, -0.373986,
		37.262093, 37.854336, 41.303818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835850, 37.533176, 41.951202>,  <37.202473, 37.207874, 41.565605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835850, 37.533176, 41.951202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644699, 37.849892, 41.799042>,  <37.530010, 38.039921, 41.707745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644699, 37.849892, 41.799042>,  <37.835850, 37.533176, 41.951202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644699, 37.849892, 41.799042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020694, 0.422785, 0.905994,
		0.878183, 0.440826, -0.185654,
		-0.477877, 0.791786, -0.380405,
		37.501335, 38.087429, 41.684921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254715, 38.042271, 42.272591>,  <37.835850, 37.533176, 41.951202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254715, 38.042271, 42.272591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912643, 38.213554, 42.155762>,  <37.707401, 38.316326, 42.085663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912643, 38.213554, 42.155762>,  <38.254715, 38.042271, 42.272591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912643, 38.213554, 42.155762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038199, 0.509886, 0.859394,
		0.516927, 0.746090, -0.419685,
		-0.855177, 0.428212, -0.292074,
		37.656090, 38.342018, 42.068138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360989, 38.723312, 42.473198>,  <38.254715, 38.042271, 42.272591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360989, 38.723312, 42.473198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966610, 38.665154, 42.440289>,  <37.729984, 38.630257, 42.420544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.966610, 38.665154, 42.440289>,  <38.360989, 38.723312, 42.473198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966610, 38.665154, 42.440289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141336, 0.463415, 0.874797,
		-0.089072, 0.874131, -0.477453,
		-0.985946, -0.145401, -0.082269,
		37.670826, 38.621532, 42.415607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149734, 39.317371, 42.676548>,  <38.360989, 38.723312, 42.473198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149734, 39.317371, 42.676548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836170, 39.073658, 42.724300>,  <37.648033, 38.927429, 42.752953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.836170, 39.073658, 42.724300>,  <38.149734, 39.317371, 42.676548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836170, 39.073658, 42.724300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185750, 0.413621, 0.891300,
		-0.592435, 0.676526, -0.437417,
		-0.783912, -0.609287, 0.119379,
		37.600998, 38.890873, 42.760113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630581, 39.780609, 42.836117>,  <38.149734, 39.317371, 42.676548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630581, 39.780609, 42.836117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508675, 39.418709, 42.955139>,  <37.435532, 39.201569, 43.026554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.508675, 39.418709, 42.955139>,  <37.630581, 39.780609, 42.836117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508675, 39.418709, 42.955139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298807, 0.387473, 0.872112,
		-0.904341, 0.176877, -0.388435,
		-0.304765, -0.904754, 0.297555,
		37.417244, 39.147282, 43.044407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947182, 39.895920, 42.998867>,  <37.630581, 39.780609, 42.836117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947182, 39.895920, 42.998867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048054, 39.560261, 43.191631>,  <37.108578, 39.358868, 43.307289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048054, 39.560261, 43.191631>,  <36.947182, 39.895920, 42.998867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048054, 39.560261, 43.191631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652324, 0.220428, 0.725179,
		-0.714757, -0.497242, -0.491806,
		0.252181, -0.839144, 0.481915,
		37.123707, 39.308517, 43.336205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342651, 39.666641, 43.352444>,  <36.947182, 39.895920, 42.998867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342651, 39.666641, 43.352444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632202, 39.467918, 43.543938>,  <36.805931, 39.348686, 43.658833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632202, 39.467918, 43.543938>,  <36.342651, 39.666641, 43.352444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632202, 39.467918, 43.543938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524064, 0.055370, 0.849877,
		-0.448733, -0.866092, -0.220278,
		0.723876, -0.496808, 0.478734,
		36.849365, 39.318874, 43.687557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953144, 39.133575, 43.582859>,  <36.342651, 39.666641, 43.352444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953144, 39.133575, 43.582859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279060, 39.158352, 43.813435>,  <36.474609, 39.173218, 43.951778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279060, 39.158352, 43.813435>,  <35.953144, 39.133575, 43.582859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279060, 39.158352, 43.813435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579751, 0.091079, 0.809688,
		-0.002348, -0.993916, 0.110120,
		0.814791, 0.061941, 0.576437,
		36.523499, 39.176933, 43.986366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907124, 38.669086, 44.167473>,  <35.953144, 39.133575, 43.582859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907124, 38.669086, 44.167473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182266, 38.920197, 44.313206>,  <36.347351, 39.070862, 44.400646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182266, 38.920197, 44.313206>,  <35.907124, 38.669086, 44.167473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182266, 38.920197, 44.313206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417652, -0.068203, 0.906044,
		0.593645, -0.775397, 0.215280,
		0.687861, 0.627780, 0.364334,
		36.388626, 39.108532, 44.422504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248283, 38.351509, 44.853420>,  <35.907124, 38.669086, 44.167473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248283, 38.351509, 44.853420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274475, 38.750282, 44.870609>,  <36.290188, 38.989544, 44.880920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274475, 38.750282, 44.870609>,  <36.248283, 38.351509, 44.853420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274475, 38.750282, 44.870609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324606, -0.019441, 0.945650,
		0.943580, -0.075866, 0.322336,
		0.065476, 0.996928, 0.042971,
		36.294117, 39.049362, 44.883499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645367, 38.521988, 45.477837>,  <36.248283, 38.351509, 44.853420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645367, 38.521988, 45.477837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448074, 38.856663, 45.382614>,  <36.329697, 39.057468, 45.325481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448074, 38.856663, 45.382614>,  <36.645367, 38.521988, 45.477837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448074, 38.856663, 45.382614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226760, 0.140534, 0.963759,
		0.839822, 0.529340, 0.120412,
		-0.493234, 0.836690, -0.238056,
		36.300106, 39.107670, 45.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909763, 38.968861, 45.948696>,  <36.645367, 38.521988, 45.477837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909763, 38.968861, 45.948696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576874, 39.142342, 45.810535>,  <36.377140, 39.246429, 45.727638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.576874, 39.142342, 45.810535>,  <36.909763, 38.968861, 45.948696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576874, 39.142342, 45.810535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234628, 0.288957, 0.928145,
		0.502341, 0.853470, -0.138720,
		-0.832228, 0.433698, -0.345402,
		36.327206, 39.272449, 45.706913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274136, 39.651287, 45.862610>,  <36.909763, 38.968861, 45.948696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274136, 39.651287, 45.862610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632980, 39.733604, 46.018986>,  <37.848289, 39.782997, 46.112812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.632980, 39.733604, 46.018986>,  <37.274136, 39.651287, 45.862610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632980, 39.733604, 46.018986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419647, -0.120250, -0.899687,
		-0.138141, 0.971179, -0.194239,
		0.897114, 0.205796, 0.390941,
		37.902115, 39.795341, 46.136269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551086, 40.018715, 45.372589>,  <37.274136, 39.651287, 45.862610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551086, 40.018715, 45.372589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866638, 39.893124, 45.583904>,  <38.055969, 39.817768, 45.710693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866638, 39.893124, 45.583904>,  <37.551086, 40.018715, 45.372589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866638, 39.893124, 45.583904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480332, -0.221190, -0.848738,
		0.383338, 0.923305, -0.023678,
		0.788881, -0.313980, 0.528284,
		38.103302, 39.798931, 45.742390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075653, 40.309307, 45.042854>,  <37.551086, 40.018715, 45.372589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075653, 40.309307, 45.042854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219765, 40.003971, 45.257336>,  <38.306232, 39.820770, 45.386024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219765, 40.003971, 45.257336>,  <38.075653, 40.309307, 45.042854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219765, 40.003971, 45.257336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460684, -0.354225, -0.813815,
		0.811152, 0.540223, 0.224037,
		0.360282, -0.763338, 0.536202,
		38.327850, 39.774971, 45.418198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764889, 40.410446, 45.105019>,  <38.075653, 40.309307, 45.042854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764889, 40.410446, 45.105019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 40.015518, 45.153156>,  <38.698631, 39.778561, 45.182041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723476, 40.015518, 45.153156>,  <38.764889, 40.410446, 45.105019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723476, 40.015518, 45.153156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774137, -0.155957, -0.613506,
		0.624495, 0.029649, 0.780466,
		-0.103529, -0.987319, 0.120346,
		38.692417, 39.719322, 45.189259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416996, 40.257164, 45.242638>,  <38.764889, 40.410446, 45.105019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416996, 40.257164, 45.242638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240704, 39.914200, 45.136353>,  <39.134930, 39.708420, 45.072582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.240704, 39.914200, 45.136353>,  <39.416996, 40.257164, 45.242638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240704, 39.914200, 45.136353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794220, -0.234532, -0.560543,
		0.418297, -0.458084, 0.784338,
		-0.440728, -0.857411, -0.265716,
		39.108486, 39.656975, 45.056637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016663, 39.807297, 45.299084>,  <39.416996, 40.257164, 45.242638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016663, 39.807297, 45.299084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732239, 39.628750, 45.081772>,  <39.561584, 39.521622, 44.951385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732239, 39.628750, 45.081772>,  <40.016663, 39.807297, 45.299084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732239, 39.628750, 45.081772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670984, -0.199813, -0.714042,
		0.210168, -0.872258, 0.441582,
		-0.711063, -0.446363, -0.543277,
		39.518921, 39.494843, 44.918789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285328, 39.118008, 45.035694>,  <40.016663, 39.807297, 45.299084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285328, 39.118008, 45.035694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971058, 39.198059, 44.801544>,  <39.782497, 39.246090, 44.661053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.971058, 39.198059, 44.801544>,  <40.285328, 39.118008, 45.035694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971058, 39.198059, 44.801544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540870, -0.237102, -0.806996,
		-0.300299, -0.950647, 0.078039,
		-0.785672, 0.200131, -0.585378,
		39.735355, 39.258099, 44.625931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302612, 38.699604, 44.436695>,  <40.285328, 39.118008, 45.035694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302612, 38.699604, 44.436695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032688, 38.966801, 44.311214>,  <39.870731, 39.127121, 44.235924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032688, 38.966801, 44.311214>,  <40.302612, 38.699604, 44.436695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032688, 38.966801, 44.311214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331751, -0.105127, -0.937491,
		-0.659218, -0.736703, -0.150667,
		-0.674813, 0.667995, -0.313704,
		39.830246, 39.167198, 44.217102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832016, 38.456928, 43.939590>,  <40.302612, 38.699604, 44.436695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832016, 38.456928, 43.939590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844646, 38.850315, 43.868256>,  <39.852222, 39.086346, 43.825455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844646, 38.850315, 43.868256>,  <39.832016, 38.456928, 43.939590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844646, 38.850315, 43.868256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225780, -0.180832, -0.957247,
		-0.973666, -0.010043, -0.227756,
		0.031572, 0.983463, -0.178338,
		39.854118, 39.145355, 43.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753357, 38.440567, 43.303047>,  <39.832016, 38.456928, 43.939590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753357, 38.440567, 43.303047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887024, 38.816093, 43.336399>,  <39.967224, 39.041409, 43.356411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887024, 38.816093, 43.336399>,  <39.753357, 38.440567, 43.303047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887024, 38.816093, 43.336399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342935, -0.038707, -0.938561,
		-0.877911, 0.342231, -0.334889,
		0.334167, 0.938818, 0.083381,
		39.987274, 39.097740, 43.361412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624584, 38.716732, 42.660652>,  <39.753357, 38.440567, 43.303047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624584, 38.716732, 42.660652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924629, 38.904133, 42.847340>,  <40.104656, 39.016575, 42.959354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924629, 38.904133, 42.847340>,  <39.624584, 38.716732, 42.660652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924629, 38.904133, 42.847340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428143, 0.193829, -0.882680,
		-0.504004, 0.861936, -0.055192,
		0.750116, 0.468504, 0.466723,
		40.149666, 39.044685, 42.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753872, 39.332695, 42.318687>,  <39.624584, 38.716732, 42.660652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753872, 39.332695, 42.318687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096497, 39.244534, 42.505333>,  <40.302071, 39.191635, 42.617321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096497, 39.244534, 42.505333>,  <39.753872, 39.332695, 42.318687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096497, 39.244534, 42.505333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513756, 0.279008, -0.811301,
		0.048626, 0.934653, 0.352221,
		0.856557, -0.220406, 0.466617,
		40.353462, 39.178413, 42.645317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160385, 39.883522, 42.045105>,  <39.753872, 39.332695, 42.318687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160385, 39.883522, 42.045105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421448, 39.618366, 42.191868>,  <40.578083, 39.459270, 42.279926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421448, 39.618366, 42.191868>,  <40.160385, 39.883522, 42.045105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421448, 39.618366, 42.191868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517696, 0.036588, -0.854782,
		0.553204, 0.747821, 0.367055,
		0.652654, -0.662892, 0.366903,
		40.617245, 39.419498, 42.301937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809696, 40.090061, 41.781246>,  <40.160385, 39.883522, 42.045105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809696, 40.090061, 41.781246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877083, 39.719208, 41.915142>,  <40.917515, 39.496696, 41.995480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877083, 39.719208, 41.915142>,  <40.809696, 40.090061, 41.781246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877083, 39.719208, 41.915142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533640, -0.199738, -0.821787,
		0.828763, 0.317069, 0.461105,
		0.168463, -0.927131, 0.334737,
		40.927620, 39.441067, 42.015564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.275784, 36.028084, 43.320763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.286798, 36.426388, 43.285667>,  <29.293407, 36.665371, 43.264610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.286798, 36.426388, 43.285667>,  <29.275784, 36.028084, 43.320763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286798, 36.426388, 43.285667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112325, -0.090294, -0.989561,
		-0.993290, 0.017396, -0.114335,
		0.027538, 0.995763, -0.087734,
		29.295059, 36.725117, 43.259346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851484, 36.219196, 42.744919>,  <29.275784, 36.028084, 43.320763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851484, 36.219196, 42.744919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102364, 36.525749, 42.800457>,  <29.252892, 36.709682, 42.833778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102364, 36.525749, 42.800457>,  <28.851484, 36.219196, 42.744919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102364, 36.525749, 42.800457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100217, 0.097373, -0.990190,
		-0.772384, 0.634961, -0.015732,
		0.627200, 0.766383, 0.138843,
		29.290524, 36.755665, 42.842110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575235, 36.677795, 42.364147>,  <28.851484, 36.219196, 42.744919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575235, 36.677795, 42.364147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917301, 36.877022, 42.421593>,  <29.122540, 36.996559, 42.456059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917301, 36.877022, 42.421593>,  <28.575235, 36.677795, 42.364147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917301, 36.877022, 42.421593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123777, 0.072835, -0.989633,
		-0.503365, 0.864074, 0.000636,
		0.855163, 0.498068, 0.143615,
		29.173849, 37.026443, 42.464676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506521, 37.308369, 41.974258>,  <28.575235, 36.677795, 42.364147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506521, 37.308369, 41.974258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899542, 37.248623, 42.018593>,  <29.135353, 37.212776, 42.045193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899542, 37.248623, 42.018593>,  <28.506521, 37.308369, 41.974258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899542, 37.248623, 42.018593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090108, -0.139051, -0.986177,
		0.162714, 0.978956, -0.123166,
		0.982550, -0.149366, 0.110837,
		29.194307, 37.203812, 42.051846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768877, 37.851231, 41.494354>,  <28.506521, 37.308369, 41.974258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768877, 37.851231, 41.494354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049957, 37.568249, 41.524601>,  <29.218605, 37.398460, 41.542747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049957, 37.568249, 41.524601>,  <28.768877, 37.851231, 41.494354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049957, 37.568249, 41.524601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152796, 0.046254, -0.987175,
		0.694885, 0.705242, 0.140599,
		0.702700, -0.707456, 0.075617,
		29.260767, 37.356010, 41.547287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214293, 37.954689, 40.895145>,  <28.768877, 37.851231, 41.494354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214293, 37.954689, 40.895145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328070, 37.594078, 41.025585>,  <29.396336, 37.377712, 41.103848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328070, 37.594078, 41.025585>,  <29.214293, 37.954689, 40.895145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328070, 37.594078, 41.025585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150096, -0.294075, -0.943923,
		0.946871, 0.317436, 0.051668,
		0.284441, -0.901529, 0.326097,
		29.413403, 37.323620, 41.123413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910770, 37.808273, 40.504524>,  <29.214293, 37.954689, 40.895145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910770, 37.808273, 40.504524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710215, 37.473003, 40.590378>,  <29.589880, 37.271843, 40.641891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.710215, 37.473003, 40.590378>,  <29.910770, 37.808273, 40.504524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710215, 37.473003, 40.590378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126941, -0.316649, -0.940010,
		0.855858, -0.444067, 0.265164,
		-0.501391, -0.838176, 0.214636,
		29.559797, 37.221550, 40.654770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259409, 37.397655, 40.126965>,  <29.910770, 37.808273, 40.504524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259409, 37.397655, 40.126965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921005, 37.198868, 40.204212>,  <29.717964, 37.079597, 40.250561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921005, 37.198868, 40.204212>,  <30.259409, 37.397655, 40.126965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921005, 37.198868, 40.204212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055099, -0.278781, -0.958773,
		0.530316, -0.821770, 0.208469,
		-0.846008, -0.496966, 0.193121,
		29.667202, 37.049778, 40.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303205, 36.693794, 39.782894>,  <30.259409, 37.397655, 40.126965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303205, 36.693794, 39.782894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916229, 36.763794, 39.856033>,  <29.684044, 36.805794, 39.899918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.916229, 36.763794, 39.856033>,  <30.303205, 36.693794, 39.782894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916229, 36.763794, 39.856033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242881, -0.438740, -0.865168,
		-0.071176, -0.881410, 0.466958,
		-0.967441, 0.174994, 0.182850,
		29.625998, 36.816292, 39.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880392, 36.114071, 39.455208>,  <30.303205, 36.693794, 39.782894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880392, 36.114071, 39.455208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600849, 36.391235, 39.526165>,  <29.433123, 36.557533, 39.568741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600849, 36.391235, 39.526165>,  <29.880392, 36.114071, 39.455208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600849, 36.391235, 39.526165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532130, -0.337956, -0.776289,
		-0.477950, -0.636911, 0.604903,
		-0.698858, 0.692914, 0.177393,
		29.391191, 36.599110, 39.579384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383442, 35.770699, 39.574539>,  <29.880392, 36.114071, 39.455208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383442, 35.770699, 39.574539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245855, 36.126534, 39.454327>,  <29.163303, 36.340034, 39.382198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245855, 36.126534, 39.454327>,  <29.383442, 35.770699, 39.574539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245855, 36.126534, 39.454327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484695, -0.442334, -0.754593,
		-0.804212, -0.113892, 0.583329,
		-0.343968, 0.889590, -0.300527,
		29.142664, 36.393410, 39.364170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626709, 35.768204, 39.334972>,  <29.383442, 35.770699, 39.574539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626709, 35.768204, 39.334972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785694, 36.097698, 39.173244>,  <28.881086, 36.295395, 39.076206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785694, 36.097698, 39.173244>,  <28.626709, 35.768204, 39.334972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785694, 36.097698, 39.173244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353838, -0.268959, -0.895801,
		-0.846653, 0.499113, 0.184569,
		0.397464, 0.823740, -0.404320,
		28.904934, 36.344822, 39.051949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135805, 36.024040, 38.867603>,  <28.626709, 35.768204, 39.334972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135805, 36.024040, 38.867603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487879, 36.161263, 38.736397>,  <28.699123, 36.243595, 38.657673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487879, 36.161263, 38.736397>,  <28.135805, 36.024040, 38.867603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487879, 36.161263, 38.736397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274686, -0.195418, -0.941467,
		-0.387073, 0.918763, -0.077772,
		0.880183, 0.343054, -0.328013,
		28.751934, 36.264179, 38.637993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949263, 36.361752, 38.254589>,  <28.135805, 36.024040, 38.867603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949263, 36.361752, 38.254589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346081, 36.317513, 38.230545>,  <28.584171, 36.290970, 38.216118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346081, 36.317513, 38.230545>,  <27.949263, 36.361752, 38.254589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346081, 36.317513, 38.230545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073556, -0.121848, -0.989819,
		0.102146, 0.986368, -0.129014,
		0.992046, -0.110596, -0.060107,
		28.643694, 36.284332, 38.212513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044207, 36.501450, 37.631927>,  <27.949263, 36.361752, 38.254589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044207, 36.501450, 37.631927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396677, 36.330265, 37.712303>,  <28.608160, 36.227554, 37.760529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.396677, 36.330265, 37.712303>,  <28.044207, 36.501450, 37.631927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396677, 36.330265, 37.712303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066111, -0.309303, -0.948663,
		0.468144, 0.849223, -0.244257,
		0.881176, -0.427963, 0.200941,
		28.661030, 36.201878, 37.772587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568714, 36.762676, 37.094913>,  <28.044207, 36.501450, 37.631927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568714, 36.762676, 37.094913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651199, 36.410789, 37.266296>,  <28.700689, 36.199657, 37.369125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.651199, 36.410789, 37.266296>,  <28.568714, 36.762676, 37.094913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651199, 36.410789, 37.266296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092259, -0.453398, -0.886520,
		0.974149, 0.143281, -0.174658,
		0.206211, -0.879716, 0.428458,
		28.713062, 36.146873, 37.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966454, 36.534344, 36.589630>,  <28.568714, 36.762676, 37.094913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966454, 36.534344, 36.589630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888212, 36.221210, 36.825909>,  <28.841267, 36.033333, 36.967674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888212, 36.221210, 36.825909>,  <28.966454, 36.534344, 36.589630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888212, 36.221210, 36.825909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256894, -0.622196, -0.739512,
		0.946438, 0.007094, 0.322808,
		-0.195604, -0.782830, 0.590692,
		28.829531, 35.986362, 37.003117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600212, 36.086132, 36.638424>,  <28.966454, 36.534344, 36.589630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600212, 36.086132, 36.638424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271149, 35.866776, 36.698421>,  <29.073711, 35.735161, 36.734421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271149, 35.866776, 36.698421>,  <29.600212, 36.086132, 36.638424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271149, 35.866776, 36.698421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286224, -0.627440, -0.724151,
		0.491234, -0.552796, 0.673132,
		-0.822657, -0.548395, 0.149996,
		29.024351, 35.702259, 36.743420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852989, 35.443542, 36.554966>,  <29.600212, 36.086132, 36.638424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852989, 35.443542, 36.554966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457693, 35.398296, 36.513809>,  <29.220516, 35.371147, 36.489113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457693, 35.398296, 36.513809>,  <29.852989, 35.443542, 36.554966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457693, 35.398296, 36.513809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152589, -0.685754, -0.711658,
		0.009940, -0.718989, 0.694950,
		-0.988240, -0.113116, -0.102894,
		29.161221, 35.364361, 36.482941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008268, 35.297623, 35.800571>,  <29.852989, 35.443542, 36.554966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008268, 35.297623, 35.800571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386719, 35.423691, 35.770878>,  <30.613789, 35.499332, 35.753059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386719, 35.423691, 35.770878>,  <30.008268, 35.297623, 35.800571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386719, 35.423691, 35.770878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243041, -0.539743, 0.805983,
		0.213956, -0.780604, -0.587265,
		0.946126, 0.315175, -0.074238,
		30.670557, 35.518242, 35.748608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468620, 34.740044, 35.872013>,  <30.008268, 35.297623, 35.800571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468620, 34.740044, 35.872013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667807, 35.074768, 35.963032>,  <30.787319, 35.275604, 36.017643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667807, 35.074768, 35.963032>,  <30.468620, 34.740044, 35.872013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667807, 35.074768, 35.963032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203000, -0.367586, 0.907564,
		0.843102, -0.405744, -0.352917,
		0.497966, 0.836811, 0.227546,
		30.817196, 35.325809, 36.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026827, 34.517372, 36.153957>,  <30.468620, 34.740044, 35.872013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026827, 34.517372, 36.153957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.016989, 34.891941, 36.293964>,  <31.011086, 35.116684, 36.377968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.016989, 34.891941, 36.293964>,  <31.026827, 34.517372, 36.153957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016989, 34.891941, 36.293964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233450, -0.335059, 0.912818,
		0.972058, 0.104160, -0.210367,
		-0.024594, 0.936422, 0.350013,
		31.009611, 35.172867, 36.398968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697184, 34.655354, 36.556805>,  <31.026827, 34.517372, 36.153957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697184, 34.655354, 36.556805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.414255, 34.913734, 36.671654>,  <31.244497, 35.068764, 36.740562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.414255, 34.913734, 36.671654>,  <31.697184, 34.655354, 36.556805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414255, 34.913734, 36.671654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076920, -0.333434, 0.939630,
		0.702693, 0.686708, 0.186159,
		-0.707323, 0.645952, 0.287123,
		31.202059, 35.107521, 36.757790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947117, 34.813087, 37.200359>,  <31.697184, 34.655354, 36.556805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947117, 34.813087, 37.200359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583698, 34.978848, 37.221584>,  <31.365646, 35.078304, 37.234322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583698, 34.978848, 37.221584>,  <31.947117, 34.813087, 37.200359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583698, 34.978848, 37.221584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004466, -0.136645, 0.990610,
		0.417756, 0.899780, 0.125999,
		-0.908548, 0.414396, 0.053066,
		31.311134, 35.103165, 37.237503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976980, 35.376343, 37.676704>,  <31.947117, 34.813087, 37.200359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976980, 35.376343, 37.676704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.603968, 35.231972, 37.672298>,  <31.380161, 35.145348, 37.669655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.603968, 35.231972, 37.672298>,  <31.976980, 35.376343, 37.676704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603968, 35.231972, 37.672298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093939, -0.271933, 0.957720,
		-0.348661, 0.892068, 0.287491,
		-0.932529, -0.360927, -0.011012,
		31.324209, 35.123695, 37.668995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640993, 35.518452, 38.381882>,  <31.976980, 35.376343, 37.676704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640993, 35.518452, 38.381882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358143, 35.273262, 38.240887>,  <31.188433, 35.126148, 38.156292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358143, 35.273262, 38.240887>,  <31.640993, 35.518452, 38.381882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358143, 35.273262, 38.240887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055512, -0.448834, 0.891889,
		-0.704907, 0.650243, 0.283354,
		-0.707124, -0.612969, -0.352483,
		31.146006, 35.089371, 38.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988842, 35.632469, 38.816772>,  <31.640993, 35.518452, 38.381882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988842, 35.632469, 38.816772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989695, 35.269375, 38.648956>,  <30.990206, 35.051517, 38.548267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989695, 35.269375, 38.648956>,  <30.988842, 35.632469, 38.816772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989695, 35.269375, 38.648956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312978, -0.399067, 0.861853,
		-0.949758, 0.129468, -0.284952,
		0.002133, -0.907735, -0.419538,
		30.990334, 34.997055, 38.523094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374605, 35.359684, 38.969627>,  <30.988842, 35.632469, 38.816772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374605, 35.359684, 38.969627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602268, 35.035419, 38.914654>,  <30.738865, 34.840862, 38.881668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602268, 35.035419, 38.914654>,  <30.374605, 35.359684, 38.969627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602268, 35.035419, 38.914654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281079, -0.348912, 0.894011,
		-0.772694, -0.470200, -0.426445,
		0.569156, -0.810662, -0.137439,
		30.773016, 34.792221, 38.873421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887470, 34.819122, 39.066280>,  <30.374605, 35.359684, 38.969627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887470, 34.819122, 39.066280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225885, 34.609081, 39.103134>,  <30.428934, 34.483055, 39.125244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.225885, 34.609081, 39.103134>,  <29.887470, 34.819122, 39.066280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225885, 34.609081, 39.103134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332124, -0.383952, 0.861554,
		-0.417035, -0.759502, -0.499237,
		0.846035, -0.525107, 0.092127,
		30.479696, 34.451550, 39.130772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656940, 34.167885, 39.315426>,  <29.887470, 34.819122, 39.066280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656940, 34.167885, 39.315426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046656, 34.199554, 39.399799>,  <30.280485, 34.218555, 39.450424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046656, 34.199554, 39.399799>,  <29.656940, 34.167885, 39.315426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046656, 34.199554, 39.399799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167165, -0.373658, 0.912379,
		0.151052, -0.924181, -0.350816,
		0.974289, 0.079173, 0.210932,
		30.338942, 34.223305, 39.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945107, 33.480667, 39.457649>,  <29.656940, 34.167885, 39.315426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945107, 33.480667, 39.457649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183084, 33.757256, 39.621555>,  <30.325871, 33.923210, 39.719898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183084, 33.757256, 39.621555>,  <29.945107, 33.480667, 39.457649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183084, 33.757256, 39.621555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140424, -0.412545, 0.900049,
		0.791405, -0.593020, -0.148342,
		0.594944, 0.691473, 0.409764,
		30.361568, 33.964699, 39.744484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302608, 33.162552, 39.924805>,  <29.945107, 33.480667, 39.457649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302608, 33.162552, 39.924805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359087, 33.540798, 40.042015>,  <30.392973, 33.767746, 40.112343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359087, 33.540798, 40.042015>,  <30.302608, 33.162552, 39.924805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359087, 33.540798, 40.042015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285932, -0.244427, 0.926552,
		0.947791, -0.214611, 0.235871,
		0.141195, 0.945620, 0.293030,
		30.401445, 33.824486, 40.129925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786230, 33.137352, 40.565460>,  <30.302608, 33.162552, 39.924805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786230, 33.137352, 40.565460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559694, 33.466827, 40.554180>,  <30.423773, 33.664513, 40.547413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559694, 33.466827, 40.554180>,  <30.786230, 33.137352, 40.565460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559694, 33.466827, 40.554180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290568, -0.167526, 0.942075,
		0.771252, 0.541730, 0.334214,
		-0.566340, 0.823689, -0.028204,
		30.389791, 33.713936, 40.545719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784279, 33.274811, 41.245457>,  <30.786230, 33.137352, 40.565460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784279, 33.274811, 41.245457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479259, 33.491768, 41.104416>,  <30.296247, 33.621941, 41.019791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479259, 33.491768, 41.104416>,  <30.784279, 33.274811, 41.245457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479259, 33.491768, 41.104416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415102, 0.007815, 0.909741,
		0.496192, 0.840089, 0.219189,
		-0.762551, 0.542392, -0.352601,
		30.250494, 33.654484, 40.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476343, 33.558807, 41.855213>,  <30.784279, 33.274811, 41.245457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476343, 33.558807, 41.855213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174873, 33.631779, 41.602646>,  <29.993992, 33.675564, 41.451107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174873, 33.631779, 41.602646>,  <30.476343, 33.558807, 41.855213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174873, 33.631779, 41.602646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626204, 0.092443, 0.774160,
		0.199601, 0.978863, 0.044566,
		-0.753677, 0.182430, -0.631419,
		29.948771, 33.686508, 41.413219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212816, 34.173435, 42.024284>,  <30.476343, 33.558807, 41.855213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212816, 34.173435, 42.024284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920631, 33.981693, 41.829700>,  <29.745319, 33.866650, 41.712952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920631, 33.981693, 41.829700>,  <30.212816, 34.173435, 42.024284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920631, 33.981693, 41.829700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562477, 0.018268, 0.826611,
		-0.387354, 0.877430, -0.282971,
		-0.730463, -0.479356, -0.486458,
		29.701492, 33.837887, 41.683762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579187, 34.563759, 42.064941>,  <30.212816, 34.173435, 42.024284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579187, 34.563759, 42.064941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490086, 34.178467, 42.004845>,  <29.436625, 33.947292, 41.968788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490086, 34.178467, 42.004845>,  <29.579187, 34.563759, 42.064941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490086, 34.178467, 42.004845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587473, 0.009645, 0.809186,
		-0.777983, 0.268510, -0.568019,
		-0.222753, -0.963229, -0.150239,
		29.423260, 33.889500, 41.959774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809988, 34.560390, 41.996574>,  <29.579187, 34.563759, 42.064941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809988, 34.560390, 41.996574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934055, 34.190723, 42.085747>,  <29.008495, 33.968922, 42.139252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934055, 34.190723, 42.085747>,  <28.809988, 34.560390, 41.996574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934055, 34.190723, 42.085747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609742, -0.013473, 0.792485,
		-0.729389, -0.381738, -0.567686,
		0.310170, -0.924172, 0.222935,
		29.027107, 33.913471, 42.152626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240238, 34.231098, 42.213860>,  <28.809988, 34.560390, 41.996574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240238, 34.231098, 42.213860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520752, 34.001141, 42.382477>,  <28.689060, 33.863167, 42.483646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520752, 34.001141, 42.382477>,  <28.240238, 34.231098, 42.213860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520752, 34.001141, 42.382477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584362, -0.124895, 0.801825,
		-0.408312, -0.808643, -0.423531,
		0.701287, -0.574890, 0.421544,
		28.731138, 33.828674, 42.508942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863510, 33.857925, 42.671936>,  <28.240238, 34.231098, 42.213860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863510, 33.857925, 42.671936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224043, 33.742638, 42.801262>,  <28.440363, 33.673466, 42.878857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224043, 33.742638, 42.801262>,  <27.863510, 33.857925, 42.671936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224043, 33.742638, 42.801262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370230, -0.125275, 0.920454,
		-0.224797, -0.949332, -0.219624,
		0.901330, -0.288227, 0.323310,
		28.494442, 33.656170, 42.898254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858877, 33.106487, 42.902641>,  <27.863510, 33.857925, 42.671936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858877, 33.106487, 42.902641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137753, 33.325336, 43.087936>,  <28.305079, 33.456646, 43.199112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137753, 33.325336, 43.087936>,  <27.858877, 33.106487, 42.902641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137753, 33.325336, 43.087936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412534, -0.222280, 0.883406,
		0.586297, -0.807002, 0.070735,
		0.697188, 0.547120, 0.463238,
		28.346909, 33.489471, 43.226910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962843, 32.683891, 43.435448>,  <27.858877, 33.106487, 42.902641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962843, 32.683891, 43.435448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095905, 33.038376, 43.564423>,  <28.175743, 33.251068, 43.641808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095905, 33.038376, 43.564423>,  <27.962843, 32.683891, 43.435448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095905, 33.038376, 43.564423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270571, -0.237843, 0.932857,
		0.903400, -0.397562, 0.160664,
		0.332656, 0.886214, 0.322436,
		28.195702, 33.304241, 43.661152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.719734, 37.027340, 47.803082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395275, 36.797546, 47.759266>,  <40.200600, 36.659672, 47.732975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395275, 36.797546, 47.759266>,  <40.719734, 37.027340, 47.803082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395275, 36.797546, 47.759266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351367, 0.328980, 0.876535,
		-0.467519, 0.749493, -0.468708,
		-0.811152, -0.574485, -0.109542,
		40.151928, 36.625202, 47.726402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224411, 37.373905, 48.212086>,  <40.719734, 37.027340, 47.803082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224411, 37.373905, 48.212086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.022667, 37.036537, 48.138046>,  <39.901623, 36.834114, 48.093624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.022667, 37.036537, 48.138046>,  <40.224411, 37.373905, 48.212086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022667, 37.036537, 48.138046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507522, 0.116121, 0.853778,
		-0.698603, 0.524550, -0.486622,
		-0.504357, -0.843423, -0.185098,
		39.871361, 36.783508, 48.082516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546562, 37.445961, 48.069176>,  <40.224411, 37.373905, 48.212086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546562, 37.445961, 48.069176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.554413, 37.086952, 48.245392>,  <39.559124, 36.871548, 48.351120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.554413, 37.086952, 48.245392>,  <39.546562, 37.445961, 48.069176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554413, 37.086952, 48.245392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574324, 0.350554, 0.739773,
		-0.818393, -0.267529, -0.508587,
		0.019624, -0.897519, 0.440539,
		39.560299, 36.817696, 48.377552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947517, 37.429974, 48.385586>,  <39.546562, 37.445961, 48.069176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947517, 37.429974, 48.385586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130043, 37.122906, 48.565567>,  <39.239559, 36.938663, 48.673557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130043, 37.122906, 48.565567>,  <38.947517, 37.429974, 48.385586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130043, 37.122906, 48.565567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489662, 0.205585, 0.847329,
		-0.742974, -0.606973, -0.282089,
		0.456312, -0.767671, 0.449956,
		39.266937, 36.892605, 48.700554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424282, 36.839127, 48.702805>,  <38.947517, 37.429974, 48.385586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424282, 36.839127, 48.702805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772766, 36.834110, 48.899109>,  <38.981857, 36.831100, 49.016891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772766, 36.834110, 48.899109>,  <38.424282, 36.839127, 48.702805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772766, 36.834110, 48.899109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476128, 0.221942, 0.850908,
		-0.119591, -0.974979, 0.187386,
		0.871206, -0.012542, 0.490757,
		39.034126, 36.830349, 49.046337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319263, 36.532398, 49.451103>,  <38.424282, 36.839127, 48.702805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319263, 36.532398, 49.451103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682781, 36.698547, 49.466888>,  <38.900894, 36.798237, 49.476360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682781, 36.698547, 49.466888>,  <38.319263, 36.532398, 49.451103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682781, 36.698547, 49.466888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196483, 0.342605, 0.918703,
		0.368086, -0.842666, 0.392972,
		0.908794, 0.415374, 0.039462,
		38.955421, 36.823158, 49.478729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662289, 36.229820, 50.064129>,  <38.319263, 36.532398, 49.451103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662289, 36.229820, 50.064129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826775, 36.588058, 49.996231>,  <38.925468, 36.803001, 49.955490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826775, 36.588058, 49.996231>,  <38.662289, 36.229820, 50.064129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826775, 36.588058, 49.996231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020673, 0.195336, 0.980518,
		0.911303, -0.399698, 0.098841,
		0.411218, 0.895592, -0.169747,
		38.950142, 36.856735, 49.945309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180443, 36.339741, 50.616920>,  <38.662289, 36.229820, 50.064129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180443, 36.339741, 50.616920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110085, 36.699501, 50.456848>,  <39.067867, 36.915356, 50.360806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110085, 36.699501, 50.456848>,  <39.180443, 36.339741, 50.616920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110085, 36.699501, 50.456848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204258, 0.364323, 0.908596,
		0.962984, 0.241561, 0.119626,
		-0.175899, 0.899398, -0.400178,
		39.057316, 36.969322, 50.336796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495842, 36.793922, 51.108601>,  <39.180443, 36.339741, 50.616920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495842, 36.793922, 51.108601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237537, 37.024220, 50.908001>,  <39.082554, 37.162399, 50.787640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237537, 37.024220, 50.908001>,  <39.495842, 36.793922, 51.108601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237537, 37.024220, 50.908001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164847, 0.536195, 0.827841,
		0.745529, 0.617261, -0.251345,
		-0.645764, 0.575746, -0.501502,
		39.043808, 37.196945, 50.757549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559761, 37.451141, 51.295940>,  <39.495842, 36.793922, 51.108601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559761, 37.451141, 51.295940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.187038, 37.455898, 51.150833>,  <38.963406, 37.458752, 51.063770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.187038, 37.455898, 51.150833>,  <39.559761, 37.451141, 51.295940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187038, 37.455898, 51.150833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322176, 0.433222, 0.841737,
		0.167171, 0.901209, -0.399846,
		-0.931803, 0.011893, -0.362769,
		38.907497, 37.459465, 51.042004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269428, 37.992840, 51.614174>,  <39.559761, 37.451141, 51.295940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269428, 37.992840, 51.614174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946507, 37.790352, 51.492844>,  <38.752754, 37.668858, 51.420044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946507, 37.790352, 51.492844>,  <39.269428, 37.992840, 51.614174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946507, 37.790352, 51.492844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544551, 0.440911, 0.713486,
		-0.227441, 0.741174, -0.631610,
		-0.807301, -0.506219, -0.303326,
		38.704315, 37.638485, 51.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758137, 38.476944, 51.466873>,  <39.269428, 37.992840, 51.614174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758137, 38.476944, 51.466873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585594, 38.127781, 51.558048>,  <38.482067, 37.918282, 51.612755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585594, 38.127781, 51.558048>,  <38.758137, 38.476944, 51.466873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585594, 38.127781, 51.558048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437137, 0.423243, 0.793585,
		-0.789203, 0.242678, -0.564150,
		-0.431358, -0.872911, 0.227941,
		38.456188, 37.865906, 51.626431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077770, 38.527050, 51.482235>,  <38.758137, 38.476944, 51.466873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077770, 38.527050, 51.482235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146759, 38.210155, 51.716370>,  <38.188152, 38.020020, 51.856850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.146759, 38.210155, 51.716370>,  <38.077770, 38.527050, 51.482235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146759, 38.210155, 51.716370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542869, 0.419401, 0.727597,
		-0.821917, -0.443250, -0.357745,
		0.172469, -0.792233, 0.585339,
		38.198502, 37.972485, 51.891972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438465, 38.348888, 51.597061>,  <38.077770, 38.527050, 51.482235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438465, 38.348888, 51.597061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708027, 38.267101, 51.881046>,  <37.869766, 38.218029, 52.051437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.708027, 38.267101, 51.881046>,  <37.438465, 38.348888, 51.597061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708027, 38.267101, 51.881046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480001, 0.609336, 0.631117,
		-0.561648, -0.766095, 0.312490,
		0.673907, -0.204470, 0.709958,
		37.910198, 38.205761, 52.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317520, 39.130440, 51.628235>,  <37.438465, 38.348888, 51.597061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317520, 39.130440, 51.628235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979198, 39.308849, 51.511154>,  <36.776207, 39.415897, 51.440907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979198, 39.308849, 51.511154>,  <37.317520, 39.130440, 51.628235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979198, 39.308849, 51.511154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345098, 0.039020, -0.937755,
		-0.406843, -0.894169, -0.186927,
		-0.845805, 0.446027, -0.292701,
		36.725456, 39.442657, 51.423344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013699, 38.834805, 51.003437>,  <37.317520, 39.130440, 51.628235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013699, 38.834805, 51.003437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897541, 39.216652, 51.029892>,  <36.827847, 39.445759, 51.045765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.897541, 39.216652, 51.029892>,  <37.013699, 38.834805, 51.003437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897541, 39.216652, 51.029892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289920, 0.153643, -0.944638,
		-0.911931, -0.255140, -0.321379,
		-0.290392, 0.954619, 0.066142,
		36.810425, 39.503036, 51.049736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655670, 38.970509, 50.420773>,  <37.013699, 38.834805, 51.003437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655670, 38.970509, 50.420773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763382, 39.334248, 50.547630>,  <36.828011, 39.552490, 50.623745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763382, 39.334248, 50.547630>,  <36.655670, 38.970509, 50.420773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763382, 39.334248, 50.547630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174298, 0.277849, -0.944680,
		-0.947157, 0.309664, -0.083677,
		0.269283, 0.909345, 0.317141,
		36.844166, 39.607052, 50.642773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317074, 39.397331, 49.948845>,  <36.655670, 38.970509, 50.420773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317074, 39.397331, 49.948845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596107, 39.628464, 50.118309>,  <36.763527, 39.767143, 50.219990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596107, 39.628464, 50.118309>,  <36.317074, 39.397331, 49.948845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596107, 39.628464, 50.118309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255378, 0.351946, -0.900509,
		-0.669450, 0.736372, 0.097945,
		0.697581, 0.577832, 0.423664,
		36.805382, 39.801815, 50.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269733, 40.108326, 49.736908>,  <36.317074, 39.397331, 49.948845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269733, 40.108326, 49.736908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646618, 40.024502, 49.841457>,  <36.872749, 39.974205, 49.904186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646618, 40.024502, 49.841457>,  <36.269733, 40.108326, 49.736908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646618, 40.024502, 49.841457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306247, 0.222480, -0.925589,
		0.135818, 0.952148, 0.273802,
		0.942214, -0.209563, 0.261375,
		36.929283, 39.961632, 49.919868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616627, 40.599770, 49.548080>,  <36.269733, 40.108326, 49.736908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616627, 40.599770, 49.548080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931690, 40.359573, 49.603226>,  <37.120728, 40.215454, 49.636311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931690, 40.359573, 49.603226>,  <36.616627, 40.599770, 49.548080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931690, 40.359573, 49.603226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379204, 0.296138, -0.876645,
		0.485591, 0.742774, 0.460964,
		0.787658, -0.600491, 0.137861,
		37.167988, 40.179428, 49.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275078, 40.975128, 49.311359>,  <36.616627, 40.599770, 49.548080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275078, 40.975128, 49.311359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360538, 40.584366, 49.310490>,  <37.411816, 40.349907, 49.309967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.360538, 40.584366, 49.310490>,  <37.275078, 40.975128, 49.311359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360538, 40.584366, 49.310490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534252, 0.118702, -0.836950,
		0.817880, 0.177653, 0.547276,
		0.213650, -0.976908, -0.002172,
		37.424633, 40.291294, 49.309837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964458, 40.956131, 49.063053>,  <37.275078, 40.975128, 49.311359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964458, 40.956131, 49.063053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828716, 40.582481, 49.018795>,  <37.747269, 40.358292, 48.992241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828716, 40.582481, 49.018795>,  <37.964458, 40.956131, 49.063053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828716, 40.582481, 49.018795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361313, -0.020844, -0.932212,
		0.868498, -0.356331, 0.344586,
		-0.339358, -0.934128, -0.110644,
		37.726910, 40.302242, 48.985603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473633, 40.647030, 48.763950>,  <37.964458, 40.956131, 49.063053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473633, 40.647030, 48.763950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187180, 40.375526, 48.698914>,  <38.015308, 40.212624, 48.659889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187180, 40.375526, 48.698914>,  <38.473633, 40.647030, 48.763950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187180, 40.375526, 48.698914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357247, -0.156334, -0.920833,
		0.599609, -0.717524, 0.354442,
		-0.716131, -0.678763, -0.162594,
		37.972340, 40.171898, 48.650135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831001, 39.944920, 48.388489>,  <38.473633, 40.647030, 48.763950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831001, 39.944920, 48.388489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438133, 39.961819, 48.315205>,  <38.202412, 39.971958, 48.271236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.438133, 39.961819, 48.315205>,  <38.831001, 39.944920, 48.388489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438133, 39.961819, 48.315205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161203, -0.312268, -0.936217,
		-0.096763, -0.949054, 0.299888,
		-0.982166, 0.042248, -0.183206,
		38.143482, 39.974495, 48.260242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649578, 39.425201, 47.922142>,  <38.831001, 39.944920, 48.388489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649578, 39.425201, 47.922142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.330532, 39.662636, 47.879314>,  <38.139103, 39.805096, 47.853619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.330532, 39.662636, 47.879314>,  <38.649578, 39.425201, 47.922142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330532, 39.662636, 47.879314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052038, -0.109127, -0.992665,
		-0.600915, -0.797338, 0.056153,
		-0.797617, 0.593586, -0.107068,
		38.091248, 39.840710, 47.847195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319603, 39.023407, 47.561626>,  <38.649578, 39.425201, 47.922142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319603, 39.023407, 47.561626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.180065, 39.394333, 47.507366>,  <38.096344, 39.616886, 47.474812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.180065, 39.394333, 47.507366>,  <38.319603, 39.023407, 47.561626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180065, 39.394333, 47.507366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021823, -0.152741, -0.988025,
		-0.936926, -0.341707, 0.073520,
		-0.348845, 0.927311, -0.135651,
		38.075413, 39.672527, 47.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760567, 38.990368, 47.057178>,  <38.319603, 39.023407, 47.561626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760567, 38.990368, 47.057178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844643, 39.380974, 47.038261>,  <37.895088, 39.615337, 47.026913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844643, 39.380974, 47.038261>,  <37.760567, 38.990368, 47.057178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844643, 39.380974, 47.038261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131827, -0.076238, -0.988337,
		-0.968731, 0.201508, -0.144756,
		0.210194, 0.976515, -0.047290,
		37.907700, 39.673927, 47.024075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164597, 39.423580, 46.616810>,  <37.760567, 38.990368, 47.057178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164597, 39.423580, 46.616810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529587, 39.586926, 46.626804>,  <37.748581, 39.684933, 46.632801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529587, 39.586926, 46.626804>,  <37.164597, 39.423580, 46.616810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529587, 39.586926, 46.626804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127487, -0.225775, -0.965802,
		-0.388753, 0.884459, -0.258076,
		0.912479, 0.408359, 0.024987,
		37.803329, 39.709435, 46.634300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665894, 39.883568, 46.455711>,  <37.164597, 39.423580, 46.616810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665894, 39.883568, 46.455711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337574, 39.767944, 46.258636>,  <36.140583, 39.698570, 46.140392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337574, 39.767944, 46.258636>,  <36.665894, 39.883568, 46.455711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337574, 39.767944, 46.258636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553080, 0.186521, 0.811980,
		-0.142812, 0.938966, -0.312967,
		-0.820797, -0.289056, -0.492686,
		36.091335, 39.681229, 46.110832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136890, 40.437046, 46.488693>,  <36.665894, 39.883568, 46.455711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136890, 40.437046, 46.488693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946266, 40.089596, 46.434464>,  <35.831890, 39.881126, 46.401924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946266, 40.089596, 46.434464>,  <36.136890, 40.437046, 46.488693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946266, 40.089596, 46.434464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578329, 0.193600, 0.792499,
		-0.662135, 0.456083, -0.594613,
		-0.476562, -0.868623, -0.135577,
		35.803299, 39.829010, 46.393791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465900, 40.591034, 46.665592>,  <36.136890, 40.437046, 46.488693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465900, 40.591034, 46.665592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449108, 40.191757, 46.682789>,  <35.439034, 39.952190, 46.693108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449108, 40.191757, 46.682789>,  <35.465900, 40.591034, 46.665592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449108, 40.191757, 46.682789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660534, 0.060011, 0.748394,
		-0.749622, 0.003022, -0.661860,
		-0.041980, -0.998193, 0.042989,
		35.436516, 39.892300, 46.695686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733315, 40.455250, 46.912464>,  <35.465900, 40.591034, 46.665592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733315, 40.455250, 46.912464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928329, 40.111679, 46.975147>,  <35.045338, 39.905537, 47.012756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928329, 40.111679, 46.975147>,  <34.733315, 40.455250, 46.912464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928329, 40.111679, 46.975147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553831, -0.165479, 0.816020,
		-0.674968, -0.484629, -0.556375,
		0.487535, -0.858925, 0.156710,
		35.074589, 39.854000, 47.022160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221046, 39.891323, 47.092579>,  <34.733315, 40.455250, 46.912464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221046, 39.891323, 47.092579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576649, 39.790512, 47.245499>,  <34.790009, 39.730026, 47.337250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576649, 39.790512, 47.245499>,  <34.221046, 39.891323, 47.092579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576649, 39.790512, 47.245499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430455, -0.175317, 0.885422,
		-0.156130, -0.951707, -0.264345,
		0.889006, -0.252029, 0.382295,
		34.843349, 39.714905, 47.360188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969151, 39.365570, 47.429436>,  <34.221046, 39.891323, 47.092579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969151, 39.365570, 47.429436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328671, 39.481804, 47.560719>,  <34.544384, 39.551544, 47.639488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328671, 39.481804, 47.560719>,  <33.969151, 39.365570, 47.429436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328671, 39.481804, 47.560719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335993, -0.024224, 0.941553,
		0.281549, -0.956543, 0.075861,
		0.898799, 0.290582, 0.328212,
		34.598309, 39.568977, 47.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005054, 39.040501, 47.972710>,  <33.969151, 39.365570, 47.429436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005054, 39.040501, 47.972710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.280338, 39.324383, 48.032955>,  <34.445507, 39.494713, 48.069103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.280338, 39.324383, 48.032955>,  <34.005054, 39.040501, 47.972710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280338, 39.324383, 48.032955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239709, 0.026495, 0.970483,
		0.684767, -0.704000, 0.188357,
		0.688211, 0.709706, 0.150612,
		34.486801, 39.537296, 48.078140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004295, 38.274998, 48.101692>,  <34.005054, 39.040501, 47.972710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004295, 38.274998, 48.101692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.691429, 38.029861, 48.056698>,  <33.503712, 37.882782, 48.029701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.691429, 38.029861, 48.056698>,  <34.004295, 38.274998, 48.101692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691429, 38.029861, 48.056698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104649, 0.048757, -0.993313,
		0.614224, -0.788703, 0.025997,
		-0.782162, -0.612838, -0.112485,
		33.456779, 37.846008, 48.022953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168167, 37.714626, 47.740486>,  <34.004295, 38.274998, 48.101692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168167, 37.714626, 47.740486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773563, 37.718586, 47.675133>,  <33.536800, 37.720963, 47.635921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773563, 37.718586, 47.675133>,  <34.168167, 37.714626, 47.740486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773563, 37.718586, 47.675133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158147, -0.199683, -0.967014,
		-0.042192, -0.979810, 0.195425,
		-0.986514, 0.009894, -0.163379,
		33.477608, 37.721554, 47.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960060, 37.118092, 47.251377>,  <34.168167, 37.714626, 47.740486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960060, 37.118092, 47.251377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646088, 37.363983, 47.220409>,  <33.457706, 37.511520, 47.201828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646088, 37.363983, 47.220409>,  <33.960060, 37.118092, 47.251377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646088, 37.363983, 47.220409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015460, -0.105479, -0.994301,
		-0.619395, -0.781651, 0.073289,
		-0.784927, 0.614733, -0.077417,
		33.410610, 37.548405, 47.197186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344444, 36.761673, 46.943565>,  <33.960060, 37.118092, 47.251377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344444, 36.761673, 46.943565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326763, 37.158310, 46.894905>,  <33.316154, 37.396290, 46.865707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326763, 37.158310, 46.894905>,  <33.344444, 36.761673, 46.943565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326763, 37.158310, 46.894905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061398, -0.124239, -0.990351,
		-0.997134, -0.036312, 0.066374,
		-0.044207, 0.991588, -0.121654,
		33.313499, 37.455788, 46.858410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881496, 36.819080, 46.463573>,  <33.344444, 36.761673, 46.943565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881496, 36.819080, 46.463573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050476, 37.178474, 46.415802>,  <33.151863, 37.394112, 46.387138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050476, 37.178474, 46.415802>,  <32.881496, 36.819080, 46.463573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050476, 37.178474, 46.415802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002077, -0.132725, -0.991151,
		-0.906385, 0.418461, -0.057936,
		0.422447, 0.898485, -0.119431,
		33.177212, 37.448021, 46.379974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547264, 37.039948, 45.907856>,  <32.881496, 36.819080, 46.463573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547264, 37.039948, 45.907856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863945, 37.283264, 45.930458>,  <33.053951, 37.429253, 45.944019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863945, 37.283264, 45.930458>,  <32.547264, 37.039948, 45.907856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863945, 37.283264, 45.930458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223713, -0.202599, -0.953366,
		-0.568476, 0.767421, -0.296480,
		0.791699, 0.608292, 0.056509,
		33.101456, 37.465752, 45.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463001, 37.639885, 45.499832>,  <32.547264, 37.039948, 45.907856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463001, 37.639885, 45.499832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854141, 37.560276, 45.525726>,  <33.088825, 37.512508, 45.541264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854141, 37.560276, 45.525726>,  <32.463001, 37.639885, 45.499832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854141, 37.560276, 45.525726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, 0.002599, -0.997777,
		0.198414, 0.979991, 0.015794,
		0.977854, -0.199025, 0.064737,
		33.147499, 37.500568, 45.545147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.645069, 34.643688, 51.192829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863094, 34.959602, 51.305363>,  <36.993908, 35.149151, 51.372883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863094, 34.959602, 51.305363>,  <36.645069, 34.643688, 51.192829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863094, 34.959602, 51.305363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385520, 0.061874, -0.920623,
		-0.744501, 0.610255, -0.270753,
		0.545062, 0.789785, 0.281331,
		37.026611, 35.196537, 51.389763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404560, 35.265957, 50.834324>,  <36.645069, 34.643688, 51.192829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404560, 35.265957, 50.834324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788544, 35.302895, 50.940117>,  <37.018932, 35.325058, 51.003593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788544, 35.302895, 50.940117>,  <36.404560, 35.265957, 50.834324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788544, 35.302895, 50.940117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231970, 0.267275, -0.935283,
		-0.157059, 0.959185, 0.235151,
		0.959959, 0.092346, 0.264481,
		37.076530, 35.330597, 51.019463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605854, 35.819653, 50.520817>,  <36.404560, 35.265957, 50.834324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605854, 35.819653, 50.520817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.939297, 35.613892, 50.601299>,  <37.139362, 35.490437, 50.649590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.939297, 35.613892, 50.601299>,  <36.605854, 35.819653, 50.520817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939297, 35.613892, 50.601299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313026, 0.139823, -0.939396,
		0.455092, 0.846074, 0.277579,
		0.833610, -0.514401, 0.201211,
		37.189381, 35.459572, 50.661663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102612, 36.164742, 50.138855>,  <36.605854, 35.819653, 50.520817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102612, 36.164742, 50.138855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.231373, 35.794689, 50.219360>,  <37.308628, 35.572655, 50.267662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.231373, 35.794689, 50.219360>,  <37.102612, 36.164742, 50.138855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231373, 35.794689, 50.219360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247626, -0.122907, -0.961028,
		0.913818, 0.359191, 0.189524,
		0.321899, -0.925136, 0.201260,
		37.327942, 35.517147, 50.279739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626152, 36.086685, 49.658951>,  <37.102612, 36.164742, 50.138855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626152, 36.086685, 49.658951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605858, 35.706425, 49.781387>,  <37.593681, 35.478268, 49.854851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605858, 35.706425, 49.781387>,  <37.626152, 36.086685, 49.658951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605858, 35.706425, 49.781387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276045, -0.307896, -0.910494,
		0.959805, 0.038302, 0.278042,
		-0.050735, -0.950649, 0.306093,
		37.590637, 35.421230, 49.873215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272514, 35.700161, 49.535397>,  <37.626152, 36.086685, 49.658951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272514, 35.700161, 49.535397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.997066, 35.410915, 49.556995>,  <37.831799, 35.237370, 49.569954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.997066, 35.410915, 49.556995>,  <38.272514, 35.700161, 49.535397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997066, 35.410915, 49.556995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482336, -0.512386, -0.710502,
		0.541442, -0.463216, 0.701620,
		-0.688616, -0.723112, 0.054002,
		37.790482, 35.193981, 49.573196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651745, 35.032902, 49.485371>,  <38.272514, 35.700161, 49.535397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651745, 35.032902, 49.485371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.271957, 34.956970, 49.385384>,  <38.044086, 34.911411, 49.325394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.271957, 34.956970, 49.385384>,  <38.651745, 35.032902, 49.485371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271957, 34.956970, 49.385384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309903, -0.440677, -0.842475,
		0.049775, -0.877364, 0.477237,
		-0.949464, -0.189832, -0.249963,
		37.987118, 34.900021, 49.310394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678829, 34.319794, 49.143730>,  <38.651745, 35.032902, 49.485371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678829, 34.319794, 49.143730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.334583, 34.477207, 49.014435>,  <38.128036, 34.571655, 48.936859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.334583, 34.477207, 49.014435>,  <38.678829, 34.319794, 49.143730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334583, 34.477207, 49.014435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136362, -0.433470, -0.890791,
		-0.490670, -0.810701, 0.319385,
		-0.860610, 0.393532, -0.323239,
		38.076401, 34.595268, 48.917461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256298, 33.820862, 48.837513>,  <38.678829, 34.319794, 49.143730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256298, 33.820862, 48.837513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.103516, 34.141769, 48.654003>,  <38.011845, 34.334312, 48.543900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.103516, 34.141769, 48.654003>,  <38.256298, 33.820862, 48.837513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103516, 34.141769, 48.654003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083637, -0.464365, -0.881686,
		-0.920387, -0.375138, 0.110269,
		-0.381959, 0.802270, -0.458771,
		37.988926, 34.382450, 48.516373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811073, 33.510246, 48.360394>,  <38.256298, 33.820862, 48.837513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811073, 33.510246, 48.360394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866432, 33.886360, 48.236000>,  <37.899647, 34.112030, 48.161366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866432, 33.886360, 48.236000>,  <37.811073, 33.510246, 48.360394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866432, 33.886360, 48.236000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038321, -0.318851, -0.947030,
		-0.989635, 0.119152, -0.080161,
		0.138400, 0.940286, -0.310980,
		37.907951, 34.168446, 48.142708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257278, 33.682491, 48.015602>,  <37.811073, 33.510246, 48.360394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257278, 33.682491, 48.015602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.556568, 33.918747, 47.894737>,  <37.736141, 34.060501, 47.822220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.556568, 33.918747, 47.894737>,  <37.257278, 33.682491, 48.015602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556568, 33.918747, 47.894737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072084, -0.380375, -0.922019,
		-0.659517, 0.711659, -0.242031,
		0.748226, 0.590640, -0.302163,
		37.781036, 34.095940, 47.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145287, 34.055035, 47.403351>,  <37.257278, 33.682491, 48.015602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145287, 34.055035, 47.403351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545208, 34.048653, 47.408009>,  <37.785160, 34.044823, 47.410805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545208, 34.048653, 47.408009>,  <37.145287, 34.055035, 47.403351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545208, 34.048653, 47.408009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005405, -0.346171, -0.938156,
		0.018996, 0.938036, -0.346017,
		0.999805, -0.015951, 0.011646,
		37.845150, 34.043869, 47.411503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450043, 34.362797, 47.230724>,  <37.145287, 34.055035, 47.403351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450043, 34.362797, 47.230724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.106350, 34.168583, 47.166245>,  <35.900135, 34.052055, 47.127556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.106350, 34.168583, 47.166245>,  <36.450043, 34.362797, 47.230724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106350, 34.168583, 47.166245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271009, 0.164735, 0.948376,
		-0.433912, 0.858558, -0.273129,
		-0.859229, -0.485532, -0.161197,
		35.848579, 34.022923, 47.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966637, 34.699982, 47.597382>,  <36.450043, 34.362797, 47.230724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966637, 34.699982, 47.597382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.781437, 34.354935, 47.515881>,  <35.670319, 34.147907, 47.466980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.781437, 34.354935, 47.515881>,  <35.966637, 34.699982, 47.597382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781437, 34.354935, 47.515881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452170, 0.032158, 0.891352,
		-0.762347, 0.504826, -0.404940,
		-0.463000, -0.862622, -0.203751,
		35.642536, 34.096149, 47.454754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242371, 34.780293, 47.551662>,  <35.966637, 34.699982, 47.597382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242371, 34.780293, 47.551662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275517, 34.386845, 47.615700>,  <35.295403, 34.150776, 47.654121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275517, 34.386845, 47.615700>,  <35.242371, 34.780293, 47.551662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275517, 34.386845, 47.615700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681029, 0.061390, 0.729679,
		-0.727553, -0.169488, -0.664786,
		0.082860, -0.983618, 0.160090,
		35.300373, 34.091759, 47.663727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503418, 34.431686, 47.665543>,  <35.242371, 34.780293, 47.551662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503418, 34.431686, 47.665543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746048, 34.147289, 47.807838>,  <34.891624, 33.976650, 47.893215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746048, 34.147289, 47.807838>,  <34.503418, 34.431686, 47.665543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746048, 34.147289, 47.807838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669872, -0.216073, 0.710341,
		-0.428185, -0.669174, -0.607341,
		0.606571, -0.710999, 0.355742,
		34.928020, 33.933990, 47.914562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078777, 34.007698, 48.014931>,  <34.503418, 34.431686, 47.665543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078777, 34.007698, 48.014931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419823, 33.888233, 48.186440>,  <34.624451, 33.816555, 48.289345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419823, 33.888233, 48.186440>,  <34.078777, 34.007698, 48.014931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419823, 33.888233, 48.186440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503505, -0.250143, 0.826989,
		-0.139736, -0.920994, -0.363654,
		0.852617, -0.298662, 0.428772,
		34.675610, 33.798634, 48.315071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909966, 33.443871, 48.349545>,  <34.078777, 34.007698, 48.014931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909966, 33.443871, 48.349545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.215668, 33.634369, 48.523487>,  <34.399090, 33.748669, 48.627853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.215668, 33.634369, 48.523487>,  <33.909966, 33.443871, 48.349545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215668, 33.634369, 48.523487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467944, -0.054475, 0.882078,
		0.443774, -0.877623, 0.181222,
		0.764260, 0.476245, 0.434853,
		34.444946, 33.777241, 48.653942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988903, 33.108009, 48.938282>,  <33.909966, 33.443871, 48.349545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988903, 33.108009, 48.938282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.193756, 33.440098, 49.026325>,  <34.316669, 33.639351, 49.079151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.193756, 33.440098, 49.026325>,  <33.988903, 33.108009, 48.938282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193756, 33.440098, 49.026325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508004, 0.086149, 0.857036,
		0.692567, -0.550737, 0.465875,
		0.512136, 0.830221, 0.220113,
		34.347397, 33.689163, 49.092358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051689, 33.054100, 49.705330>,  <33.988903, 33.108009, 48.938282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051689, 33.054100, 49.705330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140636, 33.429806, 49.600769>,  <34.194004, 33.655231, 49.538033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140636, 33.429806, 49.600769>,  <34.051689, 33.054100, 49.705330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140636, 33.429806, 49.600769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365592, 0.328880, 0.870736,
		0.903823, -0.098054, 0.416520,
		0.222365, 0.939267, -0.261402,
		34.207344, 33.711586, 49.522350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335205, 33.289326, 50.333611>,  <34.051689, 33.054100, 49.705330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335205, 33.289326, 50.333611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235195, 33.604954, 50.109165>,  <34.175190, 33.794331, 49.974499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235195, 33.604954, 50.109165>,  <34.335205, 33.289326, 50.333611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235195, 33.604954, 50.109165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353296, 0.465218, 0.811637,
		0.901481, 0.401171, 0.162459,
		-0.250026, 0.789072, -0.561117,
		34.160187, 33.841675, 49.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599945, 33.885838, 50.723759>,  <34.335205, 33.289326, 50.333611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599945, 33.885838, 50.723759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317509, 34.028664, 50.479156>,  <34.148045, 34.114357, 50.332394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317509, 34.028664, 50.479156>,  <34.599945, 33.885838, 50.723759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317509, 34.028664, 50.479156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376911, 0.541559, 0.751433,
		0.599475, 0.761065, -0.247811,
		-0.706094, 0.357063, -0.611504,
		34.105682, 34.135784, 50.295704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699120, 34.650120, 50.734226>,  <34.599945, 33.885838, 50.723759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699120, 34.650120, 50.734226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327694, 34.591274, 50.597919>,  <34.104839, 34.555965, 50.516136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327694, 34.591274, 50.597919>,  <34.699120, 34.650120, 50.734226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327694, 34.591274, 50.597919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342385, 0.693982, 0.633373,
		0.143308, 0.704803, -0.694778,
		-0.928566, -0.147114, -0.340767,
		34.049126, 34.547138, 50.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431675, 35.361298, 50.592827>,  <34.699120, 34.650120, 50.734226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431675, 35.361298, 50.592827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.121326, 35.113003, 50.637939>,  <33.935120, 34.964027, 50.665009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.121326, 35.113003, 50.637939>,  <34.431675, 35.361298, 50.592827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121326, 35.113003, 50.637939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396379, 0.618687, 0.678314,
		-0.490829, 0.481577, -0.726065,
		-0.775867, -0.620733, 0.112783,
		33.888565, 34.926785, 50.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839897, 35.803265, 50.737526>,  <34.431675, 35.361298, 50.592827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839897, 35.803265, 50.737526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731918, 35.439232, 50.863304>,  <33.667130, 35.220810, 50.938770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731918, 35.439232, 50.863304>,  <33.839897, 35.803265, 50.737526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731918, 35.439232, 50.863304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530470, 0.413103, 0.740234,
		-0.803573, 0.033021, -0.594289,
		-0.269946, -0.910086, 0.314442,
		33.650936, 35.166206, 50.957638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128220, 35.873135, 50.977589>,  <33.839897, 35.803265, 50.737526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128220, 35.873135, 50.977589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275776, 35.538795, 51.140209>,  <33.364311, 35.338192, 51.237782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275776, 35.538795, 51.140209>,  <33.128220, 35.873135, 50.977589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275776, 35.538795, 51.140209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461231, 0.215128, 0.860806,
		-0.806959, -0.505059, -0.306157,
		0.368895, -0.835844, 0.406548,
		33.386444, 35.288044, 51.262173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922710, 36.237453, 50.306961>,  <33.128220, 35.873135, 50.977589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922710, 36.237453, 50.306961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742321, 36.582726, 50.397770>,  <32.634087, 36.789890, 50.452255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742321, 36.582726, 50.397770>,  <32.922710, 36.237453, 50.306961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742321, 36.582726, 50.397770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083731, 0.294154, -0.952083,
		-0.888602, -0.410353, -0.204930,
		-0.450971, 0.863182, 0.227026,
		32.607029, 36.841679, 50.465878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325520, 36.323658, 49.882698>,  <32.922710, 36.237453, 50.306961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325520, 36.323658, 49.882698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510391, 36.663677, 49.983734>,  <32.621315, 36.867691, 50.044357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510391, 36.663677, 49.983734>,  <32.325520, 36.323658, 49.882698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510391, 36.663677, 49.983734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219076, 0.166558, -0.961386,
		-0.859298, 0.499671, -0.109246,
		0.462181, 0.850051, 0.252590,
		32.649044, 36.918694, 50.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999481, 36.825626, 49.481228>,  <32.325520, 36.323658, 49.882698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999481, 36.825626, 49.481228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338024, 37.004841, 49.596424>,  <32.541149, 37.112370, 49.665543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338024, 37.004841, 49.596424>,  <31.999481, 36.825626, 49.481228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338024, 37.004841, 49.596424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151480, 0.315901, -0.936622,
		-0.510619, 0.836343, 0.199496,
		0.846358, 0.448038, 0.287994,
		32.591930, 37.139252, 49.682823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031582, 37.473656, 49.174034>,  <31.999481, 36.825626, 49.481228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031582, 37.473656, 49.174034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417175, 37.441639, 49.275490>,  <32.648533, 37.422428, 49.336361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417175, 37.441639, 49.275490>,  <32.031582, 37.473656, 49.174034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417175, 37.441639, 49.275490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264370, 0.392652, -0.880871,
		-0.029088, 0.916198, 0.399669,
		0.963983, -0.080038, 0.253636,
		32.706371, 37.417629, 49.351582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247360, 38.008495, 48.961460>,  <32.031582, 37.473656, 49.174034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247360, 38.008495, 48.961460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565140, 37.769176, 49.003204>,  <32.755810, 37.625587, 49.028252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565140, 37.769176, 49.003204>,  <32.247360, 38.008495, 48.961460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565140, 37.769176, 49.003204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308556, 0.249620, -0.917869,
		0.523105, 0.761403, 0.382918,
		0.794452, -0.598294, 0.104358,
		32.803474, 37.589687, 49.034512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876762, 38.418324, 48.775436>,  <32.247360, 38.008495, 48.961460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876762, 38.418324, 48.775436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948154, 38.025990, 48.744179>,  <32.990990, 37.790588, 48.725426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948154, 38.025990, 48.744179>,  <32.876762, 38.418324, 48.775436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948154, 38.025990, 48.744179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455115, 0.152709, -0.877240,
		0.872361, 0.121006, 0.473649,
		0.178482, -0.980835, -0.078145,
		33.001698, 37.731739, 48.720734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568516, 38.509575, 48.642960>,  <32.876762, 38.418324, 48.775436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568516, 38.509575, 48.642960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.409927, 38.162647, 48.522579>,  <33.314774, 37.954491, 48.450352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.409927, 38.162647, 48.522579>,  <33.568516, 38.509575, 48.642960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409927, 38.162647, 48.522579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356872, 0.156431, -0.920962,
		0.845846, -0.472533, 0.247501,
		-0.396468, -0.867319, -0.300950,
		33.290985, 37.902451, 48.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344475, 38.866432, 48.642338>,  <33.568516, 38.509575, 48.642960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344475, 38.866432, 48.642338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454872, 39.248417, 48.598751>,  <34.521111, 39.477608, 48.572601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454872, 39.248417, 48.598751>,  <34.344475, 38.866432, 48.642338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454872, 39.248417, 48.598751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034160, 0.123041, 0.991813,
		0.960551, -0.270016, 0.066581,
		0.275997, 0.954962, -0.108964,
		34.537670, 39.534904, 48.566063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961727, 39.018871, 49.029701>,  <34.344475, 38.866432, 48.642338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961727, 39.018871, 49.029701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789043, 39.377060, 48.986340>,  <34.685432, 39.591972, 48.960323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789043, 39.377060, 48.986340>,  <34.961727, 39.018871, 49.029701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789043, 39.377060, 48.986340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068521, 0.087277, 0.993825,
		0.899407, 0.436470, 0.023681,
		-0.431708, 0.895476, -0.108405,
		34.659531, 39.645702, 48.953819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349239, 39.540070, 49.470123>,  <34.961727, 39.018871, 49.029701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349239, 39.540070, 49.470123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976658, 39.669621, 49.403790>,  <34.753109, 39.747353, 49.363991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.976658, 39.669621, 49.403790>,  <35.349239, 39.540070, 49.470123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976658, 39.669621, 49.403790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190461, -0.045651, 0.980633,
		0.310036, 0.944996, 0.104208,
		-0.931452, 0.323879, -0.165832,
		34.697224, 39.766785, 49.354038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331371, 40.043415, 49.942764>,  <35.349239, 39.540070, 49.470123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331371, 40.043415, 49.942764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951679, 39.951530, 49.856800>,  <34.723862, 39.896400, 49.805222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951679, 39.951530, 49.856800>,  <35.331371, 40.043415, 49.942764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951679, 39.951530, 49.856800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211108, -0.041315, 0.976589,
		-0.233212, 0.972382, -0.009276,
		-0.949234, -0.229710, -0.214912,
		34.666908, 39.882618, 49.792328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950760, 40.403641, 50.392349>,  <35.331371, 40.043415, 49.942764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950760, 40.403641, 50.392349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716908, 40.102093, 50.272427>,  <34.576595, 39.921165, 50.200474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.716908, 40.102093, 50.272427>,  <34.950760, 40.403641, 50.392349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716908, 40.102093, 50.272427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167012, -0.249793, 0.953787,
		-0.793923, 0.607685, 0.020132,
		-0.584631, -0.753871, -0.299808,
		34.541519, 39.875931, 50.182484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444508, 40.418571, 50.867905>,  <34.950760, 40.403641, 50.392349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444508, 40.418571, 50.867905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.385368, 40.058193, 50.704720>,  <34.349884, 39.841965, 50.606808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.385368, 40.058193, 50.704720>,  <34.444508, 40.418571, 50.867905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385368, 40.058193, 50.704720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137947, -0.389674, 0.910563,
		-0.979342, 0.190904, -0.066670,
		-0.147850, -0.900949, -0.407959,
		34.341015, 39.787907, 50.582333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900326, 40.173161, 51.269672>,  <34.444508, 40.418571, 50.867905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900326, 40.173161, 51.269672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041252, 39.837734, 51.103455>,  <34.125809, 39.636478, 51.003723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.041252, 39.837734, 51.103455>,  <33.900326, 40.173161, 51.269672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041252, 39.837734, 51.103455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106786, -0.477131, 0.872320,
		-0.929768, -0.262961, -0.257650,
		0.352319, -0.838568, -0.415541,
		34.146950, 39.586163, 50.978794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309879, 39.654846, 51.385014>,  <33.900326, 40.173161, 51.269672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309879, 39.654846, 51.385014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.654156, 39.461315, 51.321609>,  <33.860722, 39.345196, 51.283566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.654156, 39.461315, 51.321609>,  <33.309879, 39.654846, 51.385014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654156, 39.461315, 51.321609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307424, -0.742051, 0.595693,
		-0.405834, -0.463978, -0.787416,
		0.860691, -0.483823, -0.158511,
		33.912361, 39.316170, 51.274055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181461, 38.885925, 51.439995>,  <33.309879, 39.654846, 51.385014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181461, 38.885925, 51.439995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566292, 38.941616, 51.533829>,  <33.797192, 38.975029, 51.590130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566292, 38.941616, 51.533829>,  <33.181461, 38.885925, 51.439995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566292, 38.941616, 51.533829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043561, -0.770506, 0.635943,
		0.269284, -0.622043, -0.735220,
		0.962075, 0.139222, 0.234581,
		33.854916, 38.983383, 51.604202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<39.401791, 35.709339, 36.903099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655556, 35.653408, 37.207195>,  <39.807816, 35.619850, 37.389652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655556, 35.653408, 37.207195>,  <39.401791, 35.709339, 36.903099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655556, 35.653408, 37.207195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618241, 0.498574, 0.607620,
		-0.463998, -0.855495, 0.229857,
		0.634416, -0.139828, 0.760239,
		39.845882, 35.611458, 37.435268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077671, 35.323673, 37.612667>,  <39.401791, 35.709339, 36.903099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077671, 35.323673, 37.612667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353802, 35.607990, 37.666676>,  <39.519478, 35.778580, 37.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353802, 35.607990, 37.666676>,  <39.077671, 35.323673, 37.612667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353802, 35.607990, 37.666676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530294, 0.370129, 0.762753,
		0.492181, -0.598148, 0.632437,
		0.690323, 0.710790, 0.135024,
		39.560898, 35.821228, 37.707184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263012, 35.323471, 38.330032>,  <39.077671, 35.323673, 37.612667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263012, 35.323471, 38.330032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333515, 35.691555, 38.190235>,  <39.375816, 35.912407, 38.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333515, 35.691555, 38.190235>,  <39.263012, 35.323471, 38.330032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333515, 35.691555, 38.190235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490030, 0.389960, 0.779617,
		0.853699, 0.033845, 0.519665,
		0.176262, 0.920210, -0.349493,
		39.386395, 35.967617, 38.085388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397957, 35.697075, 38.933910>,  <39.263012, 35.323471, 38.330032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397957, 35.697075, 38.933910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320133, 35.983807, 38.666088>,  <39.273441, 36.155846, 38.505394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320133, 35.983807, 38.666088>,  <39.397957, 35.697075, 38.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320133, 35.983807, 38.666088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473711, 0.529053, 0.704060,
		0.858921, 0.454154, 0.236640,
		-0.194557, 0.716831, -0.669553,
		39.261765, 36.198856, 38.465221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603146, 36.378956, 39.271641>,  <39.397957, 35.697075, 38.933910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603146, 36.378956, 39.271641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345806, 36.444927, 38.972603>,  <39.191402, 36.484512, 38.793179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345806, 36.444927, 38.972603>,  <39.603146, 36.378956, 39.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345806, 36.444927, 38.972603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501073, 0.647590, 0.574067,
		0.578820, 0.743925, -0.333981,
		-0.643346, 0.164933, -0.747599,
		39.152802, 36.494408, 38.748322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615685, 36.996376, 39.206184>,  <39.603146, 36.378956, 39.271641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615685, 36.996376, 39.206184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261997, 36.901192, 39.045418>,  <39.049786, 36.844082, 38.948959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261997, 36.901192, 39.045418>,  <39.615685, 36.996376, 39.206184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261997, 36.901192, 39.045418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450768, 0.660132, 0.600861,
		0.122338, 0.712462, -0.690964,
		-0.884218, -0.237956, -0.401915,
		38.996731, 36.829803, 38.924843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192146, 37.527931, 39.308758>,  <39.615685, 36.996376, 39.206184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192146, 37.527931, 39.308758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904518, 37.266834, 39.213367>,  <38.731941, 37.110176, 39.156136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904518, 37.266834, 39.213367>,  <39.192146, 37.527931, 39.308758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904518, 37.266834, 39.213367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662154, 0.539383, 0.520210,
		-0.210934, 0.531972, -0.820068,
		-0.719068, -0.652742, -0.238473,
		38.688797, 37.071011, 39.141827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690262, 37.922344, 38.948147>,  <39.192146, 37.527931, 39.308758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690262, 37.922344, 38.948147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501244, 37.590233, 39.066360>,  <38.387833, 37.390968, 39.137291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501244, 37.590233, 39.066360>,  <38.690262, 37.922344, 38.948147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501244, 37.590233, 39.066360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592473, 0.547539, 0.590912,
		-0.652437, 0.104137, -0.750654,
		-0.472548, -0.830275, 0.295537,
		38.359478, 37.341152, 39.155022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949463, 37.987354, 38.773674>,  <38.690262, 37.922344, 38.948147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949463, 37.987354, 38.773674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986130, 37.735050, 39.081890>,  <38.008129, 37.583668, 39.266819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986130, 37.735050, 39.081890>,  <37.949463, 37.987354, 38.773674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986130, 37.735050, 39.081890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638889, 0.556288, 0.531379,
		-0.763818, -0.540998, -0.351998,
		0.091663, -0.630765, 0.770541,
		38.013630, 37.545822, 39.313053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321243, 38.075325, 39.172970>,  <37.949463, 37.987354, 38.773674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321243, 38.075325, 39.172970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553913, 37.876938, 39.430862>,  <37.693516, 37.757908, 39.585598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553913, 37.876938, 39.430862>,  <37.321243, 38.075325, 39.172970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553913, 37.876938, 39.430862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520021, 0.382754, 0.763595,
		-0.625490, -0.779434, -0.035276,
		0.581670, -0.495965, 0.644731,
		37.728413, 37.728149, 39.624283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853687, 37.907280, 39.628017>,  <37.321243, 38.075325, 39.172970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853687, 37.907280, 39.628017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201969, 37.881023, 39.822979>,  <37.410938, 37.865269, 39.939957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201969, 37.881023, 39.822979>,  <36.853687, 37.907280, 39.628017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201969, 37.881023, 39.822979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430149, 0.378807, 0.819438,
		-0.238421, -0.923145, 0.301594,
		0.870705, -0.065641, 0.487405,
		37.463181, 37.861332, 39.969200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603138, 37.716713, 40.260914>,  <36.853687, 37.907280, 39.628017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603138, 37.716713, 40.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979145, 37.817417, 40.352985>,  <37.204750, 37.877838, 40.408226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979145, 37.817417, 40.352985>,  <36.603138, 37.716713, 40.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979145, 37.817417, 40.352985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312323, 0.363847, 0.877536,
		0.137179, -0.896790, 0.420653,
		0.940019, 0.251759, 0.230176,
		37.261150, 37.892944, 40.422039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541664, 36.972721, 40.121014>,  <36.603138, 37.716713, 40.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541664, 36.972721, 40.121014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183689, 36.797302, 40.153931>,  <35.968906, 36.692051, 40.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183689, 36.797302, 40.153931>,  <36.541664, 36.972721, 40.121014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183689, 36.797302, 40.153931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043454, -0.269212, -0.962100,
		0.444076, -0.857441, 0.259984,
		-0.894934, -0.438543, 0.082292,
		35.915207, 36.665741, 40.178619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625744, 36.418945, 39.635429>,  <36.541664, 36.972721, 40.121014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625744, 36.418945, 39.635429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231194, 36.394043, 39.696327>,  <35.994461, 36.379101, 39.732868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231194, 36.394043, 39.696327>,  <36.625744, 36.418945, 39.635429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231194, 36.394043, 39.696327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131061, -0.261829, -0.956174,
		0.099395, -0.963104, 0.250102,
		-0.986379, -0.062261, 0.152250,
		35.935280, 36.375366, 39.742001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502018, 35.782082, 39.453808>,  <36.625744, 36.418945, 39.635429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502018, 35.782082, 39.453808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155682, 35.980885, 39.430813>,  <35.947880, 36.100166, 39.417015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155682, 35.980885, 39.430813>,  <36.502018, 35.782082, 39.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155682, 35.980885, 39.430813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157681, -0.380111, -0.911401,
		-0.474830, -0.780060, 0.407484,
		-0.865836, 0.497014, -0.057488,
		35.895931, 36.129990, 39.413567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111748, 35.215336, 39.233711>,  <36.502018, 35.782082, 39.453808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111748, 35.215336, 39.233711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932632, 35.563030, 39.149895>,  <35.825161, 35.771648, 39.099606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932632, 35.563030, 39.149895>,  <36.111748, 35.215336, 39.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932632, 35.563030, 39.149895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275402, -0.357043, -0.892566,
		-0.850668, -0.341974, 0.399271,
		-0.447791, 0.869237, -0.209545,
		35.798294, 35.823803, 39.087032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460415, 35.028595, 38.979321>,  <36.111748, 35.215336, 39.233711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460415, 35.028595, 38.979321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548367, 35.398289, 38.854462>,  <35.601139, 35.620106, 38.779545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548367, 35.398289, 38.854462>,  <35.460415, 35.028595, 38.979321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548367, 35.398289, 38.854462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287016, -0.244527, -0.926190,
		-0.932348, 0.293246, 0.211504,
		0.219883, 0.924237, -0.312150,
		35.614330, 35.675560, 38.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866627, 35.156555, 38.607910>,  <35.460415, 35.028595, 38.979321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866627, 35.156555, 38.607910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129440, 35.430519, 38.481922>,  <35.287128, 35.594898, 38.406330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129440, 35.430519, 38.481922>,  <34.866627, 35.156555, 38.607910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129440, 35.430519, 38.481922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193553, -0.250544, -0.948559,
		-0.728590, 0.684200, -0.032050,
		0.657034, 0.684907, -0.314973,
		35.326550, 35.635990, 38.387428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493450, 35.613903, 38.017242>,  <34.866627, 35.156555, 38.607910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493450, 35.613903, 38.017242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886562, 35.675545, 37.976456>,  <35.122429, 35.712528, 37.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886562, 35.675545, 37.976456>,  <34.493450, 35.613903, 38.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886562, 35.675545, 37.976456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069393, -0.203656, -0.976580,
		-0.171261, 0.966838, -0.189455,
		0.982779, 0.154104, -0.101970,
		35.181396, 35.721775, 37.945866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550655, 36.027905, 37.444553>,  <34.493450, 35.613903, 38.017242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550655, 36.027905, 37.444553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888897, 35.822048, 37.501263>,  <35.091843, 35.698532, 37.535290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888897, 35.822048, 37.501263>,  <34.550655, 36.027905, 37.444553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888897, 35.822048, 37.501263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054574, -0.180852, -0.981995,
		0.531017, 0.838114, -0.124843,
		0.845602, -0.514642, 0.141775,
		35.142578, 35.667656, 37.543797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808540, 36.032425, 36.760456>,  <34.550655, 36.027905, 37.444553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808540, 36.032425, 36.760456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030800, 35.757225, 36.947174>,  <35.164158, 35.592106, 37.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030800, 35.757225, 36.947174>,  <34.808540, 36.032425, 36.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030800, 35.757225, 36.947174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073657, -0.518507, -0.851895,
		0.828145, 0.507741, -0.237434,
		0.555653, -0.688004, 0.466798,
		35.197495, 35.550823, 37.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441921, 36.047634, 36.347851>,  <34.808540, 36.032425, 36.760456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441921, 36.047634, 36.347851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373432, 35.706814, 36.545715>,  <35.332340, 35.502323, 36.664433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373432, 35.706814, 36.545715>,  <35.441921, 36.047634, 36.347851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373432, 35.706814, 36.545715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340333, -0.522321, -0.781891,
		0.924584, 0.034473, 0.379414,
		-0.171222, -0.852052, 0.494662,
		35.322067, 35.451199, 36.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969398, 35.667137, 36.162376>,  <35.441921, 36.047634, 36.347851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969398, 35.667137, 36.162376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713509, 35.394016, 36.303535>,  <35.559975, 35.230145, 36.388233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713509, 35.394016, 36.303535>,  <35.969398, 35.667137, 36.162376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713509, 35.394016, 36.303535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274552, -0.631856, -0.724830,
		0.717895, -0.366803, 0.591678,
		-0.639725, -0.682798, 0.352900,
		35.521591, 35.189178, 36.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350056, 34.944408, 36.216339>,  <35.969398, 35.667137, 36.162376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350056, 34.944408, 36.216339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954193, 34.889835, 36.198616>,  <35.716675, 34.857090, 36.187984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954193, 34.889835, 36.198616>,  <36.350056, 34.944408, 36.216339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954193, 34.889835, 36.198616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133084, -0.758015, -0.638516,
		0.053533, -0.637808, 0.768333,
		-0.989658, -0.136435, -0.044303,
		35.657295, 34.848904, 36.185326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277874, 34.265446, 36.203098>,  <36.350056, 34.944408, 36.216339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277874, 34.265446, 36.203098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900246, 34.358917, 36.110039>,  <35.673668, 34.415001, 36.054203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900246, 34.358917, 36.110039>,  <36.277874, 34.265446, 36.203098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900246, 34.358917, 36.110039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058650, -0.813289, -0.578897,
		-0.324486, -0.532875, 0.781507,
		-0.944071, 0.233679, -0.232648,
		35.617023, 34.429020, 36.040245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869183, 33.690166, 36.371681>,  <36.277874, 34.265446, 36.203098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869183, 33.690166, 36.371681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677822, 33.885544, 36.079777>,  <35.563004, 34.002769, 35.904636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677822, 33.885544, 36.079777>,  <35.869183, 33.690166, 36.371681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677822, 33.885544, 36.079777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104257, -0.856744, -0.505094,
		-0.871930, -0.165555, 0.460792,
		-0.478402, 0.488447, -0.729760,
		35.534302, 34.032078, 35.860847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247272, 33.385418, 36.139095>,  <35.869183, 33.690166, 36.371681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247272, 33.385418, 36.139095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151634, 32.997070, 36.132771>,  <35.094254, 32.764061, 36.128975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151634, 32.997070, 36.132771>,  <35.247272, 33.385418, 36.139095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151634, 32.997070, 36.132771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061667, -0.001072, 0.998096,
		-0.969036, 0.239613, -0.059614,
		-0.239093, -0.970868, -0.015816,
		35.079906, 32.705811, 36.128025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594688, 33.225941, 36.566753>,  <35.247272, 33.385418, 36.139095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594688, 33.225941, 36.566753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817436, 32.893715, 36.563740>,  <34.951084, 32.694378, 36.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817436, 32.893715, 36.563740>,  <34.594688, 33.225941, 36.566753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817436, 32.893715, 36.563740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196982, -0.140876, 0.970233,
		-0.806907, -0.538805, -0.242056,
		0.556866, -0.830568, -0.007539,
		34.984497, 32.644543, 36.561478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168118, 32.700535, 36.840736>,  <34.594688, 33.225941, 36.566753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168118, 32.700535, 36.840736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563908, 32.663120, 36.884903>,  <34.801380, 32.640671, 36.911404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563908, 32.663120, 36.884903>,  <34.168118, 32.700535, 36.840736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563908, 32.663120, 36.884903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126322, -0.186055, 0.974385,
		-0.070594, -0.978077, -0.195912,
		0.989474, -0.093534, 0.110419,
		34.860748, 32.635059, 36.918030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155941, 32.194733, 37.226028>,  <34.168118, 32.700535, 36.840736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155941, 32.194733, 37.226028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493568, 32.403076, 37.277023>,  <34.696144, 32.528084, 37.307621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493568, 32.403076, 37.277023>,  <34.155941, 32.194733, 37.226028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493568, 32.403076, 37.277023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108346, -0.067195, 0.991840,
		0.525175, -0.850994, -0.000285,
		0.844069, 0.520858, 0.127491,
		34.746788, 32.559334, 37.315269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530125, 31.834549, 37.693577>,  <34.155941, 32.194733, 37.226028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530125, 31.834549, 37.693577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652760, 32.213768, 37.727554>,  <34.726341, 32.441299, 37.747940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652760, 32.213768, 37.727554>,  <34.530125, 31.834549, 37.693577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652760, 32.213768, 37.727554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051644, -0.105682, 0.993058,
		0.950442, -0.300069, -0.081361,
		0.306584, 0.948045, 0.084948,
		34.744736, 32.498180, 37.753040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934040, 31.831766, 38.271523>,  <34.530125, 31.834549, 37.693577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934040, 31.831766, 38.271523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856544, 32.221153, 38.222820>,  <34.810047, 32.454784, 38.193600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856544, 32.221153, 38.222820>,  <34.934040, 31.831766, 38.271523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856544, 32.221153, 38.222820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017903, 0.120577, 0.992543,
		0.980889, 0.194476, -0.005933,
		-0.193741, 0.973468, -0.121754,
		34.798424, 32.513195, 38.186295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453831, 32.199764, 38.647682>,  <34.934040, 31.831766, 38.271523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453831, 32.199764, 38.647682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126965, 32.429001, 38.622982>,  <34.930843, 32.566544, 38.608162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126965, 32.429001, 38.622982>,  <35.453831, 32.199764, 38.647682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126965, 32.429001, 38.622982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057393, 0.025700, 0.998021,
		0.573541, 0.819091, 0.011891,
		-0.817164, 0.573088, -0.061750,
		34.881817, 32.600925, 38.604458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670963, 32.762203, 38.952030>,  <35.453831, 32.199764, 38.647682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670963, 32.762203, 38.952030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274094, 32.811226, 38.961571>,  <35.035973, 32.840637, 38.967297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274094, 32.811226, 38.961571>,  <35.670963, 32.762203, 38.952030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274094, 32.811226, 38.961571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043462, 0.159906, 0.986175,
		0.117045, 0.979495, -0.163981,
		-0.992175, 0.122554, 0.023854,
		34.976440, 32.847992, 38.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 33.361237, 39.441696>,  <35.670963, 32.762203, 38.952030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590828, 33.361237, 39.441696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227947, 33.193264, 39.431633>,  <35.010220, 33.092480, 39.425594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227947, 33.193264, 39.431633>,  <35.590828, 33.361237, 39.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227947, 33.193264, 39.431633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080849, 0.115360, 0.990028,
		-0.412845, 0.900193, -0.138606,
		-0.907206, -0.419935, -0.025154,
		34.955784, 33.067284, 39.424088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054920, 33.777447, 39.840351>,  <35.590828, 33.361237, 39.441696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054920, 33.777447, 39.840351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921936, 33.401485, 39.809219>,  <34.842144, 33.175911, 39.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921936, 33.401485, 39.809219>,  <35.054920, 33.777447, 39.840351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921936, 33.401485, 39.809219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166745, -0.022648, 0.985740,
		-0.928259, 0.340700, -0.149194,
		-0.332462, -0.939899, -0.077834,
		34.822197, 33.119514, 39.785870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333939, 33.758339, 40.152275>,  <35.054920, 33.777447, 39.840351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333939, 33.758339, 40.152275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455215, 33.377235, 40.144978>,  <34.527981, 33.148575, 40.140598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455215, 33.377235, 40.144978>,  <34.333939, 33.758339, 40.152275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455215, 33.377235, 40.144978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392478, -0.142294, 0.908688,
		-0.868352, -0.268350, -0.417077,
		0.303194, -0.952754, -0.018240,
		34.546173, 33.091408, 40.139507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906998, 33.463787, 40.681232>,  <34.333939, 33.758339, 40.152275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906998, 33.463787, 40.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198505, 33.191544, 40.651112>,  <34.373409, 33.028198, 40.633038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198505, 33.191544, 40.651112>,  <33.906998, 33.463787, 40.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198505, 33.191544, 40.651112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168247, -0.284573, 0.943775,
		-0.663769, -0.675124, -0.321899,
		0.728769, -0.680607, -0.075303,
		34.417137, 32.987362, 40.628521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698219, 33.010841, 41.146183>,  <33.906998, 33.463787, 40.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698219, 33.010841, 41.146183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073448, 32.890457, 41.077557>,  <34.298588, 32.818226, 41.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073448, 32.890457, 41.077557>,  <33.698219, 33.010841, 41.146183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073448, 32.890457, 41.077557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129338, -0.155167, 0.979385,
		-0.321381, -0.940927, -0.106632,
		0.938075, -0.300965, -0.171565,
		34.354870, 32.800167, 41.026089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770149, 32.318436, 41.383644>,  <33.698219, 33.010841, 41.146183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770149, 32.318436, 41.383644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124203, 32.504421, 41.391006>,  <34.336636, 32.616013, 41.395424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124203, 32.504421, 41.391006>,  <33.770149, 32.318436, 41.383644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124203, 32.504421, 41.391006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027403, -0.091562, 0.995422,
		0.464522, -0.880581, -0.093787,
		0.885137, 0.464965, 0.018402,
		34.389744, 32.643909, 41.396526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176495, 32.008411, 41.886574>,  <33.770149, 32.318436, 41.383644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176495, 32.008411, 41.886574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368019, 32.358128, 41.854679>,  <34.482933, 32.567955, 41.835545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368019, 32.358128, 41.854679>,  <34.176495, 32.008411, 41.886574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368019, 32.358128, 41.854679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246299, -0.046603, 0.968073,
		0.842658, -0.483166, -0.237651,
		0.478815, 0.874287, -0.079733,
		34.511665, 32.620415, 41.830761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935814, 31.864149, 41.989075>,  <34.176495, 32.008411, 41.886574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935814, 31.864149, 41.989075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845535, 32.244385, 42.074345>,  <34.791370, 32.472527, 42.125507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845535, 32.244385, 42.074345>,  <34.935814, 31.864149, 41.989075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845535, 32.244385, 42.074345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282423, -0.145578, 0.948179,
		0.932362, 0.274203, -0.235612,
		-0.225694, 0.950589, 0.213173,
		34.777828, 32.529560, 42.138298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434853, 32.021255, 42.495083>,  <34.935814, 31.864149, 41.989075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434853, 32.021255, 42.495083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203457, 32.346470, 42.521412>,  <35.064621, 32.541599, 42.537209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203457, 32.346470, 42.521412>,  <35.434853, 32.021255, 42.495083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203457, 32.346470, 42.521412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243280, 0.094949, 0.965298,
		0.778569, 0.574423, -0.252721,
		-0.578485, 0.813033, 0.065821,
		35.029911, 32.590382, 42.541157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878380, 32.575790, 42.747147>,  <35.434853, 32.021255, 42.495083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878380, 32.575790, 42.747147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515278, 32.708263, 42.850140>,  <35.297417, 32.787746, 42.911934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515278, 32.708263, 42.850140>,  <35.878380, 32.575790, 42.747147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515278, 32.708263, 42.850140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284348, 0.034497, 0.958100,
		0.308426, 0.942935, -0.125486,
		-0.907755, 0.331184, 0.257482,
		35.242950, 32.807617, 42.927383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975819, 33.216320, 43.032856>,  <35.878380, 32.575790, 42.747147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975819, 33.216320, 43.032856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622879, 33.072624, 43.154457>,  <35.411118, 32.986408, 43.227417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622879, 33.072624, 43.154457>,  <35.975819, 33.216320, 43.032856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622879, 33.072624, 43.154457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208712, 0.280259, 0.936960,
		-0.421788, 0.890171, -0.172309,
		-0.882346, -0.359235, 0.304000,
		35.358173, 32.964855, 43.245659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694023, 33.798882, 43.324039>,  <35.975819, 33.216320, 43.032856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694023, 33.798882, 43.324039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537197, 33.464958, 43.478638>,  <35.443104, 33.264603, 43.571396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537197, 33.464958, 43.478638>,  <35.694023, 33.798882, 43.324039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537197, 33.464958, 43.478638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341856, 0.257840, 0.903689,
		-0.854062, 0.486429, 0.184295,
		-0.392062, -0.834809, 0.386500,
		35.419579, 33.214516, 43.594589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268127, 34.070797, 43.927975>,  <35.694023, 33.798882, 43.324039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268127, 34.070797, 43.927975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313747, 33.678192, 43.989449>,  <35.341122, 33.442627, 44.026333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313747, 33.678192, 43.989449>,  <35.268127, 34.070797, 43.927975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313747, 33.678192, 43.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183696, 0.172861, 0.967665,
		-0.976344, -0.082133, 0.200015,
		0.114052, -0.981516, 0.153685,
		35.347961, 33.383736, 44.035553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846031, 33.921597, 44.492916>,  <35.268127, 34.070797, 43.927975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846031, 33.921597, 44.492916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135040, 33.646011, 44.469955>,  <35.308445, 33.480659, 44.456177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135040, 33.646011, 44.469955>,  <34.846031, 33.921597, 44.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135040, 33.646011, 44.469955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144416, 0.069204, 0.987094,
		-0.676097, -0.721487, 0.149498,
		0.722522, -0.688961, -0.057405,
		35.351795, 33.439323, 44.452732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652699, 33.382465, 44.920563>,  <34.846031, 33.921597, 44.492916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652699, 33.382465, 44.920563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047886, 33.329350, 44.888866>,  <35.285000, 33.297478, 44.869850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047886, 33.329350, 44.888866>,  <34.652699, 33.382465, 44.920563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047886, 33.329350, 44.888866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074589, -0.039639, 0.996426,
		-0.135463, -0.990350, -0.029258,
		0.987971, -0.132796, -0.079239,
		35.344276, 33.289513, 44.865093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953793, 32.797520, 45.474545>,  <34.652699, 33.382465, 44.920563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953793, 32.797520, 45.474545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256310, 33.040359, 45.377010>,  <35.437820, 33.186062, 45.318489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256310, 33.040359, 45.377010>,  <34.953793, 32.797520, 45.474545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256310, 33.040359, 45.377010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309363, -0.003457, 0.950938,
		0.576467, -0.794621, -0.190427,
		0.756294, 0.607096, -0.243834,
		35.483196, 33.222488, 45.303860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388905, 32.695702, 45.989285>,  <34.953793, 32.797520, 45.474545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388905, 32.695702, 45.989285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566719, 33.013306, 45.823425>,  <35.673409, 33.203869, 45.723911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566719, 33.013306, 45.823425>,  <35.388905, 32.695702, 45.989285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566719, 33.013306, 45.823425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194358, 0.366372, 0.909943,
		0.874422, -0.485090, 0.008542,
		0.444534, 0.794014, -0.414645,
		35.700081, 33.251511, 45.699032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001740, 32.715786, 46.326759>,  <35.388905, 32.695702, 45.989285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001740, 32.715786, 46.326759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945309, 33.086136, 46.186562>,  <35.911449, 33.308346, 46.102444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945309, 33.086136, 46.186562>,  <36.001740, 32.715786, 46.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945309, 33.086136, 46.186562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272411, 0.376677, 0.885385,
		0.951782, 0.029433, -0.305361,
		-0.141082, 0.925877, -0.350496,
		35.902985, 33.363899, 46.081413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521797, 33.094444, 46.610607>,  <36.001740, 32.715786, 46.326759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521797, 33.094444, 46.610607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233936, 33.355724, 46.516434>,  <36.061218, 33.512493, 46.459930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233936, 33.355724, 46.516434>,  <36.521797, 33.094444, 46.610607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233936, 33.355724, 46.516434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023230, 0.316239, 0.948395,
		0.693941, 0.687988, -0.212410,
		-0.719657, 0.653196, -0.235433,
		36.018040, 33.551682, 46.445805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716885, 33.775249, 46.903999>,  <36.521797, 33.094444, 46.610607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716885, 33.775249, 46.903999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321995, 33.790016, 46.841995>,  <36.085060, 33.798874, 46.804794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321995, 33.790016, 46.841995>,  <36.716885, 33.775249, 46.903999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321995, 33.790016, 46.841995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138571, 0.281418, 0.949527,
		0.078672, 0.958875, -0.272707,
		-0.987223, 0.036912, -0.155012,
		36.025829, 33.801090, 46.795490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335209, 34.216572, 46.663429>,  <36.716885, 33.775249, 46.903999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335209, 34.216572, 46.663429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663216, 34.058285, 46.828831>,  <37.860020, 33.963314, 46.928074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663216, 34.058285, 46.828831>,  <37.335209, 34.216572, 46.663429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663216, 34.058285, 46.828831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174051, -0.515854, -0.838809,
		0.545238, 0.759806, -0.354133,
		0.820013, -0.395714, 0.413508,
		37.909218, 33.939571, 46.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870998, 34.474026, 46.289467>,  <37.335209, 34.216572, 46.663429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870998, 34.474026, 46.289467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032600, 34.138397, 46.435204>,  <38.129562, 33.937019, 46.522644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032600, 34.138397, 46.435204>,  <37.870998, 34.474026, 46.289467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032600, 34.138397, 46.435204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409417, -0.190315, -0.892277,
		0.818022, 0.509649, 0.266642,
		0.404002, -0.839070, 0.364341,
		38.153801, 33.886677, 46.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538395, 34.602741, 46.186665>,  <37.870998, 34.474026, 46.289467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538395, 34.602741, 46.186665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484512, 34.208565, 46.228138>,  <38.452183, 33.972057, 46.253021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484512, 34.208565, 46.228138>,  <38.538395, 34.602741, 46.186665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484512, 34.208565, 46.228138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454405, -0.154426, -0.877307,
		0.880551, -0.071066, 0.468594,
		-0.134710, -0.985445, 0.103687,
		38.444099, 33.912930, 46.259243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133102, 34.314812, 46.001865>,  <38.538395, 34.602741, 46.186665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133102, 34.314812, 46.001865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918167, 33.977482, 46.005367>,  <38.789207, 33.775085, 46.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918167, 33.977482, 46.005367>,  <39.133102, 34.314812, 46.001865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918167, 33.977482, 46.005367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288247, -0.193395, -0.937823,
		0.792578, -0.501407, 0.347003,
		-0.537339, -0.843321, 0.008752,
		38.756966, 33.724487, 46.007992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522812, 33.829170, 45.768646>,  <39.133102, 34.314812, 46.001865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522812, 33.829170, 45.768646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162022, 33.669746, 45.702213>,  <38.945545, 33.574093, 45.662354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162022, 33.669746, 45.702213>,  <39.522812, 33.829170, 45.768646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162022, 33.669746, 45.702213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298982, -0.299006, -0.906204,
		0.311515, -0.867033, 0.388859,
		-0.901980, -0.398558, -0.166083,
		38.891426, 33.550179, 45.652390>
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
