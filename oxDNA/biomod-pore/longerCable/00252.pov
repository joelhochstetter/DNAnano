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
	<24.157852, 34.582977, 35.340137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326136, 34.915009, 35.193729>,  <24.427105, 35.114227, 35.105885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326136, 34.915009, 35.193729>,  <24.157852, 34.582977, 35.340137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326136, 34.915009, 35.193729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230673, 0.292327, 0.928081,
		0.877379, -0.474884, -0.068492,
		0.420709, 0.830078, -0.366025,
		24.452349, 35.164032, 35.083923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888941, 34.604015, 35.518475>,  <24.157852, 34.582977, 35.340137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888941, 34.604015, 35.518475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729345, 34.969818, 35.491695>,  <24.633589, 35.189301, 35.475628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729345, 34.969818, 35.491695>,  <24.888941, 34.604015, 35.518475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729345, 34.969818, 35.491695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210717, 0.162498, 0.963947,
		0.892417, 0.370496, -0.257537,
		-0.398987, 0.914509, -0.066946,
		24.609650, 35.244171, 35.471611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425282, 34.735771, 35.994541>,  <24.888941, 34.604015, 35.518475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425282, 34.735771, 35.994541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813356, 34.693455, 36.081760>,  <26.046202, 34.668064, 36.134090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813356, 34.693455, 36.081760>,  <25.425282, 34.735771, 35.994541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813356, 34.693455, 36.081760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190124, 0.890162, -0.414082,
		-0.150290, 0.443193, 0.883738,
		0.970189, -0.105787, 0.218044,
		26.104412, 34.661720, 36.147175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643843, 35.362762, 36.231800>,  <25.425282, 34.735771, 35.994541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643843, 35.362762, 36.231800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983122, 35.197075, 36.099751>,  <26.186689, 35.097664, 36.020519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983122, 35.197075, 36.099751>,  <25.643843, 35.362762, 36.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983122, 35.197075, 36.099751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263985, 0.870922, -0.414496,
		0.459205, 0.264426, 0.848062,
		0.848200, -0.414214, -0.330127,
		26.237581, 35.072811, 36.000713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093203, 35.751450, 36.545597>,  <25.643843, 35.362762, 36.231800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093203, 35.751450, 36.545597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297514, 35.596172, 36.238766>,  <26.420101, 35.503006, 36.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297514, 35.596172, 36.238766>,  <26.093203, 35.751450, 36.545597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297514, 35.596172, 36.238766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354001, 0.908067, -0.223825,
		0.783445, -0.157221, 0.601245,
		0.510781, -0.388196, -0.767077,
		26.450748, 35.479713, 36.008644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695663, 36.106335, 36.586426>,  <26.093203, 35.751450, 36.545597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695663, 36.106335, 36.586426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624201, 35.986156, 36.211658>,  <26.581324, 35.914051, 35.986797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624201, 35.986156, 36.211658>,  <26.695663, 36.106335, 36.586426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624201, 35.986156, 36.211658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308717, 0.887033, -0.343316,
		0.934225, -0.350578, -0.065721,
		-0.178656, -0.300445, -0.936917,
		26.570604, 35.896023, 35.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266680, 36.248432, 36.254436>,  <26.695663, 36.106335, 36.586426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266680, 36.248432, 36.254436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968445, 36.226871, 35.988747>,  <26.789503, 36.213936, 35.829334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968445, 36.226871, 35.988747>,  <27.266680, 36.248432, 36.254436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968445, 36.226871, 35.988747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356782, 0.809553, -0.466187,
		0.562853, -0.584567, -0.584361,
		-0.745589, -0.053905, -0.664222,
		26.744768, 36.210701, 35.789478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471212, 36.094574, 35.507458>,  <27.266680, 36.248432, 36.254436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471212, 36.094574, 35.507458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148838, 36.330666, 35.489143>,  <26.955414, 36.472321, 35.478153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148838, 36.330666, 35.489143>,  <27.471212, 36.094574, 35.507458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148838, 36.330666, 35.489143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570362, 0.753422, -0.327174,
		-0.158610, -0.289797, -0.943854,
		-0.805935, 0.590231, -0.045789,
		26.907057, 36.507736, 35.475407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600260, 36.497318, 34.831215>,  <27.471212, 36.094574, 35.507458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600260, 36.497318, 34.831215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337999, 36.683586, 35.068962>,  <27.180643, 36.795345, 35.211613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337999, 36.683586, 35.068962>,  <27.600260, 36.497318, 34.831215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337999, 36.683586, 35.068962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581202, 0.813752, 0.003576,
		-0.482005, 0.347794, -0.804184,
		-0.655649, 0.465669, 0.594370,
		27.141304, 36.823288, 35.247272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616686, 37.162506, 34.522430>,  <27.600260, 36.497318, 34.831215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616686, 37.162506, 34.522430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465963, 37.219444, 34.888546>,  <27.375530, 37.253609, 35.108215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465963, 37.219444, 34.888546>,  <27.616686, 37.162506, 34.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465963, 37.219444, 34.888546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672270, 0.721797, 0.164507,
		-0.637237, 0.677309, -0.367671,
		-0.376806, 0.142344, 0.915290,
		27.352922, 37.262146, 35.163132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580618, 37.782501, 34.639362>,  <27.616686, 37.162506, 34.522430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580618, 37.782501, 34.639362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567244, 37.688759, 35.027992>,  <27.559219, 37.632515, 35.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567244, 37.688759, 35.027992>,  <27.580618, 37.782501, 34.639362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567244, 37.688759, 35.027992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639781, 0.741822, 0.200951,
		-0.767830, 0.628314, 0.125133,
		-0.033434, -0.234354, 0.971576,
		27.557213, 37.618454, 35.319466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324696, 38.362785, 35.105679>,  <27.580618, 37.782501, 34.639362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324696, 38.362785, 35.105679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576975, 38.129608, 35.310574>,  <27.728342, 37.989700, 35.433510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576975, 38.129608, 35.310574>,  <27.324696, 38.362785, 35.105679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576975, 38.129608, 35.310574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504718, 0.809538, 0.299846,
		-0.589474, 0.069426, 0.804799,
		0.630698, -0.582947, 0.512242,
		27.766184, 37.954723, 35.464245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436441, 38.634411, 35.906261>,  <27.324696, 38.362785, 35.105679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436441, 38.634411, 35.906261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731958, 38.468910, 35.693474>,  <27.909267, 38.369610, 35.565800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731958, 38.468910, 35.693474>,  <27.436441, 38.634411, 35.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731958, 38.468910, 35.693474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512781, 0.857321, 0.045335,
		0.437313, -0.306278, 0.845547,
		0.738791, -0.413755, -0.531972,
		27.953596, 38.344784, 35.533882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057953, 38.791454, 36.248001>,  <27.436441, 38.634411, 35.906261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057953, 38.791454, 36.248001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128456, 38.726685, 35.859627>,  <28.170759, 38.687824, 35.626602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128456, 38.726685, 35.859627>,  <28.057953, 38.791454, 36.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128456, 38.726685, 35.859627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501696, 0.863424, -0.052917,
		0.846897, -0.477786, 0.233423,
		0.176260, -0.161922, -0.970934,
		28.181334, 38.678108, 35.568348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329601, 38.218765, 36.532055>,  <28.057953, 38.791454, 36.248001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329601, 38.218765, 36.532055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112131, 38.279701, 36.201912>,  <27.981649, 38.316265, 36.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112131, 38.279701, 36.201912>,  <28.329601, 38.218765, 36.532055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112131, 38.279701, 36.201912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561126, -0.797274, 0.222466,
		-0.624142, 0.584077, 0.518943,
		-0.543677, 0.152342, -0.825353,
		27.949028, 38.325405, 35.954308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130156, 37.519585, 36.504700>,  <28.329601, 38.218765, 36.532055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130156, 37.519585, 36.504700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936424, 37.702755, 36.206512>,  <27.820185, 37.812660, 36.027599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936424, 37.702755, 36.206512>,  <28.130156, 37.519585, 36.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936424, 37.702755, 36.206512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600161, -0.793884, -0.097748,
		-0.636578, 0.400060, 0.659333,
		-0.484329, 0.457930, -0.745470,
		27.791126, 37.840134, 35.982872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396513, 37.529072, 36.622581>,  <28.130156, 37.519585, 36.504700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396513, 37.529072, 36.622581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432549, 37.558701, 36.225311>,  <27.454170, 37.576477, 35.986950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432549, 37.558701, 36.225311>,  <27.396513, 37.529072, 36.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432549, 37.558701, 36.225311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777252, -0.618288, -0.116617,
		-0.622707, 0.782453, 0.001873,
		0.090089, 0.074073, -0.993175,
		27.459576, 37.580921, 35.927361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746874, 37.391300, 36.295811>,  <27.396513, 37.529072, 36.622581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746874, 37.391300, 36.295811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960522, 37.325005, 35.964211>,  <27.088711, 37.285225, 35.765251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960522, 37.325005, 35.964211>,  <26.746874, 37.391300, 36.295811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960522, 37.325005, 35.964211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761840, -0.519462, -0.386988,
		-0.366495, 0.838265, -0.403723,
		0.534117, -0.165743, -0.829004,
		27.120756, 37.275280, 35.715508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331728, 37.663040, 35.830109>,  <26.746874, 37.391300, 36.295811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331728, 37.663040, 35.830109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574354, 37.381393, 35.682438>,  <26.719931, 37.212406, 35.593834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574354, 37.381393, 35.682438>,  <26.331728, 37.663040, 35.830109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574354, 37.381393, 35.682438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791884, -0.576362, -0.201808,
		-0.070682, 0.414755, -0.907184,
		0.606567, -0.704120, -0.369176,
		26.756325, 37.170158, 35.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901489, 37.366348, 35.398403>,  <26.331728, 37.663040, 35.830109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901489, 37.366348, 35.398403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215591, 37.119598, 35.419739>,  <26.404053, 36.971550, 35.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215591, 37.119598, 35.419739>,  <25.901489, 37.366348, 35.398403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215591, 37.119598, 35.419739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602768, -0.781307, -0.161956,
		0.141580, 0.095025, -0.985355,
		0.785255, -0.616871, 0.053339,
		26.451168, 36.934536, 35.435741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783260, 36.799496, 34.949120>,  <25.901489, 37.366348, 35.398403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783260, 36.799496, 34.949120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076191, 36.666679, 35.186924>,  <26.251949, 36.586990, 35.329605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076191, 36.666679, 35.186924>,  <25.783260, 36.799496, 34.949120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076191, 36.666679, 35.186924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420248, -0.907344, 0.010903,
		0.535806, -0.257827, -0.804013,
		0.732327, -0.332043, 0.594511,
		26.295889, 36.567066, 35.365276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709562, 36.075550, 34.996468>,  <25.783260, 36.799496, 34.949120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709562, 36.075550, 34.996468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025375, 36.126125, 35.236683>,  <26.214863, 36.156471, 35.380814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025375, 36.126125, 35.236683>,  <25.709562, 36.075550, 34.996468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025375, 36.126125, 35.236683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031807, -0.968800, 0.245795,
		0.612883, -0.213165, -0.760877,
		0.789533, 0.126442, 0.600542,
		26.262236, 36.164059, 35.416847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256598, 35.602722, 34.706913>,  <25.709562, 36.075550, 34.996468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256598, 35.602722, 34.706913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335625, 35.687962, 35.089653>,  <26.383041, 35.739105, 35.319298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335625, 35.687962, 35.089653>,  <26.256598, 35.602722, 34.706913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335625, 35.687962, 35.089653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200533, -0.946660, 0.252232,
		0.959559, -0.241713, -0.144298,
		0.197569, 0.213095, 0.956847,
		26.394896, 35.751888, 35.376709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429277, 35.055779, 35.098988>,  <26.256598, 35.602722, 34.706913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429277, 35.055779, 35.098988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274384, 35.297249, 35.377735>,  <26.181448, 35.442131, 35.544983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274384, 35.297249, 35.377735>,  <26.429277, 35.055779, 35.098988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274384, 35.297249, 35.377735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549662, -0.757985, 0.351185,
		0.740217, -0.247051, 0.625335,
		-0.387234, 0.603676, 0.696868,
		26.158213, 35.478352, 35.586796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126034, 34.974861, 35.059185>,  <26.429277, 35.055779, 35.098988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126034, 34.974861, 35.059185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942369, 35.129845, 35.378948>,  <26.832170, 35.222836, 35.570805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942369, 35.129845, 35.378948>,  <27.126034, 34.974861, 35.059185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942369, 35.129845, 35.378948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254809, -0.919504, 0.299307,
		0.851026, -0.066267, 0.520925,
		-0.459158, 0.387455, 0.799408,
		26.804623, 35.246082, 35.618771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390823, 34.620720, 35.579098>,  <27.126034, 34.974861, 35.059185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390823, 34.620720, 35.579098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032248, 34.750767, 35.699558>,  <26.817102, 34.828796, 35.771835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032248, 34.750767, 35.699558>,  <27.390823, 34.620720, 35.579098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032248, 34.750767, 35.699558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254407, -0.933959, 0.250995,
		0.362867, 0.148387, 0.919950,
		-0.896440, 0.325119, 0.301152,
		26.763315, 34.848301, 35.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324560, 34.498264, 36.302422>,  <27.390823, 34.620720, 35.579098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324560, 34.498264, 36.302422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937677, 34.528442, 36.205410>,  <26.705547, 34.546551, 36.147202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937677, 34.528442, 36.205410>,  <27.324560, 34.498264, 36.302422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937677, 34.528442, 36.205410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168934, -0.904126, 0.392452,
		-0.189668, 0.420553, 0.887221,
		-0.967206, 0.075446, -0.242530,
		26.647516, 34.551075, 36.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895569, 34.367538, 36.936005>,  <27.324560, 34.498264, 36.302422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895569, 34.367538, 36.936005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741678, 34.292618, 36.574474>,  <26.649343, 34.247665, 36.357555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741678, 34.292618, 36.574474>,  <26.895569, 34.367538, 36.936005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741678, 34.292618, 36.574474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176340, -0.946246, 0.271152,
		-0.906030, 0.263700, 0.331015,
		-0.384725, -0.187300, -0.903828,
		26.626261, 34.236427, 36.303326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438818, 33.948433, 37.271473>,  <26.895569, 34.367538, 36.936005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438818, 33.948433, 37.271473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690340, 33.642700, 37.328598>,  <27.841253, 33.459259, 37.362873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690340, 33.642700, 37.328598>,  <27.438818, 33.948433, 37.271473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690340, 33.642700, 37.328598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496839, 0.253671, -0.829941,
		0.598126, 0.592826, 0.539261,
		0.628806, -0.764335, 0.142812,
		27.878983, 33.413399, 37.371441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222767, 34.103626, 37.328484>,  <27.438818, 33.948433, 37.271473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222767, 34.103626, 37.328484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148756, 33.745033, 37.167446>,  <28.104349, 33.529877, 37.070824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148756, 33.745033, 37.167446>,  <28.222767, 34.103626, 37.328484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148756, 33.745033, 37.167446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613113, 0.214860, -0.760215,
		0.768022, -0.387497, 0.509891,
		-0.185026, -0.896483, -0.402597,
		28.093248, 33.476089, 37.046665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845259, 33.646969, 37.079639>,  <28.222767, 34.103626, 37.328484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845259, 33.646969, 37.079639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522844, 33.532433, 36.872444>,  <28.329395, 33.463711, 36.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522844, 33.532433, 36.872444>,  <28.845259, 33.646969, 37.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522844, 33.532433, 36.872444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463192, 0.239643, -0.853244,
		0.368453, -0.927674, -0.060529,
		-0.806037, -0.286344, -0.517988,
		28.281033, 33.446529, 36.717049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504807, 33.020592, 37.360386>,  <28.845259, 33.646969, 37.079639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504807, 33.020592, 37.360386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758961, 32.840893, 37.611610>,  <28.911453, 32.733074, 37.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758961, 32.840893, 37.611610>,  <28.504807, 33.020592, 37.360386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758961, 32.840893, 37.611610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739172, -0.118530, 0.663005,
		-0.223409, -0.885510, -0.407383,
		0.635384, -0.449247, 0.628063,
		28.949575, 32.706120, 37.800030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249310, 32.273376, 37.526211>,  <28.504807, 33.020592, 37.360386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249310, 32.273376, 37.526211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472366, 32.443748, 37.811199>,  <28.606201, 32.545971, 37.982193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472366, 32.443748, 37.811199>,  <28.249310, 32.273376, 37.526211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472366, 32.443748, 37.811199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713511, -0.192663, 0.673634,
		0.424188, -0.884005, 0.196469,
		0.557644, 0.425931, 0.712472,
		28.639660, 32.571529, 38.024940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284075, 31.834616, 38.163151>,  <28.249310, 32.273376, 37.526211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284075, 31.834616, 38.163151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321833, 32.223118, 38.250561>,  <28.344488, 32.456219, 38.303005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321833, 32.223118, 38.250561>,  <28.284075, 31.834616, 38.163151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321833, 32.223118, 38.250561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754868, -0.073275, 0.651771,
		0.649048, -0.226480, 0.726253,
		0.094396, 0.971256, 0.218522,
		28.350151, 32.514496, 38.316116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541388, 31.153893, 38.529922>,  <28.284075, 31.834616, 38.163151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541388, 31.153893, 38.529922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464027, 31.129854, 38.921635>,  <28.417612, 31.115431, 39.156662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464027, 31.129854, 38.921635>,  <28.541388, 31.153893, 38.529922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464027, 31.129854, 38.921635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918489, 0.339815, 0.202248,
		-0.344928, 0.938570, -0.010520,
		-0.193399, -0.060098, 0.979278,
		28.406008, 31.111824, 39.215420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948635, 31.715269, 38.945049>,  <28.541388, 31.153893, 38.529922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948635, 31.715269, 38.945049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869469, 31.381414, 39.150654>,  <28.821968, 31.181103, 39.274017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869469, 31.381414, 39.150654>,  <28.948635, 31.715269, 38.945049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869469, 31.381414, 39.150654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863705, 0.099474, 0.494083,
		-0.463511, 0.541745, 0.701192,
		-0.197917, -0.834636, 0.514016,
		28.810093, 31.131023, 39.304859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236450, 31.838669, 38.935120>,  <28.948635, 31.715269, 38.945049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236450, 31.838669, 38.935120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165703, 32.202854, 38.785576>,  <28.123255, 32.421364, 38.695850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165703, 32.202854, 38.785576>,  <28.236450, 31.838669, 38.935120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165703, 32.202854, 38.785576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877961, 0.025741, 0.478040,
		0.444861, 0.412789, 0.794798,
		-0.176871, 0.910463, -0.373864,
		28.112642, 32.475994, 38.673416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147751, 32.158188, 39.472164>,  <28.236450, 31.838669, 38.935120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147751, 32.158188, 39.472164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972792, 32.373447, 39.183975>,  <27.867815, 32.502602, 39.011063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972792, 32.373447, 39.183975>,  <28.147751, 32.158188, 39.472164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972792, 32.373447, 39.183975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794293, 0.144449, 0.590113,
		0.421640, 0.830380, 0.364266,
		-0.437400, 0.538149, -0.720470,
		27.841572, 32.534893, 38.967834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746096, 32.500988, 39.851276>,  <28.147751, 32.158188, 39.472164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746096, 32.500988, 39.851276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591780, 32.555355, 39.486267>,  <27.499191, 32.587975, 39.267262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591780, 32.555355, 39.486267>,  <27.746096, 32.500988, 39.851276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591780, 32.555355, 39.486267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917545, 0.046746, 0.394876,
		0.096328, 0.989616, 0.106681,
		-0.385788, 0.135922, -0.912520,
		27.476044, 32.596130, 39.212513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354258, 33.178738, 39.697865>,  <27.746096, 32.500988, 39.851276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354258, 33.178738, 39.697865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217087, 32.864178, 39.492348>,  <27.134785, 32.675442, 39.369038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217087, 32.864178, 39.492348>,  <27.354258, 33.178738, 39.697865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217087, 32.864178, 39.492348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923794, 0.183158, 0.336240,
		-0.170314, 0.589941, -0.789280,
		-0.342925, -0.786399, -0.513790,
		27.114210, 32.628258, 39.338211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978216, 33.748379, 39.423866>,  <27.354258, 33.178738, 39.697865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978216, 33.748379, 39.423866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617664, 33.604538, 39.520367>,  <26.401333, 33.518234, 39.578266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617664, 33.604538, 39.520367>,  <26.978216, 33.748379, 39.423866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617664, 33.604538, 39.520367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277577, 0.052222, -0.959283,
		0.332360, -0.931644, -0.146888,
		-0.901381, -0.359601, 0.241247,
		26.347250, 33.496658, 39.592739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763632, 33.265213, 38.931499>,  <26.978216, 33.748379, 39.423866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763632, 33.265213, 38.931499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402489, 33.356583, 39.077198>,  <26.185802, 33.411404, 39.164616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402489, 33.356583, 39.077198>,  <26.763632, 33.265213, 38.931499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402489, 33.356583, 39.077198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392717, -0.093323, -0.914912,
		-0.174990, -0.969080, 0.173961,
		-0.902858, 0.228417, 0.364243,
		26.131632, 33.425110, 39.186470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223867, 32.928291, 38.469242>,  <26.763632, 33.265213, 38.931499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223867, 32.928291, 38.469242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031359, 33.229916, 38.648029>,  <25.915854, 33.410889, 38.755302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031359, 33.229916, 38.648029>,  <26.223867, 32.928291, 38.469242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031359, 33.229916, 38.648029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583676, 0.104751, -0.805201,
		-0.653987, -0.648403, 0.389711,
		-0.481273, 0.754056, 0.446963,
		25.886976, 33.456131, 38.782120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845695, 32.699238, 38.077847>,  <26.223867, 32.928291, 38.469242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845695, 32.699238, 38.077847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043207, 32.709896, 38.425518>,  <27.161715, 32.716293, 38.634121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043207, 32.709896, 38.425518>,  <26.845695, 32.699238, 38.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043207, 32.709896, 38.425518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865051, -0.117017, -0.487845,
		0.088708, 0.992772, -0.080833,
		0.493778, 0.026648, 0.869179,
		27.191341, 32.717892, 38.686272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253782, 33.311737, 38.140759>,  <26.845695, 32.699238, 38.077847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253782, 33.311737, 38.140759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415268, 33.021255, 38.363338>,  <27.512159, 32.846966, 38.496887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415268, 33.021255, 38.363338>,  <27.253782, 33.311737, 38.140759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415268, 33.021255, 38.363338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877326, 0.134815, -0.460569,
		0.259451, 0.674126, 0.691548,
		0.403713, -0.726209, 0.556451,
		27.536381, 32.803394, 38.530273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811903, 33.659286, 38.336102>,  <27.253782, 33.311737, 38.140759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811903, 33.659286, 38.336102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911081, 33.278503, 38.407997>,  <27.970589, 33.050034, 38.451134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911081, 33.278503, 38.407997>,  <27.811903, 33.659286, 38.336102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911081, 33.278503, 38.407997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896773, 0.155342, -0.414327,
		0.366499, 0.263916, 0.892203,
		0.247944, -0.951954, 0.179740,
		27.985464, 32.992916, 38.461918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482649, 33.767338, 38.696369>,  <27.811903, 33.659286, 38.336102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482649, 33.767338, 38.696369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472931, 33.385944, 38.576183>,  <28.467100, 33.157108, 38.504070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472931, 33.385944, 38.576183>,  <28.482649, 33.767338, 38.696369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472931, 33.385944, 38.576183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968339, 0.052253, -0.244109,
		0.248454, -0.296881, 0.922026,
		-0.024293, -0.953484, -0.300464,
		28.465643, 33.099899, 38.486046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065115, 33.392418, 38.959377>,  <28.482649, 33.767338, 38.696369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065115, 33.392418, 38.959377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932976, 33.203003, 38.632786>,  <28.853691, 33.089355, 38.436832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932976, 33.203003, 38.632786>,  <29.065115, 33.392418, 38.959377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932976, 33.203003, 38.632786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943188, -0.133028, -0.304466,
		0.035561, -0.870671, 0.490578,
		-0.330350, -0.473535, -0.816476,
		28.833870, 33.060944, 38.387844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361471, 32.692616, 38.792614>,  <29.065115, 33.392418, 38.959377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361471, 32.692616, 38.792614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250837, 32.804394, 38.424831>,  <29.184456, 32.871460, 38.204163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250837, 32.804394, 38.424831>,  <29.361471, 32.692616, 38.792614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250837, 32.804394, 38.424831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919075, -0.202565, -0.338036,
		-0.280714, -0.938550, -0.200809,
		-0.276586, 0.279450, -0.919461,
		29.167862, 32.888229, 38.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569363, 32.172470, 38.258865>,  <29.361471, 32.692616, 38.792614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569363, 32.172470, 38.258865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562590, 32.552074, 38.132950>,  <29.558525, 32.779839, 38.057400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562590, 32.552074, 38.132950>,  <29.569363, 32.172470, 38.258865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562590, 32.552074, 38.132950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969597, -0.061283, -0.236907,
		-0.244118, -0.309233, -0.919120,
		-0.016933, 0.949010, -0.314792,
		29.557510, 32.836777, 38.038513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782188, 32.249367, 37.549129>,  <29.569363, 32.172470, 38.258865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782188, 32.249367, 37.549129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866579, 32.606194, 37.708981>,  <29.917213, 32.820290, 37.804890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866579, 32.606194, 37.708981>,  <29.782188, 32.249367, 37.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866579, 32.606194, 37.708981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820096, 0.060932, -0.568972,
		-0.531914, 0.447769, -0.718728,
		0.210975, 0.892071, 0.399625,
		29.929871, 32.873814, 37.828869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860439, 32.747219, 37.094826>,  <29.782188, 32.249367, 37.549129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860439, 32.747219, 37.094826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085459, 32.871925, 37.401115>,  <30.220470, 32.946751, 37.584888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085459, 32.871925, 37.401115>,  <29.860439, 32.747219, 37.094826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085459, 32.871925, 37.401115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814640, -0.050994, -0.577721,
		-0.141065, 0.948790, -0.282663,
		0.562550, 0.311765, 0.765729,
		30.254223, 32.965454, 37.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450516, 33.212818, 36.919434>,  <29.860439, 32.747219, 37.094826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450516, 33.212818, 36.919434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605669, 33.064831, 37.257114>,  <30.698761, 32.976040, 37.459721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605669, 33.064831, 37.257114>,  <30.450516, 33.212818, 36.919434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605669, 33.064831, 37.257114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888195, -0.094708, -0.449601,
		0.246290, 0.924205, 0.291868,
		0.387881, -0.369968, 0.844199,
		30.722033, 32.953842, 37.510376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143456, 33.492985, 37.218613>,  <30.450516, 33.212818, 36.919434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143456, 33.492985, 37.218613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159857, 33.105576, 37.316814>,  <31.169697, 32.873131, 37.375736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159857, 33.105576, 37.316814>,  <31.143456, 33.492985, 37.218613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159857, 33.105576, 37.316814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832258, -0.102856, -0.544764,
		0.552871, 0.226664, 0.801846,
		0.041003, -0.968527, 0.245509,
		31.172157, 32.815018, 37.390469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089443, 33.754704, 37.877838>,  <31.143456, 33.492985, 37.218613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089443, 33.754704, 37.877838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338715, 33.515602, 38.079567>,  <31.488277, 33.372143, 38.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338715, 33.515602, 38.079567>,  <31.089443, 33.754704, 37.877838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338715, 33.515602, 38.079567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196873, 0.504184, 0.840856,
		-0.756895, -0.623291, 0.196515,
		0.623178, -0.597751, 0.504324,
		31.525667, 33.336277, 38.230865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682005, 33.419029, 38.346691>,  <31.089443, 33.754704, 37.877838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682005, 33.419029, 38.346691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062914, 33.419159, 38.468792>,  <31.291460, 33.419239, 38.542053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062914, 33.419159, 38.468792>,  <30.682005, 33.419029, 38.346691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062914, 33.419159, 38.468792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273765, 0.443228, 0.853582,
		-0.135015, -0.896409, 0.422164,
		0.952273, 0.000327, 0.305248,
		31.348597, 33.419258, 38.560368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576176, 33.129883, 38.931507>,  <30.682005, 33.419029, 38.346691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576176, 33.129883, 38.931507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929953, 33.316353, 38.923107>,  <31.142220, 33.428234, 38.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929953, 33.316353, 38.923107>,  <30.576176, 33.129883, 38.931507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929953, 33.316353, 38.923107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198967, 0.417424, 0.886662,
		0.422110, -0.780021, 0.461941,
		0.884440, 0.466180, -0.021000,
		31.195286, 33.456207, 38.916809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840849, 32.979095, 39.577187>,  <30.576176, 33.129883, 38.931507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840849, 32.979095, 39.577187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947157, 33.341351, 39.445015>,  <31.010942, 33.558704, 39.365711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947157, 33.341351, 39.445015>,  <30.840849, 32.979095, 39.577187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947157, 33.341351, 39.445015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098910, 0.366568, 0.925119,
		0.958949, -0.213186, 0.187000,
		0.265770, 0.905638, -0.330434,
		31.026888, 33.613041, 39.345886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494787, 33.233257, 39.946110>,  <30.840849, 32.979095, 39.577187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494787, 33.233257, 39.946110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251553, 33.522774, 39.815662>,  <31.105612, 33.696484, 39.737392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251553, 33.522774, 39.815662>,  <31.494787, 33.233257, 39.946110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251553, 33.522774, 39.815662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173000, 0.280112, 0.944250,
		0.774791, 0.630605, -0.045116,
		-0.608087, 0.723792, -0.326123,
		31.069126, 33.739910, 39.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631647, 33.988632, 40.273735>,  <31.494787, 33.233257, 39.946110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631647, 33.988632, 40.273735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256893, 33.912300, 40.156551>,  <31.032040, 33.866501, 40.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256893, 33.912300, 40.156551>,  <31.631647, 33.988632, 40.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256893, 33.912300, 40.156551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337686, 0.276731, 0.899660,
		-0.090614, 0.941808, -0.323707,
		-0.936887, -0.190833, -0.292959,
		30.975826, 33.855049, 40.068665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223064, 34.574100, 40.083961>,  <31.631647, 33.988632, 40.273735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223064, 34.574100, 40.083961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109753, 34.242016, 40.276001>,  <31.041765, 34.042763, 40.391224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109753, 34.242016, 40.276001>,  <31.223064, 34.574100, 40.083961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109753, 34.242016, 40.276001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297932, 0.552021, 0.778787,
		-0.911587, 0.077575, -0.403723,
		-0.283278, -0.830214, 0.480103,
		31.024769, 33.992950, 40.420033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474155, 34.838879, 39.420033>,  <31.223064, 34.574100, 40.083961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474155, 34.838879, 39.420033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340275, 34.464867, 39.373238>,  <31.259947, 34.240459, 39.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340275, 34.464867, 39.373238>,  <31.474155, 34.838879, 39.420033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340275, 34.464867, 39.373238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659362, -0.143690, -0.737967,
		0.673215, -0.324135, 0.664619,
		-0.334700, -0.935035, -0.116988,
		31.239864, 34.184357, 39.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793060, 34.600193, 38.879238>,  <31.474155, 34.838879, 39.420033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793060, 34.600193, 38.879238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620844, 34.264835, 39.012947>,  <31.517515, 34.063622, 39.093170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620844, 34.264835, 39.012947>,  <31.793060, 34.600193, 38.879238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620844, 34.264835, 39.012947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526642, -0.534122, -0.661333,
		0.732996, -0.108690, 0.671493,
		-0.430540, -0.838391, 0.334269,
		31.491682, 34.013317, 39.113228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324051, 34.077579, 38.981487>,  <31.793060, 34.600193, 38.879238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324051, 34.077579, 38.981487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976803, 33.879223, 38.972939>,  <31.768454, 33.760208, 38.967808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976803, 33.879223, 38.972939>,  <32.324051, 34.077579, 38.981487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976803, 33.879223, 38.972939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432539, -0.734687, -0.522633,
		0.243469, -0.462952, 0.852290,
		-0.868120, -0.495893, -0.021371,
		31.716366, 33.730453, 38.966526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553188, 33.403988, 39.103561>,  <32.324051, 34.077579, 38.981487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553188, 33.403988, 39.103561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189178, 33.391617, 38.938202>,  <31.970772, 33.384193, 38.838985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189178, 33.391617, 38.938202>,  <32.553188, 33.403988, 39.103561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189178, 33.391617, 38.938202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312764, -0.705743, -0.635693,
		-0.272091, -0.707792, 0.651918,
		-0.910025, -0.030930, -0.413399,
		31.916172, 33.382339, 38.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325592, 32.669281, 39.086819>,  <32.553188, 33.403988, 39.103561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325592, 32.669281, 39.086819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090527, 32.844326, 38.814602>,  <31.949488, 32.949352, 38.651272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090527, 32.844326, 38.814602>,  <32.325592, 32.669281, 39.086819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090527, 32.844326, 38.814602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266707, -0.689327, -0.673569,
		-0.763883, -0.577339, 0.288378,
		-0.587665, 0.437616, -0.680546,
		31.914227, 32.975609, 38.610439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725712, 32.176426, 38.736221>,  <32.325592, 32.669281, 39.086819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725712, 32.176426, 38.736221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886257, 32.473820, 38.522251>,  <31.982584, 32.652256, 38.393867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886257, 32.473820, 38.522251>,  <31.725712, 32.176426, 38.736221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886257, 32.473820, 38.522251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409281, -0.668062, -0.621435,
		-0.819388, 0.030487, -0.572428,
		0.401363, 0.743481, -0.534924,
		32.006664, 32.696865, 38.361774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763714, 31.887321, 38.157654>,  <31.725712, 32.176426, 38.736221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763714, 31.887321, 38.157654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973833, 32.216347, 38.070526>,  <32.099903, 32.413761, 38.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973833, 32.216347, 38.070526>,  <31.763714, 31.887321, 38.157654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973833, 32.216347, 38.070526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551919, -0.524200, -0.648537,
		-0.647646, 0.220455, -0.729351,
		0.525300, 0.822565, -0.217823,
		32.131424, 32.463116, 38.005180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760927, 32.005852, 37.436291>,  <31.763714, 31.887321, 38.157654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760927, 32.005852, 37.436291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085854, 32.213978, 37.541679>,  <32.280807, 32.338852, 37.604912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085854, 32.213978, 37.541679>,  <31.760927, 32.005852, 37.436291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085854, 32.213978, 37.541679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545319, -0.517411, -0.659479,
		-0.206811, 0.679382, -0.704037,
		0.812315, 0.520313, 0.263474,
		32.329548, 32.370071, 37.620720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069183, 32.168282, 36.866398>,  <31.760927, 32.005852, 37.436291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069183, 32.168282, 36.866398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358620, 32.182716, 37.142109>,  <32.532284, 32.191376, 37.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358620, 32.182716, 37.142109>,  <32.069183, 32.168282, 36.866398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358620, 32.182716, 37.142109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636459, -0.421294, -0.646089,
		0.267076, 0.906206, -0.327813,
		0.723595, 0.036084, 0.689281,
		32.575699, 32.193542, 37.348892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600521, 32.548645, 36.473305>,  <32.069183, 32.168282, 36.866398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600521, 32.548645, 36.473305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760799, 32.342979, 36.776638>,  <32.856968, 32.219578, 36.958637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760799, 32.342979, 36.776638>,  <32.600521, 32.548645, 36.473305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760799, 32.342979, 36.776638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619992, -0.457230, -0.637613,
		0.674573, 0.725653, 0.135568,
		0.400700, -0.514167, 0.758335,
		32.881008, 32.188728, 37.004139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344711, 32.497467, 36.269783>,  <32.600521, 32.548645, 36.473305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344711, 32.497467, 36.269783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308266, 32.233868, 36.568428>,  <33.286400, 32.075710, 36.747616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308266, 32.233868, 36.568428>,  <33.344711, 32.497467, 36.269783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308266, 32.233868, 36.568428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660415, -0.601131, -0.449993,
		0.745353, 0.452070, 0.489982,
		-0.091115, -0.658995, 0.746609,
		33.280930, 32.036171, 36.792412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028763, 32.282570, 36.456139>,  <33.344711, 32.497467, 36.269783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028763, 32.282570, 36.456139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777401, 31.987988, 36.556335>,  <33.626583, 31.811237, 36.616451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777401, 31.987988, 36.556335>,  <34.028763, 32.282570, 36.456139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777401, 31.987988, 36.556335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536642, -0.643539, -0.545778,
		0.563141, -0.208544, 0.799614,
		-0.628401, -0.736456, 0.250489,
		33.588882, 31.767052, 36.631481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567013, 31.822908, 36.689709>,  <34.028763, 32.282570, 36.456139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567013, 31.822908, 36.689709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221470, 31.636236, 36.613861>,  <34.014145, 31.524233, 36.568352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221470, 31.636236, 36.613861>,  <34.567013, 31.822908, 36.689709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221470, 31.636236, 36.613861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483232, -0.661451, -0.573559,
		0.142247, -0.587103, 0.796916,
		-0.863859, -0.466682, -0.189618,
		33.962311, 31.496231, 36.556976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719360, 31.027870, 36.747959>,  <34.567013, 31.822908, 36.689709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719360, 31.027870, 36.747959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367165, 31.061398, 36.561325>,  <34.155846, 31.081514, 36.449345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367165, 31.061398, 36.561325>,  <34.719360, 31.027870, 36.747959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367165, 31.061398, 36.561325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312456, -0.637584, -0.704172,
		-0.356513, -0.765807, 0.535199,
		-0.880494, 0.083820, -0.466588,
		34.103016, 31.086544, 36.421349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503841, 30.363564, 36.486923>,  <34.719360, 31.027870, 36.747959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503841, 30.363564, 36.486923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279972, 30.601469, 36.256092>,  <34.145653, 30.744213, 36.117592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279972, 30.601469, 36.256092>,  <34.503841, 30.363564, 36.486923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279972, 30.601469, 36.256092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177686, -0.594040, -0.784566,
		-0.809443, -0.541637, 0.226786,
		-0.559670, 0.594765, -0.577083,
		34.112072, 30.779898, 36.082966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305454, 29.928045, 35.960339>,  <34.503841, 30.363564, 36.486923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305454, 29.928045, 35.960339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235874, 30.288084, 35.800556>,  <34.194126, 30.504108, 35.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235874, 30.288084, 35.800556>,  <34.305454, 29.928045, 35.960339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235874, 30.288084, 35.800556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192527, -0.366729, -0.910189,
		-0.965751, -0.235232, -0.109501,
		-0.173948, 0.900098, -0.399457,
		34.183689, 30.558113, 35.680717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799335, 29.765806, 35.478214>,  <34.305454, 29.928045, 35.960339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799335, 29.765806, 35.478214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988083, 30.105658, 35.384007>,  <34.101334, 30.309568, 35.327484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988083, 30.105658, 35.384007>,  <33.799335, 29.765806, 35.478214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988083, 30.105658, 35.384007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122635, -0.327779, -0.936761,
		-0.873096, 0.413150, -0.258864,
		0.471873, 0.849628, -0.235516,
		34.129646, 30.360546, 35.313351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471050, 29.866627, 34.962425>,  <33.799335, 29.765806, 35.478214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471050, 29.866627, 34.962425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800167, 30.087757, 34.909657>,  <33.997635, 30.220436, 34.877995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800167, 30.087757, 34.909657>,  <33.471050, 29.866627, 34.962425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800167, 30.087757, 34.909657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095293, -0.363011, -0.926899,
		-0.560302, 0.750071, -0.351362,
		0.822788, 0.552826, -0.131920,
		34.047005, 30.253605, 34.870079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515266, 30.069799, 34.224743>,  <33.471050, 29.866627, 34.962425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515266, 30.069799, 34.224743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891880, 30.139021, 34.340378>,  <34.117847, 30.180553, 34.409760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891880, 30.139021, 34.340378>,  <33.515266, 30.069799, 34.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891880, 30.139021, 34.340378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317544, -0.168957, -0.933070,
		-0.112626, 0.970313, -0.214030,
		0.941531, 0.173052, 0.289088,
		34.174339, 30.190937, 34.427105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812580, 30.727917, 33.838184>,  <33.515266, 30.069799, 34.224743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812580, 30.727917, 33.838184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094009, 30.471487, 33.960827>,  <34.262867, 30.317629, 34.034412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094009, 30.471487, 33.960827>,  <33.812580, 30.727917, 33.838184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094009, 30.471487, 33.960827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309168, -0.112349, -0.944348,
		0.639843, 0.759212, 0.119154,
		0.703574, -0.641073, 0.306610,
		34.305080, 30.279165, 34.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300007, 30.878925, 33.496746>,  <33.812580, 30.727917, 33.838184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300007, 30.878925, 33.496746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416603, 30.512720, 33.607647>,  <34.486561, 30.292997, 33.674187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416603, 30.512720, 33.607647>,  <34.300007, 30.878925, 33.496746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416603, 30.512720, 33.607647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189151, -0.228954, -0.954883,
		0.937686, 0.330782, 0.106433,
		0.291490, -0.915512, 0.277255,
		34.504051, 30.238066, 33.690823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938084, 30.797804, 33.289108>,  <34.300007, 30.878925, 33.496746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938084, 30.797804, 33.289108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800087, 30.422388, 33.293594>,  <34.717289, 30.197140, 33.296288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800087, 30.422388, 33.293594>,  <34.938084, 30.797804, 33.289108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800087, 30.422388, 33.293594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207447, -0.087897, -0.974289,
		0.915393, -0.333799, 0.225021,
		-0.344996, -0.938537, 0.011215,
		34.696587, 30.140827, 33.296959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518295, 30.376137, 32.973186>,  <34.938084, 30.797804, 33.289108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518295, 30.376137, 32.973186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178516, 30.165436, 32.960701>,  <34.974651, 30.039015, 32.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178516, 30.165436, 32.960701>,  <35.518295, 30.376137, 32.973186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178516, 30.165436, 32.960701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221400, -0.302093, -0.927212,
		0.478985, -0.794524, 0.373235,
		-0.849444, -0.526755, -0.031209,
		34.923683, 30.007410, 32.951340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764362, 29.643316, 32.672108>,  <35.518295, 30.376137, 32.973186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764362, 29.643316, 32.672108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365948, 29.630936, 32.638748>,  <35.126900, 29.623507, 32.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365948, 29.630936, 32.638748>,  <35.764362, 29.643316, 32.672108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365948, 29.630936, 32.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086584, -0.122354, -0.988703,
		0.020399, -0.992004, 0.124549,
		-0.996036, -0.030952, -0.083396,
		35.067139, 29.621651, 32.613728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623569, 29.115843, 32.288834>,  <35.764362, 29.643316, 32.672108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623569, 29.115843, 32.288834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288872, 29.328201, 32.235149>,  <35.088055, 29.455616, 32.202938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288872, 29.328201, 32.235149>,  <35.623569, 29.115843, 32.288834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288872, 29.328201, 32.235149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095627, -0.099657, -0.990416,
		-0.539183, -0.841557, 0.032619,
		-0.836742, 0.530897, -0.134209,
		35.037849, 29.487471, 32.194885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276527, 28.767332, 31.685934>,  <35.623569, 29.115843, 32.288834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276527, 28.767332, 31.685934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066154, 29.107220, 31.700729>,  <34.939930, 29.311152, 31.709606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066154, 29.107220, 31.700729>,  <35.276527, 28.767332, 31.685934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066154, 29.107220, 31.700729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119774, -0.030942, -0.992319,
		-0.842048, -0.526327, 0.118048,
		-0.525937, 0.849719, 0.036986,
		34.908375, 29.362135, 31.711824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781693, 28.662291, 31.248909>,  <35.276527, 28.767332, 31.685934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781693, 28.662291, 31.248909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778065, 29.062210, 31.256083>,  <34.775887, 29.302162, 31.260387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778065, 29.062210, 31.256083>,  <34.781693, 28.662291, 31.248909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778065, 29.062210, 31.256083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256535, 0.015009, -0.966418,
		-0.966492, -0.013369, 0.256347,
		-0.009072, 0.999798, 0.017936,
		34.775345, 29.362150, 31.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161198, 28.881697, 30.991646>,  <34.781693, 28.662291, 31.248909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161198, 28.881697, 30.991646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408691, 29.191391, 30.938381>,  <34.557186, 29.377207, 30.906422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408691, 29.191391, 30.938381>,  <34.161198, 28.881697, 30.991646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408691, 29.191391, 30.938381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049821, -0.130491, -0.990197,
		-0.784021, 0.619301, -0.042166,
		0.618732, 0.774234, -0.133162,
		34.594311, 29.423660, 30.898432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856956, 29.338615, 30.478785>,  <34.161198, 28.881697, 30.991646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856956, 29.338615, 30.478785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239471, 29.455475, 30.473690>,  <34.468979, 29.525591, 30.470634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239471, 29.455475, 30.473690>,  <33.856956, 29.338615, 30.478785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239471, 29.455475, 30.473690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019789, 0.021205, -0.999579,
		-0.291754, 0.956138, 0.026059,
		0.956289, 0.292147, -0.012735,
		34.526360, 29.543119, 30.469870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961693, 30.034531, 30.066862>,  <33.856956, 29.338615, 30.478785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961693, 30.034531, 30.066862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327335, 29.872940, 30.080845>,  <34.546719, 29.775986, 30.089233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327335, 29.872940, 30.080845>,  <33.961693, 30.034531, 30.066862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327335, 29.872940, 30.080845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113660, 0.172526, -0.978426,
		0.389229, 0.898354, 0.203622,
		0.914102, -0.403975, 0.034955,
		34.601566, 29.751747, 30.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434349, 30.505260, 29.869255>,  <33.961693, 30.034531, 30.066862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434349, 30.505260, 29.869255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598747, 30.145700, 29.808506>,  <34.697388, 29.929964, 29.772057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598747, 30.145700, 29.808506>,  <34.434349, 30.505260, 29.869255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598747, 30.145700, 29.808506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136872, 0.225549, -0.964569,
		0.901304, 0.375647, 0.215734,
		0.410996, -0.898898, -0.151873,
		34.722046, 29.876032, 29.762943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050354, 30.560923, 29.482403>,  <34.434349, 30.505260, 29.869255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050354, 30.560923, 29.482403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017708, 30.164991, 29.435785>,  <34.998119, 29.927433, 29.407816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017708, 30.164991, 29.435785>,  <35.050354, 30.560923, 29.482403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017708, 30.164991, 29.435785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201121, 0.098169, -0.974635,
		0.976160, -0.102988, 0.191062,
		-0.081620, -0.989826, -0.116541,
		34.993221, 29.868044, 29.400824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680031, 30.280006, 29.120934>,  <35.050354, 30.560923, 29.482403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680031, 30.280006, 29.120934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424828, 29.981558, 29.044773>,  <35.271706, 29.802488, 28.999077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424828, 29.981558, 29.044773>,  <35.680031, 30.280006, 29.120934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424828, 29.981558, 29.044773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310507, -0.023009, -0.950292,
		0.704651, -0.665414, 0.246356,
		-0.638006, -0.746120, -0.190402,
		35.233425, 29.757723, 28.987652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055439, 29.797974, 28.687742>,  <35.680031, 30.280006, 29.120934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055439, 29.797974, 28.687742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668194, 29.724163, 28.619972>,  <35.435848, 29.679876, 28.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668194, 29.724163, 28.619972>,  <36.055439, 29.797974, 28.687742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668194, 29.724163, 28.619972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165402, 0.037082, -0.985529,
		0.188141, -0.982127, -0.005378,
		-0.968114, -0.184529, -0.169423,
		35.377758, 29.668804, 28.569145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101215, 29.153215, 28.266466>,  <36.055439, 29.797974, 28.687742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101215, 29.153215, 28.266466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726646, 29.284521, 28.216911>,  <35.501904, 29.363304, 28.187180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726646, 29.284521, 28.216911>,  <36.101215, 29.153215, 28.266466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726646, 29.284521, 28.216911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147925, 0.049196, -0.987774,
		-0.318158, -0.943304, -0.094627,
		-0.936426, 0.328266, -0.123886,
		35.445717, 29.383001, 28.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856548, 28.858238, 27.604397>,  <36.101215, 29.153215, 28.266466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856548, 28.858238, 27.604397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624203, 29.176676, 27.672323>,  <35.484795, 29.367739, 27.713079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624203, 29.176676, 27.672323>,  <35.856548, 28.858238, 27.604397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624203, 29.176676, 27.672323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145059, 0.306511, -0.940749,
		-0.800974, -0.521811, -0.293521,
		-0.580861, 0.796093, 0.169814,
		35.449944, 29.415504, 27.723267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558258, 28.927647, 26.924990>,  <35.856548, 28.858238, 27.604397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558258, 28.927647, 26.924990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467209, 29.268108, 27.114189>,  <35.412579, 29.472385, 27.227709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467209, 29.268108, 27.114189>,  <35.558258, 28.927647, 26.924990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467209, 29.268108, 27.114189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194571, 0.436196, -0.878564,
		-0.954113, -0.292011, 0.066322,
		-0.227621, 0.851154, 0.472997,
		35.398922, 29.523455, 27.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853905, 29.155880, 26.651098>,  <35.558258, 28.927647, 26.924990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853905, 29.155880, 26.651098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103756, 29.436478, 26.788353>,  <35.253666, 29.604837, 26.870707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103756, 29.436478, 26.788353>,  <34.853905, 29.155880, 26.651098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103756, 29.436478, 26.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023351, 0.455982, -0.889683,
		-0.780573, 0.547708, 0.301200,
		0.624628, 0.701496, 0.343137,
		35.291145, 29.646927, 26.891294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534779, 29.717014, 26.485441>,  <34.853905, 29.155880, 26.651098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534779, 29.717014, 26.485441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922287, 29.800732, 26.538614>,  <35.154793, 29.850962, 26.570518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922287, 29.800732, 26.538614>,  <34.534779, 29.717014, 26.485441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922287, 29.800732, 26.538614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029559, 0.434829, -0.900028,
		-0.246174, 0.875854, 0.415064,
		0.968775, 0.209295, 0.132933,
		35.212921, 29.863520, 26.578495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702461, 30.353889, 26.128263>,  <34.534779, 29.717014, 26.485441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702461, 30.353889, 26.128263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054195, 30.172815, 26.187395>,  <35.265236, 30.064171, 26.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054195, 30.172815, 26.187395>,  <34.702461, 30.353889, 26.128263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054195, 30.172815, 26.187395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316594, 0.323827, -0.891574,
		0.355731, 0.830790, 0.428069,
		0.879331, -0.452685, 0.147828,
		35.317993, 30.037010, 26.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121784, 30.847466, 25.857450>,  <34.702461, 30.353889, 26.128263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121784, 30.847466, 25.857450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313114, 30.496603, 25.874426>,  <35.427910, 30.286085, 25.884611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313114, 30.496603, 25.874426>,  <35.121784, 30.847466, 25.857450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313114, 30.496603, 25.874426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313575, 0.125455, -0.941239,
		0.820292, 0.463524, 0.335063,
		0.478322, -0.877158, 0.042440,
		35.456612, 30.233456, 25.887157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675594, 30.999222, 25.508644>,  <35.121784, 30.847466, 25.857450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675594, 30.999222, 25.508644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667751, 30.599522, 25.495277>,  <35.663044, 30.359701, 25.487257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667751, 30.599522, 25.495277>,  <35.675594, 30.999222, 25.508644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667751, 30.599522, 25.495277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480084, 0.019907, -0.876997,
		0.877003, -0.033238, 0.479333,
		-0.019607, -0.999249, -0.033415,
		35.661869, 30.299747, 25.485252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401428, 30.676765, 25.394665>,  <35.675594, 30.999222, 25.508644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401428, 30.676765, 25.394665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117611, 30.430592, 25.257381>,  <35.947319, 30.282888, 25.175011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117611, 30.430592, 25.257381>,  <36.401428, 30.676765, 25.394665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117611, 30.430592, 25.257381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392608, 0.059188, -0.917800,
		0.585158, -0.785964, 0.199627,
		-0.709542, -0.615433, -0.343210,
		35.904747, 30.245962, 25.154419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680576, 30.255053, 24.763031>,  <36.401428, 30.676765, 25.394665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680576, 30.255053, 24.763031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294235, 30.164719, 24.712229>,  <36.062431, 30.110519, 24.681747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294235, 30.164719, 24.712229>,  <36.680576, 30.255053, 24.763031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294235, 30.164719, 24.712229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161984, -0.143735, -0.976269,
		0.202219, -0.963504, 0.175408,
		-0.965851, -0.225834, -0.127007,
		36.004478, 30.096968, 24.674128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714317, 29.783777, 24.246662>,  <36.680576, 30.255053, 24.763031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714317, 29.783777, 24.246662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318779, 29.842627, 24.255989>,  <36.081455, 29.877935, 24.261585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318779, 29.842627, 24.255989>,  <36.714317, 29.783777, 24.246662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318779, 29.842627, 24.255989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061948, -0.263797, -0.962587,
		-0.135465, -0.953292, 0.269968,
		-0.988844, 0.147121, 0.023319,
		36.022125, 29.886763, 24.262985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414677, 29.145752, 24.014002>,  <36.714317, 29.783777, 24.246662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414677, 29.145752, 24.014002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159256, 29.449114, 23.961731>,  <36.006004, 29.631130, 23.930368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159256, 29.449114, 23.961731>,  <36.414677, 29.145752, 24.014002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159256, 29.449114, 23.961731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090771, -0.242840, -0.965810,
		-0.764209, -0.604856, 0.223906,
		-0.638550, 0.758405, -0.130677,
		35.967690, 29.676636, 23.922527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145008, 29.014635, 23.367310>,  <36.414677, 29.145752, 24.014002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145008, 29.014635, 23.367310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034245, 29.395529, 23.418806>,  <35.967789, 29.624065, 23.449703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034245, 29.395529, 23.418806>,  <36.145008, 29.014635, 23.367310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034245, 29.395529, 23.418806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088307, 0.158631, -0.983381,
		-0.956831, -0.260936, -0.128014,
		-0.276906, 0.952234, 0.128740,
		35.951172, 29.681198, 23.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520931, 29.043671, 22.885443>,  <36.145008, 29.014635, 23.367310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520931, 29.043671, 22.885443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655804, 29.416639, 22.937431>,  <35.736729, 29.640421, 22.968624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655804, 29.416639, 22.937431>,  <35.520931, 29.043671, 22.885443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655804, 29.416639, 22.937431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201155, 0.063513, -0.977498,
		-0.919698, 0.355741, -0.166146,
		0.337184, 0.932424, 0.129972,
		35.756958, 29.696367, 22.976423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217587, 29.422846, 22.376989>,  <35.520931, 29.043671, 22.885443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217587, 29.422846, 22.376989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532169, 29.635988, 22.501923>,  <35.720917, 29.763874, 22.576883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532169, 29.635988, 22.501923>,  <35.217587, 29.422846, 22.376989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532169, 29.635988, 22.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224959, 0.223830, -0.948311,
		-0.575224, 0.816066, 0.056162,
		0.786455, 0.532857, 0.312334,
		35.768105, 29.795845, 22.595623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071831, 30.146635, 22.336323>,  <35.217587, 29.422846, 22.376989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071831, 30.146635, 22.336323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453598, 30.045498, 22.272879>,  <35.682659, 29.984816, 22.234812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453598, 30.045498, 22.272879>,  <35.071831, 30.146635, 22.336323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453598, 30.045498, 22.272879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106859, 0.206712, -0.972549,
		0.278688, 0.945167, 0.170271,
		0.954418, -0.252843, -0.158608,
		35.739922, 29.969645, 22.225296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576458, 30.575302, 21.940903>,  <35.071831, 30.146635, 22.336323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576458, 30.575302, 21.940903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597713, 30.967857, 21.867085>,  <35.610466, 31.203390, 21.822794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597713, 30.967857, 21.867085>,  <35.576458, 30.575302, 21.940903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597713, 30.967857, 21.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003436, -0.184625, -0.982803,
		-0.998581, 0.052858, -0.006438,
		0.053137, 0.981387, -0.184544,
		35.613655, 31.262274, 21.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183506, 30.644403, 21.405725>,  <35.576458, 30.575302, 21.940903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183506, 30.644403, 21.405725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426350, 30.962244, 21.407648>,  <35.572056, 31.152948, 21.408802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426350, 30.962244, 21.407648>,  <35.183506, 30.644403, 21.405725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426350, 30.962244, 21.407648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169133, -0.123311, -0.977849,
		-0.776409, 0.594476, -0.209256,
		0.607111, 0.794603, 0.004806,
		35.608482, 31.200624, 21.409090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979664, 31.092419, 20.767160>,  <35.183506, 30.644403, 21.405725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979664, 31.092419, 20.767160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348682, 31.114012, 20.919998>,  <35.570095, 31.126968, 21.011702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348682, 31.114012, 20.919998>,  <34.979664, 31.092419, 20.767160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348682, 31.114012, 20.919998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385733, -0.100804, -0.917087,
		-0.010992, 0.993441, -0.113820,
		0.922545, 0.053985, 0.382095,
		35.625446, 31.130207, 21.034626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380451, 31.533453, 20.211718>,  <34.979664, 31.092419, 20.767160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380451, 31.533453, 20.211718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598209, 31.294012, 20.446768>,  <35.728867, 31.150347, 20.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598209, 31.294012, 20.446768>,  <35.380451, 31.533453, 20.211718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598209, 31.294012, 20.446768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628121, -0.173398, -0.758550,
		0.555963, 0.782054, 0.281596,
		0.544399, -0.598602, 0.587627,
		35.761528, 31.114431, 20.623056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031013, 31.666721, 20.065990>,  <35.380451, 31.533453, 20.211718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031013, 31.666721, 20.065990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048691, 31.311644, 20.249315>,  <36.059296, 31.098597, 20.359310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048691, 31.311644, 20.249315>,  <36.031013, 31.666721, 20.065990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048691, 31.311644, 20.249315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801466, -0.242371, -0.546725,
		0.596405, 0.391482, 0.700745,
		0.044193, -0.887693, 0.458311,
		36.061947, 31.045336, 20.386808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685387, 31.583818, 20.261339>,  <36.031013, 31.666721, 20.065990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685387, 31.583818, 20.261339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521664, 31.226831, 20.185476>,  <36.423428, 31.012640, 20.139957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521664, 31.226831, 20.185476>,  <36.685387, 31.583818, 20.261339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521664, 31.226831, 20.185476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796705, -0.248297, -0.551009,
		0.444664, -0.376636, 0.812662,
		-0.409311, -0.892465, -0.189659,
		36.398869, 30.959091, 20.128578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698299, 31.749216, 21.048277>,  <36.685387, 31.583818, 20.261339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698299, 31.749216, 21.048277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321449, 31.615658, 21.036144>,  <36.095341, 31.535522, 21.028864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321449, 31.615658, 21.036144>,  <36.698299, 31.749216, 21.048277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321449, 31.615658, 21.036144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137020, 0.300879, 0.943768,
		-0.305991, 0.893301, -0.329215,
		-0.942123, -0.333893, -0.030334,
		36.038811, 31.515490, 21.027044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261253, 32.296787, 21.213015>,  <36.698299, 31.749216, 21.048277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261253, 32.296787, 21.213015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058750, 31.960699, 21.290714>,  <35.937248, 31.759047, 21.337334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058750, 31.960699, 21.290714>,  <36.261253, 32.296787, 21.213015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058750, 31.960699, 21.290714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315875, 0.390259, 0.864824,
		-0.802451, 0.376464, -0.462976,
		-0.506256, -0.840222, 0.194248,
		35.906872, 31.708633, 21.348989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617355, 32.508820, 21.427572>,  <36.261253, 32.296787, 21.213015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617355, 32.508820, 21.427572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618572, 32.134636, 21.568935>,  <35.619301, 31.910124, 21.653753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618572, 32.134636, 21.568935>,  <35.617355, 32.508820, 21.427572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618572, 32.134636, 21.568935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437785, 0.316501, 0.841530,
		-0.899075, -0.157273, -0.408570,
		0.003038, -0.935464, 0.353409,
		35.619484, 31.853996, 21.674959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066235, 32.482086, 21.888536>,  <35.617355, 32.508820, 21.427572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066235, 32.482086, 21.888536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274441, 32.152134, 21.976753>,  <35.399364, 31.954163, 22.029684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274441, 32.152134, 21.976753>,  <35.066235, 32.482086, 21.888536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274441, 32.152134, 21.976753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380623, 0.007050, 0.924703,
		-0.764324, -0.565265, -0.310299,
		0.520514, -0.824879, 0.220542,
		35.430595, 31.904671, 22.042915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576939, 32.062836, 22.179340>,  <35.066235, 32.482086, 21.888536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576939, 32.062836, 22.179340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945244, 31.974150, 22.307741>,  <35.166225, 31.920937, 22.384781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945244, 31.974150, 22.307741>,  <34.576939, 32.062836, 22.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945244, 31.974150, 22.307741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299654, 0.124951, 0.945830,
		-0.249818, -0.967072, 0.048611,
		0.920760, -0.221719, 0.321002,
		35.221474, 31.907635, 22.404041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489285, 31.642691, 22.783176>,  <34.576939, 32.062836, 22.179340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489285, 31.642691, 22.783176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864586, 31.775356, 22.822514>,  <35.089767, 31.854956, 22.846115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864586, 31.775356, 22.822514>,  <34.489285, 31.642691, 22.783176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864586, 31.775356, 22.822514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159486, 0.162446, 0.973743,
		0.306983, -0.929305, 0.205313,
		0.938257, 0.331667, 0.098343,
		35.146065, 31.874855, 22.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655750, 31.389982, 23.325636>,  <34.489285, 31.642691, 22.783176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655750, 31.389982, 23.325636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923538, 31.684978, 23.290043>,  <35.084209, 31.861977, 23.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923538, 31.684978, 23.290043>,  <34.655750, 31.389982, 23.325636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923538, 31.684978, 23.290043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053014, 0.166913, 0.984545,
		0.740947, -0.654404, 0.150840,
		0.669468, 0.737492, -0.088981,
		35.124378, 31.906227, 23.263350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068649, 31.377382, 24.027187>,  <34.655750, 31.389982, 23.325636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068649, 31.377382, 24.027187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172359, 31.720568, 23.849796>,  <35.234585, 31.926479, 23.743362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172359, 31.720568, 23.849796>,  <35.068649, 31.377382, 24.027187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172359, 31.720568, 23.849796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049143, 0.446865, 0.893251,
		0.964552, -0.253393, 0.073699,
		0.259277, 0.857965, -0.443477,
		35.250141, 31.977957, 23.716753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598602, 31.621563, 24.389990>,  <35.068649, 31.377382, 24.027187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598602, 31.621563, 24.389990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447174, 31.948441, 24.216148>,  <35.356319, 32.144569, 24.111843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447174, 31.948441, 24.216148>,  <35.598602, 31.621563, 24.389990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447174, 31.948441, 24.216148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188493, 0.391641, 0.900604,
		0.906178, 0.422858, 0.005774,
		-0.378566, 0.817196, -0.434602,
		35.333603, 32.193600, 24.085768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027882, 32.132950, 24.452238>,  <35.598602, 31.621563, 24.389990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027882, 32.132950, 24.452238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651680, 32.262547, 24.411270>,  <35.425961, 32.340305, 24.386688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651680, 32.262547, 24.411270>,  <36.027882, 32.132950, 24.452238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651680, 32.262547, 24.411270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044090, 0.415229, 0.908648,
		0.336922, 0.850067, -0.404808,
		-0.940500, 0.323991, -0.102421,
		35.369530, 32.359745, 24.380545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008560, 32.801983, 24.678598>,  <36.027882, 32.132950, 24.452238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008560, 32.801983, 24.678598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627728, 32.680019, 24.688126>,  <35.399227, 32.606842, 24.693842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627728, 32.680019, 24.688126>,  <36.008560, 32.801983, 24.678598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627728, 32.680019, 24.688126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126544, 0.463638, 0.876942,
		-0.278430, 0.831908, -0.480006,
		-0.952084, -0.304909, 0.023817,
		35.342102, 32.588547, 24.695271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780499, 33.408306, 25.025034>,  <36.008560, 32.801983, 24.678598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780499, 33.408306, 25.025034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484322, 33.140591, 25.049681>,  <35.306614, 32.979961, 25.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484322, 33.140591, 25.049681>,  <35.780499, 33.408306, 25.025034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484322, 33.140591, 25.049681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229930, 0.338382, 0.912485,
		-0.631564, 0.661478, -0.404442,
		-0.740445, -0.669287, 0.061616,
		35.262188, 32.939804, 25.068165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215374, 33.773651, 25.333824>,  <35.780499, 33.408306, 25.025034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215374, 33.773651, 25.333824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163116, 33.381260, 25.391266>,  <35.131760, 33.145824, 25.425732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163116, 33.381260, 25.391266>,  <35.215374, 33.773651, 25.333824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163116, 33.381260, 25.391266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087774, 0.155722, 0.983893,
		-0.987536, 0.115937, -0.106449,
		-0.130646, -0.980974, 0.143605,
		35.123924, 33.086967, 25.434347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677731, 33.738914, 25.797764>,  <35.215374, 33.773651, 25.333824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677731, 33.738914, 25.797764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850639, 33.378246, 25.802303>,  <34.954384, 33.161846, 25.805027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850639, 33.378246, 25.802303>,  <34.677731, 33.738914, 25.797764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850639, 33.378246, 25.802303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085202, -0.028310, 0.995962,
		-0.897709, -0.431495, -0.089061,
		0.432273, -0.901671, 0.011350,
		34.980320, 33.107746, 25.805708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344910, 33.494240, 26.275999>,  <34.677731, 33.738914, 25.797764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344910, 33.494240, 26.275999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644493, 33.229248, 26.281343>,  <34.824245, 33.070251, 26.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644493, 33.229248, 26.281343>,  <34.344910, 33.494240, 26.275999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644493, 33.229248, 26.281343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192642, -0.198407, 0.961001,
		-0.633992, -0.722327, -0.276220,
		0.748961, -0.662479, 0.013362,
		34.869183, 33.030506, 26.285353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119335, 32.894848, 26.643970>,  <34.344910, 33.494240, 26.275999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119335, 32.894848, 26.643970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518635, 32.873909, 26.654961>,  <34.758217, 32.861347, 26.661554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518635, 32.873909, 26.654961>,  <34.119335, 32.894848, 26.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518635, 32.873909, 26.654961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031968, -0.087052, 0.995691,
		-0.049723, -0.994828, -0.088573,
		0.998251, -0.052340, 0.027474,
		34.818111, 32.858204, 26.663202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273212, 32.508266, 27.204453>,  <34.119335, 32.894848, 26.643970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273212, 32.508266, 27.204453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620426, 32.695557, 27.138388>,  <34.828754, 32.807930, 27.098749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620426, 32.695557, 27.138388>,  <34.273212, 32.508266, 27.204453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620426, 32.695557, 27.138388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092435, 0.174438, 0.980320,
		0.487825, -0.866218, 0.108137,
		0.868034, 0.468229, -0.165164,
		34.880836, 32.836025, 27.088839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677341, 32.159149, 27.695896>,  <34.273212, 32.508266, 27.204453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677341, 32.159149, 27.695896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867767, 32.504726, 27.630226>,  <34.982025, 32.712074, 27.590824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867767, 32.504726, 27.630226>,  <34.677341, 32.159149, 27.695896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867767, 32.504726, 27.630226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094696, 0.135242, 0.986277,
		0.874295, -0.485082, -0.017427,
		0.476068, 0.863948, -0.164177,
		35.010590, 32.763912, 27.580973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172577, 32.183350, 28.199755>,  <34.677341, 32.159149, 27.695896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172577, 32.183350, 28.199755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097309, 32.557560, 28.080162>,  <35.052147, 32.782085, 28.008406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097309, 32.557560, 28.080162>,  <35.172577, 32.183350, 28.199755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097309, 32.557560, 28.080162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047857, 0.295326, 0.954197,
		0.980970, 0.193860, -0.010800,
		-0.188170, 0.935522, -0.298983,
		35.040859, 32.838215, 27.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614994, 32.541794, 28.511765>,  <35.172577, 32.183350, 28.199755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614994, 32.541794, 28.511765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310528, 32.779770, 28.408472>,  <35.127850, 32.922554, 28.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310528, 32.779770, 28.408472>,  <35.614994, 32.541794, 28.511765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310528, 32.779770, 28.408472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019557, 0.376924, 0.926038,
		0.648268, 0.709915, -0.275264,
		-0.761161, 0.594937, -0.258231,
		35.082180, 32.958252, 28.331003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646667, 33.184113, 28.864029>,  <35.614994, 32.541794, 28.511765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646667, 33.184113, 28.864029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258820, 33.172512, 28.766869>,  <35.026112, 33.165550, 28.708572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258820, 33.172512, 28.766869>,  <35.646667, 33.184113, 28.864029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258820, 33.172512, 28.766869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226224, 0.484145, 0.845238,
		0.093086, 0.874507, -0.475996,
		-0.969617, -0.029002, -0.242901,
		34.967934, 33.163811, 28.693998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376938, 33.818172, 29.132938>,  <35.646667, 33.184113, 28.864029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376938, 33.818172, 29.132938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035961, 33.621792, 29.061041>,  <34.831375, 33.503963, 29.017902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035961, 33.621792, 29.061041>,  <35.376938, 33.818172, 29.132938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035961, 33.621792, 29.061041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436500, 0.479098, 0.761533,
		-0.287759, 0.727623, -0.622704,
		-0.852445, -0.490948, -0.179742,
		34.780228, 33.474506, 29.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881142, 34.194969, 29.458303>,  <35.376938, 33.818172, 29.132938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881142, 34.194969, 29.458303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673477, 33.859459, 29.392660>,  <34.548878, 33.658154, 29.353275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673477, 33.859459, 29.392660>,  <34.881142, 34.194969, 29.458303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673477, 33.859459, 29.392660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619937, 0.237390, 0.747880,
		-0.588344, 0.490006, -0.643230,
		-0.519162, -0.838773, -0.164106,
		34.517727, 33.607826, 29.343428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077057, 34.341415, 29.372833>,  <34.881142, 34.194969, 29.458303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077057, 34.341415, 29.372833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168186, 33.974514, 29.503517>,  <34.222862, 33.754372, 29.581926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168186, 33.974514, 29.503517>,  <34.077057, 34.341415, 29.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168186, 33.974514, 29.503517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568762, 0.146978, 0.809263,
		-0.790321, -0.370186, -0.488216,
		0.227821, -0.917257, 0.326708,
		34.236534, 33.699337, 29.601530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542679, 34.235691, 29.645815>,  <34.077057, 34.341415, 29.372833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542679, 34.235691, 29.645815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757351, 33.943039, 29.813955>,  <33.886154, 33.767448, 29.914839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757351, 33.943039, 29.813955>,  <33.542679, 34.235691, 29.645815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757351, 33.943039, 29.813955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551115, 0.073292, 0.831204,
		-0.638939, -0.677755, -0.363876,
		0.536684, -0.731626, 0.420350,
		33.918358, 33.723553, 29.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984909, 33.820560, 30.005785>,  <33.542679, 34.235691, 29.645815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984909, 33.820560, 30.005785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348602, 33.749268, 30.156267>,  <33.566818, 33.706493, 30.246557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348602, 33.749268, 30.156267>,  <32.984909, 33.820560, 30.005785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348602, 33.749268, 30.156267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363115, 0.102393, 0.926101,
		-0.203579, -0.978647, 0.028382,
		0.909232, -0.178229, 0.376206,
		33.621372, 33.695801, 30.269129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802410, 33.302437, 30.459234>,  <32.984909, 33.820560, 30.005785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802410, 33.302437, 30.459234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142216, 33.482475, 30.569317>,  <33.346100, 33.590500, 30.635366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142216, 33.482475, 30.569317>,  <32.802410, 33.302437, 30.459234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142216, 33.482475, 30.569317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290141, -0.037080, 0.956265,
		0.440614, -0.892211, 0.099091,
		0.849516, 0.450095, 0.275205,
		33.397072, 33.617504, 30.651878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940399, 32.912491, 31.082241>,  <32.802410, 33.302437, 30.459234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940399, 32.912491, 31.082241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121254, 33.266617, 31.125668>,  <33.229767, 33.479092, 31.151724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121254, 33.266617, 31.125668>,  <32.940399, 32.912491, 31.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121254, 33.266617, 31.125668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151061, -0.043957, 0.987547,
		0.879065, -0.462904, 0.113863,
		0.452134, 0.885318, 0.108568,
		33.256893, 33.532211, 31.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475246, 32.796341, 31.545717>,  <32.940399, 32.912491, 31.082241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475246, 32.796341, 31.545717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439777, 33.194729, 31.550997>,  <33.418495, 33.433762, 31.554165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439777, 33.194729, 31.550997>,  <33.475246, 32.796341, 31.545717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439777, 33.194729, 31.550997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205358, -0.031246, 0.978188,
		0.974662, 0.084026, 0.207302,
		-0.088671, 0.995974, 0.013199,
		33.413177, 33.493523, 31.554956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768867, 32.964989, 32.139126>,  <33.475246, 32.796341, 31.545717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768867, 32.964989, 32.139126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532887, 33.272987, 32.041916>,  <33.391296, 33.457787, 31.983589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532887, 33.272987, 32.041916>,  <33.768867, 32.964989, 32.139126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532887, 33.272987, 32.041916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171437, 0.174670, 0.969587,
		0.789028, 0.613674, 0.028959,
		-0.589952, 0.769997, -0.243026,
		33.355900, 33.503986, 31.969007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008640, 33.532558, 32.594975>,  <33.768867, 32.964989, 32.139126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008640, 33.532558, 32.594975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623901, 33.609093, 32.516747>,  <33.393059, 33.655014, 32.469810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623901, 33.609093, 32.516747>,  <34.008640, 33.532558, 32.594975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623901, 33.609093, 32.516747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169629, 0.143819, 0.974957,
		0.214667, 0.970931, -0.105876,
		-0.961844, 0.191332, -0.195572,
		33.335350, 33.666492, 32.458076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783443, 34.217041, 32.920742>,  <34.008640, 33.532558, 32.594975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783443, 34.217041, 32.920742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440220, 34.022190, 32.855698>,  <33.234287, 33.905277, 32.816673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440220, 34.022190, 32.855698>,  <33.783443, 34.217041, 32.920742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440220, 34.022190, 32.855698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310980, 0.240879, 0.919385,
		-0.408690, 0.839454, -0.358175,
		-0.858058, -0.487129, -0.162609,
		33.182804, 33.876053, 32.806915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336826, 34.727123, 33.249878>,  <33.783443, 34.217041, 32.920742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336826, 34.727123, 33.249878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111359, 34.400772, 33.198315>,  <32.976078, 34.204960, 33.167377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111359, 34.400772, 33.198315>,  <33.336826, 34.727123, 33.249878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111359, 34.400772, 33.198315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474086, 0.191752, 0.859345,
		-0.676405, 0.545498, -0.494882,
		-0.563666, -0.815882, -0.128911,
		32.942261, 34.156006, 33.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612076, 34.898224, 33.341927>,  <33.336826, 34.727123, 33.249878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612076, 34.898224, 33.341927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644447, 34.506847, 33.417923>,  <32.663872, 34.272022, 33.463520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644447, 34.506847, 33.417923>,  <32.612076, 34.898224, 33.341927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644447, 34.506847, 33.417923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370846, 0.147370, 0.916927,
		-0.925161, -0.144665, -0.350925,
		0.080932, -0.978445, 0.189990,
		32.668728, 34.213314, 33.474918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059174, 34.858288, 33.710030>,  <32.612076, 34.898224, 33.341927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059174, 34.858288, 33.710030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294498, 34.548306, 33.802399>,  <32.435696, 34.362316, 33.857819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294498, 34.548306, 33.802399>,  <32.059174, 34.858288, 33.710030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294498, 34.548306, 33.802399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148999, 0.176790, 0.972905,
		-0.794787, -0.606781, -0.011460,
		0.588314, -0.774960, 0.230920,
		32.470993, 34.315819, 33.871674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736437, 34.508762, 34.161022>,  <32.059174, 34.858288, 33.710030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736437, 34.508762, 34.161022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118896, 34.407822, 34.220486>,  <32.348373, 34.347260, 34.256165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118896, 34.407822, 34.220486>,  <31.736437, 34.508762, 34.161022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118896, 34.407822, 34.220486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146917, 0.025858, 0.988811,
		-0.253371, -0.967290, -0.012351,
		0.956148, -0.252351, 0.148663,
		32.405743, 34.332115, 34.265083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756527, 34.029495, 34.814404>,  <31.736437, 34.508762, 34.161022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756527, 34.029495, 34.814404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141529, 34.128258, 34.769463>,  <32.372532, 34.187515, 34.742496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141529, 34.128258, 34.769463>,  <31.756527, 34.029495, 34.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141529, 34.128258, 34.769463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124598, -0.034499, 0.991607,
		0.240958, -0.968425, -0.063969,
		0.962504, 0.246906, -0.112351,
		32.430279, 34.202328, 34.735756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124424, 33.613121, 35.317719>,  <31.756527, 34.029495, 34.814404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124424, 33.613121, 35.317719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371841, 33.917095, 35.237812>,  <32.520290, 34.099480, 35.189869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371841, 33.917095, 35.237812>,  <32.124424, 33.613121, 35.317719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371841, 33.917095, 35.237812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065261, 0.203677, 0.976861,
		0.783035, -0.617269, 0.076389,
		0.618544, 0.759931, -0.199770,
		32.557404, 34.145073, 35.177879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828911, 33.580994, 35.822128>,  <32.124424, 33.613121, 35.317719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828911, 33.580994, 35.822128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763821, 33.957283, 35.703091>,  <32.724766, 34.183056, 35.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763821, 33.957283, 35.703091>,  <32.828911, 33.580994, 35.822128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763821, 33.957283, 35.703091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166650, 0.323485, 0.931442,
		0.972495, 0.101980, -0.209412,
		-0.162730, 0.940722, -0.297593,
		32.715000, 34.239498, 35.613811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400364, 33.961315, 35.981358>,  <32.828911, 33.580994, 35.822128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400364, 33.961315, 35.981358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117649, 34.242092, 35.946201>,  <32.948021, 34.410557, 35.925106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117649, 34.242092, 35.946201>,  <33.400364, 33.961315, 35.981358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117649, 34.242092, 35.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287075, 0.398146, 0.871245,
		0.646559, 0.590555, -0.482915,
		-0.706789, 0.701943, -0.087891,
		32.905613, 34.452675, 35.919834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733162, 34.522648, 36.246288>,  <33.400364, 33.961315, 35.981358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733162, 34.522648, 36.246288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342800, 34.608757, 36.260471>,  <33.108582, 34.660423, 36.268982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342800, 34.608757, 36.260471>,  <33.733162, 34.522648, 36.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342800, 34.608757, 36.260471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128371, 0.435171, 0.891150,
		0.176414, 0.874233, -0.452322,
		-0.975909, 0.215277, 0.035456,
		33.050026, 34.673340, 36.271107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707478, 35.088367, 36.612106>,  <33.733162, 34.522648, 36.246288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707478, 35.088367, 36.612106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321922, 34.995213, 36.663769>,  <33.090588, 34.939320, 36.694767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321922, 34.995213, 36.663769>,  <33.707478, 35.088367, 36.612106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321922, 34.995213, 36.663769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036029, 0.366488, 0.929725,
		-0.263852, 0.900806, -0.344863,
		-0.963890, -0.232884, 0.129154,
		33.032757, 34.925346, 36.702515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446720, 34.920147, 36.964970>,  <33.707478, 35.088367, 36.612106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446720, 34.920147, 36.964970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803371, 34.830391, 37.122272>,  <35.017361, 34.776539, 37.216656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803371, 34.830391, 37.122272>,  <34.446720, 34.920147, 36.964970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803371, 34.830391, 37.122272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445381, 0.278411, -0.850954,
		0.081456, 0.933883, 0.348177,
		0.891628, -0.224387, 0.393256,
		35.070858, 34.763073, 37.240250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863392, 35.442287, 36.832344>,  <34.446720, 34.920147, 36.964970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863392, 35.442287, 36.832344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121723, 35.139023, 36.868324>,  <35.276722, 34.957062, 36.889912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121723, 35.139023, 36.868324>,  <34.863392, 35.442287, 36.832344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121723, 35.139023, 36.868324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391332, 0.227556, -0.891671,
		0.655565, 0.611067, 0.443657,
		0.645828, -0.758166, 0.089952,
		35.315472, 34.911572, 36.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473377, 35.678619, 36.545624>,  <34.863392, 35.442287, 36.832344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473377, 35.678619, 36.545624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509136, 35.280563, 36.529091>,  <35.530594, 35.041729, 36.519173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509136, 35.280563, 36.529091>,  <35.473377, 35.678619, 36.545624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509136, 35.280563, 36.529091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361900, 0.071117, -0.929500,
		0.927920, 0.068141, 0.366498,
		0.089401, -0.995138, -0.041331,
		35.535957, 34.982021, 36.516693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122829, 35.570557, 36.164539>,  <35.473377, 35.678619, 36.545624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122829, 35.570557, 36.164539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959915, 35.205482, 36.151150>,  <35.862167, 34.986439, 36.143116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959915, 35.205482, 36.151150>,  <36.122829, 35.570557, 36.164539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959915, 35.205482, 36.151150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450093, -0.168688, -0.876904,
		0.794693, -0.372214, 0.479499,
		-0.407282, -0.912689, -0.033475,
		35.837730, 34.931675, 36.141106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663521, 35.063816, 36.059971>,  <36.122829, 35.570557, 36.164539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663521, 35.063816, 36.059971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308216, 34.927990, 35.936234>,  <36.095036, 34.846497, 35.861992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308216, 34.927990, 35.936234>,  <36.663521, 35.063816, 36.059971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308216, 34.927990, 35.936234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413039, -0.295793, -0.861339,
		0.200979, -0.892862, 0.402994,
		-0.888260, -0.339563, -0.309339,
		36.041737, 34.826122, 35.843433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814320, 34.404812, 35.886833>,  <36.663521, 35.063816, 36.059971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814320, 34.404812, 35.886833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471642, 34.491581, 35.699638>,  <36.266033, 34.543644, 35.587322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471642, 34.491581, 35.699638>,  <36.814320, 34.404812, 35.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471642, 34.491581, 35.699638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390751, -0.319329, -0.863333,
		-0.336719, -0.922482, 0.188805,
		-0.856700, 0.216925, -0.467984,
		36.214630, 34.556660, 35.559242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566208, 33.767567, 35.494415>,  <36.814320, 34.404812, 35.886833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566208, 33.767567, 35.494415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398338, 34.088169, 35.324020>,  <36.297619, 34.280529, 35.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398338, 34.088169, 35.324020>,  <36.566208, 33.767567, 35.494415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398338, 34.088169, 35.324020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410949, -0.250681, -0.876516,
		-0.809319, -0.542907, -0.224174,
		-0.419670, 0.801505, -0.425988,
		36.272438, 34.328621, 35.196224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308292, 33.524651, 34.830818>,  <36.566208, 33.767567, 35.494415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308292, 33.524651, 34.830818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324841, 33.923431, 34.804386>,  <36.334770, 34.162701, 34.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324841, 33.923431, 34.804386>,  <36.308292, 33.524651, 34.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324841, 33.923431, 34.804386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279840, -0.075054, -0.957108,
		-0.959155, 0.021101, -0.282093,
		0.041368, 0.996956, -0.066084,
		36.337250, 34.222519, 34.784561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029789, 33.625069, 34.228783>,  <36.308292, 33.524651, 34.830818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029789, 33.625069, 34.228783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222572, 33.970333, 34.289001>,  <36.338242, 34.177490, 34.325134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222572, 33.970333, 34.289001>,  <36.029789, 33.625069, 34.228783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222572, 33.970333, 34.289001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279516, 0.011380, -0.960074,
		-0.830412, 0.504799, -0.235783,
		0.481961, 0.863162, 0.150549,
		36.367161, 34.229282, 34.334167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825996, 34.040539, 33.663429>,  <36.029789, 33.625069, 34.228783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825996, 34.040539, 33.663429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157757, 34.237370, 33.769218>,  <36.356815, 34.355469, 33.832691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157757, 34.237370, 33.769218>,  <35.825996, 34.040539, 33.663429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157757, 34.237370, 33.769218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320659, -0.031674, -0.946665,
		-0.457455, 0.869975, -0.184060,
		0.829405, 0.492077, 0.264476,
		36.406578, 34.384995, 33.848560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899178, 34.659008, 33.237255>,  <35.825996, 34.040539, 33.663429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899178, 34.659008, 33.237255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268543, 34.566334, 33.359650>,  <36.490162, 34.510731, 33.433086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268543, 34.566334, 33.359650>,  <35.899178, 34.659008, 33.237255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268543, 34.566334, 33.359650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349892, 0.180528, -0.919231,
		0.157732, 0.955894, 0.247766,
		0.923416, -0.231683, 0.305984,
		36.545567, 34.496830, 33.451447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248741, 35.251797, 32.907562>,  <35.899178, 34.659008, 33.237255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248741, 35.251797, 32.907562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524490, 34.983154, 33.016163>,  <36.689938, 34.821968, 33.081322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524490, 34.983154, 33.016163>,  <36.248741, 35.251797, 32.907562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524490, 34.983154, 33.016163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372613, 0.007336, -0.927958,
		0.621230, 0.740872, 0.255307,
		0.689371, -0.671606, 0.271501,
		36.731300, 34.781673, 33.097614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953705, 35.524323, 32.880581>,  <36.248741, 35.251797, 32.907562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953705, 35.524323, 32.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003136, 35.128395, 32.852325>,  <37.032795, 34.890839, 32.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003136, 35.128395, 32.852325>,  <36.953705, 35.524323, 32.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003136, 35.128395, 32.852325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350685, 0.110150, -0.929993,
		0.928304, 0.090158, 0.360727,
		0.123580, -0.989817, -0.070636,
		37.040211, 34.831451, 32.831135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539433, 35.435062, 32.452148>,  <36.953705, 35.524323, 32.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539433, 35.435062, 32.452148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376766, 35.069641, 32.454926>,  <37.279167, 34.850388, 32.456593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376766, 35.069641, 32.454926>,  <37.539433, 35.435062, 32.452148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376766, 35.069641, 32.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321403, -0.150180, -0.934958,
		0.855175, -0.377982, 0.354691,
		-0.406665, -0.913551, 0.006946,
		37.254768, 34.795574, 32.457008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971989, 34.938103, 32.177322>,  <37.539433, 35.435062, 32.452148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971989, 34.938103, 32.177322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604671, 34.793808, 32.112076>,  <37.384281, 34.707233, 32.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604671, 34.793808, 32.112076>,  <37.971989, 34.938103, 32.177322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604671, 34.793808, 32.112076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266424, -0.258316, -0.928596,
		0.292841, -0.896183, 0.333318,
		-0.918293, -0.360735, -0.163119,
		37.329182, 34.685589, 32.063141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073986, 34.301449, 31.927376>,  <37.971989, 34.938103, 32.177322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073986, 34.301449, 31.927376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696785, 34.372650, 31.814909>,  <37.470463, 34.415371, 31.747429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696785, 34.372650, 31.814909>,  <38.073986, 34.301449, 31.927376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696785, 34.372650, 31.814909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209999, -0.337115, -0.917744,
		-0.258144, -0.924483, 0.280522,
		-0.943007, 0.178001, -0.281165,
		37.413883, 34.426052, 31.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902985, 33.707375, 31.469858>,  <38.073986, 34.301449, 31.927376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902985, 33.707375, 31.469858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645828, 33.993916, 31.361401>,  <37.491535, 34.165840, 31.296326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645828, 33.993916, 31.361401>,  <37.902985, 33.707375, 31.469858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645828, 33.993916, 31.361401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079534, -0.289646, -0.953824,
		-0.761814, -0.634773, 0.129237,
		-0.642895, 0.716357, -0.271143,
		37.452961, 34.208824, 31.280058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517609, 33.302437, 31.044100>,  <37.902985, 33.707375, 31.469858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517609, 33.302437, 31.044100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431797, 33.686535, 30.972649>,  <37.380310, 33.916992, 30.929777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431797, 33.686535, 30.972649>,  <37.517609, 33.302437, 31.044100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431797, 33.686535, 30.972649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253031, -0.231284, -0.939405,
		-0.943372, -0.156332, 0.292589,
		-0.214531, 0.960244, -0.178630,
		37.367439, 33.974609, 30.919060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907780, 33.230644, 30.737467>,  <37.517609, 33.302437, 31.044100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907780, 33.230644, 30.737467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048019, 33.593113, 30.642864>,  <37.132164, 33.810593, 30.586102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048019, 33.593113, 30.642864>,  <36.907780, 33.230644, 30.737467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048019, 33.593113, 30.642864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279506, -0.139782, -0.949914,
		-0.893842, 0.399148, 0.204272,
		0.350603, 0.906169, -0.236507,
		37.153202, 33.864964, 30.571913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424664, 33.422195, 30.222422>,  <36.907780, 33.230644, 30.737467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424664, 33.422195, 30.222422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737602, 33.661179, 30.152008>,  <36.925365, 33.804569, 30.109760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737602, 33.661179, 30.152008>,  <36.424664, 33.422195, 30.222422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737602, 33.661179, 30.152008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226707, 0.009910, -0.973913,
		-0.580123, 0.801842, 0.143200,
		0.782344, 0.597453, -0.176034,
		36.972305, 33.840416, 30.099197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134834, 34.015991, 29.712425>,  <36.424664, 33.422195, 30.222422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134834, 34.015991, 29.712425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533348, 33.982529, 29.704279>,  <36.772457, 33.962452, 29.699392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533348, 33.982529, 29.704279>,  <36.134834, 34.015991, 29.712425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533348, 33.982529, 29.704279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004176, 0.189287, -0.981913,
		0.085996, 0.978352, 0.188235,
		0.996287, -0.083654, -0.020363,
		36.832233, 33.957432, 29.698170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380875, 34.534538, 29.235226>,  <36.134834, 34.015991, 29.712425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380875, 34.534538, 29.235226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700397, 34.294823, 29.256227>,  <36.892113, 34.150993, 29.268829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700397, 34.294823, 29.256227>,  <36.380875, 34.534538, 29.235226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700397, 34.294823, 29.256227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091424, 0.034668, -0.995208,
		0.594594, 0.799784, 0.082483,
		0.798811, -0.599286, 0.052506,
		36.940041, 34.115036, 29.271978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875816, 34.629383, 28.692816>,  <36.380875, 34.534538, 29.235226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875816, 34.629383, 28.692816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000832, 34.263611, 28.795681>,  <37.075840, 34.044147, 28.857399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000832, 34.263611, 28.795681>,  <36.875816, 34.629383, 28.692816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000832, 34.263611, 28.795681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314116, -0.156001, -0.936480,
		0.896465, 0.373466, 0.238482,
		0.312540, -0.914433, 0.257161,
		37.094593, 33.989281, 28.872829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482689, 34.513561, 28.319353>,  <36.875816, 34.629383, 28.692816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482689, 34.513561, 28.319353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403660, 34.130726, 28.404154>,  <37.356243, 33.901024, 28.455034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403660, 34.130726, 28.404154>,  <37.482689, 34.513561, 28.319353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403660, 34.130726, 28.404154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298268, -0.264702, -0.917044,
		0.933810, -0.117953, 0.337767,
		-0.197576, -0.957089, 0.212000,
		37.344387, 33.843597, 28.467754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947273, 34.208488, 27.991800>,  <37.482689, 34.513561, 28.319353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947273, 34.208488, 27.991800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695663, 33.902973, 28.049694>,  <37.544697, 33.719662, 28.084431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695663, 33.902973, 28.049694>,  <37.947273, 34.208488, 27.991800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695663, 33.902973, 28.049694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301979, -0.411638, -0.859862,
		0.716335, -0.497168, 0.489580,
		-0.629026, -0.763792, 0.144736,
		37.506954, 33.673836, 28.093115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381142, 33.582230, 27.854067>,  <37.947273, 34.208488, 27.991800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381142, 33.582230, 27.854067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002914, 33.453968, 27.831886>,  <37.775978, 33.377010, 27.818577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002914, 33.453968, 27.831886>,  <38.381142, 33.582230, 27.854067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002914, 33.453968, 27.831886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231361, -0.542600, -0.807501,
		0.228843, -0.776378, 0.587254,
		-0.945570, -0.320659, -0.055453,
		37.719242, 33.357769, 27.815250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444836, 32.890236, 27.748743>,  <38.381142, 33.582230, 27.854067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444836, 32.890236, 27.748743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093880, 33.023335, 27.610485>,  <37.883305, 33.103191, 27.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093880, 33.023335, 27.610485>,  <38.444836, 32.890236, 27.748743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093880, 33.023335, 27.610485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097761, -0.581321, -0.807780,
		-0.469711, -0.742529, 0.477516,
		-0.877391, 0.332741, -0.345643,
		37.830662, 33.123158, 27.506792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000854, 32.328270, 27.672195>,  <38.444836, 32.890236, 27.748743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000854, 32.328270, 27.672195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895306, 32.613533, 27.412418>,  <37.831978, 32.784691, 27.256552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895306, 32.613533, 27.412418>,  <38.000854, 32.328270, 27.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895306, 32.613533, 27.412418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103994, -0.648345, -0.754210,
		-0.958936, -0.266552, 0.096914,
		-0.263870, 0.713161, -0.649441,
		37.816143, 32.827480, 27.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542648, 31.998053, 27.236687>,  <38.000854, 32.328270, 27.672195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542648, 31.998053, 27.236687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639740, 32.317448, 27.016325>,  <37.697994, 32.509087, 26.884108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639740, 32.317448, 27.016325>,  <37.542648, 31.998053, 27.236687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639740, 32.317448, 27.016325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100825, -0.585578, -0.804321,
		-0.964840, 0.139689, -0.222646,
		0.242731, 0.798489, -0.550905,
		37.712559, 32.556995, 26.851053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234138, 31.850321, 26.590485>,  <37.542648, 31.998053, 27.236687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234138, 31.850321, 26.590485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506859, 32.137226, 26.532955>,  <37.670490, 32.309368, 26.498438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506859, 32.137226, 26.532955>,  <37.234138, 31.850321, 26.590485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506859, 32.137226, 26.532955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235186, -0.401080, -0.885338,
		-0.692706, 0.569795, -0.442145,
		0.681796, 0.717265, -0.143823,
		37.711399, 32.352406, 26.489809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081596, 32.110828, 25.919762>,  <37.234138, 31.850321, 26.590485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081596, 32.110828, 25.919762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471786, 32.170998, 25.984032>,  <37.705902, 32.207100, 26.022593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471786, 32.170998, 25.984032>,  <37.081596, 32.110828, 25.919762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471786, 32.170998, 25.984032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197508, -0.276104, -0.940615,
		-0.097125, 0.949284, -0.299042,
		0.975478, 0.150421, 0.160674,
		37.764431, 32.216125, 26.032234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330975, 32.122471, 25.260389>,  <37.081596, 32.110828, 25.919762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330975, 32.122471, 25.260389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675297, 32.126072, 25.463932>,  <37.881889, 32.128231, 25.586058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675297, 32.126072, 25.463932>,  <37.330975, 32.122471, 25.260389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675297, 32.126072, 25.463932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470940, -0.393166, -0.789706,
		0.192957, 0.919423, -0.342678,
		0.860804, 0.009002, 0.508858,
		37.933537, 32.128773, 25.616589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843113, 32.547333, 24.775856>,  <37.330975, 32.122471, 25.260389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843113, 32.547333, 24.775856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053009, 32.311119, 25.021105>,  <38.178947, 32.169392, 25.168255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053009, 32.311119, 25.021105>,  <37.843113, 32.547333, 24.775856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053009, 32.311119, 25.021105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545300, -0.319894, -0.774800,
		0.653680, 0.740904, 0.154157,
		0.524739, -0.590533, 0.613123,
		38.210430, 32.133961, 25.205042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592438, 32.561348, 24.502113>,  <37.843113, 32.547333, 24.775856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592438, 32.561348, 24.502113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568146, 32.235771, 24.733217>,  <38.553570, 32.040424, 24.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568146, 32.235771, 24.733217>,  <38.592438, 32.561348, 24.502113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568146, 32.235771, 24.733217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725466, -0.433554, -0.534537,
		0.685573, 0.386685, 0.616818,
		-0.060726, -0.813945, 0.577760,
		38.549927, 31.991589, 24.906546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201778, 32.327114, 24.469217>,  <38.592438, 32.561348, 24.502113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201778, 32.327114, 24.469217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014675, 32.007256, 24.619822>,  <38.902412, 31.815340, 24.710184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014675, 32.007256, 24.619822>,  <39.201778, 32.327114, 24.469217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014675, 32.007256, 24.619822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681032, -0.597612, -0.423150,
		0.563378, 0.058482, 0.824127,
		-0.467761, -0.799650, 0.376510,
		38.874348, 31.767361, 24.732775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720104, 31.877672, 24.696808>,  <39.201778, 32.327114, 24.469217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720104, 31.877672, 24.696808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417736, 31.618559, 24.658939>,  <39.236317, 31.463091, 24.636217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417736, 31.618559, 24.658939>,  <39.720104, 31.877672, 24.696808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417736, 31.618559, 24.658939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632700, -0.685735, -0.359804,
		0.168154, -0.331882, 0.928212,
		-0.755920, -0.647782, -0.094672,
		39.190960, 31.424225, 24.630537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859200, 31.104553, 25.057831>,  <39.720104, 31.877672, 24.696808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859200, 31.104553, 25.057831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615532, 31.098330, 24.740675>,  <39.469334, 31.094595, 24.550381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615532, 31.098330, 24.740675>,  <39.859200, 31.104553, 25.057831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615532, 31.098330, 24.740675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588317, -0.679307, -0.438663,
		-0.531790, -0.733689, 0.422965,
		-0.609166, -0.015561, -0.792890,
		39.432781, 31.093660, 24.502808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915493, 30.314960, 24.776968>,  <39.859200, 31.104553, 25.057831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915493, 30.314960, 24.776968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736271, 30.515898, 24.481159>,  <39.628738, 30.636461, 24.303673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736271, 30.515898, 24.481159>,  <39.915493, 30.314960, 24.776968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736271, 30.515898, 24.481159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531446, -0.515515, -0.672168,
		-0.718896, -0.694185, -0.035990,
		-0.448055, 0.502345, -0.739524,
		39.601852, 30.666601, 24.259302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750076, 30.222916, 24.125692>,  <39.915493, 30.314960, 24.776968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750076, 30.222916, 24.125692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822910, 29.837523, 24.204224>,  <39.866611, 29.606287, 24.251343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822910, 29.837523, 24.204224>,  <39.750076, 30.222916, 24.125692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822910, 29.837523, 24.204224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018266, 0.202948, 0.979019,
		-0.983113, -0.174678, 0.054553,
		0.182085, -0.963483, 0.196330,
		39.877537, 29.548477, 24.263123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245274, 30.008917, 24.743879>,  <39.750076, 30.222916, 24.125692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245274, 30.008917, 24.743879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540516, 29.739100, 24.738337>,  <39.717659, 29.577209, 24.735010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540516, 29.739100, 24.738337>,  <39.245274, 30.008917, 24.743879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540516, 29.739100, 24.738337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053721, 0.038283, 0.997822,
		-0.672545, -0.737241, 0.064494,
		0.738104, -0.674545, -0.013858,
		39.761948, 29.536736, 24.734179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044720, 29.658388, 25.248663>,  <39.245274, 30.008917, 24.743879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044720, 29.658388, 25.248663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429688, 29.570707, 25.184544>,  <39.660667, 29.518099, 25.146072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429688, 29.570707, 25.184544>,  <39.044720, 29.658388, 25.248663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429688, 29.570707, 25.184544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185705, 0.100570, 0.977445,
		-0.198139, -0.970482, 0.137498,
		0.962421, -0.219204, -0.160296,
		39.718414, 29.504946, 25.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111366, 29.141552, 25.699450>,  <39.044720, 29.658388, 25.248663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111366, 29.141552, 25.699450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470688, 29.297468, 25.618347>,  <39.686283, 29.391018, 25.569685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470688, 29.297468, 25.618347>,  <39.111366, 29.141552, 25.699450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470688, 29.297468, 25.618347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164126, 0.130371, 0.977786,
		0.407566, -0.911628, 0.053138,
		0.898305, 0.389791, -0.202757,
		39.740181, 29.414406, 25.557520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572617, 28.868937, 26.219223>,  <39.111366, 29.141552, 25.699450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572617, 28.868937, 26.219223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741943, 29.200960, 26.074001>,  <39.843540, 29.400173, 25.986868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741943, 29.200960, 26.074001>,  <39.572617, 28.868937, 26.219223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741943, 29.200960, 26.074001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128941, 0.341454, 0.931012,
		0.896760, -0.440924, 0.037514,
		0.423315, 0.830058, -0.363056,
		39.868938, 29.449978, 25.965084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228489, 28.973824, 26.636448>,  <39.572617, 28.868937, 26.219223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228489, 28.973824, 26.636448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144131, 29.327261, 26.469217>,  <40.093517, 29.539324, 26.368879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144131, 29.327261, 26.469217>,  <40.228489, 28.973824, 26.636448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144131, 29.327261, 26.469217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075210, 0.411762, 0.908183,
		0.974611, 0.222976, -0.020384,
		-0.210897, 0.883592, -0.418077,
		40.080860, 29.592339, 26.343794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577858, 29.536549, 27.015341>,  <40.228489, 28.973824, 26.636448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577858, 29.536549, 27.015341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298668, 29.756689, 26.832064>,  <40.131153, 29.888773, 26.722097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298668, 29.756689, 26.832064>,  <40.577858, 29.536549, 27.015341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298668, 29.756689, 26.832064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232810, 0.430686, 0.871957,
		0.677217, 0.715280, -0.172484,
		-0.697980, 0.550349, -0.458192,
		40.089275, 29.921793, 26.694607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791565, 30.219934, 27.313046>,  <40.577858, 29.536549, 27.015341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791565, 30.219934, 27.313046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421783, 30.259918, 27.165865>,  <40.199913, 30.283909, 27.077557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421783, 30.259918, 27.165865>,  <40.791565, 30.219934, 27.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421783, 30.259918, 27.165865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240927, 0.594820, 0.766905,
		0.295522, 0.797620, -0.525803,
		-0.924457, 0.099957, -0.367950,
		40.144447, 30.289906, 27.055479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617943, 30.922997, 27.330673>,  <40.791565, 30.219934, 27.313046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617943, 30.922997, 27.330673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273975, 30.718832, 27.329332>,  <40.067593, 30.596333, 27.328527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273975, 30.718832, 27.329332>,  <40.617943, 30.922997, 27.330673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273975, 30.718832, 27.329332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293549, 0.489169, 0.821306,
		-0.417567, 0.707243, -0.570479,
		-0.859923, -0.510413, -0.003350,
		40.015999, 30.565708, 27.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113052, 31.358290, 27.409790>,  <40.617943, 30.922997, 27.330673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113052, 31.358290, 27.409790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939751, 31.022429, 27.540802>,  <39.835770, 30.820911, 27.619410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939751, 31.022429, 27.540802>,  <40.113052, 31.358290, 27.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939751, 31.022429, 27.540802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234450, 0.455893, 0.858600,
		-0.870245, 0.295200, -0.394373,
		-0.433250, -0.839654, 0.327529,
		39.809776, 30.770533, 27.639061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484119, 31.608402, 27.724527>,  <40.113052, 31.358290, 27.409790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484119, 31.608402, 27.724527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496078, 31.249094, 27.899899>,  <39.503254, 31.033510, 28.005121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496078, 31.249094, 27.899899>,  <39.484119, 31.608402, 27.724527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496078, 31.249094, 27.899899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305074, 0.409495, 0.859793,
		-0.951859, -0.159461, -0.261794,
		0.029900, -0.898268, 0.438429,
		39.505047, 30.979614, 28.031427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804688, 31.571321, 28.000574>,  <39.484119, 31.608402, 27.724527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804688, 31.571321, 28.000574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983089, 31.272303, 28.197453>,  <39.090130, 31.092892, 28.315580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983089, 31.272303, 28.197453>,  <38.804688, 31.571321, 28.000574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983089, 31.272303, 28.197453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608984, 0.149548, 0.778957,
		-0.655913, -0.647156, -0.388544,
		0.446001, -0.747545, 0.492198,
		39.116890, 31.048038, 28.345112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292633, 31.135540, 28.379051>,  <38.804688, 31.571321, 28.000574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292633, 31.135540, 28.379051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644436, 31.064140, 28.555506>,  <38.855518, 31.021301, 28.661379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644436, 31.064140, 28.555506>,  <38.292633, 31.135540, 28.379051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644436, 31.064140, 28.555506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446511, 0.011068, 0.894709,
		-0.164587, -0.983878, -0.069967,
		0.879510, -0.178499, 0.441134,
		38.908291, 31.010592, 28.687845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166531, 30.569788, 28.912922>,  <38.292633, 31.135540, 28.379051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166531, 30.569788, 28.912922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507942, 30.755638, 29.007242>,  <38.712791, 30.867149, 29.063835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507942, 30.755638, 29.007242>,  <38.166531, 30.569788, 28.912922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507942, 30.755638, 29.007242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252865, -0.026311, 0.967144,
		0.455566, -0.885115, 0.095030,
		0.853533, 0.464628, 0.235801,
		38.764004, 30.895027, 29.077982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355774, 30.289551, 29.486858>,  <38.166531, 30.569788, 28.912922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355774, 30.289551, 29.486858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566216, 30.629694, 29.490940>,  <38.692482, 30.833780, 29.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566216, 30.629694, 29.490940>,  <38.355774, 30.289551, 29.486858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566216, 30.629694, 29.490940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132617, 0.070187, 0.988679,
		0.840015, -0.521504, 0.149698,
		0.526107, 0.850357, 0.010202,
		38.724049, 30.884802, 29.494001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915119, 30.275826, 29.975166>,  <38.355774, 30.289551, 29.486858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915119, 30.275826, 29.975166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835999, 30.663498, 29.916433>,  <38.788528, 30.896103, 29.881193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835999, 30.663498, 29.916433>,  <38.915119, 30.275826, 29.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835999, 30.663498, 29.916433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135547, 0.121309, 0.983316,
		0.970826, 0.214401, 0.107375,
		-0.197798, 0.969183, -0.146831,
		38.776661, 30.954252, 29.872385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301598, 30.580009, 30.570616>,  <38.915119, 30.275826, 29.975166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301598, 30.580009, 30.570616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052773, 30.861917, 30.434181>,  <38.903477, 31.031063, 30.352320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052773, 30.861917, 30.434181>,  <39.301598, 30.580009, 30.570616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052773, 30.861917, 30.434181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263460, 0.221822, 0.938821,
		0.737314, 0.673864, 0.047693,
		-0.622058, 0.704771, -0.341089,
		38.866154, 31.073349, 30.331854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457748, 31.155571, 30.990313>,  <39.301598, 30.580009, 30.570616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457748, 31.155571, 30.990313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095879, 31.203308, 30.826691>,  <38.878757, 31.231951, 30.728518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095879, 31.203308, 30.826691>,  <39.457748, 31.155571, 30.990313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095879, 31.203308, 30.826691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374417, 0.235642, 0.896820,
		0.203418, 0.964485, -0.168495,
		-0.904673, 0.119341, -0.409053,
		38.824478, 31.239111, 30.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319500, 31.733404, 31.233004>,  <39.457748, 31.155571, 30.990313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319500, 31.733404, 31.233004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966831, 31.608009, 31.091934>,  <38.755230, 31.532772, 31.007292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966831, 31.608009, 31.091934>,  <39.319500, 31.733404, 31.233004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966831, 31.608009, 31.091934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458371, 0.391554, 0.797860,
		-0.112029, 0.865107, -0.488916,
		-0.881672, -0.313489, -0.352675,
		38.702332, 31.513962, 30.986132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849548, 32.280300, 31.261362>,  <39.319500, 31.733404, 31.233004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849548, 32.280300, 31.261362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608517, 31.961090, 31.258385>,  <38.463898, 31.769564, 31.256598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608517, 31.961090, 31.258385>,  <38.849548, 32.280300, 31.261362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608517, 31.961090, 31.258385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438537, 0.323312, 0.838543,
		-0.666770, 0.508555, -0.544784,
		-0.602581, -0.798023, -0.007446,
		38.427742, 31.721684, 31.256151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231815, 32.673550, 31.440084>,  <38.849548, 32.280300, 31.261362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231815, 32.673550, 31.440084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179398, 32.279221, 31.481998>,  <38.147945, 32.042622, 31.507147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179398, 32.279221, 31.481998>,  <38.231815, 32.673550, 31.440084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179398, 32.279221, 31.481998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478638, 0.155475, 0.864137,
		-0.868177, 0.063090, -0.492227,
		-0.131047, -0.985823, 0.104783,
		38.140083, 31.983473, 31.513433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409077, 32.548855, 31.516605>,  <38.231815, 32.673550, 31.440084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409077, 32.548855, 31.516605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616589, 32.239861, 31.663103>,  <37.741096, 32.054466, 31.751001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616589, 32.239861, 31.663103>,  <37.409077, 32.548855, 31.516605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616589, 32.239861, 31.663103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445553, 0.121312, 0.886998,
		-0.729622, -0.623339, -0.281248,
		0.518782, -0.772484, 0.366242,
		37.772224, 32.008114, 31.772976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951576, 32.179893, 32.051197>,  <37.409077, 32.548855, 31.516605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951576, 32.179893, 32.051197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306149, 32.036709, 32.168579>,  <37.518890, 31.950800, 32.239006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306149, 32.036709, 32.168579>,  <36.951576, 32.179893, 32.051197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306149, 32.036709, 32.168579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220369, 0.231159, 0.947630,
		-0.407046, -0.904672, 0.126022,
		0.886426, -0.357958, 0.293454,
		37.572075, 31.929321, 32.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836575, 31.849920, 32.686501>,  <36.951576, 32.179893, 32.051197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836575, 31.849920, 32.686501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230049, 31.920818, 32.674240>,  <37.466133, 31.963356, 32.666885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230049, 31.920818, 32.674240>,  <36.836575, 31.849920, 32.686501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230049, 31.920818, 32.674240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006586, 0.134799, 0.990851,
		0.179756, -0.974891, 0.131433,
		0.983689, 0.177246, -0.030651,
		37.525158, 31.973991, 32.665047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144661, 31.429417, 33.177898>,  <36.836575, 31.849920, 32.686501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144661, 31.429417, 33.177898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382782, 31.747778, 33.133804>,  <37.525654, 31.938795, 33.107346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382782, 31.747778, 33.133804>,  <37.144661, 31.429417, 33.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382782, 31.747778, 33.133804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083136, 0.197472, 0.976777,
		0.799191, -0.572310, 0.183723,
		0.595300, 0.795905, -0.110239,
		37.561371, 31.986549, 33.100731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729294, 31.281073, 33.636478>,  <37.144661, 31.429417, 33.177898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729294, 31.281073, 33.636478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736992, 31.673666, 33.560249>,  <37.741611, 31.909222, 33.514511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736992, 31.673666, 33.560249>,  <37.729294, 31.281073, 33.636478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736992, 31.673666, 33.560249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276726, 0.177938, 0.944331,
		0.960756, -0.070909, -0.268178,
		0.019243, 0.981484, -0.190577,
		37.742764, 31.968111, 33.503075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329121, 31.476021, 33.882587>,  <37.729294, 31.281073, 33.636478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329121, 31.476021, 33.882587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105740, 31.806080, 33.848499>,  <37.971710, 32.004116, 33.828045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105740, 31.806080, 33.848499>,  <38.329121, 31.476021, 33.882587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105740, 31.806080, 33.848499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340747, 0.321846, 0.883350,
		0.756320, 0.464272, -0.460902,
		-0.558454, 0.825146, -0.085220,
		37.938202, 32.053623, 33.822933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773952, 32.010876, 34.012466>,  <38.329121, 31.476021, 33.882587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773952, 32.010876, 34.012466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423843, 32.199043, 34.057388>,  <38.213779, 32.311943, 34.084343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423843, 32.199043, 34.057388>,  <38.773952, 32.010876, 34.012466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423843, 32.199043, 34.057388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359020, 0.476390, 0.802594,
		0.324050, 0.742807, -0.585858,
		-0.875269, 0.470416, 0.112308,
		38.161263, 32.340168, 34.091080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906429, 32.801605, 34.081898>,  <38.773952, 32.010876, 34.012466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906429, 32.801605, 34.081898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551056, 32.728428, 34.250290>,  <38.337833, 32.684521, 34.351326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551056, 32.728428, 34.250290>,  <38.906429, 32.801605, 34.081898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551056, 32.728428, 34.250290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309839, 0.437662, 0.844069,
		-0.338661, 0.880332, -0.332150,
		-0.888430, -0.182940, 0.420980,
		38.284527, 32.673546, 34.376583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732567, 33.460674, 34.265583>,  <38.906429, 32.801605, 34.081898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732567, 33.460674, 34.265583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543419, 33.185307, 34.485573>,  <38.429928, 33.020088, 34.617569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543419, 33.185307, 34.485573>,  <38.732567, 33.460674, 34.265583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543419, 33.185307, 34.485573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334559, 0.437153, 0.834846,
		-0.815146, 0.578775, 0.023599,
		-0.472872, -0.688416, 0.549978,
		38.401558, 32.978783, 34.650566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527908, 33.817913, 34.912300>,  <38.732567, 33.460674, 34.265583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527908, 33.817913, 34.912300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432983, 33.444733, 35.020580>,  <38.376030, 33.220825, 35.085548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432983, 33.444733, 35.020580>,  <38.527908, 33.817913, 34.912300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432983, 33.444733, 35.020580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147882, 0.240721, 0.959262,
		-0.960112, 0.267675, 0.080841,
		-0.237311, -0.932954, 0.270703,
		38.361790, 33.164848, 35.101791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988304, 33.797127, 35.467335>,  <38.527908, 33.817913, 34.912300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988304, 33.797127, 35.467335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178188, 33.445732, 35.488892>,  <38.292118, 33.234894, 35.501827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178188, 33.445732, 35.488892>,  <37.988304, 33.797127, 35.467335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178188, 33.445732, 35.488892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167986, 0.150546, 0.974226,
		-0.863960, -0.453425, 0.219040,
		0.474714, -0.878488, 0.053897,
		38.320602, 33.182186, 35.505062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791889, 33.508430, 36.133759>,  <37.988304, 33.797127, 35.467335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791889, 33.508430, 36.133759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147537, 33.357761, 36.029766>,  <38.360928, 33.267361, 35.967373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147537, 33.357761, 36.029766>,  <37.791889, 33.508430, 36.133759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147537, 33.357761, 36.029766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356329, 0.213226, 0.909706,
		-0.287225, -0.901474, 0.323801,
		0.889119, -0.376670, -0.259977,
		38.414272, 33.244759, 35.951775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850952, 33.035572, 36.680164>,  <37.791889, 33.508430, 36.133759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850952, 33.035572, 36.680164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217991, 33.084515, 36.528881>,  <38.438213, 33.113880, 36.438110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217991, 33.084515, 36.528881>,  <37.850952, 33.035572, 36.680164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217991, 33.084515, 36.528881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377719, 0.028073, 0.925495,
		0.123859, -0.992089, -0.020457,
		0.917599, 0.122358, -0.378208,
		38.493271, 33.121223, 36.415417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312714, 32.551262, 36.977810>,  <37.850952, 33.035572, 36.680164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312714, 32.551262, 36.977810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559731, 32.839111, 36.850822>,  <38.707943, 33.011822, 36.774632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559731, 32.839111, 36.850822>,  <38.312714, 32.551262, 36.977810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559731, 32.839111, 36.850822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515157, -0.065058, 0.854623,
		0.594350, -0.691314, -0.410893,
		0.617545, 0.719620, -0.317467,
		38.744995, 33.054996, 36.755581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912861, 32.335060, 37.207214>,  <38.312714, 32.551262, 36.977810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912861, 32.335060, 37.207214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020126, 32.706535, 37.104736>,  <39.084484, 32.929420, 37.043251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020126, 32.706535, 37.104736>,  <38.912861, 32.335060, 37.207214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020126, 32.706535, 37.104736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654243, 0.019647, 0.756029,
		0.707145, -0.370352, -0.602316,
		0.268163, 0.928684, -0.256194,
		39.100574, 32.985142, 37.027878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651474, 32.346699, 37.240124>,  <38.912861, 32.335060, 37.207214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651474, 32.346699, 37.240124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499680, 32.714203, 37.283691>,  <39.408604, 32.934708, 37.309834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499680, 32.714203, 37.283691>,  <39.651474, 32.346699, 37.240124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499680, 32.714203, 37.283691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594528, 0.151957, 0.789586,
		0.708893, 0.364390, -0.603896,
		-0.379484, 0.918765, 0.108918,
		39.385834, 32.989834, 37.316368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216480, 32.730434, 37.618629>,  <39.651474, 32.346699, 37.240124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216480, 32.730434, 37.618629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865032, 32.918430, 37.652405>,  <39.654163, 33.031227, 37.672668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865032, 32.918430, 37.652405>,  <40.216480, 32.730434, 37.618629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865032, 32.918430, 37.652405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297732, 0.400950, 0.866369,
		0.373332, 0.786351, -0.492216,
		-0.878624, 0.469991, 0.084434,
		39.601444, 33.059429, 37.677734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345573, 33.276260, 37.900761>,  <40.216480, 32.730434, 37.618629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345573, 33.276260, 37.900761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963051, 33.195072, 37.984932>,  <39.733536, 33.146358, 38.035435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963051, 33.195072, 37.984932>,  <40.345573, 33.276260, 37.900761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963051, 33.195072, 37.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156570, 0.252313, 0.954895,
		-0.246907, 0.946120, -0.209510,
		-0.956307, -0.202967, 0.210432,
		39.676159, 33.134182, 38.048061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023117, 33.851658, 38.286621>,  <40.345573, 33.276260, 37.900761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023117, 33.851658, 38.286621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780231, 33.544926, 38.369812>,  <39.634499, 33.360886, 38.419727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780231, 33.544926, 38.369812>,  <40.023117, 33.851658, 38.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780231, 33.544926, 38.369812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146953, 0.148853, 0.977879,
		-0.780827, 0.624349, 0.022301,
		-0.607219, -0.766831, 0.207979,
		39.598064, 33.314877, 38.432205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462818, 34.097454, 38.712875>,  <40.023117, 33.851658, 38.286621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462818, 34.097454, 38.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548798, 33.711491, 38.773220>,  <39.600384, 33.479912, 38.809425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548798, 33.711491, 38.773220>,  <39.462818, 34.097454, 38.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548798, 33.711491, 38.773220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125689, 0.180515, 0.975508,
		-0.968504, -0.190720, 0.160079,
		0.214945, -0.964904, 0.150858,
		39.613281, 33.422020, 38.818478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152172, 33.889805, 39.434376>,  <39.462818, 34.097454, 38.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152172, 33.889805, 39.434376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455982, 33.654243, 39.323879>,  <39.638268, 33.512905, 39.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455982, 33.654243, 39.323879>,  <39.152172, 33.889805, 39.434376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455982, 33.654243, 39.323879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369787, 0.041526, 0.928188,
		-0.535146, -0.807133, 0.249311,
		0.759524, -0.588908, -0.276244,
		39.683838, 33.477570, 39.241005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207691, 33.157085, 39.817909>,  <39.152172, 33.889805, 39.434376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207691, 33.157085, 39.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566811, 33.278122, 39.689915>,  <39.782284, 33.350742, 39.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566811, 33.278122, 39.689915>,  <39.207691, 33.157085, 39.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566811, 33.278122, 39.689915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375884, -0.147893, 0.914789,
		0.229485, -0.941576, -0.246518,
		0.897802, 0.302592, -0.319984,
		39.836151, 33.368900, 39.593918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644138, 32.623360, 40.146374>,  <39.207691, 33.157085, 39.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644138, 32.623360, 40.146374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844391, 32.961750, 40.072956>,  <39.964542, 33.164783, 40.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844391, 32.961750, 40.072956>,  <39.644138, 32.623360, 40.146374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844391, 32.961750, 40.072956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320844, 0.015590, 0.947004,
		0.804008, -0.532986, -0.263623,
		0.500630, 0.845981, -0.183540,
		39.994579, 33.215546, 40.017895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984661, 32.412052, 39.502434>,  <39.644138, 32.623360, 40.146374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984661, 32.412052, 39.502434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328396, 32.456120, 39.702198>,  <40.534637, 32.482559, 39.822056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328396, 32.456120, 39.702198>,  <39.984661, 32.412052, 39.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328396, 32.456120, 39.702198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380433, -0.514921, 0.768197,
		0.341787, -0.850129, -0.400577,
		0.859332, 0.110167, 0.499410,
		40.586197, 32.489170, 39.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280640, 31.808941, 39.792446>,  <39.984661, 32.412052, 39.502434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280640, 31.808941, 39.792446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449371, 32.088486, 40.023495>,  <40.550610, 32.256214, 40.162125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449371, 32.088486, 40.023495>,  <40.280640, 31.808941, 39.792446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449371, 32.088486, 40.023495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356880, -0.457672, 0.814354,
		0.833484, -0.549662, 0.056351,
		0.421830, 0.698862, 0.577626,
		40.575920, 32.298145, 40.196781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682774, 31.497721, 40.314350>,  <40.280640, 31.808941, 39.792446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682774, 31.497721, 40.314350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589661, 31.857389, 40.462570>,  <40.533794, 32.073189, 40.551502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589661, 31.857389, 40.462570>,  <40.682774, 31.497721, 40.314350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589661, 31.857389, 40.462570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176408, -0.413734, 0.893143,
		0.956396, 0.142539, 0.254930,
		-0.232781, 0.899170, 0.370549,
		40.519825, 32.127140, 40.573734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123203, 31.592312, 40.744110>,  <40.682774, 31.497721, 40.314350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123203, 31.592312, 40.744110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831703, 31.831890, 40.876888>,  <40.656803, 31.975637, 40.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831703, 31.831890, 40.876888>,  <41.123203, 31.592312, 40.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831703, 31.831890, 40.876888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041451, -0.522439, 0.851669,
		0.683525, 0.606893, 0.405554,
		-0.728749, 0.598948, 0.331944,
		40.613079, 32.011574, 40.976471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337181, 32.058037, 41.266716>,  <41.123203, 31.592312, 40.744110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337181, 32.058037, 41.266716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961605, 31.926497, 41.307224>,  <40.736259, 31.847572, 41.331528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961605, 31.926497, 41.307224>,  <41.337181, 32.058037, 41.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961605, 31.926497, 41.307224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286816, -0.585392, 0.758322,
		-0.190092, 0.741062, 0.643966,
		-0.938936, -0.328851, 0.101271,
		40.679924, 31.827841, 41.337605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227917, 32.163017, 41.905712>,  <41.337181, 32.058037, 41.266716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227917, 32.163017, 41.905712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974678, 31.883438, 41.772652>,  <40.822735, 31.715691, 41.692818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974678, 31.883438, 41.772652>,  <41.227917, 32.163017, 41.905712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974678, 31.883438, 41.772652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308902, -0.622163, 0.719369,
		-0.709765, 0.352676, 0.609798,
		-0.633098, -0.698951, -0.332647,
		40.784748, 31.673754, 41.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408398, 31.644829, 42.293472>,  <41.227917, 32.163017, 41.905712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408398, 31.644829, 42.293472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092701, 31.486929, 42.105316>,  <40.903282, 31.392189, 41.992424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092701, 31.486929, 42.105316>,  <41.408398, 31.644829, 42.293472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092701, 31.486929, 42.105316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077711, -0.824052, 0.561158,
		-0.609141, 0.406337, 0.681056,
		-0.789245, -0.394750, -0.470387,
		40.855927, 31.368504, 41.964199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983517, 31.507730, 42.785831>,  <41.408398, 31.644829, 42.293472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983517, 31.507730, 42.785831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893658, 31.286844, 42.464684>,  <40.839741, 31.154312, 42.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893658, 31.286844, 42.464684>,  <40.983517, 31.507730, 42.785831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893658, 31.286844, 42.464684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036852, -0.828151, 0.559293,
		-0.973743, 0.096057, 0.206393,
		-0.224648, -0.552214, -0.802866,
		40.826263, 31.121180, 42.223824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470894, 30.977682, 43.052650>,  <40.983517, 31.507730, 42.785831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470894, 30.977682, 43.052650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670063, 30.846512, 42.731518>,  <40.789566, 30.767809, 42.538837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670063, 30.846512, 42.731518>,  <40.470894, 30.977682, 43.052650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670063, 30.846512, 42.731518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139215, -0.883520, 0.447227,
		-0.855975, -0.334451, -0.394271,
		0.497922, -0.327927, -0.802831,
		40.819439, 30.748135, 42.490669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206562, 30.273119, 42.774712>,  <40.470894, 30.977682, 43.052650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206562, 30.273119, 42.774712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595737, 30.307846, 42.689053>,  <40.829243, 30.328682, 42.637657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595737, 30.307846, 42.689053>,  <40.206562, 30.273119, 42.774712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595737, 30.307846, 42.689053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159944, -0.921873, 0.352941,
		-0.166772, -0.377640, -0.910810,
		0.972937, 0.086818, -0.214144,
		40.887619, 30.333891, 42.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372734, 29.599312, 42.881214>,  <40.206562, 30.273119, 42.774712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372734, 29.599312, 42.881214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731522, 29.776144, 42.882530>,  <40.946793, 29.882244, 42.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731522, 29.776144, 42.882530>,  <40.372734, 29.599312, 42.881214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731522, 29.776144, 42.882530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342791, -0.700178, 0.626294,
		0.279178, -0.560638, -0.779580,
		0.896969, 0.442080, 0.003292,
		41.000614, 29.908768, 42.883518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823017, 29.080961, 42.896889>,  <40.372734, 29.599312, 42.881214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823017, 29.080961, 42.896889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041039, 29.382435, 43.043793>,  <41.171852, 29.563318, 43.131935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041039, 29.382435, 43.043793>,  <40.823017, 29.080961, 42.896889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041039, 29.382435, 43.043793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332884, -0.596579, 0.730262,
		0.769484, -0.275778, -0.576056,
		0.545053, 0.753685, 0.367256,
		41.204556, 29.608540, 43.153969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427193, 28.768488, 43.106503>,  <40.823017, 29.080961, 42.896889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427193, 28.768488, 43.106503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400124, 29.110043, 43.312916>,  <41.383881, 29.314976, 43.436764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400124, 29.110043, 43.312916>,  <41.427193, 28.768488, 43.106503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400124, 29.110043, 43.312916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199744, -0.495155, 0.845532,
		0.977508, 0.160299, -0.137048,
		-0.067677, 0.853889, 0.516037,
		41.379822, 29.366209, 43.467728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852398, 28.706753, 43.634899>,  <41.427193, 28.768488, 43.106503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852398, 28.706753, 43.634899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677670, 29.023441, 43.805714>,  <41.572834, 29.213455, 43.908203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677670, 29.023441, 43.805714>,  <41.852398, 28.706753, 43.634899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677670, 29.023441, 43.805714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192725, -0.381332, 0.904126,
		0.878660, 0.477243, 0.013989,
		-0.436822, 0.791723, 0.427038,
		41.546623, 29.260958, 43.933826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343727, 28.962774, 44.269676>,  <41.852398, 28.706753, 43.634899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343727, 28.962774, 44.269676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964291, 29.081778, 44.312889>,  <41.736629, 29.153179, 44.338818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964291, 29.081778, 44.312889>,  <42.343727, 28.962774, 44.269676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964291, 29.081778, 44.312889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035283, -0.239789, 0.970184,
		0.314540, 0.924116, 0.216964,
		-0.948588, 0.297507, 0.108029,
		41.679714, 29.171030, 44.345299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340504, 29.354948, 44.882767>,  <42.343727, 28.962774, 44.269676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340504, 29.354948, 44.882767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972446, 29.207899, 44.828823>,  <41.751610, 29.119669, 44.796455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972446, 29.207899, 44.828823>,  <42.340504, 29.354948, 44.882767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972446, 29.207899, 44.828823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049038, -0.449869, 0.891747,
		-0.388495, 0.813924, 0.431972,
		-0.920145, -0.367622, -0.134859,
		41.696404, 29.097612, 44.788364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201248, 29.283688, 45.534538>,  <42.340504, 29.354948, 44.882767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201248, 29.283688, 45.534538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906818, 29.077782, 45.358715>,  <41.730160, 28.954239, 45.253220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906818, 29.077782, 45.358715>,  <42.201248, 29.283688, 45.534538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906818, 29.077782, 45.358715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090607, -0.718456, 0.689646,
		-0.670809, 0.467803, 0.575478,
		-0.736074, -0.514763, -0.439561,
		41.685997, 28.923353, 45.226849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160469, 28.906673, 46.207226>,  <42.201248, 29.283688, 45.534538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160469, 28.906673, 46.207226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870758, 29.146244, 46.343876>,  <41.696930, 29.289986, 46.425865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870758, 29.146244, 46.343876>,  <42.160469, 28.906673, 46.207226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870758, 29.146244, 46.343876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621909, -0.781400, 0.051408,
		0.297734, -0.175225, 0.938430,
		-0.724281, 0.598924, 0.341623,
		41.653473, 29.325922, 46.446362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598293, 28.367874, 46.136501>,  <42.160469, 28.906673, 46.207226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598293, 28.367874, 46.136501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964497, 28.239655, 46.039265>,  <42.184219, 28.162724, 45.980923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964497, 28.239655, 46.039265>,  <41.598293, 28.367874, 46.136501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964497, 28.239655, 46.039265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023629, -0.560359, 0.827913,
		-0.401603, -0.763705, -0.505440,
		0.915509, -0.320549, -0.243087,
		42.239151, 28.143490, 45.966339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203167, 28.307903, 45.479912>,  <41.598293, 28.367874, 46.136501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203167, 28.307903, 45.479912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324005, 28.679512, 45.565388>,  <41.396507, 28.902477, 45.616673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324005, 28.679512, 45.565388>,  <41.203167, 28.307903, 45.479912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324005, 28.679512, 45.565388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542600, 0.351880, -0.762736,
		-0.783790, 0.114469, 0.610386,
		0.302092, 0.929019, 0.213689,
		41.414631, 28.958218, 45.629494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573101, 28.674963, 45.260033>,  <41.203167, 28.307903, 45.479912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573101, 28.674963, 45.260033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914623, 28.881273, 45.231785>,  <41.119537, 29.005058, 45.214836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914623, 28.881273, 45.231785>,  <40.573101, 28.674963, 45.260033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914623, 28.881273, 45.231785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211296, 0.219371, -0.952487,
		-0.475777, 0.828163, 0.296282,
		0.853809, 0.515774, -0.070616,
		41.170765, 29.036005, 45.210602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448219, 28.841135, 44.615292>,  <40.573101, 28.674963, 45.260033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448219, 28.841135, 44.615292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798244, 29.009823, 44.710297>,  <41.008259, 29.111036, 44.767300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798244, 29.009823, 44.710297>,  <40.448219, 28.841135, 44.615292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798244, 29.009823, 44.710297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082299, 0.353937, -0.931641,
		-0.476957, 0.834794, 0.275011,
		0.875065, 0.421720, 0.237515,
		41.060764, 29.136339, 44.781551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432629, 29.604229, 44.578323>,  <40.448219, 28.841135, 44.615292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432629, 29.604229, 44.578323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808743, 29.482672, 44.516987>,  <41.034412, 29.409737, 44.480186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808743, 29.482672, 44.516987>,  <40.432629, 29.604229, 44.578323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808743, 29.482672, 44.516987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000697, 0.448761, -0.893652,
		0.340386, 0.840394, 0.421752,
		0.940286, -0.303893, -0.153338,
		41.090828, 29.391504, 44.470985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770626, 30.229145, 44.315971>,  <40.432629, 29.604229, 44.578323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770626, 30.229145, 44.315971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017761, 29.933989, 44.207310>,  <41.166042, 29.756895, 44.142113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017761, 29.933989, 44.207310>,  <40.770626, 30.229145, 44.315971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017761, 29.933989, 44.207310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142586, 0.444893, -0.884160,
		0.773271, 0.507532, 0.380084,
		0.617836, -0.737890, -0.271656,
		41.203114, 29.712622, 44.125813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286682, 30.552704, 44.028210>,  <40.770626, 30.229145, 44.315971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286682, 30.552704, 44.028210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286514, 30.181602, 43.878929>,  <41.286415, 29.958942, 43.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286514, 30.181602, 43.878929>,  <41.286682, 30.552704, 44.028210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286514, 30.181602, 43.878929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123575, 0.370289, -0.920660,
		0.992335, -0.046502, 0.114492,
		-0.000417, -0.927752, -0.373197,
		41.286388, 29.903276, 43.766972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876244, 30.585680, 43.575016>,  <41.286682, 30.552704, 44.028210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876244, 30.585680, 43.575016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674316, 30.259821, 43.460819>,  <41.553158, 30.064304, 43.392303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674316, 30.259821, 43.460819>,  <41.876244, 30.585680, 43.575016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674316, 30.259821, 43.460819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076140, 0.371457, -0.925323,
		0.859860, -0.445384, -0.249546,
		-0.504820, -0.814648, -0.285490,
		41.522869, 30.015427, 43.375172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228481, 30.371555, 42.934921>,  <41.876244, 30.585680, 43.575016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228481, 30.371555, 42.934921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846024, 30.254530, 42.940414>,  <41.616547, 30.184315, 42.943710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846024, 30.254530, 42.940414>,  <42.228481, 30.371555, 42.934921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846024, 30.254530, 42.940414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144676, 0.431018, -0.890670,
		0.254658, -0.853598, -0.454444,
		-0.956147, -0.292564, 0.013733,
		41.559181, 30.166759, 42.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094780, 30.397697, 42.198540>,  <42.228481, 30.371555, 42.934921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094780, 30.397697, 42.198540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724102, 30.375330, 42.347187>,  <41.501694, 30.361910, 42.436375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724102, 30.375330, 42.347187>,  <42.094780, 30.397697, 42.198540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724102, 30.375330, 42.347187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336507, 0.563717, -0.754311,
		-0.167309, -0.824073, -0.541213,
		-0.926699, -0.055919, 0.371621,
		41.446091, 30.358555, 42.458672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791611, 30.704334, 41.662361>,  <42.094780, 30.397697, 42.198540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791611, 30.704334, 41.662361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483643, 30.598301, 41.894550>,  <41.298862, 30.534681, 42.033863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483643, 30.598301, 41.894550>,  <41.791611, 30.704334, 41.662361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483643, 30.598301, 41.894550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609812, 0.573633, -0.546877,
		-0.188009, -0.775032, -0.603305,
		-0.769923, -0.265085, 0.580472,
		41.252666, 30.518776, 42.068691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177795, 30.301188, 41.370983>,  <41.791611, 30.704334, 41.662361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177795, 30.301188, 41.370983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048637, 30.534687, 41.668968>,  <40.971142, 30.674788, 41.847759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048637, 30.534687, 41.668968>,  <41.177795, 30.301188, 41.370983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048637, 30.534687, 41.668968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526457, 0.543332, -0.653937,
		-0.786500, -0.603345, 0.131881,
		-0.322894, 0.583751, 0.744966,
		40.951771, 30.709812, 41.892456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368946, 30.424042, 41.317581>,  <41.177795, 30.301188, 41.370983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368946, 30.424042, 41.317581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515949, 30.741282, 41.511871>,  <40.604153, 30.931625, 41.628445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515949, 30.741282, 41.511871>,  <40.368946, 30.424042, 41.317581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515949, 30.741282, 41.511871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370271, 0.603872, -0.705860,
		-0.853133, 0.079562, 0.515591,
		0.367510, 0.793101, 0.485723,
		40.626202, 30.979212, 41.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920078, 30.927288, 41.046276>,  <40.368946, 30.424042, 41.317581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920078, 30.927288, 41.046276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164680, 31.135981, 41.284218>,  <40.311443, 31.261196, 41.426983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164680, 31.135981, 41.284218>,  <39.920078, 30.927288, 41.046276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164680, 31.135981, 41.284218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376825, 0.853102, -0.360859,
		-0.695747, -0.003491, 0.718278,
		0.611505, 0.521732, 0.594859,
		40.348133, 31.292500, 41.462677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482761, 31.402193, 41.422970>,  <39.920078, 30.927288, 41.046276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482761, 31.402193, 41.422970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861572, 31.523022, 41.379364>,  <40.088860, 31.595520, 41.353199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861572, 31.523022, 41.379364>,  <39.482761, 31.402193, 41.422970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861572, 31.523022, 41.379364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307382, 0.754305, -0.580121,
		-0.093006, 0.582902, 0.807202,
		0.947030, 0.302074, -0.109019,
		40.145679, 31.613644, 41.346657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505013, 32.154938, 41.650913>,  <39.482761, 31.402193, 41.422970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505013, 32.154938, 41.650913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746216, 32.035992, 41.354816>,  <39.890938, 31.964624, 41.177158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746216, 32.035992, 41.354816>,  <39.505013, 32.154938, 41.650913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746216, 32.035992, 41.354816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484342, 0.600855, -0.635914,
		0.633875, 0.741991, 0.218294,
		0.603005, -0.297361, -0.740244,
		39.927116, 31.946783, 41.132744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879868, 32.915474, 41.515129>,  <39.505013, 32.154938, 41.650913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879868, 32.915474, 41.515129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078022, 32.625214, 41.324123>,  <40.196915, 32.451057, 41.209518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078022, 32.625214, 41.324123>,  <39.879868, 32.915474, 41.515129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078022, 32.625214, 41.324123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221807, 0.637151, -0.738134,
		0.839876, 0.259749, 0.476592,
		0.495390, -0.725652, -0.477513,
		40.226639, 32.407516, 41.180870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180897, 33.360710, 40.975864>,  <39.879868, 32.915474, 41.515129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180897, 33.360710, 40.975864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267742, 32.990540, 40.851643>,  <40.319851, 32.768436, 40.777111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267742, 32.990540, 40.851643>,  <40.180897, 33.360710, 40.975864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267742, 32.990540, 40.851643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310440, 0.367087, -0.876855,
		0.925466, 0.093973, 0.366991,
		0.217118, -0.925428, -0.310553,
		40.332878, 32.712910, 40.758476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885708, 33.421040, 40.687946>,  <40.180897, 33.360710, 40.975864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885708, 33.421040, 40.687946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669403, 33.121708, 40.534283>,  <40.539619, 32.942108, 40.442085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669403, 33.121708, 40.534283>,  <40.885708, 33.421040, 40.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669403, 33.121708, 40.534283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275970, 0.273581, -0.921409,
		0.794618, -0.604277, 0.058576,
		-0.540761, -0.748333, -0.384155,
		40.507175, 32.897209, 40.419037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240227, 33.386234, 40.148354>,  <40.885708, 33.421040, 40.687946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240227, 33.386234, 40.148354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915268, 33.165607, 40.072678>,  <40.720295, 33.033234, 40.027271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915268, 33.165607, 40.072678>,  <41.240227, 33.386234, 40.148354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915268, 33.165607, 40.072678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019095, 0.299110, -0.954028,
		0.582797, -0.778659, -0.232463,
		-0.812394, -0.551565, -0.189189,
		40.671551, 33.000137, 40.015923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426853, 32.999619, 39.640465>,  <41.240227, 33.386234, 40.148354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426853, 32.999619, 39.640465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037388, 33.090698, 39.644993>,  <40.803707, 33.145348, 39.647709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037388, 33.090698, 39.644993>,  <41.426853, 32.999619, 39.640465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037388, 33.090698, 39.644993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033360, 0.191420, -0.980941,
		-0.225528, -0.954731, -0.193975,
		-0.973665, 0.227701, 0.011321,
		40.745289, 33.159008, 39.648388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085266, 33.069408, 39.288265>,  <41.426853, 32.999619, 39.640465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085266, 33.069408, 39.288265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778934, 33.145847, 39.042667>,  <41.595135, 33.191711, 38.895309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778934, 33.145847, 39.042667>,  <42.085266, 33.069408, 39.288265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778934, 33.145847, 39.042667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505573, -0.411106, -0.758543,
		-0.397372, -0.891333, 0.218223,
		-0.765827, 0.191096, -0.613996,
		41.549187, 33.203175, 38.858467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744068, 32.452522, 38.975815>,  <42.085266, 33.069408, 39.288265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744068, 32.452522, 38.975815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711018, 32.768147, 38.732319>,  <41.691189, 32.957520, 38.586220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711018, 32.768147, 38.732319>,  <41.744068, 32.452522, 38.975815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711018, 32.768147, 38.732319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513174, -0.489932, -0.704712,
		-0.854298, -0.370617, -0.364441,
		-0.082627, 0.789056, -0.608739,
		41.686230, 33.004864, 38.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817928, 32.145138, 38.204666>,  <41.744068, 32.452522, 38.975815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817928, 32.145138, 38.204666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864471, 32.542416, 38.202770>,  <41.892399, 32.780781, 38.201633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864471, 32.542416, 38.202770>,  <41.817928, 32.145138, 38.204666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864471, 32.542416, 38.202770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768510, -0.093057, -0.633035,
		-0.629168, 0.070022, -0.774109,
		0.116363, 0.993196, -0.004735,
		41.899380, 32.840374, 38.201351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004723, 32.264500, 37.488129>,  <41.817928, 32.145138, 38.204666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004723, 32.264500, 37.488129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137661, 32.558689, 37.724308>,  <42.217426, 32.735203, 37.866016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137661, 32.558689, 37.724308>,  <42.004723, 32.264500, 37.488129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137661, 32.558689, 37.724308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841050, 0.052199, -0.538433,
		-0.426823, 0.675542, -0.601220,
		0.332350, 0.735471, 0.590445,
		42.237366, 32.779331, 37.901440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206306, 32.884037, 37.153679>,  <42.004723, 32.264500, 37.488129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206306, 32.884037, 37.153679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409210, 32.807503, 37.489792>,  <42.530952, 32.761581, 37.691460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409210, 32.807503, 37.489792>,  <42.206306, 32.884037, 37.153679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409210, 32.807503, 37.489792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861238, 0.077620, -0.502239,
		0.030872, 0.978452, 0.204155,
		0.507263, -0.191331, 0.840284,
		42.561390, 32.750103, 37.741879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747719, 33.160297, 36.959618>,  <42.206306, 32.884037, 37.153679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747719, 33.160297, 36.959618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836189, 32.896049, 37.246578>,  <42.889271, 32.737499, 37.418755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836189, 32.896049, 37.246578>,  <42.747719, 33.160297, 36.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836189, 32.896049, 37.246578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868808, -0.200686, -0.452656,
		0.443007, 0.723398, 0.529567,
		0.221174, -0.660621, 0.717399,
		42.902542, 32.697865, 37.461800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488304, 33.143375, 36.950954>,  <42.747719, 33.160297, 36.959618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488304, 33.143375, 36.950954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383785, 32.799961, 37.127422>,  <43.321072, 32.593910, 37.233303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383785, 32.799961, 37.127422>,  <43.488304, 33.143375, 36.950954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383785, 32.799961, 37.127422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670608, -0.490205, -0.556761,
		0.694266, 0.150373, 0.703834,
		-0.261302, -0.858537, 0.441174,
		43.305393, 32.542400, 37.259773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474365, 33.702141, 36.463173>,  <43.488304, 33.143375, 36.950954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474365, 33.702141, 36.463173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502743, 33.828838, 36.841515>,  <43.519768, 33.904858, 37.068520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502743, 33.828838, 36.841515>,  <43.474365, 33.702141, 36.463173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502743, 33.828838, 36.841515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786612, -0.600847, 0.142213,
		0.613358, 0.733931, -0.291782,
		0.070942, 0.316747, 0.945853,
		43.524025, 33.923862, 37.125271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033245, 34.135326, 36.503334>,  <43.474365, 33.702141, 36.463173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033245, 34.135326, 36.503334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971043, 33.966084, 36.860390>,  <43.933720, 33.864536, 37.074623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971043, 33.966084, 36.860390>,  <44.033245, 34.135326, 36.503334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971043, 33.966084, 36.860390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956092, -0.291699, 0.028298,
		0.248408, 0.857842, 0.449889,
		-0.155507, -0.423106, 0.892636,
		43.924389, 33.839153, 37.128181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434803, 34.339520, 37.054234>,  <44.033245, 34.135326, 36.503334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434803, 34.339520, 37.054234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346333, 33.956829, 37.129871>,  <44.293251, 33.727215, 37.175255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346333, 33.956829, 37.129871>,  <44.434803, 34.339520, 37.054234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346333, 33.956829, 37.129871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973419, -0.228396, -0.017030,
		0.059481, 0.180300, 0.981812,
		-0.221172, -0.956727, 0.189092,
		44.279980, 33.669811, 37.186600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055424, 34.429874, 36.664257>,  <44.434803, 34.339520, 37.054234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055424, 34.429874, 36.664257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372978, 34.524761, 36.440304>,  <45.563511, 34.581692, 36.305931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372978, 34.524761, 36.440304>,  <45.055424, 34.429874, 36.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372978, 34.524761, 36.440304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477446, -0.327005, -0.815545,
		-0.376542, 0.914767, -0.146350,
		0.793890, 0.237213, -0.559882,
		45.611145, 34.595924, 36.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849361, 34.833927, 36.109402>,  <45.055424, 34.429874, 36.664257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849361, 34.833927, 36.109402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206413, 34.703415, 35.984982>,  <45.420643, 34.625107, 35.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206413, 34.703415, 35.984982>,  <44.849361, 34.833927, 36.109402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206413, 34.703415, 35.984982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346370, -0.054805, -0.936496,
		0.288514, 0.943683, -0.161935,
		0.892629, -0.326282, -0.311051,
		45.474201, 34.605530, 35.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179581, 35.308468, 35.584251>,  <44.849361, 34.833927, 36.109402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179581, 35.308468, 35.584251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277515, 34.923161, 35.540134>,  <45.336277, 34.691975, 35.513664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277515, 34.923161, 35.540134>,  <45.179581, 35.308468, 35.584251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277515, 34.923161, 35.540134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462444, -0.016040, -0.886503,
		0.852174, 0.268052, -0.449387,
		0.244837, -0.963271, -0.110290,
		45.350967, 34.634178, 35.507046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419468, 35.260754, 34.981213>,  <45.179581, 35.308468, 35.584251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419468, 35.260754, 34.981213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304264, 34.882111, 35.039158>,  <45.235142, 34.654926, 35.073925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304264, 34.882111, 35.039158>,  <45.419468, 35.260754, 34.981213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304264, 34.882111, 35.039158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456778, 0.002838, -0.889576,
		0.841668, -0.322376, -0.433206,
		-0.288007, -0.946607, 0.144866,
		45.217861, 34.598129, 35.082619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770020, 34.880459, 34.469742>,  <45.419468, 35.260754, 34.981213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770020, 34.880459, 34.469742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415340, 34.724834, 34.569660>,  <45.202534, 34.631458, 34.629612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415340, 34.724834, 34.569660>,  <45.770020, 34.880459, 34.469742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415340, 34.724834, 34.569660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333658, 0.164456, -0.928238,
		0.320063, -0.906413, -0.275637,
		-0.886697, -0.389063, 0.249795,
		45.149330, 34.608116, 34.644600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345314, 34.493145, 34.000290>,  <45.770020, 34.880459, 34.469742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345314, 34.493145, 34.000290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576859, 34.225105, 34.186146>,  <45.715786, 34.064281, 34.297661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576859, 34.225105, 34.186146>,  <45.345314, 34.493145, 34.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576859, 34.225105, 34.186146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355907, 0.305052, 0.883331,
		-0.733658, -0.676692, -0.061912,
		0.578857, -0.670098, 0.464644,
		45.750515, 34.024075, 34.325539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972107, 34.067287, 34.464058>,  <45.345314, 34.493145, 34.000290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972107, 34.067287, 34.464058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344841, 34.092525, 34.607002>,  <45.568481, 34.107666, 34.692768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344841, 34.092525, 34.607002>,  <44.972107, 34.067287, 34.464058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344841, 34.092525, 34.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360743, 0.054175, 0.931091,
		0.039369, -0.996537, 0.073236,
		0.931834, 0.063075, 0.357361,
		45.624390, 34.111454, 34.714211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187778, 33.659698, 35.131634>,  <44.972107, 34.067287, 34.464058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187778, 33.659698, 35.131634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458092, 33.954407, 35.140388>,  <45.620281, 34.131233, 35.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.458092, 33.954407, 35.140388>,  <45.187778, 33.659698, 35.131634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458092, 33.954407, 35.140388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106683, 0.068383, 0.991939,
		0.729338, -0.672672, 0.124813,
		0.675784, 0.736774, 0.021888,
		45.660828, 34.175438, 35.146954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849262, 33.376644, 35.537712>,  <45.187778, 33.659698, 35.131634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849262, 33.376644, 35.537712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719303, 33.754482, 35.519032>,  <45.641327, 33.981186, 35.507824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719303, 33.754482, 35.519032>,  <45.849262, 33.376644, 35.537712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719303, 33.754482, 35.519032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020076, 0.042478, 0.998896,
		0.945538, 0.325472, 0.005163,
		-0.324893, 0.944597, -0.046698,
		45.621834, 34.037861, 35.505020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605301, 33.581139, 35.567986>,  <45.849262, 33.376644, 35.537712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605301, 33.581139, 35.567986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419064, 33.334309, 35.314232>,  <46.307323, 33.186211, 35.161980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419064, 33.334309, 35.314232>,  <46.605301, 33.581139, 35.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419064, 33.334309, 35.314232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622727, 0.737765, -0.260602,
		0.628837, 0.273713, -0.727768,
		-0.465592, -0.617077, -0.634382,
		46.279385, 33.149185, 35.123917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780945, 33.708416, 34.796040>,  <46.605301, 33.581139, 35.567986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780945, 33.708416, 34.796040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418941, 33.547852, 34.852352>,  <46.201740, 33.451511, 34.886139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418941, 33.547852, 34.852352>,  <46.780945, 33.708416, 34.796040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418941, 33.547852, 34.852352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420729, 0.795824, -0.435489,
		0.062771, -0.453356, -0.889117,
		-0.905012, -0.401413, 0.140786,
		46.147438, 33.427429, 34.894588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903996, 34.403999, 34.591160>,  <46.780945, 33.708416, 34.796040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903996, 34.403999, 34.591160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698891, 34.731804, 34.693508>,  <46.575829, 34.928486, 34.754917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698891, 34.731804, 34.693508>,  <46.903996, 34.403999, 34.591160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698891, 34.731804, 34.693508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849930, 0.442471, 0.286073,
		0.121225, 0.364160, -0.923413,
		-0.512760, 0.819516, 0.255872,
		46.545063, 34.977657, 34.770271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.436562, 34.306511, 35.204937>,  <46.903996, 34.403999, 34.591160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.436562, 34.306511, 35.204937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.321629, 34.574562, 34.931187>,  <47.252666, 34.735394, 34.766937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.321629, 34.574562, 34.931187>,  <47.436562, 34.306511, 35.204937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.321629, 34.574562, 34.931187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368536, 0.736848, 0.566778,
		0.884093, -0.089360, -0.458688,
		-0.287336, 0.670127, -0.684374,
		47.235428, 34.775600, 34.725876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.886086, 34.898136, 35.030796>,  <47.436562, 34.306511, 35.204937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.886086, 34.898136, 35.030796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520176, 35.042370, 34.957939>,  <47.300632, 35.128910, 34.914227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520176, 35.042370, 34.957939>,  <47.886086, 34.898136, 35.030796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520176, 35.042370, 34.957939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195628, 0.789879, 0.581224,
		0.353449, 0.496054, -0.793098,
		-0.914770, 0.360585, -0.182140,
		47.245747, 35.150547, 34.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.642685, 26.857864, 30.842897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289551, 27.036283, 30.784052>,  <37.077671, 27.143335, 30.748745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289551, 27.036283, 30.784052>,  <37.642685, 26.857864, 30.842897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289551, 27.036283, 30.784052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085064, 0.156194, 0.984057,
		0.461912, 0.881275, -0.099951,
		-0.882837, 0.446046, -0.147113,
		37.024700, 27.170097, 30.739918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632748, 27.519987, 31.188095>,  <37.642685, 26.857864, 30.842897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632748, 27.519987, 31.188095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245026, 27.436325, 31.136389>,  <37.012394, 27.386127, 31.105366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.245026, 27.436325, 31.136389>,  <37.632748, 27.519987, 31.188095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245026, 27.436325, 31.136389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183985, 0.268229, 0.945623,
		-0.163107, 0.940376, -0.298476,
		-0.969301, -0.209153, -0.129265,
		36.954235, 27.373579, 31.097609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153568, 28.103743, 31.393347>,  <37.632748, 27.519987, 31.188095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153568, 28.103743, 31.393347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912788, 27.784733, 31.409410>,  <36.768322, 27.593327, 31.419048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912788, 27.784733, 31.409410>,  <37.153568, 28.103743, 31.393347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912788, 27.784733, 31.409410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198313, 0.198018, 0.959927,
		-0.773516, 0.569865, -0.277356,
		-0.601950, -0.797523, 0.040159,
		36.732204, 27.545475, 31.421457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638432, 28.382576, 31.660158>,  <37.153568, 28.103743, 31.393347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638432, 28.382576, 31.660158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550522, 27.996132, 31.714312>,  <36.497776, 27.764265, 31.746803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550522, 27.996132, 31.714312>,  <36.638432, 28.382576, 31.660158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550522, 27.996132, 31.714312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318361, 0.202205, 0.926153,
		-0.922141, 0.160448, -0.352012,
		-0.219778, -0.966111, 0.135381,
		36.484589, 27.706299, 31.754927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033512, 28.407471, 32.017193>,  <36.638432, 28.382576, 31.660158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033512, 28.407471, 32.017193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179966, 28.041712, 32.086266>,  <36.267838, 27.822256, 32.127708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179966, 28.041712, 32.086266>,  <36.033512, 28.407471, 32.017193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179966, 28.041712, 32.086266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275507, 0.070733, 0.958693,
		-0.888841, -0.398590, -0.226025,
		0.366138, -0.914397, 0.172685,
		36.289806, 27.767393, 32.138069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470989, 28.165848, 32.328888>,  <36.033512, 28.407471, 32.017193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470989, 28.165848, 32.328888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787243, 27.936657, 32.415230>,  <35.976994, 27.799143, 32.467033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787243, 27.936657, 32.415230>,  <35.470989, 28.165848, 32.328888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787243, 27.936657, 32.415230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242178, 0.031145, 0.969732,
		-0.562358, -0.818979, -0.114138,
		0.790635, -0.572978, 0.215853,
		36.024433, 27.764763, 32.479984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242756, 27.524868, 32.660999>,  <35.470989, 28.165848, 32.328888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242756, 27.524868, 32.660999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620411, 27.609213, 32.762302>,  <35.847004, 27.659821, 32.823082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620411, 27.609213, 32.762302>,  <35.242756, 27.524868, 32.660999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620411, 27.609213, 32.762302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261088, 0.009698, 0.965266,
		0.201083, -0.977467, 0.064211,
		0.944139, 0.210863, 0.253255,
		35.903652, 27.672472, 32.838280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404800, 27.141529, 33.241341>,  <35.242756, 27.524868, 32.660999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404800, 27.141529, 33.241341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679001, 27.432722, 33.245983>,  <35.843521, 27.607437, 33.248768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679001, 27.432722, 33.245983>,  <35.404800, 27.141529, 33.241341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679001, 27.432722, 33.245983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040882, 0.022565, 0.998909,
		0.726926, -0.685225, 0.045229,
		0.685498, 0.727982, 0.011611,
		35.884651, 27.651117, 33.249466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615501, 27.117933, 33.902130>,  <35.404800, 27.141529, 33.241341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615501, 27.117933, 33.902130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814495, 27.456810, 33.827541>,  <35.933891, 27.660137, 33.782787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814495, 27.456810, 33.827541>,  <35.615501, 27.117933, 33.902130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814495, 27.456810, 33.827541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201964, 0.095931, 0.974683,
		0.843633, -0.522552, -0.123378,
		0.497487, 0.847193, -0.186468,
		35.963741, 27.710968, 33.771603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228153, 27.068783, 34.262089>,  <35.615501, 27.117933, 33.902130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228153, 27.068783, 34.262089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170395, 27.458374, 34.192215>,  <36.135742, 27.692129, 34.150291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170395, 27.458374, 34.192215>,  <36.228153, 27.068783, 34.262089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170395, 27.458374, 34.192215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291197, 0.210538, 0.933208,
		0.945703, 0.083881, -0.314021,
		-0.144392, 0.973980, -0.174681,
		36.127079, 27.750568, 34.139812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893536, 27.437857, 34.373360>,  <36.228153, 27.068783, 34.262089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893536, 27.437857, 34.373360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595467, 27.702665, 34.405468>,  <36.416626, 27.861551, 34.424732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595467, 27.702665, 34.405468>,  <36.893536, 27.437857, 34.373360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595467, 27.702665, 34.405468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223916, 0.135007, 0.965212,
		0.628155, 0.737224, -0.248841,
		-0.745173, 0.662022, 0.080271,
		36.371914, 27.901272, 34.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232849, 28.030331, 34.600494>,  <36.893536, 27.437857, 34.373360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232849, 28.030331, 34.600494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847126, 28.061327, 34.701771>,  <36.615692, 28.079926, 34.762535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847126, 28.061327, 34.701771>,  <37.232849, 28.030331, 34.600494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847126, 28.061327, 34.701771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260536, 0.107077, 0.959508,
		0.047244, 0.991226, -0.123445,
		-0.964308, 0.077493, 0.253191,
		36.557835, 28.084576, 34.777729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157429, 28.644239, 35.008545>,  <37.232849, 28.030331, 34.600494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157429, 28.644239, 35.008545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816967, 28.466711, 35.120659>,  <36.612690, 28.360193, 35.187927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816967, 28.466711, 35.120659>,  <37.157429, 28.644239, 35.008545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816967, 28.466711, 35.120659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073739, 0.427576, 0.900967,
		-0.519713, 0.787529, -0.331206,
		-0.851153, -0.443821, 0.280288,
		36.561623, 28.333565, 35.204746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751877, 29.137947, 35.375843>,  <37.157429, 28.644239, 35.008545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751877, 29.137947, 35.375843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584717, 28.795195, 35.496582>,  <36.484421, 28.589542, 35.569027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584717, 28.795195, 35.496582>,  <36.751877, 29.137947, 35.375843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584717, 28.795195, 35.496582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120777, 0.381701, 0.916360,
		-0.900428, 0.346492, -0.263005,
		-0.417901, -0.856882, 0.301847,
		36.459347, 28.538130, 35.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228870, 29.338369, 35.783741>,  <36.751877, 29.137947, 35.375843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228870, 29.338369, 35.783741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300602, 28.960537, 35.893730>,  <36.343639, 28.733837, 35.959724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300602, 28.960537, 35.893730>,  <36.228870, 29.338369, 35.783741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300602, 28.960537, 35.893730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125730, 0.299217, 0.945865,
		-0.975722, -0.135046, 0.172419,
		0.179326, -0.944580, 0.274974,
		36.354401, 28.677162, 35.976223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775627, 29.225237, 36.267593>,  <36.228870, 29.338369, 35.783741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775627, 29.225237, 36.267593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099785, 28.993353, 36.301517>,  <36.294281, 28.854221, 36.321873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099785, 28.993353, 36.301517>,  <35.775627, 29.225237, 36.267593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099785, 28.993353, 36.301517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005544, 0.152344, 0.988312,
		-0.585857, -0.800453, 0.126673,
		0.810395, -0.579712, 0.084814,
		36.342903, 28.819439, 36.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607204, 28.881126, 36.798046>,  <35.775627, 29.225237, 36.267593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607204, 28.881126, 36.798046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000969, 28.848566, 36.735683>,  <36.237228, 28.829029, 36.698265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.000969, 28.848566, 36.735683>,  <35.607204, 28.881126, 36.798046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000969, 28.848566, 36.735683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168308, 0.178781, 0.969386,
		-0.051038, -0.980516, 0.189695,
		0.984412, -0.081403, -0.155904,
		36.296291, 28.824146, 36.688911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824612, 28.451544, 37.217010>,  <35.607204, 28.881126, 36.798046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824612, 28.451544, 37.217010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.157497, 28.651348, 37.120750>,  <36.357227, 28.771231, 37.062996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.157497, 28.651348, 37.120750>,  <35.824612, 28.451544, 37.217010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157497, 28.651348, 37.120750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115640, 0.268109, 0.956423,
		0.542263, -0.823776, 0.165360,
		0.832213, 0.499510, -0.240647,
		36.407162, 28.801201, 37.048557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224583, 28.347980, 37.845680>,  <35.824612, 28.451544, 37.217010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224583, 28.347980, 37.845680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 28.648020, 37.653118>,  <36.514782, 28.828043, 37.537582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 28.648020, 37.653118>,  <36.224583, 28.347980, 37.845680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405956, 28.648020, 37.653118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044404, 0.520441, 0.852742,
		0.890184, -0.408038, 0.202677,
		0.453433, 0.750098, -0.481407,
		36.541985, 28.873049, 37.508698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836082, 28.655668, 38.277584>,  <36.224583, 28.347980, 37.845680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836082, 28.655668, 38.277584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752502, 28.951056, 38.021145>,  <36.702354, 29.128288, 37.867283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752502, 28.951056, 38.021145>,  <36.836082, 28.655668, 38.277584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752502, 28.951056, 38.021145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025113, 0.659404, 0.751369,
		0.977603, 0.140901, -0.156329,
		-0.208953, 0.738467, -0.641097,
		36.689816, 29.172596, 37.828815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486511, 29.110327, 38.331276>,  <36.836082, 28.655668, 38.277584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486511, 29.110327, 38.331276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187469, 29.326061, 38.176247>,  <37.008045, 29.455502, 38.083229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.187469, 29.326061, 38.176247>,  <37.486511, 29.110327, 38.331276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187469, 29.326061, 38.176247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129805, 0.690962, 0.711141,
		0.651341, 0.481340, -0.586572,
		-0.747600, 0.539335, -0.387572,
		36.963188, 29.487862, 38.059975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733902, 29.668697, 38.423382>,  <37.486511, 29.110327, 38.331276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733902, 29.668697, 38.423382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359753, 29.793877, 38.357479>,  <37.135265, 29.868984, 38.317936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359753, 29.793877, 38.357479>,  <37.733902, 29.668697, 38.423382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359753, 29.793877, 38.357479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128638, 0.734990, 0.665765,
		0.329443, 0.601543, -0.727745,
		-0.935371, 0.312947, -0.164756,
		37.079140, 29.887760, 38.308052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943596, 30.339670, 38.790787>,  <37.733902, 29.668697, 38.423382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943596, 30.339670, 38.790787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303280, 30.506794, 38.738842>,  <38.519089, 30.607067, 38.707676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303280, 30.506794, 38.738842>,  <37.943596, 30.339670, 38.790787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303280, 30.506794, 38.738842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048195, -0.200407, -0.978527,
		-0.434861, 0.886156, -0.160071,
		0.899207, 0.417809, -0.129857,
		38.573044, 30.632137, 38.699886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892544, 30.848251, 38.242512>,  <37.943596, 30.339670, 38.790787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892544, 30.848251, 38.242512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283642, 30.766462, 38.261314>,  <38.518299, 30.717388, 38.272594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283642, 30.766462, 38.261314>,  <37.892544, 30.848251, 38.242512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283642, 30.766462, 38.261314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002832, -0.236892, -0.971532,
		0.209787, 0.949775, -0.232199,
		0.977743, -0.204473, 0.047007,
		38.576965, 30.705120, 38.275417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242996, 31.197216, 37.607185>,  <37.892544, 30.848251, 38.242512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242996, 31.197216, 37.607185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518806, 30.934855, 37.730042>,  <38.684292, 30.777437, 37.803757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518806, 30.934855, 37.730042>,  <38.242996, 31.197216, 37.607185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518806, 30.934855, 37.730042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134960, -0.300291, -0.944252,
		0.711572, 0.692542, -0.118538,
		0.689530, -0.655905, 0.307144,
		38.725666, 30.738083, 37.822186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895973, 31.362242, 37.288044>,  <38.242996, 31.197216, 37.607185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895973, 31.362242, 37.288044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900974, 30.966637, 37.346970>,  <38.903976, 30.729275, 37.382324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900974, 30.966637, 37.346970>,  <38.895973, 31.362242, 37.288044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900974, 30.966637, 37.346970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248386, -0.139631, -0.958545,
		0.968580, 0.048578, 0.243910,
		0.012507, -0.989011, 0.147310,
		38.904728, 30.669933, 37.391163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436562, 31.156456, 36.869656>,  <38.895973, 31.362242, 37.288044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436562, 31.156456, 36.869656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241184, 30.813837, 36.936283>,  <39.123959, 30.608265, 36.976261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241184, 30.813837, 36.936283>,  <39.436562, 31.156456, 36.869656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241184, 30.813837, 36.936283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353428, -0.368731, -0.859724,
		0.797816, -0.361056, 0.482833,
		-0.488445, -0.856549, 0.166572,
		39.094650, 30.556873, 36.986256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905151, 30.568455, 36.924664>,  <39.436562, 31.156456, 36.869656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905151, 30.568455, 36.924664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.546394, 30.421366, 36.826385>,  <39.331139, 30.333113, 36.767418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.546394, 30.421366, 36.826385>,  <39.905151, 30.568455, 36.924664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546394, 30.421366, 36.826385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343968, -0.230815, -0.910171,
		0.277979, -0.900836, 0.333500,
		-0.896891, -0.367721, -0.245697,
		39.277328, 30.311049, 36.752678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041500, 30.049688, 36.458054>,  <39.905151, 30.568455, 36.924664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041500, 30.049688, 36.458054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646496, 30.048399, 36.395035>,  <39.409492, 30.047625, 36.357224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646496, 30.048399, 36.395035>,  <40.041500, 30.049688, 36.458054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646496, 30.048399, 36.395035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132384, -0.559275, -0.818343,
		-0.085473, -0.828976, 0.552714,
		-0.987506, -0.003224, -0.157546,
		39.350243, 30.047432, 36.347771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797047, 29.309912, 36.362370>,  <40.041500, 30.049688, 36.458054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797047, 29.309912, 36.362370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.533539, 29.551550, 36.182999>,  <39.375435, 29.696533, 36.075375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.533539, 29.551550, 36.182999>,  <39.797047, 29.309912, 36.362370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533539, 29.551550, 36.182999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176349, -0.455451, -0.872620,
		-0.731383, -0.653937, 0.193507,
		-0.658772, 0.604095, -0.448430,
		39.335907, 29.732779, 36.048470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381058, 28.899700, 35.934639>,  <39.797047, 29.309912, 36.362370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381058, 28.899700, 35.934639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335426, 29.276159, 35.807373>,  <39.308048, 29.502035, 35.731014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335426, 29.276159, 35.807373>,  <39.381058, 28.899700, 35.934639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335426, 29.276159, 35.807373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038511, -0.315826, -0.948035,
		-0.992725, -0.120406, -0.000214,
		-0.114081, 0.941146, -0.318165,
		39.301201, 29.558504, 35.711922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946903, 28.865263, 35.386040>,  <39.381058, 28.899700, 35.934639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946903, 28.865263, 35.386040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082451, 29.238018, 35.334259>,  <39.163780, 29.461670, 35.303192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082451, 29.238018, 35.334259>,  <38.946903, 28.865263, 35.386040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082451, 29.238018, 35.334259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027498, -0.127720, -0.991429,
		-0.940432, 0.339523, -0.017655,
		0.338868, 0.931886, -0.129448,
		39.184113, 29.517584, 35.295425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555573, 29.198399, 34.786079>,  <38.946903, 28.865263, 35.386040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555573, 29.198399, 34.786079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896599, 29.406931, 34.800732>,  <39.101215, 29.532049, 34.809525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896599, 29.406931, 34.800732>,  <38.555573, 29.198399, 34.786079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896599, 29.406931, 34.800732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132990, -0.148635, -0.979909,
		-0.505410, 0.840311, -0.196054,
		0.852569, 0.521329, 0.036631,
		39.152370, 29.563330, 34.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510159, 29.618847, 34.208267>,  <38.555573, 29.198399, 34.786079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510159, 29.618847, 34.208267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898556, 29.604614, 34.302853>,  <39.131592, 29.596075, 34.359604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898556, 29.604614, 34.302853>,  <38.510159, 29.618847, 34.208267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898556, 29.604614, 34.302853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235901, -0.019227, -0.971587,
		0.039119, 0.999182, -0.010275,
		0.970989, -0.035583, 0.236460,
		39.189854, 29.593939, 34.373791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766434, 30.097038, 33.699329>,  <38.510159, 29.618847, 34.208267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766434, 30.097038, 33.699329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058624, 29.856504, 33.828819>,  <39.233940, 29.712183, 33.906513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058624, 29.856504, 33.828819>,  <38.766434, 30.097038, 33.699329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058624, 29.856504, 33.828819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172879, -0.295765, -0.939487,
		0.660695, 0.742238, -0.112091,
		0.730476, -0.601337, 0.323728,
		39.277767, 29.676104, 33.925938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197632, 30.189163, 33.213924>,  <38.766434, 30.097038, 33.699329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197632, 30.189163, 33.213924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312889, 29.845575, 33.383224>,  <39.382042, 29.639421, 33.484806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312889, 29.845575, 33.383224>,  <39.197632, 30.189163, 33.213924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312889, 29.845575, 33.383224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230924, -0.366622, -0.901256,
		0.929326, 0.357431, 0.092717,
		0.288144, -0.858971, 0.423251,
		39.399334, 29.587885, 33.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806313, 30.086740, 32.970181>,  <39.197632, 30.189163, 33.213924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806313, 30.086740, 32.970181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648758, 29.731241, 33.063972>,  <39.554226, 29.517942, 33.120247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648758, 29.731241, 33.063972>,  <39.806313, 30.086740, 32.970181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648758, 29.731241, 33.063972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127680, -0.305535, -0.943582,
		0.910249, -0.341724, 0.233821,
		-0.393885, -0.888748, 0.234482,
		39.530594, 29.464617, 33.134315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238045, 29.550426, 32.576569>,  <39.806313, 30.086740, 32.970181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238045, 29.550426, 32.576569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894234, 29.380566, 32.690331>,  <39.687946, 29.278650, 32.758587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.894234, 29.380566, 32.690331>,  <40.238045, 29.550426, 32.576569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894234, 29.380566, 32.690331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001706, -0.554082, -0.832460,
		0.511090, -0.716006, 0.475523,
		-0.859525, -0.424651, 0.284408,
		39.636375, 29.253170, 32.775654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352905, 28.906956, 32.448254>,  <40.238045, 29.550426, 32.576569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352905, 28.906956, 32.448254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955448, 28.951965, 32.447472>,  <39.716972, 28.978971, 32.447002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955448, 28.951965, 32.447472>,  <40.352905, 28.906956, 32.448254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955448, 28.951965, 32.447472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061101, -0.553952, -0.830303,
		-0.094512, -0.824909, 0.557308,
		-0.993647, 0.112526, -0.001953,
		39.657352, 28.985723, 32.446884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155880, 28.288805, 32.340168>,  <40.352905, 28.906956, 32.448254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155880, 28.288805, 32.340168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848572, 28.525637, 32.242836>,  <39.664188, 28.667736, 32.184437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848572, 28.525637, 32.242836>,  <40.155880, 28.288805, 32.340168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848572, 28.525637, 32.242836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108743, -0.495308, -0.861885,
		-0.630828, -0.635696, 0.444912,
		-0.768265, 0.592082, -0.243326,
		39.618092, 28.703260, 32.169838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.449520, 27.849211, 32.120872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.373619, 28.207479, 31.959991>,  <39.328079, 28.422441, 31.863462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.373619, 28.207479, 31.959991>,  <39.449520, 27.849211, 32.120872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373619, 28.207479, 31.959991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125622, -0.428427, -0.894801,
		-0.973763, -0.119262, 0.193810,
		-0.189749, 0.895671, -0.402204,
		39.316696, 28.476181, 31.839331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906300, 27.620398, 31.639065>,  <39.449520, 27.849211, 32.120872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906300, 27.620398, 31.639065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006546, 27.983101, 31.503433>,  <39.066696, 28.200724, 31.422054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006546, 27.983101, 31.503433>,  <38.906300, 27.620398, 31.639065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006546, 27.983101, 31.503433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194880, -0.295833, -0.935149,
		-0.948267, 0.300447, 0.102568,
		0.250620, 0.906760, -0.339081,
		39.081734, 28.255129, 31.401709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265484, 27.896877, 31.249043>,  <38.906300, 27.620398, 31.639065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265484, 27.896877, 31.249043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608440, 28.061064, 31.124847>,  <38.814213, 28.159576, 31.050331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608440, 28.061064, 31.124847>,  <38.265484, 27.896877, 31.249043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608440, 28.061064, 31.124847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314317, -0.060096, -0.947414,
		-0.407541, 0.909893, 0.077491,
		0.857388, 0.410467, -0.310487,
		38.865658, 28.184204, 31.031702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120922, 28.253103, 30.647234>,  <38.265484, 27.896877, 31.249043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120922, 28.253103, 30.647234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518272, 28.253487, 30.601259>,  <38.756683, 28.253717, 30.573675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518272, 28.253487, 30.601259>,  <38.120922, 28.253103, 30.647234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518272, 28.253487, 30.601259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114478, -0.081380, -0.990087,
		-0.010303, 0.996683, -0.080731,
		0.993372, 0.000959, -0.114937,
		38.816284, 28.253775, 30.566778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220543, 28.575583, 30.002100>,  <38.120922, 28.253103, 30.647234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220543, 28.575583, 30.002100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576385, 28.407482, 30.073650>,  <38.789890, 28.306622, 30.116581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.576385, 28.407482, 30.073650>,  <38.220543, 28.575583, 30.002100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576385, 28.407482, 30.073650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130985, -0.140448, -0.981385,
		0.437550, 0.896473, -0.069897,
		0.889602, -0.420250, 0.178878,
		38.843266, 28.281406, 30.127314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700554, 28.843201, 29.483253>,  <38.220543, 28.575583, 30.002100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700554, 28.843201, 29.483253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879086, 28.510769, 29.615974>,  <38.986206, 28.311310, 29.695606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879086, 28.510769, 29.615974>,  <38.700554, 28.843201, 29.483253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879086, 28.510769, 29.615974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127264, -0.308064, -0.942815,
		0.885772, 0.463034, -0.031732,
		0.446331, -0.831081, 0.331802,
		39.012985, 28.261444, 29.715515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392109, 28.795012, 29.041269>,  <38.700554, 28.843201, 29.483253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392109, 28.795012, 29.041269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320869, 28.430824, 29.190577>,  <39.278126, 28.212313, 29.280161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320869, 28.430824, 29.190577>,  <39.392109, 28.795012, 29.041269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320869, 28.430824, 29.190577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378798, -0.413537, -0.827949,
		0.908180, -0.006067, 0.418536,
		-0.178103, -0.910467, 0.373268,
		39.267437, 28.157684, 29.302557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072479, 28.452923, 28.985191>,  <39.392109, 28.795012, 29.041269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072479, 28.452923, 28.985191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768196, 28.193375, 28.991999>,  <39.585625, 28.037645, 28.996084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768196, 28.193375, 28.991999>,  <40.072479, 28.452923, 28.985191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768196, 28.193375, 28.991999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319208, -0.396801, -0.860613,
		0.565179, -0.649243, 0.508975,
		-0.760709, -0.648870, 0.017020,
		39.539982, 27.998714, 28.997105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347965, 27.808390, 28.940542>,  <40.072479, 28.452923, 28.985191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347965, 27.808390, 28.940542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970207, 27.762650, 28.817226>,  <39.743553, 27.735207, 28.743237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.970207, 27.762650, 28.817226>,  <40.347965, 27.808390, 28.940542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970207, 27.762650, 28.817226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321826, -0.513684, -0.795335,
		-0.067416, -0.850326, 0.521921,
		-0.944396, -0.114350, -0.308288,
		39.686890, 27.728344, 28.724741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474651, 27.256865, 28.522404>,  <40.347965, 27.808390, 28.940542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474651, 27.256865, 28.522404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109192, 27.399693, 28.444695>,  <39.889915, 27.485390, 28.398069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109192, 27.399693, 28.444695>,  <40.474651, 27.256865, 28.522404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109192, 27.399693, 28.444695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048921, -0.377862, -0.924569,
		-0.403549, -0.854236, 0.327765,
		-0.913649, 0.357074, -0.194276,
		39.835098, 27.506813, 28.386412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109104, 26.721525, 28.285973>,  <40.474651, 27.256865, 28.522404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109104, 26.721525, 28.285973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892372, 27.023317, 28.137819>,  <39.762333, 27.204393, 28.048927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892372, 27.023317, 28.137819>,  <40.109104, 26.721525, 28.285973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892372, 27.023317, 28.137819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027769, -0.424364, -0.905066,
		-0.840032, -0.500673, 0.208980,
		-0.541826, 0.754481, -0.370382,
		39.729824, 27.249662, 28.026705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541302, 26.390072, 27.839529>,  <40.109104, 26.721525, 28.285973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541302, 26.390072, 27.839529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606842, 26.768354, 27.727247>,  <39.646168, 26.995323, 27.659878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606842, 26.768354, 27.727247>,  <39.541302, 26.390072, 27.839529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606842, 26.768354, 27.727247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194651, -0.247962, -0.949013,
		-0.967090, 0.210135, 0.143454,
		0.163850, 0.945705, -0.280704,
		39.655998, 27.052067, 27.643036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928310, 26.537117, 27.370073>,  <39.541302, 26.390072, 27.839529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928310, 26.537117, 27.370073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190395, 26.829702, 27.294538>,  <39.347645, 27.005253, 27.249218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190395, 26.829702, 27.294538>,  <38.928310, 26.537117, 27.370073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190395, 26.829702, 27.294538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149092, -0.119848, -0.981533,
		-0.740586, 0.671268, 0.030530,
		0.655213, 0.731462, -0.188838,
		39.386959, 27.049141, 27.237886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577785, 26.909235, 26.886028>,  <38.928310, 26.537117, 27.370073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577785, 26.909235, 26.886028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964821, 27.004976, 26.853834>,  <39.197044, 27.062420, 26.834518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964821, 27.004976, 26.853834>,  <38.577785, 26.909235, 26.886028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964821, 27.004976, 26.853834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088987, 0.024907, -0.995721,
		-0.236323, 0.970613, 0.045399,
		0.967591, 0.239352, -0.080485,
		39.255096, 27.076782, 26.829689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564690, 27.488310, 26.434826>,  <38.577785, 26.909235, 26.886028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564690, 27.488310, 26.434826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936440, 27.343256, 26.407244>,  <39.159489, 27.256224, 26.390696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936440, 27.343256, 26.407244>,  <38.564690, 27.488310, 26.434826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936440, 27.343256, 26.407244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100150, -0.067920, -0.992651,
		0.355286, 0.929453, -0.099441,
		0.929377, -0.362634, -0.068954,
		39.215252, 27.234467, 26.386557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838924, 27.863148, 25.906263>,  <38.564690, 27.488310, 26.434826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838924, 27.863148, 25.906263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056309, 27.527647, 25.919796>,  <39.186741, 27.326347, 25.927916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056309, 27.527647, 25.919796>,  <38.838924, 27.863148, 25.906263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056309, 27.527647, 25.919796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001138, -0.041037, -0.999157,
		0.839431, 0.542969, -0.023257,
		0.543465, -0.838750, 0.033830,
		39.219349, 27.276022, 25.929945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316338, 27.891514, 25.331020>,  <38.838924, 27.863148, 25.906263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316338, 27.891514, 25.331020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315117, 27.509336, 25.449085>,  <39.314384, 27.280031, 25.519924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315117, 27.509336, 25.449085>,  <39.316338, 27.891514, 25.331020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315117, 27.509336, 25.449085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041172, -0.295036, -0.954599,
		0.999147, 0.009242, 0.040237,
		-0.003049, -0.955441, 0.295165,
		39.314201, 27.222704, 25.537634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024502, 27.475870, 25.166805>,  <39.316338, 27.891514, 25.331020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024502, 27.475870, 25.166805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699574, 27.243683, 25.189404>,  <39.504616, 27.104370, 25.202963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699574, 27.243683, 25.189404>,  <40.024502, 27.475870, 25.166805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699574, 27.243683, 25.189404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133454, -0.279304, -0.950884,
		0.567735, -0.764884, 0.304350,
		-0.812322, -0.580467, 0.056494,
		39.455875, 27.069544, 25.206352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102417, 27.001688, 24.596411>,  <40.024502, 27.475870, 25.166805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102417, 27.001688, 24.596411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726856, 26.914339, 24.702826>,  <39.501518, 26.861929, 24.766674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726856, 26.914339, 24.702826>,  <40.102417, 27.001688, 24.596411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726856, 26.914339, 24.702826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197483, -0.291258, -0.936039,
		0.281891, -0.931387, 0.230338,
		-0.938902, -0.218373, 0.266036,
		39.445187, 26.848827, 24.782637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065613, 26.180191, 24.421515>,  <40.102417, 27.001688, 24.596411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065613, 26.180191, 24.421515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716820, 26.373138, 24.454922>,  <39.507545, 26.488907, 24.474966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716820, 26.373138, 24.454922>,  <40.065613, 26.180191, 24.421515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716820, 26.373138, 24.454922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108273, -0.023651, -0.993840,
		-0.477421, -0.875649, 0.072851,
		-0.871978, 0.482368, 0.083518,
		39.455227, 26.517849, 24.479977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601707, 25.870422, 23.970137>,  <40.065613, 26.180191, 24.421515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601707, 25.870422, 23.970137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425484, 26.227034, 24.012241>,  <39.319748, 26.441000, 24.037504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425484, 26.227034, 24.012241>,  <39.601707, 25.870422, 23.970137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425484, 26.227034, 24.012241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222428, 0.005196, -0.974935,
		-0.869731, -0.452931, 0.196012,
		-0.440560, 0.891530, 0.105264,
		39.293316, 26.494493, 24.043821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003529, 25.833355, 23.501976>,  <39.601707, 25.870422, 23.970137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003529, 25.833355, 23.501976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028709, 26.227547, 23.565060>,  <39.043816, 26.464062, 23.602909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028709, 26.227547, 23.565060>,  <39.003529, 25.833355, 23.501976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028709, 26.227547, 23.565060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322472, 0.169630, -0.931256,
		-0.944483, 0.007765, 0.328467,
		0.062949, 0.985477, 0.157709,
		39.047592, 26.523190, 23.612371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398254, 26.248346, 23.278868>,  <39.003529, 25.833355, 23.501976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398254, 26.248346, 23.278868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720463, 26.485081, 23.267035>,  <38.913788, 26.627121, 23.259935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720463, 26.485081, 23.267035>,  <38.398254, 26.248346, 23.278868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720463, 26.485081, 23.267035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195292, 0.218006, -0.956208,
		-0.559467, 0.776019, 0.291187,
		0.805517, 0.591834, -0.029583,
		38.962116, 26.662630, 23.258160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253693, 26.873859, 22.893469>,  <38.398254, 26.248346, 23.278868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253693, 26.873859, 22.893469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651791, 26.835386, 22.887215>,  <38.890648, 26.812302, 22.883461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.651791, 26.835386, 22.887215>,  <38.253693, 26.873859, 22.893469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651791, 26.835386, 22.887215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039227, 0.542346, -0.839239,
		0.089201, 0.834631, 0.543538,
		0.995241, -0.096183, -0.015638,
		38.950363, 26.806532, 22.882523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468937, 27.079252, 22.695969>,  <38.253693, 26.873859, 22.893469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468937, 27.079252, 22.695969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077190, 27.155251, 22.668425>,  <36.842144, 27.200850, 22.651897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077190, 27.155251, 22.668425>,  <37.468937, 27.079252, 22.695969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077190, 27.155251, 22.668425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001833, 0.349089, 0.937088,
		0.202081, 0.917627, -0.342234,
		-0.979367, 0.189995, -0.068862,
		36.783379, 27.212250, 22.647766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258366, 27.834412, 22.826738>,  <37.468937, 27.079252, 22.695969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258366, 27.834412, 22.826738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946877, 27.604248, 22.926735>,  <36.759983, 27.466150, 22.986732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946877, 27.604248, 22.926735>,  <37.258366, 27.834412, 22.826738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946877, 27.604248, 22.926735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044003, 0.347397, 0.936685,
		-0.625825, 0.740417, -0.245205,
		-0.778721, -0.575411, 0.249990,
		36.713261, 27.431625, 23.001732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792896, 28.252127, 23.275591>,  <37.258366, 27.834412, 22.826738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792896, 28.252127, 23.275591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711937, 27.864544, 23.332378>,  <36.663361, 27.631994, 23.366451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711937, 27.864544, 23.332378>,  <36.792896, 28.252127, 23.275591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711937, 27.864544, 23.332378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358475, 0.208214, 0.910023,
		-0.911334, 0.133297, -0.389490,
		-0.202401, -0.968957, 0.141969,
		36.651218, 27.573856, 23.374969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161716, 28.168411, 23.527172>,  <36.792896, 28.252127, 23.275591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161716, 28.168411, 23.527172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308201, 27.812243, 23.635271>,  <36.396091, 27.598541, 23.700130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308201, 27.812243, 23.635271>,  <36.161716, 28.168411, 23.527172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308201, 27.812243, 23.635271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186008, 0.214513, 0.958846,
		-0.911751, -0.401409, -0.087069,
		0.366212, -0.890424, 0.270248,
		36.418064, 27.545115, 23.716345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712513, 27.911146, 24.046917>,  <36.161716, 28.168411, 23.527172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712513, 27.911146, 24.046917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056061, 27.710316, 24.087437>,  <36.262188, 27.589817, 24.111748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056061, 27.710316, 24.087437>,  <35.712513, 27.911146, 24.046917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056061, 27.710316, 24.087437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050170, 0.114357, 0.992172,
		-0.509732, -0.857228, 0.073028,
		0.858869, -0.502078, 0.101299,
		36.313721, 27.559692, 24.117826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619350, 27.833763, 24.752251>,  <35.712513, 27.911146, 24.046917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619350, 27.833763, 24.752251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994247, 27.722668, 24.667936>,  <36.219185, 27.656010, 24.617348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994247, 27.722668, 24.667936>,  <35.619350, 27.833763, 24.752251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994247, 27.722668, 24.667936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202398, -0.058883, 0.977532,
		-0.283911, -0.958850, 0.001026,
		0.937246, -0.277740, -0.210786,
		36.275421, 27.639345, 24.604700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687950, 27.158398, 25.044872>,  <35.619350, 27.833763, 24.752251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687950, 27.158398, 25.044872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041668, 27.342920, 25.015980>,  <36.253899, 27.453634, 24.998644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041668, 27.342920, 25.015980>,  <35.687950, 27.158398, 25.044872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041668, 27.342920, 25.015980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151651, -0.137443, 0.978832,
		0.441616, -0.876529, -0.191498,
		0.884295, 0.461309, -0.072229,
		36.306957, 27.481314, 24.994310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143215, 26.676630, 25.427898>,  <35.687950, 27.158398, 25.044872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143215, 26.676630, 25.427898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313015, 27.038776, 25.423798>,  <36.414894, 27.256065, 25.421337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.313015, 27.038776, 25.423798>,  <36.143215, 26.676630, 25.427898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313015, 27.038776, 25.423798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275783, -0.118507, 0.953887,
		0.862404, -0.407755, -0.299992,
		0.424504, 0.905368, -0.010251,
		36.440365, 27.310387, 25.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529865, 26.601433, 26.027622>,  <36.143215, 26.676630, 25.427898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529865, 26.601433, 26.027622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555687, 26.991861, 25.944563>,  <36.571178, 27.226118, 25.894728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555687, 26.991861, 25.944563>,  <36.529865, 26.601433, 26.027622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555687, 26.991861, 25.944563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390173, 0.166833, 0.905501,
		0.918476, -0.139473, -0.370067,
		0.064554, 0.976071, -0.207650,
		36.575054, 27.284683, 25.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228405, 26.852428, 26.348381>,  <36.529865, 26.601433, 26.027622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228405, 26.852428, 26.348381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019920, 27.191133, 26.305796>,  <36.894829, 27.394356, 26.280245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019920, 27.191133, 26.305796>,  <37.228405, 26.852428, 26.348381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019920, 27.191133, 26.305796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316443, 0.307605, 0.897354,
		0.792594, 0.434020, -0.428278,
		-0.521209, 0.846762, -0.106463,
		36.863556, 27.445162, 26.273857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701797, 27.396151, 26.518578>,  <37.228405, 26.852428, 26.348381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701797, 27.396151, 26.518578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327614, 27.527458, 26.570957>,  <37.103104, 27.606243, 26.602385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327614, 27.527458, 26.570957>,  <37.701797, 27.396151, 26.518578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327614, 27.527458, 26.570957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223268, 0.261683, 0.938974,
		0.273969, 0.907613, -0.318087,
		-0.935464, 0.328269, 0.130948,
		37.046974, 27.625938, 26.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783890, 27.924370, 26.862299>,  <37.701797, 27.396151, 26.518578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783890, 27.924370, 26.862299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398617, 27.854239, 26.943825>,  <37.167454, 27.812160, 26.992741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398617, 27.854239, 26.943825>,  <37.783890, 27.924370, 26.862299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398617, 27.854239, 26.943825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154888, 0.257769, 0.953711,
		-0.219750, 0.950166, -0.221122,
		-0.963182, -0.175329, 0.203814,
		37.109661, 27.801640, 27.004969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503292, 28.552523, 27.272097>,  <37.783890, 27.924370, 26.862299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503292, 28.552523, 27.272097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281879, 28.226007, 27.338156>,  <37.149033, 28.030098, 27.377792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281879, 28.226007, 27.338156>,  <37.503292, 28.552523, 27.272097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281879, 28.226007, 27.338156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211734, 0.053852, 0.975842,
		-0.805462, 0.575129, 0.143028,
		-0.553533, -0.816288, 0.165150,
		37.115818, 27.981121, 27.387701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219227, 28.658009, 27.916601>,  <37.503292, 28.552523, 27.272097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219227, 28.658009, 27.916601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156132, 28.264194, 27.886106>,  <37.118275, 28.027906, 27.867809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.156132, 28.264194, 27.886106>,  <37.219227, 28.658009, 27.916601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156132, 28.264194, 27.886106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128077, -0.096948, 0.987014,
		-0.979139, 0.145930, 0.141389,
		-0.157742, -0.984533, -0.076235,
		37.108810, 27.968834, 27.863235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669083, 28.526171, 28.313360>,  <37.219227, 28.658009, 27.916601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669083, 28.526171, 28.313360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812614, 28.153629, 28.288631>,  <36.898735, 27.930105, 28.273794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812614, 28.153629, 28.288631>,  <36.669083, 28.526171, 28.313360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812614, 28.153629, 28.288631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161601, -0.003244, 0.986851,
		-0.919308, -0.364101, 0.149343,
		0.358829, -0.931354, -0.061821,
		36.920261, 27.874224, 28.270084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450966, 28.171490, 28.959915>,  <36.669083, 28.526171, 28.313360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450966, 28.171490, 28.959915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732037, 27.913837, 28.839025>,  <36.900681, 27.759247, 28.766491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732037, 27.913837, 28.839025>,  <36.450966, 28.171490, 28.959915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732037, 27.913837, 28.839025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127536, -0.303863, 0.944141,
		-0.699983, -0.701973, -0.131369,
		0.702679, -0.644128, -0.302225,
		36.942841, 27.720598, 28.748358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051468, 27.493328, 28.871927>,  <36.450966, 28.171490, 28.959915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051468, 27.493328, 28.871927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442677, 27.497940, 28.955206>,  <36.677402, 27.500708, 29.005173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442677, 27.497940, 28.955206>,  <36.051468, 27.493328, 28.871927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442677, 27.497940, 28.955206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195890, -0.291360, 0.936342,
		0.071459, -0.956544, -0.282696,
		0.978018, 0.011532, 0.208197,
		36.736084, 27.501400, 29.017666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145851, 26.850857, 29.274406>,  <36.051468, 27.493328, 28.871927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145851, 26.850857, 29.274406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494164, 27.033360, 29.347702>,  <36.703152, 27.142862, 29.391680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494164, 27.033360, 29.347702>,  <36.145851, 26.850857, 29.274406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494164, 27.033360, 29.347702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025468, -0.330324, 0.943524,
		0.491020, -0.826265, -0.276018,
		0.870776, 0.456259, 0.183239,
		36.755398, 27.170237, 29.402674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516548, 26.390976, 29.654963>,  <36.145851, 26.850857, 29.274406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516548, 26.390976, 29.654963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654411, 26.755709, 29.744202>,  <36.737129, 26.974548, 29.797745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654411, 26.755709, 29.744202>,  <36.516548, 26.390976, 29.654963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654411, 26.755709, 29.744202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167066, -0.174286, 0.970419,
		0.923744, -0.371732, 0.092268,
		0.344654, 0.911833, 0.223099,
		36.757809, 27.029259, 29.811132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042984, 26.288692, 30.224308>,  <36.516548, 26.390976, 29.654963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042984, 26.288692, 30.224308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917660, 26.668316, 30.237761>,  <36.842464, 26.896090, 30.245832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917660, 26.668316, 30.237761>,  <37.042984, 26.288692, 30.224308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917660, 26.668316, 30.237761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069776, -0.012313, 0.997487,
		0.947085, 0.314866, -0.062363,
		-0.313307, 0.949056, 0.033631,
		36.823669, 26.953033, 30.247850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.453144, 29.554670, 34.564999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057835, 29.563112, 34.504501>,  <39.820648, 29.568178, 34.468204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057835, 29.563112, 34.504501>,  <40.453144, 29.554670, 34.564999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057835, 29.563112, 34.504501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140055, 0.269421, 0.952784,
		0.060857, 0.962791, -0.263305,
		-0.988272, 0.021107, -0.151240,
		39.761353, 29.569445, 34.459129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285202, 30.122335, 35.083408>,  <40.453144, 29.554670, 34.564999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285202, 30.122335, 35.083408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941982, 29.947325, 34.975838>,  <39.736050, 29.842318, 34.911297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941982, 29.947325, 34.975838>,  <40.285202, 30.122335, 35.083408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941982, 29.947325, 34.975838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390387, 0.215431, 0.895091,
		-0.333692, 0.873017, -0.355655,
		-0.858049, -0.437528, -0.268927,
		39.684566, 29.816067, 34.895161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822777, 30.613808, 35.140327>,  <40.285202, 30.122335, 35.083408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822777, 30.613808, 35.140327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632954, 30.263433, 35.175053>,  <39.519062, 30.053209, 35.195889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632954, 30.263433, 35.175053>,  <39.822777, 30.613808, 35.140327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632954, 30.263433, 35.175053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458023, 0.329954, 0.825437,
		-0.751674, 0.351951, -0.557779,
		-0.474555, -0.875934, 0.086816,
		39.490585, 30.000652, 35.201096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030304, 30.690683, 35.169613>,  <39.822777, 30.613808, 35.140327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030304, 30.690683, 35.169613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.116322, 30.349068, 35.359085>,  <39.167931, 30.144098, 35.472767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.116322, 30.349068, 35.359085>,  <39.030304, 30.690683, 35.169613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116322, 30.349068, 35.359085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582967, 0.276878, 0.763864,
		-0.783522, -0.440401, -0.438337,
		0.215041, -0.854040, 0.473680,
		39.180836, 30.092855, 35.501190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541786, 30.682058, 35.575642>,  <39.030304, 30.690683, 35.169613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541786, 30.682058, 35.575642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768410, 30.376621, 35.699535>,  <38.904385, 30.193359, 35.773872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768410, 30.376621, 35.699535>,  <38.541786, 30.682058, 35.575642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768410, 30.376621, 35.699535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392778, 0.080180, 0.916131,
		-0.724387, -0.640700, -0.254496,
		0.566559, -0.763593, 0.309734,
		38.938377, 30.147543, 35.792454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189297, 30.384699, 36.154251>,  <38.541786, 30.682058, 35.575642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189297, 30.384699, 36.154251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551235, 30.219292, 36.194771>,  <38.768398, 30.120047, 36.219082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551235, 30.219292, 36.194771>,  <38.189297, 30.384699, 36.154251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551235, 30.219292, 36.194771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127924, -0.037126, 0.991089,
		-0.406073, -0.909738, -0.086492,
		0.904842, -0.413519, 0.101302,
		38.822689, 30.095236, 36.225163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144531, 29.705091, 36.633106>,  <38.189297, 30.384699, 36.154251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144531, 29.705091, 36.633106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502823, 29.880001, 36.665276>,  <38.717796, 29.984947, 36.684578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502823, 29.880001, 36.665276>,  <38.144531, 29.705091, 36.633106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502823, 29.880001, 36.665276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086014, -0.007030, 0.996269,
		0.436210, -0.899300, 0.031315,
		0.895724, 0.437276, 0.080419,
		38.771542, 30.011185, 36.689400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439503, 29.468708, 37.311840>,  <38.144531, 29.705091, 36.633106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439503, 29.468708, 37.311840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676929, 29.774696, 37.211834>,  <38.819386, 29.958288, 37.151833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676929, 29.774696, 37.211834>,  <38.439503, 29.468708, 37.311840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676929, 29.774696, 37.211834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007540, 0.305355, 0.952209,
		0.804753, -0.567080, 0.175479,
		0.593562, 0.764970, -0.250011,
		38.855000, 30.004187, 37.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117348, 29.444363, 37.681499>,  <38.439503, 29.468708, 37.311840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117348, 29.444363, 37.681499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043358, 29.823725, 37.578495>,  <38.998962, 30.051342, 37.516693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043358, 29.823725, 37.578495>,  <39.117348, 29.444363, 37.681499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043358, 29.823725, 37.578495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003310, 0.262631, 0.964891,
		0.982737, 0.177633, -0.051721,
		-0.184979, 0.948405, -0.257509,
		38.987865, 30.108246, 37.501244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559135, 29.805861, 38.097763>,  <39.117348, 29.444363, 37.681499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559135, 29.805861, 38.097763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290405, 30.086153, 38.001743>,  <39.129166, 30.254328, 37.944130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.290405, 30.086153, 38.001743>,  <39.559135, 29.805861, 38.097763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290405, 30.086153, 38.001743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116585, 0.420082, 0.899966,
		0.731475, 0.576636, -0.363917,
		-0.671828, 0.700730, -0.240052,
		39.088856, 30.296371, 37.929729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876812, 30.338161, 38.316547>,  <39.559135, 29.805861, 38.097763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876812, 30.338161, 38.316547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485180, 30.419523, 38.314705>,  <39.250198, 30.468340, 38.313599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485180, 30.419523, 38.314705>,  <39.876812, 30.338161, 38.316547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485180, 30.419523, 38.314705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087260, 0.440263, 0.893619,
		0.183795, 0.874525, -0.448804,
		-0.979084, 0.203406, -0.004607,
		39.191456, 30.480545, 38.313324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853615, 30.927889, 38.708889>,  <39.876812, 30.338161, 38.316547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853615, 30.927889, 38.708889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460796, 30.853127, 38.698715>,  <39.225105, 30.808270, 38.692612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460796, 30.853127, 38.698715>,  <39.853615, 30.927889, 38.708889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460796, 30.853127, 38.698715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097955, 0.390068, 0.915561,
		-0.161201, 0.901617, -0.401374,
		-0.982048, -0.186905, -0.025438,
		39.166183, 30.797054, 38.691082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495304, 31.532677, 39.032063>,  <39.853615, 30.927889, 38.708889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495304, 31.532677, 39.032063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272507, 31.201025, 39.051266>,  <39.138828, 31.002033, 39.062786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272507, 31.201025, 39.051266>,  <39.495304, 31.532677, 39.032063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272507, 31.201025, 39.051266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063415, 0.100092, 0.992955,
		-0.828095, 0.550021, -0.108329,
		-0.556989, -0.829131, 0.048006,
		39.105412, 30.952286, 39.065666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423656, 32.216656, 38.912155>,  <39.495304, 31.532677, 39.032063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423656, 32.216656, 38.912155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370735, 32.612991, 38.901344>,  <39.338982, 32.850792, 38.894859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370735, 32.612991, 38.901344>,  <39.423656, 32.216656, 38.912155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370735, 32.612991, 38.901344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434271, -0.082453, -0.897001,
		-0.891013, -0.106939, 0.441202,
		-0.132303, 0.990841, -0.027026,
		39.331043, 32.910244, 38.893238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758690, 32.406086, 38.711929>,  <39.423656, 32.216656, 38.912155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758690, 32.406086, 38.711929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010567, 32.700974, 38.613949>,  <39.161694, 32.877907, 38.555161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010567, 32.700974, 38.613949>,  <38.758690, 32.406086, 38.711929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010567, 32.700974, 38.613949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307129, -0.053373, -0.950170,
		-0.713554, 0.673546, 0.192812,
		0.629692, 0.737216, -0.244949,
		39.199474, 32.922138, 38.540462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401340, 32.993912, 38.313175>,  <38.758690, 32.406086, 38.711929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401340, 32.993912, 38.313175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785831, 33.067318, 38.230850>,  <39.016525, 33.111362, 38.181458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785831, 33.067318, 38.230850>,  <38.401340, 32.993912, 38.313175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785831, 33.067318, 38.230850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251569, 0.278018, -0.927049,
		-0.112904, 0.942884, 0.313406,
		0.961231, 0.183511, -0.205811,
		39.074200, 33.122372, 38.169106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455578, 33.689983, 38.032749>,  <38.401340, 32.993912, 38.313175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455578, 33.689983, 38.032749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780712, 33.487854, 37.916859>,  <38.975792, 33.366577, 37.847324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780712, 33.487854, 37.916859>,  <38.455578, 33.689983, 38.032749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780712, 33.487854, 37.916859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143326, 0.308592, -0.940334,
		0.564583, 0.805864, 0.178408,
		0.812837, -0.505326, -0.289727,
		39.024563, 33.336258, 37.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854134, 34.158001, 37.557072>,  <38.455578, 33.689983, 38.032749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854134, 34.158001, 37.557072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973484, 33.781982, 37.491009>,  <39.045094, 33.556370, 37.451370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973484, 33.781982, 37.491009>,  <38.854134, 34.158001, 37.557072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973484, 33.781982, 37.491009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166345, 0.119178, -0.978839,
		0.939840, 0.319538, -0.120812,
		0.298378, -0.940049, -0.165162,
		39.062996, 33.499969, 37.441460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245445, 34.237907, 36.797535>,  <38.854134, 34.158001, 37.557072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245445, 34.237907, 36.797535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245491, 33.843124, 36.861931>,  <39.245518, 33.606255, 36.900566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245491, 33.843124, 36.861931>,  <39.245445, 34.237907, 36.797535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245491, 33.843124, 36.861931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267250, -0.155160, -0.951054,
		0.963627, -0.042918, -0.263781,
		0.000111, -0.986957, 0.160986,
		39.245525, 33.547039, 36.910225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573868, 33.857059, 36.170662>,  <39.245445, 34.237907, 36.797535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573868, 33.857059, 36.170662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356331, 33.582878, 36.364315>,  <39.225807, 33.418369, 36.480507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356331, 33.582878, 36.364315>,  <39.573868, 33.857059, 36.170662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356331, 33.582878, 36.364315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357765, -0.332475, -0.872619,
		0.759102, -0.647777, -0.064416,
		-0.543846, -0.685453, 0.484134,
		39.193176, 33.377243, 36.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721111, 33.193455, 35.883610>,  <39.573868, 33.857059, 36.170662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721111, 33.193455, 35.883610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349693, 33.168480, 36.029984>,  <39.126842, 33.153496, 36.117809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349693, 33.168480, 36.029984>,  <39.721111, 33.193455, 35.883610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349693, 33.168480, 36.029984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343103, -0.231996, -0.910197,
		0.141724, -0.970711, 0.193996,
		-0.928544, -0.062436, 0.365934,
		39.071129, 33.149750, 36.139763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453556, 32.563946, 35.766441>,  <39.721111, 33.193455, 35.883610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453556, 32.563946, 35.766441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121456, 32.779259, 35.824329>,  <38.922195, 32.908447, 35.859062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121456, 32.779259, 35.824329>,  <39.453556, 32.563946, 35.766441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121456, 32.779259, 35.824329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392573, -0.380376, -0.837377,
		-0.395709, -0.752034, 0.527123,
		-0.830241, 0.538293, 0.144710,
		38.872383, 32.940742, 35.867744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905628, 32.067211, 35.579296>,  <39.453556, 32.563946, 35.766441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905628, 32.067211, 35.579296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693947, 32.406517, 35.571339>,  <38.566936, 32.610100, 35.566566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693947, 32.406517, 35.571339>,  <38.905628, 32.067211, 35.579296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693947, 32.406517, 35.571339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348426, -0.238626, -0.906453,
		-0.773655, -0.472769, 0.421838,
		-0.529204, 0.848261, -0.019889,
		38.535187, 32.660995, 35.565372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220612, 31.896790, 35.377205>,  <38.905628, 32.067211, 35.579296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220612, 31.896790, 35.377205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268890, 32.285229, 35.294838>,  <38.297859, 32.518291, 35.245419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268890, 32.285229, 35.294838>,  <38.220612, 31.896790, 35.377205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268890, 32.285229, 35.294838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456359, -0.129936, -0.880257,
		-0.881571, 0.200220, 0.427485,
		0.120699, 0.971096, -0.205920,
		38.305099, 32.576557, 35.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588375, 32.112579, 35.167889>,  <38.220612, 31.896790, 35.377205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588375, 32.112579, 35.167889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828827, 32.394661, 35.017513>,  <37.973099, 32.563908, 34.927288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828827, 32.394661, 35.017513>,  <37.588375, 32.112579, 35.167889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828827, 32.394661, 35.017513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411397, -0.130221, -0.902106,
		-0.685122, 0.696945, 0.211838,
		0.601133, 0.705202, -0.375938,
		38.009167, 32.606220, 34.904732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139278, 32.584663, 34.885063>,  <37.588375, 32.112579, 35.167889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139278, 32.584663, 34.885063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.496792, 32.602348, 34.706539>,  <37.711300, 32.612961, 34.599426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.496792, 32.602348, 34.706539>,  <37.139278, 32.584663, 34.885063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496792, 32.602348, 34.706539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443804, -0.056338, -0.894351,
		-0.064688, 0.997432, -0.030731,
		0.893786, 0.044215, -0.446308,
		37.764927, 32.615612, 34.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954086, 32.804756, 34.285076>,  <37.139278, 32.584663, 34.885063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954086, 32.804756, 34.285076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.327835, 32.673649, 34.229187>,  <37.552086, 32.594986, 34.195652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.327835, 32.673649, 34.229187>,  <36.954086, 32.804756, 34.285076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327835, 32.673649, 34.229187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198315, -0.152620, -0.968183,
		0.296012, 0.932351, -0.207604,
		0.934371, -0.327765, -0.139721,
		37.608147, 32.575321, 34.187271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297550, 33.142433, 33.591454>,  <36.954086, 32.804756, 34.285076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297550, 33.142433, 33.591454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.510895, 32.810852, 33.658825>,  <37.638901, 32.611904, 33.699245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.510895, 32.810852, 33.658825>,  <37.297550, 33.142433, 33.591454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510895, 32.810852, 33.658825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070475, -0.154870, -0.985418,
		0.842945, 0.537456, -0.024182,
		0.533364, -0.828949, 0.168424,
		37.670902, 32.562168, 33.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544113, 33.839634, 33.519848>,  <37.297550, 33.142433, 33.591454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544113, 33.839634, 33.519848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279175, 34.111385, 33.393524>,  <37.120213, 34.274437, 33.317730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279175, 34.111385, 33.393524>,  <37.544113, 33.839634, 33.519848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279175, 34.111385, 33.393524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198816, 0.247034, 0.948391,
		0.722332, 0.690956, -0.028552,
		-0.662350, 0.679377, -0.315814,
		37.080471, 34.315197, 33.298779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745140, 34.499336, 33.827675>,  <37.544113, 33.839634, 33.519848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745140, 34.499336, 33.827675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357300, 34.484013, 33.731003>,  <37.124596, 34.474819, 33.673000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357300, 34.484013, 33.731003>,  <37.745140, 34.499336, 33.827675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357300, 34.484013, 33.731003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244329, 0.205513, 0.947664,
		0.013365, 0.977904, -0.208625,
		-0.969600, -0.038307, -0.241677,
		37.066422, 34.472519, 33.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498089, 34.923634, 34.263855>,  <37.745140, 34.499336, 33.827675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498089, 34.923634, 34.263855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158779, 34.756508, 34.133709>,  <36.955193, 34.656231, 34.055622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.158779, 34.756508, 34.133709>,  <37.498089, 34.923634, 34.263855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158779, 34.756508, 34.133709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427108, 0.176571, 0.886793,
		-0.313069, 0.891207, -0.328234,
		-0.848273, -0.417819, -0.325362,
		36.904297, 34.631161, 34.036098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039806, 35.279705, 34.673450>,  <37.498089, 34.923634, 34.263855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039806, 35.279705, 34.673450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.804214, 34.985596, 34.539303>,  <36.662857, 34.809132, 34.458813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.804214, 34.985596, 34.539303>,  <37.039806, 35.279705, 34.673450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804214, 34.985596, 34.539303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608361, 0.130224, 0.782904,
		-0.531975, 0.665143, -0.524011,
		-0.588982, -0.735273, -0.335371,
		36.627522, 34.765015, 34.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403992, 35.502953, 34.742062>,  <37.039806, 35.279705, 34.673450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403992, 35.502953, 34.742062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359653, 35.105442, 34.746544>,  <36.333050, 34.866936, 34.749233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359653, 35.105442, 34.746544>,  <36.403992, 35.502953, 34.742062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359653, 35.105442, 34.746544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602834, 0.076199, 0.794220,
		-0.790129, 0.081283, -0.607527,
		-0.110850, -0.993774, 0.011207,
		36.326397, 34.807308, 34.749905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665367, 35.337330, 34.728504>,  <36.403992, 35.502953, 34.742062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665367, 35.337330, 34.728504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856422, 35.022243, 34.884129>,  <35.971054, 34.833191, 34.977505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856422, 35.022243, 34.884129>,  <35.665367, 35.337330, 34.728504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856422, 35.022243, 34.884129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641009, -0.009613, 0.767473,
		-0.600810, -0.615964, -0.509525,
		0.477634, -0.787716, 0.389063,
		35.999714, 34.785931, 35.000847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095375, 34.835072, 34.992336>,  <35.665367, 35.337330, 34.728504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095375, 34.835072, 34.992336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439880, 34.748886, 35.176426>,  <35.646584, 34.697174, 35.286880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439880, 34.748886, 35.176426>,  <35.095375, 34.835072, 34.992336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439880, 34.748886, 35.176426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469901, 0.007089, 0.882691,
		-0.193448, -0.976487, -0.095140,
		0.861261, -0.215461, 0.460223,
		35.698257, 34.684250, 35.314491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912575, 34.260139, 35.573982>,  <35.095375, 34.835072, 34.992336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912575, 34.260139, 35.573982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276489, 34.407536, 35.650414>,  <35.494839, 34.495975, 35.696270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276489, 34.407536, 35.650414>,  <34.912575, 34.260139, 35.573982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276489, 34.407536, 35.650414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167676, -0.094840, 0.981270,
		0.379713, -0.924780, -0.024496,
		0.909782, 0.368493, 0.191075,
		35.549423, 34.518082, 35.707737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154263, 33.846172, 36.072056>,  <34.912575, 34.260139, 35.573982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154263, 33.846172, 36.072056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376331, 34.178307, 36.091347>,  <35.509575, 34.377586, 36.102921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376331, 34.178307, 36.091347>,  <35.154263, 33.846172, 36.072056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376331, 34.178307, 36.091347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077500, -0.006085, 0.996974,
		0.828115, -0.557232, 0.060973,
		0.555175, 0.830335, 0.048224,
		35.542885, 34.427406, 36.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583961, 33.711308, 36.508858>,  <35.154263, 33.846172, 36.072056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583961, 33.711308, 36.508858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582703, 34.111286, 36.512871>,  <35.581947, 34.351273, 36.515278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582703, 34.111286, 36.512871>,  <35.583961, 33.711308, 36.508858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582703, 34.111286, 36.512871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171647, -0.010425, 0.985103,
		0.985154, 0.001376, 0.171670,
		-0.003145, 0.999945, 0.010034,
		35.581760, 34.411270, 36.515881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069351, 33.889862, 36.983307>,  <35.583961, 33.711308, 36.508858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069351, 33.889862, 36.983307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808079, 34.192139, 36.964184>,  <35.651314, 34.373505, 36.952709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808079, 34.192139, 36.964184>,  <36.069351, 33.889862, 36.983307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808079, 34.192139, 36.964184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013430, 0.051566, 0.998579,
		0.757081, 0.652897, -0.023533,
		-0.653183, 0.755690, -0.047808,
		35.612125, 34.418846, 36.949841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110729, 34.221413, 37.685505>,  <36.069351, 33.889862, 36.983307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110729, 34.221413, 37.685505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775105, 34.414574, 37.585285>,  <35.573730, 34.530472, 37.525154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775105, 34.414574, 37.585285>,  <36.110729, 34.221413, 37.685505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775105, 34.414574, 37.585285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017348, 0.436563, 0.899506,
		0.543755, 0.759090, -0.357927,
		-0.839065, 0.482901, -0.250553,
		35.523384, 34.559444, 37.510120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.130795, 33.882923, 29.720709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732464, 33.919384, 29.719049>,  <37.493465, 33.941261, 29.718054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732464, 33.919384, 29.719049>,  <38.130795, 33.882923, 29.720709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732464, 33.919384, 29.719049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037437, 0.449580, 0.892455,
		0.083217, 0.888577, -0.451117,
		-0.995828, 0.091156, -0.004147,
		37.433716, 33.946732, 29.717806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924599, 34.642567, 29.860632>,  <38.130795, 33.882923, 29.720709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924599, 34.642567, 29.860632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626114, 34.392509, 29.952162>,  <37.447021, 34.242474, 30.007080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626114, 34.392509, 29.952162>,  <37.924599, 34.642567, 29.860632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626114, 34.392509, 29.952162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050933, 0.396339, 0.916691,
		-0.663757, 0.672391, -0.327593,
		-0.746212, -0.625145, 0.228826,
		37.402248, 34.204967, 30.020809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523872, 35.125961, 30.245153>,  <37.924599, 34.642567, 29.860632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523872, 35.125961, 30.245153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 34.753822, 30.341558>,  <37.347019, 34.530537, 30.399403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 34.753822, 30.341558>,  <37.523872, 35.125961, 30.245153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413338, 34.753822, 30.341558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013116, 0.247104, 0.968900,
		-0.960972, 0.270901, -0.056080,
		-0.276334, -0.930350, 0.241014,
		37.330437, 34.474716, 30.413862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904327, 35.162380, 30.582571>,  <37.523872, 35.125961, 30.245153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904327, 35.162380, 30.582571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055523, 34.810287, 30.697334>,  <37.146240, 34.599033, 30.766193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055523, 34.810287, 30.697334>,  <36.904327, 35.162380, 30.582571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055523, 34.810287, 30.697334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055911, 0.287633, 0.956107,
		-0.924121, -0.377437, 0.059507,
		0.377987, -0.880232, 0.286910,
		37.168919, 34.546219, 30.783407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482006, 35.080509, 31.118202>,  <36.904327, 35.162380, 30.582571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482006, 35.080509, 31.118202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775017, 34.813206, 31.170109>,  <36.950825, 34.652824, 31.201252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775017, 34.813206, 31.170109>,  <36.482006, 35.080509, 31.118202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775017, 34.813206, 31.170109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044560, 0.143146, 0.988698,
		-0.679280, -0.730029, 0.075080,
		0.732525, -0.668257, 0.129766,
		36.994774, 34.612728, 31.209038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107780, 34.704563, 31.591852>,  <36.482006, 35.080509, 31.118202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107780, 34.704563, 31.591852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497711, 34.616615, 31.606674>,  <36.731670, 34.563847, 31.615566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497711, 34.616615, 31.606674>,  <36.107780, 34.704563, 31.591852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497711, 34.616615, 31.606674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072361, -0.154778, 0.985296,
		-0.210904, -0.963172, -0.166792,
		0.974825, -0.219872, 0.037052,
		36.790157, 34.550655, 31.617790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164108, 34.086555, 31.995302>,  <36.107780, 34.704563, 31.591852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164108, 34.086555, 31.995302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515495, 34.276897, 32.012547>,  <36.726326, 34.391102, 32.022892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515495, 34.276897, 32.012547>,  <36.164108, 34.086555, 31.995302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515495, 34.276897, 32.012547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027218, -0.139920, 0.989789,
		0.477032, -0.868321, -0.135866,
		0.878464, 0.475859, 0.043112,
		36.779034, 34.419655, 32.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688068, 33.624615, 32.355450>,  <36.164108, 34.086555, 31.995302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688068, 33.624615, 32.355450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841160, 33.991455, 32.400089>,  <36.933014, 34.211559, 32.426872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841160, 33.991455, 32.400089>,  <36.688068, 33.624615, 32.355450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841160, 33.991455, 32.400089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005275, -0.118624, 0.992925,
		0.923847, -0.380605, -0.040562,
		0.382724, 0.917098, 0.111598,
		36.955978, 34.266582, 32.433567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134647, 33.547268, 32.900555>,  <36.688068, 33.624615, 32.355450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134647, 33.547268, 32.900555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088951, 33.942078, 32.855423>,  <37.061535, 34.178963, 32.828346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088951, 33.942078, 32.855423>,  <37.134647, 33.547268, 32.900555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088951, 33.942078, 32.855423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223653, 0.085102, 0.970946,
		0.967951, 0.136154, 0.211030,
		-0.114239, 0.987026, -0.112826,
		37.054680, 34.238186, 32.821575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827259, 33.264797, 33.126350>,  <37.134647, 33.547268, 32.900555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827259, 33.264797, 33.126350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807598, 32.886353, 33.254387>,  <37.795803, 32.659286, 33.331207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807598, 32.886353, 33.254387>,  <37.827259, 33.264797, 33.126350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807598, 32.886353, 33.254387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175615, -0.323671, -0.929729,
		0.983231, 0.010516, 0.182060,
		-0.049151, -0.946111, 0.320090,
		37.792854, 32.602520, 33.350414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412987, 32.941593, 32.923931>,  <37.827259, 33.264797, 33.126350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412987, 32.941593, 32.923931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147598, 32.645794, 32.969448>,  <37.988365, 32.468315, 32.996758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147598, 32.645794, 32.969448>,  <38.412987, 32.941593, 32.923931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147598, 32.645794, 32.969448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275175, -0.382603, -0.881983,
		0.695760, -0.553859, 0.457338,
		-0.663472, -0.739496, 0.113792,
		37.948555, 32.423946, 33.003586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806347, 32.340706, 32.679447>,  <38.412987, 32.941593, 32.923931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806347, 32.340706, 32.679447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426476, 32.215599, 32.672619>,  <38.198551, 32.140537, 32.668522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426476, 32.215599, 32.672619>,  <38.806347, 32.340706, 32.679447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426476, 32.215599, 32.672619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195506, -0.549284, -0.812444,
		0.244726, -0.774897, 0.582789,
		-0.949677, -0.312765, -0.017073,
		38.141571, 32.121769, 32.667496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766880, 31.535488, 32.618046>,  <38.806347, 32.340706, 32.679447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766880, 31.535488, 32.618046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409836, 31.669170, 32.497013>,  <38.195610, 31.749380, 32.424393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409836, 31.669170, 32.497013>,  <38.766880, 31.535488, 32.618046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409836, 31.669170, 32.497013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138242, -0.435932, -0.889299,
		-0.429107, -0.835628, 0.342918,
		-0.892612, 0.334199, -0.302581,
		38.142052, 31.769432, 32.406239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401306, 31.012230, 32.291553>,  <38.766880, 31.535488, 32.618046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401306, 31.012230, 32.291553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220188, 31.331816, 32.133244>,  <38.111519, 31.523567, 32.038258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220188, 31.331816, 32.133244>,  <38.401306, 31.012230, 32.291553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220188, 31.331816, 32.133244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180177, -0.352737, -0.918212,
		-0.873222, -0.487068, 0.015761,
		-0.452792, 0.798963, -0.395776,
		38.084351, 31.571505, 32.014511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003891, 30.712091, 31.834354>,  <38.401306, 31.012230, 32.291553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003891, 30.712091, 31.834354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014900, 31.093107, 31.713089>,  <38.021507, 31.321716, 31.640329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014900, 31.093107, 31.713089>,  <38.003891, 30.712091, 31.834354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014900, 31.093107, 31.713089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165951, -0.303424, -0.938293,
		-0.985750, -0.024486, -0.166426,
		0.027523, 0.952541, -0.303164,
		38.023155, 31.378870, 31.622139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604691, 30.757669, 31.235842>,  <38.003891, 30.712091, 31.834354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604691, 30.757669, 31.235842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867027, 31.059484, 31.245207>,  <38.024429, 31.240574, 31.250826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867027, 31.059484, 31.245207>,  <37.604691, 30.757669, 31.235842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867027, 31.059484, 31.245207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271244, -0.206592, -0.940078,
		-0.704486, 0.622892, -0.340155,
		0.655840, 0.754537, 0.023415,
		38.063778, 31.285845, 31.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580246, 30.993713, 30.599445>,  <37.604691, 30.757669, 31.235842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580246, 30.993713, 30.599445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922131, 31.173882, 30.702671>,  <38.127262, 31.281982, 30.764606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922131, 31.173882, 30.702671>,  <37.580246, 30.993713, 30.599445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922131, 31.173882, 30.702671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351537, -0.136417, -0.926182,
		-0.381965, 0.882334, -0.274936,
		0.854708, 0.450419, 0.258066,
		38.178543, 31.309008, 30.780090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660072, 31.610516, 30.242882>,  <37.580246, 30.993713, 30.599445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660072, 31.610516, 30.242882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020321, 31.485027, 30.363192>,  <38.236469, 31.409735, 30.435377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020321, 31.485027, 30.363192>,  <37.660072, 31.610516, 30.242882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020321, 31.485027, 30.363192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279124, -0.112943, -0.953590,
		0.333131, 0.942774, -0.014152,
		0.900618, -0.313721, 0.300776,
		38.290504, 31.390911, 30.453424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087296, 32.044357, 29.993578>,  <37.660072, 31.610516, 30.242882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087296, 32.044357, 29.993578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332062, 31.744263, 30.093744>,  <38.478920, 31.564205, 30.153845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332062, 31.744263, 30.093744>,  <38.087296, 32.044357, 29.993578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332062, 31.744263, 30.093744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355469, -0.021967, -0.934430,
		0.706543, 0.660806, 0.253244,
		0.611913, -0.750236, 0.250417,
		38.515636, 31.519192, 30.168869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801815, 32.214336, 29.725273>,  <38.087296, 32.044357, 29.993578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801815, 32.214336, 29.725273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797535, 31.817965, 29.778845>,  <38.794968, 31.580141, 29.810987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797535, 31.817965, 29.778845>,  <38.801815, 32.214336, 29.725273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797535, 31.817965, 29.778845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479770, -0.122603, -0.868786,
		0.877329, 0.054959, 0.476732,
		-0.010702, -0.990933, 0.133931,
		38.794323, 31.520685, 29.819025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454071, 31.995317, 29.490240>,  <38.801815, 32.214336, 29.725273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454071, 31.995317, 29.490240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239708, 31.657614, 29.488241>,  <39.111092, 31.454990, 29.487041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239708, 31.657614, 29.488241>,  <39.454071, 31.995317, 29.490240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239708, 31.657614, 29.488241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376965, -0.233981, -0.896187,
		0.755446, -0.482158, 0.443649,
		-0.535909, -0.844261, -0.004997,
		39.078934, 31.404335, 29.486742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896870, 31.470207, 29.392088>,  <39.454071, 31.995317, 29.490240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896870, 31.470207, 29.392088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538338, 31.321325, 29.295713>,  <39.323219, 31.231997, 29.237888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538338, 31.321325, 29.295713>,  <39.896870, 31.470207, 29.392088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538338, 31.321325, 29.295713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366496, -0.316138, -0.875064,
		0.249534, -0.872651, 0.419777,
		-0.896333, -0.372205, -0.240936,
		39.269436, 31.209663, 29.223433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054688, 30.852619, 29.293800>,  <39.896870, 31.470207, 29.392088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054688, 30.852619, 29.293800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708679, 30.895124, 29.097658>,  <39.501076, 30.920628, 28.979973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708679, 30.895124, 29.097658>,  <40.054688, 30.852619, 29.293800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708679, 30.895124, 29.097658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363869, -0.540043, -0.758916,
		-0.345455, -0.834903, 0.428483,
		-0.865021, 0.106260, -0.490355,
		39.449173, 30.927002, 28.950552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.140739, 29.353651, 28.372498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521458, 29.461597, 28.430813>,  <34.749889, 29.526365, 28.465801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.521458, 29.461597, 28.430813>,  <34.140739, 29.353651, 28.372498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521458, 29.461597, 28.430813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095720, -0.190235, 0.977061,
		0.291409, -0.943919, -0.155234,
		0.951798, 0.269865, 0.145789,
		34.806995, 29.542557, 28.474550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351696, 28.842886, 28.846603>,  <34.140739, 29.353651, 28.372498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351696, 28.842886, 28.846603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623062, 29.133074, 28.892979>,  <34.785881, 29.307186, 28.920803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623062, 29.133074, 28.892979>,  <34.351696, 28.842886, 28.846603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623062, 29.133074, 28.892979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044569, -0.116876, 0.992146,
		0.733322, -0.678258, -0.046958,
		0.678419, 0.725470, 0.115937,
		34.826588, 29.350714, 28.927759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784782, 28.596481, 29.345320>,  <34.351696, 28.842886, 28.846603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784782, 28.596481, 29.345320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.884434, 28.983257, 29.323549>,  <34.944225, 29.215322, 29.310488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.884434, 28.983257, 29.323549>,  <34.784782, 28.596481, 29.345320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884434, 28.983257, 29.323549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004716, 0.054985, 0.998476,
		0.968460, -0.249002, 0.009138,
		0.249125, 0.966941, -0.054425,
		34.959171, 29.273340, 29.307222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360653, 28.709839, 29.696867>,  <34.784782, 28.596481, 29.345320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360653, 28.709839, 29.696867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168076, 29.060331, 29.688622>,  <35.052528, 29.270628, 29.683674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168076, 29.060331, 29.688622>,  <35.360653, 28.709839, 29.696867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168076, 29.060331, 29.688622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300778, 0.187264, 0.935128,
		0.823251, 0.444013, -0.353709,
		-0.481446, 0.876233, -0.020616,
		35.023643, 29.323202, 29.682436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770390, 29.231804, 30.084612>,  <35.360653, 28.709839, 29.696867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770390, 29.231804, 30.084612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411427, 29.408058, 30.093594>,  <35.196049, 29.513811, 30.098982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.411427, 29.408058, 30.093594>,  <35.770390, 29.231804, 30.084612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411427, 29.408058, 30.093594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113205, 0.180773, 0.976988,
		0.426438, 0.879296, -0.212109,
		-0.897405, 0.440636, 0.022453,
		35.142204, 29.540249, 30.100328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783237, 29.880547, 30.542717>,  <35.770390, 29.231804, 30.084612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783237, 29.880547, 30.542717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398815, 29.771326, 30.525696>,  <35.168159, 29.705793, 30.515484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398815, 29.771326, 30.525696>,  <35.783237, 29.880547, 30.542717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398815, 29.771326, 30.525696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104534, 0.216667, 0.970633,
		-0.255811, 0.937283, -0.236773,
		-0.961059, -0.273049, -0.042552,
		35.110497, 29.689411, 30.512930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328140, 30.515320, 30.864765>,  <35.783237, 29.880547, 30.542717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328140, 30.515320, 30.864765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117592, 30.175222, 30.866491>,  <34.991261, 29.971165, 30.867527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.117592, 30.175222, 30.866491>,  <35.328140, 30.515320, 30.864765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117592, 30.175222, 30.866491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190221, 0.122709, 0.974042,
		-0.828702, 0.511889, -0.226325,
		-0.526374, -0.850242, 0.004317,
		34.959679, 29.920149, 30.867786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763721, 30.609596, 31.231749>,  <35.328140, 30.515320, 30.864765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763721, 30.609596, 31.231749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753685, 30.210604, 31.258295>,  <34.747665, 29.971209, 31.274223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753685, 30.210604, 31.258295>,  <34.763721, 30.609596, 31.231749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753685, 30.210604, 31.258295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325025, 0.070920, 0.943043,
		-0.945373, 0.002088, -0.325985,
		-0.025088, -0.997480, 0.066367,
		34.746159, 29.911360, 31.278206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268398, 30.459442, 31.699841>,  <34.763721, 30.609596, 31.231749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268398, 30.459442, 31.699841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469261, 30.113586, 31.705982>,  <34.589779, 29.906073, 31.709667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469261, 30.113586, 31.705982>,  <34.268398, 30.459442, 31.699841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469261, 30.113586, 31.705982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128374, -0.056974, 0.990088,
		-0.855196, -0.499150, -0.139607,
		0.502156, -0.864641, 0.015354,
		34.619907, 29.854195, 31.710588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924877, 30.089523, 32.232491>,  <34.268398, 30.459442, 31.699841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924877, 30.089523, 32.232491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278858, 29.905273, 32.205120>,  <34.491245, 29.794724, 32.188698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278858, 29.905273, 32.205120>,  <33.924877, 30.089523, 32.232491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278858, 29.905273, 32.205120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000316, -0.146354, 0.989232,
		-0.465679, -0.875446, -0.129371,
		0.884953, -0.460624, -0.068430,
		34.544346, 29.767086, 32.184589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762566, 29.561062, 32.511459>,  <33.924877, 30.089523, 32.232491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762566, 29.561062, 32.511459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161152, 29.584795, 32.535229>,  <34.400303, 29.599035, 32.549488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161152, 29.584795, 32.535229>,  <33.762566, 29.561062, 32.511459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161152, 29.584795, 32.535229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049384, -0.158261, 0.986162,
		0.067917, -0.985613, -0.154772,
		0.996468, 0.059334, 0.059422,
		34.460091, 29.602594, 32.553055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887856, 29.257740, 33.108921>,  <33.762566, 29.561062, 32.511459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887856, 29.257740, 33.108921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204880, 29.489534, 33.032986>,  <34.395096, 29.628611, 32.987423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204880, 29.489534, 33.032986>,  <33.887856, 29.257740, 33.108921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204880, 29.489534, 33.032986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148049, 0.119139, 0.981778,
		0.591546, -0.806225, 0.008632,
		0.792562, 0.579488, -0.189837,
		34.442650, 29.663382, 32.976036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418079, 28.927015, 33.556156>,  <33.887856, 29.257740, 33.108921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418079, 28.927015, 33.556156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485420, 29.311224, 33.467564>,  <34.525826, 29.541750, 33.414410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.485420, 29.311224, 33.467564>,  <34.418079, 28.927015, 33.556156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485420, 29.311224, 33.467564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131281, 0.200836, 0.970788,
		0.976945, -0.192513, -0.092287,
		0.168355, 0.960523, -0.221479,
		34.535927, 29.599380, 33.401119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939678, 29.069319, 33.968006>,  <34.418079, 28.927015, 33.556156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939678, 29.069319, 33.968006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822449, 29.440601, 33.876320>,  <34.752113, 29.663372, 33.821308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.822449, 29.440601, 33.876320>,  <34.939678, 29.069319, 33.968006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822449, 29.440601, 33.876320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107465, 0.270205, 0.956787,
		0.950033, 0.255772, -0.178939,
		-0.293069, 0.928208, -0.229217,
		34.734528, 29.719063, 33.807556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724552, 28.928667, 33.844006>,  <34.939678, 29.069319, 33.968006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724552, 28.928667, 33.844006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859325, 28.567060, 33.949253>,  <35.940189, 28.350098, 34.012402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859325, 28.567060, 33.949253>,  <35.724552, 28.928667, 33.844006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859325, 28.567060, 33.949253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103875, -0.242065, -0.964684,
		0.935781, 0.352366, 0.012345,
		0.336933, -0.904015, 0.263122,
		35.960407, 28.295856, 34.028191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224941, 28.837418, 33.342678>,  <35.724552, 28.928667, 33.844006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224941, 28.837418, 33.342678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173077, 28.469788, 33.491535>,  <36.141960, 28.249210, 33.580849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173077, 28.469788, 33.491535>,  <36.224941, 28.837418, 33.342678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173077, 28.469788, 33.491535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418625, -0.390961, -0.819697,
		0.898856, 0.049508, 0.435439,
		-0.129658, -0.919075, 0.372143,
		36.134178, 28.194065, 33.603180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857338, 28.551378, 33.217514>,  <36.224941, 28.837418, 33.342678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857338, 28.551378, 33.217514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560078, 28.283762, 33.221676>,  <36.381721, 28.123192, 33.224174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560078, 28.283762, 33.221676>,  <36.857338, 28.551378, 33.217514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560078, 28.283762, 33.221676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406321, -0.463580, -0.787399,
		0.531626, -0.580930, 0.616356,
		-0.743154, -0.669039, 0.010407,
		36.337132, 28.083050, 33.224796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195499, 27.885340, 33.080513>,  <36.857338, 28.551378, 33.217514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195499, 27.885340, 33.080513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810387, 27.795013, 33.021099>,  <36.579319, 27.740818, 32.985451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810387, 27.795013, 33.021099>,  <37.195499, 27.885340, 33.080513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810387, 27.795013, 33.021099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231464, -0.405031, -0.884519,
		0.139576, -0.885978, 0.442224,
		-0.962779, -0.225816, -0.148539,
		36.521553, 27.727268, 32.976536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188618, 27.151022, 32.852646>,  <37.195499, 27.885340, 33.080513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188618, 27.151022, 32.852646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846004, 27.332037, 32.753399>,  <36.640438, 27.440645, 32.693851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846004, 27.332037, 32.753399>,  <37.188618, 27.151022, 32.852646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846004, 27.332037, 32.753399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149526, -0.242546, -0.958548,
		-0.493959, -0.858127, 0.140082,
		-0.856532, 0.452537, -0.248119,
		36.589046, 27.467798, 32.678963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921909, 26.670273, 32.307644>,  <37.188618, 27.151022, 32.852646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921909, 26.670273, 32.307644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715160, 27.010202, 32.266369>,  <36.591110, 27.214159, 32.241604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715160, 27.010202, 32.266369>,  <36.921909, 26.670273, 32.307644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715160, 27.010202, 32.266369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069366, -0.078564, -0.994493,
		-0.853248, -0.521182, -0.018341,
		-0.516871, 0.849822, -0.103187,
		36.560101, 27.265148, 32.235413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400928, 26.456833, 31.814684>,  <36.921909, 26.670273, 32.307644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400928, 26.456833, 31.814684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412846, 26.856653, 31.813135>,  <36.419994, 27.096544, 31.812206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412846, 26.856653, 31.813135>,  <36.400928, 26.456833, 31.814684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412846, 26.856653, 31.813135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009729, -0.003584, -0.999946,
		-0.999509, 0.029824, 0.009618,
		0.029788, 0.999549, -0.003873,
		36.421783, 27.156517, 31.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775242, 26.660181, 31.379515>,  <36.400928, 26.456833, 31.814684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775242, 26.660181, 31.379515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067806, 26.931736, 31.405300>,  <36.243343, 27.094669, 31.420771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.067806, 26.931736, 31.405300>,  <35.775242, 26.660181, 31.379515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067806, 26.931736, 31.405300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133384, -0.049717, -0.989817,
		-0.668770, 0.732557, -0.126916,
		0.731407, 0.678888, 0.064462,
		36.287228, 27.135403, 31.424639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590908, 27.116539, 30.892862>,  <35.775242, 26.660181, 31.379515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590908, 27.116539, 30.892862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975445, 27.206196, 30.956842>,  <36.206165, 27.259991, 30.995232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975445, 27.206196, 30.956842>,  <35.590908, 27.116539, 30.892862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975445, 27.206196, 30.956842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137465, 0.112673, -0.984077,
		-0.238597, 0.968021, 0.077505,
		0.961340, 0.224144, 0.159953,
		36.263847, 27.273439, 31.004827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847988, 27.764675, 30.488710>,  <35.590908, 27.116539, 30.892862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847988, 27.764675, 30.488710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185734, 27.564381, 30.564932>,  <36.388382, 27.444204, 30.610664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185734, 27.564381, 30.564932>,  <35.847988, 27.764675, 30.488710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185734, 27.564381, 30.564932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341579, 0.229121, -0.911498,
		0.412761, 0.834725, 0.364503,
		0.844365, -0.500737, 0.190552,
		36.439045, 27.414160, 30.622097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509945, 28.218525, 30.308527>,  <35.847988, 27.764675, 30.488710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509945, 28.218525, 30.308527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567326, 27.822922, 30.294170>,  <36.601753, 27.585560, 30.285557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567326, 27.822922, 30.294170>,  <36.509945, 28.218525, 30.308527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567326, 27.822922, 30.294170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252689, 0.071669, -0.964890,
		0.956854, 0.129348, 0.260192,
		0.143454, -0.989006, -0.035892,
		36.610363, 27.526220, 30.283403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122509, 28.251181, 30.061127>,  <36.509945, 28.218525, 30.308527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122509, 28.251181, 30.061127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004986, 27.877846, 29.978603>,  <36.934471, 27.653845, 29.929089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004986, 27.877846, 29.978603>,  <37.122509, 28.251181, 30.061127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004986, 27.877846, 29.978603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437929, 0.060415, -0.896978,
		0.849645, -0.353886, 0.390984,
		-0.293806, -0.933336, -0.206308,
		36.916843, 27.597845, 29.916712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667625, 27.877028, 29.842285>,  <37.122509, 28.251181, 30.061127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667625, 27.877028, 29.842285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353760, 27.682550, 29.688446>,  <37.165440, 27.565865, 29.596142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353760, 27.682550, 29.688446>,  <37.667625, 27.877028, 29.842285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353760, 27.682550, 29.688446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426745, 0.026365, -0.903988,
		0.449653, -0.873453, 0.186793,
		-0.784666, -0.486194, -0.384597,
		37.118359, 27.536692, 29.573067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013180, 27.366627, 29.410143>,  <37.667625, 27.877028, 29.842285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013180, 27.366627, 29.410143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634449, 27.406963, 29.287933>,  <37.407211, 27.431166, 29.214607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634449, 27.406963, 29.287933>,  <38.013180, 27.366627, 29.410143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634449, 27.406963, 29.287933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305016, -0.020802, -0.952120,
		-0.102371, -0.994685, -0.011063,
		-0.946829, 0.100844, -0.305525,
		37.350399, 27.437216, 29.196276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648689, 27.070663, 29.028469>,  <38.013180, 27.366627, 29.410143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648689, 27.070663, 29.028469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909019, 27.373779, 29.009813>,  <39.065220, 27.555649, 28.998619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909019, 27.373779, 29.009813>,  <38.648689, 27.070663, 29.028469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909019, 27.373779, 29.009813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091422, 0.139208, 0.986034,
		0.753700, -0.637475, 0.159879,
		0.650828, 0.757791, -0.046642,
		39.104267, 27.601116, 28.995821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845867, 27.002636, 29.728354>,  <38.648689, 27.070663, 29.028469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845867, 27.002636, 29.728354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998806, 27.344627, 29.588165>,  <39.090569, 27.549822, 29.504053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998806, 27.344627, 29.588165>,  <38.845867, 27.002636, 29.728354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998806, 27.344627, 29.588165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167827, 0.308723, 0.936229,
		0.908652, -0.416778, -0.025450,
		0.382343, 0.854977, -0.350469,
		39.113510, 27.601120, 29.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439449, 27.074957, 30.133640>,  <38.845867, 27.002636, 29.728354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439449, 27.074957, 30.133640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311504, 27.429522, 29.999794>,  <39.234737, 27.642260, 29.919487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311504, 27.429522, 29.999794>,  <39.439449, 27.074957, 30.133640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311504, 27.429522, 29.999794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073775, 0.375397, 0.923923,
		0.944587, 0.270842, -0.185470,
		-0.319862, 0.886409, -0.334614,
		39.215546, 27.695444, 29.899410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872711, 27.532265, 30.379808>,  <39.439449, 27.074957, 30.133640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872711, 27.532265, 30.379808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560509, 27.765356, 30.289261>,  <39.373188, 27.905210, 30.234932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560509, 27.765356, 30.289261>,  <39.872711, 27.532265, 30.379808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560509, 27.765356, 30.289261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047887, 0.416765, 0.907752,
		0.623315, 0.697663, -0.353192,
		-0.780503, 0.582729, -0.226367,
		39.326359, 27.940174, 30.221352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077866, 28.170502, 30.519196>,  <39.872711, 27.532265, 30.379808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077866, 28.170502, 30.519196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682594, 28.231396, 30.526384>,  <39.445431, 28.267933, 30.530697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682594, 28.231396, 30.526384>,  <40.077866, 28.170502, 30.519196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682594, 28.231396, 30.526384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101837, 0.564313, 0.819256,
		0.114579, 0.811403, -0.573146,
		-0.988181, 0.152237, 0.017973,
		39.386139, 28.277067, 30.531776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023994, 28.889977, 30.657213>,  <40.077866, 28.170502, 30.519196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023994, 28.889977, 30.657213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676559, 28.722328, 30.762959>,  <39.468098, 28.621738, 30.826406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676559, 28.722328, 30.762959>,  <40.023994, 28.889977, 30.657213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676559, 28.722328, 30.762959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078256, 0.410779, 0.908370,
		-0.489314, 0.809689, -0.324000,
		-0.868590, -0.419123, 0.264363,
		39.415981, 28.596592, 30.842268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628963, 29.393549, 30.983156>,  <40.023994, 28.889977, 30.657213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628963, 29.393549, 30.983156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459518, 29.053728, 31.108891>,  <39.357849, 28.849834, 31.184330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459518, 29.053728, 31.108891>,  <39.628963, 29.393549, 30.983156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459518, 29.053728, 31.108891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009614, 0.351205, 0.936249,
		-0.905790, 0.393589, -0.156944,
		-0.423617, -0.849554, 0.314334,
		39.332432, 28.798862, 31.203190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040012, 29.610579, 31.349892>,  <39.628963, 29.393549, 30.983156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040012, 29.610579, 31.349892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143593, 29.249411, 31.487110>,  <39.205742, 29.032709, 31.569441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143593, 29.249411, 31.487110>,  <39.040012, 29.610579, 31.349892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143593, 29.249411, 31.487110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183929, 0.302564, 0.935214,
		-0.948216, -0.305271, -0.087723,
		0.258952, -0.902920, 0.343045,
		39.221279, 28.978535, 31.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616028, 29.495716, 31.950104>,  <39.040012, 29.610579, 31.349892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616028, 29.495716, 31.950104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908798, 29.229889, 32.010273>,  <39.084461, 29.070393, 32.046375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908798, 29.229889, 32.010273>,  <38.616028, 29.495716, 31.950104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908798, 29.229889, 32.010273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116679, 0.095262, 0.988591,
		-0.671317, -0.741129, -0.007816,
		0.731929, -0.664569, 0.150425,
		39.128376, 29.030518, 32.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394497, 29.127956, 32.519928>,  <38.616028, 29.495716, 31.950104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394497, 29.127956, 32.519928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789093, 29.064058, 32.505428>,  <39.025852, 29.025719, 32.496731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789093, 29.064058, 32.505428>,  <38.394497, 29.127956, 32.519928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789093, 29.064058, 32.505428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051947, 0.095231, 0.994099,
		-0.155353, -0.982554, 0.102243,
		0.986492, -0.159748, -0.036246,
		39.085041, 29.016134, 32.494553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543953, 28.661589, 33.089680>,  <38.394497, 29.127956, 32.519928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543953, 28.661589, 33.089680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894466, 28.821396, 32.981960>,  <39.104774, 28.917280, 32.917328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894466, 28.821396, 32.981960>,  <38.543953, 28.661589, 33.089680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894466, 28.821396, 32.981960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186644, 0.233803, 0.954201,
		0.444182, -0.886409, 0.130309,
		0.876280, 0.399518, -0.269294,
		39.157349, 28.941252, 32.901173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048954, 28.366446, 33.524624>,  <38.543953, 28.661589, 33.089680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048954, 28.366446, 33.524624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187008, 28.714748, 33.384529>,  <39.269840, 28.923729, 33.300472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187008, 28.714748, 33.384529>,  <39.048954, 28.366446, 33.524624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187008, 28.714748, 33.384529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251558, 0.273695, 0.928337,
		0.904214, -0.408504, -0.124585,
		0.345131, 0.870756, -0.350241,
		39.290546, 28.975975, 33.279457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662537, 28.398312, 33.945736>,  <39.048954, 28.366446, 33.524624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662537, 28.398312, 33.945736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575760, 28.762394, 33.804623>,  <39.523693, 28.980844, 33.719955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575760, 28.762394, 33.804623>,  <39.662537, 28.398312, 33.945736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575760, 28.762394, 33.804623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199596, 0.395117, 0.896685,
		0.955561, 0.124116, -0.267393,
		-0.216945, 0.910207, -0.352785,
		39.510677, 29.035456, 33.698788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171867, 28.822817, 34.182655>,  <39.662537, 28.398312, 33.945736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171867, 28.822817, 34.182655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891026, 29.096109, 34.102413>,  <39.722519, 29.260084, 34.054268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891026, 29.096109, 34.102413>,  <40.171867, 28.822817, 34.182655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891026, 29.096109, 34.102413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233821, 0.487313, 0.841340,
		0.672590, 0.543801, -0.501899,
		-0.702104, 0.683232, -0.200610,
		39.680393, 29.301079, 34.042229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.813774, 30.121157, 28.949135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588245, 30.400269, 28.772408>,  <39.452927, 30.567736, 28.666372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588245, 30.400269, 28.772408>,  <39.813774, 30.121157, 28.949135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588245, 30.400269, 28.772408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273980, -0.346634, -0.897096,
		-0.779124, -0.626855, 0.004263,
		-0.563826, 0.697781, -0.441816,
		39.419098, 30.609602, 28.639862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384239, 29.788654, 28.461409>,  <39.813774, 30.121157, 28.949135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384239, 29.788654, 28.461409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413929, 30.163658, 28.325426>,  <39.431744, 30.388660, 28.243837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.413929, 30.163658, 28.325426>,  <39.384239, 29.788654, 28.461409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413929, 30.163658, 28.325426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203801, -0.347962, -0.915088,
		-0.976194, -0.001358, -0.216894,
		0.074228, 0.937507, -0.339956,
		39.436199, 30.444910, 28.223440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966301, 29.826397, 27.929867>,  <39.384239, 29.788654, 28.461409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966301, 29.826397, 27.929867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.221214, 30.119972, 27.835884>,  <39.374161, 30.296118, 27.779495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.221214, 30.119972, 27.835884>,  <38.966301, 29.826397, 27.929867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221214, 30.119972, 27.835884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062982, -0.353472, -0.933322,
		-0.768052, 0.579992, -0.271487,
		0.637283, 0.733939, -0.234956,
		39.412399, 30.340155, 27.765398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883713, 29.982138, 27.211536>,  <38.966301, 29.826397, 27.929867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883713, 29.982138, 27.211536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231628, 30.176081, 27.248156>,  <39.440376, 30.292446, 27.270126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231628, 30.176081, 27.248156>,  <38.883713, 29.982138, 27.211536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231628, 30.176081, 27.248156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250496, -0.274051, -0.928519,
		-0.425112, 0.830547, -0.359822,
		0.869788, 0.484859, 0.091546,
		39.492565, 30.321539, 27.275620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956692, 30.330940, 26.613708>,  <38.883713, 29.982138, 27.211536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956692, 30.330940, 26.613708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329422, 30.310852, 26.757469>,  <39.553062, 30.298800, 26.843725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329422, 30.310852, 26.757469>,  <38.956692, 30.330940, 26.613708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329422, 30.310852, 26.757469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343003, -0.201501, -0.917467,
		0.118496, 0.978200, -0.170539,
		0.931830, -0.050221, 0.359403,
		39.608971, 30.295786, 26.865290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257145, 30.732315, 26.243832>,  <38.956692, 30.330940, 26.613708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257145, 30.732315, 26.243832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539577, 30.481024, 26.374540>,  <39.709038, 30.330250, 26.452967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539577, 30.481024, 26.374540>,  <39.257145, 30.732315, 26.243832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539577, 30.481024, 26.374540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351431, -0.089749, -0.931902,
		0.614773, 0.772837, 0.157408,
		0.706081, -0.628226, 0.326774,
		39.751400, 30.292557, 26.472572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837040, 30.759977, 25.834219>,  <39.257145, 30.732315, 26.243832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837040, 30.759977, 25.834219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.920227, 30.405697, 26.000246>,  <39.970139, 30.193129, 26.099863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.920227, 30.405697, 26.000246>,  <39.837040, 30.759977, 25.834219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920227, 30.405697, 26.000246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221618, -0.370645, -0.901946,
		0.952699, 0.279560, 0.119207,
		0.207964, -0.885702, 0.415069,
		39.982616, 30.139986, 26.124767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504452, 30.534330, 25.489643>,  <39.837040, 30.759977, 25.834219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504452, 30.534330, 25.489643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301506, 30.219978, 25.631048>,  <40.179737, 30.031366, 25.715891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301506, 30.219978, 25.631048>,  <40.504452, 30.534330, 25.489643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301506, 30.219978, 25.631048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180849, -0.498207, -0.847988,
		0.842541, -0.366306, 0.394899,
		-0.507365, -0.785881, 0.353514,
		40.149296, 29.984215, 25.737103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921833, 29.990032, 25.336685>,  <40.504452, 30.534330, 25.489643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921833, 29.990032, 25.336685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573055, 29.801908, 25.391115>,  <40.363789, 29.689034, 25.423773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573055, 29.801908, 25.391115>,  <40.921833, 29.990032, 25.336685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573055, 29.801908, 25.391115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099490, -0.442336, -0.891314,
		0.479386, -0.763640, 0.432485,
		-0.871947, -0.470311, 0.136075,
		40.311470, 29.660816, 25.431938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960945, 29.294449, 25.125998>,  <40.921833, 29.990032, 25.336685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960945, 29.294449, 25.125998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563999, 29.343796, 25.125734>,  <40.325832, 29.373404, 25.125576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563999, 29.343796, 25.125734>,  <40.960945, 29.294449, 25.125998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563999, 29.343796, 25.125734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057846, -0.469998, -0.880770,
		-0.108968, -0.874003, 0.473544,
		-0.992361, 0.123368, -0.000657,
		40.266293, 29.380806, 25.125538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699791, 28.663326, 24.932449>,  <40.960945, 29.294449, 25.125998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699791, 28.663326, 24.932449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410069, 28.919680, 24.830742>,  <40.236237, 29.073492, 24.769716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410069, 28.919680, 24.830742>,  <40.699791, 28.663326, 24.932449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410069, 28.919680, 24.830742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131547, -0.490461, -0.861477,
		-0.676816, -0.590523, 0.439549,
		-0.724304, 0.640882, -0.254270,
		40.192776, 29.111944, 24.754461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236290, 28.359625, 24.535351>,  <40.699791, 28.663326, 24.932449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236290, 28.359625, 24.535351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092018, 28.725849, 24.464176>,  <40.005455, 28.945583, 24.421471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092018, 28.725849, 24.464176>,  <40.236290, 28.359625, 24.535351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092018, 28.725849, 24.464176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357091, -0.311797, -0.880493,
		-0.861624, -0.254036, 0.439397,
		-0.360680, 0.915559, -0.177938,
		39.983814, 29.000517, 24.410795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494587, 28.298101, 24.350714>,  <40.236290, 28.359625, 24.535351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494587, 28.298101, 24.350714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702633, 28.607637, 24.206129>,  <39.827461, 28.793358, 24.119379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702633, 28.607637, 24.206129>,  <39.494587, 28.298101, 24.350714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702633, 28.607637, 24.206129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052135, -0.393656, -0.917778,
		-0.852504, 0.496195, -0.164402,
		0.520115, 0.773838, -0.361462,
		39.858665, 28.839788, 24.097691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052959, 28.624359, 23.876402>,  <39.494587, 28.298101, 24.350714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052959, 28.624359, 23.876402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444859, 28.671213, 23.811441>,  <39.679996, 28.699326, 23.772465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444859, 28.671213, 23.811441>,  <39.052959, 28.624359, 23.876402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444859, 28.671213, 23.811441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068103, -0.567758, -0.820374,
		-0.188300, 0.814819, -0.548282,
		0.979748, 0.117136, -0.162400,
		39.738781, 28.706354, 23.762722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177128, 27.850201, 23.873140>,  <39.052959, 28.624359, 23.876402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177128, 27.850201, 23.873140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.128216, 27.463272, 23.784292>,  <39.098869, 27.231115, 23.730984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.128216, 27.463272, 23.784292>,  <39.177128, 27.850201, 23.873140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128216, 27.463272, 23.784292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035957, -0.227971, 0.973004,
		-0.991844, 0.110991, 0.062658,
		-0.122278, -0.967321, -0.222121,
		39.091534, 27.173077, 23.717655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691940, 27.543213, 24.245188>,  <39.177128, 27.850201, 23.873140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691940, 27.543213, 24.245188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914505, 27.220806, 24.164448>,  <39.048046, 27.027363, 24.116005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914505, 27.220806, 24.164448>,  <38.691940, 27.543213, 24.245188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914505, 27.220806, 24.164448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056493, -0.205667, 0.976990,
		-0.828983, -0.555014, -0.068901,
		0.556414, -0.806015, -0.201849,
		39.081429, 26.979002, 24.103893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296329, 27.050840, 24.579594>,  <38.691940, 27.543213, 24.245188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296329, 27.050840, 24.579594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662678, 26.893223, 24.548828>,  <38.882484, 26.798653, 24.530369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662678, 26.893223, 24.548828>,  <38.296329, 27.050840, 24.579594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662678, 26.893223, 24.548828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063158, -0.047782, 0.996859,
		-0.396484, -0.917848, -0.018875,
		0.915866, -0.394047, -0.076915,
		38.937439, 26.775009, 24.525753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343750, 26.389107, 24.944857>,  <38.296329, 27.050840, 24.579594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343750, 26.389107, 24.944857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719223, 26.527023, 24.945564>,  <38.944508, 26.609774, 24.945990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.719223, 26.527023, 24.945564>,  <38.343750, 26.389107, 24.944857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719223, 26.527023, 24.945564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035430, -0.101562, 0.994198,
		0.342969, -0.933169, -0.107550,
		0.938678, 0.344790, 0.001770,
		39.000828, 26.630461, 24.946095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732189, 26.058931, 25.551712>,  <38.343750, 26.389107, 24.944857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732189, 26.058931, 25.551712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975292, 26.352793, 25.431101>,  <39.121155, 26.529110, 25.358734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975292, 26.352793, 25.431101>,  <38.732189, 26.058931, 25.551712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975292, 26.352793, 25.431101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338797, 0.103542, 0.935145,
		0.718226, -0.670497, -0.185969,
		0.607756, 0.734651, -0.301529,
		39.157619, 26.573189, 25.340643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341381, 25.917450, 25.860996>,  <38.732189, 26.058931, 25.551712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341381, 25.917450, 25.860996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 26.307077, 25.771008>,  <39.356743, 26.540854, 25.717014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 26.307077, 25.771008>,  <39.341381, 25.917450, 25.860996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350983, 26.307077, 25.771008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308045, 0.206880, 0.928606,
		0.951069, -0.091593, -0.295091,
		0.024006, 0.974069, -0.224972,
		39.358185, 26.599298, 25.703516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948669, 26.191767, 26.197165>,  <39.341381, 25.917450, 25.860996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948669, 26.191767, 26.197165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755836, 26.532171, 26.113857>,  <39.640137, 26.736414, 26.063873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755836, 26.532171, 26.113857>,  <39.948669, 26.191767, 26.197165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755836, 26.532171, 26.113857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337539, 0.399773, 0.852203,
		0.808493, 0.340535, -0.479974,
		-0.482085, 0.851010, -0.208269,
		39.611210, 26.787474, 26.051376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389023, 26.673733, 26.355961>,  <39.948669, 26.191767, 26.197165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389023, 26.673733, 26.355961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022655, 26.831972, 26.383070>,  <39.802834, 26.926916, 26.399336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022655, 26.831972, 26.383070>,  <40.389023, 26.673733, 26.355961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022655, 26.831972, 26.383070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265344, 0.470137, 0.841762,
		0.301140, 0.788969, -0.535578,
		-0.915919, 0.395601, 0.067771,
		39.747879, 26.950653, 26.403402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474621, 27.330315, 26.612284>,  <40.389023, 26.673733, 26.355961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474621, 27.330315, 26.612284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091518, 27.238811, 26.681986>,  <39.861656, 27.183910, 26.723808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091518, 27.238811, 26.681986>,  <40.474621, 27.330315, 26.612284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091518, 27.238811, 26.681986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059266, 0.435941, 0.898022,
		-0.281393, 0.870417, -0.403969,
		-0.957761, -0.228756, 0.174257,
		39.804192, 27.170185, 26.734262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355839, 27.902744, 27.020050>,  <40.474621, 27.330315, 26.612284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355839, 27.902744, 27.020050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057716, 27.644518, 27.086702>,  <39.878841, 27.489582, 27.126694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057716, 27.644518, 27.086702>,  <40.355839, 27.902744, 27.020050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057716, 27.644518, 27.086702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048460, 0.301715, 0.952166,
		-0.664960, 0.701579, -0.256154,
		-0.745305, -0.645565, 0.166630,
		39.834126, 27.450848, 27.136692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821732, 28.291784, 27.306376>,  <40.355839, 27.902744, 27.020050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821732, 28.291784, 27.306376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722889, 27.914433, 27.394896>,  <39.663586, 27.688021, 27.448008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722889, 27.914433, 27.394896>,  <39.821732, 28.291784, 27.306376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722889, 27.914433, 27.394896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279964, 0.288149, 0.915746,
		-0.927663, 0.164329, -0.335315,
		-0.247104, -0.943380, 0.221299,
		39.648758, 27.631418, 27.461285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191582, 28.329292, 27.580439>,  <39.821732, 28.291784, 27.306376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191582, 28.329292, 27.580439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.335091, 27.978609, 27.708603>,  <39.421196, 27.768198, 27.785501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.335091, 27.978609, 27.708603>,  <39.191582, 28.329292, 27.580439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335091, 27.978609, 27.708603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268687, 0.231736, 0.934936,
		-0.893918, -0.421521, -0.152420,
		0.358774, -0.876709, 0.320410,
		39.442722, 27.715597, 27.804726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689739, 27.961517, 27.930126>,  <39.191582, 28.329292, 27.580439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689739, 27.961517, 27.930126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039803, 27.831861, 28.073811>,  <39.249840, 27.754068, 28.160021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039803, 27.831861, 28.073811>,  <38.689739, 27.961517, 27.930126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039803, 27.831861, 28.073811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337086, 0.124118, 0.933257,
		-0.347092, -0.937831, -0.000641,
		0.875158, -0.324142, 0.359210,
		39.302349, 27.734619, 28.181574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479084, 27.536636, 28.422186>,  <38.689739, 27.961517, 27.930126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479084, 27.536636, 28.422186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862289, 27.627474, 28.492195>,  <39.092213, 27.681976, 28.534201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862289, 27.627474, 28.492195>,  <38.479084, 27.536636, 28.422186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862289, 27.627474, 28.492195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247080, 0.344233, 0.905790,
		0.145450, -0.911006, 0.385891,
		0.958017, 0.227093, 0.175022,
		39.149693, 27.695602, 28.544703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954929, 27.014069, 28.461805>,  <38.479084, 27.536636, 28.422186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954929, 27.014069, 28.461805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620659, 27.219225, 28.540375>,  <37.420097, 27.342319, 28.587517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620659, 27.219225, 28.540375>,  <37.954929, 27.014069, 28.461805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620659, 27.219225, 28.540375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218533, 0.017586, -0.975671,
		-0.503869, -0.858272, 0.097388,
		-0.835679, 0.512893, 0.196422,
		37.369957, 27.373093, 28.599302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467625, 26.669830, 28.160868>,  <37.954929, 27.014069, 28.461805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467625, 26.669830, 28.160868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321503, 27.039404, 28.206297>,  <37.233829, 27.261148, 28.233555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321503, 27.039404, 28.206297>,  <37.467625, 26.669830, 28.160868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321503, 27.039404, 28.206297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219039, 0.033266, -0.975149,
		-0.904750, -0.381106, 0.190225,
		-0.365307, 0.923933, 0.113574,
		37.211910, 27.316584, 28.240370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877655, 26.677380, 27.792982>,  <37.467625, 26.669830, 28.160868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877655, 26.677380, 27.792982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938549, 27.070707, 27.832790>,  <36.975086, 27.306704, 27.856674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938549, 27.070707, 27.832790>,  <36.877655, 26.677380, 27.792982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938549, 27.070707, 27.832790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337707, 0.146386, -0.929798,
		-0.928859, 0.107941, 0.354360,
		0.152237, 0.983321, 0.099519,
		36.984219, 27.365704, 27.862646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281132, 26.981413, 27.527798>,  <36.877655, 26.677380, 27.792982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281132, 26.981413, 27.527798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572075, 27.253042, 27.488190>,  <36.746643, 27.416019, 27.464426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.572075, 27.253042, 27.488190>,  <36.281132, 26.981413, 27.527798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572075, 27.253042, 27.488190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376714, 0.274495, -0.884725,
		-0.573614, 0.680816, 0.455474,
		0.727361, 0.679074, -0.099018,
		36.790283, 27.456764, 27.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897202, 27.609381, 27.357901>,  <36.281132, 26.981413, 27.527798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897202, 27.609381, 27.357901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277622, 27.637522, 27.237530>,  <36.505875, 27.654406, 27.165308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277622, 27.637522, 27.237530>,  <35.897202, 27.609381, 27.357901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277622, 27.637522, 27.237530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308961, 0.194483, -0.930978,
		-0.006972, 0.978380, 0.206699,
		0.951049, 0.070353, -0.300925,
		36.562939, 27.658628, 27.147253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836658, 28.024853, 26.700342>,  <35.897202, 27.609381, 27.357901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836658, 28.024853, 26.700342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.206688, 27.876497, 26.667660>,  <36.428707, 27.787483, 26.648050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.206688, 27.876497, 26.667660>,  <35.836658, 28.024853, 26.700342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206688, 27.876497, 26.667660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062460, 0.063627, -0.996017,
		0.374609, 0.926495, 0.035694,
		0.925077, -0.370888, -0.081704,
		36.484211, 27.765230, 26.643148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009171, 28.461996, 26.178299>,  <35.836658, 28.024853, 26.700342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009171, 28.461996, 26.178299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290932, 28.178211, 26.187088>,  <36.459988, 28.007940, 26.192362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290932, 28.178211, 26.187088>,  <36.009171, 28.461996, 26.178299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290932, 28.178211, 26.187088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061600, -0.091945, -0.993857,
		0.707123, 0.698721, -0.108469,
		0.704402, -0.709461, 0.021975,
		36.502251, 27.965372, 26.193680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219868, 29.200783, 25.978676>,  <36.009171, 28.461996, 26.178299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219868, 29.200783, 25.978676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979897, 29.519867, 25.954199>,  <35.835915, 29.711319, 25.939512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.979897, 29.519867, 25.954199>,  <36.219868, 29.200783, 25.978676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979897, 29.519867, 25.954199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108181, -0.005101, 0.994118,
		0.792709, 0.603016, 0.089357,
		-0.599925, 0.797713, -0.061191,
		35.799919, 29.759180, 25.935841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453285, 29.559959, 26.474693>,  <36.219868, 29.200783, 25.978676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453285, 29.559959, 26.474693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099174, 29.729973, 26.399185>,  <35.886707, 29.831982, 26.353880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099174, 29.729973, 26.399185>,  <36.453285, 29.559959, 26.474693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099174, 29.729973, 26.399185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122277, 0.178891, 0.976241,
		0.448706, 0.887323, -0.106395,
		-0.885275, 0.425036, -0.188768,
		35.833591, 29.857483, 26.342554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412838, 30.188730, 26.915918>,  <36.453285, 29.559959, 26.474693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412838, 30.188730, 26.915918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036469, 30.117373, 26.800795>,  <35.810646, 30.074558, 26.731720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036469, 30.117373, 26.800795>,  <36.412838, 30.188730, 26.915918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036469, 30.117373, 26.800795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287051, -0.030624, 0.957426,
		-0.179611, 0.983483, -0.022393,
		-0.940926, -0.178392, -0.287810,
		35.754192, 30.063854, 26.714451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917576, 30.764120, 27.167126>,  <36.412838, 30.188730, 26.915918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917576, 30.764120, 27.167126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747974, 30.404892, 27.120319>,  <35.646214, 30.189356, 27.092236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747974, 30.404892, 27.120319>,  <35.917576, 30.764120, 27.167126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747974, 30.404892, 27.120319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326304, 0.030955, 0.944758,
		-0.844837, 0.438761, -0.306169,
		-0.424001, -0.898070, -0.117018,
		35.620773, 30.135471, 27.085215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312084, 30.748335, 27.625078>,  <35.917576, 30.764120, 27.167126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312084, 30.748335, 27.625078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.382122, 30.366068, 27.530388>,  <35.424145, 30.136707, 27.473574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.382122, 30.366068, 27.530388>,  <35.312084, 30.748335, 27.625078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382122, 30.366068, 27.530388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330446, -0.283537, 0.900229,
		-0.927442, -0.079397, -0.365442,
		0.175092, -0.955669, -0.236727,
		35.434650, 30.079367, 27.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640877, 30.409216, 27.714773>,  <35.312084, 30.748335, 27.625078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640877, 30.409216, 27.714773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921169, 30.125359, 27.744118>,  <35.089344, 29.955044, 27.761724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921169, 30.125359, 27.744118>,  <34.640877, 30.409216, 27.714773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921169, 30.125359, 27.744118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503539, -0.419113, 0.755508,
		-0.505395, -0.566349, -0.651019,
		0.700732, -0.709643, 0.073362,
		35.131390, 29.912466, 27.766127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194935, 29.857691, 27.819225>,  <34.640877, 30.409216, 27.714773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194935, 29.857691, 27.819225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555126, 29.729950, 27.937315>,  <34.771240, 29.653305, 28.008169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555126, 29.729950, 27.937315>,  <34.194935, 29.857691, 27.819225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555126, 29.729950, 27.937315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424908, -0.501296, 0.753761,
		-0.092719, -0.804187, -0.587100,
		0.900476, -0.319351, 0.295225,
		34.825268, 29.634144, 28.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.972477, 31.414482, 23.444164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.148426, 31.159977, 23.697678>,  <39.253998, 31.007275, 23.849785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.148426, 31.159977, 23.697678>,  <38.972477, 31.414482, 23.444164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148426, 31.159977, 23.697678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749121, 0.129266, 0.649698,
		-0.495306, -0.760565, -0.419777,
		0.439875, -0.636263, 0.633782,
		39.280388, 30.969097, 23.887812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435535, 30.860346, 23.745550>,  <38.972477, 31.414482, 23.444164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435535, 30.860346, 23.745550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741112, 30.929089, 23.994341>,  <38.924458, 30.970335, 24.143616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741112, 30.929089, 23.994341>,  <38.435535, 30.860346, 23.745550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741112, 30.929089, 23.994341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644671, 0.245189, 0.724072,
		-0.028065, -0.954121, 0.298102,
		0.763944, 0.171857, 0.621976,
		38.970295, 30.980646, 24.180933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216709, 30.613855, 24.401800>,  <38.435535, 30.860346, 23.745550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216709, 30.613855, 24.401800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.519718, 30.863060, 24.479782>,  <38.701523, 31.012583, 24.526571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.519718, 30.863060, 24.479782>,  <38.216709, 30.613855, 24.401800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519718, 30.863060, 24.479782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440137, 0.266883, 0.857352,
		0.482113, -0.735273, 0.476383,
		0.757527, 0.623014, 0.194953,
		38.746975, 31.049965, 24.538267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418018, 30.621185, 25.143270>,  <38.216709, 30.613855, 24.401800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418018, 30.621185, 25.143270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509777, 30.987709, 25.011967>,  <38.564831, 31.207624, 24.933186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509777, 30.987709, 25.011967>,  <38.418018, 30.621185, 25.143270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509777, 30.987709, 25.011967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429688, 0.397945, 0.810560,
		0.873353, -0.044891, 0.485014,
		0.229396, 0.916310, -0.328258,
		38.578594, 31.262602, 24.913490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391068, 30.965637, 25.722704>,  <38.418018, 30.621185, 25.143270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391068, 30.965637, 25.722704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.466225, 31.258541, 25.460867>,  <38.511318, 31.434284, 25.303764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.466225, 31.258541, 25.460867>,  <38.391068, 30.965637, 25.722704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466225, 31.258541, 25.460867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146843, 0.679916, 0.718437,
		0.971150, -0.038868, 0.235281,
		0.187896, 0.732259, -0.654593,
		38.522594, 31.478218, 25.264488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903572, 31.369619, 25.967859>,  <38.391068, 30.965637, 25.722704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903572, 31.369619, 25.967859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691116, 31.625429, 25.745544>,  <38.563641, 31.778915, 25.612156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691116, 31.625429, 25.745544>,  <38.903572, 31.369619, 25.967859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691116, 31.625429, 25.745544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287769, 0.480807, 0.828259,
		0.796918, 0.599861, -0.071341,
		-0.531141, 0.639525, -0.555785,
		38.531773, 31.817287, 25.578810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087444, 32.076149, 26.222950>,  <38.903572, 31.369619, 25.967859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087444, 32.076149, 26.222950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733822, 32.091709, 26.036644>,  <38.521648, 32.101048, 25.924860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733822, 32.091709, 26.036644>,  <39.087444, 32.076149, 26.222950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733822, 32.091709, 26.036644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326608, 0.661415, 0.675171,
		0.334330, 0.749010, -0.572020,
		-0.884053, 0.038903, -0.465764,
		38.468605, 32.103378, 25.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955196, 32.756184, 26.180647>,  <39.087444, 32.076149, 26.222950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955196, 32.756184, 26.180647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598278, 32.577866, 26.152136>,  <38.384129, 32.470875, 26.135029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598278, 32.577866, 26.152136>,  <38.955196, 32.756184, 26.180647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598278, 32.577866, 26.152136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380172, 0.656827, 0.651190,
		-0.243477, 0.608151, -0.755560,
		-0.892294, -0.445793, -0.071280,
		38.330589, 32.444126, 26.130753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575939, 33.316700, 26.273455>,  <38.955196, 32.756184, 26.180647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575939, 33.316700, 26.273455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298767, 33.029049, 26.294220>,  <38.132462, 32.856457, 26.306679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298767, 33.029049, 26.294220>,  <38.575939, 33.316700, 26.273455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298767, 33.029049, 26.294220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568476, 0.589216, 0.574159,
		-0.443483, 0.368343, -0.817096,
		-0.692934, -0.719130, 0.051913,
		38.090885, 32.813309, 26.309793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971272, 33.666389, 26.157101>,  <38.575939, 33.316700, 26.273455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971272, 33.666389, 26.157101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.900883, 33.328442, 26.359179>,  <37.858650, 33.125671, 26.480425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.900883, 33.328442, 26.359179>,  <37.971272, 33.666389, 26.157101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900883, 33.328442, 26.359179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523477, 0.514940, 0.678829,
		-0.833670, -0.145002, -0.532888,
		-0.175973, -0.844874, 0.505195,
		37.848091, 33.074978, 26.510736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240078, 33.550694, 26.314980>,  <37.971272, 33.666389, 26.157101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240078, 33.550694, 26.314980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434849, 33.353096, 26.603111>,  <37.551712, 33.234539, 26.775990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434849, 33.353096, 26.603111>,  <37.240078, 33.550694, 26.314980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434849, 33.353096, 26.603111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368243, 0.631720, 0.682149,
		-0.792024, -0.597411, 0.125691,
		0.486925, -0.493993, 0.720330,
		37.580925, 33.204899, 26.819210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694221, 33.437195, 26.896751>,  <37.240078, 33.550694, 26.314980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694221, 33.437195, 26.896751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044003, 33.372173, 27.079578>,  <37.253872, 33.333160, 27.189274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.044003, 33.372173, 27.079578>,  <36.694221, 33.437195, 26.896751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044003, 33.372173, 27.079578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307116, 0.543832, 0.780978,
		-0.375517, -0.823300, 0.425632,
		0.874452, -0.162553, 0.457067,
		37.306339, 33.323406, 27.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124264, 32.790646, 26.766117>,  <36.694221, 33.437195, 26.896751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124264, 32.790646, 26.766117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.725792, 32.816574, 26.742695>,  <35.486710, 32.832130, 26.728642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.725792, 32.816574, 26.742695>,  <36.124264, 32.790646, 26.766117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725792, 32.816574, 26.742695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044725, -0.197302, -0.979322,
		-0.075036, -0.978197, 0.193649,
		-0.996178, 0.064823, -0.058554,
		35.426937, 32.836021, 26.725128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998081, 32.348854, 26.150734>,  <36.124264, 32.790646, 26.766117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998081, 32.348854, 26.150734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.636703, 32.513130, 26.199917>,  <35.419876, 32.611698, 26.229427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.636703, 32.513130, 26.199917>,  <35.998081, 32.348854, 26.150734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636703, 32.513130, 26.199917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140063, -0.011692, -0.990074,
		-0.405180, -0.911698, 0.068087,
		-0.903445, 0.410694, 0.122958,
		35.365669, 32.636337, 26.236805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611217, 31.923615, 25.829378>,  <35.998081, 32.348854, 26.150734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611217, 31.923615, 25.829378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.395832, 32.260284, 25.845577>,  <35.266602, 32.462288, 25.855297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.395832, 32.260284, 25.845577>,  <35.611217, 31.923615, 25.829378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395832, 32.260284, 25.845577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314665, -0.156262, -0.936252,
		-0.781692, -0.516881, 0.348987,
		-0.538464, 0.841675, 0.040495,
		35.234291, 32.512787, 25.857725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873234, 31.775530, 25.631086>,  <35.611217, 31.923615, 25.829378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873234, 31.775530, 25.631086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.975769, 32.154869, 25.556335>,  <35.037292, 32.382473, 25.511486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.975769, 32.154869, 25.556335>,  <34.873234, 31.775530, 25.631086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975769, 32.154869, 25.556335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258962, -0.118887, -0.958543,
		-0.931251, 0.294108, 0.215111,
		0.256342, 0.948349, -0.186876,
		35.052673, 32.439373, 25.500273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346455, 31.986979, 25.099787>,  <34.873234, 31.775530, 25.631086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346455, 31.986979, 25.099787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621704, 32.277191, 25.103706>,  <34.786854, 32.451317, 25.106058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621704, 32.277191, 25.103706>,  <34.346455, 31.986979, 25.099787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621704, 32.277191, 25.103706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007724, 0.020827, -0.999753,
		-0.725555, 0.687875, 0.019935,
		0.688121, 0.725530, 0.009798,
		34.828140, 32.494850, 25.106646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085651, 32.422626, 24.447319>,  <34.346455, 31.986979, 25.099787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085651, 32.422626, 24.447319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.464863, 32.483826, 24.558912>,  <34.692390, 32.520546, 24.625868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.464863, 32.483826, 24.558912>,  <34.085651, 32.422626, 24.447319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464863, 32.483826, 24.558912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262731, 0.118180, -0.957604,
		-0.179481, 0.981135, 0.071841,
		0.948029, 0.152997, 0.278985,
		34.749271, 32.529724, 24.642609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275562, 32.911896, 23.978188>,  <34.085651, 32.422626, 24.447319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275562, 32.911896, 23.978188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.606430, 32.731525, 24.112326>,  <34.804951, 32.623302, 24.192808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.606430, 32.731525, 24.112326>,  <34.275562, 32.911896, 23.978188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606430, 32.731525, 24.112326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363497, -0.025754, -0.931239,
		0.428554, 0.892191, 0.142607,
		0.827171, -0.450923, 0.335346,
		34.854580, 32.596249, 24.212929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869427, 33.269894, 23.599270>,  <34.275562, 32.911896, 23.978188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869427, 33.269894, 23.599270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001568, 32.922691, 23.747557>,  <35.080853, 32.714371, 23.836529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001568, 32.922691, 23.747557>,  <34.869427, 33.269894, 23.599270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001568, 32.922691, 23.747557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218832, -0.311632, -0.924661,
		0.918139, 0.386590, 0.086999,
		0.330353, -0.868006, 0.370719,
		35.100674, 32.662289, 23.858772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510201, 33.175465, 23.266054>,  <34.869427, 33.269894, 23.599270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510201, 33.175465, 23.266054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.440189, 32.813034, 23.420139>,  <35.398182, 32.595577, 23.512590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.440189, 32.813034, 23.420139>,  <35.510201, 33.175465, 23.266054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440189, 32.813034, 23.420139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432576, -0.422235, -0.796615,
		0.884445, 0.027204, 0.465850,
		-0.175027, -0.906078, 0.385212,
		35.387680, 32.541210, 23.535704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150867, 32.768173, 23.263983>,  <35.510201, 33.175465, 23.266054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150867, 32.768173, 23.263983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836788, 32.520855, 23.250257>,  <35.648342, 32.372463, 23.242023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836788, 32.520855, 23.250257>,  <36.150867, 32.768173, 23.263983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836788, 32.520855, 23.250257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379267, -0.436370, -0.815928,
		0.489509, -0.653679, 0.577135,
		-0.785199, -0.618292, -0.034311,
		35.601227, 32.335369, 23.239964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401814, 32.239746, 22.923143>,  <36.150867, 32.768173, 23.263983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401814, 32.239746, 22.923143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.022465, 32.112923, 22.920000>,  <35.794853, 32.036831, 22.918114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.022465, 32.112923, 22.920000>,  <36.401814, 32.239746, 22.923143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022465, 32.112923, 22.920000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189813, -0.547571, -0.814946,
		0.254081, -0.774365, 0.579484,
		-0.948374, -0.317056, -0.007857,
		35.737953, 32.017807, 22.917643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 31.525410, 22.814852>,  <36.401814, 32.239746, 22.923143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371124, 31.525410, 22.814852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012768, 31.637098, 22.676628>,  <35.797752, 31.704111, 22.593693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012768, 31.637098, 22.676628>,  <36.371124, 31.525410, 22.814852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012768, 31.637098, 22.676628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256520, -0.309949, -0.915494,
		-0.362734, -0.908827, 0.206054,
		-0.895892, 0.279224, -0.345561,
		35.743999, 31.720865, 22.572960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213852, 30.918549, 22.454021>,  <36.371124, 31.525410, 22.814852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213852, 30.918549, 22.454021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.992016, 31.224422, 22.322756>,  <35.858913, 31.407948, 22.243996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.992016, 31.224422, 22.322756>,  <36.213852, 30.918549, 22.454021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992016, 31.224422, 22.322756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202284, -0.258649, -0.944554,
		-0.807165, -0.590218, -0.011240,
		-0.554586, 0.764685, -0.328165,
		35.825642, 31.453827, 22.224306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755051, 30.524868, 22.910822>,  <36.213852, 30.918549, 22.454021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755051, 30.524868, 22.910822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454647, 30.279882, 22.812132>,  <36.274406, 30.132891, 22.752918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454647, 30.279882, 22.812132>,  <36.755051, 30.524868, 22.910822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454647, 30.279882, 22.812132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397809, 0.121458, 0.909393,
		-0.527003, 0.781113, -0.334859,
		-0.751010, -0.612463, -0.246725,
		36.229343, 30.096144, 22.738115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230686, 30.902943, 23.166794>,  <36.755051, 30.524868, 22.910822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230686, 30.902943, 23.166794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118626, 30.521854, 23.119743>,  <36.051392, 30.293201, 23.091513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.118626, 30.521854, 23.119743>,  <36.230686, 30.902943, 23.166794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118626, 30.521854, 23.119743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526489, 0.050030, 0.848709,
		-0.802700, 0.299693, -0.515614,
		-0.280149, -0.952723, -0.117626,
		36.034580, 30.236038, 23.084455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618023, 30.925453, 23.473114>,  <36.230686, 30.902943, 23.166794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618023, 30.925453, 23.473114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713257, 30.536957, 23.472193>,  <35.770397, 30.303860, 23.471640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.713257, 30.536957, 23.472193>,  <35.618023, 30.925453, 23.473114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713257, 30.536957, 23.472193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353927, -0.088969, 0.931032,
		-0.904461, -0.220852, -0.364931,
		0.238088, -0.971241, -0.002303,
		35.784683, 30.245584, 23.471502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020363, 30.520433, 23.685513>,  <35.618023, 30.925453, 23.473114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020363, 30.520433, 23.685513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323811, 30.272381, 23.765444>,  <35.505878, 30.123549, 23.813402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323811, 30.272381, 23.765444>,  <35.020363, 30.520433, 23.685513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323811, 30.272381, 23.765444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274521, -0.026089, 0.961227,
		-0.590875, -0.784063, -0.190031,
		0.758620, -0.620133, 0.199827,
		35.551395, 30.086342, 23.825392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743572, 30.159515, 24.149609>,  <35.020363, 30.520433, 23.685513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743572, 30.159515, 24.149609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.130920, 30.072794, 24.199026>,  <35.363327, 30.020761, 24.228676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.130920, 30.072794, 24.199026>,  <34.743572, 30.159515, 24.149609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130920, 30.072794, 24.199026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, -0.006553, 0.991753,
		-0.214207, -0.976193, -0.034095,
		0.968366, -0.216804, 0.123542,
		35.421429, 30.007753, 24.236088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805775, 29.596378, 24.593912>,  <34.743572, 30.159515, 24.149609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805775, 29.596378, 24.593912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.155865, 29.789276, 24.608969>,  <35.365921, 29.905014, 24.618002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.155865, 29.789276, 24.608969>,  <34.805775, 29.596378, 24.593912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155865, 29.789276, 24.608969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095167, -0.247972, 0.964081,
		0.474256, -0.840209, -0.262926,
		0.875228, 0.482243, 0.037642,
		35.418434, 29.933949, 24.620262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177940, 29.149698, 24.896914>,  <34.805775, 29.596378, 24.593912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177940, 29.149698, 24.896914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373348, 29.494463, 24.951262>,  <35.490593, 29.701323, 24.983870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.373348, 29.494463, 24.951262>,  <35.177940, 29.149698, 24.896914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373348, 29.494463, 24.951262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047060, -0.181513, 0.982262,
		0.871285, -0.473456, -0.129234,
		0.488516, 0.861912, 0.135868,
		35.519901, 29.753036, 24.992022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685154, 29.013746, 25.464598>,  <35.177940, 29.149698, 24.896914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685154, 29.013746, 25.464598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.642269, 29.411432, 25.461863>,  <35.616539, 29.650043, 25.460222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.642269, 29.411432, 25.461863>,  <35.685154, 29.013746, 25.464598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642269, 29.411432, 25.461863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010038, 0.005794, 0.999933,
		0.994186, 0.107269, 0.009358,
		-0.107208, 0.994213, -0.006837,
		35.610107, 29.709696, 25.459812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333420, 28.613480, 25.551567>,  <35.685154, 29.013746, 25.464598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333420, 28.613480, 25.551567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428013, 28.253084, 25.697056>,  <36.484768, 28.036846, 25.784349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428013, 28.253084, 25.697056>,  <36.333420, 28.613480, 25.551567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428013, 28.253084, 25.697056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119178, -0.344616, -0.931148,
		0.964299, 0.263548, 0.025882,
		0.236483, -0.900990, 0.363722,
		36.498959, 27.982788, 25.806171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967724, 28.491192, 25.289738>,  <36.333420, 28.613480, 25.551567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967724, 28.491192, 25.289738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816544, 28.126053, 25.351522>,  <36.725834, 27.906969, 25.388594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816544, 28.126053, 25.351522>,  <36.967724, 28.491192, 25.289738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816544, 28.126053, 25.351522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140761, -0.221557, -0.964935,
		0.915063, -0.342955, 0.212232,
		-0.377950, -0.912850, 0.154464,
		36.703159, 27.852198, 25.397861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443188, 28.146425, 24.920015>,  <36.967724, 28.491192, 25.289738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443188, 28.146425, 24.920015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103138, 27.937685, 24.948195>,  <36.899109, 27.812441, 24.965101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.103138, 27.937685, 24.948195>,  <37.443188, 28.146425, 24.920015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103138, 27.937685, 24.948195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001675, -0.131101, -0.991368,
		0.526584, -0.842901, 0.110578,
		-0.850122, -0.521853, 0.070448,
		36.848103, 27.781130, 24.969328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587841, 27.530188, 24.545515>,  <37.443188, 28.146425, 24.920015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587841, 27.530188, 24.545515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189880, 27.566078, 24.563942>,  <36.951103, 27.587612, 24.574999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189880, 27.566078, 24.563942>,  <37.587841, 27.530188, 24.545515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189880, 27.566078, 24.563942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061100, -0.172765, -0.983066,
		-0.080244, -0.980868, 0.177366,
		-0.994901, 0.089722, 0.046068,
		36.891411, 27.592997, 24.577763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420937, 26.888237, 24.087158>,  <37.587841, 27.530188, 24.545515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420937, 26.888237, 24.087158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075146, 27.083181, 24.136402>,  <36.867672, 27.200148, 24.165949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075146, 27.083181, 24.136402>,  <37.420937, 26.888237, 24.087158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075146, 27.083181, 24.136402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323950, -0.352883, -0.877798,
		-0.384368, -0.798715, 0.462942,
		-0.864475, 0.487367, 0.123107,
		36.815804, 27.229389, 24.173336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884605, 26.404114, 23.946585>,  <37.420937, 26.888237, 24.087158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884605, 26.404114, 23.946585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.716785, 26.764889, 23.905626>,  <36.616093, 26.981354, 23.881050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.716785, 26.764889, 23.905626>,  <36.884605, 26.404114, 23.946585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716785, 26.764889, 23.905626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378781, -0.276470, -0.883227,
		-0.824925, -0.331773, 0.457630,
		-0.419552, 0.901938, -0.102398,
		36.590919, 27.035469, 23.874907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195583, 26.389683, 23.505787>,  <36.884605, 26.404114, 23.946585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195583, 26.389683, 23.505787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.328358, 26.765657, 23.473961>,  <36.408024, 26.991243, 23.454865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.328358, 26.765657, 23.473961>,  <36.195583, 26.389683, 23.505787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328358, 26.765657, 23.473961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303670, 0.026619, -0.952405,
		-0.893085, 0.340303, 0.294268,
		0.331940, 0.939939, -0.079567,
		36.427940, 27.047640, 23.450090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695194, 26.675280, 23.141890>,  <36.195583, 26.389683, 23.505787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695194, 26.675280, 23.141890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.019455, 26.907297, 23.109909>,  <36.214012, 27.046509, 23.090721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.019455, 26.907297, 23.109909>,  <35.695194, 26.675280, 23.141890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019455, 26.907297, 23.109909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172960, 0.106763, -0.979125,
		-0.559402, 0.807557, 0.186872,
		0.810651, 0.580046, -0.079952,
		36.262650, 27.081310, 23.085924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505009, 27.448463, 22.865431>,  <35.695194, 26.675280, 23.141890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505009, 27.448463, 22.865431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.880733, 27.334421, 22.789108>,  <36.106167, 27.265997, 22.743315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.880733, 27.334421, 22.789108>,  <35.505009, 27.448463, 22.865431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880733, 27.334421, 22.789108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105946, 0.287919, -0.951776,
		0.326292, 0.914231, 0.240240,
		0.939313, -0.285104, -0.190805,
		36.162529, 27.248890, 22.731867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.872726, 30.329613, 38.017117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240486, 30.190380, 38.090378>,  <36.461143, 30.106840, 38.134335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240486, 30.190380, 38.090378>,  <35.872726, 30.329613, 38.017117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240486, 30.190380, 38.090378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023928, -0.415291, -0.909374,
		0.392599, 0.840459, -0.373489,
		0.919398, -0.348083, 0.183154,
		36.516304, 30.085955, 38.145325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114464, 30.368290, 37.385403>,  <35.872726, 30.329613, 38.017117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114464, 30.368290, 37.385403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333885, 30.103683, 37.589947>,  <36.465538, 29.944920, 37.712673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333885, 30.103683, 37.589947>,  <36.114464, 30.368290, 37.385403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333885, 30.103683, 37.589947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088911, -0.561968, -0.822367,
		0.831375, 0.496578, -0.249453,
		0.548553, -0.661516, 0.511357,
		36.498451, 29.905230, 37.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479877, 30.093542, 36.942284>,  <36.114464, 30.368290, 37.385403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479877, 30.093542, 36.942284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552555, 29.812237, 37.217209>,  <36.596161, 29.643454, 37.382164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552555, 29.812237, 37.217209>,  <36.479877, 30.093542, 36.942284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552555, 29.812237, 37.217209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107600, -0.680535, -0.724771,
		0.977450, 0.205644, -0.047980,
		0.181697, -0.703265, 0.687317,
		36.607063, 29.601257, 37.423405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074982, 29.812946, 36.754089>,  <36.479877, 30.093542, 36.942284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074982, 29.812946, 36.754089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918980, 29.530022, 36.989922>,  <36.825378, 29.360268, 37.131420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918980, 29.530022, 36.989922>,  <37.074982, 29.812946, 36.754089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918980, 29.530022, 36.989922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048197, -0.655090, -0.754012,
		0.919551, -0.265651, 0.289578,
		-0.390004, -0.707309, 0.589585,
		36.801979, 29.317829, 37.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542900, 29.319984, 36.687695>,  <37.074982, 29.812946, 36.754089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542900, 29.319984, 36.687695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197918, 29.158667, 36.810024>,  <36.990929, 29.061876, 36.883423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197918, 29.158667, 36.810024>,  <37.542900, 29.319984, 36.687695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197918, 29.158667, 36.810024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008000, -0.593289, -0.804950,
		0.506071, -0.696679, 0.508458,
		-0.862454, -0.403294, 0.305820,
		36.939182, 29.037678, 36.901772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580742, 28.590498, 36.591900>,  <37.542900, 29.319984, 36.687695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580742, 28.590498, 36.591900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186996, 28.648504, 36.631889>,  <36.950748, 28.683308, 36.655884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186996, 28.648504, 36.631889>,  <37.580742, 28.590498, 36.591900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186996, 28.648504, 36.631889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167141, -0.589964, -0.789941,
		-0.055574, -0.794300, 0.604979,
		-0.984366, 0.145017, 0.099973,
		36.891685, 28.692009, 36.661880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303699, 27.963478, 36.440956>,  <37.580742, 28.590498, 36.591900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303699, 27.963478, 36.440956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986904, 28.206095, 36.413055>,  <36.796829, 28.351665, 36.396317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986904, 28.206095, 36.413055>,  <37.303699, 27.963478, 36.440956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986904, 28.206095, 36.413055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288808, -0.472834, -0.832477,
		-0.537916, -0.639163, 0.549651,
		-0.791982, 0.606546, -0.069750,
		36.749310, 28.388058, 36.392132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777290, 27.481453, 36.335381>,  <37.303699, 27.963478, 36.440956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777290, 27.481453, 36.335381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662460, 27.844011, 36.211426>,  <36.593559, 28.061546, 36.137054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662460, 27.844011, 36.211426>,  <36.777290, 27.481453, 36.335381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662460, 27.844011, 36.211426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285545, -0.389768, -0.875526,
		-0.914357, -0.162860, 0.370712,
		-0.287080, 0.906398, -0.309883,
		36.576336, 28.115931, 36.118462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132080, 27.319502, 35.944759>,  <36.777290, 27.481453, 36.335381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132080, 27.319502, 35.944759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240429, 27.682966, 35.817661>,  <36.305439, 27.901045, 35.741402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240429, 27.682966, 35.817661>,  <36.132080, 27.319502, 35.944759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240429, 27.682966, 35.817661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298685, -0.234453, -0.925105,
		-0.915103, 0.345493, 0.207896,
		0.270875, 0.908662, -0.317742,
		36.321690, 27.955564, 35.722340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564152, 27.532690, 35.502529>,  <36.132080, 27.319502, 35.944759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564152, 27.532690, 35.502529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840420, 27.804462, 35.403458>,  <36.006180, 27.967525, 35.344017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840420, 27.804462, 35.403458>,  <35.564152, 27.532690, 35.502529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840420, 27.804462, 35.403458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261049, -0.085155, -0.961562,
		-0.674405, 0.728783, 0.118550,
		0.690675, 0.679429, -0.247677,
		36.047623, 28.008291, 35.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297523, 28.165827, 35.045757>,  <35.564152, 27.532690, 35.502529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297523, 28.165827, 35.045757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692093, 28.155979, 34.980804>,  <35.928833, 28.150070, 34.941833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692093, 28.155979, 34.980804>,  <35.297523, 28.165827, 35.045757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692093, 28.155979, 34.980804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163549, -0.056493, -0.984916,
		0.015074, 0.998099, -0.059753,
		0.986420, -0.024619, -0.162387,
		35.988018, 28.148594, 34.932087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447006, 28.773594, 34.614044>,  <35.297523, 28.165827, 35.045757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447006, 28.773594, 34.614044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715641, 28.483257, 34.554535>,  <35.876820, 28.309055, 34.518829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715641, 28.483257, 34.554535>,  <35.447006, 28.773594, 34.614044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715641, 28.483257, 34.554535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096971, 0.112960, -0.988856,
		0.734556, 0.678526, 0.005477,
		0.671583, -0.725840, -0.148773,
		35.917114, 28.265505, 34.509903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268414, 29.515697, 34.512890>,  <35.447006, 28.773594, 34.614044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268414, 29.515697, 34.512890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994583, 29.754009, 34.344887>,  <34.830284, 29.896996, 34.244083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994583, 29.754009, 34.344887>,  <35.268414, 29.515697, 34.512890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994583, 29.754009, 34.344887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237068, 0.362905, 0.901165,
		0.689318, 0.716484, -0.107195,
		-0.684572, 0.595777, -0.420012,
		34.789211, 29.932743, 34.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436409, 30.201569, 34.794258>,  <35.268414, 29.515697, 34.512890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436409, 30.201569, 34.794258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058418, 30.250673, 34.672970>,  <34.831623, 30.280136, 34.600197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058418, 30.250673, 34.672970>,  <35.436409, 30.201569, 34.794258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058418, 30.250673, 34.672970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151988, 0.656042, 0.739262,
		0.289683, 0.744673, -0.601287,
		-0.944978, 0.122763, -0.303225,
		34.774925, 30.287502, 34.582001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207588, 30.938974, 34.752625>,  <35.436409, 30.201569, 34.794258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207588, 30.938974, 34.752625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881100, 30.712257, 34.797386>,  <34.685207, 30.576227, 34.824242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.881100, 30.712257, 34.797386>,  <35.207588, 30.938974, 34.752625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881100, 30.712257, 34.797386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358616, 0.648920, 0.671042,
		-0.452961, 0.507590, -0.732925,
		-0.816224, -0.566794, 0.111905,
		34.636234, 30.542219, 34.830959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744324, 31.432865, 35.044083>,  <35.207588, 30.938974, 34.752625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744324, 31.432865, 35.044083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524174, 31.108736, 35.124542>,  <34.392082, 30.914259, 35.172817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524174, 31.108736, 35.124542>,  <34.744324, 31.432865, 35.044083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524174, 31.108736, 35.124542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507344, 0.515931, 0.690230,
		-0.663089, 0.277834, -0.695069,
		-0.550377, -0.810323, 0.201151,
		34.359062, 30.865639, 35.184887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087883, 31.703522, 35.115852>,  <34.744324, 31.432865, 35.044083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087883, 31.703522, 35.115852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082584, 31.340792, 35.284370>,  <34.079407, 31.123154, 35.385483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082584, 31.340792, 35.284370>,  <34.087883, 31.703522, 35.115852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082584, 31.340792, 35.284370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404692, 0.390148, 0.827048,
		-0.914357, -0.159539, -0.372153,
		-0.013248, -0.906825, 0.421299,
		34.078609, 31.068745, 35.410759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462212, 31.596226, 35.285187>,  <34.087883, 31.703522, 35.115852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462212, 31.596226, 35.285187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644432, 31.346485, 35.539009>,  <33.753765, 31.196640, 35.691303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644432, 31.346485, 35.539009>,  <33.462212, 31.596226, 35.285187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644432, 31.346485, 35.539009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536554, 0.376217, 0.755361,
		-0.710342, -0.684577, -0.163614,
		0.455548, -0.624352, 0.634555,
		33.781097, 31.159180, 35.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014084, 31.266855, 35.662861>,  <33.462212, 31.596226, 35.285187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014084, 31.266855, 35.662861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341255, 31.227966, 35.889679>,  <33.537560, 31.204632, 36.025768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341255, 31.227966, 35.889679>,  <33.014084, 31.266855, 35.662861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341255, 31.227966, 35.889679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497349, 0.375947, 0.781862,
		-0.289193, -0.921527, 0.259145,
		0.817931, -0.097224, 0.567041,
		33.586636, 31.198799, 36.059792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894753, 30.784182, 36.190750>,  <33.014084, 31.266855, 35.662861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894753, 30.784182, 36.190750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214878, 30.975286, 36.335655>,  <33.406952, 31.089951, 36.422600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214878, 30.975286, 36.335655>,  <32.894753, 30.784182, 36.190750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214878, 30.975286, 36.335655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546666, 0.333261, 0.768175,
		0.246277, -0.812821, 0.527891,
		0.800315, 0.477764, 0.362267,
		33.454971, 31.118616, 36.444336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838024, 30.792343, 36.946793>,  <32.894753, 30.784182, 36.190750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838024, 30.792343, 36.946793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084759, 31.096560, 36.865711>,  <33.232800, 31.279089, 36.817062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084759, 31.096560, 36.865711>,  <32.838024, 30.792343, 36.946793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084759, 31.096560, 36.865711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397258, 0.523155, 0.753986,
		0.679484, -0.384559, 0.624833,
		0.616837, 0.760541, -0.202706,
		33.269810, 31.324722, 36.804901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127666, 31.060818, 37.643383>,  <32.838024, 30.792343, 36.946793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127666, 31.060818, 37.643383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171852, 31.359482, 37.380997>,  <33.198364, 31.538681, 37.223564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171852, 31.359482, 37.380997>,  <33.127666, 31.060818, 37.643383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171852, 31.359482, 37.380997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322471, 0.651228, 0.686960,
		0.940112, 0.135644, 0.312716,
		0.110467, 0.746661, -0.655968,
		33.204994, 31.583481, 37.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485409, 31.621014, 38.059467>,  <33.127666, 31.060818, 37.643383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485409, 31.621014, 38.059467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292057, 31.778351, 37.746643>,  <33.176044, 31.872753, 37.558949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292057, 31.778351, 37.746643>,  <33.485409, 31.621014, 38.059467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292057, 31.778351, 37.746643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429334, 0.672026, 0.603369,
		0.762897, 0.627424, -0.155970,
		-0.483384, 0.393345, -0.782061,
		33.147041, 31.896355, 37.512024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488533, 32.348396, 38.230289>,  <33.485409, 31.621014, 38.059467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488533, 32.348396, 38.230289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207199, 32.275791, 37.955372>,  <33.038399, 32.232227, 37.790421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207199, 32.275791, 37.955372>,  <33.488533, 32.348396, 38.230289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207199, 32.275791, 37.955372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612635, 0.645172, 0.456544,
		0.360554, 0.742163, -0.564973,
		-0.703335, -0.181514, -0.687294,
		32.996201, 32.221336, 37.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343277, 33.050690, 38.089432>,  <33.488533, 32.348396, 38.230289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343277, 33.050690, 38.089432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042274, 32.829506, 37.946342>,  <32.861671, 32.696796, 37.860489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042274, 32.829506, 37.946342>,  <33.343277, 33.050690, 38.089432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042274, 32.829506, 37.946342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658580, 0.630316, 0.411065,
		-0.001825, 0.544919, -0.838487,
		-0.752509, -0.552961, -0.357722,
		32.816521, 32.663616, 37.839027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890919, 33.545471, 37.668274>,  <33.343277, 33.050690, 38.089432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890919, 33.545471, 37.668274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673794, 33.228176, 37.778637>,  <32.543518, 33.037800, 37.844856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673794, 33.228176, 37.778637>,  <32.890919, 33.545471, 37.668274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673794, 33.228176, 37.778637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712078, 0.608872, 0.349599,
		-0.445310, -0.006703, -0.895351,
		-0.542811, -0.793240, 0.275910,
		32.510952, 32.990204, 37.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144264, 33.590267, 37.433865>,  <32.890919, 33.545471, 37.668274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144264, 33.590267, 37.433865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140156, 33.352783, 37.755711>,  <32.137691, 33.210293, 37.948818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.140156, 33.352783, 37.755711>,  <32.144264, 33.590267, 37.433865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140156, 33.352783, 37.755711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614633, 0.638455, 0.463251,
		-0.788747, -0.489783, -0.371472,
		-0.010275, -0.593706, 0.804616,
		32.137074, 33.174671, 37.997097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102875, 34.316860, 37.318401>,  <32.144264, 33.590267, 37.433865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102875, 34.316860, 37.318401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283619, 34.657669, 37.212662>,  <32.392063, 34.862156, 37.149220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283619, 34.657669, 37.212662>,  <32.102875, 34.316860, 37.318401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283619, 34.657669, 37.212662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228276, -0.396891, -0.889026,
		-0.862389, 0.341369, -0.373835,
		0.451858, 0.852024, -0.264348,
		32.419178, 34.913277, 37.133358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765505, 34.662708, 36.690125>,  <32.102875, 34.316860, 37.318401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765505, 34.662708, 36.690125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146229, 34.784920, 36.700821>,  <32.374664, 34.858246, 36.707237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146229, 34.784920, 36.700821>,  <31.765505, 34.662708, 36.690125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146229, 34.784920, 36.700821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056966, -0.090449, -0.994271,
		-0.301358, 0.947878, -0.103495,
		0.951808, 0.305527, 0.026739,
		32.431770, 34.876579, 36.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800592, 35.073158, 36.203983>,  <31.765505, 34.662708, 36.690125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800592, 35.073158, 36.203983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188869, 34.979721, 36.226559>,  <32.421837, 34.923656, 36.240105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188869, 34.979721, 36.226559>,  <31.800592, 35.073158, 36.203983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188869, 34.979721, 36.226559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021020, -0.151425, -0.988245,
		0.239396, 0.960471, -0.142077,
		0.970695, -0.233595, 0.056439,
		32.480080, 34.909641, 36.243492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147346, 35.450504, 35.712196>,  <31.800592, 35.073158, 36.203983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147346, 35.450504, 35.712196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377075, 35.131130, 35.784485>,  <32.514912, 34.939507, 35.827858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377075, 35.131130, 35.784485>,  <32.147346, 35.450504, 35.712196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377075, 35.131130, 35.784485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079004, -0.165665, -0.983012,
		0.814811, 0.578839, -0.032065,
		0.574318, -0.798436, 0.180717,
		32.549370, 34.891598, 35.838699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787792, 35.496948, 35.227032>,  <32.147346, 35.450504, 35.712196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787792, 35.496948, 35.227032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748688, 35.120514, 35.356525>,  <32.725227, 34.894653, 35.434223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748688, 35.120514, 35.356525>,  <32.787792, 35.496948, 35.227032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748688, 35.120514, 35.356525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288855, -0.338122, -0.895676,
		0.952369, 0.005954, 0.304891,
		-0.097758, -0.941083, 0.323736,
		32.719360, 34.838188, 35.453648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324570, 35.221291, 34.936180>,  <32.787792, 35.496948, 35.227032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324570, 35.221291, 34.936180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078648, 34.912727, 35.001839>,  <32.931095, 34.727589, 35.041233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078648, 34.912727, 35.001839>,  <33.324570, 35.221291, 34.936180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078648, 34.912727, 35.001839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234307, -0.377379, -0.895927,
		0.753070, -0.512361, 0.412761,
		-0.614806, -0.771408, 0.164143,
		32.894207, 34.681305, 35.051083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604816, 34.651970, 34.555946>,  <33.324570, 35.221291, 34.936180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604816, 34.651970, 34.555946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233818, 34.511559, 34.607372>,  <33.011219, 34.427311, 34.638229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233818, 34.511559, 34.607372>,  <33.604816, 34.651970, 34.555946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233818, 34.511559, 34.607372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031184, -0.415364, -0.909121,
		0.372530, -0.839197, 0.396195,
		-0.927496, -0.351029, 0.128566,
		32.955570, 34.406250, 34.645943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623474, 33.879547, 34.428288>,  <33.604816, 34.651970, 34.555946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623474, 33.879547, 34.428288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248676, 34.014572, 34.392311>,  <33.023796, 34.095585, 34.370728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.248676, 34.014572, 34.392311>,  <33.623474, 33.879547, 34.428288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248676, 34.014572, 34.392311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060290, -0.409848, -0.910159,
		-0.344094, -0.847395, 0.404379,
		-0.936998, 0.337560, -0.089937,
		32.967579, 34.115841, 34.365330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303574, 33.291874, 34.148815>,  <33.623474, 33.879547, 34.428288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303574, 33.291874, 34.148815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031452, 33.574059, 34.069305>,  <32.868179, 33.743370, 34.021599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031452, 33.574059, 34.069305>,  <33.303574, 33.291874, 34.148815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031452, 33.574059, 34.069305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058962, -0.323003, -0.944559,
		-0.730551, -0.630871, 0.261337,
		-0.680308, 0.705458, -0.198773,
		32.827358, 33.785694, 34.009674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707745, 32.978519, 33.753025>,  <33.303574, 33.291874, 34.148815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707745, 32.978519, 33.753025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704456, 33.369530, 33.668755>,  <32.702484, 33.604134, 33.618195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704456, 33.369530, 33.668755>,  <32.707745, 32.978519, 33.753025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704456, 33.369530, 33.668755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037605, -0.210832, -0.976799,
		-0.999259, -0.000106, 0.038493,
		-0.008219, 0.977522, -0.210672,
		32.701992, 33.662785, 33.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246849, 33.005417, 33.149277>,  <32.707745, 32.978519, 33.753025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246849, 33.005417, 33.149277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454964, 33.346954, 33.142914>,  <32.579834, 33.551876, 33.139095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454964, 33.346954, 33.142914>,  <32.246849, 33.005417, 33.149277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454964, 33.346954, 33.142914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077775, 0.028829, -0.996554,
		-0.850443, 0.519731, 0.081407,
		0.520287, 0.853843, -0.015905,
		32.611050, 33.603107, 33.138142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011360, 33.409977, 32.544994>,  <32.246849, 33.005417, 33.149277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011360, 33.409977, 32.544994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377060, 33.554035, 32.619228>,  <32.596481, 33.640469, 32.663769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377060, 33.554035, 32.619228>,  <32.011360, 33.409977, 32.544994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377060, 33.554035, 32.619228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146269, 0.133778, -0.980158,
		-0.377826, 0.923255, 0.069629,
		0.914250, 0.360145, 0.185588,
		32.651337, 33.662079, 32.674904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130520, 33.893330, 31.999144>,  <32.011360, 33.409977, 32.544994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130520, 33.893330, 31.999144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496483, 33.839935, 32.151524>,  <32.716061, 33.807899, 32.242950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496483, 33.839935, 32.151524>,  <32.130520, 33.893330, 31.999144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496483, 33.839935, 32.151524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402734, 0.237950, -0.883847,
		0.027334, 0.962061, 0.271462,
		0.914909, -0.133486, 0.380950,
		32.770954, 33.799889, 32.265808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625278, 34.528225, 31.889236>,  <32.130520, 33.893330, 31.999144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625278, 34.528225, 31.889236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854881, 34.200790, 31.897514>,  <32.992641, 34.004330, 31.902481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854881, 34.200790, 31.897514>,  <32.625278, 34.528225, 31.889236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854881, 34.200790, 31.897514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448954, 0.293476, -0.843986,
		0.684806, 0.493742, 0.535966,
		0.574005, -0.818590, 0.020693,
		33.027084, 33.955212, 31.903723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240192, 34.803463, 31.451939>,  <32.625278, 34.528225, 31.889236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240192, 34.803463, 31.451939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262520, 34.404854, 31.476683>,  <33.275917, 34.165688, 31.491529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262520, 34.404854, 31.476683>,  <33.240192, 34.803463, 31.451939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262520, 34.404854, 31.476683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260539, -0.045273, -0.964401,
		0.963849, 0.069944, 0.257106,
		0.055814, -0.996523, 0.061859,
		33.279263, 34.105896, 31.495241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866642, 34.708942, 31.135921>,  <33.240192, 34.803463, 31.451939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866642, 34.708942, 31.135921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.338318, 31.148878>,  <33.626804, 34.115944, 31.156652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.338318, 31.148878>,  <33.866642, 34.708942, 31.135921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716743, 34.338318, 31.148878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438557, -0.207942, -0.874316,
		0.816841, -0.313444, 0.484275,
		-0.374751, -0.926560, 0.032393,
		33.604317, 34.060349, 31.158596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446026, 34.202118, 31.041166>,  <33.866642, 34.708942, 31.135921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446026, 34.202118, 31.041166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122452, 33.992008, 30.935551>,  <33.928307, 33.865944, 30.872181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122452, 33.992008, 30.935551>,  <34.446026, 34.202118, 31.041166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122452, 33.992008, 30.935551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531637, -0.461850, -0.709969,
		0.250983, -0.714689, 0.652861,
		-0.808932, -0.525275, -0.264039,
		33.879772, 33.834427, 30.856339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674786, 33.526676, 30.954657>,  <34.446026, 34.202118, 31.041166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674786, 33.526676, 30.954657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351234, 33.598743, 30.730778>,  <34.157104, 33.641983, 30.596451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351234, 33.598743, 30.730778>,  <34.674786, 33.526676, 30.954657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351234, 33.598743, 30.730778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409870, -0.509723, -0.756432,
		-0.421577, -0.841261, 0.338456,
		-0.808876, 0.180171, -0.559695,
		34.108570, 33.652794, 30.562870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473373, 32.819157, 30.643837>,  <34.674786, 33.526676, 30.954657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473373, 32.819157, 30.643837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298653, 33.081116, 30.397158>,  <34.193821, 33.238289, 30.249151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298653, 33.081116, 30.397158>,  <34.473373, 32.819157, 30.643837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298653, 33.081116, 30.397158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319107, -0.528165, -0.786901,
		-0.841055, -0.540514, 0.021723,
		-0.436803, 0.654895, -0.616697,
		34.167610, 33.277584, 30.212149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305119, 32.501301, 29.982725>,  <34.473373, 32.819157, 30.643837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305119, 32.501301, 29.982725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275894, 32.879005, 29.854326>,  <34.258358, 33.105629, 29.777287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275894, 32.879005, 29.854326>,  <34.305119, 32.501301, 29.982725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275894, 32.879005, 29.854326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433667, -0.259757, -0.862821,
		-0.898106, -0.202243, -0.390516,
		-0.073061, 0.944258, -0.320996,
		34.253975, 33.162285, 29.758028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940350, 32.451618, 29.421440>,  <34.305119, 32.501301, 29.982725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940350, 32.451618, 29.421440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107906, 32.811989, 29.376066>,  <34.208439, 33.028210, 29.348843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.107906, 32.811989, 29.376066>,  <33.940350, 32.451618, 29.421440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107906, 32.811989, 29.376066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365608, -0.281689, -0.887120,
		-0.831180, 0.330134, -0.447382,
		0.418892, 0.900923, -0.113435,
		34.233574, 33.082264, 29.342035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717499, 32.731480, 28.790171>,  <33.940350, 32.451618, 29.421440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717499, 32.731480, 28.790171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042454, 32.956306, 28.852278>,  <34.237427, 33.091202, 28.889542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042454, 32.956306, 28.852278>,  <33.717499, 32.731480, 28.790171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042454, 32.956306, 28.852278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290613, -0.159412, -0.943468,
		-0.505540, 0.811584, -0.292848,
		0.812387, 0.562066, 0.155267,
		34.286171, 33.124928, 28.898857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806171, 33.124264, 28.168375>,  <33.717499, 32.731480, 28.790171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806171, 33.124264, 28.168375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163937, 33.156235, 28.344391>,  <34.378597, 33.175419, 28.450001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163937, 33.156235, 28.344391>,  <33.806171, 33.124264, 28.168375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163937, 33.156235, 28.344391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441069, 0.005205, -0.897458,
		-0.074021, 0.996787, -0.030597,
		0.894415, 0.079926, 0.440038,
		34.432262, 33.180214, 28.476402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179665, 33.837250, 27.946556>,  <33.806171, 33.124264, 28.168375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179665, 33.837250, 27.946556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464920, 33.582264, 28.063227>,  <34.636074, 33.429272, 28.133230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464920, 33.582264, 28.063227>,  <34.179665, 33.837250, 27.946556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464920, 33.582264, 28.063227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399529, 0.027697, -0.916302,
		0.576027, 0.769985, 0.274436,
		0.713140, -0.637460, 0.291678,
		34.678864, 33.391026, 28.150730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908138, 34.087753, 27.787161>,  <34.179665, 33.837250, 27.946556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908138, 34.087753, 27.787161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944305, 33.692104, 27.833586>,  <34.966003, 33.454716, 27.861441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944305, 33.692104, 27.833586>,  <34.908138, 34.087753, 27.787161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944305, 33.692104, 27.833586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408270, -0.069485, -0.910213,
		0.908373, 0.129681, 0.397545,
		0.090414, -0.989118, 0.116063,
		34.971428, 33.395370, 27.868404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600075, 33.904720, 27.459562>,  <34.908138, 34.087753, 27.787161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600075, 33.904720, 27.459562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393215, 33.563431, 27.486584>,  <35.269100, 33.358658, 27.502796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393215, 33.563431, 27.486584>,  <35.600075, 33.904720, 27.459562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393215, 33.563431, 27.486584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093956, -0.135042, -0.986375,
		0.850724, -0.503754, 0.150002,
		-0.517147, -0.853227, 0.067553,
		35.238071, 33.307465, 27.506849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008598, 33.415314, 27.147213>,  <35.600075, 33.904720, 27.459562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008598, 33.415314, 27.147213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664772, 33.213051, 27.117662>,  <35.458477, 33.091694, 27.099932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664772, 33.213051, 27.117662>,  <36.008598, 33.415314, 27.147213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664772, 33.213051, 27.117662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240920, -0.273492, -0.931214,
		0.450671, -0.818238, 0.356907,
		-0.859566, -0.505657, -0.073875,
		35.406902, 33.061356, 27.095499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517353, 33.000027, 27.711445>,  <36.008598, 33.415314, 27.147213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517353, 33.000027, 27.711445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907543, 33.061867, 27.774115>,  <37.141659, 33.098972, 27.811716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907543, 33.061867, 27.774115>,  <36.517353, 33.000027, 27.711445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907543, 33.061867, 27.774115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205460, 0.384199, 0.900098,
		0.078961, -0.910214, 0.406541,
		0.975475, 0.154600, 0.156675,
		37.200184, 33.108246, 27.821117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697330, 32.685886, 28.387743>,  <36.517353, 33.000027, 27.711445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697330, 32.685886, 28.387743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937820, 32.987511, 28.281979>,  <37.082115, 33.168488, 28.218521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937820, 32.987511, 28.281979>,  <36.697330, 32.685886, 28.387743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937820, 32.987511, 28.281979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075018, 0.382696, 0.920824,
		0.795548, -0.533790, 0.286656,
		0.601228, 0.754064, -0.264409,
		37.118191, 33.213730, 28.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990520, 32.639404, 28.931095>,  <36.697330, 32.685886, 28.387743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990520, 32.639404, 28.931095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105194, 32.992523, 28.782244>,  <37.174000, 33.204395, 28.692932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105194, 32.992523, 28.782244>,  <36.990520, 32.639404, 28.931095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105194, 32.992523, 28.782244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140885, 0.345363, 0.927834,
		0.947608, -0.318426, -0.025361,
		0.286688, 0.882796, -0.372130,
		37.191200, 33.257362, 28.670605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623528, 32.844563, 29.147350>,  <36.990520, 32.639404, 28.931095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623528, 32.844563, 29.147350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452862, 33.196358, 29.063005>,  <37.350464, 33.407436, 29.012400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452862, 33.196358, 29.063005>,  <37.623528, 32.844563, 29.147350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452862, 33.196358, 29.063005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141288, 0.295101, 0.944962,
		0.893307, 0.373388, -0.250170,
		-0.426663, 0.879487, -0.210861,
		37.324863, 33.460205, 28.999746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008751, 33.325001, 29.302668>,  <37.623528, 32.844563, 29.147350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008751, 33.325001, 29.302668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669807, 33.537041, 29.315180>,  <37.466442, 33.664265, 29.322687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669807, 33.537041, 29.315180>,  <38.008751, 33.325001, 29.302668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669807, 33.537041, 29.315180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277978, 0.392611, 0.876689,
		0.452451, 0.751566, -0.480038,
		-0.847358, 0.530099, 0.031282,
		37.415600, 33.696072, 29.324564>
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
