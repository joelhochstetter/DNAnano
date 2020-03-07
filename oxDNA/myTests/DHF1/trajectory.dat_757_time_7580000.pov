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
	<3.676797, 1.950428, 0.822110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880478, 2.031103, 1.156782>,  <4.002687, 2.079508, 1.357586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880478, 2.031103, 1.156782>,  <3.676797, 1.950428, 0.822110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880478, 2.031103, 1.156782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621096, -0.586853, 0.519464,
		0.595778, -0.784172, -0.173560,
		0.509203, 0.201688, 0.836681,
		4.033239, 2.091609, 1.407786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.719646, 1.431788, 1.314698>,  <3.676797, 1.950428, 0.822110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.719646, 1.431788, 1.314698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774605, 1.753231, 1.546331>,  <3.807580, 1.946097, 1.685311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774605, 1.753231, 1.546331>,  <3.719646, 1.431788, 1.314698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.774605, 1.753231, 1.546331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810716, -0.244653, 0.531869,
		0.569088, -0.542549, 0.617882,
		0.137398, 0.803607, 0.579083,
		3.815824, 1.994313, 1.720056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.776796, 1.200280, 2.005390>,  <3.719646, 1.431788, 1.314698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.776796, 1.200280, 2.005390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525906, 1.498322, 1.914698>,  <3.375371, 1.677147, 1.860282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.525906, 1.498322, 1.914698>,  <3.776796, 1.200280, 2.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.525906, 1.498322, 1.914698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702563, -0.415650, 0.577616,
		0.336143, 0.521589, 0.784189,
		-0.627227, 0.745104, -0.226731,
		3.337738, 1.721853, 1.846678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.587439, 1.560990, 2.618166>,  <3.776796, 1.200280, 2.005390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.587439, 1.560990, 2.618166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321156, 1.539423, 2.320461>,  <3.161386, 1.526483, 2.141839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.321156, 1.539423, 2.320461>,  <3.587439, 1.560990, 2.618166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321156, 1.539423, 2.320461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662966, -0.415055, 0.623061,
		-0.342503, 0.908197, 0.240560,
		-0.665708, -0.053918, -0.744262,
		3.121443, 1.523248, 2.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.062959, 1.977180, 2.708894>,  <3.587439, 1.560990, 2.618166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.062959, 1.977180, 2.708894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920300, 1.669796, 2.496376>,  <2.834704, 1.485366, 2.368865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920300, 1.669796, 2.496376>,  <3.062959, 1.977180, 2.708894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920300, 1.669796, 2.496376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654169, -0.200590, 0.729264,
		-0.666982, 0.607647, -0.431162,
		-0.356648, -0.768459, -0.531294,
		2.813305, 1.439258, 2.336988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.446279, 1.930146, 2.904553>,  <3.062959, 1.977180, 2.708894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.446279, 1.930146, 2.904553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489449, 1.565420, 2.746086>,  <2.515350, 1.346585, 2.651006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489449, 1.565420, 2.746086>,  <2.446279, 1.930146, 2.904553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.489449, 1.565420, 2.746086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581055, -0.381199, 0.719070,
		-0.806677, 0.152590, -0.570954,
		0.107924, -0.911813, -0.396168,
		2.521826, 1.291876, 2.627236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.832144, 1.698088, 2.811209>,  <2.446279, 1.930146, 2.904553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.832144, 1.698088, 2.811209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053799, 1.365208, 2.803484>,  <2.186791, 1.165479, 2.798849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.053799, 1.365208, 2.803484>,  <1.832144, 1.698088, 2.811209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053799, 1.365208, 2.803484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670603, -0.460040, 0.581941,
		-0.493177, -0.309524, -0.813002,
		0.554138, -0.832201, -0.019314,
		2.220040, 1.115547, 2.797690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.340837, 1.300001, 2.712505>,  <1.832144, 1.698088, 2.811209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.340837, 1.300001, 2.712505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.629013, 1.068539, 2.865410>,  <1.801919, 0.929661, 2.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.629013, 1.068539, 2.865410>,  <1.340837, 1.300001, 2.712505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.629013, 1.068539, 2.865410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665863, -0.423052, 0.614535,
		-0.193886, -0.697271, -0.690088,
		0.720441, -0.578654, 0.382263,
		1.845145, 0.894942, 2.980088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.522453, 0.930218, 4.501344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423302, 0.568188, 4.363129>,  <1.363811, 0.350970, 4.280200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.423302, 0.568188, 4.363129>,  <1.522453, 0.930218, 4.501344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423302, 0.568188, 4.363129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323207, -0.413492, 0.851212,
		-0.913287, 0.099317, 0.395022,
		-0.247878, -0.905075, -0.345537,
		1.348938, 0.296665, 4.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905930, 1.130095, 3.889303>,  <1.522453, 0.930218, 4.501344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905930, 1.130095, 3.889303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893318, 0.733685, 3.837345>,  <1.885751, 0.495838, 3.806170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893318, 0.733685, 3.837345>,  <1.905930, 1.130095, 3.889303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.893318, 0.733685, 3.837345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323593, 0.112839, -0.939444,
		0.945671, -0.071654, 0.317132,
		-0.031530, -0.991026, -0.129895,
		1.883859, 0.436377, 3.798377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.575366, 0.768057, 3.891977>,  <1.905930, 1.130095, 3.889303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.575366, 0.768057, 3.891977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.292526, 0.598640, 3.665482>,  <2.122823, 0.496991, 3.529584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.292526, 0.598640, 3.665482>,  <2.575366, 0.768057, 3.891977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.292526, 0.598640, 3.665482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514161, 0.241776, -0.822911,
		0.485439, -0.873016, 0.046809,
		-0.707098, -0.423541, -0.566238,
		2.080397, 0.471578, 3.495610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.795158, 0.204121, 3.487922>,  <2.575366, 0.768057, 3.891977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.795158, 0.204121, 3.487922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493797, 0.404491, 3.317532>,  <2.312981, 0.524714, 3.215297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.493797, 0.404491, 3.317532>,  <2.795158, 0.204121, 3.487922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493797, 0.404491, 3.317532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636546, 0.393136, -0.663516,
		-0.164906, -0.771049, -0.615053,
		-0.753403, 0.500927, -0.425977,
		2.267776, 0.554770, 3.189739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.810312, -0.035325, 2.800847>,  <2.795158, 0.204121, 3.487922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.810312, -0.035325, 2.800847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.632812, 0.322887, 2.787510>,  <2.526313, 0.537815, 2.779508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.632812, 0.322887, 2.787510>,  <2.810312, -0.035325, 2.800847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.632812, 0.322887, 2.787510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526740, 0.230546, -0.818165,
		-0.725004, -0.380622, -0.574017,
		-0.443749, 0.895531, -0.033342,
		2.499688, 0.591547, 2.777507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.494240, 0.070678, 2.144989>,  <2.810312, -0.035325, 2.800847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.494240, 0.070678, 2.144989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.523499, 0.446602, 2.278500>,  <2.541054, 0.672156, 2.358606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.523499, 0.446602, 2.278500>,  <2.494240, 0.070678, 2.144989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.523499, 0.446602, 2.278500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295244, 0.299267, -0.907343,
		-0.952618, 0.164914, -0.255583,
		0.073146, 0.939810, 0.333777,
		2.545442, 0.728545, 2.378633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075156, 0.590507, 1.713798>,  <2.494240, 0.070678, 2.144989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075156, 0.590507, 1.713798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.340576, 0.825443, 1.899155>,  <2.499828, 0.966405, 2.010369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.340576, 0.825443, 1.899155>,  <2.075156, 0.590507, 1.713798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.340576, 0.825443, 1.899155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234915, 0.424494, -0.874425,
		-0.710292, 0.689083, 0.143698,
		0.663551, 0.587341, 0.463391,
		2.539641, 1.001645, 2.038172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.991632, 1.322574, 1.564704>,  <2.075156, 0.590507, 1.713798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.991632, 1.322574, 1.564704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.371429, 1.265564, 1.676525>,  <2.599308, 1.231358, 1.743618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.371429, 1.265564, 1.676525>,  <1.991632, 1.322574, 1.564704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.371429, 1.265564, 1.676525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310656, 0.552544, -0.773426,
		-0.044232, 0.821208, 0.568913,
		0.949493, -0.142526, 0.279553,
		2.656277, 1.222806, 1.760391>
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
