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
	<24.470516, 34.982567, 35.446949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587145, 34.968620, 35.064583>,  <24.657122, 34.960251, 34.835163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587145, 34.968620, 35.064583>,  <24.470516, 34.982567, 35.446949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587145, 34.968620, 35.064583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571368, 0.807817, 0.144812,
		0.767154, -0.588401, 0.255458,
		0.291571, -0.034867, -0.955913,
		24.674616, 34.958160, 34.777809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191887, 35.170322, 35.397839>,  <24.470516, 34.982567, 35.446949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191887, 35.170322, 35.397839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048512, 35.242107, 35.031384>,  <24.962486, 35.285179, 34.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048512, 35.242107, 35.031384>,  <25.191887, 35.170322, 35.397839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048512, 35.242107, 35.031384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396990, 0.917498, 0.024402,
		0.844937, -0.354953, -0.400113,
		-0.358441, 0.179459, -0.916141,
		24.940979, 35.295944, 34.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783287, 35.553497, 34.991375>,  <25.191887, 35.170322, 35.397839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783287, 35.553497, 34.991375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413609, 35.611252, 34.849945>,  <25.191801, 35.645905, 34.765087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413609, 35.611252, 34.849945>,  <25.783287, 35.553497, 34.991375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413609, 35.611252, 34.849945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139965, 0.989420, 0.038184,
		0.355346, -0.014199, -0.934627,
		-0.924196, 0.144383, -0.353574,
		25.136349, 35.654568, 34.743874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796202, 36.065639, 34.657913>,  <25.783287, 35.553497, 34.991375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796202, 36.065639, 34.657913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404905, 36.072491, 34.740616>,  <25.170128, 36.076603, 34.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404905, 36.072491, 34.740616>,  <25.796202, 36.065639, 34.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404905, 36.072491, 34.740616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031741, 0.997211, 0.067544,
		-0.205024, 0.072637, -0.976058,
		-0.978242, 0.017133, 0.206758,
		25.111433, 36.077629, 34.802643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406979, 36.275040, 34.149330>,  <25.796202, 36.065639, 34.657913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406979, 36.275040, 34.149330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277054, 36.401997, 34.505703>,  <25.199099, 36.478172, 34.719528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277054, 36.401997, 34.505703>,  <25.406979, 36.275040, 34.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277054, 36.401997, 34.505703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342925, 0.917428, -0.201812,
		-0.881419, 0.239972, -0.406833,
		-0.324811, 0.317395, 0.890931,
		25.179611, 36.497215, 34.772984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490038, 35.513832, 34.004257>,  <25.406979, 36.275040, 34.149330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490038, 35.513832, 34.004257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875881, 35.518902, 33.898907>,  <26.107388, 35.521942, 33.835697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875881, 35.518902, 33.898907>,  <25.490038, 35.513832, 34.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875881, 35.518902, 33.898907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017613, -0.999710, 0.016415,
		-0.263095, -0.020473, -0.964553,
		0.964609, 0.012670, -0.263379,
		26.165264, 35.522701, 33.819893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635489, 35.033676, 33.376854>,  <25.490038, 35.513832, 34.004257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635489, 35.033676, 33.376854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972902, 35.050610, 33.591015>,  <26.175350, 35.060768, 33.719513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972902, 35.050610, 33.591015>,  <25.635489, 35.033676, 33.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972902, 35.050610, 33.591015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098710, -0.992127, -0.077076,
		0.527928, 0.117866, -0.841070,
		0.843533, 0.042331, 0.535406,
		26.225962, 35.063309, 33.751637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965057, 34.486557, 33.086487>,  <25.635489, 35.033676, 33.376854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965057, 34.486557, 33.086487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206099, 34.577114, 33.392590>,  <26.350723, 34.631451, 33.576252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206099, 34.577114, 33.392590>,  <25.965057, 34.486557, 33.086487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206099, 34.577114, 33.392590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275978, -0.958871, 0.066356,
		0.748803, 0.171207, -0.640299,
		0.602603, 0.226396, 0.765254,
		26.386879, 34.645031, 33.622166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637924, 34.184727, 32.887428>,  <25.965057, 34.486557, 33.086487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637924, 34.184727, 32.887428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626205, 34.212898, 33.286263>,  <26.619175, 34.229801, 33.525562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626205, 34.212898, 33.286263>,  <26.637924, 34.184727, 32.887428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626205, 34.212898, 33.286263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236268, -0.968760, 0.075372,
		0.971246, 0.237788, 0.011740,
		-0.029296, 0.070431, 0.997086,
		26.617416, 34.234028, 33.585388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189318, 33.731274, 33.174606>,  <26.637924, 34.184727, 32.887428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189318, 33.731274, 33.174606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925844, 33.755878, 33.474567>,  <26.767761, 33.770641, 33.654545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925844, 33.755878, 33.474567>,  <27.189318, 33.731274, 33.174606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925844, 33.755878, 33.474567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100699, -0.980480, 0.168874,
		0.745652, 0.186749, 0.639631,
		-0.658682, 0.061511, 0.749903,
		26.728239, 33.774330, 33.699539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501064, 33.300186, 33.599701>,  <27.189318, 33.731274, 33.174606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501064, 33.300186, 33.599701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113819, 33.316971, 33.698490>,  <26.881472, 33.327042, 33.757763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113819, 33.316971, 33.698490>,  <27.501064, 33.300186, 33.599701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113819, 33.316971, 33.698490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003705, -0.983364, 0.181608,
		0.250482, 0.176732, 0.951853,
		-0.968114, 0.041963, 0.246969,
		26.823385, 33.329559, 33.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474285, 32.986736, 34.334084>,  <27.501064, 33.300186, 33.599701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474285, 32.986736, 34.334084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138227, 32.953220, 34.119743>,  <26.936594, 32.933109, 33.991138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138227, 32.953220, 34.119743>,  <27.474285, 32.986736, 34.334084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138227, 32.953220, 34.119743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001941, -0.988452, 0.151526,
		-0.542362, 0.126263, 0.830603,
		-0.840143, -0.083794, -0.535854,
		26.886185, 32.928082, 33.958988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123415, 32.568390, 34.649029>,  <27.474285, 32.986736, 34.334084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123415, 32.568390, 34.649029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933218, 32.539108, 34.298363>,  <26.819099, 32.521542, 34.087963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933218, 32.539108, 34.298363>,  <27.123415, 32.568390, 34.649029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933218, 32.539108, 34.298363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108641, -0.984017, 0.141091,
		-0.872986, 0.162330, 0.459940,
		-0.475493, -0.073202, -0.876669,
		26.790569, 32.517147, 34.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463856, 32.249573, 34.863388>,  <27.123415, 32.568390, 34.649029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463856, 32.249573, 34.863388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529301, 32.189884, 34.473320>,  <26.568567, 32.154072, 34.239277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529301, 32.189884, 34.473320>,  <26.463856, 32.249573, 34.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529301, 32.189884, 34.473320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121985, -0.983968, 0.130105,
		-0.978954, 0.097670, -0.179193,
		0.163613, -0.149225, -0.975173,
		26.578384, 32.145115, 34.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822107, 31.766293, 34.578266>,  <26.463856, 32.249573, 34.863388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822107, 31.766293, 34.578266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144167, 31.722218, 34.345165>,  <26.337402, 31.695772, 34.205307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144167, 31.722218, 34.345165>,  <25.822107, 31.766293, 34.578266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144167, 31.722218, 34.345165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112219, -0.993144, 0.032741,
		-0.582360, 0.039034, -0.811993,
		0.805148, -0.110188, -0.582748,
		26.385712, 31.689161, 34.170341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686880, 31.196255, 34.161644>,  <25.822107, 31.766293, 34.578266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686880, 31.196255, 34.161644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079292, 31.236870, 34.095592>,  <26.314739, 31.261238, 34.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079292, 31.236870, 34.095592>,  <25.686880, 31.196255, 34.161644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079292, 31.236870, 34.095592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130775, -0.975461, 0.177126,
		-0.143088, -0.195361, -0.970237,
		0.981032, 0.101538, -0.165125,
		26.373602, 31.267332, 34.046055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841759, 30.717451, 33.566231>,  <25.686880, 31.196255, 34.161644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841759, 30.717451, 33.566231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157438, 30.798405, 33.798164>,  <26.346846, 30.846977, 33.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157438, 30.798405, 33.798164>,  <25.841759, 30.717451, 33.566231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157438, 30.798405, 33.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088422, -0.971750, 0.218825,
		0.607738, -0.121427, -0.784800,
		0.789200, 0.202382, 0.579832,
		26.394197, 30.859119, 33.972115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335899, 30.249390, 33.408928>,  <25.841759, 30.717451, 33.566231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335899, 30.249390, 33.408928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483177, 30.360683, 33.763783>,  <26.571545, 30.427460, 33.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483177, 30.360683, 33.763783>,  <26.335899, 30.249390, 33.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483177, 30.360683, 33.763783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118865, -0.960429, 0.251886,
		0.922120, 0.012707, -0.386696,
		0.368193, 0.278233, 0.887141,
		26.593636, 30.444153, 34.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026695, 29.975086, 33.397587>,  <26.335899, 30.249390, 33.408928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026695, 29.975086, 33.397587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923189, 30.041779, 33.778164>,  <26.861086, 30.081795, 34.006512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923189, 30.041779, 33.778164>,  <27.026695, 29.975086, 33.397587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923189, 30.041779, 33.778164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404864, -0.875573, 0.263547,
		0.876998, 0.453402, 0.159065,
		-0.258766, 0.166731, 0.951442,
		26.845560, 30.091797, 34.063595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516943, 29.669037, 33.685425>,  <27.026695, 29.975086, 33.397587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516943, 29.669037, 33.685425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268389, 29.726154, 33.993580>,  <27.119257, 29.760426, 34.178471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268389, 29.726154, 33.993580>,  <27.516943, 29.669037, 33.685425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268389, 29.726154, 33.993580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379957, -0.804979, 0.455676,
		0.685211, 0.575863, 0.445946,
		-0.621384, 0.142794, 0.770384,
		27.081974, 29.768993, 34.224693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003933, 29.570826, 34.191540>,  <27.516943, 29.669037, 33.685425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003933, 29.570826, 34.191540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641861, 29.546499, 34.359802>,  <27.424618, 29.531902, 34.460758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641861, 29.546499, 34.359802>,  <28.003933, 29.570826, 34.191540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641861, 29.546499, 34.359802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288730, -0.814278, 0.503573,
		0.311903, 0.577280, 0.754629,
		-0.905180, -0.060818, 0.420654,
		27.370306, 29.528254, 34.486000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974018, 29.597082, 35.034534>,  <28.003933, 29.570826, 34.191540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974018, 29.597082, 35.034534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643164, 29.419586, 34.896584>,  <27.444651, 29.313089, 34.813812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643164, 29.419586, 34.896584>,  <27.974018, 29.597082, 35.034534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643164, 29.419586, 34.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174978, -0.786492, 0.592295,
		-0.534065, 0.429564, 0.728182,
		-0.827138, -0.443740, -0.344873,
		27.395021, 29.286465, 34.793121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742947, 29.180922, 35.607971>,  <27.974018, 29.597082, 35.034534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742947, 29.180922, 35.607971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544605, 29.010475, 35.305302>,  <27.425600, 28.908207, 35.123699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544605, 29.010475, 35.305302>,  <27.742947, 29.180922, 35.607971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544605, 29.010475, 35.305302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244221, -0.904595, 0.349377,
		-0.833358, -0.011557, 0.552613,
		-0.495853, -0.426116, -0.756674,
		27.395849, 28.882641, 35.078300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350531, 28.626446, 35.864403>,  <27.742947, 29.180922, 35.607971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350531, 28.626446, 35.864403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380255, 28.553034, 35.472321>,  <27.398088, 28.508987, 35.237072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380255, 28.553034, 35.472321>,  <27.350531, 28.626446, 35.864403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380255, 28.553034, 35.472321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308658, -0.930420, 0.197608,
		-0.948266, -0.317231, -0.012491,
		0.074309, -0.183530, -0.980201,
		27.402548, 28.497974, 35.178261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079531, 28.002766, 35.721439>,  <27.350531, 28.626446, 35.864403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079531, 28.002766, 35.721439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284534, 28.049740, 35.381195>,  <27.407536, 28.077925, 35.177048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284534, 28.049740, 35.381195>,  <27.079531, 28.002766, 35.721439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284534, 28.049740, 35.381195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233846, -0.972251, 0.006668,
		-0.826228, -0.202330, -0.525747,
		0.512507, 0.117434, -0.850615,
		27.438286, 28.084970, 35.126011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017220, 27.341265, 35.547661>,  <27.079531, 28.002766, 35.721439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017220, 27.341265, 35.547661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317064, 27.498487, 35.334648>,  <27.496971, 27.592821, 35.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317064, 27.498487, 35.334648>,  <27.017220, 27.341265, 35.547661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317064, 27.498487, 35.334648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418649, -0.904751, -0.078479,
		-0.512656, -0.164116, -0.842763,
		0.749611, 0.393055, -0.532533,
		27.541948, 27.616404, 35.174889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250202, 26.833639, 35.184650>,  <27.017220, 27.341265, 35.547661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250202, 26.833639, 35.184650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556084, 27.084799, 35.126728>,  <27.739613, 27.235495, 35.091976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556084, 27.084799, 35.126728>,  <27.250202, 26.833639, 35.184650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556084, 27.084799, 35.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614478, -0.778230, -0.129517,
		-0.194015, 0.010063, -0.980947,
		0.764706, 0.627899, -0.144804,
		27.785496, 27.273169, 35.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426512, 26.787071, 34.425262>,  <27.250202, 26.833639, 35.184650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426512, 26.787071, 34.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688030, 26.880817, 34.713047>,  <27.844942, 26.937065, 34.885719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688030, 26.880817, 34.713047>,  <27.426512, 26.787071, 34.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688030, 26.880817, 34.713047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532508, -0.818020, -0.217434,
		0.537574, 0.525276, -0.659620,
		0.653796, 0.234366, 0.719461,
		27.884169, 26.951128, 34.928886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043436, 26.682945, 34.174767>,  <27.426512, 26.787071, 34.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043436, 26.682945, 34.174767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058109, 26.625570, 34.570358>,  <28.066914, 26.591145, 34.807713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058109, 26.625570, 34.570358>,  <28.043436, 26.682945, 34.174767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058109, 26.625570, 34.570358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651784, -0.746744, -0.132482,
		0.757517, 0.649461, 0.066098,
		0.036683, -0.143439, 0.988979,
		28.069115, 26.582539, 34.867050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765406, 26.607925, 34.342598>,  <28.043436, 26.682945, 34.174767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765406, 26.607925, 34.342598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579409, 26.412455, 34.637886>,  <28.467810, 26.295172, 34.815060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.579409, 26.412455, 34.637886>,  <28.765406, 26.607925, 34.342598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579409, 26.412455, 34.637886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655423, -0.750574, -0.084015,
		0.595149, 0.444783, 0.669303,
		-0.464993, -0.488678, 0.738224,
		28.439911, 26.265852, 34.859352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310743, 26.502659, 34.913601>,  <28.765406, 26.607925, 34.342598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310743, 26.502659, 34.913601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040140, 26.208519, 34.897591>,  <28.877779, 26.032036, 34.887985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040140, 26.208519, 34.897591>,  <29.310743, 26.502659, 34.913601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040140, 26.208519, 34.897591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734639, -0.670063, -0.106401,
		0.051421, -0.101386, 0.993517,
		-0.676507, -0.735348, -0.040027,
		28.837189, 25.987915, 34.885582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521330, 25.974194, 35.179085>,  <29.310743, 26.502659, 34.913601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521330, 25.974194, 35.179085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249479, 25.771990, 34.966457>,  <29.086369, 25.650667, 34.838879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249479, 25.771990, 34.966457>,  <29.521330, 25.974194, 35.179085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249479, 25.771990, 34.966457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639001, -0.763854, -0.090578,
		-0.360255, -0.401234, 0.842157,
		-0.679628, -0.505508, -0.531571,
		29.045591, 25.620338, 34.806988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346746, 26.043640, 35.311939>,  <29.521330, 25.974194, 35.179085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346746, 26.043640, 35.311939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644657, 26.210148, 35.520565>,  <30.823402, 26.310053, 35.645741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644657, 26.210148, 35.520565>,  <30.346746, 26.043640, 35.311939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644657, 26.210148, 35.520565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128711, 0.677300, -0.724360,
		-0.654785, 0.606617, 0.450858,
		0.744775, 0.416270, 0.521564,
		30.868090, 26.335030, 35.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404106, 26.627150, 35.858440>,  <30.346746, 26.043640, 35.311939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404106, 26.627150, 35.858440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697741, 26.578310, 35.591244>,  <30.873922, 26.549007, 35.430927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697741, 26.578310, 35.591244>,  <30.404106, 26.627150, 35.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697741, 26.578310, 35.591244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254863, 0.862250, -0.437687,
		0.629413, 0.491546, 0.601849,
		0.734087, -0.122097, -0.667988,
		30.917967, 26.541681, 35.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772179, 27.246899, 35.827480>,  <30.404106, 26.627150, 35.858440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772179, 27.246899, 35.827480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799318, 27.053732, 35.478268>,  <30.815601, 26.937832, 35.268738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799318, 27.053732, 35.478268>,  <30.772179, 27.246899, 35.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799318, 27.053732, 35.478268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308954, 0.821867, -0.478624,
		0.948654, 0.302202, -0.093436,
		0.067849, -0.482916, -0.873034,
		30.819674, 26.908857, 35.216358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250368, 27.541321, 35.423679>,  <30.772179, 27.246899, 35.827480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250368, 27.541321, 35.423679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965126, 27.400414, 35.181229>,  <30.793980, 27.315870, 35.035759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965126, 27.400414, 35.181229>,  <31.250368, 27.541321, 35.423679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965126, 27.400414, 35.181229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241266, 0.935091, -0.259605,
		0.658232, -0.038889, -0.751810,
		-0.713107, -0.352267, -0.606125,
		30.751194, 27.294733, 34.999390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279663, 27.681408, 34.810234>,  <31.250368, 27.541321, 35.423679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279663, 27.681408, 34.810234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881571, 27.653910, 34.837933>,  <30.642715, 27.637411, 34.854549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881571, 27.653910, 34.837933>,  <31.279663, 27.681408, 34.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881571, 27.653910, 34.837933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088535, 0.934518, -0.344729,
		-0.041009, -0.349215, -0.936145,
		-0.995228, -0.068744, 0.069242,
		30.583002, 27.633286, 34.858704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089582, 27.986338, 34.189770>,  <31.279663, 27.681408, 34.810234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089582, 27.986338, 34.189770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774448, 27.982159, 34.436089>,  <30.585369, 27.979650, 34.583881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774448, 27.982159, 34.436089>,  <31.089582, 27.986338, 34.189770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774448, 27.982159, 34.436089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225661, 0.935220, -0.272837,
		-0.573058, -0.353912, -0.739156,
		-0.787834, -0.010448, 0.615799,
		30.538097, 27.979025, 34.620827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540020, 28.240725, 33.731209>,  <31.089582, 27.986338, 34.189770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540020, 28.240725, 33.731209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417160, 28.323118, 34.102848>,  <30.343443, 28.372555, 34.325832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417160, 28.323118, 34.102848>,  <30.540020, 28.240725, 33.731209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417160, 28.323118, 34.102848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380123, 0.868476, -0.318208,
		-0.872448, -0.450911, -0.188453,
		-0.307150, 0.205985, 0.929101,
		30.325014, 28.384914, 34.381577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808603, 28.435663, 33.623619>,  <30.540020, 28.240725, 33.731209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808603, 28.435663, 33.623619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933090, 28.574440, 33.977516>,  <30.007782, 28.657707, 34.189854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933090, 28.574440, 33.977516>,  <29.808603, 28.435663, 33.623619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933090, 28.574440, 33.977516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570642, 0.812684, -0.117955,
		-0.759941, -0.468162, 0.450903,
		0.311219, 0.346943, 0.884745,
		30.026457, 28.678522, 34.242939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248608, 28.837444, 34.007057>,  <29.808603, 28.435663, 33.623619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248608, 28.837444, 34.007057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584915, 28.969175, 34.178944>,  <29.786699, 29.048214, 34.282074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584915, 28.969175, 34.178944>,  <29.248608, 28.837444, 34.007057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584915, 28.969175, 34.178944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325349, 0.941750, -0.085178,
		-0.432735, -0.068192, 0.898939,
		0.840767, 0.329328, 0.429714,
		29.837145, 29.067974, 34.307858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074633, 29.418016, 34.401413>,  <29.248608, 28.837444, 34.007057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074633, 29.418016, 34.401413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470900, 29.470882, 34.414768>,  <29.708660, 29.502602, 34.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470900, 29.470882, 34.414768>,  <29.074633, 29.418016, 34.401413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470900, 29.470882, 34.414768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127745, 0.985576, -0.111000,
		-0.047573, 0.105699, 0.993260,
		0.990666, 0.132164, 0.033385,
		29.768099, 29.510532, 34.424782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201077, 29.974731, 34.896290>,  <29.074633, 29.418016, 34.401413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201077, 29.974731, 34.896290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515947, 29.953207, 34.650539>,  <29.704870, 29.940292, 34.503090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515947, 29.953207, 34.650539>,  <29.201077, 29.974731, 34.896290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515947, 29.953207, 34.650539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058075, 0.985292, -0.160710,
		0.613986, 0.162187, 0.772474,
		0.787178, -0.053812, -0.614374,
		29.752100, 29.937063, 34.466228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565199, 30.524685, 35.097198>,  <29.201077, 29.974731, 34.896290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565199, 30.524685, 35.097198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714266, 30.448122, 34.733994>,  <29.803707, 30.402184, 34.516071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714266, 30.448122, 34.733994>,  <29.565199, 30.524685, 35.097198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714266, 30.448122, 34.733994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094391, 0.965602, -0.242289,
		0.923151, 0.176001, 0.341782,
		0.372669, -0.191408, -0.908009,
		29.826067, 30.390699, 34.461590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012363, 31.107985, 34.980671>,  <29.565199, 30.524685, 35.097198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012363, 31.107985, 34.980671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974573, 30.932968, 34.622982>,  <29.951899, 30.827959, 34.408367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974573, 30.932968, 34.622982>,  <30.012363, 31.107985, 34.980671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974573, 30.932968, 34.622982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210263, 0.886746, -0.411668,
		0.973069, 0.149129, -0.175773,
		-0.094474, -0.437540, -0.894222,
		29.946230, 30.801706, 34.354717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297182, 31.627020, 34.561134>,  <30.012363, 31.107985, 34.980671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297182, 31.627020, 34.561134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102276, 31.383842, 34.310383>,  <29.985332, 31.237936, 34.159931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102276, 31.383842, 34.310383>,  <30.297182, 31.627020, 34.561134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102276, 31.383842, 34.310383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387078, 0.793854, -0.469006,
		0.782771, 0.014109, -0.622150,
		-0.487279, -0.607946, -0.626867,
		29.956097, 31.201458, 34.122318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479307, 31.819666, 33.865974>,  <30.297182, 31.627020, 34.561134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479307, 31.819666, 33.865974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123749, 31.637505, 33.885876>,  <29.910414, 31.528208, 33.897816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123749, 31.637505, 33.885876>,  <30.479307, 31.819666, 33.865974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123749, 31.637505, 33.885876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430242, 0.792573, -0.432112,
		0.157352, -0.405508, -0.900446,
		-0.888894, -0.455404, 0.049753,
		29.857080, 31.500883, 33.900803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241205, 31.765326, 33.218872>,  <30.479307, 31.819666, 33.865974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241205, 31.765326, 33.218872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910721, 31.748190, 33.443565>,  <29.712431, 31.737909, 33.578381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910721, 31.748190, 33.443565>,  <30.241205, 31.765326, 33.218872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910721, 31.748190, 33.443565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426333, 0.699337, -0.573732,
		-0.368260, -0.713508, -0.596063,
		-0.826211, -0.042839, 0.561730,
		29.662857, 31.735338, 33.612083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713526, 31.942503, 32.807758>,  <30.241205, 31.765326, 33.218872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713526, 31.942503, 32.807758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532318, 31.990501, 33.161114>,  <29.423594, 32.019302, 33.373127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532318, 31.990501, 33.161114>,  <29.713526, 31.942503, 32.807758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532318, 31.990501, 33.161114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437813, 0.833232, -0.337703,
		-0.776590, -0.539745, -0.324934,
		-0.453019, 0.119996, 0.883388,
		29.396412, 32.026501, 33.426128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136209, 32.332405, 32.638000>,  <29.713526, 31.942503, 32.807758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136209, 32.332405, 32.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137072, 32.361660, 33.036930>,  <29.137589, 32.379211, 33.276287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137072, 32.361660, 33.036930>,  <29.136209, 32.332405, 32.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137072, 32.361660, 33.036930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291324, 0.954108, -0.069337,
		-0.956622, -0.290393, 0.023362,
		0.002155, 0.073136, 0.997320,
		29.137718, 32.383602, 33.336124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527809, 32.671032, 32.790745>,  <29.136209, 32.332405, 32.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527809, 32.671032, 32.790745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783489, 32.736347, 33.091347>,  <28.936897, 32.775536, 33.271709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783489, 32.736347, 33.091347>,  <28.527809, 32.671032, 32.790745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783489, 32.736347, 33.091347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217389, 0.975709, -0.027102,
		-0.737677, -0.146045, 0.659169,
		0.639199, 0.163289, 0.751506,
		28.975248, 32.785336, 33.316799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121922, 33.076458, 33.322308>,  <28.527809, 32.671032, 32.790745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121922, 33.076458, 33.322308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510864, 33.143871, 33.386948>,  <28.744230, 33.184319, 33.425732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510864, 33.143871, 33.386948>,  <28.121922, 33.076458, 33.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510864, 33.143871, 33.386948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203472, 0.951108, 0.232364,
		-0.114537, -0.258822, 0.959110,
		0.972358, 0.168538, 0.161600,
		28.802572, 33.194431, 33.435429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099277, 33.609615, 33.892605>,  <28.121922, 33.076458, 33.322308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099277, 33.609615, 33.892605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480740, 33.593357, 33.773350>,  <28.709618, 33.583603, 33.701797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480740, 33.593357, 33.773350>,  <28.099277, 33.609615, 33.892605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480740, 33.593357, 33.773350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106179, 0.972552, 0.207050,
		0.281542, -0.229110, 0.931795,
		0.953656, -0.040644, -0.298141,
		28.766836, 33.581165, 33.683907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552002, 33.945232, 34.368538>,  <28.099277, 33.609615, 33.892605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552002, 33.945232, 34.368538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769331, 33.933022, 34.032951>,  <28.899729, 33.925694, 33.831600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769331, 33.933022, 34.032951>,  <28.552002, 33.945232, 34.368538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769331, 33.933022, 34.032951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250030, 0.959874, 0.126991,
		0.801427, -0.278764, 0.529156,
		0.543324, -0.030531, -0.838968,
		28.932327, 33.923862, 33.781261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149458, 34.343609, 34.472439>,  <28.552002, 33.945232, 34.368538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149458, 34.343609, 34.472439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130487, 34.341591, 34.072895>,  <29.119106, 34.340382, 33.833168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130487, 34.341591, 34.072895>,  <29.149458, 34.343609, 34.472439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130487, 34.341591, 34.072895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181023, 0.983385, -0.013559,
		0.982335, -0.181460, -0.045723,
		-0.047424, -0.005043, -0.998862,
		29.116261, 34.340076, 33.773235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819906, 34.756332, 34.182175>,  <29.149458, 34.343609, 34.472439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819906, 34.756332, 34.182175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548626, 34.790531, 33.890221>,  <29.385857, 34.811050, 33.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548626, 34.790531, 33.890221>,  <29.819906, 34.756332, 34.182175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548626, 34.790531, 33.890221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242709, 0.963536, -0.112651,
		0.693638, -0.253550, -0.674225,
		-0.678203, 0.085502, -0.729884,
		29.345165, 34.816181, 33.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078573, 35.205772, 33.606735>,  <29.819906, 34.756332, 34.182175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078573, 35.205772, 33.606735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684147, 35.196590, 33.540825>,  <29.447491, 35.191082, 33.501278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684147, 35.196590, 33.540825>,  <30.078573, 35.205772, 33.606735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684147, 35.196590, 33.540825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019284, 0.967988, -0.250256,
		0.165244, -0.249946, -0.954055,
		-0.986064, -0.022956, -0.164774,
		29.388329, 35.189705, 33.491394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394396, 35.841415, 33.164104>,  <30.078573, 35.205772, 33.606735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394396, 35.841415, 33.164104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780487, 35.893444, 33.254807>,  <31.012142, 35.924660, 33.309227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780487, 35.893444, 33.254807>,  <30.394396, 35.841415, 33.164104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780487, 35.893444, 33.254807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234597, 0.813681, 0.531872,
		-0.115324, -0.566574, 0.815901,
		0.965228, 0.130071, 0.226754,
		31.070055, 35.932465, 33.322834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462824, 35.789013, 34.022839>,  <30.394396, 35.841415, 33.164104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462824, 35.789013, 34.022839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747831, 35.995270, 33.832497>,  <30.918835, 36.119022, 33.718292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747831, 35.995270, 33.832497>,  <30.462824, 35.789013, 34.022839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747831, 35.995270, 33.832497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257501, 0.823030, 0.506276,
		0.652696, -0.238198, 0.719201,
		0.712518, 0.515639, -0.475852,
		30.961586, 36.149960, 33.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895676, 36.235012, 34.649265>,  <30.462824, 35.789013, 34.022839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895676, 36.235012, 34.649265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980698, 36.362312, 34.279716>,  <31.031712, 36.438694, 34.057987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980698, 36.362312, 34.279716>,  <30.895676, 36.235012, 34.649265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980698, 36.362312, 34.279716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034375, 0.942456, 0.332560,
		0.976544, -0.102445, 0.189383,
		0.212554, 0.318249, -0.923871,
		31.044464, 36.457787, 34.002556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135645, 36.182064, 35.402039>,  <30.895676, 36.235012, 34.649265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135645, 36.182064, 35.402039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842920, 36.115314, 35.666344>,  <30.667286, 36.075264, 35.824928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842920, 36.115314, 35.666344>,  <31.135645, 36.182064, 35.402039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842920, 36.115314, 35.666344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562935, 0.398480, 0.724098,
		-0.384130, 0.901870, -0.197675,
		-0.731811, -0.166870, 0.660762,
		30.623377, 36.065254, 35.864571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846655, 36.752560, 35.741562>,  <31.135645, 36.182064, 35.402039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846655, 36.752560, 35.741562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895273, 36.415455, 35.951317>,  <30.924444, 36.213192, 36.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895273, 36.415455, 35.951317>,  <30.846655, 36.752560, 35.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895273, 36.415455, 35.951317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789526, 0.402265, 0.463499,
		-0.601561, 0.357679, 0.714276,
		0.121545, -0.842763, 0.524384,
		30.931736, 36.162624, 36.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926201, 36.949463, 36.459938>,  <30.846655, 36.752560, 35.741562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926201, 36.949463, 36.459938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049067, 36.568844, 36.454201>,  <31.122786, 36.340473, 36.450760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049067, 36.568844, 36.454201>,  <30.926201, 36.949463, 36.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049067, 36.568844, 36.454201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674941, 0.207199, 0.708183,
		-0.670898, -0.227211, 0.705883,
		0.307166, -0.951548, -0.014345,
		31.141216, 36.283379, 36.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986029, 36.672913, 37.159252>,  <30.926201, 36.949463, 36.459938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986029, 36.672913, 37.159252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232187, 36.463745, 36.923340>,  <31.379883, 36.338245, 36.781792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232187, 36.463745, 36.923340>,  <30.986029, 36.672913, 37.159252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232187, 36.463745, 36.923340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722345, 0.074700, 0.687487,
		-0.315445, -0.849101, 0.423700,
		0.615396, -0.522922, -0.589780,
		31.416805, 36.306870, 36.746407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143532, 36.090309, 37.584854>,  <30.986029, 36.672913, 37.159252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143532, 36.090309, 37.584854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424591, 36.145832, 37.305706>,  <31.593225, 36.179146, 37.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424591, 36.145832, 37.305706>,  <31.143532, 36.090309, 37.584854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424591, 36.145832, 37.305706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711057, -0.100868, 0.695862,
		0.026196, -0.985170, -0.169572,
		0.702646, 0.138805, -0.697870,
		31.635386, 36.187473, 37.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559975, 35.554054, 37.573708>,  <31.143532, 36.090309, 37.584854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559975, 35.554054, 37.573708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786207, 35.843845, 37.416103>,  <31.921947, 36.017719, 37.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786207, 35.843845, 37.416103>,  <31.559975, 35.554054, 37.573708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786207, 35.843845, 37.416103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743574, -0.241350, 0.623577,
		0.356674, -0.645662, -0.675207,
		0.565581, 0.724479, -0.394014,
		31.955881, 36.061188, 37.297897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189884, 35.243675, 37.591415>,  <31.559975, 35.554054, 37.573708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189884, 35.243675, 37.591415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292992, 35.626896, 37.541309>,  <32.354855, 35.856831, 37.511246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292992, 35.626896, 37.541309>,  <32.189884, 35.243675, 37.591415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292992, 35.626896, 37.541309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810003, -0.143595, 0.568573,
		0.526737, -0.248020, -0.813040,
		0.257766, 0.958054, -0.125260,
		32.370323, 35.914310, 37.503731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939968, 35.235573, 37.696960>,  <32.189884, 35.243675, 37.591415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939968, 35.235573, 37.696960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883678, 35.629803, 37.659359>,  <32.849903, 35.866341, 37.636799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883678, 35.629803, 37.659359>,  <32.939968, 35.235573, 37.696960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883678, 35.629803, 37.659359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893488, 0.167329, 0.416750,
		0.426469, -0.025345, -0.904147,
		-0.140727, 0.985575, -0.094006,
		32.841461, 35.925476, 37.631157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578041, 35.499035, 37.590603>,  <32.939968, 35.235573, 37.696960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578041, 35.499035, 37.590603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389946, 35.815006, 37.748028>,  <33.277088, 36.004589, 37.842484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389946, 35.815006, 37.748028>,  <33.578041, 35.499035, 37.590603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389946, 35.815006, 37.748028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752800, 0.126264, 0.646026,
		0.460620, 0.600061, -0.654031,
		-0.470236, 0.789926, 0.393566,
		33.248875, 36.051983, 37.866096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149399, 36.010529, 37.672634>,  <33.578041, 35.499035, 37.590603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149399, 36.010529, 37.672634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835766, 36.071491, 37.913300>,  <33.647587, 36.108067, 38.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835766, 36.071491, 37.913300>,  <34.149399, 36.010529, 37.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835766, 36.071491, 37.913300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610607, 0.015629, 0.791780,
		0.111267, 0.988195, -0.105313,
		-0.784078, 0.152404, 0.601659,
		33.600544, 36.117214, 38.093796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370266, 36.699036, 38.197227>,  <34.149399, 36.010529, 37.672634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370266, 36.699036, 38.197227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072571, 36.460110, 38.316769>,  <33.893951, 36.316753, 38.388493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072571, 36.460110, 38.316769>,  <34.370266, 36.699036, 38.197227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072571, 36.460110, 38.316769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422605, -0.074642, 0.903235,
		-0.517212, 0.798523, 0.307982,
		-0.744242, -0.597319, 0.298855,
		33.849297, 36.280914, 38.406425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284943, 36.885681, 38.857193>,  <34.370266, 36.699036, 38.197227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284943, 36.885681, 38.857193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104927, 36.528675, 38.845375>,  <33.996918, 36.314472, 38.838284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104927, 36.528675, 38.845375>,  <34.284943, 36.885681, 38.857193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104927, 36.528675, 38.845375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477144, -0.268298, 0.836869,
		-0.754848, 0.362530, 0.546605,
		-0.450043, -0.892518, -0.029545,
		33.969913, 36.260921, 38.836510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096027, 36.823109, 39.555992>,  <34.284943, 36.885681, 38.857193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096027, 36.823109, 39.555992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102100, 36.454582, 39.400585>,  <34.105743, 36.233467, 39.307343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102100, 36.454582, 39.400585>,  <34.096027, 36.823109, 39.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102100, 36.454582, 39.400585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430897, -0.344601, 0.834013,
		-0.902273, -0.180072, 0.391761,
		0.015181, -0.921317, -0.388516,
		34.106655, 36.178188, 39.284031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877605, 36.462181, 40.128757>,  <34.096027, 36.823109, 39.555992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877605, 36.462181, 40.128757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018051, 36.173691, 39.889908>,  <34.102318, 36.000599, 39.746597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018051, 36.173691, 39.889908>,  <33.877605, 36.462181, 40.128757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018051, 36.173691, 39.889908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331322, -0.500767, 0.799661,
		-0.875752, -0.478615, 0.063129,
		0.351117, -0.721221, -0.597124,
		34.123386, 35.957325, 39.710770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655861, 35.762787, 40.480225>,  <33.877605, 36.462181, 40.128757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655861, 35.762787, 40.480225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957973, 35.674416, 40.233406>,  <34.139240, 35.621391, 40.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957973, 35.674416, 40.233406>,  <33.655861, 35.762787, 40.480225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957973, 35.674416, 40.233406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363103, -0.642735, 0.674572,
		-0.545627, -0.733542, -0.405226,
		0.755280, -0.220926, -0.617044,
		34.184559, 35.608139, 40.048294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665722, 35.015697, 40.258461>,  <33.655861, 35.762787, 40.480225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665722, 35.015697, 40.258461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043926, 35.142647, 40.229374>,  <34.270847, 35.218815, 40.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043926, 35.142647, 40.229374>,  <33.665722, 35.015697, 40.258461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043926, 35.142647, 40.229374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240045, -0.528584, 0.814235,
		0.219983, -0.787320, -0.575965,
		0.945509, 0.317375, -0.072713,
		34.327579, 35.237858, 40.207561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041279, 34.489147, 40.042904>,  <33.665722, 35.015697, 40.258461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041279, 34.489147, 40.042904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299591, 34.739670, 40.217583>,  <34.454578, 34.889984, 40.322392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299591, 34.739670, 40.217583>,  <34.041279, 34.489147, 40.042904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299591, 34.739670, 40.217583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427705, -0.770529, 0.472603,
		0.632485, -0.118418, -0.765467,
		0.645780, 0.626308, 0.436700,
		34.493324, 34.927563, 40.348591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697029, 34.236172, 39.964245>,  <34.041279, 34.489147, 40.042904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697029, 34.236172, 39.964245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687874, 34.476070, 40.284191>,  <34.682381, 34.620010, 40.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687874, 34.476070, 40.284191>,  <34.697029, 34.236172, 39.964245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687874, 34.476070, 40.284191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109595, -0.793745, 0.598295,
		0.993713, 0.101352, -0.047565,
		-0.022884, 0.599747, 0.799863,
		34.681007, 34.655994, 40.524151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244308, 34.057793, 40.497131>,  <34.697029, 34.236172, 39.964245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244308, 34.057793, 40.497131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975338, 34.270473, 40.703098>,  <34.813953, 34.398083, 40.826679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975338, 34.270473, 40.703098>,  <35.244308, 34.057793, 40.497131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975338, 34.270473, 40.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094664, -0.751745, 0.652624,
		0.734083, 0.390099, 0.555828,
		-0.672429, 0.531697, 0.514915,
		34.773609, 34.429981, 40.857574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384731, 34.011726, 41.256657>,  <35.244308, 34.057793, 40.497131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384731, 34.011726, 41.256657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010876, 34.150955, 41.285767>,  <34.786564, 34.234493, 41.303234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010876, 34.150955, 41.285767>,  <35.384731, 34.011726, 41.256657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010876, 34.150955, 41.285767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114190, -0.487599, 0.865568,
		0.336768, 0.800682, 0.495475,
		-0.934638, 0.348074, 0.072778,
		34.730484, 34.255379, 41.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239349, 34.059402, 42.079597>,  <35.384731, 34.011726, 41.256657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239349, 34.059402, 42.079597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870483, 34.081543, 41.926472>,  <34.649162, 34.094826, 41.834595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870483, 34.081543, 41.926472>,  <35.239349, 34.059402, 42.079597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870483, 34.081543, 41.926472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371945, -0.398497, 0.838366,
		-0.106148, 0.915498, 0.388067,
		-0.922166, 0.055349, -0.382814,
		34.593834, 34.098148, 41.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864082, 34.279598, 42.613491>,  <35.239349, 34.059402, 42.079597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864082, 34.279598, 42.613491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584026, 34.117565, 42.378300>,  <34.415993, 34.020344, 42.237186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584026, 34.117565, 42.378300>,  <34.864082, 34.279598, 42.613491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584026, 34.117565, 42.378300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516263, -0.281659, 0.808789,
		-0.493236, 0.869814, -0.011929,
		-0.700136, -0.405083, -0.587977,
		34.373985, 33.996040, 42.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264435, 34.560719, 42.734116>,  <34.864082, 34.279598, 42.613491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264435, 34.560719, 42.734116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187973, 34.196960, 42.586357>,  <34.142094, 33.978706, 42.497700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187973, 34.196960, 42.586357>,  <34.264435, 34.560719, 42.734116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187973, 34.196960, 42.586357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558254, -0.208818, 0.802961,
		-0.807348, 0.359713, -0.467757,
		-0.191159, -0.909396, -0.369400,
		34.130627, 33.924141, 42.475536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684933, 34.390705, 43.051811>,  <34.264435, 34.560719, 42.734116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684933, 34.390705, 43.051811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728146, 34.026119, 42.893040>,  <33.754074, 33.807365, 42.797775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728146, 34.026119, 42.893040>,  <33.684933, 34.390705, 43.051811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728146, 34.026119, 42.893040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529110, -0.390736, 0.753238,
		-0.841648, 0.128647, -0.524479,
		0.108031, -0.911469, -0.396931,
		33.760555, 33.752678, 42.773960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997753, 34.005611, 43.174847>,  <33.684933, 34.390705, 43.051811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997753, 34.005611, 43.174847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291542, 33.738567, 43.126095>,  <33.467815, 33.578342, 43.096844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291542, 33.738567, 43.126095>,  <32.997753, 34.005611, 43.174847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291542, 33.738567, 43.126095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352943, -0.529162, 0.771634,
		-0.579647, -0.523721, -0.624280,
		0.734466, -0.667611, -0.121883,
		33.511883, 33.538284, 43.089531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659470, 33.362091, 43.016449>,  <32.997753, 34.005611, 43.174847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659470, 33.362091, 43.016449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014160, 33.235943, 43.151661>,  <33.226974, 33.160255, 43.232788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014160, 33.235943, 43.151661>,  <32.659470, 33.362091, 43.016449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014160, 33.235943, 43.151661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459053, -0.514095, 0.724553,
		-0.054722, -0.797651, -0.600631,
		0.886722, -0.315370, 0.338032,
		33.280178, 33.141331, 43.253071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527336, 32.680702, 43.190952>,  <32.659470, 33.362091, 43.016449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527336, 32.680702, 43.190952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850071, 32.770031, 43.409725>,  <33.043713, 32.823627, 43.540989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850071, 32.770031, 43.409725>,  <32.527336, 32.680702, 43.190952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850071, 32.770031, 43.409725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358002, -0.551621, 0.753358,
		0.469943, -0.803642, -0.365120,
		0.806838, 0.223321, 0.546936,
		33.092121, 32.837029, 43.573807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572800, 32.050144, 43.490685>,  <32.527336, 32.680702, 43.190952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572800, 32.050144, 43.490685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788128, 32.327698, 43.681988>,  <32.917324, 32.494232, 43.796768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788128, 32.327698, 43.681988>,  <32.572800, 32.050144, 43.490685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788128, 32.327698, 43.681988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325720, -0.352086, 0.877463,
		0.777247, -0.628137, 0.036477,
		0.538324, 0.693887, 0.478255,
		32.949627, 32.535866, 43.825462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790417, 31.663778, 44.054825>,  <32.572800, 32.050144, 43.490685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790417, 31.663778, 44.054825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864346, 32.042336, 44.160789>,  <32.908703, 32.269470, 44.224369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864346, 32.042336, 44.160789>,  <32.790417, 31.663778, 44.054825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864346, 32.042336, 44.160789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279408, -0.207834, 0.937410,
		0.942217, -0.247271, 0.226018,
		0.184820, 0.946394, 0.264914,
		32.919792, 32.326252, 44.240265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321865, 31.652039, 44.638882>,  <32.790417, 31.663778, 44.054825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321865, 31.652039, 44.638882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069954, 31.962738, 44.641388>,  <32.918808, 32.149158, 44.642891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069954, 31.962738, 44.641388>,  <33.321865, 31.652039, 44.638882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069954, 31.962738, 44.641388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376904, -0.312624, 0.871900,
		0.679204, 0.546746, 0.489644,
		-0.629782, 0.776747, 0.006265,
		32.881020, 32.195763, 44.643269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389668, 32.004608, 45.294498>,  <33.321865, 31.652039, 44.638882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389668, 32.004608, 45.294498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041027, 32.155987, 45.169861>,  <32.831844, 32.246815, 45.095078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041027, 32.155987, 45.169861>,  <33.389668, 32.004608, 45.294498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041027, 32.155987, 45.169861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362283, -0.069059, 0.929506,
		0.330251, 0.923043, 0.197297,
		-0.871599, 0.378448, -0.311596,
		32.779549, 32.269520, 45.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172333, 32.541473, 45.745270>,  <33.389668, 32.004608, 45.294498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172333, 32.541473, 45.745270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837990, 32.410225, 45.569237>,  <32.637383, 32.331474, 45.463619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837990, 32.410225, 45.569237>,  <33.172333, 32.541473, 45.745270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837990, 32.410225, 45.569237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412389, -0.153793, 0.897933,
		-0.362315, 0.932031, -0.006765,
		-0.835861, -0.328125, -0.440081,
		32.587231, 32.311787, 45.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689423, 32.960178, 45.973759>,  <33.172333, 32.541473, 45.745270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689423, 32.960178, 45.973759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542870, 32.609142, 45.850086>,  <32.454937, 32.398521, 45.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542870, 32.609142, 45.850086>,  <32.689423, 32.960178, 45.973759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542870, 32.609142, 45.850086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540617, -0.069668, 0.838379,
		-0.757295, 0.474321, -0.448915,
		-0.366386, -0.877591, -0.309185,
		32.432953, 32.345863, 45.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132301, 32.957367, 46.316017>,  <32.689423, 32.960178, 45.973759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132301, 32.957367, 46.316017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169823, 32.576973, 46.198154>,  <32.192337, 32.348736, 46.127438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169823, 32.576973, 46.198154>,  <32.132301, 32.957367, 46.316017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169823, 32.576973, 46.198154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340280, -0.308767, 0.888185,
		-0.935634, 0.016952, -0.352565,
		0.093804, -0.950987, -0.294661,
		32.197964, 32.291676, 46.109756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417336, 32.470997, 46.465721>,  <32.132301, 32.957367, 46.316017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417336, 32.470997, 46.465721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752426, 32.253445, 46.446102>,  <31.953482, 32.122913, 46.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752426, 32.253445, 46.446102>,  <31.417336, 32.470997, 46.465721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752426, 32.253445, 46.446102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167260, -0.341046, 0.925047,
		-0.519843, -0.766734, -0.376673,
		0.837727, -0.543881, -0.049047,
		32.003746, 32.090282, 46.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278706, 31.990494, 46.944012>,  <31.417336, 32.470997, 46.465721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278706, 31.990494, 46.944012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653656, 31.882727, 46.855701>,  <31.878626, 31.818068, 46.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653656, 31.882727, 46.855701>,  <31.278706, 31.990494, 46.944012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653656, 31.882727, 46.855701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060354, -0.498616, 0.864719,
		-0.343050, -0.823892, -0.451131,
		0.937376, -0.269415, -0.220775,
		31.934868, 31.801903, 46.789467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292612, 31.246523, 46.976479>,  <31.278706, 31.990494, 46.944012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292612, 31.246523, 46.976479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651236, 31.408371, 47.048553>,  <31.866409, 31.505480, 47.091797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651236, 31.408371, 47.048553>,  <31.292612, 31.246523, 46.976479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651236, 31.408371, 47.048553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026113, -0.454390, 0.890420,
		0.442158, -0.793607, -0.417953,
		0.896557, 0.404621, 0.180189,
		31.920202, 31.529757, 47.102612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662363, 30.744038, 47.204048>,  <31.292612, 31.246523, 46.976479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662363, 30.744038, 47.204048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906757, 31.043583, 47.306732>,  <32.053394, 31.223310, 47.368343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906757, 31.043583, 47.306732>,  <31.662363, 30.744038, 47.204048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906757, 31.043583, 47.306732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289743, -0.513318, 0.807807,
		0.736712, -0.419179, -0.530609,
		0.610987, 0.748861, 0.256713,
		32.090054, 31.268242, 47.383747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354904, 30.493004, 47.211502>,  <31.662363, 30.744038, 47.204048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354904, 30.493004, 47.211502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299225, 30.794022, 47.468967>,  <32.265816, 30.974632, 47.623447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299225, 30.794022, 47.468967>,  <32.354904, 30.493004, 47.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299225, 30.794022, 47.468967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219906, -0.610268, 0.761061,
		0.965538, 0.247485, -0.080540,
		-0.139201, 0.752545, 0.643661,
		32.257465, 31.019785, 47.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549435, 30.115454, 47.834572>,  <32.354904, 30.493004, 47.211502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549435, 30.115454, 47.834572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427734, 30.475529, 47.959213>,  <32.354713, 30.691574, 48.033997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427734, 30.475529, 47.959213>,  <32.549435, 30.115454, 47.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427734, 30.475529, 47.959213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215325, -0.383635, 0.898031,
		0.927936, 0.206131, 0.310554,
		-0.304252, 0.900185, 0.311604,
		32.336460, 30.745584, 48.052696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931843, 30.333790, 48.491776>,  <32.549435, 30.115454, 47.834572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931843, 30.333790, 48.491776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613792, 30.576365, 48.492874>,  <32.422962, 30.721909, 48.493534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613792, 30.576365, 48.492874>,  <32.931843, 30.333790, 48.491776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613792, 30.576365, 48.492874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125272, -0.168680, 0.977678,
		0.593364, 0.777033, 0.210091,
		-0.795127, 0.606437, 0.002748,
		32.375256, 30.758295, 48.493698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891151, 30.409828, 49.114674>,  <32.931843, 30.333790, 48.491776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891151, 30.409828, 49.114674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527035, 30.529079, 48.999794>,  <32.308563, 30.600630, 48.930866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527035, 30.529079, 48.999794>,  <32.891151, 30.409828, 49.114674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527035, 30.529079, 48.999794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333178, -0.115896, 0.935714,
		0.245676, 0.947464, 0.204828,
		-0.910294, 0.298126, -0.287201,
		32.253948, 30.618517, 48.913635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594296, 30.942957, 49.684952>,  <32.891151, 30.409828, 49.114674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594296, 30.942957, 49.684952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296963, 30.779924, 49.472786>,  <32.118565, 30.682106, 49.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296963, 30.779924, 49.472786>,  <32.594296, 30.942957, 49.684952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296963, 30.779924, 49.472786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415927, -0.339402, 0.843689,
		-0.523894, 0.847753, 0.082764,
		-0.743330, -0.407580, -0.530415,
		32.073963, 30.657650, 49.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068699, 31.207392, 49.883579>,  <32.594296, 30.942957, 49.684952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068699, 31.207392, 49.883579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902391, 30.883329, 49.718277>,  <31.802607, 30.688892, 49.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902391, 30.883329, 49.718277>,  <32.068699, 31.207392, 49.883579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902391, 30.883329, 49.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520414, -0.160712, 0.838655,
		-0.745857, 0.563751, -0.354798,
		-0.415773, -0.810158, -0.413252,
		31.777660, 30.640282, 49.594303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296497, 31.211813, 50.071175>,  <32.068699, 31.207392, 49.883579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296497, 31.211813, 50.071175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436001, 30.847429, 49.983070>,  <31.519703, 30.628799, 49.930206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436001, 30.847429, 49.983070>,  <31.296497, 31.211813, 50.071175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436001, 30.847429, 49.983070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421611, -0.362393, 0.831213,
		-0.837025, -0.197028, -0.510459,
		0.348760, -0.910962, -0.220263,
		31.540628, 30.574141, 49.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816410, 30.751698, 49.940113>,  <31.296497, 31.211813, 50.071175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816410, 30.751698, 49.940113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116539, 30.514580, 50.057152>,  <31.296616, 30.372309, 50.127377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116539, 30.514580, 50.057152>,  <30.816410, 30.751698, 49.940113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116539, 30.514580, 50.057152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542657, -0.299527, 0.784734,
		-0.377544, -0.747583, -0.546425,
		0.750323, -0.592793, 0.292597,
		31.341637, 30.336742, 50.144932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571236, 30.220266, 50.169323>,  <30.816410, 30.751698, 49.940113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571236, 30.220266, 50.169323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925398, 30.184587, 50.351795>,  <31.137896, 30.163181, 50.461281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925398, 30.184587, 50.351795>,  <30.571236, 30.220266, 50.169323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925398, 30.184587, 50.351795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461960, -0.060121, 0.884861,
		-0.051464, -0.994201, -0.094418,
		0.885406, -0.089155, 0.456188,
		31.191019, 30.157829, 50.488651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420067, 29.593306, 50.560780>,  <30.571236, 30.220266, 50.169323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420067, 29.593306, 50.560780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698822, 29.845840, 50.696877>,  <30.866076, 29.997360, 50.778534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698822, 29.845840, 50.696877>,  <30.420067, 29.593306, 50.560780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698822, 29.845840, 50.696877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274286, -0.203730, 0.939820,
		0.662659, -0.748271, 0.031190,
		0.696886, 0.631335, 0.340244,
		30.907888, 30.035240, 50.798950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900757, 29.280556, 50.984417>,  <30.420067, 29.593306, 50.560780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900757, 29.280556, 50.984417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826809, 29.656097, 51.100609>,  <30.782440, 29.881422, 51.170322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826809, 29.656097, 51.100609>,  <30.900757, 29.280556, 50.984417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826809, 29.656097, 51.100609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301216, -0.335478, 0.892594,
		0.935463, 0.077518, 0.344818,
		-0.184871, 0.938853, 0.290478,
		30.771347, 29.937754, 51.187752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195856, 29.318394, 51.616898>,  <30.900757, 29.280556, 50.984417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195856, 29.318394, 51.616898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890955, 29.577152, 51.608009>,  <30.708014, 29.732409, 51.602676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890955, 29.577152, 51.608009>,  <31.195856, 29.318394, 51.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890955, 29.577152, 51.608009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269354, -0.285795, 0.919658,
		0.588574, 0.706997, 0.392092,
		-0.762253, 0.646898, -0.022221,
		30.662279, 29.771221, 51.601341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764441, 29.249331, 51.209396>,  <31.195856, 29.318394, 51.616898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764441, 29.249331, 51.209396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607159, 29.336781, 50.852165>,  <31.512789, 29.389250, 50.637825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607159, 29.336781, 50.852165>,  <31.764441, 29.249331, 51.209396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607159, 29.336781, 50.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872686, -0.394571, 0.287634,
		-0.289500, 0.892478, 0.345936,
		-0.393204, 0.218623, -0.893081,
		31.489197, 29.402367, 50.584240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004616, 28.495859, 50.944199>,  <31.764441, 29.249331, 51.209396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004616, 28.495859, 50.944199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370640, 28.370625, 50.842506>,  <32.590256, 28.295483, 50.781490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370640, 28.370625, 50.842506>,  <32.004616, 28.495859, 50.944199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370640, 28.370625, 50.842506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279895, -0.039144, -0.959232,
		0.290372, 0.948917, -0.123450,
		0.915065, -0.313087, -0.254231,
		32.645161, 28.276699, 50.766235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098652, 28.763409, 50.315666>,  <32.004616, 28.495859, 50.944199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098652, 28.763409, 50.315666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356369, 28.457691, 50.326542>,  <32.511002, 28.274261, 50.333069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356369, 28.457691, 50.326542>,  <32.098652, 28.763409, 50.315666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356369, 28.457691, 50.326542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192150, -0.196194, -0.961554,
		0.740244, 0.614300, -0.273265,
		0.644296, -0.764293, 0.027194,
		32.549656, 28.228403, 50.334702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796146, 28.863665, 49.902466>,  <32.098652, 28.763409, 50.315666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796146, 28.863665, 49.902466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622890, 28.505314, 49.942047>,  <32.518936, 28.290304, 49.965797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622890, 28.505314, 49.942047>,  <32.796146, 28.863665, 49.902466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622890, 28.505314, 49.942047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062532, -0.079657, -0.994859,
		0.899153, -0.437105, -0.021518,
		-0.433143, -0.895876, 0.098957,
		32.492947, 28.236551, 49.971733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145775, 28.360395, 49.471977>,  <32.796146, 28.863665, 49.902466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145775, 28.360395, 49.471977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754433, 28.325439, 49.547005>,  <32.519627, 28.304466, 49.592022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754433, 28.325439, 49.547005>,  <33.145775, 28.360395, 49.471977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754433, 28.325439, 49.547005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192354, 0.049866, -0.980058,
		0.076308, -0.994924, -0.065599,
		-0.978354, -0.087405, 0.187572,
		32.460926, 28.299223, 49.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016090, 27.773098, 49.123272>,  <33.145775, 28.360395, 49.471977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016090, 27.773098, 49.123272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738983, 28.061558, 49.125156>,  <32.572720, 28.234634, 49.126286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738983, 28.061558, 49.125156>,  <33.016090, 27.773098, 49.123272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738983, 28.061558, 49.125156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054441, -0.045784, -0.997467,
		-0.719107, -0.691265, 0.070977,
		-0.692763, 0.721150, 0.004709,
		32.531155, 28.277903, 49.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383060, 27.488247, 48.726910>,  <33.016090, 27.773098, 49.123272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383060, 27.488247, 48.726910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449482, 27.882326, 48.743919>,  <32.489334, 28.118774, 48.754124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449482, 27.882326, 48.743919>,  <32.383060, 27.488247, 48.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449482, 27.882326, 48.743919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057316, 0.033403, -0.997797,
		-0.984450, 0.168122, -0.050921,
		0.166051, 0.985200, 0.042520,
		32.499298, 28.177887, 48.756676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847435, 27.742226, 48.314388>,  <32.383060, 27.488247, 48.726910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847435, 27.742226, 48.314388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152828, 27.999229, 48.340546>,  <32.336063, 28.153431, 48.356239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152828, 27.999229, 48.340546>,  <31.847435, 27.742226, 48.314388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152828, 27.999229, 48.340546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027164, 0.133116, -0.990728,
		-0.645256, 0.754628, 0.119085,
		0.763483, 0.642508, 0.065395,
		32.381874, 28.191982, 48.360165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648540, 28.401184, 48.007530>,  <31.847435, 27.742226, 48.314388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648540, 28.401184, 48.007530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046223, 28.382372, 47.968864>,  <32.284832, 28.371084, 47.945667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046223, 28.382372, 47.968864>,  <31.648540, 28.401184, 48.007530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046223, 28.382372, 47.968864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080879, 0.265034, -0.960841,
		0.070807, 0.963091, 0.259695,
		0.994206, -0.047030, -0.096660,
		32.344486, 28.368263, 47.939865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954367, 28.922770, 47.511856>,  <31.648540, 28.401184, 48.007530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954367, 28.922770, 47.511856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278080, 28.687803, 47.512218>,  <32.472309, 28.546824, 47.512436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278080, 28.687803, 47.512218>,  <31.954367, 28.922770, 47.511856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278080, 28.687803, 47.512218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172876, 0.236695, -0.956080,
		0.561401, 0.773899, 0.293104,
		0.809285, -0.587415, 0.000907,
		32.520866, 28.511580, 47.512489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536736, 29.300518, 47.240685>,  <31.954367, 28.922770, 47.511856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536736, 29.300518, 47.240685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611095, 28.913607, 47.171616>,  <32.655712, 28.681459, 47.130173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611095, 28.913607, 47.171616>,  <32.536736, 29.300518, 47.240685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611095, 28.913607, 47.171616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271144, 0.219413, -0.937197,
		0.944416, 0.127408, 0.303060,
		0.185902, -0.967277, -0.172671,
		32.666866, 28.623423, 47.119816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115967, 29.292299, 46.779324>,  <32.536736, 29.300518, 47.240685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115967, 29.292299, 46.779324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933357, 28.938848, 46.737774>,  <32.823792, 28.726778, 46.712845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933357, 28.938848, 46.737774>,  <33.115967, 29.292299, 46.779324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933357, 28.938848, 46.737774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392107, -0.095021, -0.914999,
		0.798649, -0.458445, 0.389856,
		-0.456521, -0.883628, -0.103872,
		32.796402, 28.673759, 46.706612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643185, 28.898935, 46.556602>,  <33.115967, 29.292299, 46.779324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643185, 28.898935, 46.556602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320045, 28.680960, 46.466782>,  <33.126163, 28.550175, 46.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320045, 28.680960, 46.466782>,  <33.643185, 28.898935, 46.556602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320045, 28.680960, 46.466782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350094, -0.137166, -0.926617,
		0.474150, -0.827179, 0.301589,
		-0.807846, -0.544941, -0.224553,
		33.077690, 28.517477, 46.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846947, 28.420250, 46.080536>,  <33.643185, 28.898935, 46.556602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846947, 28.420250, 46.080536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451061, 28.428471, 46.023911>,  <33.213528, 28.433403, 45.989933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451061, 28.428471, 46.023911>,  <33.846947, 28.420250, 46.080536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451061, 28.428471, 46.023911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137387, -0.139122, -0.980699,
		-0.039848, -0.990062, 0.134868,
		-0.989716, 0.020550, -0.141566,
		33.154148, 28.434637, 45.981441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699234, 27.787119, 45.685013>,  <33.846947, 28.420250, 46.080536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699234, 27.787119, 45.685013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382812, 28.024744, 45.626610>,  <33.192959, 28.167320, 45.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382812, 28.024744, 45.626610>,  <33.699234, 27.787119, 45.685013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382812, 28.024744, 45.626610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009751, -0.250884, -0.967968,
		-0.611665, -0.764294, 0.204256,
		-0.791057, 0.594064, -0.146004,
		33.145496, 28.202963, 45.582809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250256, 27.404524, 45.201714>,  <33.699234, 27.787119, 45.685013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250256, 27.404524, 45.201714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122025, 27.783392, 45.197746>,  <33.045086, 28.010714, 45.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122025, 27.783392, 45.197746>,  <33.250256, 27.404524, 45.201714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122025, 27.783392, 45.197746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044378, 0.004564, -0.999004,
		-0.946184, -0.320694, -0.043497,
		-0.320573, 0.947172, -0.009913,
		33.025852, 28.067543, 45.194771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694614, 27.370802, 44.654900>,  <33.250256, 27.404524, 45.201714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694614, 27.370802, 44.654900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855602, 27.734354, 44.698643>,  <32.952194, 27.952486, 44.724888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855602, 27.734354, 44.698643>,  <32.694614, 27.370802, 44.654900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855602, 27.734354, 44.698643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027058, 0.131214, -0.990985,
		-0.915035, 0.395880, 0.077402,
		0.402467, 0.908880, 0.109353,
		32.976341, 28.007017, 44.731449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422100, 27.744484, 44.135006>,  <32.694614, 27.370802, 44.654900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422100, 27.744484, 44.135006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726162, 27.968414, 44.266918>,  <32.908600, 28.102772, 44.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726162, 27.968414, 44.266918>,  <32.422100, 27.744484, 44.135006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726162, 27.968414, 44.266918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083481, 0.419196, -0.904050,
		-0.644352, 0.714752, 0.271921,
		0.760159, 0.559826, 0.329778,
		32.954208, 28.136362, 44.365852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359192, 28.241171, 43.738514>,  <32.422100, 27.744484, 44.135006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359192, 28.241171, 43.738514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705654, 28.326088, 43.919495>,  <32.913532, 28.377037, 44.028084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705654, 28.326088, 43.919495>,  <32.359192, 28.241171, 43.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705654, 28.326088, 43.919495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255841, 0.589352, -0.766296,
		-0.429331, 0.779485, 0.456156,
		0.866152, 0.212291, 0.452452,
		32.965500, 28.389776, 44.055229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304012, 28.900993, 43.906868>,  <32.359192, 28.241171, 43.738514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304012, 28.900993, 43.906868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688789, 28.811371, 43.844292>,  <32.919655, 28.757597, 43.806744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688789, 28.811371, 43.844292>,  <32.304012, 28.900993, 43.906868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688789, 28.811371, 43.844292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035593, 0.670342, -0.741198,
		0.270939, 0.707418, 0.652802,
		0.961938, -0.224055, -0.156443,
		32.977371, 28.744154, 43.797359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590778, 29.503031, 43.826202>,  <32.304012, 28.900993, 43.906868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590778, 29.503031, 43.826202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857407, 29.268452, 43.642132>,  <33.017384, 29.127705, 43.531689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857407, 29.268452, 43.642132>,  <32.590778, 29.503031, 43.826202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857407, 29.268452, 43.642132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158160, 0.714525, -0.681498,
		0.728468, 0.381487, 0.569036,
		0.666573, -0.586448, -0.460173,
		33.057377, 29.092518, 43.504082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122448, 29.903061, 43.528187>,  <32.590778, 29.503031, 43.826202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122448, 29.903061, 43.528187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171680, 29.575771, 43.303558>,  <33.201218, 29.379398, 43.168781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171680, 29.575771, 43.303558>,  <33.122448, 29.903061, 43.528187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171680, 29.575771, 43.303558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022148, 0.567996, -0.822733,
		0.992150, 0.088822, 0.088030,
		0.123078, -0.818225, -0.561570,
		33.208603, 29.330303, 43.135086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545303, 30.025209, 43.071426>,  <33.122448, 29.903061, 43.528187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545303, 30.025209, 43.071426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401714, 29.693327, 42.900440>,  <33.315563, 29.494198, 42.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401714, 29.693327, 42.900440>,  <33.545303, 30.025209, 43.071426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401714, 29.693327, 42.900440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129782, 0.409172, -0.903180,
		0.924282, -0.379691, -0.039199,
		-0.358968, -0.829706, -0.427468,
		33.294025, 29.444414, 42.772202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979408, 29.816454, 42.383728>,  <33.545303, 30.025209, 43.071426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979408, 29.816454, 42.383728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611015, 29.663424, 42.354237>,  <33.389980, 29.571606, 42.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611015, 29.663424, 42.354237>,  <33.979408, 29.816454, 42.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611015, 29.663424, 42.354237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077761, 0.365913, -0.927395,
		0.381779, -0.848376, -0.366747,
		-0.920977, -0.382578, -0.073728,
		33.334721, 29.548651, 42.332119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991241, 29.460546, 41.757824>,  <33.979408, 29.816454, 42.383728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991241, 29.460546, 41.757824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612320, 29.560076, 41.838528>,  <33.384968, 29.619793, 41.886951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612320, 29.560076, 41.838528>,  <33.991241, 29.460546, 41.757824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612320, 29.560076, 41.838528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057398, 0.487797, -0.871068,
		-0.315160, -0.836744, -0.447809,
		-0.947301, 0.248823, 0.201762,
		33.328129, 29.634722, 41.899055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702488, 29.262272, 41.161728>,  <33.991241, 29.460546, 41.757824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702488, 29.262272, 41.161728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414097, 29.487217, 41.323685>,  <33.241062, 29.622183, 41.420860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414097, 29.487217, 41.323685>,  <33.702488, 29.262272, 41.161728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414097, 29.487217, 41.323685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305018, 0.267107, -0.914121,
		-0.622217, -0.782562, -0.021048,
		-0.720979, 0.562361, 0.404894,
		33.197803, 29.655926, 41.445152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191273, 29.207485, 40.728462>,  <33.702488, 29.262272, 41.161728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191273, 29.207485, 40.728462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079815, 29.539272, 40.922096>,  <33.012939, 29.738344, 41.038277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079815, 29.539272, 40.922096>,  <33.191273, 29.207485, 40.728462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079815, 29.539272, 40.922096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396484, 0.359740, -0.844623,
		-0.874733, -0.427283, 0.228631,
		-0.278646, 0.829468, 0.484087,
		32.996220, 29.788113, 41.067322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527222, 29.426950, 40.370697>,  <33.191273, 29.207485, 40.728462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527222, 29.426950, 40.370697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654533, 29.748585, 40.571552>,  <32.730919, 29.941565, 40.692066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654533, 29.748585, 40.571552>,  <32.527222, 29.426950, 40.370697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654533, 29.748585, 40.571552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272920, 0.584979, -0.763750,
		-0.907862, 0.106042, 0.405638,
		0.318279, 0.804086, 0.502139,
		32.750015, 29.989811, 40.722195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944098, 29.879246, 40.293606>,  <32.527222, 29.426950, 40.370697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944098, 29.879246, 40.293606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295181, 30.059473, 40.358856>,  <32.505833, 30.167610, 40.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295181, 30.059473, 40.358856>,  <31.944098, 29.879246, 40.293606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295181, 30.059473, 40.358856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181395, 0.627496, -0.757195,
		-0.443530, 0.635009, 0.632491,
		0.877711, 0.450570, 0.163126,
		32.558495, 30.194643, 40.407795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823320, 30.714556, 40.286301>,  <31.944098, 29.879246, 40.293606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823320, 30.714556, 40.286301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216961, 30.659765, 40.241081>,  <32.453144, 30.626890, 40.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216961, 30.659765, 40.241081>,  <31.823320, 30.714556, 40.286301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216961, 30.659765, 40.241081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024300, 0.734392, -0.678291,
		0.175936, 0.664760, 0.726045,
		0.984102, -0.136978, -0.113053,
		32.512192, 30.618671, 40.207165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197414, 31.392300, 40.367626>,  <31.823320, 30.714556, 40.286301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197414, 31.392300, 40.367626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435215, 31.147161, 40.159401>,  <32.577896, 31.000078, 40.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435215, 31.147161, 40.159401>,  <32.197414, 31.392300, 40.367626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435215, 31.147161, 40.159401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045486, 0.671982, -0.739169,
		0.802804, 0.415762, 0.427374,
		0.594506, -0.612847, -0.520558,
		32.613567, 30.963306, 40.003235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631771, 31.873713, 40.115238>,  <32.197414, 31.392300, 40.367626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631771, 31.873713, 40.115238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714195, 31.543037, 39.905811>,  <32.763649, 31.344633, 39.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714195, 31.543037, 39.905811>,  <32.631771, 31.873713, 40.115238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714195, 31.543037, 39.905811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121752, 0.552554, -0.824536,
		0.970934, 0.106162, 0.214513,
		0.206065, -0.826688, -0.523568,
		32.776016, 31.295031, 39.748741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249519, 31.975811, 39.895931>,  <32.631771, 31.873713, 40.115238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249519, 31.975811, 39.895931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086613, 31.719521, 39.635593>,  <32.988869, 31.565746, 39.479389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086613, 31.719521, 39.635593>,  <33.249519, 31.975811, 39.895931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086613, 31.719521, 39.635593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298104, 0.580335, -0.757856,
		0.863287, -0.502671, -0.045350,
		-0.407271, -0.640728, -0.650844,
		32.964432, 31.527302, 39.440342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645691, 32.116077, 39.288670>,  <33.249519, 31.975811, 39.895931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645691, 32.116077, 39.288670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 31.903856, 39.149002>,  <33.151356, 31.776524, 39.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 31.903856, 39.149002>,  <33.645691, 32.116077, 39.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336731, 31.903856, 39.149002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119487, 0.418555, -0.900297,
		0.623799, -0.737108, -0.259897,
		-0.772397, -0.530550, -0.349169,
		33.105011, 31.744692, 39.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842113, 31.766609, 38.655376>,  <33.645691, 32.116077, 39.288670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842113, 31.766609, 38.655376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443592, 31.793667, 38.676571>,  <33.204479, 31.809902, 38.689289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443592, 31.793667, 38.676571>,  <33.842113, 31.766609, 38.655376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443592, 31.793667, 38.676571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007447, 0.546352, -0.837523,
		-0.085603, -0.834820, -0.543828,
		-0.996301, 0.067644, 0.052986,
		33.144703, 31.813961, 38.692467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628525, 31.685417, 37.888165>,  <33.842113, 31.766609, 38.655376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628525, 31.685417, 37.888165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333916, 31.845448, 38.106331>,  <33.157150, 31.941465, 38.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333916, 31.845448, 38.106331>,  <33.628525, 31.685417, 37.888165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333916, 31.845448, 38.106331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283148, 0.549934, -0.785748,
		-0.614302, -0.733152, -0.291756,
		-0.736519, 0.400076, 0.545416,
		33.112961, 31.965471, 38.269955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988258, 31.570429, 37.532368>,  <33.628525, 31.685417, 37.888165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988258, 31.570429, 37.532368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925545, 31.896997, 37.754673>,  <32.887917, 32.092937, 37.888058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925545, 31.896997, 37.754673>,  <32.988258, 31.570429, 37.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925545, 31.896997, 37.754673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279407, 0.503068, -0.817835,
		-0.947286, -0.283507, 0.149241,
		-0.156783, 0.816423, 0.555763,
		32.878510, 32.141926, 37.921402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291809, 31.807480, 37.424171>,  <32.988258, 31.570429, 37.532368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291809, 31.807480, 37.424171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498936, 32.127621, 37.545036>,  <32.623211, 32.319706, 37.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498936, 32.127621, 37.545036>,  <32.291809, 31.807480, 37.424171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498936, 32.127621, 37.545036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341683, 0.517293, -0.784641,
		-0.784293, 0.303060, 0.541330,
		0.517819, 0.800352, 0.302159,
		32.654282, 32.367725, 37.635685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790310, 32.286194, 37.487194>,  <32.291809, 31.807480, 37.424171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790310, 32.286194, 37.487194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134361, 32.490009, 37.477821>,  <32.340794, 32.612297, 37.472198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134361, 32.490009, 37.477821>,  <31.790310, 32.286194, 37.487194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134361, 32.490009, 37.477821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348035, 0.552682, -0.757242,
		-0.372895, 0.659480, 0.652714,
		0.860129, 0.509539, -0.023429,
		32.392399, 32.642872, 37.470791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540352, 32.936054, 37.290150>,  <31.790310, 32.286194, 37.487194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540352, 32.936054, 37.290150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935528, 32.986671, 37.254471>,  <32.172634, 33.017044, 37.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935528, 32.986671, 37.254471>,  <31.540352, 32.936054, 37.290150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935528, 32.986671, 37.254471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154607, 0.775938, -0.611569,
		-0.008182, 0.617986, 0.786147,
		0.987942, 0.126548, -0.089196,
		32.231911, 33.024635, 37.227711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614006, 33.614845, 37.323559>,  <31.540352, 32.936054, 37.290150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614006, 33.614845, 37.323559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922268, 33.467094, 37.115849>,  <32.107224, 33.378445, 36.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922268, 33.467094, 37.115849>,  <31.614006, 33.614845, 37.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922268, 33.467094, 37.115849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103037, 0.731919, -0.673556,
		0.628867, 0.572584, 0.525998,
		0.770655, -0.369380, -0.519277,
		32.153465, 33.356281, 36.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158875, 34.140030, 37.231350>,  <31.614006, 33.614845, 37.323559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158875, 34.140030, 37.231350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200783, 33.881504, 36.929012>,  <32.225929, 33.726387, 36.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200783, 33.881504, 36.929012>,  <32.158875, 34.140030, 37.231350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200783, 33.881504, 36.929012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096101, 0.763049, -0.639155,
		0.989842, -0.005673, 0.142058,
		0.104771, -0.646315, -0.755844,
		32.232216, 33.687611, 36.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658451, 34.390839, 36.759048>,  <32.158875, 34.140030, 37.231350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658451, 34.390839, 36.759048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513691, 34.113380, 36.509930>,  <32.426834, 33.946903, 36.360458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513691, 34.113380, 36.509930>,  <32.658451, 34.390839, 36.759048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513691, 34.113380, 36.509930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231357, 0.580351, -0.780811,
		0.903051, -0.426665, -0.049550,
		-0.361902, -0.693649, -0.622799,
		32.405121, 33.905285, 36.323090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237789, 34.283009, 36.233410>,  <32.658451, 34.390839, 36.759048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237789, 34.283009, 36.233410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878162, 34.203495, 36.077374>,  <32.662388, 34.155788, 35.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878162, 34.203495, 36.077374>,  <33.237789, 34.283009, 36.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878162, 34.203495, 36.077374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257604, 0.480260, -0.838445,
		0.354010, -0.854305, -0.380579,
		-0.899065, -0.198780, -0.390089,
		32.608444, 34.143860, 35.960346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948776, 34.446156, 36.104771>,  <33.237789, 34.283009, 36.233410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948776, 34.446156, 36.104771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294781, 34.318062, 35.950260>,  <34.502384, 34.241207, 35.857555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294781, 34.318062, 35.950260>,  <33.948776, 34.446156, 36.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294781, 34.318062, 35.950260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045274, -0.816527, 0.575529,
		-0.499707, -0.480350, -0.720802,
		0.865010, -0.320230, -0.386277,
		34.554283, 34.221992, 35.834377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948288, 33.732964, 36.006298>,  <33.948776, 34.446156, 36.104771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948288, 33.732964, 36.006298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345135, 33.781796, 36.017651>,  <34.583241, 33.811092, 36.024464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345135, 33.781796, 36.017651>,  <33.948288, 33.732964, 36.006298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345135, 33.781796, 36.017651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095685, -0.884021, 0.457550,
		0.080950, -0.451226, -0.888731,
		0.992115, 0.122076, 0.028386,
		34.642769, 33.818417, 36.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206718, 33.074207, 35.781765>,  <33.948288, 33.732964, 36.006298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206718, 33.074207, 35.781765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491257, 33.265526, 35.987762>,  <34.661980, 33.380318, 36.111362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491257, 33.265526, 35.987762>,  <34.206718, 33.074207, 35.781765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491257, 33.265526, 35.987762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292637, -0.867755, 0.401702,
		0.639020, -0.135043, -0.757243,
		0.711348, 0.478293, 0.514994,
		34.704662, 33.409012, 36.142262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729156, 32.613190, 35.726772>,  <34.206718, 33.074207, 35.781765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729156, 32.613190, 35.726772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823505, 32.852299, 36.033245>,  <34.880116, 32.995762, 36.217129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823505, 32.852299, 36.033245>,  <34.729156, 32.613190, 35.726772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823505, 32.852299, 36.033245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153798, -0.801455, 0.577941,
		0.959536, -0.018485, -0.280979,
		0.235876, 0.597769, 0.766182,
		34.894268, 33.031628, 36.263100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352833, 32.309242, 35.915459>,  <34.729156, 32.613190, 35.726772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352833, 32.309242, 35.915459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265015, 32.545429, 36.226109>,  <35.212322, 32.687141, 36.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265015, 32.545429, 36.226109>,  <35.352833, 32.309242, 35.915459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265015, 32.545429, 36.226109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344851, -0.697693, 0.627935,
		0.912621, 0.405682, -0.050445,
		-0.219547, 0.590463, 0.776629,
		35.199150, 32.722569, 36.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065529, 32.479126, 36.297165>,  <35.352833, 32.309242, 35.915459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065529, 32.479126, 36.297165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749470, 32.505501, 36.540909>,  <35.559834, 32.521324, 36.687157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749470, 32.505501, 36.540909>,  <36.065529, 32.479126, 36.297165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749470, 32.505501, 36.540909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384528, -0.720870, 0.576616,
		0.477289, 0.689927, 0.544239,
		-0.790148, 0.065937, 0.609359,
		35.512424, 32.525284, 36.723717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349934, 32.365517, 36.924152>,  <36.065529, 32.479126, 36.297165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349934, 32.365517, 36.924152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960503, 32.317875, 37.002079>,  <35.726845, 32.289291, 37.048836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960503, 32.317875, 37.002079>,  <36.349934, 32.365517, 36.924152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960503, 32.317875, 37.002079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224066, -0.662603, 0.714669,
		0.043964, 0.739440, 0.671785,
		-0.973582, -0.119105, 0.194814,
		35.668427, 32.282143, 37.060524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194313, 32.497608, 37.623543>,  <36.349934, 32.365517, 36.924152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194313, 32.497608, 37.623543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887466, 32.275974, 37.494221>,  <35.703358, 32.142994, 37.416626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887466, 32.275974, 37.494221>,  <36.194313, 32.497608, 37.623543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887466, 32.275974, 37.494221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175089, -0.665682, 0.725404,
		-0.617155, 0.499859, 0.607667,
		-0.767114, -0.554083, -0.323310,
		35.657333, 32.109749, 37.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771404, 32.431061, 38.144867>,  <36.194313, 32.497608, 37.623543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771404, 32.431061, 38.144867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656261, 32.130245, 37.907692>,  <35.587177, 31.949755, 37.765388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656261, 32.130245, 37.907692>,  <35.771404, 32.431061, 38.144867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656261, 32.130245, 37.907692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006773, -0.617527, 0.786520,
		-0.957649, 0.230421, 0.172667,
		-0.287857, -0.752041, -0.592935,
		35.569904, 31.904633, 37.729813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099617, 32.246105, 38.497108>,  <35.771404, 32.431061, 38.144867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099617, 32.246105, 38.497108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268593, 31.961081, 38.273037>,  <35.369980, 31.790066, 38.138592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268593, 31.961081, 38.273037>,  <35.099617, 32.246105, 38.497108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268593, 31.961081, 38.273037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095583, -0.579567, 0.809299,
		-0.901337, -0.395424, -0.176724,
		0.422440, -0.712560, -0.560182,
		35.395325, 31.747313, 38.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791149, 31.671452, 38.710953>,  <35.099617, 32.246105, 38.497108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791149, 31.671452, 38.710953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120842, 31.517136, 38.545155>,  <35.318657, 31.424547, 38.445675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120842, 31.517136, 38.545155>,  <34.791149, 31.671452, 38.710953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120842, 31.517136, 38.545155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002273, -0.734250, 0.678876,
		-0.566245, -0.558610, -0.606070,
		0.824234, -0.385787, -0.414496,
		35.368111, 31.401400, 38.420807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556908, 30.951893, 38.615490>,  <34.791149, 31.671452, 38.710953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556908, 30.951893, 38.615490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956886, 30.955629, 38.614155>,  <35.196873, 30.957870, 38.613354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956886, 30.955629, 38.614155>,  <34.556908, 30.951893, 38.615490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956886, 30.955629, 38.614155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008745, -0.671726, 0.740749,
		0.004679, -0.740741, -0.671774,
		0.999951, 0.009341, -0.003335,
		35.256870, 30.958431, 38.613155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703487, 30.307480, 38.786469>,  <34.556908, 30.951893, 38.615490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703487, 30.307480, 38.786469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049618, 30.499567, 38.843876>,  <35.257298, 30.614820, 38.878323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049618, 30.499567, 38.843876>,  <34.703487, 30.307480, 38.786469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049618, 30.499567, 38.843876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227151, -0.631006, 0.741778,
		0.446780, -0.609279, -0.655108,
		0.865327, 0.480220, 0.143522,
		35.309216, 30.643633, 38.886932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114464, 29.786282, 38.878895>,  <34.703487, 30.307480, 38.786469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114464, 29.786282, 38.878895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311657, 30.096872, 39.035889>,  <35.429974, 30.283226, 39.130085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311657, 30.096872, 39.035889>,  <35.114464, 29.786282, 38.878895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311657, 30.096872, 39.035889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117109, -0.506233, 0.854408,
		0.862120, -0.375247, -0.340498,
		0.492986, 0.776478, 0.392489,
		35.459553, 30.329815, 39.153637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722744, 29.498692, 39.110909>,  <35.114464, 29.786282, 38.878895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722744, 29.498692, 39.110909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688034, 29.838326, 39.319340>,  <35.667210, 30.042105, 39.444401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688034, 29.838326, 39.319340>,  <35.722744, 29.498692, 39.110909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688034, 29.838326, 39.319340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214662, -0.494832, 0.842058,
		0.972826, 0.184927, -0.139327,
		-0.086775, 0.849084, 0.521082,
		35.662003, 30.093050, 39.475666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346321, 29.493763, 39.539150>,  <35.722744, 29.498692, 39.110909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346321, 29.493763, 39.539150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061710, 29.744703, 39.665749>,  <35.890945, 29.895267, 39.741707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061710, 29.744703, 39.665749>,  <36.346321, 29.493763, 39.539150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061710, 29.744703, 39.665749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171876, -0.281346, 0.944088,
		0.681317, 0.726139, 0.092358,
		-0.711524, 0.627349, 0.316491,
		35.848251, 29.932907, 39.760696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628006, 29.743052, 40.121349>,  <36.346321, 29.493763, 39.539150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628006, 29.743052, 40.121349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231209, 29.784908, 40.149647>,  <35.993130, 29.810022, 40.166626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231209, 29.784908, 40.149647>,  <36.628006, 29.743052, 40.121349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231209, 29.784908, 40.149647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032140, -0.332545, 0.942539,
		0.122154, 0.937264, 0.326519,
		-0.991991, 0.104641, 0.070746,
		35.933613, 29.816301, 40.170872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611462, 30.135403, 40.735256>,  <36.628006, 29.743052, 40.121349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611462, 30.135403, 40.735256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255379, 29.966230, 40.667542>,  <36.041729, 29.864727, 40.626915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255379, 29.966230, 40.667542>,  <36.611462, 30.135403, 40.735256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255379, 29.966230, 40.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074666, -0.231119, 0.970056,
		-0.449393, 0.876192, 0.174165,
		-0.890208, -0.422932, -0.169285,
		35.988316, 29.839352, 40.616756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276009, 30.251957, 41.326412>,  <36.611462, 30.135403, 40.735256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276009, 30.251957, 41.326412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043537, 29.965038, 41.172676>,  <35.904053, 29.792887, 41.080433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043537, 29.965038, 41.172676>,  <36.276009, 30.251957, 41.326412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043537, 29.965038, 41.172676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210679, -0.323565, 0.922453,
		-0.786029, 0.617085, 0.036931,
		-0.581181, -0.717295, -0.384339,
		35.869183, 29.749849, 41.057373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648441, 30.189199, 41.660480>,  <36.276009, 30.251957, 41.326412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648441, 30.189199, 41.660480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662506, 29.829340, 41.486401>,  <35.670944, 29.613424, 41.381954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662506, 29.829340, 41.486401>,  <35.648441, 30.189199, 41.660480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662506, 29.829340, 41.486401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097327, -0.436482, 0.894434,
		-0.994631, 0.010905, -0.102908,
		0.035163, -0.899647, -0.435199,
		35.673054, 29.559446, 41.355843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099693, 29.821016, 41.955441>,  <35.648441, 30.189199, 41.660480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099693, 29.821016, 41.955441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305511, 29.509254, 41.812458>,  <35.429001, 29.322197, 41.726669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305511, 29.509254, 41.812458>,  <35.099693, 29.821016, 41.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305511, 29.509254, 41.812458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047294, -0.390450, 0.919409,
		-0.856160, -0.489980, -0.164042,
		0.514542, -0.779402, -0.357461,
		35.459873, 29.275434, 41.705219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771923, 29.204531, 42.150684>,  <35.099693, 29.821016, 41.955441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771923, 29.204531, 42.150684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152493, 29.100632, 42.084553>,  <35.380833, 29.038292, 42.044876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152493, 29.100632, 42.084553>,  <34.771923, 29.204531, 42.150684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152493, 29.100632, 42.084553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053331, -0.389806, 0.919351,
		-0.303240, -0.883507, -0.357017,
		0.951421, -0.259744, -0.165323,
		35.437920, 29.022707, 42.034954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842381, 28.482430, 42.259998>,  <34.771923, 29.204531, 42.150684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842381, 28.482430, 42.259998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180950, 28.686789, 42.320065>,  <35.384090, 28.809404, 42.356106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180950, 28.686789, 42.320065>,  <34.842381, 28.482430, 42.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180950, 28.686789, 42.320065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062100, -0.374782, 0.925031,
		0.528876, -0.773643, -0.348951,
		0.846424, 0.510897, 0.150170,
		35.434875, 28.840057, 42.365116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309410, 28.005312, 42.560570>,  <34.842381, 28.482430, 42.259998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309410, 28.005312, 42.560570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457825, 28.358910, 42.674332>,  <35.546871, 28.571068, 42.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457825, 28.358910, 42.674332>,  <35.309410, 28.005312, 42.560570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457825, 28.358910, 42.674332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060650, -0.328680, 0.942492,
		0.926637, -0.332446, -0.175566,
		0.371033, 0.883996, 0.284404,
		35.569134, 28.624109, 42.759651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942818, 27.871391, 42.816933>,  <35.309410, 28.005312, 42.560570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942818, 27.871391, 42.816933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838627, 28.219191, 42.984798>,  <35.776112, 28.427870, 43.085518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838627, 28.219191, 42.984798>,  <35.942818, 27.871391, 42.816933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838627, 28.219191, 42.984798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179244, -0.383566, 0.905952,
		0.948696, 0.311203, -0.055942,
		-0.260477, 0.869500, 0.419669,
		35.760483, 28.480040, 43.110699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415424, 28.001852, 43.436440>,  <35.942818, 27.871391, 42.816933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415424, 28.001852, 43.436440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119171, 28.261440, 43.506058>,  <35.941418, 28.417192, 43.547829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119171, 28.261440, 43.506058>,  <36.415424, 28.001852, 43.436440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119171, 28.261440, 43.506058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001850, -0.261007, 0.965335,
		0.671902, 0.714642, 0.194512,
		-0.740638, 0.648971, 0.174049,
		35.896980, 28.456131, 43.558273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710373, 28.512569, 43.929710>,  <36.415424, 28.001852, 43.436440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710373, 28.512569, 43.929710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310455, 28.505491, 43.933540>,  <36.070503, 28.501245, 43.935841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310455, 28.505491, 43.933540>,  <36.710373, 28.512569, 43.929710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310455, 28.505491, 43.933540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010365, -0.044847, 0.998940,
		-0.017246, 0.998837, 0.045021,
		-0.999798, -0.017694, 0.009579,
		36.010517, 28.500183, 43.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513332, 28.984852, 44.399403>,  <36.710373, 28.512569, 43.929710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513332, 28.984852, 44.399403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179703, 28.765215, 44.378181>,  <35.979527, 28.633432, 44.365448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179703, 28.765215, 44.378181>,  <36.513332, 28.984852, 44.399403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179703, 28.765215, 44.378181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070525, 0.010763, 0.997452,
		-0.547124, 0.835691, -0.047702,
		-0.834075, -0.549094, -0.053049,
		35.929482, 28.600487, 44.362267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917076, 29.189621, 44.881676>,  <36.513332, 28.984852, 44.399403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917076, 29.189621, 44.881676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818077, 28.803713, 44.845982>,  <35.758678, 28.572168, 44.824566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818077, 28.803713, 44.845982>,  <35.917076, 29.189621, 44.881676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818077, 28.803713, 44.845982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105744, -0.064654, 0.992289,
		-0.963101, 0.255025, -0.086018,
		-0.247497, -0.964771, -0.089235,
		35.743828, 28.514282, 44.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633785, 29.115320, 45.458427>,  <35.917076, 29.189621, 44.881676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633785, 29.115320, 45.458427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654415, 28.737892, 45.327576>,  <35.666794, 28.511435, 45.249065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654415, 28.737892, 45.327576>,  <35.633785, 29.115320, 45.458427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654415, 28.737892, 45.327576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200457, -0.330683, 0.922207,
		-0.978344, 0.018016, -0.206199,
		0.051572, -0.943570, -0.327133,
		35.669888, 28.454821, 45.229435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003017, 28.675156, 45.653389>,  <35.633785, 29.115320, 45.458427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003017, 28.675156, 45.653389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296539, 28.412037, 45.585461>,  <35.472652, 28.254166, 45.544704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296539, 28.412037, 45.585461>,  <35.003017, 28.675156, 45.653389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296539, 28.412037, 45.585461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070080, -0.175339, 0.982011,
		-0.675741, -0.732501, -0.082565,
		0.733800, -0.657798, -0.169817,
		35.516678, 28.214697, 45.534515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895920, 28.125813, 46.075699>,  <35.003017, 28.675156, 45.653389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895920, 28.125813, 46.075699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288410, 28.095163, 46.004913>,  <35.523907, 28.076775, 45.962440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288410, 28.095163, 46.004913>,  <34.895920, 28.125813, 46.075699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288410, 28.095163, 46.004913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169831, -0.091349, 0.981230,
		-0.091349, -0.992867, -0.076621,
		-0.981230, 0.076621, 0.176964,
		35.582779, 28.072176, 45.951824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034737, 27.492640, 46.499531>,  <34.895920, 28.125813, 46.075699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034737, 27.492640, 46.499531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371956, 27.687290, 46.407906>,  <35.574287, 27.804081, 46.352932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371956, 27.687290, 46.407906>,  <35.034737, 27.492640, 46.499531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371956, 27.687290, 46.407906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319113, -0.109740, 0.941342,
		0.432944, -0.866691, -0.247804,
		0.843046, 0.486625, -0.229061,
		35.624870, 27.833279, 46.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520657, 27.094303, 46.867867>,  <35.034737, 27.492640, 46.499531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520657, 27.094303, 46.867867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699673, 27.436911, 46.765038>,  <35.807083, 27.642475, 46.703339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699673, 27.436911, 46.765038>,  <35.520657, 27.094303, 46.867867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699673, 27.436911, 46.765038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353279, 0.094746, 0.930708,
		0.821524, -0.507346, -0.260187,
		0.447540, 0.856518, -0.257071,
		35.833935, 27.693867, 46.687916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164772, 27.073866, 47.096161>,  <35.520657, 27.094303, 46.867867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164772, 27.073866, 47.096161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078331, 27.462523, 47.057770>,  <36.026466, 27.695717, 47.034737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078331, 27.462523, 47.057770>,  <36.164772, 27.073866, 47.096161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078331, 27.462523, 47.057770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293358, 0.158370, 0.942794,
		0.931258, 0.175582, -0.319263,
		-0.216099, 0.971643, -0.095975,
		36.013500, 27.754015, 47.028976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763107, 27.367260, 47.321121>,  <36.164772, 27.073866, 47.096161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763107, 27.367260, 47.321121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449677, 27.614185, 47.349216>,  <36.261620, 27.762341, 47.366074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449677, 27.614185, 47.349216>,  <36.763107, 27.367260, 47.321121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449677, 27.614185, 47.349216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118152, 0.037077, 0.992303,
		0.609959, 0.785842, -0.101990,
		-0.783575, 0.617315, 0.070234,
		36.214603, 27.799379, 47.370285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929043, 27.888588, 47.774662>,  <36.763107, 27.367260, 47.321121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929043, 27.888588, 47.774662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530235, 27.857725, 47.775738>,  <36.290951, 27.839207, 47.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530235, 27.857725, 47.775738>,  <36.929043, 27.888588, 47.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530235, 27.857725, 47.775738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001197, 0.050262, 0.998735,
		-0.077197, 0.995751, -0.050204,
		-0.997015, -0.077159, 0.002688,
		36.231133, 27.834578, 47.776543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663391, 28.124321, 48.458572>,  <36.929043, 27.888588, 47.774662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663391, 28.124321, 48.458572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315624, 27.969410, 48.335854>,  <36.106964, 27.876463, 48.262222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315624, 27.969410, 48.335854>,  <36.663391, 28.124321, 48.458572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315624, 27.969410, 48.335854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260365, -0.168609, 0.950674,
		-0.419902, 0.906415, 0.045759,
		-0.869421, -0.387276, -0.306798,
		36.054798, 27.853228, 48.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211941, 28.197474, 49.039932>,  <36.663391, 28.124321, 48.458572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211941, 28.197474, 49.039932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966045, 27.922235, 48.885727>,  <35.818508, 27.757092, 48.793205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966045, 27.922235, 48.885727>,  <36.211941, 28.197474, 49.039932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966045, 27.922235, 48.885727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284844, -0.262102, 0.922045,
		-0.735499, 0.676628, -0.034875,
		-0.614741, -0.688097, -0.385509,
		35.781624, 27.715807, 48.770073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058460, 28.910015, 49.285843>,  <36.211941, 28.197474, 49.039932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058460, 28.910015, 49.285843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164104, 29.257532, 49.453388>,  <36.227489, 29.466042, 49.553913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164104, 29.257532, 49.453388>,  <36.058460, 28.910015, 49.285843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164104, 29.257532, 49.453388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173797, 0.384303, -0.906700,
		-0.948704, 0.312266, -0.049495,
		0.264111, 0.868793, 0.418861,
		36.243340, 29.518169, 49.579048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718414, 29.509241, 48.888409>,  <36.058460, 28.910015, 49.285843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718414, 29.509241, 48.888409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010029, 29.701948, 49.082893>,  <36.184998, 29.817572, 49.199585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010029, 29.701948, 49.082893>,  <35.718414, 29.509241, 48.888409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010029, 29.701948, 49.082893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082862, 0.643005, -0.761366,
		-0.679438, 0.595354, 0.428855,
		0.729039, 0.481765, 0.486214,
		36.228741, 29.846478, 49.228756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541492, 30.155947, 48.963692>,  <35.718414, 29.509241, 48.888409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541492, 30.155947, 48.963692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940731, 30.167225, 48.985657>,  <36.180275, 30.173992, 48.998837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940731, 30.167225, 48.985657>,  <35.541492, 30.155947, 48.963692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940731, 30.167225, 48.985657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030980, 0.540564, -0.840733,
		-0.053387, 0.840831, 0.538659,
		0.998093, 0.028196, 0.054908,
		36.240158, 30.175684, 49.002129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854782, 30.851883, 48.771595>,  <35.541492, 30.155947, 48.963692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854782, 30.851883, 48.771595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154694, 30.594660, 48.709232>,  <36.334641, 30.440327, 48.671814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154694, 30.594660, 48.709232>,  <35.854782, 30.851883, 48.771595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154694, 30.594660, 48.709232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196840, 0.441716, -0.875295,
		0.631730, 0.625592, 0.457769,
		0.749781, -0.643057, -0.155903,
		36.379627, 30.401743, 48.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297894, 31.319849, 48.501637>,  <35.854782, 30.851883, 48.771595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297894, 31.319849, 48.501637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336742, 30.933010, 48.407578>,  <36.360050, 30.700907, 48.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336742, 30.933010, 48.407578>,  <36.297894, 31.319849, 48.501637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336742, 30.933010, 48.407578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149547, 0.247758, -0.957210,
		0.983973, 0.057798, 0.168688,
		0.097119, -0.967096, -0.235144,
		36.365879, 30.642881, 48.337036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016571, 31.286062, 48.104305>,  <36.297894, 31.319849, 48.501637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016571, 31.286062, 48.104305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836182, 30.942411, 48.007534>,  <36.727947, 30.736221, 47.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836182, 30.942411, 48.007534>,  <37.016571, 31.286062, 48.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836182, 30.942411, 48.007534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339882, 0.085329, -0.936589,
		0.825291, -0.504602, 0.253520,
		-0.450972, -0.859125, -0.241927,
		36.700890, 30.684673, 47.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522842, 30.853876, 47.646244>,  <37.016571, 31.286062, 48.104305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522842, 30.853876, 47.646244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136364, 30.779991, 47.574310>,  <36.904476, 30.735661, 47.531151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136364, 30.779991, 47.574310>,  <37.522842, 30.853876, 47.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136364, 30.779991, 47.574310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162899, 0.103217, -0.981229,
		0.199808, -0.977357, -0.069639,
		-0.966199, -0.184713, -0.179834,
		36.846504, 30.724577, 47.520359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500896, 30.406210, 47.040775>,  <37.522842, 30.853876, 47.646244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500896, 30.406210, 47.040775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123440, 30.538364, 47.048534>,  <36.896965, 30.617657, 47.053188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123440, 30.538364, 47.048534>,  <37.500896, 30.406210, 47.040775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123440, 30.538364, 47.048534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009983, 0.086993, -0.996159,
		-0.330806, -0.939828, -0.085389,
		-0.943646, 0.330388, 0.019396,
		36.840347, 30.637482, 47.054352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230701, 30.193142, 46.381813>,  <37.500896, 30.406210, 47.040775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230701, 30.193142, 46.381813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946861, 30.449257, 46.499458>,  <36.776558, 30.602926, 46.570045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946861, 30.449257, 46.499458>,  <37.230701, 30.193142, 46.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946861, 30.449257, 46.499458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106409, 0.315241, -0.943027,
		-0.696526, -0.700466, -0.155561,
		-0.709598, 0.640290, 0.294109,
		36.733982, 30.641344, 46.587692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604897, 30.044476, 45.974045>,  <37.230701, 30.193142, 46.381813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604897, 30.044476, 45.974045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568150, 30.423155, 46.097542>,  <36.546101, 30.650362, 46.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568150, 30.423155, 46.097542>,  <36.604897, 30.044476, 45.974045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568150, 30.423155, 46.097542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023088, 0.307949, -0.951123,
		-0.995503, -0.094508, -0.006434,
		-0.091870, 0.946697, 0.308746,
		36.540588, 30.707165, 46.190166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027355, 30.233166, 45.612881>,  <36.604897, 30.044476, 45.974045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027355, 30.233166, 45.612881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235474, 30.565573, 45.691570>,  <36.360344, 30.765017, 45.738785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235474, 30.565573, 45.691570>,  <36.027355, 30.233166, 45.612881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235474, 30.565573, 45.691570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109063, 0.293134, -0.949830,
		-0.846992, 0.472740, 0.243150,
		0.520298, 0.831017, 0.196724,
		36.391563, 30.814878, 45.750587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563339, 30.772488, 45.323086>,  <36.027355, 30.233166, 45.612881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563339, 30.772488, 45.323086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933750, 30.914732, 45.373695>,  <36.155998, 31.000078, 45.404060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933750, 30.914732, 45.373695>,  <35.563339, 30.772488, 45.323086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933750, 30.914732, 45.373695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024235, 0.390544, -0.920265,
		-0.376669, 0.849127, 0.370274,
		0.926031, 0.355609, 0.126527,
		36.211559, 31.021416, 45.411655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577545, 31.474915, 45.051304>,  <35.563339, 30.772488, 45.323086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577545, 31.474915, 45.051304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963345, 31.369284, 45.050758>,  <36.194824, 31.305904, 45.050430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963345, 31.369284, 45.050758>,  <35.577545, 31.474915, 45.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963345, 31.369284, 45.050758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140931, 0.519084, -0.843025,
		0.223334, 0.812905, 0.537873,
		0.964500, -0.264079, -0.001366,
		36.252693, 31.290060, 45.050350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015450, 32.108669, 44.999374>,  <35.577545, 31.474915, 45.051304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015450, 32.108669, 44.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264660, 31.815294, 44.890633>,  <36.414185, 31.639269, 44.825390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264660, 31.815294, 44.890633>,  <36.015450, 32.108669, 44.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264660, 31.815294, 44.890633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236570, 0.507951, -0.828263,
		0.745570, 0.451717, 0.489977,
		0.623025, -0.733442, -0.271851,
		36.451569, 31.595263, 44.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625019, 32.389256, 44.716915>,  <36.015450, 32.108669, 44.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625019, 32.389256, 44.716915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630245, 32.018021, 44.568062>,  <36.633381, 31.795280, 44.478748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630245, 32.018021, 44.568062>,  <36.625019, 32.389256, 44.716915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630245, 32.018021, 44.568062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251988, 0.363208, -0.896985,
		0.967642, -0.082057, 0.238610,
		0.013061, -0.928088, -0.372132,
		36.634163, 31.739594, 44.456421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235126, 32.359535, 44.277386>,  <36.625019, 32.389256, 44.716915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235126, 32.359535, 44.277386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012783, 32.051235, 44.152828>,  <36.879375, 31.866255, 44.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012783, 32.051235, 44.152828>,  <37.235126, 32.359535, 44.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012783, 32.051235, 44.152828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210349, 0.231987, -0.949703,
		0.804222, -0.593403, 0.033174,
		-0.555861, -0.770750, -0.311391,
		36.846024, 31.820011, 44.059410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656956, 32.008446, 43.703171>,  <37.235126, 32.359535, 44.277386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656956, 32.008446, 43.703171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286293, 31.879530, 43.625778>,  <37.063896, 31.802181, 43.579342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286293, 31.879530, 43.625778>,  <37.656956, 32.008446, 43.703171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286293, 31.879530, 43.625778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222630, -0.055799, -0.973305,
		0.302891, -0.944995, 0.123458,
		-0.926657, -0.322290, -0.193483,
		37.008297, 31.782843, 43.567734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628315, 31.402664, 43.314396>,  <37.656956, 32.008446, 43.703171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628315, 31.402664, 43.314396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265480, 31.548325, 43.229939>,  <37.047779, 31.635721, 43.179264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265480, 31.548325, 43.229939>,  <37.628315, 31.402664, 43.314396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265480, 31.548325, 43.229939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223160, -0.009281, -0.974738,
		-0.356912, -0.931293, -0.072846,
		-0.907090, 0.364152, -0.211140,
		36.993351, 31.657570, 43.166595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551277, 31.113216, 42.693153>,  <37.628315, 31.402664, 43.314396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551277, 31.113216, 42.693153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250725, 31.376358, 42.713753>,  <37.070393, 31.534243, 42.726112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250725, 31.376358, 42.713753>,  <37.551277, 31.113216, 42.693153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250725, 31.376358, 42.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038131, 0.034632, -0.998672,
		-0.658763, -0.752350, -0.000937,
		-0.751384, 0.657853, 0.051502,
		37.025311, 31.573713, 42.729202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045883, 30.915508, 42.186035>,  <37.551277, 31.113216, 42.693153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045883, 30.915508, 42.186035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983059, 31.302244, 42.266590>,  <36.945362, 31.534285, 42.314922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983059, 31.302244, 42.266590>,  <37.045883, 30.915508, 42.186035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983059, 31.302244, 42.266590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160307, 0.176251, -0.971204,
		-0.974491, -0.184825, 0.127308,
		-0.157065, 0.966838, 0.201384,
		36.935940, 31.592295, 42.327003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359062, 31.113537, 41.900074>,  <37.045883, 30.915508, 42.186035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359062, 31.113537, 41.900074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569622, 31.450747, 41.944279>,  <36.695957, 31.653072, 41.970802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569622, 31.450747, 41.944279>,  <36.359062, 31.113537, 41.900074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569622, 31.450747, 41.944279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042347, 0.155814, -0.986878,
		-0.849180, 0.514816, 0.117720,
		0.526403, 0.843022, 0.110513,
		36.727543, 31.703653, 41.977432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055889, 31.490452, 41.490059>,  <36.359062, 31.113537, 41.900074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055889, 31.490452, 41.490059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385075, 31.705296, 41.564083>,  <36.582584, 31.834202, 41.608498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385075, 31.705296, 41.564083>,  <36.055889, 31.490452, 41.490059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385075, 31.705296, 41.564083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003292, 0.330261, -0.943884,
		-0.568089, 0.776170, 0.273560,
		0.822961, 0.537111, 0.185062,
		36.631962, 31.866428, 41.619602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944073, 32.124168, 41.116550>,  <36.055889, 31.490452, 41.490059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944073, 32.124168, 41.116550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338375, 32.089645, 41.174290>,  <36.574955, 32.068932, 41.208935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338375, 32.089645, 41.174290>,  <35.944073, 32.124168, 41.116550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338375, 32.089645, 41.174290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163574, 0.292442, -0.942190,
		0.039106, 0.952381, 0.302394,
		0.985756, -0.086309, 0.144349,
		36.634102, 32.063751, 41.217594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192249, 32.575722, 40.615288>,  <35.944073, 32.124168, 41.116550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192249, 32.575722, 40.615288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508999, 32.339729, 40.678345>,  <36.699051, 32.198135, 40.716179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508999, 32.339729, 40.678345>,  <36.192249, 32.575722, 40.615288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508999, 32.339729, 40.678345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399878, 0.305845, -0.864035,
		0.461551, 0.747249, 0.478112,
		0.791877, -0.589982, 0.157645,
		36.746563, 32.162735, 40.725639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695652, 32.997005, 40.339737>,  <36.192249, 32.575722, 40.615288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695652, 32.997005, 40.339737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870792, 32.639957, 40.382675>,  <36.975876, 32.425728, 40.408436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870792, 32.639957, 40.382675>,  <36.695652, 32.997005, 40.339737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870792, 32.639957, 40.382675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577297, 0.187613, -0.794689,
		0.689214, 0.409923, 0.597451,
		0.437850, -0.892617, 0.107342,
		37.002148, 32.372173, 40.414879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451466, 33.073959, 40.373211>,  <36.695652, 32.997005, 40.339737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451466, 33.073959, 40.373211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382977, 32.701393, 40.244747>,  <37.341885, 32.477852, 40.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382977, 32.701393, 40.244747>,  <37.451466, 33.073959, 40.373211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382977, 32.701393, 40.244747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741163, 0.092999, -0.664852,
		0.649122, -0.351873, 0.674408,
		-0.171224, -0.931416, -0.321163,
		37.331608, 32.421967, 40.148399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126797, 32.708439, 40.255714>,  <37.451466, 33.073959, 40.373211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126797, 32.708439, 40.255714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861794, 32.491383, 40.049171>,  <37.702793, 32.361149, 39.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861794, 32.491383, 40.049171>,  <38.126797, 32.708439, 40.255714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861794, 32.491383, 40.049171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680709, -0.148463, -0.717352,
		0.312606, -0.826739, 0.467740,
		-0.662505, -0.542643, -0.516358,
		37.663040, 32.328590, 39.894264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523643, 32.154346, 39.903545>,  <38.126797, 32.708439, 40.255714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523643, 32.154346, 39.903545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173073, 32.186066, 39.713558>,  <37.962730, 32.205097, 39.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173073, 32.186066, 39.713558>,  <38.523643, 32.154346, 39.903545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173073, 32.186066, 39.713558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462254, -0.137797, -0.875975,
		-0.134889, -0.987283, 0.084126,
		-0.876428, 0.079272, -0.474963,
		37.910145, 32.209854, 39.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626720, 31.664639, 39.385574>,  <38.523643, 32.154346, 39.903545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626720, 31.664639, 39.385574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348793, 31.929626, 39.273602>,  <38.182037, 32.088619, 39.206417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348793, 31.929626, 39.273602>,  <38.626720, 31.664639, 39.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348793, 31.929626, 39.273602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523356, 0.198786, -0.828603,
		-0.493277, -0.722233, -0.484828,
		-0.694821, 0.662468, -0.279928,
		38.140347, 32.128368, 39.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495502, 31.541283, 38.604805>,  <38.626720, 31.664639, 39.385574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495502, 31.541283, 38.604805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344727, 31.901529, 38.691349>,  <38.254261, 32.117676, 38.743275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344727, 31.901529, 38.691349>,  <38.495502, 31.541283, 38.604805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344727, 31.901529, 38.691349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426660, 0.376155, -0.822477,
		-0.822119, -0.217712, -0.526043,
		-0.376937, 0.900616, 0.216356,
		38.231644, 32.171715, 38.756256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169857, 31.828690, 37.950474>,  <38.495502, 31.541283, 38.604805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169857, 31.828690, 37.950474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257717, 32.120129, 38.209980>,  <38.310432, 32.294991, 38.365685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257717, 32.120129, 38.209980>,  <38.169857, 31.828690, 37.950474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257717, 32.120129, 38.209980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683533, 0.359556, -0.635218,
		-0.696087, 0.582978, -0.419046,
		0.219648, 0.728599, 0.648767,
		38.323612, 32.338707, 38.404610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101471, 32.419827, 37.562294>,  <38.169857, 31.828690, 37.950474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101471, 32.419827, 37.562294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334415, 32.528179, 37.868885>,  <38.474182, 32.593189, 38.052841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334415, 32.528179, 37.868885>,  <38.101471, 32.419827, 37.562294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334415, 32.528179, 37.868885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563287, 0.545365, -0.620713,
		-0.586147, 0.793222, 0.165015,
		0.582357, 0.270879, 0.766476,
		38.509121, 32.609444, 38.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194309, 33.134304, 37.449047>,  <38.101471, 32.419827, 37.562294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194309, 33.134304, 37.449047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500256, 33.004574, 37.671680>,  <38.683823, 32.926735, 37.805260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500256, 33.004574, 37.671680>,  <38.194309, 33.134304, 37.449047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500256, 33.004574, 37.671680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640143, 0.479350, -0.600367,
		-0.072084, 0.815496, 0.574256,
		0.764867, -0.324329, 0.556587,
		38.729717, 32.907276, 37.838657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699093, 33.665611, 37.404949>,  <38.194309, 33.134304, 37.449047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699093, 33.665611, 37.404949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942936, 33.399307, 37.577061>,  <39.089241, 33.239525, 37.680328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942936, 33.399307, 37.577061>,  <38.699093, 33.665611, 37.404949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942936, 33.399307, 37.577061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790847, 0.473659, -0.387568,
		0.054219, 0.576553, 0.815259,
		0.609608, -0.665759, 0.430283,
		39.125820, 33.199581, 37.706146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269905, 34.070244, 37.555782>,  <38.699093, 33.665611, 37.404949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269905, 34.070244, 37.555782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414421, 33.697277, 37.552422>,  <39.501133, 33.473499, 37.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414421, 33.697277, 37.552422>,  <39.269905, 34.070244, 37.555782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414421, 33.697277, 37.552422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841836, 0.330044, -0.427063,
		0.400971, 0.147225, 0.904183,
		0.361295, -0.932414, -0.008399,
		39.522808, 33.417553, 37.549900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918549, 34.117886, 37.705719>,  <39.269905, 34.070244, 37.555782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918549, 34.117886, 37.705719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929913, 33.740082, 37.574821>,  <39.936733, 33.513397, 37.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929913, 33.740082, 37.574821>,  <39.918549, 34.117886, 37.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929913, 33.740082, 37.574821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683060, 0.257363, -0.683515,
		0.729809, -0.204105, 0.652472,
		0.028413, -0.944513, -0.327242,
		39.938435, 33.456726, 37.476650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599472, 33.879501, 37.815632>,  <39.918549, 34.117886, 37.705719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599472, 33.879501, 37.815632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450706, 33.668259, 37.510273>,  <40.361446, 33.541512, 37.327057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450706, 33.668259, 37.510273>,  <40.599472, 33.879501, 37.815632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450706, 33.668259, 37.510273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753301, 0.308845, -0.580647,
		0.542419, -0.791021, 0.282963,
		-0.371912, -0.528110, -0.763401,
		40.339134, 33.509827, 37.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211540, 33.547749, 37.525185>,  <40.599472, 33.879501, 37.815632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211540, 33.547749, 37.525185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932362, 33.528923, 37.239346>,  <40.764854, 33.517628, 37.067841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932362, 33.528923, 37.239346>,  <41.211540, 33.547749, 37.525185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932362, 33.528923, 37.239346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669073, 0.312938, -0.674100,
		0.255352, -0.948606, -0.186925,
		-0.697951, -0.047066, -0.714597,
		40.722977, 33.514801, 37.024967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523487, 33.157188, 36.877209>,  <41.211540, 33.547749, 37.525185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523487, 33.157188, 36.877209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231915, 33.396614, 36.744316>,  <41.056973, 33.540272, 36.664581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231915, 33.396614, 36.744316>,  <41.523487, 33.157188, 36.877209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231915, 33.396614, 36.744316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653942, 0.465228, -0.596592,
		-0.202537, -0.652135, -0.730547,
		-0.728930, 0.598567, -0.332233,
		41.013237, 33.576183, 36.644646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767811, 33.196064, 36.083561>,  <41.523487, 33.157188, 36.877209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767811, 33.196064, 36.083561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501427, 33.476772, 36.184769>,  <41.341599, 33.645199, 36.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501427, 33.476772, 36.184769>,  <41.767811, 33.196064, 36.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501427, 33.476772, 36.184769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520679, 0.680158, -0.516021,
		-0.534225, -0.211903, -0.818352,
		-0.665956, 0.701770, 0.253024,
		41.301640, 33.687302, 36.260677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522919, 33.545403, 35.429035>,  <41.767811, 33.196064, 36.083561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522919, 33.545403, 35.429035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480198, 33.800560, 35.734108>,  <41.454567, 33.953655, 35.917152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480198, 33.800560, 35.734108>,  <41.522919, 33.545403, 35.429035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480198, 33.800560, 35.734108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640548, 0.630817, -0.437912,
		-0.760455, 0.441766, -0.475974,
		-0.106798, 0.637897, 0.762681,
		41.448158, 33.991928, 35.962914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944145, 33.157833, 34.990314>,  <41.522919, 33.545403, 35.429035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944145, 33.157833, 34.990314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632542, 33.079510, 34.752052>,  <41.445580, 33.032516, 34.609093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632542, 33.079510, 34.752052>,  <41.944145, 33.157833, 34.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632542, 33.079510, 34.752052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292671, 0.726601, -0.621606,
		0.554522, -0.658567, -0.508719,
		-0.779005, -0.195806, -0.595660,
		41.398842, 33.020767, 34.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183376, 33.047756, 34.387409>,  <41.944145, 33.157833, 34.990314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183376, 33.047756, 34.387409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818233, 33.184486, 34.298103>,  <41.599148, 33.266525, 34.244522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818233, 33.184486, 34.298103>,  <42.183376, 33.047756, 34.387409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818233, 33.184486, 34.298103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397055, 0.615958, -0.680399,
		-0.095057, -0.709756, -0.698005,
		-0.912859, 0.341823, -0.223261,
		41.544376, 33.287033, 34.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232121, 33.017147, 33.666233>,  <42.183376, 33.047756, 34.387409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232121, 33.017147, 33.666233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939629, 33.259045, 33.792461>,  <41.764133, 33.404182, 33.868198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939629, 33.259045, 33.792461>,  <42.232121, 33.017147, 33.666233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939629, 33.259045, 33.792461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318173, 0.711604, -0.626407,
		-0.603376, -0.357644, -0.712761,
		-0.731234, 0.604741, 0.315572,
		41.720257, 33.440468, 33.887135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745960, 33.147987, 33.160671>,  <42.232121, 33.017147, 33.666233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745960, 33.147987, 33.160671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759052, 33.452927, 33.419209>,  <41.766907, 33.635891, 33.574329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759052, 33.452927, 33.419209>,  <41.745960, 33.147987, 33.160671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759052, 33.452927, 33.419209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472316, 0.558121, -0.682216,
		-0.880821, 0.327609, -0.341799,
		0.032735, 0.762347, 0.646340,
		41.768871, 33.681629, 33.613110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390602, 33.630493, 32.838478>,  <41.745960, 33.147987, 33.160671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390602, 33.630493, 32.838478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684196, 33.745308, 33.084690>,  <41.860352, 33.814198, 33.232418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684196, 33.745308, 33.084690>,  <41.390602, 33.630493, 32.838478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684196, 33.745308, 33.084690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435695, 0.496239, -0.750944,
		-0.520996, 0.819365, 0.239173,
		0.733984, 0.287033, 0.615532,
		41.904392, 33.831417, 33.269348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383942, 34.316090, 33.036880>,  <41.390602, 33.630493, 32.838478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383942, 34.316090, 33.036880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763615, 34.192959, 33.063099>,  <41.991417, 34.119080, 33.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763615, 34.192959, 33.063099>,  <41.383942, 34.316090, 33.036880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763615, 34.192959, 33.063099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269347, 0.686784, -0.675115,
		0.162804, 0.658461, 0.734795,
		0.949182, -0.307826, 0.065543,
		42.048370, 34.100613, 33.082764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639450, 34.830502, 32.762657>,  <41.383942, 34.316090, 33.036880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639450, 34.830502, 32.762657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924873, 34.554501, 32.714111>,  <42.096127, 34.388901, 32.684986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924873, 34.554501, 32.714111>,  <41.639450, 34.830502, 32.762657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924873, 34.554501, 32.714111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286514, 0.445487, -0.848205,
		0.639327, 0.570475, 0.515577,
		0.713562, -0.690000, -0.121363,
		42.138943, 34.347500, 32.677704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242035, 35.195564, 32.651970>,  <41.639450, 34.830502, 32.762657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242035, 35.195564, 32.651970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324249, 34.828327, 32.516407>,  <42.373577, 34.607983, 32.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324249, 34.828327, 32.516407>,  <42.242035, 35.195564, 32.651970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324249, 34.828327, 32.516407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219788, 0.380754, -0.898176,
		0.953650, 0.110120, 0.280045,
		0.205535, -0.918096, -0.338903,
		42.385910, 34.552898, 32.414738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929813, 35.173779, 32.436054>,  <42.242035, 35.195564, 32.651970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929813, 35.173779, 32.436054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717834, 34.890980, 32.248734>,  <42.590645, 34.721302, 32.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717834, 34.890980, 32.248734>,  <42.929813, 35.173779, 32.436054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717834, 34.890980, 32.248734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412457, 0.267621, -0.870780,
		0.740966, -0.654625, 0.149780,
		-0.529951, -0.706997, -0.468303,
		42.558849, 34.678879, 32.108242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421116, 34.779079, 31.980186>,  <42.929813, 35.173779, 32.436054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421116, 34.779079, 31.980186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048740, 34.720562, 31.846346>,  <42.825317, 34.685452, 31.766041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048740, 34.720562, 31.846346>,  <43.421116, 34.779079, 31.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048740, 34.720562, 31.846346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320611, 0.111253, -0.940655,
		0.174843, -0.982964, -0.056664,
		-0.930934, -0.146300, -0.334601,
		42.769459, 34.676674, 31.745966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496418, 34.533321, 31.323912>,  <43.421116, 34.779079, 31.980186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496418, 34.533321, 31.323912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099422, 34.580986, 31.312784>,  <42.861225, 34.609585, 31.306108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099422, 34.580986, 31.312784>,  <43.496418, 34.533321, 31.323912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099422, 34.580986, 31.312784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055352, 0.234444, -0.970552,
		-0.109133, -0.964798, -0.239278,
		-0.992485, 0.119164, -0.027817,
		42.801678, 34.616734, 31.304440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333195, 34.206043, 30.784119>,  <43.496418, 34.533321, 31.323912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333195, 34.206043, 30.784119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023319, 34.451908, 30.843515>,  <42.837395, 34.599426, 30.879154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023319, 34.451908, 30.843515>,  <43.333195, 34.206043, 30.784119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023319, 34.451908, 30.843515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022247, 0.261175, -0.965035,
		-0.631953, -0.744297, -0.216004,
		-0.774688, 0.614662, 0.148492,
		42.790913, 34.636307, 30.888063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664196, 34.099754, 30.286837>,  <43.333195, 34.206043, 30.784119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664196, 34.099754, 30.286837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708019, 34.474892, 30.418556>,  <42.734314, 34.699974, 30.497589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708019, 34.474892, 30.418556>,  <42.664196, 34.099754, 30.286837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708019, 34.474892, 30.418556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150638, 0.311803, -0.938129,
		-0.982500, 0.152382, -0.107117,
		0.109554, 0.937848, 0.329301,
		42.740887, 34.756245, 30.517347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447300, 34.533047, 29.718679>,  <42.664196, 34.099754, 30.286837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447300, 34.533047, 29.718679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606556, 34.809258, 29.960228>,  <42.702110, 34.974983, 30.105158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606556, 34.809258, 29.960228>,  <42.447300, 34.533047, 29.718679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606556, 34.809258, 29.960228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110490, 0.617406, -0.778846,
		-0.910646, 0.376811, 0.169518,
		0.398140, 0.690523, 0.603873,
		42.725998, 35.016415, 30.141390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158417, 35.171631, 29.492962>,  <42.447300, 34.533047, 29.718679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158417, 35.171631, 29.492962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474518, 35.301964, 29.700550>,  <42.664181, 35.380161, 29.825102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474518, 35.301964, 29.700550>,  <42.158417, 35.171631, 29.492962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474518, 35.301964, 29.700550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146542, 0.721852, -0.676355,
		-0.594995, 0.610545, 0.522701,
		0.790257, 0.325830, 0.518968,
		42.711594, 35.399712, 29.856241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198555, 35.938461, 29.457529>,  <42.158417, 35.171631, 29.492962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198555, 35.938461, 29.457529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573624, 35.845936, 29.561266>,  <42.798664, 35.790421, 29.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573624, 35.845936, 29.561266>,  <42.198555, 35.938461, 29.457529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573624, 35.845936, 29.561266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347154, 0.657424, -0.668788,
		-0.015794, 0.717137, 0.696753,
		0.937675, -0.231318, 0.259341,
		42.854927, 35.776539, 29.639069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478554, 36.637825, 29.639500>,  <42.198555, 35.938461, 29.457529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478554, 36.637825, 29.639500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776978, 36.382580, 29.563389>,  <42.956032, 36.229431, 29.517723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776978, 36.382580, 29.563389>,  <42.478554, 36.637825, 29.639500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776978, 36.382580, 29.563389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469785, 0.706918, -0.528744,
		0.471910, 0.305084, 0.827179,
		0.746059, -0.638115, -0.190277,
		43.000793, 36.191147, 29.506306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154316, 36.995216, 29.599937>,  <42.478554, 36.637825, 29.639500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154316, 36.995216, 29.599937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268890, 36.667679, 29.400957>,  <43.337635, 36.471157, 29.281569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268890, 36.667679, 29.400957>,  <43.154316, 36.995216, 29.599937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268890, 36.667679, 29.400957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452835, 0.573253, -0.682877,
		0.844332, -0.029664, 0.534999,
		0.286433, -0.818841, -0.497448,
		43.354820, 36.422028, 29.251722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715916, 37.173679, 29.406151>,  <43.154316, 36.995216, 29.599937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715916, 37.173679, 29.406151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646423, 36.863209, 29.163708>,  <43.604729, 36.676926, 29.018242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646423, 36.863209, 29.163708>,  <43.715916, 37.173679, 29.406151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646423, 36.863209, 29.163708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474035, 0.473560, -0.742315,
		0.863196, -0.416280, 0.285663,
		-0.173732, -0.776178, -0.606106,
		43.594303, 36.630356, 28.981876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311306, 37.248436, 28.998724>,  <43.715916, 37.173679, 29.406151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311306, 37.248436, 28.998724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068989, 36.998283, 28.801987>,  <43.923599, 36.848190, 28.683945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068989, 36.998283, 28.801987>,  <44.311306, 37.248436, 28.998724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068989, 36.998283, 28.801987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469419, 0.218184, -0.855594,
		0.642387, -0.749194, 0.161393,
		-0.605792, -0.625383, -0.491844,
		43.887253, 36.810669, 28.654434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768787, 36.866482, 28.528030>,  <44.311306, 37.248436, 28.998724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768787, 36.866482, 28.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396416, 36.807392, 28.394432>,  <44.172993, 36.771938, 28.314272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396416, 36.807392, 28.394432>,  <44.768787, 36.866482, 28.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396416, 36.807392, 28.394432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326626, 0.072350, -0.942380,
		0.163377, -0.986379, -0.019101,
		-0.930926, -0.147725, -0.333997,
		44.117138, 36.763077, 28.294233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791325, 36.402161, 27.819963>,  <44.768787, 36.866482, 28.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791325, 36.402161, 27.819963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431023, 36.575722, 27.827681>,  <44.214840, 36.679859, 27.832310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431023, 36.575722, 27.827681>,  <44.791325, 36.402161, 27.819963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431023, 36.575722, 27.827681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092223, 0.234479, -0.967737,
		-0.424424, -0.869914, -0.251224,
		-0.900755, 0.433899, 0.019292,
		44.160797, 36.705891, 27.833467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384155, 36.170509, 27.317570>,  <44.791325, 36.402161, 27.819963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384155, 36.170509, 27.317570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216743, 36.528736, 27.377975>,  <44.116299, 36.743671, 27.414219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216743, 36.528736, 27.377975>,  <44.384155, 36.170509, 27.317570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216743, 36.528736, 27.377975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132106, 0.224539, -0.965469,
		-0.898546, -0.384123, -0.212284,
		-0.418525, 0.895562, 0.151014,
		44.091187, 36.797405, 27.423279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669758, 36.236797, 26.947752>,  <44.384155, 36.170509, 27.317570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669758, 36.236797, 26.947752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819668, 36.605869, 26.983961>,  <43.909615, 36.827312, 27.005686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819668, 36.605869, 26.983961>,  <43.669758, 36.236797, 26.947752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819668, 36.605869, 26.983961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140668, 0.153100, -0.978147,
		-0.916380, 0.353856, 0.187171,
		0.374779, 0.922684, 0.090522,
		43.932102, 36.882675, 27.011118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478699, 36.608246, 26.282471>,  <43.669758, 36.236797, 26.947752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478699, 36.608246, 26.282471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722477, 36.878754, 26.447994>,  <43.868744, 37.041058, 26.547308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722477, 36.878754, 26.447994>,  <43.478699, 36.608246, 26.282471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722477, 36.878754, 26.447994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152851, 0.411930, -0.898304,
		-0.777953, 0.610720, 0.147682,
		0.609447, 0.676265, 0.413811,
		43.905312, 37.081635, 26.572138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331287, 37.292652, 26.092031>,  <43.478699, 36.608246, 26.282471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331287, 37.292652, 26.092031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715157, 37.350479, 26.188473>,  <43.945477, 37.385174, 26.246338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715157, 37.350479, 26.188473>,  <43.331287, 37.292652, 26.092031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715157, 37.350479, 26.188473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170858, 0.381125, -0.908599,
		-0.223242, 0.913151, 0.341054,
		0.959672, 0.144566, 0.241102,
		44.003059, 37.393848, 26.260803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470833, 37.966747, 25.760117>,  <43.331287, 37.292652, 26.092031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470833, 37.966747, 25.760117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825802, 37.802006, 25.842936>,  <44.038784, 37.703163, 25.892626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825802, 37.802006, 25.842936>,  <43.470833, 37.966747, 25.760117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825802, 37.802006, 25.842936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380747, 0.401698, -0.832869,
		0.259848, 0.817935, 0.513285,
		0.887418, -0.411851, 0.207046,
		44.092026, 37.678452, 25.905048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028656, 38.483982, 25.708515>,  <43.470833, 37.966747, 25.760117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028656, 38.483982, 25.708515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102707, 38.102901, 25.612108>,  <44.147137, 37.874252, 25.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102707, 38.102901, 25.612108>,  <44.028656, 38.483982, 25.708515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102707, 38.102901, 25.612108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143075, 0.268771, -0.952519,
		0.972244, 0.141854, 0.186064,
		0.185127, -0.952701, -0.241016,
		44.158245, 37.817093, 25.539804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739285, 38.276245, 25.617579>,  <44.028656, 38.483982, 25.708515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739285, 38.276245, 25.617579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597889, 38.020237, 25.344692>,  <44.513054, 37.866631, 25.180960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597889, 38.020237, 25.344692>,  <44.739285, 38.276245, 25.617579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597889, 38.020237, 25.344692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242462, 0.641687, -0.727633,
		0.903471, -0.422619, -0.071645,
		-0.353485, -0.640024, -0.682215,
		44.491844, 37.828228, 25.140028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224739, 38.069221, 25.047884>,  <44.739285, 38.276245, 25.617579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224739, 38.069221, 25.047884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857052, 38.010777, 24.901627>,  <44.636440, 37.975712, 24.813871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857052, 38.010777, 24.901627>,  <45.224739, 38.069221, 25.047884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857052, 38.010777, 24.901627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205249, 0.614674, -0.761609,
		0.336031, -0.775131, -0.535028,
		-0.919215, -0.146110, -0.365644,
		44.581287, 37.966942, 24.791933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435268, 37.942223, 24.354057>,  <45.224739, 38.069221, 25.047884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435268, 37.942223, 24.354057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739300, 37.954350, 24.094408>,  <45.921719, 37.961624, 23.938618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739300, 37.954350, 24.094408>,  <45.435268, 37.942223, 24.354057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739300, 37.954350, 24.094408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649780, -0.022915, 0.759777,
		0.008160, -0.999278, -0.037117,
		0.760078, 0.030318, -0.649124,
		45.967323, 37.963444, 23.899672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835110, 37.340492, 24.501944>,  <45.435268, 37.942223, 24.354057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835110, 37.340492, 24.501944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098991, 37.596428, 24.344263>,  <46.257320, 37.749989, 24.249655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.098991, 37.596428, 24.344263>,  <45.835110, 37.340492, 24.501944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098991, 37.596428, 24.344263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619824, -0.166619, 0.766849,
		0.424980, -0.750228, -0.506508,
		0.659705, 0.639841, -0.394199,
		46.296902, 37.788380, 24.226004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475029, 37.228485, 24.840534>,  <45.835110, 37.340492, 24.501944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475029, 37.228485, 24.840534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577648, 37.543243, 24.616041>,  <46.639221, 37.732098, 24.481344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577648, 37.543243, 24.616041>,  <46.475029, 37.228485, 24.840534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577648, 37.543243, 24.616041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679842, 0.265831, 0.683482,
		0.687020, -0.556897, -0.466764,
		0.256549, 0.786892, -0.561234,
		46.654613, 37.779312, 24.447672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160099, 36.798775, 24.874941>,  <46.475029, 37.228485, 24.840534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160099, 36.798775, 24.874941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483757, 36.901859, 25.086174>,  <47.677952, 36.963711, 25.212914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483757, 36.901859, 25.086174>,  <47.160099, 36.798775, 24.874941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483757, 36.901859, 25.086174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239224, -0.676378, 0.696624,
		0.536712, -0.689999, -0.485636,
		0.809143, 0.257711, 0.528085,
		47.726501, 36.979172, 25.244600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457977, 36.115707, 25.074677>,  <47.160099, 36.798775, 24.874941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457977, 36.115707, 25.074677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535454, 36.442059, 25.292603>,  <47.581940, 36.637871, 25.423359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535454, 36.442059, 25.292603>,  <47.457977, 36.115707, 25.074677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535454, 36.442059, 25.292603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342808, -0.464043, 0.816791,
		0.919220, -0.344973, 0.189808,
		0.193692, 0.815878, 0.544817,
		47.593563, 36.686821, 25.456047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.356037, 35.906647, 25.764376>,  <47.457977, 36.115707, 25.074677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.356037, 35.906647, 25.764376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.387390, 36.304237, 25.795000>,  <47.406204, 36.542793, 25.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.387390, 36.304237, 25.795000>,  <47.356037, 35.906647, 25.764376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.387390, 36.304237, 25.795000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278690, -0.051886, 0.958978,
		0.957177, -0.096507, 0.272945,
		0.078386, 0.993979, 0.076560,
		47.410904, 36.602432, 25.817968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913250, 36.106773, 26.290712>,  <47.356037, 35.906647, 25.764376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913250, 36.106773, 26.290712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596619, 36.342182, 26.224936>,  <47.406639, 36.483429, 26.185471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596619, 36.342182, 26.224936>,  <47.913250, 36.106773, 26.290712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596619, 36.342182, 26.224936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311934, -0.157773, 0.936912,
		0.525454, 0.792934, 0.308471,
		-0.791578, 0.588527, -0.164441,
		47.359146, 36.518742, 26.175604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904663, 36.621471, 26.837763>,  <47.913250, 36.106773, 26.290712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904663, 36.621471, 26.837763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531963, 36.528858, 26.725876>,  <47.308346, 36.473289, 26.658743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531963, 36.528858, 26.725876>,  <47.904663, 36.621471, 26.837763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531963, 36.528858, 26.725876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247817, -0.157565, 0.955908,
		-0.265398, 0.959982, 0.089433,
		-0.931746, -0.231533, -0.279717,
		47.252438, 36.459400, 26.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.566490, 36.858913, 27.389973>,  <47.904663, 36.621471, 26.837763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.566490, 36.858913, 27.389973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309769, 36.634727, 27.180607>,  <47.155735, 36.500217, 27.054987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309769, 36.634727, 27.180607>,  <47.566490, 36.858913, 27.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309769, 36.634727, 27.180607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410785, -0.325094, 0.851804,
		-0.647566, 0.761704, -0.021583,
		-0.641805, -0.560465, -0.523416,
		47.117226, 36.466587, 27.023582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.886906, 37.115646, 27.549021>,  <47.566490, 36.858913, 27.389973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.886906, 37.115646, 27.549021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826450, 36.752785, 27.391930>,  <46.790176, 36.535069, 27.297674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826450, 36.752785, 27.391930>,  <46.886906, 37.115646, 27.549021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826450, 36.752785, 27.391930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678478, -0.193735, 0.708615,
		-0.718905, 0.373559, -0.586199,
		-0.151143, -0.907150, -0.392728,
		46.781109, 36.480640, 27.274111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112679, 37.016273, 27.366787>,  <46.886906, 37.115646, 27.549021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112679, 37.016273, 27.366787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343517, 36.706871, 27.471588>,  <46.482021, 36.521229, 27.534470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343517, 36.706871, 27.471588>,  <46.112679, 37.016273, 27.366787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343517, 36.706871, 27.471588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645349, -0.235320, 0.726739,
		-0.500483, -0.588482, -0.634985,
		0.577097, -0.773507, 0.262003,
		46.516647, 36.474819, 27.550188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583271, 36.549114, 27.641384>,  <46.112679, 37.016273, 27.366787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583271, 36.549114, 27.641384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923714, 36.371311, 27.753113>,  <46.127979, 36.264629, 27.820150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923714, 36.371311, 27.753113>,  <45.583271, 36.549114, 27.641384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923714, 36.371311, 27.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415928, -0.246291, 0.875411,
		-0.320334, -0.861251, -0.394504,
		0.851111, -0.444509, 0.279323,
		46.179047, 36.237957, 27.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450821, 35.784840, 27.865026>,  <45.583271, 36.549114, 27.641384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450821, 35.784840, 27.865026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799988, 35.867863, 28.041634>,  <46.009487, 35.917675, 28.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799988, 35.867863, 28.041634>,  <45.450821, 35.784840, 27.865026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799988, 35.867863, 28.041634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271224, -0.545792, 0.792811,
		0.405531, -0.811807, -0.420136,
		0.872916, 0.207559, 0.441517,
		46.061863, 35.930130, 28.174089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595039, 35.236977, 28.186865>,  <45.450821, 35.784840, 27.865026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595039, 35.236977, 28.186865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838902, 35.488136, 28.380384>,  <45.985218, 35.638832, 28.496496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838902, 35.488136, 28.380384>,  <45.595039, 35.236977, 28.186865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838902, 35.488136, 28.380384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142178, -0.513827, 0.846030,
		0.779810, -0.584575, -0.223985,
		0.609657, 0.627896, 0.483801,
		46.021797, 35.676506, 28.525524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095463, 34.783142, 28.582310>,  <45.595039, 35.236977, 28.186865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095463, 34.783142, 28.582310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085117, 35.144775, 28.752935>,  <46.078911, 35.361755, 28.855310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085117, 35.144775, 28.752935>,  <46.095463, 34.783142, 28.582310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085117, 35.144775, 28.752935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044920, -0.427328, 0.902980,
		0.998656, 0.004193, 0.051664,
		-0.025864, 0.904087, 0.426565,
		46.077358, 35.416000, 28.880905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566273, 34.819401, 29.137613>,  <46.095463, 34.783142, 28.582310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566273, 34.819401, 29.137613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321308, 35.125599, 29.216574>,  <46.174328, 35.309319, 29.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321308, 35.125599, 29.216574>,  <46.566273, 34.819401, 29.137613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321308, 35.125599, 29.216574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029536, -0.227376, 0.973359,
		0.789984, 0.601930, 0.116639,
		-0.612415, 0.765493, 0.197402,
		46.137585, 35.355247, 29.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779720, 35.105530, 29.787283>,  <46.566273, 34.819401, 29.137613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779720, 35.105530, 29.787283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397789, 35.222790, 29.767824>,  <46.168629, 35.293148, 29.756149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397789, 35.222790, 29.767824>,  <46.779720, 35.105530, 29.787283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397789, 35.222790, 29.767824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136324, -0.286651, 0.948286,
		0.264047, 0.912081, 0.313666,
		-0.954827, 0.293153, -0.048649,
		46.111340, 35.310734, 29.753229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.653408, 35.551476, 30.477718>,  <46.779720, 35.105530, 29.787283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.653408, 35.551476, 30.477718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299263, 35.446129, 30.324474>,  <46.086777, 35.382919, 30.232529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299263, 35.446129, 30.324474>,  <46.653408, 35.551476, 30.477718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299263, 35.446129, 30.324474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364390, -0.118635, 0.923659,
		-0.288712, 0.957373, 0.009067,
		-0.885362, -0.263368, -0.383108,
		46.033653, 35.367119, 30.209541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076771, 35.981819, 30.834034>,  <46.653408, 35.551476, 30.477718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076771, 35.981819, 30.834034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884655, 35.664951, 30.683411>,  <45.769386, 35.474831, 30.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884655, 35.664951, 30.683411>,  <46.076771, 35.981819, 30.834034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884655, 35.664951, 30.683411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503974, -0.102130, 0.857660,
		-0.717867, 0.601700, -0.350179,
		-0.480290, -0.792166, -0.376557,
		45.740566, 35.427303, 30.570444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412792, 36.018974, 31.099955>,  <46.076771, 35.981819, 30.834034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412792, 36.018974, 31.099955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452351, 35.634510, 30.996889>,  <45.476086, 35.403831, 30.935049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452351, 35.634510, 30.996889>,  <45.412792, 36.018974, 31.099955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452351, 35.634510, 30.996889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339938, -0.275990, 0.899039,
		-0.935234, -0.001322, -0.354029,
		0.098897, -0.961159, -0.257666,
		45.482021, 35.346161, 30.919590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753510, 35.675610, 31.246443>,  <45.412792, 36.018974, 31.099955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753510, 35.675610, 31.246443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996719, 35.358711, 31.225847>,  <45.142647, 35.168571, 31.213490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996719, 35.358711, 31.225847>,  <44.753510, 35.675610, 31.246443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996719, 35.358711, 31.225847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513728, -0.442059, 0.735301,
		-0.605301, -0.420629, -0.675782,
		0.608024, -0.792247, -0.051490,
		45.179127, 35.121037, 31.210400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262512, 34.964104, 31.285679>,  <44.753510, 35.675610, 31.246443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262512, 34.964104, 31.285679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639400, 34.860416, 31.370552>,  <44.865536, 34.798203, 31.421476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639400, 34.860416, 31.370552>,  <44.262512, 34.964104, 31.285679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639400, 34.860416, 31.370552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327509, -0.579766, 0.746063,
		-0.070379, -0.772449, -0.631165,
		0.942223, -0.259219, 0.212181,
		44.922066, 34.782650, 31.434206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157204, 34.194340, 31.427605>,  <44.262512, 34.964104, 31.285679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157204, 34.194340, 31.427605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522324, 34.276237, 31.568953>,  <44.741398, 34.325375, 31.653761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522324, 34.276237, 31.568953>,  <44.157204, 34.194340, 31.427605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522324, 34.276237, 31.568953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194575, -0.542722, 0.817064,
		0.359068, -0.814576, -0.455561,
		0.912804, 0.204741, 0.353371,
		44.796165, 34.337658, 31.674963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458633, 33.506233, 31.669548>,  <44.157204, 34.194340, 31.427605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458633, 33.506233, 31.669548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617779, 33.829697, 31.842880>,  <44.713264, 34.023777, 31.946878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617779, 33.829697, 31.842880>,  <44.458633, 33.506233, 31.669548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617779, 33.829697, 31.842880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287788, -0.338477, 0.895886,
		0.871140, -0.481145, 0.098056,
		0.397861, 0.808661, 0.433328,
		44.737137, 34.072296, 31.972879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903801, 33.313614, 32.263710>,  <44.458633, 33.506233, 31.669548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903801, 33.313614, 32.263710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806065, 33.694962, 32.334579>,  <44.747425, 33.923771, 32.377102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806065, 33.694962, 32.334579>,  <44.903801, 33.313614, 32.263710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806065, 33.694962, 32.334579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286979, -0.245622, 0.925912,
		0.926252, 0.175390, 0.333611,
		-0.244338, 0.953367, 0.177174,
		44.732765, 33.980972, 32.387733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279285, 33.431805, 32.887836>,  <44.903801, 33.313614, 32.263710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279285, 33.431805, 32.887836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979210, 33.690430, 32.832447>,  <44.799164, 33.845604, 32.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979210, 33.690430, 32.832447>,  <45.279285, 33.431805, 32.887836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979210, 33.690430, 32.832447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442104, -0.334737, 0.832163,
		0.491696, 0.685496, 0.536964,
		-0.750186, 0.646565, -0.138472,
		44.754154, 33.884399, 32.790905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344128, 34.021328, 33.461029>,  <45.279285, 33.431805, 32.887836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344128, 34.021328, 33.461029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977783, 33.954357, 33.315063>,  <44.757977, 33.914173, 33.227486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977783, 33.954357, 33.315063>,  <45.344128, 34.021328, 33.461029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977783, 33.954357, 33.315063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293918, -0.339559, 0.893483,
		-0.273504, 0.925563, 0.261779,
		-0.915865, -0.167429, -0.364910,
		44.703022, 33.904129, 33.205589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979271, 34.340042, 33.919891>,  <45.344128, 34.021328, 33.461029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979271, 34.340042, 33.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716576, 34.103832, 33.732288>,  <44.558956, 33.962105, 33.619728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716576, 34.103832, 33.732288>,  <44.979271, 34.340042, 33.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716576, 34.103832, 33.732288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290043, -0.376290, 0.879933,
		-0.696108, 0.713919, 0.075846,
		-0.656741, -0.590529, -0.469005,
		44.519554, 33.926674, 33.591587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625015, 34.567810, 34.239162>,  <44.979271, 34.340042, 33.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625015, 34.567810, 34.239162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901188, 34.450665, 33.974579>,  <46.066891, 34.380375, 33.815826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901188, 34.450665, 33.974579>,  <45.625015, 34.567810, 34.239162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901188, 34.450665, 33.974579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490764, 0.861409, 0.130864,
		0.531464, -0.414975, 0.738472,
		0.690432, -0.292866, -0.661463,
		46.108318, 34.362804, 33.776138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333221, 34.402821, 34.719799>,  <45.625015, 34.567810, 34.239162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333221, 34.402821, 34.719799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323746, 34.501839, 34.332363>,  <46.318058, 34.561249, 34.099903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323746, 34.501839, 34.332363>,  <46.333221, 34.402821, 34.719799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323746, 34.501839, 34.332363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579902, 0.792607, 0.188381,
		0.814342, -0.557222, -0.162329,
		-0.023693, 0.247541, -0.968587,
		46.316639, 34.576099, 34.041786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981823, 34.547153, 34.534893>,  <46.333221, 34.402821, 34.719799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981823, 34.547153, 34.534893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721558, 34.749031, 34.307941>,  <46.565399, 34.870159, 34.171772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721558, 34.749031, 34.307941>,  <46.981823, 34.547153, 34.534893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721558, 34.749031, 34.307941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460822, 0.856298, 0.233232,
		0.603553, -0.109702, -0.789740,
		-0.650667, 0.504698, -0.567374,
		46.526360, 34.900440, 34.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716774, 34.669125, 34.577282>,  <46.981823, 34.547153, 34.534893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716774, 34.669125, 34.577282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692696, 35.020916, 34.766125>,  <47.678249, 35.231991, 34.879429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.692696, 35.020916, 34.766125>,  <47.716774, 34.669125, 34.577282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.692696, 35.020916, 34.766125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015724, 0.472072, -0.881420,
		-0.998063, -0.060485, -0.014589,
		-0.060200, 0.879483, 0.472108,
		47.674637, 35.284760, 34.907757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.077316, 34.985653, 45.507236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686745, 35.022449, 45.429134>,  <35.452400, 35.044529, 45.382275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686745, 35.022449, 45.429134>,  <36.077316, 34.985653, 45.507236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686745, 35.022449, 45.429134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214749, 0.323227, -0.921633,
		-0.021676, -0.941839, -0.335364,
		-0.976429, 0.091996, -0.195253,
		35.393818, 35.050049, 45.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006096, 34.929607, 44.809689>,  <36.077316, 34.985653, 45.507236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006096, 34.929607, 44.809689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630745, 35.054363, 44.869247>,  <35.405533, 35.129215, 44.904984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630745, 35.054363, 44.869247>,  <36.006096, 34.929607, 44.809689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630745, 35.054363, 44.869247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034318, 0.512792, -0.857827,
		-0.343903, -0.799856, -0.491896,
		-0.938378, 0.311890, 0.148901,
		35.349232, 35.147930, 44.913918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675018, 34.725891, 44.105568>,  <36.006096, 34.929607, 44.809689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675018, 34.725891, 44.105568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490070, 35.029221, 44.289379>,  <35.379101, 35.211220, 44.399666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490070, 35.029221, 44.289379>,  <35.675018, 34.725891, 44.105568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490070, 35.029221, 44.289379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027148, 0.505898, -0.862166,
		-0.886273, -0.411113, -0.213324,
		-0.462368, 0.758323, 0.459525,
		35.351360, 35.256718, 44.427235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094990, 34.920895, 43.707417>,  <35.675018, 34.725891, 44.105568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094990, 34.920895, 43.707417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174114, 35.252666, 43.916382>,  <35.221588, 35.451729, 44.041759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174114, 35.252666, 43.916382>,  <35.094990, 34.920895, 43.707417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174114, 35.252666, 43.916382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091637, 0.546257, -0.832590,
		-0.975947, 0.116826, 0.184064,
		0.197814, 0.829430, 0.522413,
		35.233459, 35.501495, 44.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631538, 35.484684, 43.503338>,  <35.094990, 34.920895, 43.707417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631538, 35.484684, 43.503338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926102, 35.696095, 43.672268>,  <35.102840, 35.822941, 43.773624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926102, 35.696095, 43.672268>,  <34.631538, 35.484684, 43.503338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926102, 35.696095, 43.672268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074588, 0.683870, -0.725781,
		-0.672410, 0.502973, 0.543031,
		0.736412, 0.528526, 0.422325,
		35.147026, 35.854652, 43.798965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545479, 36.239220, 43.191154>,  <34.631538, 35.484684, 43.503338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545479, 36.239220, 43.191154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900219, 36.261654, 43.374611>,  <35.113064, 36.275116, 43.484684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900219, 36.261654, 43.374611>,  <34.545479, 36.239220, 43.191154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900219, 36.261654, 43.374611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343147, 0.584775, -0.735043,
		-0.309429, 0.809254, 0.499362,
		0.886851, 0.056089, 0.458639,
		35.166275, 36.278481, 43.512203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694305, 36.900509, 43.157333>,  <34.545479, 36.239220, 43.191154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694305, 36.900509, 43.157333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048389, 36.724102, 43.216537>,  <35.260841, 36.618259, 43.252060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048389, 36.724102, 43.216537>,  <34.694305, 36.900509, 43.157333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048389, 36.724102, 43.216537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382565, 0.509139, -0.770988,
		0.264661, 0.739110, 0.619413,
		0.885211, -0.441015, 0.148008,
		35.313953, 36.591797, 43.260941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204056, 37.335793, 42.881645>,  <34.694305, 36.900509, 43.157333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204056, 37.335793, 42.881645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388008, 36.980610, 42.884212>,  <35.498379, 36.767498, 42.885754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388008, 36.980610, 42.884212>,  <35.204056, 37.335793, 42.881645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388008, 36.980610, 42.884212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415209, 0.208640, -0.885478,
		0.784929, 0.409877, 0.464638,
		0.459879, -0.887958, 0.006417,
		35.525970, 36.714222, 42.886139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872292, 37.516720, 42.777256>,  <35.204056, 37.335793, 42.881645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872292, 37.516720, 42.777256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842220, 37.134277, 42.663967>,  <35.824177, 36.904812, 42.595993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842220, 37.134277, 42.663967>,  <35.872292, 37.516720, 42.777256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842220, 37.134277, 42.663967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304303, 0.248486, -0.919595,
		0.949604, -0.155316, 0.272265,
		-0.075174, -0.956102, -0.283227,
		35.819668, 36.847446, 42.578999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351536, 37.477188, 42.325195>,  <35.872292, 37.516720, 42.777256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351536, 37.477188, 42.325195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162830, 37.132416, 42.250877>,  <36.049606, 36.925552, 42.206287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162830, 37.132416, 42.250877>,  <36.351536, 37.477188, 42.325195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162830, 37.132416, 42.250877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325683, 0.025468, -0.945136,
		0.819372, -0.506389, 0.268701,
		-0.471763, -0.861929, -0.185791,
		36.021301, 36.873837, 42.195141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753750, 37.182697, 41.949421>,  <36.351536, 37.477188, 42.325195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753750, 37.182697, 41.949421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422310, 36.981319, 41.851471>,  <36.223446, 36.860493, 41.792702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422310, 36.981319, 41.851471>,  <36.753750, 37.182697, 41.949421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422310, 36.981319, 41.851471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378649, -0.181799, -0.907510,
		0.412363, -0.844685, 0.341268,
		-0.828602, -0.503444, -0.244872,
		36.173729, 36.830288, 41.778011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932343, 36.499359, 41.755573>,  <36.753750, 37.182697, 41.949421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932343, 36.499359, 41.755573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594433, 36.604332, 41.569035>,  <36.391685, 36.667316, 41.457111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594433, 36.604332, 41.569035>,  <36.932343, 36.499359, 41.755573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594433, 36.604332, 41.569035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339591, -0.410602, -0.846217,
		-0.413544, -0.873238, 0.257755,
		-0.844783, 0.262417, -0.466346,
		36.341000, 36.683064, 41.429131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731911, 35.877632, 41.424911>,  <36.932343, 36.499359, 41.755573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731911, 35.877632, 41.424911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508774, 36.132923, 41.212692>,  <36.374889, 36.286098, 41.085361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508774, 36.132923, 41.212692>,  <36.731911, 35.877632, 41.424911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508774, 36.132923, 41.212692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403098, -0.350439, -0.845402,
		-0.725481, -0.685464, -0.061777,
		-0.557844, 0.638225, -0.530546,
		36.341419, 36.324390, 41.053528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414261, 35.553658, 40.892487>,  <36.731911, 35.877632, 41.424911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414261, 35.553658, 40.892487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396679, 35.927410, 40.751068>,  <36.386127, 36.151661, 40.666218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396679, 35.927410, 40.751068>,  <36.414261, 35.553658, 40.892487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396679, 35.927410, 40.751068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262716, -0.330618, -0.906461,
		-0.963871, -0.132729, -0.230944,
		-0.043959, 0.934385, -0.353543,
		36.383492, 36.207726, 40.645004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171963, 35.534443, 40.140465>,  <36.414261, 35.553658, 40.892487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171963, 35.534443, 40.140465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337410, 35.898071, 40.160496>,  <36.436676, 36.116249, 40.172512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337410, 35.898071, 40.160496>,  <36.171963, 35.534443, 40.140465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337410, 35.898071, 40.160496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284594, -0.076852, -0.955563,
		-0.864829, 0.409486, -0.290504,
		0.413616, 0.909074, 0.050074,
		36.461494, 36.170792, 40.175518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105961, 35.810249, 39.468742>,  <36.171963, 35.534443, 40.140465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105961, 35.810249, 39.468742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350998, 36.083172, 39.628334>,  <36.498020, 36.246925, 39.724087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350998, 36.083172, 39.628334>,  <36.105961, 35.810249, 39.468742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350998, 36.083172, 39.628334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431384, 0.134346, -0.892109,
		-0.662294, 0.718615, -0.212037,
		0.612597, 0.682308, 0.398975,
		36.534779, 36.287865, 39.748028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186005, 36.356747, 38.896309>,  <36.105961, 35.810249, 39.468742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186005, 36.356747, 38.896309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506393, 36.336147, 39.134899>,  <36.698627, 36.323788, 39.278053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506393, 36.336147, 39.134899>,  <36.186005, 36.356747, 38.896309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506393, 36.336147, 39.134899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597987, 0.117304, -0.792875,
		-0.029140, 0.991760, 0.124751,
		0.800976, -0.051495, 0.596478,
		36.746685, 36.320698, 39.313843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538837, 36.852581, 38.637897>,  <36.186005, 36.356747, 38.896309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538837, 36.852581, 38.637897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797630, 36.633739, 38.850346>,  <36.952904, 36.502434, 38.977814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797630, 36.633739, 38.850346>,  <36.538837, 36.852581, 38.637897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797630, 36.633739, 38.850346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647028, 0.025357, -0.762044,
		0.403452, 0.836679, 0.370399,
		0.646978, -0.547107, 0.531125,
		36.991722, 36.469608, 39.009682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153240, 37.170433, 38.551373>,  <36.538837, 36.852581, 38.637897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153240, 37.170433, 38.551373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240223, 36.802441, 38.681816>,  <37.292412, 36.581646, 38.760082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240223, 36.802441, 38.681816>,  <37.153240, 37.170433, 38.551373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240223, 36.802441, 38.681816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729714, -0.068663, -0.680296,
		0.648251, 0.385901, 0.656392,
		0.217458, -0.919981, 0.326108,
		37.305462, 36.526447, 38.779648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870209, 37.156174, 38.769745>,  <37.153240, 37.170433, 38.551373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870209, 37.156174, 38.769745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762772, 36.795029, 38.635464>,  <37.698307, 36.578342, 38.554897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762772, 36.795029, 38.635464>,  <37.870209, 37.156174, 38.769745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762772, 36.795029, 38.635464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687079, 0.064681, -0.723698,
		0.675114, -0.425034, 0.602966,
		-0.268595, -0.902864, -0.335699,
		37.682194, 36.524170, 38.534756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406166, 37.014946, 38.280018>,  <37.870209, 37.156174, 38.769745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406166, 37.014946, 38.280018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150761, 36.717632, 38.200188>,  <37.997517, 36.539246, 38.152290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150761, 36.717632, 38.200188>,  <38.406166, 37.014946, 38.280018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150761, 36.717632, 38.200188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374639, -0.073670, -0.924239,
		0.672270, -0.664907, 0.325502,
		-0.638513, -0.743284, -0.199574,
		37.959206, 36.494648, 38.140316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668827, 36.433632, 38.084297>,  <38.406166, 37.014946, 38.280018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668827, 36.433632, 38.084297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307144, 36.394653, 37.917961>,  <38.090134, 36.371265, 37.818161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307144, 36.394653, 37.917961>,  <38.668827, 36.433632, 38.084297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307144, 36.394653, 37.917961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426978, -0.182709, -0.885611,
		0.010322, -0.978326, 0.206814,
		-0.904203, -0.097446, -0.415838,
		38.035885, 36.365421, 37.793209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208942, 35.931942, 37.893044>,  <38.668827, 36.433632, 38.084297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208942, 35.931942, 37.893044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608501, 35.916195, 37.882885>,  <39.848236, 35.906746, 37.876789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608501, 35.916195, 37.882885>,  <39.208942, 35.931942, 37.893044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608501, 35.916195, 37.882885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019553, -0.142384, 0.989618,
		-0.042573, -0.989028, -0.141457,
		0.998902, -0.039365, -0.025400,
		39.908173, 35.904385, 37.875263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361740, 35.415024, 38.304855>,  <39.208942, 35.931942, 37.893044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361740, 35.415024, 38.304855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715721, 35.600391, 38.286514>,  <39.928108, 35.711613, 38.275509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.715721, 35.600391, 38.286514>,  <39.361740, 35.415024, 38.304855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715721, 35.600391, 38.286514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210658, -0.310567, 0.926915,
		0.415312, -0.829933, -0.372460,
		0.884951, 0.463421, -0.045850,
		39.981205, 35.739418, 38.272758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936291, 34.978783, 38.413536>,  <39.361740, 35.415024, 38.304855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936291, 34.978783, 38.413536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071079, 35.335621, 38.533951>,  <40.151951, 35.549725, 38.606197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071079, 35.335621, 38.533951>,  <39.936291, 34.978783, 38.413536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071079, 35.335621, 38.533951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151674, -0.366990, 0.917776,
		0.929219, -0.263602, -0.258972,
		0.336968, 0.892094, 0.301032,
		40.172169, 35.603249, 38.624260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482670, 34.823490, 38.865425>,  <39.936291, 34.978783, 38.413536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482670, 34.823490, 38.865425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387299, 35.205528, 38.935783>,  <40.330074, 35.434753, 38.977997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387299, 35.205528, 38.935783>,  <40.482670, 34.823490, 38.865425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387299, 35.205528, 38.935783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234463, -0.119151, 0.964795,
		0.942432, 0.271277, -0.195526,
		-0.238430, 0.955098, 0.175896,
		40.315769, 35.492058, 38.988552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020161, 35.074017, 39.270988>,  <40.482670, 34.823490, 38.865425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020161, 35.074017, 39.270988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.728001, 35.341091, 39.328541>,  <40.552704, 35.501335, 39.363071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.728001, 35.341091, 39.328541>,  <41.020161, 35.074017, 39.270988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728001, 35.341091, 39.328541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080290, -0.125260, 0.988870,
		0.678282, 0.733825, 0.037882,
		-0.730402, 0.667691, 0.143881,
		40.508881, 35.541397, 39.371704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189178, 35.499859, 39.883591>,  <41.020161, 35.074017, 39.270988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189178, 35.499859, 39.883591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791142, 35.536217, 39.867908>,  <40.552319, 35.558033, 39.858498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.791142, 35.536217, 39.867908>,  <41.189178, 35.499859, 39.883591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791142, 35.536217, 39.867908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049080, -0.109021, 0.992827,
		0.085968, 0.989875, 0.112947,
		-0.995088, 0.090895, -0.039210,
		40.492615, 35.563484, 39.856144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945812, 36.105251, 40.413834>,  <41.189178, 35.499859, 39.883591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945812, 36.105251, 40.413834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 35.863632, 40.326088>,  <40.455467, 35.718662, 40.273441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 35.863632, 40.326088>,  <40.945812, 36.105251, 40.413834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639347, 35.863632, 40.326088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199394, -0.101062, 0.974694,
		-0.610928, 0.790517, -0.043012,
		-0.766165, -0.604045, -0.219366,
		40.409496, 35.682419, 40.260277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376705, 36.407993, 40.764820>,  <40.945812, 36.105251, 40.413834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376705, 36.407993, 40.764820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266098, 36.027279, 40.711693>,  <40.199734, 35.798851, 40.679817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266098, 36.027279, 40.711693>,  <40.376705, 36.407993, 40.764820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266098, 36.027279, 40.711693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254538, -0.060731, 0.965154,
		-0.926686, 0.300689, -0.225472,
		-0.276518, -0.951786, -0.132815,
		40.183144, 35.741741, 40.671848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675079, 36.336208, 41.091961>,  <40.376705, 36.407993, 40.764820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675079, 36.336208, 41.091961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801991, 35.957294, 41.074104>,  <39.878136, 35.729946, 41.063389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801991, 35.957294, 41.074104>,  <39.675079, 36.336208, 41.091961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801991, 35.957294, 41.074104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355982, -0.162598, 0.920238,
		-0.878984, -0.276078, -0.388804,
		0.317276, -0.947282, -0.044642,
		39.897175, 35.673111, 41.060711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093498, 36.034672, 41.392445>,  <39.675079, 36.336208, 41.091961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093498, 36.034672, 41.392445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411797, 35.796368, 41.436008>,  <39.602776, 35.653385, 41.462147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411797, 35.796368, 41.436008>,  <39.093498, 36.034672, 41.392445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411797, 35.796368, 41.436008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410481, -0.398317, 0.820273,
		-0.445304, -0.697434, -0.561507,
		0.795744, -0.595759, 0.108911,
		39.650520, 35.617641, 41.468681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819435, 35.417320, 41.510574>,  <39.093498, 36.034672, 41.392445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819435, 35.417320, 41.510574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194843, 35.372360, 41.641144>,  <39.420086, 35.345387, 41.719486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194843, 35.372360, 41.641144>,  <38.819435, 35.417320, 41.510574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194843, 35.372360, 41.641144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337872, -0.493204, 0.801619,
		0.070892, -0.862622, -0.500857,
		0.938518, -0.112397, 0.326420,
		39.476398, 35.338642, 41.739071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940453, 34.646053, 41.591759>,  <38.819435, 35.417320, 41.510574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940453, 34.646053, 41.591759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206783, 34.841610, 41.817200>,  <39.366581, 34.958942, 41.952465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.206783, 34.841610, 41.817200>,  <38.940453, 34.646053, 41.591759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206783, 34.841610, 41.817200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341333, -0.472116, 0.812772,
		0.663446, -0.733546, -0.147475,
		0.665831, 0.488893, 0.563607,
		39.406532, 34.988277, 41.986282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976410, 34.245010, 42.112934>,  <38.940453, 34.646053, 41.591759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976410, 34.245010, 42.112934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154171, 34.578766, 42.243351>,  <39.260826, 34.779018, 42.321602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154171, 34.578766, 42.243351>,  <38.976410, 34.245010, 42.112934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154171, 34.578766, 42.243351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083991, -0.323542, 0.942479,
		0.891881, -0.446224, -0.073702,
		0.444402, 0.834389, 0.326040,
		39.287491, 34.829082, 42.341164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394138, 33.988544, 42.543148>,  <38.976410, 34.245010, 42.112934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394138, 33.988544, 42.543148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379890, 34.371258, 42.658600>,  <39.371342, 34.600883, 42.727871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379890, 34.371258, 42.658600>,  <39.394138, 33.988544, 42.543148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379890, 34.371258, 42.658600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198653, -0.289825, 0.936236,
		0.979422, -0.023984, 0.200391,
		-0.035624, 0.956779, 0.288625,
		39.369202, 34.658291, 42.745186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621803, 33.991966, 43.200520>,  <39.394138, 33.988544, 42.543148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621803, 33.991966, 43.200520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395565, 34.321823, 43.197227>,  <39.259823, 34.519737, 43.195251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395565, 34.321823, 43.197227>,  <39.621803, 33.991966, 43.200520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395565, 34.321823, 43.197227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173786, -0.109431, 0.978685,
		0.806164, 0.554969, 0.205205,
		-0.565595, 0.824642, -0.008226,
		39.225887, 34.569214, 43.194759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664051, 34.500591, 43.878780>,  <39.621803, 33.991966, 43.200520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664051, 34.500591, 43.878780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305656, 34.607861, 43.737190>,  <39.090622, 34.672222, 43.652237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305656, 34.607861, 43.737190>,  <39.664051, 34.500591, 43.878780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305656, 34.607861, 43.737190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329407, 0.133235, 0.934741,
		0.297837, 0.954112, -0.031037,
		-0.895982, 0.268177, -0.353973,
		39.036861, 34.688313, 43.630997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557991, 35.006161, 44.321491>,  <39.664051, 34.500591, 43.878780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557991, 35.006161, 44.321491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204525, 34.919804, 44.155346>,  <38.992447, 34.867989, 44.055656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204525, 34.919804, 44.155346>,  <39.557991, 35.006161, 44.321491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204525, 34.919804, 44.155346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393686, -0.137350, 0.908926,
		-0.253284, 0.966708, 0.036376,
		-0.883662, -0.215896, -0.415368,
		38.939426, 34.855034, 44.030735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055012, 35.234673, 44.744068>,  <39.557991, 35.006161, 44.321491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055012, 35.234673, 44.744068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834431, 34.971737, 44.538620>,  <38.702084, 34.813976, 44.415352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834431, 34.971737, 44.538620>,  <39.055012, 35.234673, 44.744068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834431, 34.971737, 44.538620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466944, -0.266980, 0.843021,
		-0.691277, 0.704718, -0.159714,
		-0.551452, -0.657339, -0.513621,
		38.668995, 34.774536, 44.384533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.357327, 35.453171, 44.793102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364956, 35.067619, 44.686844>,  <38.369534, 34.836288, 44.623089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364956, 35.067619, 44.686844>,  <38.357327, 35.453171, 44.793102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364956, 35.067619, 44.686844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451391, -0.245374, 0.857926,
		-0.892123, 0.103550, -0.439767,
		0.019069, -0.963882, -0.265645,
		38.370678, 34.778454, 44.607151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691135, 35.240719, 44.884457>,  <38.357327, 35.453171, 44.793102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691135, 35.240719, 44.884457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885353, 34.891037, 44.886250>,  <38.001884, 34.681229, 44.887325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885353, 34.891037, 44.886250>,  <37.691135, 35.240719, 44.884457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885353, 34.891037, 44.886250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562907, -0.308713, 0.766702,
		-0.668869, -0.374787, -0.641988,
		0.485540, -0.874203, 0.004481,
		38.031013, 34.628777, 44.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170204, 34.731743, 44.894585>,  <37.691135, 35.240719, 44.884457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170204, 34.731743, 44.894585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497238, 34.546986, 45.032112>,  <37.693459, 34.436131, 45.114628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.497238, 34.546986, 45.032112>,  <37.170204, 34.731743, 44.894585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497238, 34.546986, 45.032112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557326, -0.484712, 0.674123,
		-0.144721, -0.742770, -0.653719,
		0.817583, -0.461895, 0.343817,
		37.742512, 34.408417, 45.135258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906307, 34.121670, 45.156799>,  <37.170204, 34.731743, 44.894585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906307, 34.121670, 45.156799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276428, 34.124279, 45.308468>,  <37.498501, 34.125847, 45.399471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276428, 34.124279, 45.308468>,  <36.906307, 34.121670, 45.156799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276428, 34.124279, 45.308468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301056, -0.595369, 0.744917,
		0.230610, -0.803426, -0.548931,
		0.925302, 0.006526, 0.379174,
		37.554020, 34.126236, 45.422218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111832, 33.348221, 45.296494>,  <36.906307, 34.121670, 45.156799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111832, 33.348221, 45.296494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336132, 33.588055, 45.524899>,  <37.470711, 33.731953, 45.661942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336132, 33.588055, 45.524899>,  <37.111832, 33.348221, 45.296494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336132, 33.588055, 45.524899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281379, -0.510607, 0.812469,
		0.778706, -0.616266, -0.117615,
		0.560752, 0.599581, 0.571017,
		37.504356, 33.767929, 45.696205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461040, 32.929539, 45.729214>,  <37.111832, 33.348221, 45.296494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461040, 32.929539, 45.729214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468544, 33.289356, 45.903786>,  <37.473045, 33.505245, 46.008530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468544, 33.289356, 45.903786>,  <37.461040, 32.929539, 45.729214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468544, 33.289356, 45.903786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349038, -0.403149, 0.845957,
		0.936921, -0.168200, 0.306411,
		0.018760, 0.899544, 0.436427,
		37.474171, 33.559219, 46.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673996, 32.824234, 46.340683>,  <37.461040, 32.929539, 45.729214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673996, 32.824234, 46.340683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502110, 33.184040, 46.372219>,  <37.398975, 33.399921, 46.391140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502110, 33.184040, 46.372219>,  <37.673996, 32.824234, 46.340683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502110, 33.184040, 46.372219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332503, -0.238811, 0.912366,
		0.839513, 0.365848, 0.401713,
		-0.429721, 0.899513, 0.078840,
		37.373192, 33.453896, 46.395870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924717, 33.092766, 46.975231>,  <37.673996, 32.824234, 46.340683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924717, 33.092766, 46.975231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600422, 33.313862, 46.898090>,  <37.405846, 33.446518, 46.851807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600422, 33.313862, 46.898090>,  <37.924717, 33.092766, 46.975231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600422, 33.313862, 46.898090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184543, 0.071321, 0.980233,
		0.555566, 0.830298, 0.044182,
		-0.810735, 0.552737, -0.192849,
		37.357201, 33.479683, 46.840237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885517, 33.806664, 47.432640>,  <37.924717, 33.092766, 46.975231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885517, 33.806664, 47.432640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518967, 33.689266, 47.323742>,  <37.299038, 33.618828, 47.258404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.518967, 33.689266, 47.323742>,  <37.885517, 33.806664, 47.432640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518967, 33.689266, 47.323742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302786, 0.063265, 0.950956,
		-0.261877, 0.953865, -0.146841,
		-0.916374, -0.293495, -0.272249,
		37.244053, 33.601219, 47.242065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350216, 34.260345, 47.795704>,  <37.885517, 33.806664, 47.432640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350216, 34.260345, 47.795704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198605, 33.899555, 47.712971>,  <37.107639, 33.683083, 47.663330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198605, 33.899555, 47.712971>,  <37.350216, 34.260345, 47.795704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198605, 33.899555, 47.712971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236460, -0.121689, 0.963991,
		-0.894664, 0.414289, -0.167157,
		-0.379029, -0.901974, -0.206834,
		37.084896, 33.628963, 47.650921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763325, 34.269058, 48.178131>,  <37.350216, 34.260345, 47.795704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763325, 34.269058, 48.178131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808094, 33.885342, 48.074417>,  <36.834957, 33.655109, 48.012188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808094, 33.885342, 48.074417>,  <36.763325, 34.269058, 48.178131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808094, 33.885342, 48.074417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485113, -0.280466, 0.828254,
		-0.867259, 0.033078, -0.496757,
		0.111927, -0.959294, -0.259283,
		36.841671, 33.597553, 47.996632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241119, 33.999916, 48.555252>,  <36.763325, 34.269058, 48.178131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241119, 33.999916, 48.555252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438946, 33.669064, 48.448471>,  <36.557640, 33.470554, 48.384403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438946, 33.669064, 48.448471>,  <36.241119, 33.999916, 48.555252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438946, 33.669064, 48.448471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390964, -0.486029, 0.781615,
		-0.776242, -0.282192, -0.563751,
		0.494565, -0.827129, -0.266950,
		36.587315, 33.420925, 48.368385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780731, 33.479637, 48.557888>,  <36.241119, 33.999916, 48.555252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780731, 33.479637, 48.557888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136974, 33.302483, 48.599190>,  <36.350719, 33.196190, 48.623970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136974, 33.302483, 48.599190>,  <35.780731, 33.479637, 48.557888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136974, 33.302483, 48.599190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344315, -0.508370, 0.789308,
		-0.297082, -0.738519, -0.605253,
		0.890612, -0.442887, 0.103255,
		36.404160, 33.169617, 48.630165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688145, 32.772900, 48.907169>,  <35.780731, 33.479637, 48.557888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688145, 32.772900, 48.907169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076080, 32.846294, 48.971344>,  <36.308842, 32.890331, 49.009850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076080, 32.846294, 48.971344>,  <35.688145, 32.772900, 48.907169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076080, 32.846294, 48.971344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022028, -0.589556, 0.807427,
		0.242736, -0.786611, -0.567735,
		0.969842, 0.183485, 0.160434,
		36.367035, 32.901340, 49.019474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951897, 32.120243, 49.010002>,  <35.688145, 32.772900, 48.907169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951897, 32.120243, 49.010002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223347, 32.366226, 49.170650>,  <36.386215, 32.513817, 49.267040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223347, 32.366226, 49.170650>,  <35.951897, 32.120243, 49.010002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223347, 32.366226, 49.170650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082077, -0.606875, 0.790547,
		0.729884, -0.503522, -0.462315,
		0.678626, 0.614953, 0.401621,
		36.426933, 32.550713, 49.291138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325962, 31.662292, 49.374279>,  <35.951897, 32.120243, 49.010002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325962, 31.662292, 49.374279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457565, 32.004475, 49.534252>,  <36.536526, 32.209785, 49.630238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457565, 32.004475, 49.534252>,  <36.325962, 31.662292, 49.374279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457565, 32.004475, 49.534252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013136, -0.419323, 0.907742,
		0.944236, -0.303908, -0.126723,
		0.329008, 0.855458, 0.399932,
		36.556267, 32.261112, 49.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016514, 31.499376, 49.810749>,  <36.325962, 31.662292, 49.374279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016514, 31.499376, 49.810749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795414, 31.812130, 49.926075>,  <36.662754, 31.999783, 49.995270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795414, 31.812130, 49.926075>,  <37.016514, 31.499376, 49.810749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795414, 31.812130, 49.926075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264591, -0.492728, 0.828982,
		0.790228, 0.381935, 0.479235,
		-0.552750, 0.781885, 0.288311,
		36.629589, 32.046696, 50.012569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920494, 31.425535, 50.418209>,  <37.016514, 31.499376, 49.810749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920494, 31.425535, 50.418209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645023, 31.715487, 50.411575>,  <36.479740, 31.889458, 50.407597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645023, 31.715487, 50.411575>,  <36.920494, 31.425535, 50.418209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645023, 31.715487, 50.411575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382273, -0.343561, 0.857807,
		0.616108, 0.597092, 0.513704,
		-0.688678, 0.724877, -0.016582,
		36.438419, 31.932949, 50.406601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916828, 31.773287, 51.052074>,  <36.920494, 31.425535, 50.418209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916828, 31.773287, 51.052074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545654, 31.826391, 50.912754>,  <36.322948, 31.858253, 50.829163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545654, 31.826391, 50.912754>,  <36.916828, 31.773287, 51.052074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545654, 31.826391, 50.912754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372649, -0.351291, 0.858911,
		-0.008326, 0.926806, 0.375448,
		-0.927935, 0.132759, -0.348298,
		36.267273, 31.866219, 50.808266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605709, 32.130939, 51.581135>,  <36.916828, 31.773287, 51.052074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605709, 32.130939, 51.581135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282715, 31.983744, 51.396721>,  <36.088917, 31.895426, 51.286072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282715, 31.983744, 51.396721>,  <36.605709, 32.130939, 51.581135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282715, 31.983744, 51.396721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433319, -0.160283, 0.886873,
		-0.400256, 0.915911, -0.030030,
		-0.807484, -0.367989, -0.461036,
		36.040470, 31.873346, 51.258411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109791, 32.373554, 52.020931>,  <36.605709, 32.130939, 51.581135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109791, 32.373554, 52.020931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954262, 32.079678, 51.798565>,  <35.860947, 31.903351, 51.665146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954262, 32.079678, 51.798565>,  <36.109791, 32.373554, 52.020931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954262, 32.079678, 51.798565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562143, -0.288876, 0.774949,
		-0.729942, 0.613820, -0.300683,
		-0.388819, -0.734695, -0.555917,
		35.837616, 31.859270, 51.631790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496475, 32.294258, 52.282051>,  <36.109791, 32.373554, 52.020931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496475, 32.294258, 52.282051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516045, 31.949268, 52.080559>,  <35.527786, 31.742273, 51.959663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516045, 31.949268, 52.080559>,  <35.496475, 32.294258, 52.282051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516045, 31.949268, 52.080559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576866, -0.436109, 0.690677,
		-0.815373, 0.256793, -0.518869,
		0.048922, -0.862477, -0.503726,
		35.530720, 31.690525, 51.929440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749134, 31.998289, 52.226597>,  <35.496475, 32.294258, 52.282051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749134, 31.998289, 52.226597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039471, 31.724525, 52.199074>,  <35.213673, 31.560266, 52.182560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039471, 31.724525, 52.199074>,  <34.749134, 31.998289, 52.226597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039471, 31.724525, 52.199074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532739, -0.622617, 0.573181,
		-0.435132, -0.379383, -0.816535,
		0.725843, -0.684409, -0.068808,
		35.257225, 31.519203, 52.178432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968189, 31.738623, 52.485245>,  <34.749134, 31.998289, 52.226597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968189, 31.738623, 52.485245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647392, 31.531860, 52.365505>,  <33.454914, 31.407803, 52.293659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647392, 31.531860, 52.365505>,  <33.968189, 31.738623, 52.485245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647392, 31.531860, 52.365505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033886, 0.460971, -0.886768,
		0.596368, -0.721328, -0.352181,
		-0.801995, -0.516906, -0.299351,
		33.406792, 31.376789, 52.275700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065853, 31.388792, 51.876484>,  <33.968189, 31.738623, 52.485245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065853, 31.388792, 51.876484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676067, 31.473745, 51.905624>,  <33.442196, 31.524717, 51.923107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.676067, 31.473745, 51.905624>,  <34.065853, 31.388792, 51.876484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676067, 31.473745, 51.905624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036026, 0.468142, -0.882918,
		-0.221623, -0.857750, -0.463840,
		-0.974467, 0.212385, 0.072850,
		33.383728, 31.537460, 51.927479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665421, 31.117180, 51.373283>,  <34.065853, 31.388792, 51.876484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665421, 31.117180, 51.373283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410793, 31.397219, 51.502682>,  <33.258018, 31.565243, 51.580318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410793, 31.397219, 51.502682>,  <33.665421, 31.117180, 51.373283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410793, 31.397219, 51.502682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187930, 0.265998, -0.945477,
		-0.747974, -0.662653, -0.037756,
		-0.636567, 0.700097, 0.323492,
		33.219822, 31.607248, 51.599728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029453, 31.073162, 50.938740>,  <33.665421, 31.117180, 51.373283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029453, 31.073162, 50.938740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060593, 31.438049, 51.099636>,  <33.079277, 31.656982, 51.196175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060593, 31.438049, 51.099636>,  <33.029453, 31.073162, 50.938740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060593, 31.438049, 51.099636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040772, 0.406039, -0.912946,
		-0.996131, 0.054669, 0.068801,
		0.077846, 0.912219, 0.402240,
		33.083946, 31.711716, 51.220306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557476, 31.454151, 50.645931>,  <33.029453, 31.073162, 50.938740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557476, 31.454151, 50.645931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784172, 31.742935, 50.804714>,  <32.920189, 31.916204, 50.899982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.784172, 31.742935, 50.804714>,  <32.557476, 31.454151, 50.645931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784172, 31.742935, 50.804714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076650, 0.433515, -0.897881,
		-0.820320, 0.539296, 0.190354,
		0.566745, 0.721959, 0.396958,
		32.954197, 31.959522, 50.923801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266727, 32.137733, 50.285828>,  <32.557476, 31.454151, 50.645931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266727, 32.137733, 50.285828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634655, 32.211330, 50.424438>,  <32.855412, 32.255489, 50.507607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634655, 32.211330, 50.424438>,  <32.266727, 32.137733, 50.285828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634655, 32.211330, 50.424438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273172, 0.333639, -0.902254,
		-0.281619, 0.924572, 0.256627,
		0.919819, 0.183989, 0.346526,
		32.910603, 32.266525, 50.528397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361652, 32.793896, 50.141453>,  <32.266727, 32.137733, 50.285828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361652, 32.793896, 50.141453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730770, 32.662720, 50.222355>,  <32.952240, 32.584015, 50.270897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.730770, 32.662720, 50.222355>,  <32.361652, 32.793896, 50.141453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730770, 32.662720, 50.222355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352001, 0.504087, -0.788664,
		0.156678, 0.798969, 0.580603,
		0.922793, -0.327939, 0.202259,
		33.007607, 32.564339, 50.283031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796310, 33.376427, 49.898785>,  <32.361652, 32.793896, 50.141453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796310, 33.376427, 49.898785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039013, 33.058918, 49.915596>,  <33.184635, 32.868412, 49.925682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039013, 33.058918, 49.915596>,  <32.796310, 33.376427, 49.898785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039013, 33.058918, 49.915596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514129, 0.351569, -0.782350,
		0.606233, 0.496306, 0.621419,
		0.606757, -0.793775, 0.042033,
		33.221039, 32.820786, 49.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480698, 33.520512, 49.822533>,  <32.796310, 33.376427, 49.898785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480698, 33.520512, 49.822533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497452, 33.136211, 49.712833>,  <33.507504, 32.905632, 49.647015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497452, 33.136211, 49.712833>,  <33.480698, 33.520512, 49.822533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497452, 33.136211, 49.712833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482658, 0.259795, -0.836390,
		0.874807, -0.097335, 0.474593,
		0.041887, -0.960746, -0.274249,
		33.510017, 32.847988, 49.630558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259769, 33.386837, 49.698265>,  <33.480698, 33.520512, 49.822533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259769, 33.386837, 49.698265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041168, 33.127506, 49.486225>,  <33.910007, 32.971909, 49.359001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041168, 33.127506, 49.486225>,  <34.259769, 33.386837, 49.698265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041168, 33.127506, 49.486225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567892, 0.178317, -0.803556,
		0.615492, -0.740187, 0.270727,
		-0.546506, -0.648326, -0.530099,
		33.877216, 32.933010, 49.327194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723541, 33.114895, 49.351624>,  <34.259769, 33.386837, 49.698265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723541, 33.114895, 49.351624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386375, 33.047016, 49.147392>,  <34.184074, 33.006290, 49.024853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386375, 33.047016, 49.147392>,  <34.723541, 33.114895, 49.351624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386375, 33.047016, 49.147392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456260, 0.277505, -0.845469,
		0.285170, -0.945617, -0.156483,
		-0.842915, -0.169705, -0.510583,
		34.133499, 32.996109, 48.994217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980370, 32.835060, 48.833969>,  <34.723541, 33.114895, 49.351624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980370, 32.835060, 48.833969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611874, 32.930111, 48.710777>,  <34.390778, 32.987141, 48.636860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611874, 32.930111, 48.710777>,  <34.980370, 32.835060, 48.833969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611874, 32.930111, 48.710777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365609, 0.258532, -0.894143,
		-0.132849, -0.936320, -0.325048,
		-0.921239, 0.237627, -0.307981,
		34.335503, 33.001400, 48.618382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937561, 32.537552, 48.205433>,  <34.980370, 32.835060, 48.833969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937561, 32.537552, 48.205433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656658, 32.821285, 48.181152>,  <34.488117, 32.991524, 48.166584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656658, 32.821285, 48.181152>,  <34.937561, 32.537552, 48.205433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656658, 32.821285, 48.181152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274313, 0.190915, -0.942499,
		-0.656956, -0.678526, -0.328650,
		-0.702254, 0.709333, -0.060706,
		34.445980, 33.034084, 48.162941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815231, 32.523552, 47.500504>,  <34.937561, 32.537552, 48.205433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815231, 32.523552, 47.500504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665031, 32.871197, 47.629276>,  <34.574913, 33.079784, 47.706539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665031, 32.871197, 47.629276>,  <34.815231, 32.523552, 47.500504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665031, 32.871197, 47.629276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127669, 0.392540, -0.910831,
		-0.917987, -0.300917, -0.258358,
		-0.375500, 0.869116, 0.321929,
		34.552380, 33.131931, 47.725853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332199, 32.670849, 46.988907>,  <34.815231, 32.523552, 47.500504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332199, 32.670849, 46.988907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405598, 33.011696, 47.184959>,  <34.449635, 33.216202, 47.302589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405598, 33.011696, 47.184959>,  <34.332199, 32.670849, 46.988907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405598, 33.011696, 47.184959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134632, 0.472114, -0.871196,
		-0.973758, 0.225847, -0.028092,
		0.183494, 0.852116, 0.490131,
		34.460648, 33.267330, 47.331997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998489, 33.295540, 46.610409>,  <34.332199, 32.670849, 46.988907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998489, 33.295540, 46.610409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283283, 33.471333, 46.829472>,  <34.454159, 33.576809, 46.960911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283283, 33.471333, 46.829472>,  <33.998489, 33.295540, 46.610409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283283, 33.471333, 46.829472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093320, 0.713788, -0.694117,
		-0.695965, 0.545309, 0.467195,
		0.711986, 0.439482, 0.547659,
		34.496880, 33.603176, 46.993771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796818, 33.950039, 46.480854>,  <33.998489, 33.295540, 46.610409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796818, 33.950039, 46.480854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171741, 33.979866, 46.617027>,  <34.396694, 33.997765, 46.698730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171741, 33.979866, 46.617027>,  <33.796818, 33.950039, 46.480854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171741, 33.979866, 46.617027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173963, 0.746329, -0.642441,
		-0.301985, 0.661387, 0.686566,
		0.937306, 0.074570, 0.340437,
		34.452934, 34.002235, 46.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972832, 34.740513, 46.578770>,  <33.796818, 33.950039, 46.480854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972832, 34.740513, 46.578770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314610, 34.533363, 46.595402>,  <34.519676, 34.409073, 46.605381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314610, 34.533363, 46.595402>,  <33.972832, 34.740513, 46.578770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314610, 34.533363, 46.595402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443911, 0.686143, -0.576325,
		0.269937, 0.510895, 0.816162,
		0.854446, -0.517875, 0.041577,
		34.570942, 34.378002, 46.607876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585964, 35.216442, 46.752666>,  <33.972832, 34.740513, 46.578770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585964, 35.216442, 46.752666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694229, 34.899204, 46.534405>,  <34.759186, 34.708862, 46.403446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694229, 34.899204, 46.534405>,  <34.585964, 35.216442, 46.752666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694229, 34.899204, 46.534405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446870, 0.605551, -0.658494,
		0.852672, -0.065609, 0.518310,
		0.270660, -0.793097, -0.545656,
		34.775429, 34.661274, 46.370708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220638, 35.429688, 46.574497>,  <34.585964, 35.216442, 46.752666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220638, 35.429688, 46.574497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119499, 35.137589, 46.320625>,  <35.058815, 34.962330, 46.168304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119499, 35.137589, 46.320625>,  <35.220638, 35.429688, 46.574497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119499, 35.137589, 46.320625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241531, 0.587580, -0.772277,
		0.936874, -0.348559, 0.027811,
		-0.252843, -0.730243, -0.634677,
		35.043648, 34.918514, 46.130222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707085, 35.318108, 46.111866>,  <35.220638, 35.429688, 46.574497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707085, 35.318108, 46.111866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406982, 35.139889, 45.916477>,  <35.226921, 35.032959, 45.799244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406982, 35.139889, 45.916477>,  <35.707085, 35.318108, 46.111866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406982, 35.139889, 45.916477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209578, 0.540456, -0.814852,
		0.627054, -0.713719, -0.312103,
		-0.750253, -0.445547, -0.488475,
		35.181908, 35.006226, 45.769936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.212914, 37.062469, 25.906479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871372, 37.269737, 25.926224>,  <44.666447, 37.394100, 25.938070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871372, 37.269737, 25.926224>,  <45.212914, 37.062469, 25.906479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871372, 37.269737, 25.926224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121864, -0.291201, 0.948868,
		0.506051, 0.804176, 0.311789,
		-0.853851, 0.518172, 0.049362,
		44.615215, 37.425190, 25.941032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248707, 37.511673, 26.436304>,  <45.212914, 37.062469, 25.906479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248707, 37.511673, 26.436304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851841, 37.475658, 26.401638>,  <44.613724, 37.454048, 26.380838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851841, 37.475658, 26.401638>,  <45.248707, 37.511673, 26.436304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851841, 37.475658, 26.401638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053499, -0.320710, 0.945665,
		-0.112942, 0.942888, 0.313379,
		-0.992160, -0.090040, -0.086666,
		44.554192, 37.448647, 26.375639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899723, 37.849201, 26.986673>,  <45.248707, 37.511673, 26.436304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899723, 37.849201, 26.986673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.608692, 37.605488, 26.860559>,  <44.434074, 37.459259, 26.784891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.608692, 37.605488, 26.860559>,  <44.899723, 37.849201, 26.986673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608692, 37.605488, 26.860559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278710, -0.157416, 0.947386,
		-0.626856, 0.777172, -0.055280,
		-0.727580, -0.609282, -0.315283,
		44.390419, 37.422703, 26.765974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366238, 38.079090, 27.347523>,  <44.899723, 37.849201, 26.986673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366238, 38.079090, 27.347523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230766, 37.723885, 27.223120>,  <44.149483, 37.510761, 27.148478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230766, 37.723885, 27.223120>,  <44.366238, 38.079090, 27.347523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230766, 37.723885, 27.223120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476185, -0.123315, 0.870656,
		-0.811507, 0.442970, -0.381095,
		-0.338680, -0.888015, -0.311006,
		44.129162, 37.457481, 27.129818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601467, 37.984741, 27.514383>,  <44.366238, 38.079090, 27.347523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601467, 37.984741, 27.514383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776489, 37.625237, 27.503223>,  <43.881500, 37.409534, 27.496527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776489, 37.625237, 27.503223>,  <43.601467, 37.984741, 27.514383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776489, 37.625237, 27.503223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377875, -0.211944, 0.901271,
		-0.815940, -0.383810, -0.432356,
		0.437552, -0.898760, -0.027902,
		43.907757, 37.355610, 27.494852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144688, 37.492661, 27.678507>,  <43.601467, 37.984741, 27.514383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144688, 37.492661, 27.678507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474026, 37.281704, 27.762379>,  <43.671627, 37.155128, 27.812702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.474026, 37.281704, 27.762379>,  <43.144688, 37.492661, 27.678507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474026, 37.281704, 27.762379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442271, -0.364690, 0.819389,
		-0.355673, -0.767371, -0.533515,
		0.823343, -0.527392, 0.209676,
		43.721027, 37.123486, 27.825281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866531, 36.930889, 27.949774>,  <43.144688, 37.492661, 27.678507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866531, 36.930889, 27.949774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250240, 36.863049, 28.040131>,  <43.480465, 36.822342, 28.094345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250240, 36.863049, 28.040131>,  <42.866531, 36.930889, 27.949774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250240, 36.863049, 28.040131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280452, -0.476239, 0.833393,
		-0.033768, -0.862804, -0.504409,
		0.959274, -0.169604, 0.225893,
		43.538021, 36.812168, 28.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010517, 36.183449, 27.967354>,  <42.866531, 36.930889, 27.949774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010517, 36.183449, 27.967354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304020, 36.352028, 28.180513>,  <43.480122, 36.453175, 28.308409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304020, 36.352028, 28.180513>,  <43.010517, 36.183449, 27.967354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304020, 36.352028, 28.180513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209109, -0.606191, 0.767337,
		0.646431, -0.674473, -0.356669,
		0.733757, 0.421448, 0.532899,
		43.524147, 36.478462, 28.340384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394794, 35.654583, 28.129639>,  <43.010517, 36.183449, 27.967354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394794, 35.654583, 28.129639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475636, 35.941147, 28.396748>,  <43.524139, 36.113083, 28.557013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.475636, 35.941147, 28.396748>,  <43.394794, 35.654583, 28.129639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475636, 35.941147, 28.396748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131977, -0.655699, 0.743399,
		0.970431, -0.238374, -0.037971,
		0.202105, 0.716406, 0.667770,
		43.536266, 36.156067, 28.597078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666576, 35.358479, 28.602821>,  <43.394794, 35.654583, 28.129639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666576, 35.358479, 28.602821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570808, 35.688602, 28.807384>,  <43.513348, 35.886677, 28.930122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570808, 35.688602, 28.807384>,  <43.666576, 35.358479, 28.602821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570808, 35.688602, 28.807384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285063, -0.563265, 0.775546,
		0.928126, 0.039897, 0.370123,
		-0.239420, 0.825312, 0.511408,
		43.498981, 35.936195, 28.960808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888165, 35.288269, 29.204489>,  <43.666576, 35.358479, 28.602821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888165, 35.288269, 29.204489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642776, 35.580357, 29.324778>,  <43.495544, 35.755608, 29.396952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.642776, 35.580357, 29.324778>,  <43.888165, 35.288269, 29.204489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642776, 35.580357, 29.324778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253922, -0.542970, 0.800442,
		0.747781, 0.414688, 0.518515,
		-0.613472, 0.730217, 0.300724,
		43.458736, 35.799423, 29.414995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117432, 35.495579, 29.914028>,  <43.888165, 35.288269, 29.204489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117432, 35.495579, 29.914028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729530, 35.573433, 29.855108>,  <43.496788, 35.620148, 29.819757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729530, 35.573433, 29.855108>,  <44.117432, 35.495579, 29.914028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729530, 35.573433, 29.855108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227748, -0.504408, 0.832888,
		0.087813, 0.841242, 0.533480,
		-0.969752, 0.194638, -0.147298,
		43.438606, 35.631824, 29.810919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861408, 35.564125, 30.537331>,  <44.117432, 35.495579, 29.914028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861408, 35.564125, 30.537331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526077, 35.535454, 30.321157>,  <43.324879, 35.518253, 30.191454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526077, 35.535454, 30.321157>,  <43.861408, 35.564125, 30.537331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526077, 35.535454, 30.321157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459207, -0.441453, 0.770875,
		-0.293828, 0.894417, 0.337169,
		-0.838328, -0.071674, -0.540434,
		43.274578, 35.513950, 30.159027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288780, 35.899696, 30.913948>,  <43.861408, 35.564125, 30.537331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288780, 35.899696, 30.913948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137215, 35.626644, 30.664005>,  <43.046276, 35.462814, 30.514040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137215, 35.626644, 30.664005>,  <43.288780, 35.899696, 30.913948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137215, 35.626644, 30.664005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534668, -0.389633, 0.749877,
		-0.755352, 0.618227, -0.217344,
		-0.378910, -0.682629, -0.624856,
		43.023540, 35.421856, 30.476549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598904, 35.924671, 31.040796>,  <43.288780, 35.899696, 30.913948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598904, 35.924671, 31.040796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667912, 35.565968, 30.877796>,  <42.709316, 35.350746, 30.779997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667912, 35.565968, 30.877796>,  <42.598904, 35.924671, 31.040796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667912, 35.565968, 30.877796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385669, -0.442171, 0.809781,
		-0.906364, 0.017455, -0.422137,
		0.172522, -0.896761, -0.407500,
		42.719669, 35.296940, 30.755547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924118, 35.584129, 31.119822>,  <42.598904, 35.924671, 31.040796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924118, 35.584129, 31.119822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182499, 35.287601, 31.046944>,  <42.337528, 35.109684, 31.003216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.182499, 35.287601, 31.046944>,  <41.924118, 35.584129, 31.119822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182499, 35.287601, 31.046944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282338, -0.453751, 0.845219,
		-0.709247, -0.494530, -0.502404,
		0.645952, -0.741316, -0.182197,
		42.376286, 35.065208, 30.992285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565422, 34.931828, 31.277796>,  <41.924118, 35.584129, 31.119822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565422, 34.931828, 31.277796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954170, 34.838196, 31.288225>,  <42.187420, 34.782017, 31.294483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954170, 34.838196, 31.288225>,  <41.565422, 34.931828, 31.277796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954170, 34.838196, 31.288225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171309, -0.626561, 0.760312,
		-0.161640, -0.743388, -0.649035,
		0.971867, -0.234082, 0.026072,
		42.245731, 34.767971, 31.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561241, 34.191891, 31.339565>,  <41.565422, 34.931828, 31.277796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561241, 34.191891, 31.339565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912651, 34.346012, 31.452517>,  <42.123497, 34.438484, 31.520287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912651, 34.346012, 31.452517>,  <41.561241, 34.191891, 31.339565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912651, 34.346012, 31.452517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019347, -0.561935, 0.826955,
		0.477308, -0.731962, -0.486218,
		0.878523, 0.385306, 0.282377,
		42.176208, 34.461605, 31.537230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987118, 33.659351, 31.528032>,  <41.561241, 34.191891, 31.339565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987118, 33.659351, 31.528032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163475, 33.973774, 31.701345>,  <42.269291, 34.162426, 31.805332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.163475, 33.973774, 31.701345>,  <41.987118, 33.659351, 31.528032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163475, 33.973774, 31.701345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018294, -0.490502, 0.871248,
		0.897373, -0.376202, -0.230639,
		0.440894, 0.786054, 0.433281,
		42.295742, 34.209591, 31.831329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591084, 33.373238, 31.896648>,  <41.987118, 33.659351, 31.528032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591084, 33.373238, 31.896648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510098, 33.734886, 32.047153>,  <42.461506, 33.951874, 32.137455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510098, 33.734886, 32.047153>,  <42.591084, 33.373238, 31.896648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510098, 33.734886, 32.047153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022425, -0.379840, 0.924780,
		0.979033, 0.195672, 0.056628,
		-0.202463, 0.904121, 0.376264,
		42.449360, 34.006123, 32.160034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057571, 33.419006, 32.431007>,  <42.591084, 33.373238, 31.896648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057571, 33.419006, 32.431007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760433, 33.678978, 32.495216>,  <42.582150, 33.834961, 32.533741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760433, 33.678978, 32.495216>,  <43.057571, 33.419006, 32.431007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760433, 33.678978, 32.495216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065852, -0.309554, 0.948599,
		0.666214, 0.694093, 0.272751,
		-0.742847, 0.649931, 0.160522,
		42.537579, 33.873959, 32.543373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503914, 33.396626, 33.043678>,  <43.057571, 33.419006, 32.431007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503914, 33.396626, 33.043678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819904, 33.557568, 33.228741>,  <44.009499, 33.654133, 33.339779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819904, 33.557568, 33.228741>,  <43.503914, 33.396626, 33.043678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819904, 33.557568, 33.228741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296779, 0.409367, -0.862752,
		-0.536529, 0.818859, 0.203979,
		0.789974, 0.402355, 0.462657,
		44.056896, 33.678272, 33.367538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495529, 34.059818, 32.805832>,  <43.503914, 33.396626, 33.043678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495529, 34.059818, 32.805832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867176, 34.015324, 32.946892>,  <44.090164, 33.988628, 33.031528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867176, 34.015324, 32.946892>,  <43.495529, 34.059818, 32.805832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867176, 34.015324, 32.946892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363533, 0.449329, -0.816056,
		-0.067681, 0.886414, 0.457918,
		0.929120, -0.111237, 0.352652,
		44.145912, 33.981953, 33.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737095, 34.752399, 32.808392>,  <43.495529, 34.059818, 32.805832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737095, 34.752399, 32.808392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042213, 34.494057, 32.795666>,  <44.225285, 34.339050, 32.788033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042213, 34.494057, 32.795666>,  <43.737095, 34.752399, 32.808392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042213, 34.494057, 32.795666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286878, 0.382090, -0.878469,
		0.579516, 0.660970, 0.476739,
		0.762799, -0.645853, -0.031810,
		44.271053, 34.300301, 32.786121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335297, 35.183620, 32.654556>,  <43.737095, 34.752399, 32.808392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335297, 35.183620, 32.654556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458611, 34.811501, 32.575062>,  <44.532597, 34.588226, 32.527363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458611, 34.811501, 32.575062>,  <44.335297, 35.183620, 32.654556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458611, 34.811501, 32.575062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533646, 0.342068, -0.773441,
		0.787518, 0.132381, 0.601906,
		0.308282, -0.930304, -0.198740,
		44.551094, 34.532410, 32.515438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119251, 35.127106, 32.583679>,  <44.335297, 35.183620, 32.654556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119251, 35.127106, 32.583679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978718, 34.805935, 32.391064>,  <44.894398, 34.613232, 32.275494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978718, 34.805935, 32.391064>,  <45.119251, 35.127106, 32.583679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978718, 34.805935, 32.391064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624268, 0.182402, -0.759618,
		0.697748, -0.567489, 0.437155,
		-0.351337, -0.802923, -0.481535,
		44.873318, 34.565060, 32.246605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755478, 34.726620, 32.418091>,  <45.119251, 35.127106, 32.583679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755478, 34.726620, 32.418091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457256, 34.628128, 32.170376>,  <45.278320, 34.569031, 32.021748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457256, 34.628128, 32.170376>,  <45.755478, 34.726620, 32.418091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457256, 34.628128, 32.170376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593306, 0.177985, -0.785053,
		0.303530, -0.952728, 0.013394,
		-0.745558, -0.246233, -0.619283,
		45.233589, 34.554256, 31.984591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037060, 34.345741, 31.861473>,  <45.755478, 34.726620, 32.418091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037060, 34.345741, 31.861473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691799, 34.490585, 31.720707>,  <45.484642, 34.577492, 31.636248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691799, 34.490585, 31.720707>,  <46.037060, 34.345741, 31.861473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691799, 34.490585, 31.720707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455169, 0.256242, -0.852737,
		-0.218613, -0.896222, -0.385999,
		-0.863151, 0.362114, -0.351915,
		45.432854, 34.599220, 31.615133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847481, 34.009342, 31.188356>,  <46.037060, 34.345741, 31.861473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847481, 34.009342, 31.188356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679741, 34.371861, 31.209421>,  <45.579098, 34.589371, 31.222061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679741, 34.371861, 31.209421>,  <45.847481, 34.009342, 31.188356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679741, 34.371861, 31.209421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317732, 0.200862, -0.926661,
		-0.850409, -0.371858, -0.372191,
		-0.419346, 0.906298, 0.052663,
		45.553936, 34.643749, 31.225220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649494, 34.103691, 30.502716>,  <45.847481, 34.009342, 31.188356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649494, 34.103691, 30.502716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584152, 34.475609, 30.634651>,  <45.544949, 34.698761, 30.713812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584152, 34.475609, 30.634651>,  <45.649494, 34.103691, 30.502716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584152, 34.475609, 30.634651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198859, 0.358498, -0.912104,
		-0.966318, -0.083402, -0.243460,
		-0.163351, 0.929797, 0.329838,
		45.535149, 34.754547, 30.733603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152573, 34.422802, 30.009207>,  <45.649494, 34.103691, 30.502716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152573, 34.422802, 30.009207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304432, 34.750774, 30.180592>,  <45.395546, 34.947559, 30.283422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304432, 34.750774, 30.180592>,  <45.152573, 34.422802, 30.009207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304432, 34.750774, 30.180592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068736, 0.436857, -0.896901,
		-0.922575, 0.369956, 0.109493,
		0.379647, 0.819932, 0.428463,
		45.418327, 34.996754, 30.309130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784733, 35.145908, 29.750437>,  <45.152573, 34.422802, 30.009207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784733, 35.145908, 29.750437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161377, 35.182968, 29.879917>,  <45.387363, 35.205204, 29.957605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161377, 35.182968, 29.879917>,  <44.784733, 35.145908, 29.750437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161377, 35.182968, 29.879917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243016, 0.478415, -0.843838,
		-0.233043, 0.873233, 0.427967,
		0.941613, 0.092648, 0.323701,
		45.443859, 35.210762, 29.977028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932652, 35.788601, 29.508080>,  <44.784733, 35.145908, 29.750437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932652, 35.788601, 29.508080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293495, 35.633133, 29.583052>,  <45.510002, 35.539852, 29.628035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293495, 35.633133, 29.583052>,  <44.932652, 35.788601, 29.508080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293495, 35.633133, 29.583052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357125, 0.428694, -0.829869,
		0.242197, 0.815570, 0.525534,
		0.902110, -0.388673, 0.187432,
		45.564129, 35.516529, 29.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362206, 36.356052, 29.526878>,  <44.932652, 35.788601, 29.508080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362206, 36.356052, 29.526878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577587, 36.030685, 29.438860>,  <45.706818, 35.835464, 29.386049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577587, 36.030685, 29.438860>,  <45.362206, 36.356052, 29.526878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577587, 36.030685, 29.438860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393625, 0.473688, -0.787831,
		0.745069, 0.337595, 0.575241,
		0.538453, -0.813418, -0.220044,
		45.739124, 35.786659, 29.372847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994244, 36.540894, 29.516451>,  <45.362206, 36.356052, 29.526878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994244, 36.540894, 29.516451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020958, 36.191193, 29.324106>,  <46.036987, 35.981373, 29.208698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020958, 36.191193, 29.324106>,  <45.994244, 36.540894, 29.516451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020958, 36.191193, 29.324106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416329, 0.462399, -0.782852,
		0.906758, -0.147911, 0.394858,
		0.066790, -0.874248, -0.480863,
		46.040997, 35.928917, 29.179848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753181, 36.530018, 29.158516>,  <45.994244, 36.540894, 29.516451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753181, 36.530018, 29.158516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.514828, 36.265148, 28.976768>,  <46.371815, 36.106228, 28.867720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.514828, 36.265148, 28.976768>,  <46.753181, 36.530018, 29.158516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514828, 36.265148, 28.976768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208678, 0.418678, -0.883834,
		0.775483, -0.621480, -0.111303,
		-0.595885, -0.662172, -0.454367,
		46.336063, 36.066498, 28.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164158, 36.133484, 28.702480>,  <46.753181, 36.530018, 29.158516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164158, 36.133484, 28.702480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.801003, 36.100540, 28.538063>,  <46.583111, 36.080772, 28.439413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.801003, 36.100540, 28.538063>,  <47.164158, 36.133484, 28.702480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801003, 36.100540, 28.538063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397477, 0.142522, -0.906477,
		0.133230, -0.986360, -0.096663,
		-0.907889, -0.082349, -0.411043,
		46.528637, 36.075832, 28.414749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.359356, 35.702339, 28.106613>,  <47.164158, 36.133484, 28.702480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.359356, 35.702339, 28.106613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.997383, 35.860344, 28.043297>,  <46.780197, 35.955147, 28.005306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.997383, 35.860344, 28.043297>,  <47.359356, 35.702339, 28.106613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997383, 35.860344, 28.043297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211795, 0.095440, -0.972643,
		-0.369103, -0.913703, -0.170030,
		-0.904934, 0.395017, -0.158291,
		46.725903, 35.978848, 27.995810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.192772, 35.398632, 27.537804>,  <47.359356, 35.702339, 28.106613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.192772, 35.398632, 27.537804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.944366, 35.711746, 27.553707>,  <46.795322, 35.899616, 27.563250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.944366, 35.711746, 27.553707>,  <47.192772, 35.398632, 27.537804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944366, 35.711746, 27.553707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157531, 0.174344, -0.972002,
		-0.767804, -0.597365, -0.231584,
		-0.621015, 0.782789, 0.039759,
		46.758060, 35.946583, 27.565636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748096, 35.263741, 26.945942>,  <47.192772, 35.398632, 27.537804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748096, 35.263741, 26.945942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.732727, 35.643925, 27.069323>,  <46.723503, 35.872036, 27.143351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.732727, 35.643925, 27.069323>,  <46.748096, 35.263741, 26.945942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.732727, 35.643925, 27.069323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182230, 0.310167, -0.933053,
		-0.982505, 0.020356, -0.185121,
		-0.038425, 0.950464, 0.308450,
		46.721199, 35.929066, 27.161858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296017, 35.611759, 26.487320>,  <46.748096, 35.263741, 26.945942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296017, 35.611759, 26.487320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548855, 35.871975, 26.655727>,  <46.700558, 36.028107, 26.756771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.548855, 35.871975, 26.655727>,  <46.296017, 35.611759, 26.487320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548855, 35.871975, 26.655727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201157, 0.386942, -0.899896,
		-0.748329, 0.653507, 0.113722,
		0.632091, 0.650542, 0.421017,
		46.738483, 36.067139, 26.782032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999390, 36.327633, 26.191519>,  <46.296017, 35.611759, 26.487320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999390, 36.327633, 26.191519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378139, 36.362560, 26.315323>,  <46.605389, 36.383518, 26.389605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378139, 36.362560, 26.315323>,  <45.999390, 36.327633, 26.191519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378139, 36.362560, 26.315323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255818, 0.378702, -0.889462,
		-0.194880, 0.921390, 0.336247,
		0.946878, 0.087320, 0.309510,
		46.662205, 36.388756, 26.408176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.481220, 35.583237, 42.472198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151775, 35.391109, 42.351559>,  <39.954109, 35.275833, 42.279175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151775, 35.391109, 42.351559>,  <40.481220, 35.583237, 42.472198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151775, 35.391109, 42.351559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313043, 0.058453, -0.947938,
		0.472939, -0.875146, 0.102217,
		-0.823610, -0.480315, -0.301603,
		39.904694, 35.247017, 42.261078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730667, 35.147541, 41.973713>,  <40.481220, 35.583237, 42.472198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730667, 35.147541, 41.973713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336346, 35.166359, 41.909252>,  <40.099751, 35.177650, 41.870575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336346, 35.166359, 41.909252>,  <40.730667, 35.147541, 41.973713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336346, 35.166359, 41.909252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165444, 0.109226, -0.980152,
		-0.028514, -0.992903, -0.115460,
		-0.985807, 0.047051, -0.161155,
		40.040604, 35.180473, 41.860905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529186, 34.593513, 41.465836>,  <40.730667, 35.147541, 41.973713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529186, 34.593513, 41.465836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267483, 34.895691, 41.451683>,  <40.110462, 35.076996, 41.443192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267483, 34.895691, 41.451683>,  <40.529186, 34.593513, 41.465836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267483, 34.895691, 41.451683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197888, 0.125853, -0.972112,
		-0.729922, -0.643014, -0.231834,
		-0.654258, 0.755443, -0.035382,
		40.071205, 35.122322, 41.441067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284054, 34.493389, 40.862900>,  <40.529186, 34.593513, 41.465836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284054, 34.493389, 40.862900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139717, 34.861202, 40.925194>,  <40.053116, 35.081890, 40.962570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139717, 34.861202, 40.925194>,  <40.284054, 34.493389, 40.862900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139717, 34.861202, 40.925194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015956, 0.173046, -0.984785,
		-0.932491, -0.352866, -0.077114,
		-0.360841, 0.919533, 0.155733,
		40.031464, 35.137062, 40.971912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656940, 34.643715, 40.476200>,  <40.284054, 34.493389, 40.862900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656940, 34.643715, 40.476200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862457, 34.982956, 40.527954>,  <39.985767, 35.186501, 40.559006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862457, 34.982956, 40.527954>,  <39.656940, 34.643715, 40.476200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862457, 34.982956, 40.527954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058535, 0.115807, -0.991545,
		-0.855914, 0.517024, 0.009857,
		0.513794, 0.848101, 0.129385,
		40.016594, 35.237385, 40.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351177, 35.030354, 39.926342>,  <39.656940, 34.643715, 40.476200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351177, 35.030354, 39.926342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670124, 35.239834, 40.046303>,  <39.861492, 35.365520, 40.118279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670124, 35.239834, 40.046303>,  <39.351177, 35.030354, 39.926342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670124, 35.239834, 40.046303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192429, 0.250365, -0.948835,
		-0.571989, 0.814283, 0.098859,
		0.797371, 0.523700, 0.299898,
		39.909336, 35.396942, 40.136272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224922, 35.628368, 39.621033>,  <39.351177, 35.030354, 39.926342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224922, 35.628368, 39.621033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616066, 35.622711, 39.704540>,  <39.850754, 35.619316, 39.754642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616066, 35.622711, 39.704540>,  <39.224922, 35.628368, 39.621033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616066, 35.622711, 39.704540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203662, 0.293255, -0.934090,
		-0.048015, 0.955930, 0.289642,
		0.977863, -0.014139, 0.208767,
		39.909424, 35.618469, 39.767170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480896, 36.300652, 39.608810>,  <39.224922, 35.628368, 39.621033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480896, 36.300652, 39.608810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818913, 36.096775, 39.544170>,  <40.021725, 35.974449, 39.505386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818913, 36.096775, 39.544170>,  <39.480896, 36.300652, 39.608810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818913, 36.096775, 39.544170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109122, 0.460261, -0.881052,
		0.523440, 0.726895, 0.444560,
		0.845046, -0.509689, -0.161599,
		40.072426, 35.943867, 39.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066143, 36.780693, 39.294922>,  <39.480896, 36.300652, 39.608810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066143, 36.780693, 39.294922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133568, 36.400555, 39.190281>,  <40.174023, 36.172474, 39.127495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133568, 36.400555, 39.190281>,  <40.066143, 36.780693, 39.294922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133568, 36.400555, 39.190281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286295, 0.301162, -0.909581,
		0.943199, 0.078421, 0.322841,
		0.168558, -0.950343, -0.261604,
		40.184135, 36.115452, 39.111801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572521, 36.814262, 38.863434>,  <40.066143, 36.780693, 39.294922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572521, 36.814262, 38.863434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451939, 36.438423, 38.798584>,  <40.379589, 36.212921, 38.759674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451939, 36.438423, 38.798584>,  <40.572521, 36.814262, 38.863434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451939, 36.438423, 38.798584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163566, 0.116553, -0.979623,
		0.939346, -0.321830, 0.118550,
		-0.301455, -0.939596, -0.162124,
		40.361504, 36.156544, 38.749947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069225, 36.493542, 38.371830>,  <40.572521, 36.814262, 38.863434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069225, 36.493542, 38.371830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733120, 36.280262, 38.332535>,  <40.531456, 36.152294, 38.308956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733120, 36.280262, 38.332535>,  <41.069225, 36.493542, 38.371830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733120, 36.280262, 38.332535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121726, -0.008964, -0.992523,
		0.528334, -0.845941, 0.072437,
		-0.840265, -0.533201, -0.098237,
		40.481041, 36.120300, 38.303062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226105, 36.076393, 37.951359>,  <41.069225, 36.493542, 38.371830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226105, 36.076393, 37.951359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835918, 35.993229, 37.922394>,  <40.601807, 35.943333, 37.905014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835918, 35.993229, 37.922394>,  <41.226105, 36.076393, 37.951359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835918, 35.993229, 37.922394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122280, -0.238121, -0.963507,
		0.183077, -0.948721, 0.257702,
		-0.975464, -0.207908, -0.072415,
		40.543278, 35.930855, 37.900669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056583, 35.329597, 37.684444>,  <41.226105, 36.076393, 37.951359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056583, 35.329597, 37.684444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749027, 35.573864, 37.608662>,  <40.564491, 35.720425, 37.563194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749027, 35.573864, 37.608662>,  <41.056583, 35.329597, 37.684444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749027, 35.573864, 37.608662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088843, -0.191394, -0.977484,
		-0.633175, -0.768412, 0.092908,
		-0.768893, 0.610664, -0.189454,
		40.518360, 35.757065, 37.551826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823311, 35.003239, 37.025455>,  <41.056583, 35.329597, 37.684444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823311, 35.003239, 37.025455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642502, 35.358509, 36.992416>,  <40.534016, 35.571671, 36.972591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642502, 35.358509, 36.992416>,  <40.823311, 35.003239, 37.025455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642502, 35.358509, 36.992416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136715, -0.022523, -0.990354,
		-0.881469, -0.458952, -0.111246,
		-0.452020, 0.888175, -0.082599,
		40.506897, 35.624962, 36.967636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404781, 34.609253, 36.486103>,  <40.823311, 35.003239, 37.025455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404781, 34.609253, 36.486103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673233, 34.332520, 36.379555>,  <40.834305, 34.166481, 36.315628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673233, 34.332520, 36.379555>,  <40.404781, 34.609253, 36.486103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673233, 34.332520, 36.379555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680569, -0.717443, 0.148666,
		-0.293955, 0.081508, -0.952337,
		0.671130, -0.691832, -0.266368,
		40.874573, 34.124969, 36.299644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026691, 34.186680, 36.105431>,  <40.404781, 34.609253, 36.486103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026691, 34.186680, 36.105431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329403, 33.980549, 36.266293>,  <40.511028, 33.856869, 36.362808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329403, 33.980549, 36.266293>,  <40.026691, 34.186680, 36.105431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329403, 33.980549, 36.266293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651371, -0.646114, 0.397810,
		0.054834, -0.563004, -0.824633,
		0.756776, -0.515328, 0.402154,
		40.556435, 33.825951, 36.386940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773670, 33.481667, 36.109058>,  <40.026691, 34.186680, 36.105431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773670, 33.481667, 36.109058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060127, 33.506462, 36.387138>,  <40.232002, 33.521339, 36.553986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060127, 33.506462, 36.387138>,  <39.773670, 33.481667, 36.109058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060127, 33.506462, 36.387138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517616, -0.620998, 0.588587,
		0.468205, -0.781357, -0.412633,
		0.716141, 0.061994, 0.695198,
		40.274971, 33.525059, 36.595699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779785, 32.822571, 36.349113>,  <39.773670, 33.481667, 36.109058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779785, 32.822571, 36.349113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975704, 33.017433, 36.638329>,  <40.093254, 33.134350, 36.811859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975704, 33.017433, 36.638329>,  <39.779785, 32.822571, 36.349113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975704, 33.017433, 36.638329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514312, -0.508204, 0.690805,
		0.703978, -0.710220, 0.001633,
		0.489794, 0.487151, 0.723039,
		40.122643, 33.163578, 36.855240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934566, 32.315102, 36.820618>,  <39.779785, 32.822571, 36.349113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934566, 32.315102, 36.820618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913826, 32.659309, 37.023327>,  <39.901382, 32.865833, 37.144955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913826, 32.659309, 37.023327>,  <39.934566, 32.315102, 36.820618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913826, 32.659309, 37.023327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565996, -0.443411, 0.695007,
		0.822776, -0.250797, 0.510040,
		-0.051852, 0.860516, 0.506778,
		39.898270, 32.917465, 37.175362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940926, 32.100941, 37.482193>,  <39.934566, 32.315102, 36.820618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940926, 32.100941, 37.482193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813549, 32.477798, 37.524063>,  <39.737122, 32.703915, 37.549187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813549, 32.477798, 37.524063>,  <39.940926, 32.100941, 37.482193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813549, 32.477798, 37.524063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665591, -0.300852, 0.682991,
		0.674970, 0.147818, 0.722887,
		-0.318440, 0.942145, 0.104680,
		39.718018, 32.760441, 37.555466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878487, 32.276733, 38.177937>,  <39.940926, 32.100941, 37.482193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878487, 32.276733, 38.177937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634678, 32.552422, 38.021244>,  <39.488392, 32.717834, 37.927231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634678, 32.552422, 38.021244>,  <39.878487, 32.276733, 38.177937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634678, 32.552422, 38.021244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686979, -0.212595, 0.694883,
		0.395651, 0.692656, 0.603065,
		-0.609524, 0.689225, -0.391727,
		39.451820, 32.759190, 37.903725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630611, 32.560589, 38.702560>,  <39.878487, 32.276733, 38.177937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630611, 32.560589, 38.702560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348804, 32.690273, 38.450039>,  <39.179722, 32.768085, 38.298527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348804, 32.690273, 38.450039>,  <39.630611, 32.560589, 38.702560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348804, 32.690273, 38.450039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700650, -0.176250, 0.691394,
		0.112893, 0.929420, 0.351332,
		-0.704518, 0.324215, -0.631300,
		39.137447, 32.787537, 38.260651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240761, 32.983189, 39.075520>,  <39.630611, 32.560589, 38.702560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240761, 32.983189, 39.075520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018108, 32.867596, 38.763966>,  <38.884518, 32.798241, 38.577034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018108, 32.867596, 38.763966>,  <39.240761, 32.983189, 39.075520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018108, 32.867596, 38.763966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767200, -0.180860, 0.615381,
		-0.318701, 0.940096, -0.121032,
		-0.556627, -0.288978, -0.778882,
		38.851120, 32.780903, 38.530300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588612, 33.309422, 39.167213>,  <39.240761, 32.983189, 39.075520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588612, 33.309422, 39.167213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515335, 33.003452, 38.920204>,  <38.471367, 32.819870, 38.771999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515335, 33.003452, 38.920204>,  <38.588612, 33.309422, 39.167213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515335, 33.003452, 38.920204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828231, -0.218306, 0.516116,
		-0.529597, 0.606001, -0.593541,
		-0.183193, -0.764922, -0.617523,
		38.460377, 32.773975, 38.734947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894669, 33.377651, 39.047112>,  <38.588612, 33.309422, 39.167213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894669, 33.377651, 39.047112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982536, 32.997478, 38.959091>,  <38.035255, 32.769375, 38.906281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982536, 32.997478, 38.959091>,  <37.894669, 33.377651, 39.047112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982536, 32.997478, 38.959091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741966, -0.309213, 0.594872,
		-0.633428, 0.032594, -0.773114,
		0.219668, -0.950434, -0.220048,
		38.048435, 32.712349, 38.893078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197090, 33.005318, 38.890003>,  <37.894669, 33.377651, 39.047112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197090, 33.005318, 38.890003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482574, 32.749710, 39.004734>,  <37.653866, 32.596344, 39.073570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482574, 32.749710, 39.004734>,  <37.197090, 33.005318, 38.890003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482574, 32.749710, 39.004734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625154, -0.396457, 0.672313,
		-0.315908, -0.659147, -0.682442,
		0.713712, -0.639021, 0.286825,
		37.696686, 32.558002, 39.090782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802849, 32.398285, 38.984436>,  <37.197090, 33.005318, 38.890003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802849, 32.398285, 38.984436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148602, 32.335308, 39.175461>,  <37.356052, 32.297523, 39.290077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148602, 32.335308, 39.175461>,  <36.802849, 32.398285, 38.984436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148602, 32.335308, 39.175461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492242, -0.458920, 0.739655,
		0.102712, -0.874417, -0.474179,
		0.864377, -0.157440, 0.477562,
		37.407913, 32.288074, 39.318729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689754, 31.748106, 39.218121>,  <36.802849, 32.398285, 38.984436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689754, 31.748106, 39.218121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990967, 31.920752, 39.416779>,  <37.171692, 32.024338, 39.535973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990967, 31.920752, 39.416779>,  <36.689754, 31.748106, 39.218121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990967, 31.920752, 39.416779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348745, -0.378254, 0.857497,
		0.557965, -0.818923, -0.134314,
		0.753029, 0.431613, 0.496648,
		37.216877, 32.050236, 39.565773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560085, 31.068329, 39.078339>,  <36.689754, 31.748106, 39.218121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560085, 31.068329, 39.078339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189434, 30.938318, 39.002750>,  <35.967041, 30.860312, 38.957397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189434, 30.938318, 39.002750>,  <36.560085, 31.068329, 39.078339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189434, 30.938318, 39.002750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058715, 0.371356, -0.926632,
		0.371356, -0.869743, -0.325027,
		0.926632, 0.325027, 0.188972,
		35.911446, 30.840811, 38.946060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527977, 30.729111, 38.455173>,  <36.560085, 31.068329, 39.078339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527977, 30.729111, 38.455173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151699, 30.854250, 38.507652>,  <35.925930, 30.929333, 38.539139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151699, 30.854250, 38.507652>,  <36.527977, 30.729111, 38.455173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151699, 30.854250, 38.507652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025928, 0.451908, -0.891688,
		-0.338252, -0.835407, -0.433221,
		-0.940698, 0.312848, 0.131198,
		35.869488, 30.948105, 38.547012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307957, 30.835911, 37.758793>,  <36.527977, 30.729111, 38.455173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307957, 30.835911, 37.758793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009514, 30.985235, 37.979324>,  <35.830448, 31.074831, 38.111645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009514, 30.985235, 37.979324>,  <36.307957, 30.835911, 37.758793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009514, 30.985235, 37.979324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329720, 0.512222, -0.793041,
		-0.578455, -0.773476, -0.259084,
		-0.746107, 0.373313, 0.551328,
		35.785683, 31.097229, 38.144722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752087, 30.675257, 37.419502>,  <36.307957, 30.835911, 37.758793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752087, 30.675257, 37.419502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687546, 31.014977, 37.620564>,  <35.648823, 31.218809, 37.741199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687546, 31.014977, 37.620564>,  <35.752087, 30.675257, 37.419502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687546, 31.014977, 37.620564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323575, 0.435642, -0.839949,
		-0.932344, -0.298171, 0.204521,
		-0.161350, 0.849300, 0.502649,
		35.639141, 31.269766, 37.771358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123512, 30.912224, 37.068081>,  <35.752087, 30.675257, 37.419502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123512, 30.912224, 37.068081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284180, 31.222206, 37.263268>,  <35.380581, 31.408195, 37.380379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284180, 31.222206, 37.263268>,  <35.123512, 30.912224, 37.068081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284180, 31.222206, 37.263268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351125, 0.622436, -0.699489,
		-0.845799, 0.109626, 0.522118,
		0.401667, 0.774956, 0.487963,
		35.404678, 31.454693, 37.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566948, 31.384020, 36.969944>,  <35.123512, 30.912224, 37.068081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566948, 31.384020, 36.969944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904327, 31.574339, 37.069717>,  <35.106754, 31.688530, 37.129581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904327, 31.574339, 37.069717>,  <34.566948, 31.384020, 36.969944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904327, 31.574339, 37.069717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201282, 0.710381, -0.674421,
		-0.498083, 0.518630, 0.694936,
		0.843445, 0.475796, 0.249438,
		35.157360, 31.717077, 37.144550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343491, 31.987608, 37.211018>,  <34.566948, 31.384020, 36.969944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343491, 31.987608, 37.211018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728294, 32.071995, 37.141712>,  <34.959179, 32.122627, 37.100128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728294, 32.071995, 37.141712>,  <34.343491, 31.987608, 37.211018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728294, 32.071995, 37.141712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249410, 0.937263, -0.243584,
		0.111010, 0.277546, 0.954277,
		0.962014, 0.210966, -0.173268,
		35.016899, 32.135284, 37.089733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380009, 32.716454, 37.402542>,  <34.343491, 31.987608, 37.211018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380009, 32.716454, 37.402542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711769, 32.626095, 37.198166>,  <34.910824, 32.571880, 37.075539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711769, 32.626095, 37.198166>,  <34.380009, 32.716454, 37.402542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711769, 32.626095, 37.198166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044121, 0.885253, -0.463012,
		0.556908, 0.406566, 0.724264,
		0.829402, -0.225900, -0.510942,
		34.960590, 32.558327, 37.044884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707817, 33.305397, 37.467434>,  <34.380009, 32.716454, 37.402542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707817, 33.305397, 37.467434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881760, 33.123920, 37.156292>,  <34.986126, 33.015034, 36.969608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881760, 33.123920, 37.156292>,  <34.707817, 33.305397, 37.467434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881760, 33.123920, 37.156292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022368, 0.868980, -0.494341,
		0.900222, 0.197568, 0.388031,
		0.434857, -0.453696, -0.777856,
		35.012218, 32.987812, 36.922935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101345, 33.827335, 37.264053>,  <34.707817, 33.305397, 37.467434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101345, 33.827335, 37.264053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047970, 33.572414, 36.960464>,  <35.015945, 33.419460, 36.778313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047970, 33.572414, 36.960464>,  <35.101345, 33.827335, 37.264053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047970, 33.572414, 36.960464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034347, 0.762386, -0.646210,
		0.990461, -0.112300, -0.079845,
		-0.133442, -0.637304, -0.758971,
		35.007938, 33.381222, 36.732773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659962, 33.947536, 36.898647>,  <35.101345, 33.827335, 37.264053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659962, 33.947536, 36.898647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372177, 33.816078, 36.653904>,  <35.199509, 33.737202, 36.507057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372177, 33.816078, 36.653904>,  <35.659962, 33.947536, 36.898647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372177, 33.816078, 36.653904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107141, 0.817899, -0.565298,
		0.686221, -0.472264, -0.553233,
		-0.719459, -0.328646, -0.611859,
		35.156338, 33.717484, 36.470345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858040, 34.226585, 36.290760>,  <35.659962, 33.947536, 36.898647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858040, 34.226585, 36.290760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490494, 34.102142, 36.193687>,  <35.269966, 34.027477, 36.135445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490494, 34.102142, 36.193687>,  <35.858040, 34.226585, 36.290760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490494, 34.102142, 36.193687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116204, 0.801161, -0.587058,
		0.377064, -0.511228, -0.772313,
		-0.918868, -0.311105, -0.242683,
		35.214832, 34.008812, 36.120884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.677292, 28.740002, 41.834419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289894, 28.812519, 41.902706>,  <36.057453, 28.856030, 41.943680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.289894, 28.812519, 41.902706>,  <36.677292, 28.740002, 41.834419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289894, 28.812519, 41.902706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162934, 0.057099, -0.984983,
		-0.188317, -0.981770, -0.025762,
		-0.968499, 0.181291, 0.170716,
		35.999344, 28.866907, 41.953922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315643, 28.445061, 41.323723>,  <36.677292, 28.740002, 41.834419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315643, 28.445061, 41.323723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047859, 28.716398, 41.444832>,  <35.887188, 28.879200, 41.517498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.047859, 28.716398, 41.444832>,  <36.315643, 28.445061, 41.323723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047859, 28.716398, 41.444832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260758, 0.167058, -0.950840,
		-0.695577, -0.715501, 0.065045,
		-0.669461, 0.678344, 0.302774,
		35.847019, 28.919901, 41.535664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657261, 28.369528, 40.873646>,  <36.315643, 28.445061, 41.323723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657261, 28.369528, 40.873646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661655, 28.742443, 41.018269>,  <35.664291, 28.966192, 41.105042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.661655, 28.742443, 41.018269>,  <35.657261, 28.369528, 40.873646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661655, 28.742443, 41.018269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200980, 0.356255, -0.912518,
		-0.979534, -0.062638, 0.191286,
		0.010988, 0.932287, 0.361552,
		35.664951, 29.022129, 41.126736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225555, 28.770487, 40.422375>,  <35.657261, 28.369528, 40.873646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225555, 28.770487, 40.422375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443619, 29.053179, 40.602749>,  <35.574455, 29.222794, 40.710972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443619, 29.053179, 40.602749>,  <35.225555, 28.770487, 40.422375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443619, 29.053179, 40.602749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206234, 0.634420, -0.744969,
		-0.812572, 0.313125, 0.491609,
		0.545154, 0.706728, 0.450935,
		35.607166, 29.265198, 40.738029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758156, 29.334003, 40.370819>,  <35.225555, 28.770487, 40.422375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758156, 29.334003, 40.370819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126057, 29.478432, 40.432373>,  <35.346798, 29.565088, 40.469303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126057, 29.478432, 40.432373>,  <34.758156, 29.334003, 40.370819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126057, 29.478432, 40.432373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097130, 0.589252, -0.802090,
		-0.380288, 0.722779, 0.577038,
		0.919754, 0.361072, 0.153882,
		35.401981, 29.586754, 40.478539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659660, 30.003298, 40.249531>,  <34.758156, 29.334003, 40.370819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659660, 30.003298, 40.249531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056664, 29.955172, 40.240993>,  <35.294865, 29.926296, 40.235870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056664, 29.955172, 40.240993>,  <34.659660, 30.003298, 40.249531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056664, 29.955172, 40.240993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071996, 0.716901, -0.693448,
		0.098731, 0.686715, 0.720191,
		0.992506, -0.120316, -0.021339,
		35.354416, 29.919077, 40.234592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018021, 30.691910, 40.378395>,  <34.659660, 30.003298, 40.249531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018021, 30.691910, 40.378395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269154, 30.454042, 40.177517>,  <35.419834, 30.311321, 40.056992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269154, 30.454042, 40.177517>,  <35.018021, 30.691910, 40.378395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269154, 30.454042, 40.177517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233393, 0.759347, -0.607388,
		0.742535, 0.264127, 0.615531,
		0.627829, -0.594668, -0.502196,
		35.457500, 30.275642, 40.026859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574837, 31.166462, 40.123016>,  <35.018021, 30.691910, 40.378395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574837, 31.166462, 40.123016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619827, 30.825691, 39.918442>,  <35.646820, 30.621229, 39.795696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619827, 30.825691, 39.918442>,  <35.574837, 31.166462, 40.123016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619827, 30.825691, 39.918442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105961, 0.522055, -0.846304,
		0.987988, 0.040997, 0.148990,
		0.112476, -0.851926, -0.511441,
		35.653568, 30.570114, 39.765011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224548, 31.252758, 39.819889>,  <35.574837, 31.166462, 40.123016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224548, 31.252758, 39.819889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009712, 30.986795, 39.612259>,  <35.880810, 30.827219, 39.487682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009712, 30.986795, 39.612259>,  <36.224548, 31.252758, 39.819889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009712, 30.986795, 39.612259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248807, 0.463109, -0.850662,
		0.805996, -0.586030, -0.083298,
		-0.537089, -0.664905, -0.519073,
		35.848587, 30.787323, 39.456535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929813, 31.261301, 39.694019>,  <36.224548, 31.252758, 39.819889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929813, 31.261301, 39.694019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051052, 31.616488, 39.832382>,  <37.123795, 31.829599, 39.915401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051052, 31.616488, 39.832382>,  <36.929813, 31.261301, 39.694019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051052, 31.616488, 39.832382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356993, -0.230753, 0.905157,
		0.883567, -0.397834, 0.247057,
		0.303093, 0.887964, 0.345909,
		37.141979, 31.882877, 39.936153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426712, 31.156097, 40.334282>,  <36.929813, 31.261301, 39.694019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426712, 31.156097, 40.334282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262985, 31.521053, 40.334621>,  <37.164749, 31.740026, 40.334824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262985, 31.521053, 40.334621>,  <37.426712, 31.156097, 40.334282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262985, 31.521053, 40.334621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155755, -0.070792, 0.985256,
		0.898998, 0.403152, 0.171087,
		-0.409320, 0.912391, 0.000849,
		37.140190, 31.794771, 40.334877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805416, 31.449331, 40.937160>,  <37.426712, 31.156097, 40.334282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805416, 31.449331, 40.937160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464439, 31.652674, 40.888309>,  <37.259853, 31.774679, 40.858997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464439, 31.652674, 40.888309>,  <37.805416, 31.449331, 40.937160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464439, 31.652674, 40.888309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099268, 0.071969, 0.992455,
		0.513309, 0.858135, -0.010886,
		-0.852444, 0.508355, -0.122128,
		37.208706, 31.805180, 40.851669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907368, 31.934626, 41.436584>,  <37.805416, 31.449331, 40.937160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907368, 31.934626, 41.436584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515240, 31.961136, 41.362194>,  <37.279964, 31.977041, 41.317558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515240, 31.961136, 41.362194>,  <37.907368, 31.934626, 41.436584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515240, 31.961136, 41.362194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170713, 0.188692, 0.967084,
		0.099185, 0.979798, -0.173664,
		-0.980316, 0.066274, -0.185980,
		37.221146, 31.981018, 41.306400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670105, 32.573730, 41.751400>,  <37.907368, 31.934626, 41.436584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670105, 32.573730, 41.751400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339428, 32.352055, 41.712494>,  <37.141022, 32.219048, 41.689148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339428, 32.352055, 41.712494>,  <37.670105, 32.573730, 41.751400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339428, 32.352055, 41.712494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106103, -0.016229, 0.994223,
		-0.552566, 0.832233, -0.045384,
		-0.826688, -0.554189, -0.097270,
		37.091423, 32.185799, 41.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346481, 32.839504, 42.269665>,  <37.670105, 32.573730, 41.751400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346481, 32.839504, 42.269665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164753, 32.496731, 42.172287>,  <37.055717, 32.291069, 42.113861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164753, 32.496731, 42.172287>,  <37.346481, 32.839504, 42.269665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164753, 32.496731, 42.172287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247582, -0.141051, 0.958545,
		-0.855743, 0.495758, -0.148078,
		-0.454320, -0.856930, -0.243444,
		37.028458, 32.239651, 42.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717541, 32.842724, 42.653145>,  <37.346481, 32.839504, 42.269665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717541, 32.842724, 42.653145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787823, 32.461967, 42.552719>,  <36.829990, 32.233513, 42.492462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787823, 32.461967, 42.552719>,  <36.717541, 32.842724, 42.653145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787823, 32.461967, 42.552719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425279, -0.303403, 0.852692,
		-0.887843, -0.043048, -0.458128,
		0.175704, -0.951889, -0.251068,
		36.840534, 32.176399, 42.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069805, 32.529091, 42.779976>,  <36.717541, 32.842724, 42.653145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069805, 32.529091, 42.779976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341053, 32.235500, 42.764870>,  <36.503803, 32.059345, 42.755806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341053, 32.235500, 42.764870>,  <36.069805, 32.529091, 42.779976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341053, 32.235500, 42.764870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217321, -0.249339, 0.943717,
		-0.702084, -0.631749, -0.328591,
		0.678122, -0.733978, -0.037765,
		36.544491, 32.015308, 42.753540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737610, 31.836771, 42.984447>,  <36.069805, 32.529091, 42.779976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737610, 31.836771, 42.984447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131519, 31.796593, 43.041199>,  <36.367867, 31.772486, 43.075249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131519, 31.796593, 43.041199>,  <35.737610, 31.836771, 42.984447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131519, 31.796593, 43.041199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162579, -0.243193, 0.956256,
		-0.061544, -0.964763, -0.255820,
		0.984775, -0.100443, 0.141883,
		36.426952, 31.766460, 43.083763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745819, 31.373800, 43.561321>,  <35.737610, 31.836771, 42.984447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745819, 31.373800, 43.561321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124817, 31.501551, 43.554878>,  <36.352215, 31.578201, 43.551010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.124817, 31.501551, 43.554878>,  <35.745819, 31.373800, 43.561321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124817, 31.501551, 43.554878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089602, -0.216783, 0.972099,
		0.306971, -0.922500, -0.234016,
		0.947492, 0.319374, -0.016112,
		36.409065, 31.597363, 43.550045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178238, 30.759655, 43.735477>,  <35.745819, 31.373800, 43.561321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178238, 30.759655, 43.735477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387325, 31.083624, 43.841908>,  <36.512775, 31.278006, 43.905766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387325, 31.083624, 43.841908>,  <36.178238, 30.759655, 43.735477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387325, 31.083624, 43.841908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174690, -0.407242, 0.896458,
		0.834417, -0.422113, -0.354358,
		0.522716, 0.809923, 0.266071,
		36.544140, 31.326601, 43.921730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788010, 30.509123, 44.115734>,  <36.178238, 30.759655, 43.735477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788010, 30.509123, 44.115734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769894, 30.896730, 44.212849>,  <36.759026, 31.129295, 44.271118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769894, 30.896730, 44.212849>,  <36.788010, 30.509123, 44.115734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769894, 30.896730, 44.212849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154249, -0.233340, 0.960083,
		0.986993, 0.080934, -0.138902,
		-0.045292, 0.969021, 0.242789,
		36.756306, 31.187437, 44.285686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382259, 30.726173, 44.541801>,  <36.788010, 30.509123, 44.115734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382259, 30.726173, 44.541801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.085930, 30.977478, 44.636852>,  <36.908131, 31.128260, 44.693882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.085930, 30.977478, 44.636852>,  <37.382259, 30.726173, 44.541801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085930, 30.977478, 44.636852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143066, -0.198069, 0.969691,
		0.656285, 0.752368, 0.056852,
		-0.740825, 0.628261, 0.237628,
		36.863682, 31.165956, 44.708141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460567, 30.855185, 45.175835>,  <37.382259, 30.726173, 44.541801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460567, 30.855185, 45.175835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089954, 30.996874, 45.125145>,  <36.867584, 31.081888, 45.094730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089954, 30.996874, 45.125145>,  <37.460567, 30.855185, 45.175835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089954, 30.996874, 45.125145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132744, 0.007353, 0.991123,
		0.352012, 0.935131, 0.040209,
		-0.926535, 0.354225, -0.126722,
		36.811993, 31.103142, 45.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.607473, 32.696659, 44.720726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975666, 32.578674, 44.823261>,  <32.196583, 32.507885, 44.884785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975666, 32.578674, 44.823261>,  <31.607473, 32.696659, 44.720726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975666, 32.578674, 44.823261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350557, 0.333378, -0.875196,
		0.172691, 0.895465, 0.410269,
		0.920482, -0.294962, 0.256340,
		32.251812, 32.490185, 44.900162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045998, 33.226097, 44.593784>,  <31.607473, 32.696659, 44.720726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045998, 33.226097, 44.593784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276325, 32.899376, 44.607990>,  <32.414520, 32.703342, 44.616512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276325, 32.899376, 44.607990>,  <32.045998, 33.226097, 44.593784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276325, 32.899376, 44.607990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634824, 0.419312, -0.648981,
		0.515201, 0.396238, 0.759976,
		0.575818, -0.816806, 0.035512,
		32.449070, 32.654335, 44.618645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820244, 33.582722, 44.641117>,  <32.045998, 33.226097, 44.593784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820244, 33.582722, 44.641117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855522, 33.201069, 44.526672>,  <32.876690, 32.972076, 44.458004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855522, 33.201069, 44.526672>,  <32.820244, 33.582722, 44.641117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855522, 33.201069, 44.526672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740054, 0.255023, -0.622321,
		0.666740, -0.156854, 0.728598,
		0.088196, -0.954128, -0.286115,
		32.881981, 32.914829, 44.440838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463505, 33.393799, 44.646465>,  <32.820244, 33.582722, 44.641117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463505, 33.393799, 44.646465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303768, 33.145706, 44.376404>,  <33.207928, 32.996849, 44.214367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303768, 33.145706, 44.376404>,  <33.463505, 33.393799, 44.646465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303768, 33.145706, 44.376404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655971, 0.321177, -0.683043,
		0.640491, -0.715650, 0.278596,
		-0.399341, -0.620233, -0.675157,
		33.183968, 32.959637, 44.173855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101326, 33.143421, 44.258644>,  <33.463505, 33.393799, 44.646465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101326, 33.143421, 44.258644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793571, 33.032608, 44.028412>,  <33.608917, 32.966122, 43.890270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793571, 33.032608, 44.028412>,  <34.101326, 33.143421, 44.258644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793571, 33.032608, 44.028412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515952, 0.261733, -0.815653,
		0.376611, -0.924527, -0.058439,
		-0.769388, -0.277032, -0.575583,
		33.562756, 32.949497, 43.855736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415703, 32.732956, 43.672009>,  <34.101326, 33.143421, 44.258644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415703, 32.732956, 43.672009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064594, 32.881504, 43.550949>,  <33.853928, 32.970631, 43.478313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064594, 32.881504, 43.550949>,  <34.415703, 32.732956, 43.672009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064594, 32.881504, 43.550949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395693, 0.205885, -0.895007,
		-0.270068, -0.905371, -0.327669,
		-0.877776, 0.371369, -0.302646,
		33.801262, 32.992916, 43.460155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270679, 32.444256, 43.041111>,  <34.415703, 32.732956, 43.672009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270679, 32.444256, 43.041111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053696, 32.780022, 43.054520>,  <33.923504, 32.981480, 43.062565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053696, 32.780022, 43.054520>,  <34.270679, 32.444256, 43.041111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053696, 32.780022, 43.054520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334798, 0.252608, -0.907799,
		-0.770486, -0.481221, -0.418063,
		-0.542458, 0.839414, 0.033519,
		33.890957, 33.031845, 43.064575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947243, 32.529732, 42.316429>,  <34.270679, 32.444256, 43.041111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947243, 32.529732, 42.316429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877918, 32.904758, 42.437050>,  <33.836323, 33.129776, 42.509422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877918, 32.904758, 42.437050>,  <33.947243, 32.529732, 42.316429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877918, 32.904758, 42.437050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292566, 0.341373, -0.893235,
		-0.940408, -0.066587, -0.333465,
		-0.173314, 0.937566, 0.301549,
		33.825924, 33.186028, 42.527515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795341, 32.839432, 41.770908>,  <33.947243, 32.529732, 42.316429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795341, 32.839432, 41.770908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919491, 33.141342, 42.002075>,  <33.993980, 33.322487, 42.140774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919491, 33.141342, 42.002075>,  <33.795341, 32.839432, 41.770908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919491, 33.141342, 42.002075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454270, 0.416274, -0.787626,
		-0.835051, 0.506987, -0.213671,
		0.310370, 0.754772, 0.577919,
		34.012600, 33.367775, 42.175449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436172, 33.472122, 41.507771>,  <33.795341, 32.839432, 41.770908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436172, 33.472122, 41.507771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761501, 33.601639, 41.701130>,  <33.956699, 33.679348, 41.817146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761501, 33.601639, 41.701130>,  <33.436172, 33.472122, 41.507771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761501, 33.601639, 41.701130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345268, 0.400127, -0.848934,
		-0.468296, 0.857355, 0.213637,
		0.813320, 0.323790, 0.483395,
		34.005497, 33.698776, 41.846149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429134, 34.226776, 41.364616>,  <33.436172, 33.472122, 41.507771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429134, 34.226776, 41.364616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808468, 34.165401, 41.475693>,  <34.036068, 34.128578, 41.542339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808468, 34.165401, 41.475693>,  <33.429134, 34.226776, 41.364616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808468, 34.165401, 41.475693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304569, 0.685402, -0.661408,
		-0.088850, 0.711815, 0.696724,
		0.948337, -0.153434, 0.277695,
		34.092968, 34.119370, 41.559002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623959, 34.854523, 41.332668>,  <33.429134, 34.226776, 41.364616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623959, 34.854523, 41.332668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972092, 34.658424, 41.351357>,  <34.180973, 34.540768, 41.362568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972092, 34.658424, 41.351357>,  <33.623959, 34.854523, 41.332668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972092, 34.658424, 41.351357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379326, 0.606864, -0.698447,
		0.314059, 0.625602, 0.714136,
		0.870333, -0.490243, 0.046716,
		34.233192, 34.511353, 41.365372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119350, 35.316109, 41.565289>,  <33.623959, 34.854523, 41.332668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119350, 35.316109, 41.565289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307613, 35.037041, 41.349239>,  <34.420570, 34.869598, 41.219612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307613, 35.037041, 41.349239>,  <34.119350, 35.316109, 41.565289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307613, 35.037041, 41.349239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296754, 0.701673, -0.647760,
		0.830913, 0.144592, 0.537287,
		0.470661, -0.697673, -0.540121,
		34.448811, 34.827740, 41.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847260, 35.550224, 41.537510>,  <34.119350, 35.316109, 41.565289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847260, 35.550224, 41.537510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770653, 35.288414, 41.244961>,  <34.724689, 35.131329, 41.069431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770653, 35.288414, 41.244961>,  <34.847260, 35.550224, 41.537510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770653, 35.288414, 41.244961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265771, 0.682747, -0.680604,
		0.944821, -0.324726, 0.043197,
		-0.191517, -0.654530, -0.731377,
		34.713196, 35.092056, 41.025547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464508, 35.790825, 41.885777>,  <34.847260, 35.550224, 41.537510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464508, 35.790825, 41.885777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669220, 36.124535, 41.967819>,  <35.792049, 36.324760, 42.017044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669220, 36.124535, 41.967819>,  <35.464508, 35.790825, 41.885777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669220, 36.124535, 41.967819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022903, -0.225410, 0.973995,
		0.858810, -0.503171, -0.096254,
		0.511783, 0.834272, 0.205109,
		35.822754, 36.374817, 42.029350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881565, 35.564175, 42.306873>,  <35.464508, 35.790825, 41.885777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881565, 35.564175, 42.306873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863968, 35.956604, 42.382305>,  <35.853409, 36.192062, 42.427563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.863968, 35.956604, 42.382305>,  <35.881565, 35.564175, 42.306873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863968, 35.956604, 42.382305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297889, -0.193056, 0.934875,
		0.953586, -0.015045, 0.300744,
		-0.043996, 0.981072, 0.188578,
		35.850769, 36.250927, 42.438877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119625, 35.526417, 42.994457>,  <35.881565, 35.564175, 42.306873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119625, 35.526417, 42.994457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961529, 35.892090, 42.958538>,  <35.866673, 36.111492, 42.936985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961529, 35.892090, 42.958538>,  <36.119625, 35.526417, 42.994457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961529, 35.892090, 42.958538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255219, -0.015376, 0.966761,
		0.882411, 0.405020, 0.239393,
		-0.395239, 0.914178, -0.089801,
		35.842957, 36.166344, 42.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484894, 36.051186, 43.381321>,  <36.119625, 35.526417, 42.994457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484894, 36.051186, 43.381321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107731, 36.177723, 43.339653>,  <35.881432, 36.253647, 43.314651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107731, 36.177723, 43.339653>,  <36.484894, 36.051186, 43.381321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107731, 36.177723, 43.339653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205842, -0.307630, 0.928974,
		0.261830, 0.897379, 0.355184,
		-0.942907, 0.316345, -0.104171,
		35.824860, 36.272625, 43.308403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367752, 36.335564, 44.012131>,  <36.484894, 36.051186, 43.381321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367752, 36.335564, 44.012131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002281, 36.301502, 43.853165>,  <35.782997, 36.281063, 43.757786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002281, 36.301502, 43.853165>,  <36.367752, 36.335564, 44.012131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002281, 36.301502, 43.853165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308623, -0.490905, 0.814717,
		-0.264473, 0.867041, 0.422247,
		-0.913677, -0.085156, -0.397420,
		35.728180, 36.275955, 43.733940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971607, 36.678871, 44.444565>,  <36.367752, 36.335564, 44.012131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971607, 36.678871, 44.444565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739277, 36.418564, 44.248955>,  <35.599880, 36.262379, 44.131588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.739277, 36.418564, 44.248955>,  <35.971607, 36.678871, 44.444565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739277, 36.418564, 44.248955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360549, -0.332947, 0.871293,
		-0.729828, 0.682386, -0.041250,
		-0.580824, -0.650766, -0.489027,
		35.565029, 36.223335, 44.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390121, 36.576511, 44.849483>,  <35.971607, 36.678871, 44.444565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390121, 36.576511, 44.849483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.360443, 36.251427, 44.618313>,  <35.342636, 36.056377, 44.479610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.360443, 36.251427, 44.618313>,  <35.390121, 36.576511, 44.849483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360443, 36.251427, 44.618313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369373, -0.515913, 0.772915,
		-0.926315, 0.270815, -0.261915,
		-0.074192, -0.812707, -0.577930,
		35.338184, 36.007614, 44.444935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785892, 36.275772, 45.007412>,  <35.390121, 36.576511, 44.849483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785892, 36.275772, 45.007412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956661, 35.962780, 44.826096>,  <35.059120, 35.774986, 44.717308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956661, 35.962780, 44.826096>,  <34.785892, 36.275772, 45.007412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956661, 35.962780, 44.826096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304125, -0.596303, 0.742920,
		-0.851616, -0.179308, -0.492543,
		0.426917, -0.782477, -0.453289,
		35.084736, 35.728035, 44.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223354, 35.741154, 45.176743>,  <34.785892, 36.275772, 45.007412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223354, 35.741154, 45.176743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566219, 35.551605, 45.096035>,  <34.771938, 35.437874, 45.047611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.566219, 35.551605, 45.096035>,  <34.223354, 35.741154, 45.176743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566219, 35.551605, 45.096035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133512, -0.582802, 0.801571,
		-0.497437, -0.660140, -0.562825,
		0.857164, -0.473875, -0.201771,
		34.823368, 35.409443, 45.035503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059559, 35.082485, 45.212543>,  <34.223354, 35.741154, 45.176743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059559, 35.082485, 45.212543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457920, 35.086430, 45.248486>,  <34.696938, 35.088795, 45.270050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457920, 35.086430, 45.248486>,  <34.059559, 35.082485, 45.212543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457920, 35.086430, 45.248486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052775, -0.743631, 0.666504,
		0.073392, -0.668518, -0.740066,
		0.995906, 0.009859, 0.089857,
		34.756691, 35.089386, 45.275444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177746, 34.469543, 45.143311>,  <34.059559, 35.082485, 45.212543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177746, 34.469543, 45.143311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496151, 34.604382, 45.344402>,  <34.687195, 34.685284, 45.465057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496151, 34.604382, 45.344402>,  <34.177746, 34.469543, 45.143311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496151, 34.604382, 45.344402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092972, -0.752619, 0.651859,
		0.598102, -0.565626, -0.567751,
		0.796008, 0.337094, 0.502731,
		34.734955, 34.705509, 45.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656105, 33.929539, 45.341587>,  <34.177746, 34.469543, 45.143311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656105, 33.929539, 45.341587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768726, 34.230297, 45.580044>,  <34.836300, 34.410751, 45.723118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768726, 34.230297, 45.580044>,  <34.656105, 33.929539, 45.341587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768726, 34.230297, 45.580044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048493, -0.631627, 0.773754,
		0.958320, -0.188943, -0.214297,
		0.281551, 0.751896, 0.596138,
		34.853191, 34.455868, 45.758884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277039, 33.604595, 45.696293>,  <34.656105, 33.929539, 45.341587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277039, 33.604595, 45.696293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108551, 33.910450, 45.891392>,  <35.007458, 34.093964, 46.008450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108551, 33.910450, 45.891392>,  <35.277039, 33.604595, 45.696293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108551, 33.910450, 45.891392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063625, -0.561372, 0.825114,
		0.904723, 0.316523, 0.285112,
		-0.421221, 0.764640, 0.487748,
		34.982185, 34.139843, 46.037716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652634, 33.755119, 46.310913>,  <35.277039, 33.604595, 45.696293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652634, 33.755119, 46.310913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292339, 33.904961, 46.398869>,  <35.076164, 33.994865, 46.451641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292339, 33.904961, 46.398869>,  <35.652634, 33.755119, 46.310913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292339, 33.904961, 46.398869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073462, -0.367569, 0.927090,
		0.428112, 0.851216, 0.303563,
		-0.900735, 0.374599, 0.219893,
		35.022118, 34.017342, 46.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290592, 34.118755, 46.520130>,  <35.652634, 33.755119, 46.310913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290592, 34.118755, 46.520130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627293, 33.931831, 46.628262>,  <36.829311, 33.819675, 46.693142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627293, 33.931831, 46.628262>,  <36.290592, 34.118755, 46.520130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627293, 33.931831, 46.628262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438683, 0.300196, -0.847018,
		0.314669, 0.831566, 0.457691,
		0.841749, -0.467312, 0.270331,
		36.879818, 33.791637, 46.709362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843685, 34.614517, 46.435448>,  <36.290592, 34.118755, 46.520130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843685, 34.614517, 46.435448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024879, 34.258003, 46.443573>,  <37.133598, 34.044094, 46.448448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024879, 34.258003, 46.443573>,  <36.843685, 34.614517, 46.435448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024879, 34.258003, 46.443573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570207, 0.272134, -0.775118,
		0.685322, 0.362704, 0.631490,
		0.452988, -0.891285, 0.020317,
		37.160774, 33.990616, 46.449669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499752, 34.724007, 46.568100>,  <36.843685, 34.614517, 46.435448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499752, 34.724007, 46.568100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493668, 34.357143, 46.408806>,  <37.490017, 34.137024, 46.313229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493668, 34.357143, 46.408806>,  <37.499752, 34.724007, 46.568100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493668, 34.357143, 46.408806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426974, 0.354182, -0.832015,
		0.904136, -0.182688, 0.386217,
		-0.015208, -0.917159, -0.398231,
		37.489105, 34.081997, 46.289337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184467, 34.581585, 46.472271>,  <37.499752, 34.724007, 46.568100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184467, 34.581585, 46.472271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969906, 34.343861, 46.232582>,  <37.841171, 34.201225, 46.088768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969906, 34.343861, 46.232582>,  <38.184467, 34.581585, 46.472271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969906, 34.343861, 46.232582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543376, 0.300081, -0.784024,
		0.645770, -0.746155, 0.161971,
		-0.536399, -0.594310, -0.599226,
		37.808987, 34.165569, 46.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645149, 34.382179, 46.031204>,  <38.184467, 34.581585, 46.472271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645149, 34.382179, 46.031204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.308628, 34.283730, 45.838692>,  <38.106716, 34.224659, 45.723183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.308628, 34.283730, 45.838692>,  <38.645149, 34.382179, 46.031204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308628, 34.283730, 45.838692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460275, 0.140738, -0.876550,
		0.283476, -0.958965, -0.005118,
		-0.841301, -0.246125, -0.481283,
		38.056236, 34.209892, 45.694305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831226, 33.813293, 45.516457>,  <38.645149, 34.382179, 46.031204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831226, 33.813293, 45.516457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497692, 33.994034, 45.389618>,  <38.297569, 34.102478, 45.313515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497692, 33.994034, 45.389618>,  <38.831226, 33.813293, 45.516457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497692, 33.994034, 45.389618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392036, 0.080335, -0.916436,
		-0.388616, -0.888470, -0.244127,
		-0.833838, 0.451848, -0.317093,
		38.247540, 34.129589, 45.294491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758835, 33.558296, 44.775246>,  <38.831226, 33.813293, 45.516457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758835, 33.558296, 44.775246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518665, 33.873440, 44.830048>,  <38.374565, 34.062527, 44.862926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518665, 33.873440, 44.830048>,  <38.758835, 33.558296, 44.775246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518665, 33.873440, 44.830048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222586, 0.329201, -0.917650,
		-0.768081, -0.520483, -0.373026,
		-0.600422, 0.787861, 0.137001,
		38.338539, 34.109798, 44.871147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390945, 33.574512, 44.126839>,  <38.758835, 33.558296, 44.775246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390945, 33.574512, 44.126839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.367668, 33.938427, 44.291225>,  <38.353703, 34.156776, 44.389858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.367668, 33.938427, 44.291225>,  <38.390945, 33.574512, 44.126839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367668, 33.938427, 44.291225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165577, 0.414763, -0.894738,
		-0.984478, 0.015976, -0.174778,
		-0.058197, 0.909789, 0.410970,
		38.350208, 34.211365, 44.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914150, 33.947353, 43.706593>,  <38.390945, 33.574512, 44.126839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914150, 33.947353, 43.706593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149189, 34.201706, 43.906746>,  <38.290211, 34.354317, 44.026836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149189, 34.201706, 43.906746>,  <37.914150, 33.947353, 43.706593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149189, 34.201706, 43.906746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278915, 0.421327, -0.862954,
		-0.759563, 0.646633, 0.070214,
		0.587598, 0.635884, 0.500380,
		38.325470, 34.392471, 44.056858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914345, 34.540585, 43.347858>,  <37.914150, 33.947353, 43.706593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914345, 34.540585, 43.347858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231991, 34.624207, 43.576134>,  <38.422577, 34.674381, 43.713097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231991, 34.624207, 43.576134>,  <37.914345, 34.540585, 43.347858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231991, 34.624207, 43.576134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401279, 0.524874, -0.750655,
		-0.456466, 0.825108, 0.332919,
		0.794112, 0.209055, 0.570686,
		38.470226, 34.686924, 43.747341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015217, 35.172756, 43.076862>,  <37.914345, 34.540585, 43.347858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015217, 35.172756, 43.076862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352287, 35.048634, 43.252869>,  <38.554527, 34.974159, 43.358471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352287, 35.048634, 43.252869>,  <38.015217, 35.172756, 43.076862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352287, 35.048634, 43.252869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523720, 0.282697, -0.803617,
		0.124980, 0.907629, 0.400737,
		0.842673, -0.310310, 0.440012,
		38.605087, 34.955540, 43.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507236, 35.645283, 43.025631>,  <38.015217, 35.172756, 43.076862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507236, 35.645283, 43.025631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 35.312351, 43.073341>,  <38.853668, 35.112595, 43.101967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723755, 35.312351, 43.073341>,  <38.507236, 35.645283, 43.025631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723755, 35.312351, 43.073341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654084, 0.327680, -0.681762,
		0.528364, 0.447055, 0.721785,
		0.541300, -0.832327, 0.119277,
		38.886147, 35.062653, 43.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179516, 36.003040, 43.039459>,  <38.507236, 35.645283, 43.025631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179516, 36.003040, 43.039459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.245110, 35.613220, 42.978325>,  <39.284466, 35.379330, 42.941643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.245110, 35.613220, 42.978325>,  <39.179516, 36.003040, 43.039459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245110, 35.613220, 42.978325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667160, 0.223693, -0.710534,
		0.726639, 0.014554, 0.686865,
		0.163988, -0.974551, -0.152835,
		39.294308, 35.320854, 42.932476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905014, 35.929340, 42.822960>,  <39.179516, 36.003040, 43.039459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905014, 35.929340, 42.822960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713844, 35.609409, 42.677708>,  <39.599144, 35.417450, 42.590557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.713844, 35.609409, 42.677708>,  <39.905014, 35.929340, 42.822960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713844, 35.609409, 42.677708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458295, 0.125625, -0.879877,
		0.749368, -0.586936, 0.306518,
		-0.477926, -0.799827, -0.363130,
		39.570465, 35.369461, 42.568768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.239622, 28.532385, 34.275124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968973, 28.351063, 34.507225>,  <27.806583, 28.242270, 34.646484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968973, 28.351063, 34.507225>,  <28.239622, 28.532385, 34.275124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968973, 28.351063, 34.507225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637361, 0.755171, -0.153259,
		-0.368718, -0.473530, -0.799885,
		-0.676623, -0.453306, 0.580254,
		27.765985, 28.215071, 34.681301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524141, 28.280901, 33.940369>,  <28.239622, 28.532385, 34.275124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524141, 28.280901, 33.940369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489029, 28.339102, 34.334553>,  <27.467962, 28.374022, 34.571064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489029, 28.339102, 34.334553>,  <27.524141, 28.280901, 33.940369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489029, 28.339102, 34.334553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498569, 0.850034, -0.169916,
		-0.862394, -0.506233, -0.002075,
		-0.087781, 0.145500, 0.985456,
		27.462694, 28.382751, 34.630188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818882, 28.351261, 34.025146>,  <27.524141, 28.280901, 33.940369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818882, 28.351261, 34.025146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004028, 28.510586, 34.341908>,  <27.115116, 28.606180, 34.531963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004028, 28.510586, 34.341908>,  <26.818882, 28.351261, 34.025146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004028, 28.510586, 34.341908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405132, 0.889653, -0.210681,
		-0.788432, -0.223306, 0.573157,
		0.462864, 0.398312, 0.791899,
		27.142887, 28.630079, 34.579475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333242, 28.728807, 34.366943>,  <26.818882, 28.351261, 34.025146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333242, 28.728807, 34.366943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673111, 28.896397, 34.495018>,  <26.877031, 28.996950, 34.571861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.673111, 28.896397, 34.495018>,  <26.333242, 28.728807, 34.366943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673111, 28.896397, 34.495018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345833, 0.901137, -0.261440,
		-0.398069, 0.111407, 0.910565,
		0.849671, 0.418975, 0.320187,
		26.928013, 29.022089, 34.591076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130375, 29.277653, 34.834534>,  <26.333242, 28.728807, 34.366943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130375, 29.277653, 34.834534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505907, 29.350353, 34.717529>,  <26.731226, 29.393972, 34.647327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505907, 29.350353, 34.717529>,  <26.130375, 29.277653, 34.834534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505907, 29.350353, 34.717529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214326, 0.973213, -0.083193,
		0.269558, 0.140797, 0.952636,
		0.938831, 0.181750, -0.292514,
		26.787556, 29.404879, 34.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189837, 29.884293, 35.131699>,  <26.130375, 29.277653, 34.834534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189837, 29.884293, 35.131699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487766, 29.848671, 34.867184>,  <26.666525, 29.827297, 34.708473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487766, 29.848671, 34.867184>,  <26.189837, 29.884293, 35.131699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487766, 29.848671, 34.867184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001422, 0.991264, -0.131888,
		0.667259, 0.097293, 0.738445,
		0.744825, -0.089053, -0.661291,
		26.711214, 29.821955, 34.668797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747616, 30.325003, 35.334473>,  <26.189837, 29.884293, 35.131699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747616, 30.325003, 35.334473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778555, 30.264339, 34.940311>,  <26.797119, 30.227942, 34.703815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778555, 30.264339, 34.940311>,  <26.747616, 30.325003, 35.334473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778555, 30.264339, 34.940311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025602, 0.987735, -0.154026,
		0.996675, 0.037142, 0.072516,
		0.077348, -0.151658, -0.985402,
		26.801760, 30.218842, 34.644691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243809, 30.849485, 35.116982>,  <26.747616, 30.325003, 35.334473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243809, 30.849485, 35.116982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038616, 30.724329, 34.797245>,  <26.915501, 30.649235, 34.605404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038616, 30.724329, 34.797245>,  <27.243809, 30.849485, 35.116982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038616, 30.724329, 34.797245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082045, 0.944810, -0.317181,
		0.854470, -0.097126, -0.510342,
		-0.512982, -0.312892, -0.799342,
		26.884722, 30.630461, 34.557442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531857, 31.218733, 34.549736>,  <27.243809, 30.849485, 35.116982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531857, 31.218733, 34.549736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186453, 31.106892, 34.381840>,  <26.979212, 31.039787, 34.281101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186453, 31.106892, 34.381840>,  <27.531857, 31.218733, 34.549736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186453, 31.106892, 34.381840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075146, 0.894293, -0.441127,
		0.498708, -0.349374, -0.793239,
		-0.863507, -0.279602, -0.419737,
		26.927401, 31.023010, 34.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606737, 31.465340, 33.866039>,  <27.531857, 31.218733, 34.549736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606737, 31.465340, 33.866039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217161, 31.386381, 33.910713>,  <26.983416, 31.339006, 33.937519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217161, 31.386381, 33.910713>,  <27.606737, 31.465340, 33.866039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217161, 31.386381, 33.910713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226322, 0.877973, -0.421831,
		-0.014791, -0.436116, -0.899769,
		-0.973940, -0.197398, 0.111688,
		26.924978, 31.327162, 33.944218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267307, 31.553419, 33.151779>,  <27.606737, 31.465340, 33.866039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267307, 31.553419, 33.151779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022627, 31.597864, 33.465080>,  <26.875818, 31.624531, 33.653061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022627, 31.597864, 33.465080>,  <27.267307, 31.553419, 33.151779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022627, 31.597864, 33.465080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094714, 0.972679, -0.211953,
		-0.785400, -0.203836, -0.584464,
		-0.611700, 0.111111, 0.783248,
		26.839117, 31.631197, 33.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779175, 32.021297, 32.928627>,  <27.267307, 31.553419, 33.151779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779175, 32.021297, 32.928627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683418, 32.045563, 33.316238>,  <26.625963, 32.060120, 33.548805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683418, 32.045563, 33.316238>,  <26.779175, 32.021297, 32.928627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683418, 32.045563, 33.316238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270461, 0.954376, -0.126559,
		-0.932493, -0.292381, -0.212064,
		-0.239392, 0.060661, 0.969026,
		26.611601, 32.063763, 33.606945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965618, 32.204269, 33.198536>,  <26.779175, 32.021297, 32.928627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965618, 32.204269, 33.198536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271473, 32.324879, 33.426365>,  <26.454985, 32.397243, 33.563065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.271473, 32.324879, 33.426365>,  <25.965618, 32.204269, 33.198536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271473, 32.324879, 33.426365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341163, 0.939187, -0.039187,
		-0.546754, -0.164355, 0.821004,
		0.764636, 0.301522, 0.569575,
		26.500864, 32.415337, 33.597237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610128, 32.810654, 33.596260>,  <25.965618, 32.204269, 33.198536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610128, 32.810654, 33.596260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006285, 32.841450, 33.642220>,  <26.243979, 32.859928, 33.669796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006285, 32.841450, 33.642220>,  <25.610128, 32.810654, 33.596260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006285, 32.841450, 33.642220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093787, 0.984411, 0.148788,
		-0.101655, -0.158134, 0.982171,
		0.990389, 0.076989, 0.114901,
		26.303402, 32.864548, 33.676689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632645, 33.321175, 34.119915>,  <25.610128, 32.810654, 33.596260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632645, 33.321175, 34.119915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014151, 33.331615, 34.000149>,  <26.243055, 33.337879, 33.928291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014151, 33.331615, 34.000149>,  <25.632645, 33.321175, 34.119915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014151, 33.331615, 34.000149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024404, 0.986206, 0.163716,
		0.299557, -0.163454, 0.939973,
		0.953766, 0.026103, -0.299413,
		26.300280, 33.339447, 33.910324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907217, 33.806274, 34.681103>,  <25.632645, 33.321175, 34.119915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907217, 33.806274, 34.681103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162764, 33.801693, 34.373409>,  <26.316092, 33.798946, 34.188793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162764, 33.801693, 34.373409>,  <25.907217, 33.806274, 34.681103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162764, 33.801693, 34.373409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126417, 0.987860, 0.090286,
		0.758861, -0.154924, 0.632558,
		0.638866, -0.011452, -0.769233,
		26.354424, 33.798256, 34.142639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436810, 34.256516, 34.968441>,  <25.907217, 33.806274, 34.681103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436810, 34.256516, 34.968441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469732, 34.241573, 34.570080>,  <26.489485, 34.232609, 34.331062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469732, 34.241573, 34.570080>,  <26.436810, 34.256516, 34.968441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469732, 34.241573, 34.570080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157080, 0.987293, -0.024055,
		0.984150, -0.154458, 0.087128,
		0.082306, -0.037360, -0.995907,
		26.494425, 34.230366, 34.271309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991453, 34.755970, 34.837711>,  <26.436810, 34.256516, 34.968441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991453, 34.755970, 34.837711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.790897, 34.737885, 34.492096>,  <26.670565, 34.727032, 34.284725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.790897, 34.737885, 34.492096>,  <26.991453, 34.755970, 34.837711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790897, 34.737885, 34.492096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158742, 0.976875, -0.143235,
		0.850535, -0.208975, -0.482618,
		-0.501390, -0.045215, -0.864039,
		26.640480, 34.724319, 34.232883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321556, 35.204414, 34.350040>,  <26.991453, 34.755970, 34.837711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321556, 35.204414, 34.350040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.975588, 35.152901, 34.155998>,  <26.768007, 35.121994, 34.039574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.975588, 35.152901, 34.155998>,  <27.321556, 35.204414, 34.350040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975588, 35.152901, 34.155998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044072, 0.943302, -0.328998,
		0.499967, -0.305937, -0.810207,
		-0.864922, -0.128781, -0.485103,
		26.716112, 35.114265, 34.010468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414658, 35.372799, 33.595306>,  <27.321556, 35.204414, 34.350040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414658, 35.372799, 33.595306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027767, 35.429234, 33.679752>,  <26.795633, 35.463097, 33.730419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027767, 35.429234, 33.679752>,  <27.414658, 35.372799, 33.595306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027767, 35.429234, 33.679752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095735, 0.972691, -0.211438,
		-0.235182, -0.184297, -0.954319,
		-0.967225, 0.141089, 0.211116,
		26.737600, 35.471561, 33.743088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131813, 35.294830, 33.219952>,  <27.414658, 35.372799, 33.595306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131813, 35.294830, 33.219952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521540, 35.256603, 33.301514>,  <28.755375, 35.233665, 33.350452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.521540, 35.256603, 33.301514>,  <28.131813, 35.294830, 33.219952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521540, 35.256603, 33.301514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102998, -0.994339, 0.026108,
		0.200256, -0.046439, -0.978642,
		0.974314, -0.095570, 0.203906,
		28.813833, 35.227932, 33.362686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409313, 34.907013, 32.745956>,  <28.131813, 35.294830, 33.219952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409313, 34.907013, 32.745956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688812, 34.887772, 33.031456>,  <28.856512, 34.876225, 33.202755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688812, 34.887772, 33.031456>,  <28.409313, 34.907013, 32.745956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688812, 34.887772, 33.031456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169683, -0.958116, -0.230696,
		0.694951, 0.282309, -0.661320,
		0.698749, -0.048108, 0.713747,
		28.898438, 34.873341, 33.245579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977486, 34.427746, 32.496346>,  <28.409313, 34.907013, 32.745956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977486, 34.427746, 32.496346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027960, 34.405155, 32.892506>,  <29.058245, 34.391602, 33.130199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027960, 34.405155, 32.892506>,  <28.977486, 34.427746, 32.496346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027960, 34.405155, 32.892506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202284, -0.975936, -0.081423,
		0.971163, 0.210616, -0.111727,
		0.126187, -0.056474, 0.990398,
		29.065815, 34.388214, 33.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501314, 34.017422, 32.650631>,  <28.977486, 34.427746, 32.496346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501314, 34.017422, 32.650631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315159, 33.992264, 33.003777>,  <29.203466, 33.977169, 33.215664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315159, 33.992264, 33.003777>,  <29.501314, 34.017422, 32.650631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315159, 33.992264, 33.003777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175668, -0.984193, 0.022484,
		0.867499, 0.165556, 0.469081,
		-0.465389, -0.062898, 0.882869,
		29.175543, 33.973392, 33.268639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995344, 33.609711, 33.158501>,  <29.501314, 34.017422, 32.650631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995344, 33.609711, 33.158501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632172, 33.612015, 33.326134>,  <29.414268, 33.613396, 33.426712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632172, 33.612015, 33.326134>,  <29.995344, 33.609711, 33.158501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632172, 33.612015, 33.326134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134832, -0.942740, 0.305061,
		0.396841, 0.333479, 0.855166,
		-0.907931, 0.005757, 0.419081,
		29.359793, 33.613743, 33.451859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080605, 33.388603, 33.823650>,  <29.995344, 33.609711, 33.158501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080605, 33.388603, 33.823650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692572, 33.337475, 33.741089>,  <29.459751, 33.306797, 33.691551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692572, 33.337475, 33.741089>,  <30.080605, 33.388603, 33.823650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692572, 33.337475, 33.741089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073189, -0.964603, 0.253346,
		-0.231483, 0.230659, 0.945099,
		-0.970082, -0.127816, -0.206407,
		29.401546, 33.299129, 33.679165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714622, 33.028885, 34.358753>,  <30.080605, 33.388603, 33.823650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714622, 33.028885, 34.358753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471937, 32.943756, 34.052391>,  <29.326326, 32.892681, 33.868576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471937, 32.943756, 34.052391>,  <29.714622, 33.028885, 34.358753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471937, 32.943756, 34.052391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181094, -0.975165, 0.127511,
		-0.774016, -0.061337, 0.630188,
		-0.606716, -0.212819, -0.765901,
		29.289923, 32.879910, 33.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198261, 32.598545, 34.652348>,  <29.714622, 33.028885, 34.358753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198261, 32.598545, 34.652348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158882, 32.526436, 34.260876>,  <29.135256, 32.483170, 34.025993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.158882, 32.526436, 34.260876>,  <29.198261, 32.598545, 34.652348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158882, 32.526436, 34.260876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029316, -0.982504, 0.183922,
		-0.994711, 0.046798, 0.091439,
		-0.098446, -0.180269, -0.978678,
		29.129349, 32.472355, 33.967274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670349, 32.143433, 34.510773>,  <29.198261, 32.598545, 34.652348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670349, 32.143433, 34.510773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894793, 32.103088, 34.182144>,  <29.029459, 32.078880, 33.984966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894793, 32.103088, 34.182144>,  <28.670349, 32.143433, 34.510773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894793, 32.103088, 34.182144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018776, -0.990742, 0.134455,
		-0.827529, -0.090869, -0.554020,
		0.561108, -0.100864, -0.821574,
		29.063126, 32.072830, 33.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531384, 31.576422, 34.256901>,  <28.670349, 32.143433, 34.510773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531384, 31.576422, 34.256901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871277, 31.632555, 34.053623>,  <29.075212, 31.666235, 33.931656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871277, 31.632555, 34.053623>,  <28.531384, 31.576422, 34.256901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871277, 31.632555, 34.053623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323539, -0.899874, 0.292488,
		-0.416266, -0.412957, -0.810055,
		0.849732, 0.140332, -0.508195,
		29.126196, 31.674654, 33.901165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651281, 31.014841, 33.882427>,  <28.531384, 31.576422, 34.256901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651281, 31.014841, 33.882427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024679, 31.156389, 33.905617>,  <29.248718, 31.241318, 33.919529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024679, 31.156389, 33.905617>,  <28.651281, 31.014841, 33.882427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024679, 31.156389, 33.905617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323343, -0.900567, 0.290565,
		0.155032, -0.252495, -0.955097,
		0.933496, 0.353871, 0.057974,
		29.304728, 31.262550, 33.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086143, 30.613478, 33.369770>,  <28.651281, 31.014841, 33.882427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086143, 30.613478, 33.369770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361958, 30.774721, 33.610451>,  <29.527447, 30.871468, 33.754860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361958, 30.774721, 33.610451>,  <29.086143, 30.613478, 33.369770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361958, 30.774721, 33.610451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419134, -0.899637, 0.122394,
		0.590648, 0.167798, -0.789290,
		0.689537, 0.403110, 0.601699,
		29.568819, 30.895655, 33.790962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704136, 30.318714, 33.209255>,  <29.086143, 30.613478, 33.369770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704136, 30.318714, 33.209255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780531, 30.467697, 33.572529>,  <29.826368, 30.557087, 33.790493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780531, 30.467697, 33.572529>,  <29.704136, 30.318714, 33.209255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780531, 30.467697, 33.572529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501039, -0.832599, 0.236091,
		0.844087, 0.409945, -0.345632,
		0.190988, 0.372457, 0.908185,
		29.837828, 30.579433, 33.844986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386343, 30.194393, 33.359734>,  <29.704136, 30.318714, 33.209255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386343, 30.194393, 33.359734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195152, 30.238953, 33.708244>,  <30.080437, 30.265688, 33.917351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195152, 30.238953, 33.708244>,  <30.386343, 30.194393, 33.359734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195152, 30.238953, 33.708244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403538, -0.853199, 0.330468,
		0.780188, 0.509551, 0.362856,
		-0.477978, 0.111401, 0.871279,
		30.051758, 30.272373, 33.969627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834187, 29.824814, 33.747364>,  <30.386343, 30.194393, 33.359734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834187, 29.824814, 33.747364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511522, 29.870878, 33.979237>,  <30.317924, 29.898518, 34.118362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511522, 29.870878, 33.979237>,  <30.834187, 29.824814, 33.747364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511522, 29.870878, 33.979237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161527, -0.900532, 0.403673,
		0.568512, 0.419262, 0.707822,
		-0.806661, 0.115161, 0.579686,
		30.269524, 29.905426, 34.153141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051540, 29.709576, 34.415688>,  <30.834187, 29.824814, 33.747364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051540, 29.709576, 34.415688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657465, 29.641159, 34.410801>,  <30.421021, 29.600109, 34.407871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657465, 29.641159, 34.410801>,  <31.051540, 29.709576, 34.415688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657465, 29.641159, 34.410801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148544, -0.886850, 0.437529,
		-0.085668, 0.429234, 0.899121,
		-0.985188, -0.171041, -0.012214,
		30.361908, 29.589848, 34.407135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871689, 29.395969, 35.019703>,  <31.051540, 29.709576, 34.415688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871689, 29.395969, 35.019703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534140, 29.317558, 34.819923>,  <30.331610, 29.270512, 34.700054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534140, 29.317558, 34.819923>,  <30.871689, 29.395969, 35.019703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534140, 29.317558, 34.819923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024722, -0.915674, 0.401160,
		-0.535974, 0.350875, 0.767866,
		-0.843873, -0.196029, -0.499452,
		30.280977, 29.258749, 34.670090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402599, 29.169500, 35.423931>,  <30.871689, 29.395969, 35.019703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402599, 29.169500, 35.423931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290678, 29.015287, 35.072231>,  <30.223524, 28.922760, 34.861214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290678, 29.015287, 35.072231>,  <30.402599, 29.169500, 35.423931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290678, 29.015287, 35.072231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058108, -0.907348, 0.416345,
		-0.958297, 0.167586, 0.231479,
		-0.279805, -0.385531, -0.879247,
		30.206736, 28.899628, 34.808456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906847, 28.631794, 35.568954>,  <30.402599, 29.169500, 35.423931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906847, 28.631794, 35.568954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046513, 28.550985, 35.202946>,  <30.130312, 28.502501, 34.983341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046513, 28.550985, 35.202946>,  <29.906847, 28.631794, 35.568954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046513, 28.550985, 35.202946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087904, -0.979239, 0.182656,
		-0.932929, 0.016657, -0.359675,
		0.349166, -0.202022, -0.915025,
		30.151262, 28.490379, 34.928436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474590, 28.090948, 35.419609>,  <29.906847, 28.631794, 35.568954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474590, 28.090948, 35.419609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793274, 28.050543, 35.181267>,  <29.984484, 28.026299, 35.038261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793274, 28.050543, 35.181267>,  <29.474590, 28.090948, 35.419609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793274, 28.050543, 35.181267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037624, -0.992310, 0.117919,
		-0.603189, -0.071528, -0.794385,
		0.796710, -0.101015, -0.595859,
		30.032288, 28.020239, 35.002510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301779, 27.567772, 35.003639>,  <29.474590, 28.090948, 35.419609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301779, 27.567772, 35.003639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698771, 27.580957, 34.956486>,  <29.936966, 27.588869, 34.928192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698771, 27.580957, 34.956486>,  <29.301779, 27.567772, 35.003639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698771, 27.580957, 34.956486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064251, -0.960015, 0.272474,
		-0.104189, -0.277999, -0.954914,
		0.992480, 0.032965, -0.117885,
		29.996515, 27.590847, 34.921120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624310, 27.813192, 35.166950>,  <29.301779, 27.567772, 35.003639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624310, 27.813192, 35.166950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841837, 27.578917, 35.407360>,  <28.972353, 27.438351, 35.551605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841837, 27.578917, 35.407360>,  <28.624310, 27.813192, 35.166950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841837, 27.578917, 35.407360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799172, -0.142884, 0.583873,
		-0.256092, -0.797842, -0.545770,
		0.543820, -0.585690, 0.601021,
		29.004984, 27.403210, 35.587666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.412590, 31.576145, 45.445560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026413, 31.472229, 45.437183>,  <36.794708, 31.409880, 45.432156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026413, 31.472229, 45.437183>,  <37.412590, 31.576145, 45.445560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026413, 31.472229, 45.437183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012436, -0.126190, 0.991928,
		-0.260335, 0.957385, 0.125059,
		-0.965438, -0.259788, -0.020945,
		36.736782, 31.394293, 45.430901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945389, 31.938025, 45.996922>,  <37.412590, 31.576145, 45.445560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945389, 31.938025, 45.996922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757027, 31.591875, 45.928360>,  <36.644009, 31.384186, 45.887222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757027, 31.591875, 45.928360>,  <36.945389, 31.938025, 45.996922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757027, 31.591875, 45.928360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111963, -0.134101, 0.984622,
		-0.875050, 0.482855, -0.033740,
		-0.470905, -0.865371, -0.171407,
		36.615757, 31.332264, 45.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364372, 31.913502, 46.506004>,  <36.945389, 31.938025, 45.996922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364372, 31.913502, 46.506004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400146, 31.526672, 46.410702>,  <36.421612, 31.294575, 46.353519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400146, 31.526672, 46.410702>,  <36.364372, 31.913502, 46.506004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400146, 31.526672, 46.410702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065511, -0.244409, 0.967457,
		-0.993835, -0.070921, -0.085214,
		0.089440, -0.967075, -0.238256,
		36.426979, 31.236549, 46.339226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875011, 31.520441, 46.866199>,  <36.364372, 31.913502, 46.506004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875011, 31.520441, 46.866199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156204, 31.247009, 46.787682>,  <36.324921, 31.082951, 46.740570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156204, 31.247009, 46.787682>,  <35.875011, 31.520441, 46.866199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156204, 31.247009, 46.787682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097384, -0.365920, 0.925537,
		-0.704507, -0.631521, -0.323806,
		0.702983, -0.683581, -0.196293,
		36.367100, 31.041935, 46.728794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540413, 30.873081, 47.094799>,  <35.875011, 31.520441, 46.866199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540413, 30.873081, 47.094799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936577, 30.817905, 47.091637>,  <36.174274, 30.784800, 47.089741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936577, 30.817905, 47.091637>,  <35.540413, 30.873081, 47.094799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936577, 30.817905, 47.091637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062939, -0.501358, 0.862948,
		-0.122998, -0.854174, -0.505231,
		0.990409, -0.137940, -0.007905,
		36.233700, 30.776524, 47.089264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667259, 30.182165, 47.314404>,  <35.540413, 30.873081, 47.094799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667259, 30.182165, 47.314404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025635, 30.346407, 47.382164>,  <36.240662, 30.444952, 47.422821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025635, 30.346407, 47.382164>,  <35.667259, 30.182165, 47.314404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025635, 30.346407, 47.382164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029237, -0.326037, 0.944905,
		0.443213, -0.851530, -0.280104,
		0.895939, 0.410605, 0.169400,
		36.294418, 30.469589, 47.432983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034691, 29.613810, 47.576641>,  <35.667259, 30.182165, 47.314404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034691, 29.613810, 47.576641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222137, 29.951145, 47.681847>,  <36.334606, 30.153547, 47.744972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222137, 29.951145, 47.681847>,  <36.034691, 29.613810, 47.576641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222137, 29.951145, 47.681847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159684, -0.373695, 0.913703,
		0.868850, -0.386176, -0.309787,
		0.468616, 0.843339, 0.263018,
		36.362720, 30.204147, 47.760754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726074, 29.499941, 47.821461>,  <36.034691, 29.613810, 47.576641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726074, 29.499941, 47.821461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608437, 29.836893, 48.002083>,  <36.537853, 30.039064, 48.110455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608437, 29.836893, 48.002083>,  <36.726074, 29.499941, 47.821461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608437, 29.836893, 48.002083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184270, -0.413614, 0.891610,
		0.937847, 0.345421, -0.033586,
		-0.294090, 0.842382, 0.451557,
		36.520210, 30.089607, 48.137550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297020, 29.607443, 48.352749>,  <36.726074, 29.499941, 47.821461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297020, 29.607443, 48.352749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004593, 29.854784, 48.468113>,  <36.829136, 30.003189, 48.537331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004593, 29.854784, 48.468113>,  <37.297020, 29.607443, 48.352749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004593, 29.854784, 48.468113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171514, -0.242578, 0.954850,
		0.660397, 0.747526, 0.071285,
		-0.731067, 0.618354, 0.288409,
		36.785275, 30.040291, 48.554634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542381, 30.001820, 49.007362>,  <37.297020, 29.607443, 48.352749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542381, 30.001820, 49.007362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142467, 30.001991, 48.998985>,  <36.902519, 30.002094, 48.993961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142467, 30.001991, 48.998985>,  <37.542381, 30.001820, 49.007362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142467, 30.001991, 48.998985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020671, -0.181388, 0.983194,
		-0.003374, 0.983411, 0.181357,
		-0.999781, 0.000431, -0.020940,
		36.842533, 30.002121, 48.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371399, 30.271505, 49.696190>,  <37.542381, 30.001820, 49.007362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371399, 30.271505, 49.696190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012779, 30.147333, 49.569809>,  <36.797607, 30.072830, 49.493980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012779, 30.147333, 49.569809>,  <37.371399, 30.271505, 49.696190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012779, 30.147333, 49.569809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247299, -0.240972, 0.938497,
		-0.367472, 0.919547, 0.139276,
		-0.896553, -0.310428, -0.315953,
		36.743813, 30.054205, 49.475021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881180, 30.501499, 50.106255>,  <37.371399, 30.271505, 49.696190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881180, 30.501499, 50.106255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705894, 30.175293, 49.955040>,  <36.600723, 29.979570, 49.864311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705894, 30.175293, 49.955040>,  <36.881180, 30.501499, 50.106255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705894, 30.175293, 49.955040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454825, -0.161581, 0.875800,
		-0.775310, 0.555723, -0.300109,
		-0.438210, -0.815514, -0.378032,
		36.574432, 29.930639, 49.841629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167160, 30.579590, 50.312092>,  <36.881180, 30.501499, 50.106255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167160, 30.579590, 50.312092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254818, 30.196608, 50.236984>,  <36.307411, 29.966818, 50.191921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254818, 30.196608, 50.236984>,  <36.167160, 30.579590, 50.312092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254818, 30.196608, 50.236984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416072, -0.265776, 0.869625,
		-0.882530, -0.112447, -0.456613,
		0.219144, -0.957454, -0.187769,
		36.320560, 29.909370, 50.180653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631302, 30.308155, 50.617638>,  <36.167160, 30.579590, 50.312092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631302, 30.308155, 50.617638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850250, 29.979414, 50.554466>,  <35.981621, 29.782169, 50.516563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850250, 29.979414, 50.554466>,  <35.631302, 30.308155, 50.617638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850250, 29.979414, 50.554466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475099, -0.460508, 0.749809,
		-0.688958, -0.335395, -0.642531,
		0.547373, -0.821853, -0.157925,
		36.014462, 29.732859, 50.507088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806576, 30.663074, 51.250507>,  <35.631302, 30.308155, 50.617638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806576, 30.663074, 51.250507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707161, 30.982775, 51.469387>,  <35.647511, 31.174595, 51.600716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707161, 30.982775, 51.469387>,  <35.806576, 30.663074, 51.250507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707161, 30.982775, 51.469387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120529, 0.586051, -0.801260,
		-0.961094, -0.133191, -0.241990,
		-0.248539, 0.799252, 0.547197,
		35.632599, 31.222551, 51.633545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229679, 30.984341, 50.945194>,  <35.806576, 30.663074, 51.250507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229679, 30.984341, 50.945194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442474, 31.265600, 51.133904>,  <35.570152, 31.434355, 51.247131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442474, 31.265600, 51.133904>,  <35.229679, 30.984341, 50.945194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442474, 31.265600, 51.133904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122909, 0.487136, -0.864634,
		-0.837785, 0.517960, 0.172727,
		0.531987, 0.703147, 0.471777,
		35.602070, 31.476545, 51.275436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930084, 31.551941, 50.677746>,  <35.229679, 30.984341, 50.945194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930084, 31.551941, 50.677746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275311, 31.670610, 50.841259>,  <35.482445, 31.741812, 50.939365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275311, 31.670610, 50.841259>,  <34.930084, 31.551941, 50.677746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275311, 31.670610, 50.841259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246296, 0.459387, -0.853406,
		-0.440971, 0.837227, 0.323412,
		0.863066, 0.296673, 0.408782,
		35.534229, 31.759613, 50.963894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119228, 32.142086, 50.302082>,  <34.930084, 31.551941, 50.677746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119228, 32.142086, 50.302082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466473, 32.057312, 50.481621>,  <35.674820, 32.006447, 50.589344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466473, 32.057312, 50.481621>,  <35.119228, 32.142086, 50.302082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466473, 32.057312, 50.481621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495245, 0.430616, -0.754521,
		-0.033370, 0.877298, 0.478784,
		0.868112, -0.211937, 0.448847,
		35.726906, 31.993731, 50.616276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455784, 32.776222, 50.299301>,  <35.119228, 32.142086, 50.302082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455784, 32.776222, 50.299301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746967, 32.502968, 50.322655>,  <35.921677, 32.339016, 50.336666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746967, 32.502968, 50.322655>,  <35.455784, 32.776222, 50.299301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746967, 32.502968, 50.322655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563939, 0.548152, -0.617659,
		0.389940, 0.482553, 0.784276,
		0.727956, -0.683134, 0.058384,
		35.965355, 32.298027, 50.340172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103676, 33.188320, 50.361591>,  <35.455784, 32.776222, 50.299301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103676, 33.188320, 50.361591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.212650, 32.827023, 50.228966>,  <36.278034, 32.610245, 50.149391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.212650, 32.827023, 50.228966>,  <36.103676, 33.188320, 50.361591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212650, 32.827023, 50.228966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607824, 0.428694, -0.668410,
		0.745876, -0.019437, 0.665802,
		0.272433, -0.903241, -0.331567,
		36.294380, 32.556049, 50.129498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736584, 33.355682, 50.188362>,  <36.103676, 33.188320, 50.361591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736584, 33.355682, 50.188362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644585, 33.006588, 50.016113>,  <36.589386, 32.797131, 49.912766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644585, 33.006588, 50.016113>,  <36.736584, 33.355682, 50.188362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644585, 33.006588, 50.016113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323141, 0.348895, -0.879689,
		0.917977, -0.341476, 0.201772,
		-0.229996, -0.872735, -0.430622,
		36.575584, 32.744766, 49.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356373, 33.208992, 49.893337>,  <36.736584, 33.355682, 50.188362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356373, 33.208992, 49.893337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053394, 33.031761, 49.701523>,  <36.871605, 32.925423, 49.586433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053394, 33.031761, 49.701523>,  <37.356373, 33.208992, 49.893337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053394, 33.031761, 49.701523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259220, 0.470016, -0.843735,
		0.599230, -0.763391, -0.241158,
		-0.757449, -0.443078, -0.479535,
		36.826160, 32.898838, 49.557663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644749, 33.022881, 49.253094>,  <37.356373, 33.208992, 49.893337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644749, 33.022881, 49.253094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251030, 32.997684, 49.187134>,  <37.014797, 32.982567, 49.147556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.251030, 32.997684, 49.187134>,  <37.644749, 33.022881, 49.253094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251030, 32.997684, 49.187134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126071, 0.403027, -0.906463,
		0.123554, -0.913018, -0.388758,
		-0.984297, -0.062986, -0.164901,
		36.955742, 32.978790, 49.137665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567726, 32.679127, 48.621628>,  <37.644749, 33.022881, 49.253094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567726, 32.679127, 48.621628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215454, 32.867538, 48.641788>,  <37.004093, 32.980587, 48.653885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215454, 32.867538, 48.641788>,  <37.567726, 32.679127, 48.621628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215454, 32.867538, 48.641788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032037, 0.165383, -0.985709,
		-0.472634, -0.866476, -0.160739,
		-0.880676, 0.471030, 0.050406,
		36.951252, 33.008846, 48.656910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362179, 32.454884, 48.031994>,  <37.567726, 32.679127, 48.621628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362179, 32.454884, 48.031994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102974, 32.740200, 48.138802>,  <36.947453, 32.911388, 48.202885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102974, 32.740200, 48.138802>,  <37.362179, 32.454884, 48.031994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102974, 32.740200, 48.138802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034879, 0.378015, -0.925142,
		-0.760832, -0.590188, -0.269837,
		-0.648011, 0.713290, 0.267021,
		36.908569, 32.954185, 48.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779217, 32.311829, 47.699879>,  <37.362179, 32.454884, 48.031994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779217, 32.311829, 47.699879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803074, 32.698143, 47.800835>,  <36.817387, 32.929932, 47.861408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803074, 32.698143, 47.800835>,  <36.779217, 32.311829, 47.699879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803074, 32.698143, 47.800835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060191, 0.255855, -0.964840,
		-0.996404, 0.042352, 0.073391,
		0.059640, 0.965787, 0.252385,
		36.820965, 32.987881, 47.876549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356796, 32.678493, 47.173592>,  <36.779217, 32.311829, 47.699879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356796, 32.678493, 47.173592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583344, 32.960503, 47.344315>,  <36.719273, 33.129707, 47.446747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583344, 32.960503, 47.344315>,  <36.356796, 32.678493, 47.173592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583344, 32.960503, 47.344315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017359, 0.507553, -0.861446,
		-0.823968, 0.495307, 0.275224,
		0.566371, 0.705026, 0.426806,
		36.753254, 33.172009, 47.472355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999344, 33.355976, 47.053787>,  <36.356796, 32.678493, 47.173592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999344, 33.355976, 47.053787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396133, 33.388783, 47.092270>,  <36.634209, 33.408466, 47.115360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396133, 33.388783, 47.092270>,  <35.999344, 33.355976, 47.053787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396133, 33.388783, 47.092270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056537, 0.392843, -0.917866,
		-0.113074, 0.915941, 0.385054,
		0.991977, 0.082017, 0.096205,
		36.693726, 33.413387, 47.121132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690716, 34.037289, 47.091125>,  <35.999344, 33.355976, 47.053787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690716, 34.037289, 47.091125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301029, 34.046677, 47.001366>,  <35.067219, 34.052311, 46.947510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301029, 34.046677, 47.001366>,  <35.690716, 34.037289, 47.091125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301029, 34.046677, 47.001366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219618, -0.326614, 0.919288,
		-0.051716, 0.944866, 0.323346,
		-0.974214, 0.023471, -0.224401,
		35.008766, 34.053719, 46.934044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409267, 34.093086, 47.686802>,  <35.690716, 34.037289, 47.091125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409267, 34.093086, 47.686802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093025, 33.963882, 47.478725>,  <34.903278, 33.886360, 47.353878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093025, 33.963882, 47.478725>,  <35.409267, 34.093086, 47.686802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093025, 33.963882, 47.478725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388180, -0.392617, 0.833768,
		-0.473554, 0.861112, 0.185019,
		-0.790609, -0.323014, -0.520192,
		34.855843, 33.866978, 47.322666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748703, 34.394093, 47.869377>,  <35.409267, 34.093086, 47.686802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748703, 34.394093, 47.869377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674797, 34.032967, 47.714054>,  <34.630455, 33.816292, 47.620861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674797, 34.032967, 47.714054>,  <34.748703, 34.394093, 47.869377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674797, 34.032967, 47.714054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409493, -0.288461, 0.865509,
		-0.893408, 0.318927, -0.316399,
		-0.184766, -0.902816, -0.388311,
		34.619366, 33.762123, 47.597561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026215, 34.280212, 47.981537>,  <34.748703, 34.394093, 47.869377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026215, 34.280212, 47.981537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187649, 33.919964, 47.917038>,  <34.284508, 33.703815, 47.878338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187649, 33.919964, 47.917038>,  <34.026215, 34.280212, 47.981537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187649, 33.919964, 47.917038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505997, -0.366538, 0.780780,
		-0.762292, -0.233515, -0.603640,
		0.403581, -0.900622, -0.161251,
		34.308723, 33.649776, 47.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492245, 33.914055, 48.114178>,  <34.026215, 34.280212, 47.981537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492245, 33.914055, 48.114178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784870, 33.642017, 48.133312>,  <33.960445, 33.478794, 48.144794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784870, 33.642017, 48.133312>,  <33.492245, 33.914055, 48.114178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784870, 33.642017, 48.133312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530687, -0.523990, 0.666188,
		-0.428005, -0.512744, -0.744248,
		0.731562, -0.680095, 0.047837,
		34.004337, 33.437988, 48.147663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182640, 33.198135, 48.030537>,  <33.492245, 33.914055, 48.114178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182640, 33.198135, 48.030537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524120, 33.132332, 48.228176>,  <33.729008, 33.092850, 48.346760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524120, 33.132332, 48.228176>,  <33.182640, 33.198135, 48.030537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524120, 33.132332, 48.228176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478037, -0.623939, 0.618208,
		0.206586, -0.763961, -0.611298,
		0.853699, -0.164510, 0.494099,
		33.780231, 33.082977, 48.376408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023895, 32.633247, 48.360798>,  <33.182640, 33.198135, 48.030537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023895, 32.633247, 48.360798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345810, 32.767593, 48.556557>,  <33.538960, 32.848202, 48.674011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345810, 32.767593, 48.556557>,  <33.023895, 32.633247, 48.360798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345810, 32.767593, 48.556557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348246, -0.400518, 0.847532,
		0.480669, -0.852515, -0.205369,
		0.804787, 0.335863, 0.489401,
		33.587246, 32.868351, 48.703377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858753, 32.218956, 47.747116>,  <33.023895, 32.633247, 48.360798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858753, 32.218956, 47.747116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659462, 31.891096, 47.634022>,  <32.539886, 31.694380, 47.566166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659462, 31.891096, 47.634022>,  <32.858753, 32.218956, 47.747116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659462, 31.891096, 47.634022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193450, 0.422960, -0.885258,
		0.845190, -0.386364, -0.369292,
		-0.498228, -0.819651, -0.282739,
		32.509995, 31.645201, 47.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173809, 31.883753, 47.127598>,  <32.858753, 32.218956, 47.747116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173809, 31.883753, 47.127598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792629, 31.763111, 47.115482>,  <32.563919, 31.690727, 47.108212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792629, 31.763111, 47.115482>,  <33.173809, 31.883753, 47.127598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792629, 31.763111, 47.115482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073162, 0.325829, -0.942594,
		0.294161, -0.896030, -0.332565,
		-0.952952, -0.301605, -0.030291,
		32.506744, 31.672630, 47.106396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165405, 31.496161, 46.595692>,  <33.173809, 31.883753, 47.127598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165405, 31.496161, 46.595692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790112, 31.620455, 46.656570>,  <32.564938, 31.695032, 46.693096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790112, 31.620455, 46.656570>,  <33.165405, 31.496161, 46.595692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790112, 31.620455, 46.656570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059052, 0.289608, -0.955322,
		-0.340931, -0.905301, -0.253370,
		-0.938232, 0.310737, 0.152196,
		32.508640, 31.713676, 46.702229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855450, 31.154984, 46.173630>,  <33.165405, 31.496161, 46.595692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855450, 31.154984, 46.173630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573826, 31.430470, 46.242874>,  <32.404850, 31.595760, 46.284420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573826, 31.430470, 46.242874>,  <32.855450, 31.154984, 46.173630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573826, 31.430470, 46.242874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213361, 0.027358, -0.976590,
		-0.677327, -0.724517, 0.127683,
		-0.704063, 0.688714, 0.173115,
		32.362606, 31.637083, 46.294807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191143, 31.024651, 45.769928>,  <32.855450, 31.154984, 46.173630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191143, 31.024651, 45.769928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206749, 31.415030, 45.855724>,  <32.216114, 31.649256, 45.907204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206749, 31.415030, 45.855724>,  <32.191143, 31.024651, 45.769928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206749, 31.415030, 45.855724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173707, 0.218015, -0.960362,
		-0.984024, 0.000211, 0.178035,
		0.039017, 0.975945, 0.214495,
		32.218452, 31.707813, 45.920074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689520, 31.392281, 45.371181>,  <32.191143, 31.024651, 45.769928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689520, 31.392281, 45.371181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941887, 31.684301, 45.476223>,  <32.093307, 31.859514, 45.539249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941887, 31.684301, 45.476223>,  <31.689520, 31.392281, 45.371181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941887, 31.684301, 45.476223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067862, 0.389108, -0.918689,
		-0.772875, 0.561797, 0.295039,
		0.630919, 0.730054, 0.262607,
		32.131161, 31.903318, 45.555004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512415, 31.916456, 44.847019>,  <31.689520, 31.392281, 45.371181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512415, 31.916456, 44.847019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862253, 32.009758, 45.017044>,  <32.072155, 32.065739, 45.119061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862253, 32.009758, 45.017044>,  <31.512415, 31.916456, 44.847019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862253, 32.009758, 45.017044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317396, 0.387299, -0.865598,
		-0.366529, 0.891960, 0.264696,
		0.874595, 0.233254, 0.425061,
		32.124630, 32.079735, 45.144562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.206211, 26.988050, 47.951355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283627, 27.324541, 48.153297>,  <35.330078, 27.526436, 48.274464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283627, 27.324541, 48.153297>,  <35.206211, 26.988050, 47.951355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283627, 27.324541, 48.153297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073294, 0.500753, -0.862481,
		-0.978350, 0.203930, 0.035260,
		0.193542, 0.841224, 0.504859,
		35.341690, 27.576908, 48.304756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882248, 27.553482, 47.714828>,  <35.206211, 26.988050, 47.951355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882248, 27.553482, 47.714828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221928, 27.683064, 47.881641>,  <35.425735, 27.760813, 47.981728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221928, 27.683064, 47.881641>,  <34.882248, 27.553482, 47.714828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221928, 27.683064, 47.881641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239463, 0.467625, -0.850873,
		-0.470657, 0.822424, 0.319532,
		0.849199, 0.323953, 0.417031,
		35.476688, 27.780249, 48.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908985, 28.245512, 47.555706>,  <34.882248, 27.553482, 47.714828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908985, 28.245512, 47.555706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287693, 28.144402, 47.635441>,  <35.514915, 28.083735, 47.683281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287693, 28.144402, 47.635441>,  <34.908985, 28.245512, 47.555706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287693, 28.144402, 47.635441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281857, 0.351751, -0.892652,
		0.155525, 0.901319, 0.404273,
		0.946768, -0.252777, 0.199337,
		35.571724, 28.068569, 47.695240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305962, 28.728367, 47.363144>,  <34.908985, 28.245512, 47.555706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305962, 28.728367, 47.363144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593750, 28.450705, 47.372234>,  <35.766422, 28.284107, 47.377689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593750, 28.450705, 47.372234>,  <35.305962, 28.728367, 47.363144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593750, 28.450705, 47.372234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217843, 0.194469, -0.956413,
		0.659477, 0.693061, 0.291130,
		0.719468, -0.694153, 0.022730,
		35.809589, 28.242458, 47.379055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783092, 29.033934, 46.892628>,  <35.305962, 28.728367, 47.363144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783092, 29.033934, 46.892628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868130, 28.644051, 46.920189>,  <35.919151, 28.410120, 46.936726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.868130, 28.644051, 46.920189>,  <35.783092, 29.033934, 46.892628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868130, 28.644051, 46.920189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021729, -0.065785, -0.997597,
		0.976900, 0.213577, 0.007194,
		0.212591, -0.974709, 0.068906,
		35.931908, 28.351639, 46.940861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307266, 28.871336, 46.416191>,  <35.783092, 29.033934, 46.892628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307266, 28.871336, 46.416191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121662, 28.523401, 46.483219>,  <36.010300, 28.314640, 46.523434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121662, 28.523401, 46.483219>,  <36.307266, 28.871336, 46.416191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121662, 28.523401, 46.483219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091973, -0.140834, -0.985752,
		0.881042, -0.472810, -0.014653,
		-0.464010, -0.869837, 0.167566,
		35.982460, 28.262451, 46.533489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773861, 28.386234, 46.085091>,  <36.307266, 28.871336, 46.416191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773861, 28.386234, 46.085091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420383, 28.211479, 46.152283>,  <36.208298, 28.106627, 46.192596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420383, 28.211479, 46.152283>,  <36.773861, 28.386234, 46.085091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420383, 28.211479, 46.152283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118989, -0.137410, -0.983341,
		0.452692, -0.888959, 0.069444,
		-0.883692, -0.436888, 0.167981,
		36.155277, 28.080412, 46.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779510, 27.807426, 45.687328>,  <36.773861, 28.386234, 46.085091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779510, 27.807426, 45.687328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401558, 27.911955, 45.766232>,  <36.174786, 27.974672, 45.813576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.401558, 27.911955, 45.766232>,  <36.779510, 27.807426, 45.687328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401558, 27.911955, 45.766232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233321, -0.114732, -0.965608,
		-0.229703, -0.958409, 0.169380,
		-0.944880, 0.261323, 0.197262,
		36.118095, 27.990351, 45.825409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534008, 27.395676, 45.230282>,  <36.779510, 27.807426, 45.687328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534008, 27.395676, 45.230282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243107, 27.646725, 45.341419>,  <36.068565, 27.797354, 45.408100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243107, 27.646725, 45.341419>,  <36.534008, 27.395676, 45.230282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243107, 27.646725, 45.341419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242694, 0.143512, -0.959429,
		-0.642035, -0.765174, 0.047952,
		-0.727248, 0.627625, 0.277843,
		36.024933, 27.835012, 45.424770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820896, 27.189045, 44.900291>,  <36.534008, 27.395676, 45.230282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820896, 27.189045, 44.900291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776329, 27.576225, 44.990322>,  <35.749588, 27.808533, 45.044342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776329, 27.576225, 44.990322>,  <35.820896, 27.189045, 44.900291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776329, 27.576225, 44.990322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251899, 0.191583, -0.948600,
		-0.961318, -0.162389, 0.222479,
		-0.111419, 0.967949, 0.225078,
		35.742905, 27.866610, 45.057846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245670, 27.414194, 44.512680>,  <35.820896, 27.189045, 44.900291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245670, 27.414194, 44.512680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.440289, 27.746500, 44.620827>,  <35.557060, 27.945885, 44.685715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.440289, 27.746500, 44.620827>,  <35.245670, 27.414194, 44.512680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440289, 27.746500, 44.620827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214592, 0.413631, -0.884794,
		-0.846890, 0.372475, 0.379526,
		0.486548, 0.830766, 0.270370,
		35.586254, 27.995729, 44.701939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747456, 27.916801, 44.198154>,  <35.245670, 27.414194, 44.512680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747456, 27.916801, 44.198154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097584, 28.105915, 44.238735>,  <35.307659, 28.219383, 44.263084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097584, 28.105915, 44.238735>,  <34.747456, 27.916801, 44.198154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097584, 28.105915, 44.238735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074378, 0.338957, -0.937857,
		-0.477790, 0.813379, 0.331861,
		0.875320, 0.472782, 0.101453,
		35.360180, 28.247749, 44.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098831, 27.885723, 44.372665>,  <34.747456, 27.916801, 44.198154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098831, 27.885723, 44.372665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798004, 28.118771, 44.249409>,  <33.617508, 28.258598, 44.175453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.798004, 28.118771, 44.249409>,  <34.098831, 27.885723, 44.372665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798004, 28.118771, 44.249409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344186, 0.051538, 0.937486,
		0.562077, 0.811111, 0.161768,
		-0.752068, 0.582617, -0.308141,
		33.572384, 28.293556, 44.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078869, 28.549828, 44.770435>,  <34.098831, 27.885723, 44.372665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078869, 28.549828, 44.770435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710129, 28.460340, 44.643848>,  <33.488884, 28.406649, 44.567898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710129, 28.460340, 44.643848>,  <34.078869, 28.549828, 44.770435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710129, 28.460340, 44.643848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354653, 0.157702, 0.921602,
		-0.156271, 0.961811, -0.224719,
		-0.921846, -0.223717, -0.316465,
		33.433575, 28.393225, 44.548908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606041, 29.081532, 44.993179>,  <34.078869, 28.549828, 44.770435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606041, 29.081532, 44.993179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.383923, 28.759331, 44.910412>,  <33.250652, 28.566010, 44.860752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.383923, 28.759331, 44.910412>,  <33.606041, 29.081532, 44.993179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383923, 28.759331, 44.910412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549211, 0.168346, 0.818552,
		-0.624511, 0.568179, -0.535872,
		-0.555296, -0.805501, -0.206916,
		33.217335, 28.517681, 44.848335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799355, 29.291691, 45.036152>,  <33.606041, 29.081532, 44.993179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799355, 29.291691, 45.036152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855518, 28.901342, 45.103031>,  <32.889217, 28.667133, 45.143158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.855518, 28.901342, 45.103031>,  <32.799355, 29.291691, 45.036152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855518, 28.901342, 45.103031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420389, 0.094136, 0.902447,
		-0.896414, -0.197001, -0.397029,
		0.140408, -0.975874, 0.167202,
		32.897640, 28.608580, 45.153191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166321, 29.033133, 45.363548>,  <32.799355, 29.291691, 45.036152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166321, 29.033133, 45.363548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461979, 28.773321, 45.434841>,  <32.639374, 28.617434, 45.477619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461979, 28.773321, 45.434841>,  <32.166321, 29.033133, 45.363548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461979, 28.773321, 45.434841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149929, 0.099318, 0.983696,
		-0.656643, -0.753821, -0.023973,
		0.739149, -0.649531, 0.178235,
		32.683723, 28.578463, 45.488312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865864, 28.527229, 45.848221>,  <32.166321, 29.033133, 45.363548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865864, 28.527229, 45.848221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.263176, 28.500948, 45.886322>,  <32.501564, 28.485180, 45.909184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.263176, 28.500948, 45.886322>,  <31.865864, 28.527229, 45.848221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263176, 28.500948, 45.886322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099765, -0.069194, 0.992602,
		-0.058598, -0.995439, -0.075281,
		0.993284, -0.065675, 0.095255,
		32.561161, 28.481237, 45.914898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971838, 27.958746, 46.310020>,  <31.865864, 28.527229, 45.848221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971838, 27.958746, 46.310020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.330780, 28.134462, 46.326881>,  <32.546146, 28.239893, 46.336998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.330780, 28.134462, 46.326881>,  <31.971838, 27.958746, 46.310020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330780, 28.134462, 46.326881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089959, -0.275593, 0.957056,
		0.432043, -0.855027, -0.286823,
		0.897355, 0.439291, 0.042151,
		32.599987, 28.266249, 46.339527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397556, 27.445379, 46.683472>,  <31.971838, 27.958746, 46.310020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397556, 27.445379, 46.683472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553822, 27.812840, 46.707008>,  <32.647579, 28.033316, 46.721130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.553822, 27.812840, 46.707008>,  <32.397556, 27.445379, 46.683472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553822, 27.812840, 46.707008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010917, -0.059295, 0.998181,
		0.920470, -0.390592, -0.013135,
		0.390660, 0.918653, 0.058843,
		32.671021, 28.088436, 46.724663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049492, 27.398373, 47.125130>,  <32.397556, 27.445379, 46.683472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049492, 27.398373, 47.125130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.946690, 27.784756, 47.113270>,  <32.885010, 28.016584, 47.106155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.946690, 27.784756, 47.113270>,  <33.049492, 27.398373, 47.125130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946690, 27.784756, 47.113270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108158, 0.059238, 0.992367,
		0.960340, 0.251833, -0.119701,
		-0.257002, 0.965956, -0.029650,
		32.869591, 28.074543, 47.104374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529354, 27.659876, 47.479492>,  <33.049492, 27.398373, 47.125130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529354, 27.659876, 47.479492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.209625, 27.899672, 47.495934>,  <33.017788, 28.043549, 47.505798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.209625, 27.899672, 47.495934>,  <33.529354, 27.659876, 47.479492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209625, 27.899672, 47.495934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138744, 0.117567, 0.983325,
		0.584661, 0.791700, -0.177149,
		-0.799326, 0.599490, 0.041107,
		32.969826, 28.079519, 47.508266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684868, 28.291288, 47.975956>,  <33.529354, 27.659876, 47.479492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684868, 28.291288, 47.975956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285202, 28.307402, 47.973434>,  <33.045403, 28.317070, 47.971920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.285202, 28.307402, 47.973434>,  <33.684868, 28.291288, 47.975956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285202, 28.307402, 47.973434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007052, -0.018407, 0.999806,
		0.040159, 0.999019, 0.018676,
		-0.999168, 0.040283, -0.006306,
		32.985451, 28.319487, 47.971542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519039, 28.911749, 48.325901>,  <33.684868, 28.291288, 47.975956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519039, 28.911749, 48.325901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186825, 28.689608, 48.342854>,  <32.987495, 28.556322, 48.353024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186825, 28.689608, 48.342854>,  <33.519039, 28.911749, 48.325901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186825, 28.689608, 48.342854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018701, 0.103854, 0.994417,
		-0.556656, 0.825103, -0.096640,
		-0.830532, -0.555355, 0.042381,
		32.937664, 28.523001, 48.355568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901428, 29.356197, 48.692402>,  <33.519039, 28.911749, 48.325901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901428, 29.356197, 48.692402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835999, 28.962883, 48.724369>,  <32.796741, 28.726894, 48.743549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.835999, 28.962883, 48.724369>,  <32.901428, 29.356197, 48.692402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835999, 28.962883, 48.724369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242904, 0.118662, 0.962765,
		-0.956159, 0.138073, -0.258255,
		-0.163576, -0.983288, 0.079921,
		32.786926, 28.667896, 48.748344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154335, 29.101498, 48.801800>,  <32.901428, 29.356197, 48.692402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154335, 29.101498, 48.801800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.413658, 28.869900, 48.999573>,  <32.569252, 28.730942, 49.118237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.413658, 28.869900, 48.999573>,  <32.154335, 29.101498, 48.801800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413658, 28.869900, 48.999573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289215, 0.413446, 0.863376,
		-0.704311, -0.702729, 0.100586,
		0.648306, -0.578994, 0.494434,
		32.608150, 28.696201, 49.147903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764286, 29.282389, 49.527718>,  <32.154335, 29.101498, 48.801800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764286, 29.282389, 49.527718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.697876, 29.664267, 49.626507>,  <31.658030, 29.893393, 49.685780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.697876, 29.664267, 49.626507>,  <31.764286, 29.282389, 49.527718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697876, 29.664267, 49.626507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399389, 0.294088, -0.868332,
		-0.901623, -0.045526, -0.430119,
		-0.166025, 0.954693, 0.246974,
		31.648069, 29.950674, 49.700600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448118, 29.570747, 48.932339>,  <31.764286, 29.282389, 49.527718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448118, 29.570747, 48.932339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567589, 29.890764, 49.140465>,  <31.639271, 30.082775, 49.265339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567589, 29.890764, 49.140465>,  <31.448118, 29.570747, 48.932339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567589, 29.890764, 49.140465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298479, 0.439542, -0.847180,
		-0.906479, 0.408334, -0.107516,
		0.298675, 0.800041, 0.520315,
		31.657190, 30.130777, 49.296558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106342, 30.102701, 48.607792>,  <31.448118, 29.570747, 48.932339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106342, 30.102701, 48.607792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403406, 30.261251, 48.823696>,  <31.581644, 30.356382, 48.953239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.403406, 30.261251, 48.823696>,  <31.106342, 30.102701, 48.607792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403406, 30.261251, 48.823696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233779, 0.601850, -0.763625,
		-0.627540, 0.693298, 0.354304,
		0.742658, 0.396377, 0.539764,
		31.626204, 30.380165, 48.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004709, 30.923588, 48.642303>,  <31.106342, 30.102701, 48.607792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004709, 30.923588, 48.642303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385450, 30.850237, 48.740566>,  <31.613895, 30.806227, 48.799526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385450, 30.850237, 48.740566>,  <31.004709, 30.923588, 48.642303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385450, 30.850237, 48.740566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306454, 0.589870, -0.747087,
		-0.007907, 0.786400, 0.617667,
		0.951853, -0.183380, 0.245660,
		31.671005, 30.795223, 48.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359085, 31.569895, 48.645741>,  <31.004709, 30.923588, 48.642303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359085, 31.569895, 48.645741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.654396, 31.305643, 48.591312>,  <31.831583, 31.147093, 48.558655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.654396, 31.305643, 48.591312>,  <31.359085, 31.569895, 48.645741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654396, 31.305643, 48.591312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359435, 0.556042, -0.749415,
		0.570746, 0.504369, 0.647967,
		0.738279, -0.660628, -0.136071,
		31.875879, 31.107454, 48.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916077, 31.987537, 48.516979>,  <31.359085, 31.569895, 48.645741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916077, 31.987537, 48.516979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046253, 31.626732, 48.403519>,  <32.124359, 31.410250, 48.335442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046253, 31.626732, 48.403519>,  <31.916077, 31.987537, 48.516979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046253, 31.626732, 48.403519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306751, 0.384476, -0.870679,
		0.894422, 0.196345, 0.401818,
		0.325443, -0.902013, -0.283655,
		32.143887, 31.356129, 48.318420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588840, 32.001621, 48.406456>,  <31.916077, 31.987537, 48.516979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588840, 32.001621, 48.406456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436035, 31.721666, 48.165054>,  <32.344353, 31.553692, 48.020214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436035, 31.721666, 48.165054>,  <32.588840, 32.001621, 48.406456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436035, 31.721666, 48.165054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195760, 0.576931, -0.792987,
		0.903186, -0.421073, -0.083384,
		-0.382012, -0.699892, -0.603505,
		32.321430, 31.511700, 47.984001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287533, 31.893581, 48.750134>,  <32.588840, 32.001621, 48.406456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287533, 31.893581, 48.750134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454544, 32.214142, 48.921448>,  <33.554749, 32.406479, 49.024235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454544, 32.214142, 48.921448>,  <33.287533, 31.893581, 48.750134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454544, 32.214142, 48.921448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115345, -0.420774, 0.899802,
		0.901315, -0.425090, -0.083245,
		0.417525, 0.801403, 0.428282,
		33.579800, 32.454563, 49.049931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630573, 31.616957, 49.332275>,  <33.287533, 31.893581, 48.750134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630573, 31.616957, 49.332275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589462, 32.009304, 49.398411>,  <33.564796, 32.244713, 49.438091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589462, 32.009304, 49.398411>,  <33.630573, 31.616957, 49.332275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589462, 32.009304, 49.398411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019354, -0.168159, 0.985570,
		0.994516, 0.098095, 0.036266,
		-0.102778, 0.980867, 0.165338,
		33.558628, 32.303566, 49.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927830, 31.690189, 49.947201>,  <33.630573, 31.616957, 49.332275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927830, 31.690189, 49.947201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.714569, 32.028149, 49.929752>,  <33.586613, 32.230923, 49.919281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.714569, 32.028149, 49.929752>,  <33.927830, 31.690189, 49.947201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714569, 32.028149, 49.929752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116916, -0.022512, 0.992887,
		0.837905, 0.534455, 0.110784,
		-0.533147, 0.844897, -0.043623,
		33.554626, 32.281616, 49.916664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207283, 32.100746, 50.437695>,  <33.927830, 31.690189, 49.947201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207283, 32.100746, 50.437695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833591, 32.224606, 50.366886>,  <33.609375, 32.298920, 50.324402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833591, 32.224606, 50.366886>,  <34.207283, 32.100746, 50.437695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833591, 32.224606, 50.366886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206438, -0.064700, 0.976318,
		0.290864, 0.948647, 0.124368,
		-0.934228, 0.309650, -0.177018,
		33.553322, 32.317501, 50.313782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104881, 32.585754, 50.983723>,  <34.207283, 32.100746, 50.437695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104881, 32.585754, 50.983723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749966, 32.466881, 50.842644>,  <33.537018, 32.395557, 50.757996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.749966, 32.466881, 50.842644>,  <34.104881, 32.585754, 50.983723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749966, 32.466881, 50.842644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321037, -0.151081, 0.934938,
		-0.331139, 0.942790, 0.038644,
		-0.887289, -0.297188, -0.352700,
		33.483780, 32.377724, 50.736835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636806, 32.976177, 51.388535>,  <34.104881, 32.585754, 50.983723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636806, 32.976177, 51.388535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441727, 32.662209, 51.235668>,  <33.324680, 32.473827, 51.143948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441727, 32.662209, 51.235668>,  <33.636806, 32.976177, 51.388535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441727, 32.662209, 51.235668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319526, -0.246894, 0.914848,
		-0.812437, 0.568282, -0.130393,
		-0.487698, -0.784920, -0.382167,
		33.295418, 32.426731, 51.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996414, 32.939999, 51.779308>,  <33.636806, 32.976177, 51.388535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996414, 32.939999, 51.779308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050343, 32.579567, 51.614441>,  <33.082699, 32.363308, 51.515518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050343, 32.579567, 51.614441>,  <32.996414, 32.939999, 51.779308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050343, 32.579567, 51.614441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174628, -0.431067, 0.885261,
		-0.975360, -0.047376, -0.215470,
		0.134822, -0.901075, -0.412172,
		33.090790, 32.309246, 51.490788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443436, 32.565975, 52.026497>,  <32.996414, 32.939999, 51.779308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443436, 32.565975, 52.026497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.691372, 32.281193, 51.894485>,  <32.840134, 32.110325, 51.815277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.691372, 32.281193, 51.894485>,  <32.443436, 32.565975, 52.026497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691372, 32.281193, 51.894485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179760, -0.538200, 0.823424,
		-0.763864, -0.451063, -0.461578,
		0.619837, -0.711957, -0.330028,
		32.877323, 32.067604, 51.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201363, 31.976917, 52.136517>,  <32.443436, 32.565975, 52.026497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201363, 31.976917, 52.136517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579830, 31.855345, 52.091984>,  <32.806911, 31.782402, 52.065266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.579830, 31.855345, 52.091984>,  <32.201363, 31.976917, 52.136517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579830, 31.855345, 52.091984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063919, -0.512621, 0.856232,
		-0.317303, -0.803023, -0.504453,
		0.946167, -0.303929, -0.111328,
		32.863682, 31.764166, 52.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.830994, 36.200500, 37.468494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221024, 36.165512, 37.550053>,  <37.455044, 36.144520, 37.598988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221024, 36.165512, 37.550053>,  <36.830994, 36.200500, 37.468494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221024, 36.165512, 37.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216164, -0.167616, 0.961862,
		-0.049954, -0.981965, -0.182345,
		0.975078, -0.087466, 0.203893,
		37.513546, 36.139271, 37.611221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022789, 35.622234, 37.882378>,  <36.830994, 36.200500, 37.468494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022789, 35.622234, 37.882378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 35.866543, 37.978245>,  <37.505772, 36.013126, 38.035767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 35.866543, 37.978245>,  <37.022789, 35.622234, 37.882378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324654, 35.866543, 37.978245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135289, -0.212583, 0.967732,
		0.642010, -0.762739, -0.077799,
		0.754666, 0.610768, 0.239671,
		37.551052, 36.049774, 38.050144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297520, 35.309383, 38.480213>,  <37.022789, 35.622234, 37.882378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297520, 35.309383, 38.480213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446651, 35.680531, 38.483185>,  <37.536133, 35.903217, 38.484966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446651, 35.680531, 38.483185>,  <37.297520, 35.309383, 38.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446651, 35.680531, 38.483185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138886, 0.047891, 0.989150,
		0.917445, -0.369819, 0.146723,
		0.372833, 0.927868, 0.007425,
		37.558502, 35.958893, 38.485413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680260, 35.335220, 39.132542>,  <37.297520, 35.309383, 38.480213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680260, 35.335220, 39.132542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566833, 35.702675, 39.022484>,  <37.498779, 35.923145, 38.956448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566833, 35.702675, 39.022484>,  <37.680260, 35.335220, 39.132542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566833, 35.702675, 39.022484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401329, 0.146907, 0.904076,
		0.870935, 0.366787, 0.327017,
		-0.283563, 0.918632, -0.275149,
		37.481766, 35.978264, 38.939938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801212, 35.760719, 39.715664>,  <37.680260, 35.335220, 39.132542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801212, 35.760719, 39.715664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531483, 35.949860, 39.488789>,  <37.369644, 36.063343, 39.352665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531483, 35.949860, 39.488789>,  <37.801212, 35.760719, 39.715664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531483, 35.949860, 39.488789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417023, 0.390027, 0.820957,
		0.609404, 0.790123, -0.065817,
		-0.674328, 0.472848, -0.567184,
		37.329185, 36.091713, 39.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831165, 36.408131, 40.030502>,  <37.801212, 35.760719, 39.715664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831165, 36.408131, 40.030502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482513, 36.363987, 39.839466>,  <37.273323, 36.337502, 39.724846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482513, 36.363987, 39.839466>,  <37.831165, 36.408131, 40.030502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482513, 36.363987, 39.839466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479116, 0.397588, 0.782542,
		0.103522, 0.910903, -0.399423,
		-0.871626, -0.110360, -0.477587,
		37.221027, 36.330879, 39.696190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531624, 36.956776, 40.261658>,  <37.831165, 36.408131, 40.030502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531624, 36.956776, 40.261658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231529, 36.735443, 40.116898>,  <37.051472, 36.602642, 40.030041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231529, 36.735443, 40.116898>,  <37.531624, 36.956776, 40.261658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231529, 36.735443, 40.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650976, 0.522433, 0.550722,
		-0.115665, 0.648758, -0.752153,
		-0.750235, -0.553333, -0.361899,
		37.006458, 36.569443, 40.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961700, 37.396702, 40.248989>,  <37.531624, 36.956776, 40.261658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961700, 37.396702, 40.248989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798714, 37.031414, 40.248024>,  <36.700920, 36.812241, 40.247444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798714, 37.031414, 40.248024>,  <36.961700, 37.396702, 40.248989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798714, 37.031414, 40.248024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581739, 0.257531, 0.771530,
		-0.703952, 0.315777, -0.636189,
		-0.407470, -0.913216, -0.002410,
		36.676472, 36.757450, 40.247299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326576, 37.537415, 40.473537>,  <36.961700, 37.396702, 40.248989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326576, 37.537415, 40.473537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351788, 37.138988, 40.498482>,  <36.366917, 36.899933, 40.513451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351788, 37.138988, 40.498482>,  <36.326576, 37.537415, 40.473537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351788, 37.138988, 40.498482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568675, 0.015506, 0.822416,
		-0.820144, -0.087304, -0.565457,
		0.063033, -0.996061, 0.062365,
		36.370697, 36.840172, 40.517193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695786, 37.348438, 40.466003>,  <36.326576, 37.537415, 40.473537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695786, 37.348438, 40.466003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891239, 37.045856, 40.639900>,  <36.008511, 36.864307, 40.744240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891239, 37.045856, 40.639900>,  <35.695786, 37.348438, 40.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891239, 37.045856, 40.639900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523004, 0.144880, 0.839926,
		-0.698355, -0.637794, -0.324837,
		0.488638, -0.756458, 0.434746,
		36.037830, 36.818920, 40.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189701, 36.948143, 40.921551>,  <35.695786, 37.348438, 40.466003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189701, 36.948143, 40.921551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546249, 36.850403, 41.074257>,  <35.760178, 36.791759, 41.165882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546249, 36.850403, 41.074257>,  <35.189701, 36.948143, 40.921551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546249, 36.850403, 41.074257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416918, -0.111493, 0.902080,
		-0.177863, -0.963255, -0.201257,
		0.891372, -0.244355, 0.381768,
		35.813660, 36.777100, 41.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098171, 36.320656, 41.334759>,  <35.189701, 36.948143, 40.921551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098171, 36.320656, 41.334759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419228, 36.499599, 41.492561>,  <35.611862, 36.606964, 41.587242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419228, 36.499599, 41.492561>,  <35.098171, 36.320656, 41.334759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419228, 36.499599, 41.492561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372608, -0.140409, 0.917305,
		0.465757, -0.883264, 0.053991,
		0.802642, 0.447358, 0.394507,
		35.660019, 36.633808, 41.610912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260681, 35.866478, 40.829315>,  <35.098171, 36.320656, 41.334759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260681, 35.866478, 40.829315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059143, 35.554901, 40.679974>,  <34.938221, 35.367954, 40.590370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059143, 35.554901, 40.679974>,  <35.260681, 35.866478, 40.829315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059143, 35.554901, 40.679974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123409, 0.492703, -0.861402,
		0.854934, -0.387936, -0.344373,
		-0.503842, -0.778941, -0.373354,
		34.907990, 35.321220, 40.567966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492565, 35.784821, 40.123192>,  <35.260681, 35.866478, 40.829315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492565, 35.784821, 40.123192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126007, 35.629028, 40.160110>,  <34.906071, 35.535553, 40.182262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126007, 35.629028, 40.160110>,  <35.492565, 35.784821, 40.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126007, 35.629028, 40.160110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248783, 0.373597, -0.893606,
		0.313562, -0.841861, -0.439260,
		-0.916398, -0.389482, 0.092295,
		34.851089, 35.512184, 40.187798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354843, 35.367104, 39.499348>,  <35.492565, 35.784821, 40.123192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354843, 35.367104, 39.499348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001549, 35.453075, 39.666054>,  <34.789570, 35.504658, 39.766075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001549, 35.453075, 39.666054>,  <35.354843, 35.367104, 39.499348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001549, 35.453075, 39.666054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395099, 0.137567, -0.908280,
		-0.252552, -0.966891, -0.036584,
		-0.883240, 0.214933, 0.416761,
		34.736576, 35.517555, 39.791080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789059, 35.038280, 39.096027>,  <35.354843, 35.367104, 39.499348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789059, 35.038280, 39.096027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580059, 35.335781, 39.262794>,  <34.454659, 35.514282, 39.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580059, 35.335781, 39.262794>,  <34.789059, 35.038280, 39.096027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580059, 35.335781, 39.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521948, 0.107644, -0.846158,
		-0.674212, -0.659730, 0.331957,
		-0.522502, 0.743754, 0.416919,
		34.423309, 35.558907, 39.387871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008564, 34.938084, 39.000134>,  <34.789059, 35.038280, 39.096027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008564, 34.938084, 39.000134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060490, 35.327988, 39.072784>,  <34.091644, 35.561932, 39.116375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060490, 35.327988, 39.072784>,  <34.008564, 34.938084, 39.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060490, 35.327988, 39.072784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616592, 0.222807, -0.755097,
		-0.776507, -0.013967, 0.629954,
		0.129812, 0.974763, 0.181624,
		34.099434, 35.620415, 39.127270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453228, 35.089653, 38.806854>,  <34.008564, 34.938084, 39.000134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453228, 35.089653, 38.806854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616600, 35.454742, 38.811043>,  <33.714622, 35.673798, 38.813557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616600, 35.454742, 38.811043>,  <33.453228, 35.089653, 38.806854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616600, 35.454742, 38.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658636, 0.302632, -0.688921,
		-0.631966, 0.274483, 0.724761,
		0.408433, 0.912728, 0.010469,
		33.739128, 35.728561, 38.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879044, 35.550468, 38.940006>,  <33.453228, 35.089653, 38.806854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879044, 35.550468, 38.940006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174107, 35.754696, 38.763290>,  <33.351147, 35.877232, 38.657261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174107, 35.754696, 38.763290>,  <32.879044, 35.550468, 38.940006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174107, 35.754696, 38.763290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643695, 0.334358, -0.688376,
		-0.203747, 0.792165, 0.575293,
		0.737661, 0.510568, -0.441788,
		33.395405, 35.907867, 38.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618473, 36.221996, 38.959873>,  <32.879044, 35.550468, 38.940006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618473, 36.221996, 38.959873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914722, 36.205631, 38.691605>,  <33.092472, 36.195812, 38.530643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914722, 36.205631, 38.691605>,  <32.618473, 36.221996, 38.959873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914722, 36.205631, 38.691605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629403, 0.307181, -0.713786,
		0.235219, 0.950771, 0.201756,
		0.740623, -0.040910, -0.670674,
		33.136909, 36.193359, 38.490402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603706, 36.873127, 38.607819>,  <32.618473, 36.221996, 38.959873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603706, 36.873127, 38.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793911, 36.624031, 38.359276>,  <32.908035, 36.474575, 38.210152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793911, 36.624031, 38.359276>,  <32.603706, 36.873127, 38.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793911, 36.624031, 38.359276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546526, 0.344354, -0.763367,
		0.689344, 0.702579, -0.176597,
		0.475514, -0.622738, -0.621356,
		32.936565, 36.437210, 38.172871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505962, 37.204117, 37.976608>,  <32.603706, 36.873127, 38.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505962, 37.204117, 37.976608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613361, 36.835697, 37.863770>,  <32.677803, 36.614647, 37.796066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613361, 36.835697, 37.863770>,  <32.505962, 37.204117, 37.976608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613361, 36.835697, 37.863770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632742, 0.052177, -0.772603,
		0.726322, 0.385941, -0.568775,
		0.268502, -0.921047, -0.282099,
		32.693913, 36.559383, 37.779140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739437, 37.163483, 37.239330>,  <32.505962, 37.204117, 37.976608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739437, 37.163483, 37.239330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618061, 36.790585, 37.318157>,  <32.545235, 36.566845, 37.365452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618061, 36.790585, 37.318157>,  <32.739437, 37.163483, 37.239330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618061, 36.790585, 37.318157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465606, -0.035373, -0.884285,
		0.831345, -0.360081, -0.423328,
		-0.303440, -0.932250, 0.197064,
		32.527031, 36.510910, 37.377277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798801, 36.843166, 36.651981>,  <32.739437, 37.163483, 37.239330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798801, 36.843166, 36.651981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539799, 36.602287, 36.838783>,  <32.384399, 36.457760, 36.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539799, 36.602287, 36.838783>,  <32.798801, 36.843166, 36.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539799, 36.602287, 36.838783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589597, 0.007606, -0.807662,
		0.482821, -0.798310, -0.359980,
		-0.647502, -0.602199, 0.467008,
		32.345547, 36.421627, 36.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607723, 36.203423, 36.231380>,  <32.798801, 36.843166, 36.651981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607723, 36.203423, 36.231380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300922, 36.199341, 36.488007>,  <32.116840, 36.196892, 36.641983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300922, 36.199341, 36.488007>,  <32.607723, 36.203423, 36.231380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300922, 36.199341, 36.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632326, -0.157764, -0.758469,
		0.108955, -0.987424, 0.114553,
		-0.767003, -0.010204, 0.641563,
		32.070820, 36.196278, 36.680477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180630, 35.794285, 35.838444>,  <32.607723, 36.203423, 36.231380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180630, 35.794285, 35.838444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951616, 35.962986, 36.119678>,  <31.814207, 36.064205, 36.288418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951616, 35.962986, 36.119678>,  <32.180630, 35.794285, 35.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951616, 35.962986, 36.119678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799455, -0.096954, -0.592851,
		-0.181867, -0.901514, 0.392679,
		-0.572535, 0.421749, 0.703087,
		31.779856, 36.089512, 36.330605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815950, 35.222443, 35.997711>,  <32.180630, 35.794285, 35.838444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815950, 35.222443, 35.997711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643251, 35.571892, 36.087494>,  <31.539633, 35.781563, 36.141361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643251, 35.571892, 36.087494>,  <31.815950, 35.222443, 35.997711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643251, 35.571892, 36.087494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853987, -0.315810, -0.413486,
		-0.290345, -0.370205, 0.882411,
		-0.431749, 0.873621, 0.224456,
		31.513727, 35.833977, 36.154831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888042, 34.873642, 35.274818>,  <31.815950, 35.222443, 35.997711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888042, 34.873642, 35.274818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933352, 34.545353, 35.050827>,  <31.960537, 34.348377, 34.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933352, 34.545353, 35.050827>,  <31.888042, 34.873642, 35.274818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933352, 34.545353, 35.050827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365104, -0.489793, 0.791708,
		-0.924050, -0.294131, 0.244170,
		0.113273, -0.820725, -0.559982,
		31.967333, 34.299137, 34.882832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471138, 34.236526, 35.667534>,  <31.888042, 34.873642, 35.274818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471138, 34.236526, 35.667534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807745, 34.161514, 35.464878>,  <32.009708, 34.116508, 35.343285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807745, 34.161514, 35.464878>,  <31.471138, 34.236526, 35.667534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807745, 34.161514, 35.464878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324632, -0.574076, 0.751698,
		-0.431810, -0.797039, -0.422220,
		0.841519, -0.187524, -0.506636,
		32.060200, 34.105255, 35.312885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474943, 33.465286, 35.578636>,  <31.471138, 34.236526, 35.667534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474943, 33.465286, 35.578636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847227, 33.604713, 35.622967>,  <32.070599, 33.688370, 35.649567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847227, 33.604713, 35.622967>,  <31.474943, 33.465286, 35.578636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847227, 33.604713, 35.622967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152015, -0.644223, 0.749579,
		0.332677, -0.680792, -0.652571,
		0.930708, 0.348568, 0.110827,
		32.126438, 33.709286, 35.656216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912195, 32.944778, 35.549923>,  <31.474943, 33.465286, 35.578636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912195, 32.944778, 35.549923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056194, 33.241295, 35.776512>,  <32.142593, 33.419205, 35.912464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056194, 33.241295, 35.776512>,  <31.912195, 32.944778, 35.549923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056194, 33.241295, 35.776512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196308, -0.653776, 0.730781,
		0.912067, -0.151876, -0.380878,
		0.359997, 0.741290, 0.566473,
		32.164192, 33.463680, 35.946453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622681, 32.833714, 35.790955>,  <31.912195, 32.944778, 35.549923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622681, 32.833714, 35.790955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476791, 33.078789, 36.071407>,  <32.389259, 33.225834, 36.239681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476791, 33.078789, 36.071407>,  <32.622681, 32.833714, 35.790955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476791, 33.078789, 36.071407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302584, -0.634146, 0.711549,
		0.880579, 0.471671, 0.045899,
		-0.364724, 0.612687, 0.701136,
		32.367374, 33.262596, 36.281750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179703, 32.974319, 36.243919>,  <32.622681, 32.833714, 35.790955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179703, 32.974319, 36.243919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852608, 33.067322, 36.454536>,  <32.656353, 33.123123, 36.580906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852608, 33.067322, 36.454536>,  <33.179703, 32.974319, 36.243919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852608, 33.067322, 36.454536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397530, -0.433436, 0.808767,
		0.416267, 0.870674, 0.262007,
		-0.817736, 0.232508, 0.526544,
		32.607288, 33.137074, 36.612499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488491, 33.119576, 36.895069>,  <33.179703, 32.974319, 36.243919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488491, 33.119576, 36.895069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102886, 33.059971, 36.983131>,  <32.871521, 33.024208, 37.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102886, 33.059971, 36.983131>,  <33.488491, 33.119576, 36.895069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102886, 33.059971, 36.983131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265763, -0.519995, 0.811773,
		-0.006489, 0.841071, 0.540886,
		-0.964016, -0.149015, 0.220151,
		32.813683, 33.015266, 37.049175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432247, 33.379238, 37.589123>,  <33.488491, 33.119576, 36.895069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432247, 33.379238, 37.589123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099659, 33.160278, 37.551174>,  <32.900105, 33.028900, 37.528404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099659, 33.160278, 37.551174>,  <33.432247, 33.379238, 37.589123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099659, 33.160278, 37.551174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142909, -0.375757, 0.915633,
		-0.536868, 0.747768, 0.390662,
		-0.831474, -0.547403, -0.094869,
		32.850216, 32.996056, 37.522713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180115, 33.406330, 38.238289>,  <33.432247, 33.379238, 37.589123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180115, 33.406330, 38.238289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005371, 33.104618, 38.042244>,  <32.900524, 32.923592, 37.924618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005371, 33.104618, 38.042244>,  <33.180115, 33.406330, 38.238289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005371, 33.104618, 38.042244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150424, -0.598442, 0.786918,
		-0.886862, 0.270050, 0.374899,
		-0.436862, -0.754281, -0.490113,
		32.874313, 32.878334, 37.895210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633583, 33.149368, 38.657444>,  <33.180115, 33.406330, 38.238289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633583, 33.149368, 38.657444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721596, 32.827095, 38.437462>,  <32.774403, 32.633732, 38.305473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721596, 32.827095, 38.437462>,  <32.633583, 33.149368, 38.657444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721596, 32.827095, 38.437462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055218, -0.552586, 0.831625,
		-0.973928, -0.213354, -0.077100,
		0.220035, -0.805685, -0.549960,
		32.787605, 32.585388, 38.272472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136093, 32.576221, 38.848614>,  <32.633583, 33.149368, 38.657444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136093, 32.576221, 38.848614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432625, 32.378757, 38.666740>,  <32.610542, 32.260281, 38.557617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432625, 32.378757, 38.666740>,  <32.136093, 32.576221, 38.848614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432625, 32.378757, 38.666740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145211, -0.779406, 0.609459,
		-0.655250, -0.385781, -0.649477,
		0.741324, -0.493659, -0.454685,
		32.655022, 32.230659, 38.530334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854948, 31.798174, 38.834549>,  <32.136093, 32.576221, 38.848614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854948, 31.798174, 38.834549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251537, 31.818787, 38.786678>,  <32.489491, 31.831154, 38.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251537, 31.818787, 38.786678>,  <31.854948, 31.798174, 38.834549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251537, 31.818787, 38.786678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114298, -0.784989, 0.608874,
		-0.062570, -0.617362, -0.784187,
		0.991474, 0.051534, -0.119680,
		32.548981, 31.834248, 38.750774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036255, 31.105846, 38.683628>,  <31.854948, 31.798174, 38.834549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036255, 31.105846, 38.683628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363743, 31.318836, 38.769573>,  <32.560238, 31.446630, 38.821140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363743, 31.318836, 38.769573>,  <32.036255, 31.105846, 38.683628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363743, 31.318836, 38.769573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285078, -0.701771, 0.652877,
		0.498423, -0.473273, -0.726352,
		0.818722, 0.532476, 0.214859,
		32.609360, 31.478579, 38.834030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568356, 30.623625, 38.555733>,  <32.036255, 31.105846, 38.683628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568356, 30.623625, 38.555733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632412, 30.898615, 38.839066>,  <32.670845, 31.063608, 39.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632412, 30.898615, 38.839066>,  <32.568356, 30.623625, 38.555733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632412, 30.898615, 38.839066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239044, -0.723244, 0.647902,
		0.957712, 0.065564, -0.280160,
		0.160145, 0.687473, 0.708332,
		32.680454, 31.104856, 39.051563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932705, 30.274202, 38.995914>,  <32.568356, 30.623625, 38.555733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932705, 30.274202, 38.995914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877285, 30.594181, 39.229458>,  <32.844032, 30.786169, 39.369583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877285, 30.594181, 39.229458>,  <32.932705, 30.274202, 38.995914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877285, 30.594181, 39.229458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196787, -0.555549, 0.807861,
		0.970608, 0.226824, -0.080448,
		-0.138549, 0.799947, 0.583856,
		32.835720, 30.834166, 39.404613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441486, 30.231445, 39.419365>,  <32.932705, 30.274202, 38.995914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441486, 30.231445, 39.419365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163898, 30.450899, 39.605869>,  <32.997345, 30.582571, 39.717773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163898, 30.450899, 39.605869>,  <33.441486, 30.231445, 39.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163898, 30.450899, 39.605869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171327, -0.503157, 0.847042,
		0.699323, 0.667706, 0.255179,
		-0.693970, 0.548637, 0.466265,
		32.955708, 30.615490, 39.745750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804390, 30.388424, 40.071316>,  <33.441486, 30.231445, 39.419365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804390, 30.388424, 40.071316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419395, 30.479755, 40.129936>,  <33.188396, 30.534555, 40.165108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419395, 30.479755, 40.129936>,  <33.804390, 30.388424, 40.071316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419395, 30.479755, 40.129936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043553, -0.403123, 0.914109,
		0.267797, 0.886204, 0.378058,
		-0.962490, 0.228330, 0.146552,
		33.130650, 30.548254, 40.173901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601231, 30.921215, 40.680817>,  <33.804390, 30.388424, 40.071316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601231, 30.921215, 40.680817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271767, 30.708679, 40.601562>,  <33.074089, 30.581158, 40.554008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271767, 30.708679, 40.601562>,  <33.601231, 30.921215, 40.680817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271767, 30.708679, 40.601562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037846, -0.297116, 0.954091,
		-0.565814, 0.793349, 0.224615,
		-0.823664, -0.531337, -0.198137,
		33.024666, 30.549278, 40.542122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274864, 31.001200, 41.311394>,  <33.601231, 30.921215, 40.680817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274864, 31.001200, 41.311394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075397, 30.700428, 41.138916>,  <32.955715, 30.519966, 41.035427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075397, 30.700428, 41.138916>,  <33.274864, 31.001200, 41.311394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075397, 30.700428, 41.138916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113614, -0.436472, 0.892516,
		-0.859313, 0.494061, 0.132226,
		-0.498670, -0.751928, -0.431198,
		32.925797, 30.474850, 41.009556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638103, 30.836292, 41.754898>,  <33.274864, 31.001200, 41.311394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638103, 30.836292, 41.754898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736782, 30.502859, 41.557198>,  <32.795990, 30.302799, 41.438576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736782, 30.502859, 41.557198>,  <32.638103, 30.836292, 41.754898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736782, 30.502859, 41.557198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163480, -0.466908, 0.869064,
		-0.955205, -0.295193, 0.021090,
		0.246695, -0.833582, -0.494250,
		32.810791, 30.252785, 41.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191689, 30.376223, 42.038872>,  <32.638103, 30.836292, 41.754898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191689, 30.376223, 42.038872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492100, 30.174892, 41.867931>,  <32.672344, 30.054094, 41.765369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492100, 30.174892, 41.867931>,  <32.191689, 30.376223, 42.038872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492100, 30.174892, 41.867931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095672, -0.557443, 0.824684,
		-0.653308, -0.660242, -0.370498,
		0.751023, -0.503326, -0.427349,
		32.717407, 30.023895, 41.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014568, 29.717686, 42.102528>,  <32.191689, 30.376223, 42.038872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014568, 29.717686, 42.102528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411835, 29.736757, 42.059917>,  <32.650196, 29.748199, 42.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411835, 29.736757, 42.059917>,  <32.014568, 29.717686, 42.102528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411835, 29.736757, 42.059917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114807, -0.563271, 0.818258,
		-0.020993, -0.824896, -0.564895,
		0.993166, 0.047677, -0.106529,
		32.709785, 29.751060, 42.027958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146755, 29.085644, 42.145424>,  <32.014568, 29.717686, 42.102528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146755, 29.085644, 42.145424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519108, 29.221571, 42.199078>,  <32.742519, 29.303127, 42.231270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519108, 29.221571, 42.199078>,  <32.146755, 29.085644, 42.145424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519108, 29.221571, 42.199078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138994, -0.668967, 0.730181,
		0.337856, -0.661066, -0.669959,
		0.930878, 0.339816, 0.134130,
		32.798370, 29.323515, 42.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624893, 28.472925, 42.290703>,  <32.146755, 29.085644, 42.145424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624893, 28.472925, 42.290703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814640, 28.796688, 42.429173>,  <32.928486, 28.990946, 42.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814640, 28.796688, 42.429173>,  <32.624893, 28.472925, 42.290703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814640, 28.796688, 42.429173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358850, -0.536870, 0.763543,
		0.803870, -0.237971, -0.545127,
		0.474363, 0.809408, 0.346178,
		32.956947, 29.039511, 42.533028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336983, 28.298233, 42.405045>,  <32.624893, 28.472925, 42.290703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336983, 28.298233, 42.405045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254234, 28.616379, 42.632938>,  <33.204586, 28.807266, 42.769672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254234, 28.616379, 42.632938>,  <33.336983, 28.298233, 42.405045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254234, 28.616379, 42.632938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355006, -0.481617, 0.801259,
		0.911687, 0.368019, -0.182726,
		-0.206874, 0.795366, 0.569733,
		33.192173, 28.854988, 42.803860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907650, 28.265003, 42.875782>,  <33.336983, 28.298233, 42.405045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907650, 28.265003, 42.875782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633793, 28.495359, 43.054493>,  <33.469479, 28.633574, 43.161720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633793, 28.495359, 43.054493>,  <33.907650, 28.265003, 42.875782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633793, 28.495359, 43.054493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223899, -0.417158, 0.880823,
		0.693634, 0.703085, 0.156664,
		-0.684647, 0.575892, 0.446774,
		33.428398, 28.668127, 43.188526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190365, 28.301544, 43.578312>,  <33.907650, 28.265003, 42.875782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190365, 28.301544, 43.578312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819958, 28.437078, 43.644867>,  <33.597713, 28.518398, 43.684799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819958, 28.437078, 43.644867>,  <34.190365, 28.301544, 43.578312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819958, 28.437078, 43.644867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051688, -0.550435, 0.833276,
		0.373927, 0.763028, 0.527226,
		-0.926017, 0.338836, 0.166384,
		33.542152, 28.538729, 43.694782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698261, 28.707840, 44.045528>,  <34.190365, 28.301544, 43.578312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698261, 28.707840, 44.045528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087727, 28.628939, 43.999798>,  <35.321407, 28.581598, 43.972359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087727, 28.628939, 43.999798>,  <34.698261, 28.707840, 44.045528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087727, 28.628939, 43.999798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042196, 0.336897, -0.940595,
		0.224051, 0.920648, 0.319701,
		0.973664, -0.197251, -0.114329,
		35.379826, 28.569763, 43.965500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939209, 29.344603, 43.805229>,  <34.698261, 28.707840, 44.045528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939209, 29.344603, 43.805229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238110, 29.090576, 43.726940>,  <35.417450, 28.938160, 43.679966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238110, 29.090576, 43.726940>,  <34.939209, 29.344603, 43.805229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238110, 29.090576, 43.726940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153623, 0.451624, -0.878883,
		0.646541, 0.626680, 0.435037,
		0.747252, -0.635065, -0.195721,
		35.462284, 28.900057, 43.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575382, 29.732294, 43.547653>,  <34.939209, 29.344603, 43.805229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575382, 29.732294, 43.547653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617996, 29.354433, 43.423534>,  <35.643566, 29.127716, 43.349064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617996, 29.354433, 43.423534>,  <35.575382, 29.732294, 43.547653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617996, 29.354433, 43.423534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140642, 0.323248, -0.935805,
		0.984312, 0.056055, 0.167295,
		0.106534, -0.944653, -0.310293,
		35.649956, 29.071037, 43.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061512, 29.803267, 43.014866>,  <35.575382, 29.732294, 43.547653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061512, 29.803267, 43.014866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906410, 29.444317, 42.930611>,  <35.813351, 29.228947, 42.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906410, 29.444317, 42.930611>,  <36.061512, 29.803267, 43.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906410, 29.444317, 42.930611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089641, 0.190724, -0.977542,
		0.917393, -0.397929, 0.006487,
		-0.387755, -0.897372, -0.210640,
		35.790085, 29.175106, 42.867420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544109, 29.465488, 42.434608>,  <36.061512, 29.803267, 43.014866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544109, 29.465488, 42.434608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180984, 29.297758, 42.437145>,  <35.963108, 29.197121, 42.438667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180984, 29.297758, 42.437145>,  <36.544109, 29.465488, 42.434608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180984, 29.297758, 42.437145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103620, -0.238944, -0.965489,
		0.406370, -0.875827, 0.260368,
		-0.907814, -0.419325, 0.006346,
		35.908642, 29.171961, 42.439049>
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
