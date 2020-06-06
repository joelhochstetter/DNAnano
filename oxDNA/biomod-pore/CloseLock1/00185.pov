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
	<24.411278, 34.856655, 34.746243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392105, 35.071373, 35.083183>,  <24.380602, 35.200203, 35.285347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392105, 35.071373, 35.083183>,  <24.411278, 34.856655, 34.746243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392105, 35.071373, 35.083183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938908, -0.263532, 0.221363,
		0.340813, 0.801498, -0.491373,
		-0.047930, 0.536798, 0.842348,
		24.377726, 35.232414, 35.335888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989918, 35.406738, 34.761745>,  <24.411278, 34.856655, 34.746243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989918, 35.406738, 34.761745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872993, 35.295300, 35.127682>,  <24.802839, 35.228436, 35.347244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872993, 35.295300, 35.127682>,  <24.989918, 35.406738, 34.761745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872993, 35.295300, 35.127682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956054, -0.062420, 0.286469,
		-0.022705, 0.958377, 0.284600,
		-0.292311, -0.278597, 0.914843,
		24.785301, 35.211720, 35.402134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301880, 35.782417, 35.280807>,  <24.989918, 35.406738, 34.761745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301880, 35.782417, 35.280807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213638, 35.425644, 35.438690>,  <25.160694, 35.211582, 35.533421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213638, 35.425644, 35.438690>,  <25.301880, 35.782417, 35.280807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213638, 35.425644, 35.438690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967038, -0.147249, 0.207739,
		-0.127168, 0.427525, 0.895014,
		-0.220603, -0.891931, 0.394707,
		25.147457, 35.158066, 35.557102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481394, 35.723663, 36.028378>,  <25.301880, 35.782417, 35.280807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481394, 35.723663, 36.028378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500263, 35.406532, 35.785332>,  <25.511585, 35.216255, 35.639503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500263, 35.406532, 35.785332>,  <25.481394, 35.723663, 36.028378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500263, 35.406532, 35.785332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974618, -0.096738, 0.201894,
		-0.218846, -0.601720, 0.768140,
		0.047175, -0.792827, -0.607618,
		25.514416, 35.168686, 35.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886013, 36.287411, 35.763554>,  <25.481394, 35.723663, 36.028378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886013, 36.287411, 35.763554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976917, 36.149521, 36.127865>,  <26.031460, 36.066788, 36.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976917, 36.149521, 36.127865>,  <25.886013, 36.287411, 35.763554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976917, 36.149521, 36.127865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282511, 0.918369, 0.277103,
		-0.931955, 0.194331, 0.306096,
		0.227260, -0.344723, 0.910780,
		26.045095, 36.046104, 36.401100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504383, 36.670971, 36.265636>,  <25.886013, 36.287411, 35.763554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504383, 36.670971, 36.265636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866331, 36.544926, 36.380123>,  <26.083500, 36.469299, 36.448814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866331, 36.544926, 36.380123>,  <25.504383, 36.670971, 36.265636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866331, 36.544926, 36.380123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239813, 0.932849, 0.268854,
		-0.351715, -0.174639, 0.919672,
		0.904868, -0.315110, 0.286216,
		26.137791, 36.450394, 36.465988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618334, 37.192173, 36.680023>,  <25.504383, 36.670971, 36.265636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618334, 37.192173, 36.680023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974464, 37.010384, 36.668865>,  <26.188143, 36.901310, 36.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974464, 37.010384, 36.668865>,  <25.618334, 37.192173, 36.680023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974464, 37.010384, 36.668865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454402, 0.882949, 0.117983,
		-0.028987, -0.117721, 0.992624,
		0.890325, -0.454470, -0.027899,
		26.241562, 36.874043, 36.660496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076853, 37.527737, 37.136688>,  <25.618334, 37.192173, 36.680023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076853, 37.527737, 37.136688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364170, 37.354218, 36.919113>,  <26.536560, 37.250107, 36.788567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364170, 37.354218, 36.919113>,  <26.076853, 37.527737, 37.136688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364170, 37.354218, 36.919113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426670, 0.892197, -0.148110,
		0.549549, -0.125695, 0.825952,
		0.718295, -0.433803, -0.543937,
		26.579659, 37.224075, 36.755932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632538, 37.790825, 37.418587>,  <26.076853, 37.527737, 37.136688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632538, 37.790825, 37.418587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783636, 37.637413, 37.081490>,  <26.874296, 37.545364, 36.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783636, 37.637413, 37.081490>,  <26.632538, 37.790825, 37.418587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783636, 37.637413, 37.081490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530556, 0.835593, -0.142461,
		0.758826, -0.393307, 0.519126,
		0.377747, -0.383529, -0.842741,
		26.896961, 37.522354, 36.828667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353872, 37.936443, 37.468296>,  <26.632538, 37.790825, 37.418587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353872, 37.936443, 37.468296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270853, 37.889511, 37.079830>,  <27.221043, 37.861351, 36.846752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270853, 37.889511, 37.079830>,  <27.353872, 37.936443, 37.468296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270853, 37.889511, 37.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402508, 0.894601, -0.194104,
		0.891577, -0.431187, -0.138447,
		-0.207549, -0.117333, -0.971162,
		27.208590, 37.854309, 36.788483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968496, 38.115398, 37.081146>,  <27.353872, 37.936443, 37.468296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968496, 38.115398, 37.081146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683628, 38.081482, 36.802399>,  <27.512707, 38.061134, 36.635151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683628, 38.081482, 36.802399>,  <27.968496, 38.115398, 37.081146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683628, 38.081482, 36.802399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428264, 0.734084, -0.526983,
		0.556243, -0.673745, -0.486479,
		-0.712169, -0.084789, -0.696869,
		27.469978, 38.056046, 36.593338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311644, 38.096527, 36.364849>,  <27.968496, 38.115398, 37.081146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311644, 38.096527, 36.364849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945438, 38.253277, 36.328468>,  <27.725716, 38.347328, 36.306641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945438, 38.253277, 36.328468>,  <28.311644, 38.096527, 36.364849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945438, 38.253277, 36.328468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395606, 0.835937, -0.380402,
		-0.073039, -0.384244, -0.920338,
		-0.915511, 0.391875, -0.090953,
		27.670784, 38.370838, 36.301182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218977, 38.268780, 35.620388>,  <28.311644, 38.096527, 36.364849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218977, 38.268780, 35.620388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992474, 38.502174, 35.853249>,  <27.856571, 38.642212, 35.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992474, 38.502174, 35.853249>,  <28.218977, 38.268780, 35.620388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992474, 38.502174, 35.853249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354697, 0.810057, -0.466902,
		-0.744005, -0.057900, -0.665661,
		-0.566256, 0.583486, 0.582149,
		27.822598, 38.677219, 36.027893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178429, 38.799061, 35.199718>,  <28.218977, 38.268780, 35.620388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178429, 38.799061, 35.199718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027475, 38.937328, 35.543369>,  <27.936905, 39.020290, 35.749557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027475, 38.937328, 35.543369>,  <28.178429, 38.799061, 35.199718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027475, 38.937328, 35.543369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336569, 0.915477, -0.220505,
		-0.862731, 0.205940, -0.461826,
		-0.377381, 0.345673, 0.859124,
		27.914261, 39.041031, 35.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695097, 39.306702, 34.993679>,  <28.178429, 38.799061, 35.199718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695097, 39.306702, 34.993679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838902, 39.364159, 35.362488>,  <27.925184, 39.398632, 35.583771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838902, 39.364159, 35.362488>,  <27.695097, 39.306702, 34.993679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838902, 39.364159, 35.362488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321708, 0.908425, -0.266960,
		-0.875932, 0.392596, 0.280378,
		0.359510, 0.143639, 0.922020,
		27.946754, 39.407249, 35.639095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792471, 40.013977, 35.002876>,  <27.695097, 39.306702, 34.993679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792471, 40.013977, 35.002876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998384, 39.894161, 35.324192>,  <28.121933, 39.822273, 35.516983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998384, 39.894161, 35.324192>,  <27.792471, 40.013977, 35.002876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998384, 39.894161, 35.324192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583327, 0.809027, -0.072145,
		-0.628273, 0.505719, 0.591203,
		0.514785, -0.299538, 0.803289,
		28.152821, 39.804298, 35.565178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059225, 40.635124, 35.305435>,  <27.792471, 40.013977, 35.002876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059225, 40.635124, 35.305435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298800, 40.347694, 35.446815>,  <28.442545, 40.175236, 35.531643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298800, 40.347694, 35.446815>,  <28.059225, 40.635124, 35.305435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298800, 40.347694, 35.446815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737873, 0.666709, 0.105085,
		-0.311158, 0.197861, 0.929533,
		0.598936, -0.718576, 0.353447,
		28.478479, 40.132122, 35.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292351, 40.939598, 35.963509>,  <28.059225, 40.635124, 35.305435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292351, 40.939598, 35.963509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545944, 40.654579, 35.843285>,  <28.698099, 40.483566, 35.771149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545944, 40.654579, 35.843285>,  <28.292351, 40.939598, 35.963509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545944, 40.654579, 35.843285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758189, 0.649265, 0.060033,
		0.152366, -0.265941, 0.951872,
		0.633983, -0.712552, -0.300560,
		28.736139, 40.440815, 35.753117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763874, 40.905441, 36.521805>,  <28.292351, 40.939598, 35.963509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763874, 40.905441, 36.521805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942411, 40.732971, 36.208149>,  <29.049534, 40.629490, 36.019955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942411, 40.732971, 36.208149>,  <28.763874, 40.905441, 36.521805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942411, 40.732971, 36.208149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752938, 0.654496, 0.068698,
		0.483594, -0.621069, 0.616774,
		0.446342, -0.431171, -0.784137,
		29.076315, 40.603619, 35.972908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490936, 40.827961, 36.689091>,  <28.763874, 40.905441, 36.521805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490936, 40.827961, 36.689091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481030, 40.795643, 36.290520>,  <29.475086, 40.776253, 36.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481030, 40.795643, 36.290520>,  <29.490936, 40.827961, 36.689091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481030, 40.795643, 36.290520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775213, 0.627790, -0.070170,
		0.631214, -0.774178, 0.047085,
		-0.024764, -0.080793, -0.996423,
		29.473600, 40.771404, 35.991592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178080, 40.581963, 36.427589>,  <29.490936, 40.827961, 36.689091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178080, 40.581963, 36.427589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006849, 40.783512, 36.127491>,  <29.904112, 40.904442, 35.947433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006849, 40.783512, 36.127491>,  <30.178080, 40.581963, 36.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006849, 40.783512, 36.127491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887755, 0.389904, -0.244674,
		0.169238, -0.770771, -0.614224,
		-0.428076, 0.503873, -0.750242,
		29.878426, 40.934673, 35.902420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670259, 40.451729, 35.997051>,  <30.178080, 40.581963, 36.427589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670259, 40.451729, 35.997051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483587, 40.771065, 35.844807>,  <30.371584, 40.962666, 35.753460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483587, 40.771065, 35.844807>,  <30.670259, 40.451729, 35.997051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483587, 40.771065, 35.844807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883931, 0.435424, -0.170503,
		0.029607, -0.416003, -0.908881,
		-0.466679, 0.798340, -0.380609,
		30.343584, 41.010567, 35.730625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935831, 40.595989, 35.430038>,  <30.670259, 40.451729, 35.997051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935831, 40.595989, 35.430038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784571, 40.961483, 35.489502>,  <30.693815, 41.180779, 35.525181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784571, 40.961483, 35.489502>,  <30.935831, 40.595989, 35.430038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784571, 40.961483, 35.489502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919240, 0.389622, -0.056489,
		-0.109536, 0.115288, -0.987274,
		-0.378152, 0.913730, 0.148655,
		30.671125, 41.235603, 35.534100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331844, 40.973473, 35.014378>,  <30.935831, 40.595989, 35.430038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331844, 40.973473, 35.014378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170902, 41.241211, 35.264206>,  <31.074337, 41.401855, 35.414104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170902, 41.241211, 35.264206>,  <31.331844, 40.973473, 35.014378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170902, 41.241211, 35.264206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882254, 0.465641, 0.069334,
		-0.244418, 0.578928, -0.777884,
		-0.402354, 0.669344, 0.624572,
		31.050196, 41.442013, 35.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601957, 41.712097, 34.893593>,  <31.331844, 40.973473, 35.014378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601957, 41.712097, 34.893593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485304, 41.670811, 35.273972>,  <31.415312, 41.646038, 35.502197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485304, 41.670811, 35.273972>,  <31.601957, 41.712097, 34.893593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485304, 41.670811, 35.273972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830289, 0.466309, 0.305248,
		-0.474941, 0.878579, -0.050290,
		-0.291635, -0.103220, 0.950944,
		31.397814, 41.639843, 35.559254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672018, 42.391464, 35.209202>,  <31.601957, 41.712097, 34.893593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672018, 42.391464, 35.209202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701172, 42.084232, 35.463676>,  <31.718664, 41.899891, 35.616364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701172, 42.084232, 35.463676>,  <31.672018, 42.391464, 35.209202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701172, 42.084232, 35.463676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873604, 0.356903, 0.330812,
		-0.481148, 0.531666, 0.697013,
		0.072885, -0.768083, 0.636189,
		31.723038, 41.853806, 35.654533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760866, 42.747761, 35.805466>,  <31.672018, 42.391464, 35.209202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760866, 42.747761, 35.805466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896929, 42.371613, 35.805744>,  <31.978567, 42.145924, 35.805912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896929, 42.371613, 35.805744>,  <31.760866, 42.747761, 35.805466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896929, 42.371613, 35.805744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851522, 0.308333, 0.424077,
		-0.399003, -0.143659, 0.905626,
		0.340157, -0.940369, 0.000697,
		31.998976, 42.089500, 35.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015083, 42.431049, 36.491325>,  <31.760866, 42.747761, 35.805466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015083, 42.431049, 36.491325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227779, 42.300571, 36.178696>,  <32.355396, 42.222286, 35.991119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227779, 42.300571, 36.178696>,  <32.015083, 42.431049, 36.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227779, 42.300571, 36.178696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840372, 0.317675, 0.439156,
		0.105035, -0.890326, 0.443043,
		0.531735, -0.326194, -0.781572,
		32.387299, 42.202713, 35.944225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895157, 42.598377, 37.242306>,  <32.015083, 42.431049, 36.491325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895157, 42.598377, 37.242306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656343, 42.760605, 37.519161>,  <31.513056, 42.857941, 37.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656343, 42.760605, 37.519161>,  <31.895157, 42.598377, 37.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656343, 42.760605, 37.519161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491404, 0.497076, -0.715149,
		-0.634092, -0.767089, -0.097471,
		-0.597034, 0.405573, 0.692143,
		31.477234, 42.882278, 37.726803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153036, 42.571724, 37.033245>,  <31.895157, 42.598377, 37.242306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153036, 42.571724, 37.033245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216383, 42.897797, 37.256096>,  <31.254391, 43.093441, 37.389809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216383, 42.897797, 37.256096>,  <31.153036, 42.571724, 37.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216383, 42.897797, 37.256096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426296, 0.565402, -0.706111,
		-0.890613, -0.125679, 0.437050,
		0.158365, 0.815184, 0.557131,
		31.263893, 43.142353, 37.423237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844662, 42.785538, 37.656162>,  <31.153036, 42.571724, 37.033245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844662, 42.785538, 37.656162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851906, 42.547516, 37.977554>,  <30.856253, 42.404701, 38.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851906, 42.547516, 37.977554>,  <30.844662, 42.785538, 37.656162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851906, 42.547516, 37.977554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310478, 0.767231, 0.561212,
		-0.950408, 0.239299, 0.198646,
		0.018110, -0.595056, 0.803480,
		30.857338, 42.368999, 38.218597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548313, 43.114010, 38.120926>,  <30.844662, 42.785538, 37.656162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548313, 43.114010, 38.120926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830706, 42.869152, 38.263401>,  <31.000141, 42.722237, 38.348885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830706, 42.869152, 38.263401>,  <30.548313, 43.114010, 38.120926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830706, 42.869152, 38.263401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424005, 0.768151, 0.479755,
		-0.567283, -0.187674, 0.801853,
		0.705982, -0.612146, 0.356184,
		31.042500, 42.685509, 38.370255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466797, 42.904247, 38.881298>,  <30.548313, 43.114010, 38.120926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466797, 42.904247, 38.881298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837736, 42.923149, 38.732819>,  <31.060301, 42.934490, 38.643730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837736, 42.923149, 38.732819>,  <30.466797, 42.904247, 38.881298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837736, 42.923149, 38.732819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229718, 0.711175, 0.664425,
		0.295386, -0.701425, 0.648652,
		0.927349, 0.047255, -0.371201,
		31.115940, 42.937325, 38.621460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991739, 42.864834, 39.515003>,  <30.466797, 42.904247, 38.881298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991739, 42.864834, 39.515003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172308, 43.033680, 39.200542>,  <31.280649, 43.134987, 39.011868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172308, 43.033680, 39.200542>,  <30.991739, 42.864834, 39.515003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172308, 43.033680, 39.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427510, 0.671019, 0.605780,
		0.783232, -0.609551, 0.122455,
		0.451423, 0.422115, -0.786152,
		31.307735, 43.160313, 38.964695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522192, 42.506664, 40.013065>,  <30.991739, 42.864834, 39.515003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522192, 42.506664, 40.013065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900270, 42.426453, 40.116131>,  <32.127117, 42.378326, 40.177971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900270, 42.426453, 40.116131>,  <31.522192, 42.506664, 40.013065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900270, 42.426453, 40.116131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150235, -0.967780, -0.202069,
		0.289886, 0.152284, -0.944868,
		0.945196, -0.200529, 0.257667,
		32.183830, 42.366295, 40.193432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927849, 42.134907, 39.527664>,  <31.522192, 42.506664, 40.013065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927849, 42.134907, 39.527664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080246, 42.040985, 39.885372>,  <32.171684, 41.984631, 40.099995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080246, 42.040985, 39.885372>,  <31.927849, 42.134907, 39.527664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080246, 42.040985, 39.885372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022663, -0.964553, -0.262916,
		0.924301, 0.120435, -0.362164,
		0.380991, -0.234806, 0.894266,
		32.194542, 41.970543, 40.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541954, 41.774460, 39.397556>,  <31.927849, 42.134907, 39.527664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541954, 41.774460, 39.397556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394188, 41.678604, 39.756691>,  <32.305531, 41.621090, 39.972172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394188, 41.678604, 39.756691>,  <32.541954, 41.774460, 39.397556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394188, 41.678604, 39.756691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080982, -0.954199, -0.288003,
		0.925731, -0.179100, 0.333085,
		-0.369411, -0.239639, 0.897835,
		32.283363, 41.606712, 40.026043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943394, 41.232288, 39.820038>,  <32.541954, 41.774460, 39.397556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943394, 41.232288, 39.820038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558758, 41.232075, 39.929840>,  <32.327976, 41.231945, 39.995720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558758, 41.232075, 39.929840>,  <32.943394, 41.232288, 39.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558758, 41.232075, 39.929840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051636, -0.981796, -0.182787,
		0.269606, -0.189940, 0.944053,
		-0.961586, -0.000533, 0.274506,
		32.270283, 41.231915, 40.012192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853039, 40.619190, 40.245415>,  <32.943394, 41.232288, 39.820038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853039, 40.619190, 40.245415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474678, 40.713467, 40.156219>,  <32.247662, 40.770031, 40.102703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474678, 40.713467, 40.156219>,  <32.853039, 40.619190, 40.245415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474678, 40.713467, 40.156219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209437, -0.968432, -0.135186,
		-0.247808, -0.081171, 0.965403,
		-0.945900, 0.235691, -0.222985,
		32.190907, 40.784172, 40.089325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426796, 40.143711, 40.679344>,  <32.853039, 40.619190, 40.245415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426796, 40.143711, 40.679344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199631, 40.262257, 40.372192>,  <32.063332, 40.333385, 40.187901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199631, 40.262257, 40.372192>,  <32.426796, 40.143711, 40.679344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199631, 40.262257, 40.372192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238254, -0.952179, -0.191286,
		-0.787853, 0.074318, 0.611363,
		-0.567911, 0.296364, -0.767884,
		32.029259, 40.351166, 40.141827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723042, 39.801632, 40.668823>,  <32.426796, 40.143711, 40.679344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723042, 39.801632, 40.668823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754688, 39.931614, 40.291859>,  <31.773676, 40.009602, 40.065678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754688, 39.931614, 40.291859>,  <31.723042, 39.801632, 40.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754688, 39.931614, 40.291859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397440, -0.856710, -0.328769,
		-0.914211, 0.400564, 0.061369,
		0.079118, 0.324955, -0.942414,
		31.778423, 40.029102, 40.009136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984072, 39.712341, 40.386158>,  <31.723042, 39.801632, 40.668823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984072, 39.712341, 40.386158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237753, 39.721909, 40.077042>,  <31.389961, 39.727650, 39.891571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237753, 39.721909, 40.077042>,  <30.984072, 39.712341, 40.386158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237753, 39.721909, 40.077042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368642, -0.869240, -0.329431,
		-0.679623, 0.493812, -0.542460,
		0.634205, 0.023915, -0.772795,
		31.428015, 39.729084, 39.845203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613638, 39.332115, 39.923347>,  <30.984072, 39.712341, 40.386158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613638, 39.332115, 39.923347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970970, 39.336895, 39.743652>,  <31.185369, 39.339764, 39.635834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970970, 39.336895, 39.743652>,  <30.613638, 39.332115, 39.923347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970970, 39.336895, 39.743652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273530, -0.778696, -0.564636,
		-0.356571, 0.627288, -0.692364,
		0.893330, 0.011951, -0.449242,
		31.238970, 39.340481, 39.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451887, 39.181782, 39.213558>,  <30.613638, 39.332115, 39.923347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451887, 39.181782, 39.213558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840973, 39.091423, 39.234707>,  <31.074425, 39.037209, 39.247398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840973, 39.091423, 39.234707>,  <30.451887, 39.181782, 39.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840973, 39.091423, 39.234707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151661, -0.791609, -0.591907,
		0.175566, 0.567738, -0.804270,
		0.972715, -0.225895, 0.052876,
		31.132788, 39.023655, 39.250568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741026, 39.181583, 38.529789>,  <30.451887, 39.181782, 39.213558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741026, 39.181583, 38.529789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991734, 38.959980, 38.748962>,  <31.142159, 38.827019, 38.880466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991734, 38.959980, 38.748962>,  <30.741026, 39.181583, 38.529789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991734, 38.959980, 38.748962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163911, -0.781206, -0.602371,
		0.761769, 0.287736, -0.580445,
		0.626771, -0.554009, 0.547935,
		31.179766, 38.793777, 38.913342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069319, 38.839077, 38.068085>,  <30.741026, 39.181583, 38.529789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069319, 38.839077, 38.068085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154654, 38.607376, 38.382778>,  <31.205854, 38.468357, 38.571594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154654, 38.607376, 38.382778>,  <31.069319, 38.839077, 38.068085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154654, 38.607376, 38.382778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146751, -0.815138, -0.560369,
		0.965895, 0.004092, -0.258904,
		0.213335, -0.579252, 0.786737,
		31.218655, 38.433601, 38.618801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639776, 38.357643, 37.873436>,  <31.069319, 38.839077, 38.068085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639776, 38.357643, 37.873436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430227, 38.194839, 38.172741>,  <31.304499, 38.097157, 38.352325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430227, 38.194839, 38.172741>,  <31.639776, 38.357643, 37.873436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430227, 38.194839, 38.172741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143968, -0.823510, -0.548730,
		0.839542, -0.395191, 0.372818,
		-0.523872, -0.407008, 0.748266,
		31.273066, 38.072739, 38.397221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810041, 37.623146, 37.876179>,  <31.639776, 38.357643, 37.873436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810041, 37.623146, 37.876179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474112, 37.656448, 38.090752>,  <31.272554, 37.676430, 38.219498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474112, 37.656448, 38.090752>,  <31.810041, 37.623146, 37.876179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474112, 37.656448, 38.090752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386191, -0.786102, -0.482597,
		0.381513, -0.612464, 0.692341,
		-0.839824, 0.083259, 0.536436,
		31.222164, 37.681427, 38.251682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572021, 36.935291, 37.969574>,  <31.810041, 37.623146, 37.876179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572021, 36.935291, 37.969574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255829, 37.146778, 38.093250>,  <31.066113, 37.273670, 38.167454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255829, 37.146778, 38.093250>,  <31.572021, 36.935291, 37.969574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255829, 37.146778, 38.093250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612483, -0.683648, -0.396850,
		0.001553, -0.503074, 0.864242,
		-0.790482, 0.528717, 0.309186,
		31.018684, 37.305393, 38.186005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059572, 36.497036, 38.392044>,  <31.572021, 36.935291, 37.969574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059572, 36.497036, 38.392044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849949, 36.794827, 38.226582>,  <30.724174, 36.973503, 38.127304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849949, 36.794827, 38.226582>,  <31.059572, 36.497036, 38.392044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849949, 36.794827, 38.226582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642548, -0.664398, -0.381717,
		-0.559012, 0.065751, 0.826548,
		-0.524059, 0.744481, -0.413655,
		30.692732, 37.018169, 38.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330460, 36.298740, 38.535576>,  <31.059572, 36.497036, 38.392044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330460, 36.298740, 38.535576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359348, 36.554779, 38.229618>,  <30.376682, 36.708401, 38.046043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359348, 36.554779, 38.229618>,  <30.330460, 36.298740, 38.535576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359348, 36.554779, 38.229618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660581, -0.543881, -0.517519,
		-0.747273, 0.542650, 0.383555,
		0.072223, 0.640097, -0.764892,
		30.381016, 36.746807, 38.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617750, 36.252483, 38.315720>,  <30.330460, 36.298740, 38.535576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617750, 36.252483, 38.315720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806425, 36.439617, 38.016750>,  <29.919630, 36.551895, 37.837368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806425, 36.439617, 38.016750>,  <29.617750, 36.252483, 38.315720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806425, 36.439617, 38.016750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727757, -0.272058, -0.629567,
		-0.497874, 0.840903, 0.212141,
		0.471690, 0.467832, -0.747424,
		29.947931, 36.579967, 37.792522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124992, 36.720520, 37.844765>,  <29.617750, 36.252483, 38.315720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124992, 36.720520, 37.844765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432819, 36.595787, 37.621864>,  <29.617516, 36.520947, 37.488125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432819, 36.595787, 37.621864>,  <29.124992, 36.720520, 37.844765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432819, 36.595787, 37.621864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638096, -0.342004, -0.689831,
		0.024533, 0.886449, -0.462177,
		0.769566, -0.311836, -0.557249,
		29.663689, 36.502235, 37.454689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759336, 36.559177, 37.282280>,  <29.124992, 36.720520, 37.844765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759336, 36.559177, 37.282280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130630, 36.453484, 37.177547>,  <29.353407, 36.390068, 37.114708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130630, 36.453484, 37.177547>,  <28.759336, 36.559177, 37.282280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130630, 36.453484, 37.177547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353609, -0.408258, -0.841597,
		0.115482, 0.873788, -0.472396,
		0.928237, -0.264233, -0.261833,
		29.409101, 36.374214, 37.098999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933718, 36.710442, 36.521584>,  <28.759336, 36.559177, 37.282280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933718, 36.710442, 36.521584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135344, 36.389767, 36.650089>,  <29.256319, 36.197361, 36.727192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135344, 36.389767, 36.650089>,  <28.933718, 36.710442, 36.521584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135344, 36.389767, 36.650089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470877, -0.566931, -0.675917,
		0.724011, 0.189429, -0.663268,
		0.504066, -0.801689, 0.321267,
		29.286564, 36.149261, 36.746468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368118, 36.453938, 35.899929>,  <28.933718, 36.710442, 36.521584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368118, 36.453938, 35.899929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321709, 36.153679, 36.160103>,  <29.293863, 35.973522, 36.316208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321709, 36.153679, 36.160103>,  <29.368118, 36.453938, 35.899929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321709, 36.153679, 36.160103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482018, -0.530022, -0.697664,
		0.868445, -0.394467, -0.300331,
		-0.116023, -0.750648, 0.650435,
		29.286901, 35.928486, 36.355232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605820, 35.866943, 35.573223>,  <29.368118, 36.453938, 35.899929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605820, 35.866943, 35.573223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354898, 35.752121, 35.862801>,  <29.204346, 35.683228, 36.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354898, 35.752121, 35.862801>,  <29.605820, 35.866943, 35.573223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354898, 35.752121, 35.862801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645199, -0.329025, -0.689537,
		0.436130, -0.899634, 0.021191,
		-0.627303, -0.287055, 0.723940,
		29.166708, 35.666004, 36.079983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286085, 35.321152, 35.264126>,  <29.605820, 35.866943, 35.573223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286085, 35.321152, 35.264126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039358, 35.401138, 35.568638>,  <28.891323, 35.449131, 35.751347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039358, 35.401138, 35.568638>,  <29.286085, 35.321152, 35.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039358, 35.401138, 35.568638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772720, -0.337917, -0.537323,
		0.149805, -0.919688, 0.362949,
		-0.616817, 0.199964, 0.761283,
		28.854313, 35.461128, 35.797024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893606, 34.644054, 35.568710>,  <29.286085, 35.321152, 35.264126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893606, 34.644054, 35.568710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690138, 34.979927, 35.644810>,  <28.568058, 35.181450, 35.690472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690138, 34.979927, 35.644810>,  <28.893606, 34.644054, 35.568710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690138, 34.979927, 35.644810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796908, -0.375546, -0.473184,
		-0.325873, -0.392308, 0.860175,
		-0.508669, 0.839678, 0.190253,
		28.537537, 35.231831, 35.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458445, 34.035130, 35.714451>,  <28.893606, 34.644054, 35.568710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458445, 34.035130, 35.714451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696400, 34.162502, 36.009670>,  <29.839172, 34.238926, 36.186802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696400, 34.162502, 36.009670>,  <29.458445, 34.035130, 35.714451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696400, 34.162502, 36.009670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599354, -0.787551, -0.143310,
		0.535613, 0.527603, -0.659358,
		0.594889, 0.318431, 0.738044,
		29.874866, 34.258030, 36.231083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084679, 34.239624, 35.464684>,  <29.458445, 34.035130, 35.714451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084679, 34.239624, 35.464684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092169, 34.076370, 35.829777>,  <30.096663, 33.978416, 36.048832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092169, 34.076370, 35.829777>,  <30.084679, 34.239624, 35.464684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092169, 34.076370, 35.829777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448098, -0.812647, -0.372576,
		0.893788, 0.415969, 0.167667,
		0.018726, -0.408135, 0.912730,
		30.097786, 33.953930, 36.103596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689573, 33.776829, 35.617435>,  <30.084679, 34.239624, 35.464684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689573, 33.776829, 35.617435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447416, 33.670616, 35.917568>,  <30.302122, 33.606888, 36.097649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447416, 33.670616, 35.917568>,  <30.689573, 33.776829, 35.617435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447416, 33.670616, 35.917568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198783, -0.963277, -0.180504,
		0.770703, 0.039876, 0.635945,
		-0.605393, -0.265531, 0.750328,
		30.265799, 33.590958, 36.142666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058792, 33.253441, 36.118862>,  <30.689573, 33.776829, 35.617435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058792, 33.253441, 36.118862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660692, 33.217247, 36.104485>,  <30.421833, 33.195530, 36.095856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660692, 33.217247, 36.104485>,  <31.058792, 33.253441, 36.118862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660692, 33.217247, 36.104485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096886, -0.956851, -0.273953,
		-0.009609, -0.276134, 0.961071,
		-0.995249, -0.090482, -0.035948,
		30.362118, 33.190102, 36.093700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610415, 33.360558, 36.511158>,  <31.058792, 33.253441, 36.118862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610415, 33.360558, 36.511158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634743, 32.978127, 36.396469>,  <31.649340, 32.748669, 36.327656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634743, 32.978127, 36.396469>,  <31.610415, 33.360558, 36.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634743, 32.978127, 36.396469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485769, -0.222589, 0.845271,
		-0.871969, -0.190688, 0.450897,
		0.060819, -0.956082, -0.286721,
		31.652988, 32.691303, 36.310452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309200, 32.863930, 37.092377>,  <31.610415, 33.360558, 36.511158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309200, 32.863930, 37.092377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570532, 32.685364, 36.847797>,  <31.727331, 32.578224, 36.701050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570532, 32.685364, 36.847797>,  <31.309200, 32.863930, 37.092377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570532, 32.685364, 36.847797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594252, -0.198011, 0.779523,
		-0.469068, -0.872640, 0.135920,
		0.653329, -0.446420, -0.611449,
		31.766531, 32.551437, 36.664364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524454, 32.105469, 37.295742>,  <31.309200, 32.863930, 37.092377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524454, 32.105469, 37.295742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829777, 32.285400, 37.110264>,  <32.012970, 32.393360, 36.998978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829777, 32.285400, 37.110264>,  <31.524454, 32.105469, 37.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829777, 32.285400, 37.110264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620603, -0.311150, 0.719748,
		0.179484, -0.837161, -0.516669,
		0.763307, 0.449829, -0.463698,
		32.058769, 32.420349, 36.971153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107323, 31.799446, 37.530804>,  <31.524454, 32.105469, 37.295742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107323, 31.799446, 37.530804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291080, 32.093685, 37.331665>,  <32.401337, 32.270229, 37.212181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291080, 32.093685, 37.331665>,  <32.107323, 31.799446, 37.530804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291080, 32.093685, 37.331665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842176, -0.182581, 0.507349,
		0.282307, -0.652350, -0.703379,
		0.459393, 0.735597, -0.497850,
		32.428898, 32.314365, 37.182308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813530, 31.558655, 37.321609>,  <32.107323, 31.799446, 37.530804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813530, 31.558655, 37.321609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834072, 31.957066, 37.350712>,  <32.846397, 32.196114, 37.368176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834072, 31.957066, 37.350712>,  <32.813530, 31.558655, 37.321609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834072, 31.957066, 37.350712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815512, -0.083878, 0.572629,
		0.576457, 0.029927, -0.816579,
		0.051356, 0.996027, 0.072758,
		32.849480, 32.255875, 37.372540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520901, 31.728413, 37.354988>,  <32.813530, 31.558655, 37.321609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520901, 31.728413, 37.354988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389908, 32.089252, 37.467392>,  <33.311310, 32.305756, 37.534836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389908, 32.089252, 37.467392>,  <33.520901, 31.728413, 37.354988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389908, 32.089252, 37.467392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622869, -0.017521, 0.782130,
		0.710484, 0.431168, -0.556153,
		-0.327485, 0.902101, 0.281010,
		33.291664, 32.359882, 37.551693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027004, 32.150326, 37.464504>,  <33.520901, 31.728413, 37.354988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027004, 32.150326, 37.464504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760201, 32.350037, 37.685707>,  <33.600117, 32.469864, 37.818428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760201, 32.350037, 37.685707>,  <34.027004, 32.150326, 37.464504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760201, 32.350037, 37.685707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629183, -0.020060, 0.776998,
		0.399034, 0.866208, -0.300759,
		-0.667008, 0.499281, 0.553008,
		33.560097, 32.499821, 37.851608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374783, 32.698917, 37.763180>,  <34.027004, 32.150326, 37.464504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374783, 32.698917, 37.763180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047626, 32.681686, 37.992683>,  <33.851334, 32.671349, 38.130386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047626, 32.681686, 37.992683>,  <34.374783, 32.698917, 37.763180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047626, 32.681686, 37.992683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564640, 0.131619, 0.814775,
		-0.110617, 0.990364, -0.083326,
		-0.817891, -0.043078, 0.573758,
		33.802258, 32.668762, 38.164810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460541, 33.269890, 38.088573>,  <34.374783, 32.698917, 37.763180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460541, 33.269890, 38.088573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228230, 33.027435, 38.305939>,  <34.088840, 32.881962, 38.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228230, 33.027435, 38.305939>,  <34.460541, 33.269890, 38.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228230, 33.027435, 38.305939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662364, 0.036211, 0.748307,
		-0.473253, 0.794536, 0.380453,
		-0.580780, -0.606137, 0.543409,
		34.053997, 32.845592, 38.468960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423138, 33.586208, 38.791920>,  <34.460541, 33.269890, 38.088573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423138, 33.586208, 38.791920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288612, 33.217060, 38.866970>,  <34.207897, 32.995571, 38.911999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288612, 33.217060, 38.866970>,  <34.423138, 33.586208, 38.791920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288612, 33.217060, 38.866970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391566, 0.044161, 0.919090,
		-0.856486, 0.382572, 0.346513,
		-0.336316, -0.922870, 0.187625,
		34.187717, 32.940201, 38.923256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115459, 33.625267, 39.370602>,  <34.423138, 33.586208, 38.791920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115459, 33.625267, 39.370602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177006, 33.231113, 39.341343>,  <34.213932, 32.994621, 39.323788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177006, 33.231113, 39.341343>,  <34.115459, 33.625267, 39.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177006, 33.231113, 39.341343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135488, -0.052286, 0.989398,
		-0.978758, -0.162146, 0.125462,
		0.153867, -0.985381, -0.073144,
		34.223167, 32.935501, 39.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768200, 33.288193, 39.968235>,  <34.115459, 33.625267, 39.370602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768200, 33.288193, 39.968235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033218, 33.010254, 39.856361>,  <34.192230, 32.843491, 39.789238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033218, 33.010254, 39.856361>,  <33.768200, 33.288193, 39.968235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033218, 33.010254, 39.856361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254174, -0.142676, 0.956577,
		-0.704575, -0.704866, 0.082081,
		0.662548, -0.694843, -0.279684,
		34.231983, 32.801800, 39.772457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838100, 33.026833, 40.603516>,  <33.768200, 33.288193, 39.968235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838100, 33.026833, 40.603516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120033, 32.842827, 40.387516>,  <34.289192, 32.732422, 40.257915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120033, 32.842827, 40.387516>,  <33.838100, 33.026833, 40.603516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120033, 32.842827, 40.387516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428869, -0.330024, 0.840925,
		-0.565052, -0.824299, -0.035324,
		0.704831, -0.460017, -0.539997,
		34.331482, 32.704823, 40.225517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942772, 32.252792, 40.714645>,  <33.838100, 33.026833, 40.603516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942772, 32.252792, 40.714645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290825, 32.384262, 40.567764>,  <34.499657, 32.463142, 40.479637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290825, 32.384262, 40.567764>,  <33.942772, 32.252792, 40.714645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290825, 32.384262, 40.567764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483096, -0.421666, 0.767344,
		0.097366, -0.845088, -0.525686,
		0.870137, 0.328670, -0.367202,
		34.551865, 32.482864, 40.457603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420029, 31.671604, 40.721687>,  <33.942772, 32.252792, 40.714645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420029, 31.671604, 40.721687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630611, 32.011635, 40.727619>,  <34.756962, 32.215652, 40.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630611, 32.011635, 40.727619>,  <34.420029, 31.671604, 40.721687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630611, 32.011635, 40.727619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526906, -0.339906, 0.778995,
		0.667246, -0.402290, -0.626854,
		0.526453, 0.850075, 0.014832,
		34.788548, 32.266659, 40.732067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057487, 31.415800, 40.651390>,  <34.420029, 31.671604, 40.721687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057487, 31.415800, 40.651390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048641, 31.777048, 40.822918>,  <35.043331, 31.993797, 40.925835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048641, 31.777048, 40.822918>,  <35.057487, 31.415800, 40.651390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048641, 31.777048, 40.822918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513851, -0.357665, 0.779765,
		0.857594, 0.237598, -0.456157,
		-0.022119, 0.903118, 0.428821,
		35.042004, 32.047985, 40.951565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697697, 31.377876, 41.001350>,  <35.057487, 31.415800, 40.651390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697697, 31.377876, 41.001350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517025, 31.692490, 41.169804>,  <35.408623, 31.881258, 41.270874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517025, 31.692490, 41.169804>,  <35.697697, 31.377876, 41.001350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517025, 31.692490, 41.169804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423161, -0.226689, 0.877238,
		0.785441, 0.574440, -0.230438,
		-0.451683, 0.786531, 0.421131,
		35.381519, 31.928450, 41.296143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232952, 31.797373, 41.384655>,  <35.697697, 31.377876, 41.001350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232952, 31.797373, 41.384655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869961, 31.899673, 41.517967>,  <35.652168, 31.961054, 41.597954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869961, 31.899673, 41.517967>,  <36.232952, 31.797373, 41.384655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869961, 31.899673, 41.517967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328986, -0.060728, 0.942380,
		0.261257, 0.964833, -0.029031,
		-0.907476, 0.255754, 0.333282,
		35.597717, 31.976400, 41.617950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276222, 32.298145, 41.965508>,  <36.232952, 31.797373, 41.384655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276222, 32.298145, 41.965508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898655, 32.175098, 42.013496>,  <35.672115, 32.101269, 42.042290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898655, 32.175098, 42.013496>,  <36.276222, 32.298145, 41.965508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898655, 32.175098, 42.013496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216793, -0.303322, 0.927899,
		-0.249050, 0.901868, 0.353000,
		-0.943915, -0.307621, 0.119976,
		35.615482, 32.082813, 42.049488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088684, 32.512081, 42.657158>,  <36.276222, 32.298145, 41.965508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088684, 32.512081, 42.657158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845184, 32.206787, 42.570526>,  <35.699085, 32.023613, 42.518547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845184, 32.206787, 42.570526>,  <36.088684, 32.512081, 42.657158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845184, 32.206787, 42.570526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315077, -0.483110, 0.816904,
		-0.728117, 0.429049, 0.534568,
		-0.608746, -0.763231, -0.216577,
		35.662560, 31.977818, 42.505554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823040, 32.361389, 43.286095>,  <36.088684, 32.512081, 42.657158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823040, 32.361389, 43.286095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700035, 32.031300, 43.096592>,  <35.626232, 31.833246, 42.982891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700035, 32.031300, 43.096592>,  <35.823040, 32.361389, 43.286095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700035, 32.031300, 43.096592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202305, -0.543201, 0.814865,
		-0.929790, 0.154737, 0.333987,
		-0.307512, -0.825220, -0.473759,
		35.607780, 31.783733, 42.954464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318726, 32.058033, 43.670094>,  <35.823040, 32.361389, 43.286095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318726, 32.058033, 43.670094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431618, 31.744402, 43.448982>,  <35.499352, 31.556223, 43.316315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431618, 31.744402, 43.448982>,  <35.318726, 32.058033, 43.670094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431618, 31.744402, 43.448982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059435, -0.560809, 0.825809,
		-0.957504, -0.265923, -0.111675,
		0.282230, -0.784078, -0.552782,
		35.516285, 31.509178, 43.283146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896309, 31.516899, 43.790447>,  <35.318726, 32.058033, 43.670094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896309, 31.516899, 43.790447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240509, 31.358957, 43.661686>,  <35.447029, 31.264193, 43.584427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240509, 31.358957, 43.661686>,  <34.896309, 31.516899, 43.790447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240509, 31.358957, 43.661686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100452, -0.487964, 0.867064,
		-0.499459, -0.778440, -0.380225,
		0.860494, -0.394869, -0.321914,
		35.498661, 31.240501, 43.565113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925720, 30.889759, 44.037331>,  <34.896309, 31.516899, 43.790447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925720, 30.889759, 44.037331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312664, 30.979443, 43.990093>,  <35.544830, 31.033253, 43.961750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312664, 30.979443, 43.990093>,  <34.925720, 30.889759, 44.037331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312664, 30.979443, 43.990093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222270, -0.526891, 0.820355,
		0.121705, -0.819828, -0.559527,
		0.967359, 0.224207, -0.118098,
		35.602871, 31.046705, 43.954662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015789, 30.635008, 44.636379>,  <34.925720, 30.889759, 44.037331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015789, 30.635008, 44.636379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355991, 30.683434, 44.431641>,  <35.560112, 30.712488, 44.308800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355991, 30.683434, 44.431641>,  <35.015789, 30.635008, 44.636379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355991, 30.683434, 44.431641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450600, -0.669665, 0.590346,
		-0.271295, -0.732729, -0.624105,
		0.850505, 0.121063, -0.511845,
		35.611141, 30.719753, 44.278088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207428, 29.951611, 44.286880>,  <35.015789, 30.635008, 44.636379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207428, 29.951611, 44.286880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495399, 30.203897, 44.402740>,  <35.668182, 30.355270, 44.472256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495399, 30.203897, 44.402740>,  <35.207428, 29.951611, 44.286880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495399, 30.203897, 44.402740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171768, -0.566263, 0.806128,
		0.672456, -0.530603, -0.516007,
		0.719929, 0.630719, 0.289646,
		35.711380, 30.393114, 44.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791050, 29.616852, 44.644302>,  <35.207428, 29.951611, 44.286880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791050, 29.616852, 44.644302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833950, 29.998510, 44.756088>,  <35.859692, 30.227505, 44.823158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833950, 29.998510, 44.756088>,  <35.791050, 29.616852, 44.644302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833950, 29.998510, 44.756088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168141, -0.294444, 0.940761,
		0.979911, -0.053912, -0.192011,
		0.107255, 0.954147, 0.279464,
		35.866127, 30.284754, 44.839928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377777, 29.683599, 45.070564>,  <35.791050, 29.616852, 44.644302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377777, 29.683599, 45.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180973, 30.008049, 45.197056>,  <36.062889, 30.202719, 45.272949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180973, 30.008049, 45.197056>,  <36.377777, 29.683599, 45.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180973, 30.008049, 45.197056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267337, -0.204920, 0.941562,
		0.828524, 0.547801, -0.116020,
		-0.492014, 0.811124, 0.316229,
		36.033367, 30.251387, 45.291924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797573, 30.061701, 45.483196>,  <36.377777, 29.683599, 45.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797573, 30.061701, 45.483196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440708, 30.204557, 45.593822>,  <36.226589, 30.290272, 45.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440708, 30.204557, 45.593822>,  <36.797573, 30.061701, 45.483196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440708, 30.204557, 45.593822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300590, 0.012383, 0.953673,
		0.337172, 0.933968, -0.118401,
		-0.892166, 0.357142, 0.276566,
		36.173058, 30.311701, 45.676792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012817, 30.487133, 45.976624>,  <36.797573, 30.061701, 45.483196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012817, 30.487133, 45.976624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623371, 30.419947, 46.038414>,  <36.389706, 30.379635, 46.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623371, 30.419947, 46.038414>,  <37.012817, 30.487133, 45.976624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623371, 30.419947, 46.038414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161245, -0.027329, 0.986536,
		-0.161482, 0.985414, 0.053691,
		-0.973614, -0.167965, 0.154480,
		36.331287, 30.369556, 46.084759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931896, 31.003721, 46.390373>,  <37.012817, 30.487133, 45.976624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931896, 31.003721, 46.390373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636810, 30.738245, 46.439846>,  <36.459759, 30.578960, 46.469532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636810, 30.738245, 46.439846>,  <36.931896, 31.003721, 46.390373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636810, 30.738245, 46.439846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218609, -0.061501, 0.973872,
		-0.638742, 0.745476, 0.190458,
		-0.737712, -0.663689, 0.123685,
		36.415497, 30.539139, 46.476952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522011, 31.264841, 47.038780>,  <36.931896, 31.003721, 46.390373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522011, 31.264841, 47.038780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 30.873936, 46.955933>,  <36.492947, 30.639393, 46.906223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503845, 30.873936, 46.955933>,  <36.522011, 31.264841, 47.038780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503845, 30.873936, 46.955933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006476, -0.207614, 0.978189,
		-0.998947, 0.043082, 0.015757,
		-0.045414, -0.977262, -0.207117,
		36.490223, 30.580757, 46.893799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130806, 31.010626, 47.585495>,  <36.522011, 31.264841, 47.038780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130806, 31.010626, 47.585495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344475, 30.705008, 47.440777>,  <36.472675, 30.521637, 47.353947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344475, 30.705008, 47.440777>,  <36.130806, 31.010626, 47.585495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344475, 30.705008, 47.440777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179516, -0.315695, 0.931725,
		-0.826098, -0.562647, -0.031476,
		0.534169, -0.764045, -0.361799,
		36.504726, 30.475794, 47.332237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032173, 30.454098, 47.991089>,  <36.130806, 31.010626, 47.585495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032173, 30.454098, 47.991089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364460, 30.362106, 47.788303>,  <36.563831, 30.306911, 47.666630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364460, 30.362106, 47.788303>,  <36.032173, 30.454098, 47.991089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364460, 30.362106, 47.788303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330934, -0.528284, 0.781920,
		-0.447647, -0.817329, -0.362748,
		0.830719, -0.229978, -0.506967,
		36.613674, 30.293112, 47.636211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988598, 29.716516, 47.982986>,  <36.032173, 30.454098, 47.991089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988598, 29.716516, 47.982986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357807, 29.869686, 47.968033>,  <36.579334, 29.961588, 47.959061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357807, 29.869686, 47.968033>,  <35.988598, 29.716516, 47.982986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357807, 29.869686, 47.968033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262056, -0.554582, 0.789788,
		0.281698, -0.738789, -0.612239,
		0.923024, 0.382923, -0.037380,
		36.634716, 29.984564, 47.956818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489849, 29.197701, 48.016544>,  <35.988598, 29.716516, 47.982986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489849, 29.197701, 48.016544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656357, 29.536678, 48.148338>,  <36.756264, 29.740065, 48.227413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656357, 29.536678, 48.148338>,  <36.489849, 29.197701, 48.016544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656357, 29.536678, 48.148338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463023, -0.509439, 0.725315,
		0.782514, -0.149370, -0.604450,
		0.416271, 0.847443, 0.329481,
		36.781239, 29.790911, 48.247181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261646, 29.187801, 48.043079>,  <36.489849, 29.197701, 48.016544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261646, 29.187801, 48.043079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134510, 29.433449, 48.332031>,  <37.058228, 29.580837, 48.505402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134510, 29.433449, 48.332031>,  <37.261646, 29.187801, 48.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134510, 29.433449, 48.332031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598483, -0.460981, 0.655221,
		0.735388, 0.640589, -0.221020,
		-0.317842, 0.614119, 0.722381,
		37.039158, 29.617685, 48.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855213, 29.288383, 48.532242>,  <37.261646, 29.187801, 48.043079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855213, 29.288383, 48.532242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524536, 29.382721, 48.736576>,  <37.326130, 29.439323, 48.859177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524536, 29.382721, 48.736576>,  <37.855213, 29.288383, 48.532242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524536, 29.382721, 48.736576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363681, -0.468772, 0.804978,
		0.429315, 0.851252, 0.301759,
		-0.826695, 0.235845, 0.510835,
		37.276527, 29.453474, 48.889828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159134, 29.611069, 49.094635>,  <37.855213, 29.288383, 48.532242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159134, 29.611069, 49.094635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800262, 29.460674, 49.187340>,  <37.584942, 29.370438, 49.242962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800262, 29.460674, 49.187340>,  <38.159134, 29.611069, 49.094635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800262, 29.460674, 49.187340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419510, -0.561265, 0.713437,
		-0.138165, 0.737303, 0.661283,
		-0.897174, -0.375987, 0.231759,
		37.531109, 29.347878, 49.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149021, 29.541477, 49.855804>,  <38.159134, 29.611069, 49.094635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149021, 29.541477, 49.855804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839458, 29.325943, 49.722698>,  <37.653721, 29.196623, 49.642834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839458, 29.325943, 49.722698>,  <38.149021, 29.541477, 49.855804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839458, 29.325943, 49.722698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145528, -0.662689, 0.734619,
		-0.616357, 0.520097, 0.591272,
		-0.773903, -0.538835, -0.332764,
		37.607288, 29.164293, 49.622868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619011, 29.304117, 50.428501>,  <38.149021, 29.541477, 49.855804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619011, 29.304117, 50.428501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648060, 29.058706, 50.113972>,  <37.665489, 28.911459, 49.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648060, 29.058706, 50.113972>,  <37.619011, 29.304117, 50.428501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648060, 29.058706, 50.113972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085592, -0.781665, 0.617798,
		-0.993680, -0.112171, -0.004255,
		0.072625, -0.613529, -0.786325,
		37.669846, 28.874647, 49.878075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279175, 28.516432, 50.538967>,  <37.619011, 29.304117, 50.428501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279175, 28.516432, 50.538967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576145, 28.486988, 50.272617>,  <37.754326, 28.469322, 50.112808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576145, 28.486988, 50.272617>,  <37.279175, 28.516432, 50.538967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576145, 28.486988, 50.272617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380308, -0.771957, 0.509360,
		-0.551520, -0.631399, -0.545125,
		0.742423, -0.073607, -0.665876,
		37.798870, 28.464907, 50.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080120, 27.878633, 50.437595>,  <37.279175, 28.516432, 50.538967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080120, 27.878633, 50.437595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359539, 27.604210, 50.518940>,  <37.527191, 27.439556, 50.567745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359539, 27.604210, 50.518940>,  <37.080120, 27.878633, 50.437595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359539, 27.604210, 50.518940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134425, 0.404947, 0.904405,
		-0.702826, -0.604432, 0.375098,
		0.698545, -0.686061, 0.203357,
		37.569103, 27.398392, 50.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895035, 27.393805, 50.937702>,  <37.080120, 27.878633, 50.437595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895035, 27.393805, 50.937702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290550, 27.453165, 50.944317>,  <37.527859, 27.488781, 50.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290550, 27.453165, 50.944317>,  <36.895035, 27.393805, 50.937702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290550, 27.453165, 50.944317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095885, 0.546142, 0.832187,
		0.114468, -0.824442, 0.554249,
		0.988789, 0.148403, 0.016535,
		37.587189, 27.497686, 50.949276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188145, 27.149563, 51.537903>,  <36.895035, 27.393805, 50.937702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188145, 27.149563, 51.537903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334743, 27.490822, 51.389408>,  <37.422703, 27.695578, 51.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334743, 27.490822, 51.389408>,  <37.188145, 27.149563, 51.537903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334743, 27.490822, 51.389408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294181, 0.484786, 0.823675,
		0.882688, -0.192663, 0.428653,
		0.366496, 0.853149, -0.371237,
		37.444691, 27.746767, 51.278038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762203, 27.560753, 51.912632>,  <37.188145, 27.149563, 51.537903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762203, 27.560753, 51.912632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539825, 27.833910, 51.723072>,  <37.406399, 27.997805, 51.609337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539825, 27.833910, 51.723072>,  <37.762203, 27.560753, 51.912632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539825, 27.833910, 51.723072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147532, 0.480009, 0.864769,
		0.818023, 0.550678, -0.166109,
		-0.555943, 0.682894, -0.473902,
		37.373043, 28.038778, 51.580902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734673, 28.044306, 52.448181>,  <37.762203, 27.560753, 51.912632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734673, 28.044306, 52.448181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127003, 28.092367, 52.386799>,  <38.362400, 28.121204, 52.349972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127003, 28.092367, 52.386799>,  <37.734673, 28.044306, 52.448181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127003, 28.092367, 52.386799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104067, -0.342839, -0.933612,
		-0.164786, 0.931678, -0.323761,
		0.980824, 0.120153, -0.153452,
		38.421249, 28.128414, 52.340763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793850, 28.503588, 51.918648>,  <37.734673, 28.044306, 52.448181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793850, 28.503588, 51.918648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060043, 28.208387, 51.963341>,  <38.219761, 28.031267, 51.990158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060043, 28.208387, 51.963341>,  <37.793850, 28.503588, 51.918648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060043, 28.208387, 51.963341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237225, -0.351052, -0.905807,
		0.707711, 0.576296, -0.408692,
		0.665485, -0.738001, 0.111731,
		38.259689, 27.986986, 51.996861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154903, 28.450796, 51.324280>,  <37.793850, 28.503588, 51.918648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154903, 28.450796, 51.324280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218544, 28.093512, 51.492496>,  <38.256729, 27.879141, 51.593426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218544, 28.093512, 51.492496>,  <38.154903, 28.450796, 51.324280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218544, 28.093512, 51.492496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142841, -0.442315, -0.885412,
		0.976874, 0.080800, -0.197960,
		0.159102, -0.893213, 0.420545,
		38.266273, 27.825548, 51.618660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648445, 28.111649, 50.895844>,  <38.154903, 28.450796, 51.324280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648445, 28.111649, 50.895844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404663, 27.867682, 51.098450>,  <38.258392, 27.721302, 51.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404663, 27.867682, 51.098450>,  <38.648445, 28.111649, 50.895844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404663, 27.867682, 51.098450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150619, -0.538176, -0.829265,
		0.778381, -0.581693, 0.236130,
		-0.609457, -0.609918, 0.506519,
		38.221825, 27.684706, 51.250404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839035, 27.374220, 50.788704>,  <38.648445, 28.111649, 50.895844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839035, 27.374220, 50.788704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457012, 27.404936, 50.903225>,  <38.227798, 27.423365, 50.971939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457012, 27.404936, 50.903225>,  <38.839035, 27.374220, 50.788704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457012, 27.404936, 50.903225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278891, -0.560035, -0.780116,
		0.100439, -0.824902, 0.556281,
		-0.955056, 0.076788, 0.286307,
		38.170494, 27.427973, 50.989117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505180, 26.593472, 50.933548>,  <38.839035, 27.374220, 50.788704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505180, 26.593472, 50.933548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218880, 26.843210, 50.808403>,  <38.047096, 26.993053, 50.733315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218880, 26.843210, 50.808403>,  <38.505180, 26.593472, 50.933548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218880, 26.843210, 50.808403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234005, -0.636525, -0.734900,
		-0.657982, -0.452794, 0.601696,
		-0.715752, 0.624351, -0.312866,
		38.004154, 27.030514, 50.714546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983761, 26.209663, 50.703014>,  <38.505180, 26.593472, 50.933548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983761, 26.209663, 50.703014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908573, 26.553068, 50.512173>,  <37.863461, 26.759111, 50.397667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908573, 26.553068, 50.512173>,  <37.983761, 26.209663, 50.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908573, 26.553068, 50.512173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110535, -0.501163, -0.858264,
		-0.975935, -0.108591, 0.189098,
		-0.187969, 0.858512, -0.477100,
		37.852184, 26.810621, 50.369041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414089, 26.015425, 50.303890>,  <37.983761, 26.209663, 50.703014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414089, 26.015425, 50.303890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569916, 26.341610, 50.132656>,  <37.663410, 26.537321, 50.029915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569916, 26.341610, 50.132656>,  <37.414089, 26.015425, 50.303890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569916, 26.341610, 50.132656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061774, -0.440625, -0.895564,
		-0.918926, 0.375323, -0.121276,
		0.389562, 0.815465, -0.428087,
		37.686783, 26.586250, 50.004230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001698, 26.099512, 49.824005>,  <37.414089, 26.015425, 50.303890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001698, 26.099512, 49.824005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284973, 26.350506, 49.694553>,  <37.454937, 26.501102, 49.616882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284973, 26.350506, 49.694553>,  <37.001698, 26.099512, 49.824005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284973, 26.350506, 49.694553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115185, -0.349552, -0.929809,
		-0.696565, 0.695756, -0.175272,
		0.708188, 0.627484, -0.323626,
		37.497429, 26.538752, 49.597466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752594, 26.459013, 49.231922>,  <37.001698, 26.099512, 49.824005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752594, 26.459013, 49.231922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151917, 26.437887, 49.222187>,  <37.391510, 26.425211, 49.216347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151917, 26.437887, 49.222187>,  <36.752594, 26.459013, 49.231922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151917, 26.437887, 49.222187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037198, -0.258164, -0.965385,
		0.044703, 0.964657, -0.259691,
		0.998308, -0.052816, -0.024343,
		37.451408, 26.422043, 49.214886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956020, 26.748859, 48.573288>,  <36.752594, 26.459013, 49.231922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956020, 26.748859, 48.573288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284195, 26.546072, 48.679012>,  <37.481102, 26.424400, 48.742447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284195, 26.546072, 48.679012>,  <36.956020, 26.748859, 48.573288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284195, 26.546072, 48.679012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007727, -0.472092, -0.881516,
		0.571680, 0.721189, -0.391241,
		0.820440, -0.506968, 0.264313,
		37.530327, 26.393982, 48.758305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385906, 26.838400, 47.977394>,  <36.956020, 26.748859, 48.573288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385906, 26.838400, 47.977394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505581, 26.528530, 48.200233>,  <37.577385, 26.342607, 48.333939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505581, 26.528530, 48.200233>,  <37.385906, 26.838400, 47.977394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505581, 26.528530, 48.200233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032679, -0.575185, -0.817371,
		0.953635, 0.262753, -0.146773,
		0.299188, -0.774676, 0.557103,
		37.595337, 26.296127, 48.367363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044525, 26.699833, 47.766361>,  <37.385906, 26.838400, 47.977394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044525, 26.699833, 47.766361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988377, 26.353930, 47.959229>,  <37.954689, 26.146387, 48.074951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988377, 26.353930, 47.959229>,  <38.044525, 26.699833, 47.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988377, 26.353930, 47.959229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317259, -0.500597, -0.805449,
		0.937893, 0.039915, 0.344620,
		-0.140367, -0.864760, 0.482170,
		37.946266, 26.094501, 48.103878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662441, 26.417355, 47.777470>,  <38.044525, 26.699833, 47.766361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662441, 26.417355, 47.777470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379555, 26.135939, 47.805393>,  <38.209824, 25.967089, 47.822147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379555, 26.135939, 47.805393>,  <38.662441, 26.417355, 47.777470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379555, 26.135939, 47.805393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297359, -0.385579, -0.873445,
		0.641418, -0.596961, 0.481892,
		-0.707220, -0.703539, 0.069806,
		38.167389, 25.924877, 47.826336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050076, 25.845179, 47.405315>,  <38.662441, 26.417355, 47.777470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050076, 25.845179, 47.405315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658581, 25.763826, 47.394650>,  <38.423683, 25.715015, 47.388252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658581, 25.763826, 47.394650>,  <39.050076, 25.845179, 47.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658581, 25.763826, 47.394650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087375, -0.295778, -0.951252,
		0.185582, -0.933355, 0.307260,
		-0.978736, -0.203382, -0.026661,
		38.364960, 25.702812, 47.386650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011997, 25.336002, 46.893513>,  <39.050076, 25.845179, 47.405315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011997, 25.336002, 46.893513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632683, 25.453588, 46.941406>,  <38.405094, 25.524141, 46.970142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632683, 25.453588, 46.941406>,  <39.011997, 25.336002, 46.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632683, 25.453588, 46.941406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213960, -0.313351, -0.925220,
		-0.234463, -0.902993, 0.360044,
		-0.948287, 0.293965, 0.119735,
		38.348198, 25.541779, 46.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543373, 24.768154, 46.676716>,  <39.011997, 25.336002, 46.893513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543373, 24.768154, 46.676716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317780, 25.098467, 46.675575>,  <38.182423, 25.296654, 46.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317780, 25.098467, 46.675575>,  <38.543373, 24.768154, 46.676716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317780, 25.098467, 46.675575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288010, -0.199936, -0.936523,
		-0.773934, -0.527362, 0.350594,
		-0.563983, 0.825782, -0.002852,
		38.148586, 25.346201, 46.674721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165398, 24.647743, 46.179905>,  <38.543373, 24.768154, 46.676716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165398, 24.647743, 46.179905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078548, 25.035482, 46.225891>,  <38.026440, 25.268126, 46.253483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078548, 25.035482, 46.225891>,  <38.165398, 24.647743, 46.179905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078548, 25.035482, 46.225891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493641, -0.007428, -0.869634,
		-0.842126, -0.245571, 0.480124,
		-0.217123, 0.969350, 0.114968,
		38.013412, 25.326288, 46.260380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478786, 24.685091, 46.000000>,  <38.165398, 24.647743, 46.179905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478786, 24.685091, 46.000000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628563, 25.051081, 45.939850>,  <37.718430, 25.270676, 45.903759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628563, 25.051081, 45.939850>,  <37.478786, 24.685091, 46.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628563, 25.051081, 45.939850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512843, 0.069238, -0.855686,
		-0.772520, 0.397524, 0.495164,
		0.374440, 0.914976, -0.150380,
		37.740894, 25.325573, 45.894737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988972, 24.922020, 45.550652>,  <37.478786, 24.685091, 46.000000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988972, 24.922020, 45.550652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 25.223499, 45.557590>,  <37.409447, 25.404387, 45.561752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 25.223499, 45.557590>,  <36.988972, 24.922020, 45.550652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251770, 25.223499, 45.557590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557196, 0.500945, -0.662259,
		-0.507831, 0.425435, 0.749074,
		0.656993, 0.753697, 0.017345,
		37.448868, 25.449608, 45.562794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525112, 25.460609, 45.632362>,  <36.988972, 24.922020, 45.550652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525112, 25.460609, 45.632362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868488, 25.568300, 45.457733>,  <37.074512, 25.632915, 45.352955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868488, 25.568300, 45.457733>,  <36.525112, 25.460609, 45.632362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868488, 25.568300, 45.457733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511223, 0.518172, -0.685673,
		0.041620, 0.811797, 0.582454,
		0.858440, 0.269226, -0.436576,
		37.126019, 25.649069, 45.326759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526436, 26.185112, 45.387737>,  <36.525112, 25.460609, 45.632362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526436, 26.185112, 45.387737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830334, 26.024250, 45.183365>,  <37.012672, 25.927732, 45.060741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830334, 26.024250, 45.183365>,  <36.526436, 26.185112, 45.387737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830334, 26.024250, 45.183365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348737, 0.411178, -0.842209,
		0.548783, 0.818048, 0.172145,
		0.759750, -0.402156, -0.510931,
		37.058258, 25.903603, 45.030087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878273, 26.731411, 45.049271>,  <36.526436, 26.185112, 45.387737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878273, 26.731411, 45.049271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981148, 26.406839, 44.839344>,  <37.042873, 26.212095, 44.713387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981148, 26.406839, 44.839344>,  <36.878273, 26.731411, 45.049271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981148, 26.406839, 44.839344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252508, 0.467790, -0.847002,
		0.932788, 0.350361, -0.084582,
		0.257190, -0.811431, -0.524817,
		37.058304, 26.163410, 44.681900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145782, 26.960402, 44.372784>,  <36.878273, 26.731411, 45.049271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145782, 26.960402, 44.372784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042515, 26.579403, 44.308170>,  <36.980553, 26.350803, 44.269402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042515, 26.579403, 44.308170>,  <37.145782, 26.960402, 44.372784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042515, 26.579403, 44.308170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324798, 0.243047, -0.914021,
		0.909864, -0.183509, -0.372118,
		-0.258174, -0.952498, -0.161536,
		36.965061, 26.293653, 44.259708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367355, 26.824783, 43.772419>,  <37.145782, 26.960402, 44.372784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367355, 26.824783, 43.772419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102020, 26.526121, 43.792381>,  <36.942822, 26.346924, 43.804359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102020, 26.526121, 43.792381>,  <37.367355, 26.824783, 43.772419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102020, 26.526121, 43.792381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304516, 0.208415, -0.929426,
		0.683562, -0.631717, -0.365618,
		-0.663334, -0.746657, 0.049904,
		36.903019, 26.302124, 43.807354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316139, 26.630432, 43.017178>,  <37.367355, 26.824783, 43.772419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316139, 26.630432, 43.017178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002178, 26.503208, 43.229877>,  <36.813801, 26.426874, 43.357498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002178, 26.503208, 43.229877>,  <37.316139, 26.630432, 43.017178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002178, 26.503208, 43.229877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609298, 0.240231, -0.755675,
		0.112602, -0.917131, -0.382349,
		-0.784906, -0.318056, 0.531755,
		36.766708, 26.407791, 43.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017529, 26.171843, 42.539001>,  <37.316139, 26.630432, 43.017178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017529, 26.171843, 42.539001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726345, 26.270351, 42.794945>,  <36.551636, 26.329456, 42.948513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726345, 26.270351, 42.794945>,  <37.017529, 26.171843, 42.539001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726345, 26.270351, 42.794945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577792, 0.282049, -0.765901,
		-0.369092, -0.927253, -0.063027,
		-0.727962, 0.246271, 0.639861,
		36.507957, 26.344233, 42.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434753, 25.882635, 42.253609>,  <37.017529, 26.171843, 42.539001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434753, 25.882635, 42.253609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306461, 26.178667, 42.490055>,  <36.229485, 26.356285, 42.631924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306461, 26.178667, 42.490055>,  <36.434753, 25.882635, 42.253609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306461, 26.178667, 42.490055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588400, 0.333375, -0.736645,
		-0.742238, -0.584076, 0.328539,
		-0.320730, 0.740079, 0.591114,
		36.210243, 26.400690, 42.667389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656036, 25.877287, 42.317261>,  <36.434753, 25.882635, 42.253609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656036, 25.877287, 42.317261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782646, 26.243696, 42.415817>,  <35.858612, 26.463543, 42.474953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782646, 26.243696, 42.415817>,  <35.656036, 25.877287, 42.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782646, 26.243696, 42.415817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595621, 0.394087, -0.699951,
		-0.738273, 0.074796, 0.670342,
		0.316527, 0.916025, 0.246393,
		35.877605, 26.518503, 42.489735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058727, 26.251406, 42.480080>,  <35.656036, 25.877287, 42.317261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058727, 26.251406, 42.480080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340233, 26.518120, 42.382004>,  <35.509136, 26.678148, 42.323158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340233, 26.518120, 42.382004>,  <35.058727, 26.251406, 42.480080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340233, 26.518120, 42.382004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638625, 0.442550, -0.629530,
		-0.311252, 0.599623, 0.737275,
		0.703761, 0.666785, -0.245189,
		35.551361, 26.718155, 42.308449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701405, 27.009193, 42.370998>,  <35.058727, 26.251406, 42.480080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701405, 27.009193, 42.370998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043774, 27.029467, 42.165154>,  <35.249195, 27.041630, 42.041649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043774, 27.029467, 42.165154>,  <34.701405, 27.009193, 42.370998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043774, 27.029467, 42.165154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449012, 0.566445, -0.691034,
		0.256475, 0.822539, 0.507592,
		0.855926, 0.050682, -0.514609,
		35.300552, 27.044672, 42.010773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686207, 27.646156, 42.178627>,  <34.701405, 27.009193, 42.370998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686207, 27.646156, 42.178627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962280, 27.492092, 41.933578>,  <35.127926, 27.399654, 41.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962280, 27.492092, 41.933578>,  <34.686207, 27.646156, 42.178627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962280, 27.492092, 41.933578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257841, 0.660128, -0.705513,
		0.676141, 0.644891, 0.356299,
		0.690182, -0.385158, -0.612619,
		35.169334, 27.376545, 41.749794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018101, 28.164400, 41.953415>,  <34.686207, 27.646156, 42.178627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018101, 28.164400, 41.953415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087688, 27.893406, 41.667549>,  <35.129440, 27.730810, 41.496029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087688, 27.893406, 41.667549>,  <35.018101, 28.164400, 41.953415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087688, 27.893406, 41.667549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253065, 0.670604, -0.697315,
		0.951679, 0.302167, -0.054785,
		0.173967, -0.677485, -0.714668,
		35.139877, 27.690161, 41.453148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510651, 28.427322, 41.485573>,  <35.018101, 28.164400, 41.953415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510651, 28.427322, 41.485573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368221, 28.132618, 41.255653>,  <35.282764, 27.955795, 41.117702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368221, 28.132618, 41.255653>,  <35.510651, 28.427322, 41.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368221, 28.132618, 41.255653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134556, 0.649133, -0.748679,
		0.924720, -0.189241, -0.330274,
		-0.356073, -0.736759, -0.574802,
		35.261398, 27.911591, 41.083214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920891, 28.351709, 40.911911>,  <35.510651, 28.427322, 41.485573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920891, 28.351709, 40.911911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574780, 28.183283, 40.803101>,  <35.367111, 28.082228, 40.737812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574780, 28.183283, 40.803101>,  <35.920891, 28.351709, 40.911911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574780, 28.183283, 40.803101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051109, 0.465728, -0.883451,
		0.498688, -0.778330, -0.381462,
		-0.865274, -0.421070, -0.272032,
		35.315197, 28.056963, 40.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027740, 28.074774, 40.159042>,  <35.920891, 28.351709, 40.911911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027740, 28.074774, 40.159042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634083, 28.102762, 40.224247>,  <35.397888, 28.119556, 40.263371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634083, 28.102762, 40.224247>,  <36.027740, 28.074774, 40.159042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634083, 28.102762, 40.224247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121099, 0.406484, -0.905597,
		-0.129629, -0.910975, -0.391563,
		-0.984140, 0.069974, 0.163010,
		35.338840, 28.123755, 40.273151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754639, 27.825897, 39.526245>,  <36.027740, 28.074774, 40.159042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754639, 27.825897, 39.526245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473347, 28.038433, 39.715199>,  <35.304573, 28.165955, 39.828571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473347, 28.038433, 39.715199>,  <35.754639, 27.825897, 39.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473347, 28.038433, 39.715199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140394, 0.547567, -0.824900,
		-0.696967, -0.646411, -0.310466,
		-0.703226, 0.531341, 0.472388,
		35.262379, 28.197836, 39.856915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140324, 27.873857, 39.060535>,  <35.754639, 27.825897, 39.526245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140324, 27.873857, 39.060535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076633, 28.175692, 39.315174>,  <35.038422, 28.356792, 39.467957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076633, 28.175692, 39.315174>,  <35.140324, 27.873857, 39.060535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076633, 28.175692, 39.315174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194438, 0.608221, -0.769585,
		-0.967906, -0.246314, 0.049877,
		-0.159223, 0.754584, 0.636593,
		35.028866, 28.402067, 39.506153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538456, 28.159372, 38.808270>,  <35.140324, 27.873857, 39.060535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538456, 28.159372, 38.808270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728970, 28.449026, 39.007782>,  <34.843277, 28.622818, 39.127491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728970, 28.449026, 39.007782>,  <34.538456, 28.159372, 38.808270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728970, 28.449026, 39.007782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230253, 0.650171, -0.724059,
		-0.848611, 0.230009, 0.476398,
		0.476280, 0.724136, 0.498782,
		34.871853, 28.666267, 39.157417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013126, 28.704323, 38.783436>,  <34.538456, 28.159372, 38.808270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013126, 28.704323, 38.783436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363400, 28.864489, 38.891403>,  <34.573563, 28.960588, 38.956184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363400, 28.864489, 38.891403>,  <34.013126, 28.704323, 38.783436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363400, 28.864489, 38.891403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124042, 0.726724, -0.675638,
		-0.466692, 0.558160, 0.686044,
		0.875678, 0.400413, 0.269921,
		34.626102, 28.984613, 38.972378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922611, 29.290331, 38.725266>,  <34.013126, 28.704323, 38.783436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922611, 29.290331, 38.725266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320965, 29.324055, 38.711906>,  <34.559975, 29.344290, 38.703892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320965, 29.324055, 38.711906>,  <33.922611, 29.290331, 38.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320965, 29.324055, 38.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081559, 0.671718, -0.736304,
		-0.039646, 0.735994, 0.675826,
		0.995880, 0.084311, -0.033396,
		34.619728, 29.349348, 38.701889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989567, 29.953213, 38.620525>,  <33.922611, 29.290331, 38.725266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989567, 29.953213, 38.620525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334736, 29.803429, 38.484795>,  <34.541836, 29.713558, 38.403358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334736, 29.803429, 38.484795>,  <33.989567, 29.953213, 38.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334736, 29.803429, 38.484795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060599, 0.589956, -0.805158,
		0.501687, 0.715353, 0.486395,
		0.862924, -0.374462, -0.339323,
		34.593613, 29.691090, 38.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474003, 30.530190, 38.672478>,  <33.989567, 29.953213, 38.620525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474003, 30.530190, 38.672478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614323, 30.280575, 38.393188>,  <34.698513, 30.130806, 38.225616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614323, 30.280575, 38.393188>,  <34.474003, 30.530190, 38.672478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614323, 30.280575, 38.393188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154552, 0.773962, -0.614082,
		0.923609, 0.107509, 0.367952,
		0.350800, -0.624039, -0.698223,
		34.719563, 30.093363, 38.183723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018799, 30.913212, 38.293163>,  <34.474003, 30.530190, 38.672478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018799, 30.913212, 38.293163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955872, 30.606247, 38.044540>,  <34.918118, 30.422068, 37.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955872, 30.606247, 38.044540>,  <35.018799, 30.913212, 38.293163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955872, 30.606247, 38.044540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014770, 0.627491, -0.778484,
		0.987438, -0.131647, -0.087379,
		-0.157315, -0.767414, -0.621553,
		34.908676, 30.376022, 37.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500034, 31.100023, 37.821671>,  <35.018799, 30.913212, 38.293163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500034, 31.100023, 37.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269848, 30.833595, 37.631855>,  <35.131737, 30.673738, 37.517963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269848, 30.833595, 37.631855>,  <35.500034, 31.100023, 37.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269848, 30.833595, 37.631855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099880, 0.633143, -0.767563,
		0.811705, -0.394308, -0.430878,
		-0.575464, -0.666072, -0.474543,
		35.097210, 30.633774, 37.489491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687847, 30.991249, 37.068134>,  <35.500034, 31.100023, 37.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687847, 30.991249, 37.068134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301270, 30.891960, 37.094559>,  <35.069321, 30.832388, 37.110413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301270, 30.891960, 37.094559>,  <35.687847, 30.991249, 37.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301270, 30.891960, 37.094559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221549, 0.675413, -0.703373,
		0.129974, -0.694410, -0.707744,
		-0.966448, -0.248220, 0.066060,
		35.011333, 30.817493, 37.114376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451363, 30.857161, 37.085464>,  <35.687847, 30.991249, 37.068134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451363, 30.857161, 37.085464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709343, 31.014198, 36.823196>,  <36.864132, 31.108421, 36.665836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709343, 31.014198, 36.823196>,  <36.451363, 30.857161, 37.085464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709343, 31.014198, 36.823196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735967, -0.087945, 0.671282,
		0.205880, -0.915496, -0.345658,
		0.644955, 0.392596, -0.655669,
		36.902828, 31.131977, 36.626495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974377, 30.367508, 36.767860>,  <36.451363, 30.857161, 37.085464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974377, 30.367508, 36.767860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081154, 30.742832, 36.855778>,  <37.145222, 30.968027, 36.908527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081154, 30.742832, 36.855778>,  <36.974377, 30.367508, 36.767860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081154, 30.742832, 36.855778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648639, -0.343614, 0.679115,
		0.712747, -0.038717, -0.700351,
		0.266944, 0.938313, 0.219796,
		37.161236, 31.024326, 36.921715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797119, 30.449646, 36.667656>,  <36.974377, 30.367508, 36.767860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797119, 30.449646, 36.667656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675495, 30.739180, 36.915401>,  <37.602520, 30.912899, 37.064049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675495, 30.739180, 36.915401>,  <37.797119, 30.449646, 36.667656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675495, 30.739180, 36.915401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641260, -0.325288, 0.694963,
		0.704509, 0.608484, -0.365258,
		-0.304059, 0.723833, 0.619365,
		37.584278, 30.956329, 37.101212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377365, 30.804224, 36.888256>,  <37.797119, 30.449646, 36.667656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377365, 30.804224, 36.888256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111267, 30.895386, 37.172653>,  <37.951607, 30.950083, 37.343292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111267, 30.895386, 37.172653>,  <38.377365, 30.804224, 36.888256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111267, 30.895386, 37.172653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650640, -0.290126, 0.701779,
		0.366215, 0.929455, 0.044722,
		-0.665247, 0.227904, 0.710989,
		37.911694, 30.963757, 37.385948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734707, 31.083162, 37.454727>,  <38.377365, 30.804224, 36.888256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734707, 31.083162, 37.454727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379745, 30.989824, 37.613754>,  <38.166767, 30.933821, 37.709171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379745, 30.989824, 37.613754>,  <38.734707, 31.083162, 37.454727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379745, 30.989824, 37.613754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448284, -0.235746, 0.862244,
		-0.107477, 0.943384, 0.313808,
		-0.887406, -0.233346, 0.397567,
		38.113525, 30.919821, 37.733025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747528, 31.304762, 38.137276>,  <38.734707, 31.083162, 37.454727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747528, 31.304762, 38.137276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461826, 31.025105, 38.124420>,  <38.290405, 30.857309, 38.116707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461826, 31.025105, 38.124420>,  <38.747528, 31.304762, 38.137276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461826, 31.025105, 38.124420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388092, -0.433863, 0.813110,
		-0.582425, 0.568298, 0.581222,
		-0.714259, -0.699143, -0.032141,
		38.247547, 30.815361, 38.114777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504402, 31.217993, 38.843025>,  <38.747528, 31.304762, 38.137276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504402, 31.217993, 38.843025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409615, 30.882000, 38.647770>,  <38.352741, 30.680405, 38.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409615, 30.882000, 38.647770>,  <38.504402, 31.217993, 38.843025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409615, 30.882000, 38.647770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294063, -0.540893, 0.788011,
		-0.925945, 0.043191, 0.375181,
		-0.236968, -0.839982, -0.488136,
		38.338524, 30.630005, 38.501328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107452, 30.823400, 39.402542>,  <38.504402, 31.217993, 38.843025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107452, 30.823400, 39.402542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215263, 30.540442, 39.141178>,  <38.279949, 30.370667, 38.984360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215263, 30.540442, 39.141178>,  <38.107452, 30.823400, 39.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215263, 30.540442, 39.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238622, -0.608300, 0.756988,
		-0.932960, -0.359948, 0.004846,
		0.269528, -0.707396, -0.653411,
		38.296124, 30.328222, 38.945156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839401, 30.142633, 39.674572>,  <38.107452, 30.823400, 39.402542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839401, 30.142633, 39.674572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110279, 30.052996, 39.394234>,  <38.272808, 29.999214, 39.226028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110279, 30.052996, 39.394234>,  <37.839401, 30.142633, 39.674572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110279, 30.052996, 39.394234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298091, -0.787276, 0.539758,
		-0.672716, -0.574438, -0.466341,
		0.677197, -0.224092, -0.700848,
		38.313438, 29.985767, 39.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743866, 29.464787, 39.586426>,  <37.839401, 30.142633, 39.674572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743866, 29.464787, 39.586426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096497, 29.486485, 39.398861>,  <38.308075, 29.499502, 39.286324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096497, 29.486485, 39.398861>,  <37.743866, 29.464787, 39.586426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096497, 29.486485, 39.398861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260309, -0.884541, 0.387075,
		-0.393771, -0.463298, -0.793913,
		0.881580, 0.054244, -0.468907,
		38.360970, 29.502758, 39.258190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859722, 28.759094, 39.354313>,  <37.743866, 29.464787, 39.586426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859722, 28.759094, 39.354313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208344, 28.953646, 39.379093>,  <38.417515, 29.070377, 39.393959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208344, 28.953646, 39.379093>,  <37.859722, 28.759094, 39.354313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208344, 28.953646, 39.379093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394960, -0.771303, 0.499098,
		0.290531, -0.410522, -0.864328,
		0.871550, 0.486378, 0.061948,
		38.469807, 29.099560, 39.397678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330921, 28.305058, 39.114929>,  <37.859722, 28.759094, 39.354313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330921, 28.305058, 39.114929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527321, 28.565651, 39.346272>,  <38.645161, 28.722006, 39.485077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527321, 28.565651, 39.346272>,  <38.330921, 28.305058, 39.114929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527321, 28.565651, 39.346272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327226, -0.753197, 0.570630,
		0.807371, -0.090923, -0.582997,
		0.490994, 0.651481, 0.578357,
		38.674618, 28.761095, 39.519779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946346, 27.992323, 39.137341>,  <38.330921, 28.305058, 39.114929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946346, 27.992323, 39.137341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945671, 28.257507, 39.436802>,  <38.945267, 28.416618, 39.616478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945671, 28.257507, 39.436802>,  <38.946346, 27.992323, 39.137341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945671, 28.257507, 39.436802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366459, -0.696162, 0.617305,
		0.930433, 0.275390, -0.241775,
		-0.001685, 0.662962, 0.748651,
		38.945164, 28.456396, 39.661396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726414, 28.022184, 39.453983>,  <38.946346, 27.992323, 39.137341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726414, 28.022184, 39.453983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465317, 28.155451, 39.726135>,  <39.308659, 28.235411, 39.889427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465317, 28.155451, 39.726135>,  <39.726414, 28.022184, 39.453983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465317, 28.155451, 39.726135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413906, -0.595372, 0.688632,
		0.634510, 0.731117, 0.250728,
		-0.652747, 0.333167, 0.680383,
		39.269493, 28.255402, 39.930252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171253, 27.985233, 40.045437>,  <39.726414, 28.022184, 39.453983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171253, 27.985233, 40.045437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795525, 28.013161, 40.179779>,  <39.570087, 28.029917, 40.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795525, 28.013161, 40.179779>,  <40.171253, 27.985233, 40.045437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795525, 28.013161, 40.179779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203935, -0.673614, 0.710391,
		0.275838, 0.735778, 0.618501,
		-0.939321, 0.069818, 0.335859,
		39.513729, 28.034105, 40.280537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197552, 27.994526, 40.737186>,  <40.171253, 27.985233, 40.045437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197552, 27.994526, 40.737186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808929, 27.902037, 40.716705>,  <39.575756, 27.846542, 40.704418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808929, 27.902037, 40.716705>,  <40.197552, 27.994526, 40.737186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808929, 27.902037, 40.716705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041369, -0.378581, 0.924643,
		-0.233183, 0.896221, 0.377376,
		-0.971552, -0.231223, -0.051203,
		39.517464, 27.832670, 40.701344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855995, 28.206524, 41.422470>,  <40.197552, 27.994526, 40.737186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855995, 28.206524, 41.422470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613831, 27.935959, 41.254688>,  <39.468533, 27.773621, 41.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613831, 27.935959, 41.254688>,  <39.855995, 28.206524, 41.422470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613831, 27.935959, 41.254688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014067, -0.517834, 0.855365,
		-0.795786, 0.523751, 0.303989,
		-0.605415, -0.676411, -0.419453,
		39.432205, 27.733036, 41.128853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236469, 28.214968, 41.752384>,  <39.855995, 28.206524, 41.422470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236469, 28.214968, 41.752384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283657, 27.852419, 41.590115>,  <39.311970, 27.634890, 41.492752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283657, 27.852419, 41.590115>,  <39.236469, 28.214968, 41.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283657, 27.852419, 41.590115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066560, -0.414822, 0.907465,
		-0.990784, -0.080052, -0.109265,
		0.117970, -0.906374, -0.405671,
		39.319050, 27.580507, 41.468414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890701, 27.831135, 42.223610>,  <39.236469, 28.214968, 41.752384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890701, 27.831135, 42.223610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083225, 27.551865, 42.011616>,  <39.198742, 27.384302, 41.884418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083225, 27.551865, 42.011616>,  <38.890701, 27.831135, 42.223610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083225, 27.551865, 42.011616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138286, -0.536578, 0.832443,
		-0.865572, -0.473955, -0.161714,
		0.481312, -0.698177, -0.529988,
		39.227619, 27.342411, 41.852619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662266, 27.319534, 42.571388>,  <38.890701, 27.831135, 42.223610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662266, 27.319534, 42.571388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985401, 27.177015, 42.383583>,  <39.179283, 27.091505, 42.270901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985401, 27.177015, 42.383583>,  <38.662266, 27.319534, 42.571388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985401, 27.177015, 42.383583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245093, -0.521391, 0.817362,
		-0.536026, -0.775373, -0.333875,
		0.807840, -0.356297, -0.469518,
		39.227753, 27.070126, 42.242729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749454, 26.612371, 42.850986>,  <38.662266, 27.319534, 42.571388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749454, 26.612371, 42.850986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096741, 26.711685, 42.679142>,  <39.305111, 26.771273, 42.576035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096741, 26.711685, 42.679142>,  <38.749454, 26.612371, 42.850986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096741, 26.711685, 42.679142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492318, -0.539036, 0.683420,
		-0.061894, -0.804857, -0.590232,
		0.868212, 0.248283, -0.429609,
		39.357204, 26.786169, 42.550259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180805, 25.915026, 42.826504>,  <38.749454, 26.612371, 42.850986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180805, 25.915026, 42.826504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388710, 26.256710, 42.821148>,  <39.513451, 26.461720, 42.817936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388710, 26.256710, 42.821148>,  <39.180805, 25.915026, 42.826504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388710, 26.256710, 42.821148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520399, -0.304142, 0.797924,
		0.677523, -0.421693, -0.602610,
		0.519758, 0.854209, -0.013386,
		39.544636, 26.512972, 42.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708534, 25.734556, 43.172283>,  <39.180805, 25.915026, 42.826504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708534, 25.734556, 43.172283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731274, 26.132671, 43.203701>,  <39.744919, 26.371540, 43.222549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731274, 26.132671, 43.203701>,  <39.708534, 25.734556, 43.172283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731274, 26.132671, 43.203701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359563, -0.093801, 0.928394,
		0.931388, -0.024537, -0.363201,
		0.056848, 0.995289, 0.078542,
		39.748329, 26.431257, 43.227264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379604, 25.900665, 43.501381>,  <39.708534, 25.734556, 43.172283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379604, 25.900665, 43.501381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137321, 26.211880, 43.568043>,  <39.991951, 26.398609, 43.608040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137321, 26.211880, 43.568043>,  <40.379604, 25.900665, 43.501381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137321, 26.211880, 43.568043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235894, -0.024442, 0.971472,
		0.759915, 0.627742, -0.168729,
		-0.605709, 0.778038, 0.166654,
		39.955608, 26.445292, 43.618038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701401, 26.287666, 44.003582>,  <40.379604, 25.900665, 43.501381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701401, 26.287666, 44.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335468, 26.447083, 44.029648>,  <40.115910, 26.542732, 44.045288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335468, 26.447083, 44.029648>,  <40.701401, 26.287666, 44.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335468, 26.447083, 44.029648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098926, 0.064728, 0.992987,
		0.391530, 0.914863, -0.098641,
		-0.914832, 0.398542, 0.065161,
		40.061020, 26.566645, 44.049194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739147, 27.052734, 44.267212>,  <40.701401, 26.287666, 44.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739147, 27.052734, 44.267212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377323, 26.910172, 44.360798>,  <40.160229, 26.824635, 44.416950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377323, 26.910172, 44.360798>,  <40.739147, 27.052734, 44.267212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377323, 26.910172, 44.360798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168038, 0.206315, 0.963949,
		-0.391829, 0.911267, -0.126735,
		-0.904562, -0.356407, 0.233968,
		40.105953, 26.803249, 44.430988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482204, 27.510551, 44.799217>,  <40.739147, 27.052734, 44.267212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482204, 27.510551, 44.799217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254471, 27.183559, 44.834057>,  <40.117832, 26.987364, 44.854961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254471, 27.183559, 44.834057>,  <40.482204, 27.510551, 44.799217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254471, 27.183559, 44.834057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078306, 0.051545, 0.995596,
		-0.818368, 0.573648, 0.034667,
		-0.569335, -0.817479, 0.087102,
		40.083672, 26.938316, 44.860188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975975, 27.689960, 45.248531>,  <40.482204, 27.510551, 44.799217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975975, 27.689960, 45.248531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999733, 27.292658, 45.288364>,  <40.013988, 27.054277, 45.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999733, 27.292658, 45.288364>,  <39.975975, 27.689960, 45.248531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999733, 27.292658, 45.288364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119767, 0.091947, 0.988535,
		-0.991024, -0.070641, -0.113498,
		0.059395, -0.993255, 0.099582,
		40.017551, 26.994680, 45.318237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635887, 27.492182, 45.937424>,  <39.975975, 27.689960, 45.248531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635887, 27.492182, 45.937424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858185, 27.171646, 45.848877>,  <39.991562, 26.979324, 45.795750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858185, 27.171646, 45.848877>,  <39.635887, 27.492182, 45.937424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858185, 27.171646, 45.848877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217927, -0.116537, 0.968982,
		-0.802281, -0.586749, 0.109869,
		0.555746, -0.801340, -0.221364,
		40.024910, 26.931244, 45.782467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289448, 26.864452, 46.358627>,  <39.635887, 27.492182, 45.937424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289448, 26.864452, 46.358627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670383, 26.785301, 46.265774>,  <39.898945, 26.737810, 46.210064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670383, 26.785301, 46.265774>,  <39.289448, 26.864452, 46.358627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670383, 26.785301, 46.265774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194318, -0.193033, 0.961758,
		-0.235125, -0.961031, -0.145381,
		0.952343, -0.197884, -0.232132,
		39.956085, 26.725937, 46.196133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443813, 26.240042, 46.736626>,  <39.289448, 26.864452, 46.358627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443813, 26.240042, 46.736626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796093, 26.409883, 46.652645>,  <40.007462, 26.511787, 46.602257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796093, 26.409883, 46.652645>,  <39.443813, 26.240042, 46.736626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796093, 26.409883, 46.652645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318927, -0.203821, 0.925604,
		0.350221, -0.882139, -0.314922,
		0.880699, 0.424603, -0.209956,
		40.060303, 26.537264, 46.589657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938934, 25.799110, 47.138145>,  <39.443813, 26.240042, 46.736626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938934, 25.799110, 47.138145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158688, 26.120083, 47.044956>,  <40.290539, 26.312666, 46.989044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158688, 26.120083, 47.044956>,  <39.938934, 25.799110, 47.138145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158688, 26.120083, 47.044956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567940, -0.154100, 0.808515,
		0.612878, -0.576502, -0.540394,
		0.549386, 0.802433, -0.232974,
		40.323502, 26.360813, 46.975063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697552, 25.505053, 47.018711>,  <39.938934, 25.799110, 47.138145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697552, 25.505053, 47.018711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684589, 25.901342, 47.071503>,  <40.676811, 26.139116, 47.103176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684589, 25.901342, 47.071503>,  <40.697552, 25.505053, 47.018711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684589, 25.901342, 47.071503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375489, -0.110307, 0.920239,
		0.926260, 0.079374, -0.368432,
		-0.032402, 0.990723, 0.131977,
		40.674870, 26.198559, 47.111095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371399, 25.750433, 47.155502>,  <40.697552, 25.505053, 47.018711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371399, 25.750433, 47.155502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130196, 26.022316, 47.322540>,  <40.985474, 26.185446, 47.422764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130196, 26.022316, 47.322540>,  <41.371399, 25.750433, 47.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130196, 26.022316, 47.322540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581587, 0.016278, 0.813321,
		0.546021, 0.733305, -0.405123,
		-0.603007, 0.679705, 0.417593,
		40.949295, 26.226227, 47.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677937, 26.050903, 47.654068>,  <41.371399, 25.750433, 47.155502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677937, 26.050903, 47.654068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337685, 26.212799, 47.788307>,  <41.133533, 26.309937, 47.868851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337685, 26.212799, 47.788307>,  <41.677937, 26.050903, 47.654068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337685, 26.212799, 47.788307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444342, 0.212179, 0.870368,
		0.281064, 0.889476, -0.360326,
		-0.850625, 0.404737, 0.335595,
		41.082497, 26.334221, 47.888985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835968, 26.764795, 47.996883>,  <41.677937, 26.050903, 47.654068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835968, 26.764795, 47.996883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484604, 26.641846, 48.143265>,  <41.273785, 26.568077, 48.231094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484604, 26.641846, 48.143265>,  <41.835968, 26.764795, 47.996883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484604, 26.641846, 48.143265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351346, 0.103732, 0.930481,
		-0.323965, 0.945919, 0.016875,
		-0.878409, -0.307372, 0.365950,
		41.221081, 26.549635, 48.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489891, 27.310432, 48.467129>,  <41.835968, 26.764795, 47.996883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489891, 27.310432, 48.467129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363609, 26.944345, 48.567299>,  <41.287842, 26.724693, 48.627403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363609, 26.944345, 48.567299>,  <41.489891, 27.310432, 48.467129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363609, 26.944345, 48.567299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450046, 0.087921, 0.888667,
		-0.835339, 0.393256, 0.384133,
		-0.315700, -0.915216, 0.250427,
		41.268898, 26.669781, 48.642426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014034, 27.286386, 49.094158>,  <41.489891, 27.310432, 48.467129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014034, 27.286386, 49.094158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241428, 26.962856, 49.033989>,  <41.377865, 26.768738, 48.997887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241428, 26.962856, 49.033989>,  <41.014034, 27.286386, 49.094158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241428, 26.962856, 49.033989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419530, 0.127730, 0.898710,
		-0.707686, -0.574009, 0.411940,
		0.568484, -0.808826, -0.150421,
		41.411972, 26.720209, 48.988861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632595, 27.491577, 49.762775>,  <41.014034, 27.286386, 49.094158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632595, 27.491577, 49.762775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765984, 27.867678, 49.735287>,  <40.846016, 28.093338, 49.718792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765984, 27.867678, 49.735287>,  <40.632595, 27.491577, 49.762775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765984, 27.867678, 49.735287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658284, 0.180042, -0.730923,
		-0.674878, 0.288980, 0.678992,
		0.333469, 0.940253, -0.068725,
		40.866024, 28.149754, 49.714668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073986, 27.857449, 49.543446>,  <40.632595, 27.491577, 49.762775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073986, 27.857449, 49.543446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370358, 28.111456, 49.456009>,  <40.548180, 28.263861, 49.403545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370358, 28.111456, 49.456009>,  <40.073986, 27.857449, 49.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370358, 28.111456, 49.456009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542176, 0.373497, -0.752692,
		-0.396328, 0.676205, 0.621024,
		0.740925, 0.635017, -0.218595,
		40.592636, 28.301962, 49.390430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739681, 28.443159, 49.438885>,  <40.073986, 27.857449, 49.543446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739681, 28.443159, 49.438885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087357, 28.526968, 49.259724>,  <40.295963, 28.577253, 49.152229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087357, 28.526968, 49.259724>,  <39.739681, 28.443159, 49.438885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087357, 28.526968, 49.259724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491783, 0.460802, -0.738790,
		0.051598, 0.862416, 0.503564,
		0.869187, 0.209524, -0.447898,
		40.348114, 28.589825, 49.125355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629028, 29.094574, 49.165455>,  <39.739681, 28.443159, 49.438885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629028, 29.094574, 49.165455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977329, 28.999031, 48.993530>,  <40.186310, 28.941706, 48.890377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977329, 28.999031, 48.993530>,  <39.629028, 29.094574, 49.165455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977329, 28.999031, 48.993530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220083, 0.592339, -0.775047,
		0.439717, 0.769469, 0.463214,
		0.870754, -0.238856, -0.429809,
		40.238556, 28.927374, 48.864586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925388, 29.828234, 48.841045>,  <39.629028, 29.094574, 49.165455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925388, 29.828234, 48.841045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039764, 29.487007, 48.666454>,  <40.108391, 29.282270, 48.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039764, 29.487007, 48.666454>,  <39.925388, 29.828234, 48.841045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039764, 29.487007, 48.666454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161860, 0.405958, -0.899444,
		0.944480, 0.327832, -0.021999,
		0.285936, -0.853068, -0.436482,
		40.125546, 29.231087, 48.535511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360909, 30.008608, 48.220413>,  <39.925388, 29.828234, 48.841045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360909, 30.008608, 48.220413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212952, 29.640924, 48.166397>,  <40.124180, 29.420315, 48.133987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212952, 29.640924, 48.166397>,  <40.360909, 30.008608, 48.220413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212952, 29.640924, 48.166397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340342, 0.269306, -0.900912,
		0.864494, -0.287276, -0.412459,
		-0.369888, -0.919210, -0.135041,
		40.101986, 29.365162, 48.125885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558109, 29.816353, 47.604717>,  <40.360909, 30.008608, 48.220413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558109, 29.816353, 47.604717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240276, 29.581499, 47.666569>,  <40.049576, 29.440588, 47.703682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240276, 29.581499, 47.666569>,  <40.558109, 29.816353, 47.604717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240276, 29.581499, 47.666569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277518, 0.124688, -0.952595,
		0.540020, -0.799829, -0.262015,
		-0.794583, -0.587134, 0.154633,
		40.001900, 29.405359, 47.712959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490051, 29.545347, 46.979321>,  <40.558109, 29.816353, 47.604717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490051, 29.545347, 46.979321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140636, 29.472330, 47.159813>,  <39.930988, 29.428520, 47.268108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140636, 29.472330, 47.159813>,  <40.490051, 29.545347, 46.979321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140636, 29.472330, 47.159813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469766, 0.073375, -0.879736,
		0.127477, -0.980457, -0.149847,
		-0.873539, -0.182539, 0.451231,
		39.878574, 29.417568, 47.295181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302753, 29.045187, 46.559864>,  <40.490051, 29.545347, 46.979321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302753, 29.045187, 46.559864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005531, 29.221260, 46.761497>,  <39.827198, 29.326904, 46.882477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005531, 29.221260, 46.761497>,  <40.302753, 29.045187, 46.559864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005531, 29.221260, 46.761497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485478, 0.163897, -0.858748,
		-0.460626, -0.882822, 0.091915,
		-0.743058, 0.440185, 0.504086,
		39.782616, 29.353315, 46.912724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613750, 28.763838, 46.349743>,  <40.302753, 29.045187, 46.559864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613750, 28.763838, 46.349743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568966, 29.132513, 46.498314>,  <39.542095, 29.353718, 46.587456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568966, 29.132513, 46.498314>,  <39.613750, 28.763838, 46.349743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568966, 29.132513, 46.498314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378385, 0.306073, -0.873581,
		-0.918852, -0.238351, 0.314484,
		-0.111964, 0.921688, 0.371424,
		39.535378, 29.409019, 46.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131607, 28.993450, 45.951588>,  <39.613750, 28.763838, 46.349743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131607, 28.993450, 45.951588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229713, 29.337898, 46.129719>,  <39.288578, 29.544567, 46.236599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229713, 29.337898, 46.129719>,  <39.131607, 28.993450, 45.951588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229713, 29.337898, 46.129719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501003, 0.505852, -0.702218,
		-0.829964, -0.050879, 0.555492,
		0.245269, 0.861119, 0.445329,
		39.303295, 29.596233, 46.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592392, 29.416687, 45.899906>,  <39.131607, 28.993450, 45.951588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592392, 29.416687, 45.899906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867405, 29.692696, 45.990387>,  <39.032413, 29.858301, 46.044674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867405, 29.692696, 45.990387>,  <38.592392, 29.416687, 45.899906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867405, 29.692696, 45.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362040, 0.595761, -0.716935,
		-0.629462, 0.411024, 0.659422,
		0.687535, 0.690021, 0.226202,
		39.073666, 29.899702, 46.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193203, 30.062439, 45.928570>,  <38.592392, 29.416687, 45.899906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193203, 30.062439, 45.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580112, 30.142298, 45.865936>,  <38.812260, 30.190212, 45.828358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580112, 30.142298, 45.865936>,  <38.193203, 30.062439, 45.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580112, 30.142298, 45.865936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235880, 0.480204, -0.844846,
		-0.093478, 0.854134, 0.511583,
		0.967276, 0.199646, -0.156585,
		38.870296, 30.202192, 45.818962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266716, 30.828751, 45.789814>,  <38.193203, 30.062439, 45.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266716, 30.828751, 45.789814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594868, 30.642784, 45.656651>,  <38.791759, 30.531204, 45.576752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594868, 30.642784, 45.656651>,  <38.266716, 30.828751, 45.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594868, 30.642784, 45.656651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236020, 0.254979, -0.937699,
		0.520837, 0.847843, 0.099450,
		0.820380, -0.464917, -0.332910,
		38.840981, 30.503309, 45.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486183, 31.322624, 45.301846>,  <38.266716, 30.828751, 45.789814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486183, 31.322624, 45.301846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711620, 31.000557, 45.228020>,  <38.846882, 30.807318, 45.183723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711620, 31.000557, 45.228020>,  <38.486183, 31.322624, 45.301846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711620, 31.000557, 45.228020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142817, 0.315045, -0.938270,
		0.813610, 0.502447, 0.292550,
		0.563597, -0.805167, -0.184566,
		38.880699, 30.759007, 45.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011490, 31.463398, 44.883926>,  <38.486183, 31.322624, 45.301846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011490, 31.463398, 44.883926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010319, 31.070702, 44.807842>,  <39.009617, 30.835085, 44.762192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010319, 31.070702, 44.807842>,  <39.011490, 31.463398, 44.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010319, 31.070702, 44.807842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136471, 0.188038, -0.972634,
		0.990640, -0.028809, 0.133428,
		-0.002932, -0.981739, -0.190209,
		39.009438, 30.776180, 44.750778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585751, 31.246887, 44.475800>,  <39.011490, 31.463398, 44.883926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585751, 31.246887, 44.475800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295532, 30.983915, 44.394440>,  <39.121403, 30.826132, 44.345623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295532, 30.983915, 44.394440>,  <39.585751, 31.246887, 44.475800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295532, 30.983915, 44.394440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185194, 0.098132, -0.977790,
		0.662787, -0.747099, 0.050553,
		-0.725545, -0.657429, -0.203399,
		39.077869, 30.786686, 44.333420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834904, 30.916300, 43.888538>,  <39.585751, 31.246887, 44.475800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834904, 30.916300, 43.888538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451527, 30.804569, 43.911720>,  <39.221500, 30.737532, 43.925629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451527, 30.804569, 43.911720>,  <39.834904, 30.916300, 43.888538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451527, 30.804569, 43.911720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081192, 0.072349, -0.994069,
		0.273477, -0.957466, -0.092022,
		-0.958446, -0.279326, 0.057953,
		39.163994, 30.720772, 43.929108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647099, 30.236509, 43.604340>,  <39.834904, 30.916300, 43.888538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647099, 30.236509, 43.604340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305313, 30.438177, 43.554214>,  <39.100243, 30.559177, 43.524139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305313, 30.438177, 43.554214>,  <39.647099, 30.236509, 43.604340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305313, 30.438177, 43.554214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028725, -0.195003, -0.980382,
		-0.518717, -0.841300, 0.152141,
		-0.854463, 0.504171, -0.125317,
		39.048973, 30.589428, 43.516621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289921, 29.827333, 43.070248>,  <39.647099, 30.236509, 43.604340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289921, 29.827333, 43.070248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090382, 30.172947, 43.097359>,  <38.970657, 30.380314, 43.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090382, 30.172947, 43.097359>,  <39.289921, 29.827333, 43.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090382, 30.172947, 43.097359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083531, 0.029903, -0.996056,
		-0.862652, -0.502546, 0.057256,
		-0.498852, 0.864033, 0.067774,
		38.940727, 30.432158, 43.117691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765507, 29.804008, 42.673737>,  <39.289921, 29.827333, 43.070248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765507, 29.804008, 42.673737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801708, 30.201210, 42.704067>,  <38.823429, 30.439531, 42.722263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801708, 30.201210, 42.704067>,  <38.765507, 29.804008, 42.673737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801708, 30.201210, 42.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003904, 0.076489, -0.997063,
		-0.995888, 0.089942, 0.010799,
		0.090504, 0.993006, 0.075823,
		38.828857, 30.499111, 42.726814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482616, 30.027361, 42.010479>,  <38.765507, 29.804008, 42.673737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482616, 30.027361, 42.010479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655518, 30.360703, 42.148277>,  <38.759258, 30.560707, 42.230957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655518, 30.360703, 42.148277>,  <38.482616, 30.027361, 42.010479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655518, 30.360703, 42.148277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206986, 0.280134, -0.937380,
		-0.877674, 0.476494, -0.051402,
		0.432256, 0.833354, 0.344494,
		38.785194, 30.610708, 42.251625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273952, 30.605024, 41.603832>,  <38.482616, 30.027361, 42.010479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273952, 30.605024, 41.603832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628143, 30.706617, 41.759487>,  <38.840656, 30.767574, 41.852879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628143, 30.706617, 41.759487>,  <38.273952, 30.605024, 41.603832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628143, 30.706617, 41.759487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309076, 0.303420, -0.901337,
		-0.346997, 0.918383, 0.190171,
		0.885475, 0.253984, 0.389136,
		38.893787, 30.782812, 41.876228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401031, 31.365772, 41.457649>,  <38.273952, 30.605024, 41.603832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401031, 31.365772, 41.457649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747116, 31.175682, 41.521618>,  <38.954765, 31.061628, 41.559998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747116, 31.175682, 41.521618>,  <38.401031, 31.365772, 41.457649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747116, 31.175682, 41.521618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306959, 0.249813, -0.918352,
		0.396474, 0.843655, 0.362015,
		0.865208, -0.475226, 0.159923,
		39.006680, 31.033113, 41.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800358, 31.800945, 41.238136>,  <38.401031, 31.365772, 41.457649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800358, 31.800945, 41.238136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023209, 31.468775, 41.237545>,  <39.156921, 31.269472, 41.237190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023209, 31.468775, 41.237545>,  <38.800358, 31.800945, 41.238136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023209, 31.468775, 41.237545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451716, 0.304550, -0.838571,
		0.696821, 0.466523, 0.544790,
		0.557129, -0.830425, -0.001481,
		39.190346, 31.219648, 41.237103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523472, 31.930771, 41.111298>,  <38.800358, 31.800945, 41.238136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523472, 31.930771, 41.111298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508987, 31.539011, 41.031834>,  <39.500298, 31.303955, 40.984154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508987, 31.539011, 41.031834>,  <39.523472, 31.930771, 41.111298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508987, 31.539011, 41.031834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532980, 0.149231, -0.832864,
		0.845353, -0.136039, 0.516596,
		-0.036210, -0.979399, -0.198659,
		39.498123, 31.245192, 40.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171486, 31.815102, 40.963097>,  <39.523472, 31.930771, 41.111298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171486, 31.815102, 40.963097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971462, 31.508816, 40.801296>,  <39.851448, 31.325045, 40.704216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971462, 31.508816, 40.801296>,  <40.171486, 31.815102, 40.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971462, 31.508816, 40.801296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566477, 0.064071, -0.821583,
		0.655015, -0.639981, 0.401720,
		-0.500059, -0.765715, -0.404502,
		39.821445, 31.279100, 40.679947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669792, 31.470646, 40.619656>,  <40.171486, 31.815102, 40.963097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669792, 31.470646, 40.619656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333138, 31.331381, 40.454521>,  <40.131145, 31.247822, 40.355442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333138, 31.331381, 40.454521>,  <40.669792, 31.470646, 40.619656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333138, 31.331381, 40.454521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456008, -0.048616, -0.888647,
		0.289323, -0.936173, 0.199682,
		-0.841635, -0.348163, -0.412836,
		40.080647, 31.226933, 40.330669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908520, 31.092829, 40.088516>,  <40.669792, 31.470646, 40.619656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908520, 31.092829, 40.088516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521935, 31.139666, 39.997089>,  <40.289986, 31.167768, 39.942234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521935, 31.139666, 39.997089>,  <40.908520, 31.092829, 40.088516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521935, 31.139666, 39.997089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238602, 0.080212, -0.967799,
		-0.094990, -0.989876, -0.105461,
		-0.966460, 0.117095, -0.228567,
		40.231995, 31.174793, 39.928520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757496, 30.642092, 39.509991>,  <40.908520, 31.092829, 40.088516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757496, 30.642092, 39.509991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496952, 30.945423, 39.520390>,  <40.340626, 31.127422, 39.526630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496952, 30.945423, 39.520390>,  <40.757496, 30.642092, 39.509991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496952, 30.945423, 39.520390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229300, 0.229387, -0.945940,
		-0.723296, -0.610181, -0.323297,
		-0.651356, 0.758327, 0.026001,
		40.301544, 31.172922, 39.528191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335312, 30.602997, 38.908607>,  <40.757496, 30.642092, 39.509991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335312, 30.602997, 38.908607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301682, 30.982006, 39.031982>,  <40.281506, 31.209412, 39.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301682, 30.982006, 39.031982>,  <40.335312, 30.602997, 38.908607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301682, 30.982006, 39.031982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152264, 0.318111, -0.935746,
		-0.984757, -0.031709, -0.171019,
		-0.084074, 0.947523, 0.308434,
		40.276459, 31.266264, 39.124512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948936, 30.919287, 38.421116>,  <40.335312, 30.602997, 38.908607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948936, 30.919287, 38.421116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139389, 31.223919, 38.596977>,  <40.253662, 31.406698, 38.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139389, 31.223919, 38.596977>,  <39.948936, 30.919287, 38.421116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139389, 31.223919, 38.596977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176044, 0.407288, -0.896173,
		-0.861570, 0.504098, 0.059853,
		0.476136, 0.761579, 0.439650,
		40.282230, 31.452393, 38.728874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772770, 31.510391, 38.040722>,  <39.948936, 30.919287, 38.421116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772770, 31.510391, 38.040722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103615, 31.616346, 38.239002>,  <40.302124, 31.679920, 38.357971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103615, 31.616346, 38.239002>,  <39.772770, 31.510391, 38.040722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103615, 31.616346, 38.239002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323367, 0.497086, -0.805195,
		-0.459691, 0.826281, 0.325491,
		0.827114, 0.264889, 0.495698,
		40.351749, 31.695812, 38.387711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845791, 32.256756, 37.873119>,  <39.772770, 31.510391, 38.040722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845791, 32.256756, 37.873119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214825, 32.129585, 37.960533>,  <40.436245, 32.053284, 38.012981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214825, 32.129585, 37.960533>,  <39.845791, 32.256756, 37.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214825, 32.129585, 37.960533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356703, 0.487193, -0.797123,
		0.146960, 0.813366, 0.562884,
		0.922586, -0.317928, 0.218532,
		40.491600, 32.034206, 38.026093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269913, 32.855015, 37.646389>,  <39.845791, 32.256756, 37.873119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269913, 32.855015, 37.646389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563667, 32.609947, 37.763218>,  <40.739922, 32.462906, 37.833317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563667, 32.609947, 37.763218>,  <40.269913, 32.855015, 37.646389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563667, 32.609947, 37.763218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623390, 0.438670, -0.647266,
		0.268436, 0.657422, 0.704087,
		0.734389, -0.612671, 0.292076,
		40.783985, 32.426147, 37.850842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879639, 33.217232, 37.790123>,  <40.269913, 32.855015, 37.646389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879639, 33.217232, 37.790123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980770, 32.846432, 37.679310>,  <41.041447, 32.623951, 37.612823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980770, 32.846432, 37.679310>,  <40.879639, 33.217232, 37.790123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980770, 32.846432, 37.679310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574635, 0.374233, -0.727835,
		0.778378, 0.024824, 0.627304,
		0.252826, -0.927002, -0.277030,
		41.056618, 32.568333, 37.596199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597790, 33.183548, 37.778294>,  <40.879639, 33.217232, 37.790123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597790, 33.183548, 37.778294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452225, 32.908508, 37.526970>,  <41.364887, 32.743484, 37.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452225, 32.908508, 37.526970>,  <41.597790, 33.183548, 37.778294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452225, 32.908508, 37.526970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657180, 0.288489, -0.696340,
		0.660063, -0.666321, 0.346891,
		-0.363912, -0.687597, -0.628314,
		41.343052, 32.702229, 37.338474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167362, 32.983650, 37.378601>,  <41.597790, 33.183548, 37.778294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167362, 32.983650, 37.378601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865273, 32.845024, 37.156059>,  <41.684017, 32.761848, 37.022533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865273, 32.845024, 37.156059>,  <42.167362, 32.983650, 37.378601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865273, 32.845024, 37.156059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556131, 0.110442, -0.823724,
		0.346923, -0.931500, 0.109330,
		-0.755224, -0.346570, -0.556350,
		41.638706, 32.741055, 36.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433006, 32.428520, 36.887993>,  <42.167362, 32.983650, 37.378601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433006, 32.428520, 36.887993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088718, 32.563309, 36.735355>,  <41.882145, 32.644180, 36.643772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088718, 32.563309, 36.735355>,  <42.433006, 32.428520, 36.887993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088718, 32.563309, 36.735355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485775, 0.319463, -0.813613,
		-0.152257, -0.885661, -0.438659,
		-0.860721, 0.336968, -0.381592,
		41.830502, 32.664398, 36.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443768, 32.269100, 36.088474>,  <42.433006, 32.428520, 36.887993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443768, 32.269100, 36.088474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154533, 32.541142, 36.136806>,  <41.980991, 32.704365, 36.165806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154533, 32.541142, 36.136806>,  <42.443768, 32.269100, 36.088474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154533, 32.541142, 36.136806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214431, 0.387296, -0.896672,
		-0.656629, -0.622463, -0.425885,
		-0.723089, 0.680104, 0.120834,
		41.937607, 32.745174, 36.173058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985382, 32.227913, 35.554234>,  <42.443768, 32.269100, 36.088474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985382, 32.227913, 35.554234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017254, 32.606377, 35.679726>,  <42.036377, 32.833454, 35.755020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017254, 32.606377, 35.679726>,  <41.985382, 32.227913, 35.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017254, 32.606377, 35.679726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147457, 0.300084, -0.942447,
		-0.985854, 0.121354, -0.115608,
		0.079678, 0.946162, 0.313734,
		42.041157, 32.890224, 35.773846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479847, 32.630909, 35.313805>,  <41.985382, 32.227913, 35.554234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479847, 32.630909, 35.313805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815857, 32.841831, 35.364895>,  <42.017464, 32.968384, 35.395550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815857, 32.841831, 35.364895>,  <41.479847, 32.630909, 35.313805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815857, 32.841831, 35.364895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076936, 0.348803, -0.934033,
		-0.537069, 0.774782, 0.333571,
		0.840022, 0.527304, 0.127723,
		42.067863, 33.000023, 35.403214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245476, 33.282925, 35.158752>,  <41.479847, 32.630909, 35.313805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245476, 33.282925, 35.158752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620659, 33.164417, 35.086693>,  <41.845768, 33.093311, 35.043457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620659, 33.164417, 35.086693>,  <41.245476, 33.282925, 35.158752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620659, 33.164417, 35.086693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073082, 0.338951, -0.937961,
		0.338951, 0.892937, 0.296271,
		0.937961, -0.296271, -0.180145,
		41.902046, 33.075535, 35.032650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742367, 33.841591, 34.945984>,  <41.245476, 33.282925, 35.158752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742367, 33.841591, 34.945984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761868, 33.475887, 34.785114>,  <41.773567, 33.256466, 34.688591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761868, 33.475887, 34.785114>,  <41.742367, 33.841591, 34.945984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761868, 33.475887, 34.785114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119804, 0.394397, -0.911097,
		0.991600, 0.092596, -0.090307,
		0.048747, -0.914263, -0.402178,
		41.776493, 33.201607, 34.664459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711842, 33.652847, 34.285549>,  <41.742367, 33.841591, 34.945984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711842, 33.652847, 34.285549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790447, 34.023228, 34.156559>,  <41.837612, 34.245457, 34.079166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790447, 34.023228, 34.156559>,  <41.711842, 33.652847, 34.285549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790447, 34.023228, 34.156559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758871, 0.064626, 0.648026,
		0.620883, -0.372062, -0.689981,
		0.196515, 0.925955, -0.322473,
		41.849403, 34.301014, 34.059818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357162, 33.672375, 34.076977>,  <41.711842, 33.652847, 34.285549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357162, 33.672375, 34.076977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254665, 34.036457, 34.207123>,  <42.193169, 34.254906, 34.285210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254665, 34.036457, 34.207123>,  <42.357162, 33.672375, 34.076977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254665, 34.036457, 34.207123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851415, 0.053171, 0.521791,
		0.457637, 0.410729, -0.788588,
		-0.256244, 0.910206, 0.325367,
		42.177792, 34.309521, 34.304733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869621, 34.198265, 33.978508>,  <42.357162, 33.672375, 34.076977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869621, 34.198265, 33.978508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654438, 34.264923, 34.309044>,  <42.525330, 34.304920, 34.507366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654438, 34.264923, 34.309044>,  <42.869621, 34.198265, 33.978508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654438, 34.264923, 34.309044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836999, 0.222081, 0.500113,
		-0.100171, 0.960681, -0.258954,
		-0.537958, 0.166647, 0.826335,
		42.493050, 34.314919, 34.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640320, 34.346107, 34.081635>,  <42.869621, 34.198265, 33.978508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640320, 34.346107, 34.081635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015507, 34.395256, 33.951942>,  <44.240620, 34.424744, 33.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015507, 34.395256, 33.951942>,  <43.640320, 34.346107, 34.081635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015507, 34.395256, 33.951942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296260, -0.201851, -0.933534,
		-0.180152, 0.971678, -0.152926,
		0.937963, 0.122872, -0.324233,
		44.296894, 34.432117, 33.854671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509174, 34.714455, 33.561329>,  <43.640320, 34.346107, 34.081635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509174, 34.714455, 33.561329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873173, 34.558384, 33.505222>,  <44.091572, 34.464741, 33.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873173, 34.558384, 33.505222>,  <43.509174, 34.714455, 33.561329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873173, 34.558384, 33.505222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301249, -0.389749, -0.870256,
		0.284883, 0.834182, -0.472209,
		0.909995, -0.390174, -0.140264,
		44.146172, 34.441330, 33.463142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502876, 34.681892, 32.844074>,  <43.509174, 34.714455, 33.561329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502876, 34.681892, 32.844074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787544, 34.438690, 32.984844>,  <43.958344, 34.292767, 33.069305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787544, 34.438690, 32.984844>,  <43.502876, 34.681892, 32.844074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787544, 34.438690, 32.984844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082553, -0.569861, -0.817584,
		0.697648, 0.552797, -0.455745,
		0.711669, -0.608009, 0.351927,
		44.001045, 34.256287, 33.090424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970718, 34.717331, 32.349190>,  <43.502876, 34.681892, 32.844074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970718, 34.717331, 32.349190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011539, 34.368931, 32.541416>,  <44.036034, 34.159893, 32.656754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011539, 34.368931, 32.541416>,  <43.970718, 34.717331, 32.349190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011539, 34.368931, 32.541416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070500, -0.488209, -0.869875,
		0.992278, 0.054895, -0.111230,
		0.102055, -0.870999, 0.480569,
		44.042156, 34.107632, 32.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501797, 34.266663, 31.999752>,  <43.970718, 34.717331, 32.349190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501797, 34.266663, 31.999752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266228, 34.020073, 32.208797>,  <44.124886, 33.872120, 32.334225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266228, 34.020073, 32.208797>,  <44.501797, 34.266663, 31.999752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266228, 34.020073, 32.208797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025487, -0.660491, -0.750401,
		0.807786, -0.428610, 0.404692,
		-0.588925, -0.616478, 0.522611,
		44.089550, 33.835129, 32.365582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856266, 33.605663, 32.014832>,  <44.501797, 34.266663, 31.999752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856266, 33.605663, 32.014832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465431, 33.547226, 32.076748>,  <44.230930, 33.512165, 32.113899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465431, 33.547226, 32.076748>,  <44.856266, 33.605663, 32.014832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465431, 33.547226, 32.076748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007529, -0.703070, -0.711081,
		0.212715, -0.695952, 0.685859,
		-0.977085, -0.146093, 0.154793,
		44.172306, 33.503399, 32.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870121, 32.945171, 31.950748>,  <44.856266, 33.605663, 32.014832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870121, 32.945171, 31.950748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490768, 33.053238, 31.884323>,  <44.263157, 33.118076, 31.844467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490768, 33.053238, 31.884323>,  <44.870121, 32.945171, 31.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490768, 33.053238, 31.884323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070184, -0.689479, -0.720897,
		-0.309260, -0.672033, 0.672852,
		-0.948384, 0.270168, -0.166062,
		44.206253, 33.134289, 31.834505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531952, 32.310913, 31.906776>,  <44.870121, 32.945171, 31.950748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531952, 32.310913, 31.906776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274582, 32.569439, 31.742689>,  <44.120159, 32.724556, 31.644238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274582, 32.569439, 31.742689>,  <44.531952, 32.310913, 31.906776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274582, 32.569439, 31.742689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057524, -0.575181, -0.816001,
		-0.763345, -0.501438, 0.407264,
		-0.643424, 0.646318, -0.410217,
		44.081554, 32.763336, 31.619623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910007, 31.889574, 31.765907>,  <44.531952, 32.310913, 31.906776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910007, 31.889574, 31.765907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919605, 32.201576, 31.515783>,  <43.925362, 32.388779, 31.365709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919605, 32.201576, 31.515783>,  <43.910007, 31.889574, 31.765907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919605, 32.201576, 31.515783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021136, -0.625746, -0.779740,
		-0.999489, 0.005489, -0.031497,
		0.023990, 0.780007, -0.625310,
		43.926804, 32.435577, 31.328190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442074, 31.640759, 31.291275>,  <43.910007, 31.889574, 31.765907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442074, 31.640759, 31.291275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600922, 31.958363, 31.107172>,  <43.696232, 32.148926, 30.996710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600922, 31.958363, 31.107172>,  <43.442074, 31.640759, 31.291275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600922, 31.958363, 31.107172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001029, -0.501884, -0.864934,
		-0.917764, 0.343012, -0.200128,
		0.397124, 0.794012, -0.460258,
		43.720058, 32.196568, 30.969095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116688, 31.642435, 30.733545>,  <43.442074, 31.640759, 31.291275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116688, 31.642435, 30.733545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430893, 31.876888, 30.654131>,  <43.619415, 32.017559, 30.606482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430893, 31.876888, 30.654131>,  <43.116688, 31.642435, 30.733545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430893, 31.876888, 30.654131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059530, -0.247761, -0.966991,
		-0.615977, 0.771402, -0.159727,
		0.785512, 0.586135, -0.198537,
		43.666546, 32.052731, 30.594570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973766, 32.004047, 30.147945>,  <43.116688, 31.642435, 30.733545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973766, 32.004047, 30.147945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373600, 32.012650, 30.155701>,  <43.613499, 32.017811, 30.160355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373600, 32.012650, 30.155701>,  <42.973766, 32.004047, 30.147945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373600, 32.012650, 30.155701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020910, -0.072869, -0.997122,
		-0.020033, 0.997109, -0.073288,
		0.999581, 0.021507, 0.019390,
		43.673473, 32.019100, 30.161518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260151, 32.516422, 29.683260>,  <42.973766, 32.004047, 30.147945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260151, 32.516422, 29.683260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542732, 32.239590, 29.742506>,  <43.712280, 32.073490, 29.778053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542732, 32.239590, 29.742506>,  <43.260151, 32.516422, 29.683260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542732, 32.239590, 29.742506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125122, -0.083853, -0.988591,
		0.696609, 0.716929, 0.027357,
		0.706456, -0.692085, 0.148116,
		43.754669, 32.031963, 29.786942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846413, 32.782524, 29.339470>,  <43.260151, 32.516422, 29.683260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846413, 32.782524, 29.339470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934589, 32.394726, 29.382347>,  <43.987495, 32.162048, 29.408073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934589, 32.394726, 29.382347>,  <43.846413, 32.782524, 29.339470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934589, 32.394726, 29.382347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278140, -0.042856, -0.959584,
		0.934904, 0.241343, 0.260207,
		0.220438, -0.969493, 0.107194,
		44.000721, 32.103878, 29.414505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540401, 32.628162, 28.917408>,  <43.846413, 32.782524, 29.339470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540401, 32.628162, 28.917408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396324, 32.259159, 28.972883>,  <44.309879, 32.037758, 29.006168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396324, 32.259159, 28.972883>,  <44.540401, 32.628162, 28.917408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396324, 32.259159, 28.972883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182275, -0.215396, -0.959365,
		0.914898, -0.320276, 0.245735,
		-0.360191, -0.922512, 0.138687,
		44.288265, 31.982405, 29.014490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061714, 32.162590, 28.561876>,  <44.540401, 32.628162, 28.917408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061714, 32.162590, 28.561876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717438, 31.960211, 28.584631>,  <44.510872, 31.838783, 28.598284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717438, 31.960211, 28.584631>,  <45.061714, 32.162590, 28.561876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717438, 31.960211, 28.584631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137145, -0.337990, -0.931103,
		0.490313, -0.793588, 0.360292,
		-0.860688, -0.505945, 0.056884,
		44.459232, 31.808428, 28.601696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189636, 31.570492, 28.240465>,  <45.061714, 32.162590, 28.561876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189636, 31.570492, 28.240465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791103, 31.604263, 28.235004>,  <44.551983, 31.624527, 28.231728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791103, 31.604263, 28.235004>,  <45.189636, 31.570492, 28.240465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791103, 31.604263, 28.235004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006282, -0.231448, -0.972827,
		-0.085296, -0.969177, 0.231131,
		-0.996336, 0.084430, -0.013653,
		44.492203, 31.629593, 28.230909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064518, 31.036882, 27.830626>,  <45.189636, 31.570492, 28.240465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064518, 31.036882, 27.830626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736763, 31.266176, 27.829592>,  <44.540112, 31.403753, 27.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736763, 31.266176, 27.829592>,  <45.064518, 31.036882, 27.830626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736763, 31.266176, 27.829592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096194, -0.141939, -0.985190,
		-0.565111, -0.807004, 0.171445,
		-0.819387, 0.573234, -0.002582,
		44.490948, 31.438147, 27.828817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567368, 30.721563, 27.385820>,  <45.064518, 31.036882, 27.830626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567368, 30.721563, 27.385820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405098, 31.086723, 27.403910>,  <44.307735, 31.305819, 27.414762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405098, 31.086723, 27.403910>,  <44.567368, 30.721563, 27.385820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405098, 31.086723, 27.403910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229304, -0.053753, -0.971869,
		-0.884789, -0.404627, 0.231138,
		-0.405669, 0.912901, 0.045223,
		44.283398, 31.360594, 27.417477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917988, 30.645432, 27.098240>,  <44.567368, 30.721563, 27.385820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917988, 30.645432, 27.098240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015362, 31.031725, 27.062248>,  <44.073788, 31.263500, 27.040653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015362, 31.031725, 27.062248>,  <43.917988, 30.645432, 27.098240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015362, 31.031725, 27.062248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252553, -0.026454, -0.967222,
		-0.936459, 0.258181, 0.237459,
		0.243437, 0.965734, -0.089978,
		44.088394, 31.321445, 27.035255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350662, 30.994274, 26.708399>,  <43.917988, 30.645432, 27.098240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350662, 30.994274, 26.708399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686417, 31.208746, 26.672739>,  <43.887867, 31.337429, 26.651342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686417, 31.208746, 26.672739>,  <43.350662, 30.994274, 26.708399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686417, 31.208746, 26.672739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223824, 0.191502, -0.955631,
		-0.495316, 0.822095, 0.280753,
		0.839384, 0.536178, -0.089150,
		43.938232, 31.369600, 26.645994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165997, 31.467886, 26.269444>,  <43.350662, 30.994274, 26.708399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165997, 31.467886, 26.269444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564583, 31.490646, 26.244755>,  <43.803734, 31.504303, 26.229940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564583, 31.490646, 26.244755>,  <43.165997, 31.467886, 26.269444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564583, 31.490646, 26.244755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070248, 0.162603, -0.984188,
		-0.045965, 0.985049, 0.166027,
		0.996470, 0.056901, -0.061724,
		43.863525, 31.507717, 26.226238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403500, 32.089127, 25.986324>,  <43.165997, 31.467886, 26.269444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403500, 32.089127, 25.986324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617634, 31.764538, 25.892574>,  <43.746113, 31.569784, 25.836325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617634, 31.764538, 25.892574>,  <43.403500, 32.089127, 25.986324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617634, 31.764538, 25.892574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451794, -0.040651, -0.891196,
		0.713651, 0.582978, -0.388380,
		0.535335, -0.811471, -0.234375,
		43.778233, 31.521097, 25.822262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561974, 32.196198, 25.335768>,  <43.403500, 32.089127, 25.986324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561974, 32.196198, 25.335768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570812, 31.796539, 25.349781>,  <43.576115, 31.556746, 25.358189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570812, 31.796539, 25.349781>,  <43.561974, 32.196198, 25.335768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570812, 31.796539, 25.349781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401390, -0.040962, -0.914991,
		0.915641, 0.006160, -0.401951,
		0.022101, -0.999142, 0.035034,
		43.577442, 31.496798, 25.360291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910690, 32.854343, 25.129200>,  <43.561974, 32.196198, 25.335768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910690, 32.854343, 25.129200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031399, 33.066833, 24.812534>,  <44.103825, 33.194328, 24.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031399, 33.066833, 24.812534>,  <43.910690, 32.854343, 25.129200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031399, 33.066833, 24.812534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492564, 0.624091, 0.606541,
		0.816280, -0.572983, -0.073328,
		0.301774, 0.531226, -0.791664,
		44.121929, 33.226200, 24.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348194, 33.205013, 25.420641>,  <43.910690, 32.854343, 25.129200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348194, 33.205013, 25.420641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297623, 33.420109, 25.087210>,  <44.267281, 33.549168, 24.887152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297623, 33.420109, 25.087210>,  <44.348194, 33.205013, 25.420641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297623, 33.420109, 25.087210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431955, 0.786312, 0.441734,
		0.892989, -0.304218, -0.331695,
		-0.126432, 0.537741, -0.833576,
		44.259693, 33.581432, 24.837137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953739, 33.530880, 25.104628>,  <44.348194, 33.205013, 25.420641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953739, 33.530880, 25.104628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667896, 33.762360, 24.947426>,  <44.496391, 33.901245, 24.853106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667896, 33.762360, 24.947426>,  <44.953739, 33.530880, 25.104628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667896, 33.762360, 24.947426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427772, 0.806031, 0.409053,
		0.553490, 0.124196, -0.823544,
		-0.714605, 0.578696, -0.393002,
		44.453514, 33.935970, 24.829525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994602, 33.916737, 24.451952>,  <44.953739, 33.530880, 25.104628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994602, 33.916737, 24.451952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793724, 34.061848, 24.765944>,  <44.673195, 34.148914, 24.954338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793724, 34.061848, 24.765944>,  <44.994602, 33.916737, 24.451952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793724, 34.061848, 24.765944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843092, 0.407303, 0.351141,
		-0.192338, 0.838151, -0.510401,
		-0.502197, 0.362777, 0.784978,
		44.643066, 34.170681, 25.001436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584919, 34.026508, 24.820889>,  <44.994602, 33.916737, 24.451952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584919, 34.026508, 24.820889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366756, 34.332047, 24.958912>,  <45.235859, 34.515369, 25.041727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366756, 34.332047, 24.958912>,  <45.584919, 34.026508, 24.820889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366756, 34.332047, 24.958912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739461, 0.244679, 0.627160,
		0.394627, 0.597215, -0.698286,
		-0.545406, 0.763850, 0.345060,
		45.203136, 34.561203, 25.062429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173180, 34.584717, 24.929810>,  <45.584919, 34.026508, 24.820889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173180, 34.584717, 24.929810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835403, 34.590256, 25.143997>,  <45.632736, 34.593578, 25.272509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835403, 34.590256, 25.143997>,  <46.173180, 34.584717, 24.929810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835403, 34.590256, 25.143997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528503, 0.184257, 0.828694,
		-0.087189, 0.982781, -0.162913,
		-0.844442, 0.013846, 0.535468,
		45.582069, 34.594410, 25.304638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000126, 35.166271, 25.369072>,  <46.173180, 34.584717, 24.929810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000126, 35.166271, 25.369072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844578, 34.830021, 25.519873>,  <45.751247, 34.628273, 25.610353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844578, 34.830021, 25.519873>,  <46.000126, 35.166271, 25.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844578, 34.830021, 25.519873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474318, 0.168132, 0.864149,
		-0.789809, 0.514865, 0.333340,
		-0.388875, -0.840622, 0.377002,
		45.727917, 34.577835, 25.632973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684860, 35.390568, 25.951675>,  <46.000126, 35.166271, 25.369072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684860, 35.390568, 25.951675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753868, 35.007462, 26.043703>,  <45.795273, 34.777599, 26.098919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753868, 35.007462, 26.043703>,  <45.684860, 35.390568, 25.951675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753868, 35.007462, 26.043703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375795, 0.279900, 0.883422,
		-0.910504, -0.065946, 0.408209,
		0.172516, -0.957762, 0.230067,
		45.805622, 34.720135, 26.112722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257801, 35.240868, 26.515915>,  <45.684860, 35.390568, 25.951675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257801, 35.240868, 26.515915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564434, 34.986794, 26.553616>,  <45.748413, 34.834351, 26.576237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.564434, 34.986794, 26.553616>,  <45.257801, 35.240868, 26.515915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.564434, 34.986794, 26.553616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228461, 0.406957, 0.884416,
		-0.600126, -0.656448, 0.457083,
		0.766586, -0.635187, 0.094253,
		45.794411, 34.796238, 26.581892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380054, 35.274620, 27.230492>,  <45.257801, 35.240868, 26.515915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380054, 35.274620, 27.230492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676205, 35.043060, 27.093834>,  <45.853893, 34.904125, 27.011839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676205, 35.043060, 27.093834>,  <45.380054, 35.274620, 27.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676205, 35.043060, 27.093834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463303, 0.071226, 0.883333,
		-0.487027, -0.812282, 0.320939,
		0.740375, -0.578899, -0.341643,
		45.898319, 34.869392, 26.991341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472412, 34.764023, 27.779158>,  <45.380054, 35.274620, 27.230492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472412, 34.764023, 27.779158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825123, 34.803848, 27.594738>,  <46.036747, 34.827744, 27.484087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825123, 34.803848, 27.594738>,  <45.472412, 34.764023, 27.779158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825123, 34.803848, 27.594738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452726, 0.095630, 0.886507,
		0.132352, -0.990426, 0.039250,
		0.881773, 0.099561, -0.461048,
		46.089653, 34.833717, 27.456423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809998, 34.294788, 28.202570>,  <45.472412, 34.764023, 27.779158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809998, 34.294788, 28.202570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075592, 34.538372, 28.028999>,  <46.234947, 34.684521, 27.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075592, 34.538372, 28.028999>,  <45.809998, 34.294788, 28.202570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.075592, 34.538372, 28.028999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517938, 0.043997, 0.854286,
		0.539317, -0.791980, -0.286190,
		0.663986, 0.608960, -0.433925,
		46.274788, 34.721062, 27.898821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444504, 34.179821, 28.468451>,  <45.809998, 34.294788, 28.202570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444504, 34.179821, 28.468451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549042, 34.539223, 28.327375>,  <46.611767, 34.754864, 28.242729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549042, 34.539223, 28.327375>,  <46.444504, 34.179821, 28.468451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549042, 34.539223, 28.327375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403069, 0.230419, 0.885687,
		0.877059, -0.373631, -0.301939,
		0.261348, 0.898502, -0.352690,
		46.627445, 34.808773, 28.221569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161148, 34.213203, 28.663506>,  <46.444504, 34.179821, 28.468451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161148, 34.213203, 28.663506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981613, 34.563679, 28.593260>,  <46.873890, 34.773964, 28.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981613, 34.563679, 28.593260>,  <47.161148, 34.213203, 28.663506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981613, 34.563679, 28.593260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343738, 0.350684, 0.871128,
		0.824855, 0.330632, -0.458580,
		-0.448840, 0.876187, -0.175613,
		46.846962, 34.826534, 28.540577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518883, 34.666725, 28.911154>,  <47.161148, 34.213203, 28.663506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518883, 34.666725, 28.911154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199783, 34.906799, 28.887907>,  <47.008324, 35.050846, 28.873959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199783, 34.906799, 28.887907>,  <47.518883, 34.666725, 28.911154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199783, 34.906799, 28.887907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237148, 0.400895, 0.884898,
		0.554405, 0.692139, -0.462145,
		-0.797744, 0.600188, -0.058119,
		46.960461, 35.086857, 28.870472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767502, 35.271324, 29.062735>,  <47.518883, 34.666725, 28.911154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767502, 35.271324, 29.062735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376736, 35.316113, 29.135496>,  <47.142273, 35.342987, 29.179153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376736, 35.316113, 29.135496>,  <47.767502, 35.271324, 29.062735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376736, 35.316113, 29.135496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209702, 0.340674, 0.916497,
		0.040650, 0.933490, -0.356292,
		-0.976920, 0.111970, 0.181906,
		47.083660, 35.349705, 29.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665146, 35.982639, 29.501465>,  <47.767502, 35.271324, 29.062735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665146, 35.982639, 29.501465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333107, 35.762802, 29.539183>,  <47.133884, 35.630898, 29.561813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333107, 35.762802, 29.539183>,  <47.665146, 35.982639, 29.501465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333107, 35.762802, 29.539183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039976, 0.227321, 0.972999,
		-0.556190, 0.803910, -0.210668,
		-0.830093, -0.549595, 0.094296,
		47.084080, 35.597923, 29.567472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299465, 36.383316, 30.001503>,  <47.665146, 35.982639, 29.501465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299465, 36.383316, 30.001503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099628, 36.038120, 30.031605>,  <46.979729, 35.831001, 30.049665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099628, 36.038120, 30.031605>,  <47.299465, 36.383316, 30.001503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099628, 36.038120, 30.031605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087807, 0.136872, 0.986689,
		-0.861801, 0.486331, -0.144156,
		-0.499588, -0.862988, 0.075253,
		46.949753, 35.779224, 30.054180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761814, 36.529926, 30.499537>,  <47.299465, 36.383316, 30.001503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761814, 36.529926, 30.499537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804562, 36.132217, 30.499947>,  <46.830212, 35.893593, 30.500193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804562, 36.132217, 30.499947>,  <46.761814, 36.529926, 30.499537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804562, 36.132217, 30.499947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217672, -0.022389, 0.975765,
		-0.970153, -0.104504, -0.218818,
		0.106871, -0.994273, 0.001027,
		46.836624, 35.833935, 30.500254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156681, 36.287964, 30.805389>,  <46.761814, 36.529926, 30.499537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156681, 36.287964, 30.805389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443279, 36.010731, 30.837063>,  <46.615238, 35.844391, 30.856068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443279, 36.010731, 30.837063>,  <46.156681, 36.287964, 30.805389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443279, 36.010731, 30.837063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167457, -0.060692, 0.984009,
		-0.677190, -0.718303, -0.159547,
		0.716500, -0.693078, 0.079185,
		46.658230, 35.802807, 30.860819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815956, 35.756771, 31.193247>,  <46.156681, 36.287964, 30.805389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815956, 35.756771, 31.193247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212120, 35.707954, 31.219154>,  <46.449818, 35.678665, 31.234699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212120, 35.707954, 31.219154>,  <45.815956, 35.756771, 31.193247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212120, 35.707954, 31.219154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087259, -0.189035, 0.978086,
		-0.107120, -0.974357, -0.197871,
		0.990409, -0.122039, 0.064772,
		46.509243, 35.671341, 31.238586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882298, 35.362221, 31.820108>,  <45.815956, 35.756771, 31.193247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882298, 35.362221, 31.820108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242603, 35.509407, 31.727825>,  <46.458786, 35.597717, 31.672455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242603, 35.509407, 31.727825>,  <45.882298, 35.362221, 31.820108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242603, 35.509407, 31.727825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244271, 0.009987, 0.969655,
		0.359102, -0.929786, -0.080887,
		0.900765, 0.367964, -0.230706,
		46.512833, 35.619797, 31.658613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321190, 34.856785, 32.049919>,  <45.882298, 35.362221, 31.820108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321190, 34.856785, 32.049919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508831, 35.209881, 32.039188>,  <46.621414, 35.421738, 32.032749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508831, 35.209881, 32.039188>,  <46.321190, 34.856785, 32.049919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508831, 35.209881, 32.039188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407174, -0.189222, 0.893535,
		0.783681, -0.430080, -0.448191,
		0.469099, 0.882738, -0.026828,
		46.649559, 35.474701, 32.031139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002842, 34.766174, 32.278564>,  <46.321190, 34.856785, 32.049919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002842, 34.766174, 32.278564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932816, 35.158360, 32.314423>,  <46.890800, 35.393673, 32.335938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932816, 35.158360, 32.314423>,  <47.002842, 34.766174, 32.278564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932816, 35.158360, 32.314423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456875, 0.000242, 0.889531,
		0.872134, 0.196686, -0.447993,
		-0.175067, 0.980466, 0.089650,
		46.880295, 35.452499, 32.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.585106, 35.028603, 32.608585>,  <47.002842, 34.766174, 32.278564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.585106, 35.028603, 32.608585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308178, 35.314491, 32.648327>,  <47.142021, 35.486023, 32.672173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308178, 35.314491, 32.648327>,  <47.585106, 35.028603, 32.608585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308178, 35.314491, 32.648327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287707, 0.147131, 0.946350,
		0.661758, 0.683758, -0.307491,
		-0.692316, 0.714722, 0.099357,
		47.100483, 35.528908, 32.678135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908314, 35.555153, 32.980415>,  <47.585106, 35.028603, 32.608585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908314, 35.555153, 32.980415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516708, 35.611774, 33.039066>,  <47.281746, 35.645748, 33.074257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516708, 35.611774, 33.039066>,  <47.908314, 35.555153, 32.980415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516708, 35.611774, 33.039066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165027, 0.128395, 0.977896,
		0.119596, 0.981569, -0.149060,
		-0.979011, 0.141551, 0.146629,
		47.223003, 35.654240, 33.083054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.790798, 36.178650, 33.298626>,  <47.908314, 35.555153, 32.980415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.790798, 36.178650, 33.298626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472092, 35.951481, 33.381214>,  <47.280869, 35.815178, 33.430767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472092, 35.951481, 33.381214>,  <47.790798, 36.178650, 33.298626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.472092, 35.951481, 33.381214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154598, 0.138730, 0.978189,
		-0.584179, 0.811306, -0.022736,
		-0.796765, -0.567923, 0.206469,
		47.233063, 35.781105, 33.443153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379749, 36.526939, 33.889362>,  <47.790798, 36.178650, 33.298626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379749, 36.526939, 33.889362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309753, 36.134403, 33.857491>,  <47.267757, 35.898880, 33.838367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309753, 36.134403, 33.857491>,  <47.379749, 36.526939, 33.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309753, 36.134403, 33.857491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223921, -0.118476, 0.967379,
		-0.958769, 0.151439, 0.240475,
		-0.174990, -0.981341, -0.079681,
		47.257256, 35.840000, 33.833588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.913582, 36.226917, 34.492085>,  <47.379749, 36.526939, 33.889362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.913582, 36.226917, 34.492085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178711, 35.970127, 34.337925>,  <47.337788, 35.816051, 34.245430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178711, 35.970127, 34.337925>,  <46.913582, 36.226917, 34.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178711, 35.970127, 34.337925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373921, -0.162148, 0.913176,
		-0.648733, -0.749379, 0.132575,
		0.662819, -0.641980, -0.385399,
		47.377556, 35.777534, 34.222305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861740, 35.441967, 34.758755>,  <46.913582, 36.226917, 34.492085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861740, 35.441967, 34.758755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229546, 35.552933, 34.647377>,  <47.450230, 35.619511, 34.580551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229546, 35.552933, 34.647377>,  <46.861740, 35.441967, 34.758755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229546, 35.552933, 34.647377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372579, -0.389532, 0.842288,
		0.125202, -0.878240, -0.461540,
		0.919516, 0.277416, -0.278443,
		47.505402, 35.636158, 34.563843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.171921, 34.914513, 34.950523>,  <46.861740, 35.441967, 34.758755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.171921, 34.914513, 34.950523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424164, 35.222187, 34.909187>,  <47.575508, 35.406792, 34.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424164, 35.222187, 34.909187>,  <47.171921, 34.914513, 34.950523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424164, 35.222187, 34.909187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486683, -0.288206, 0.824668,
		0.604544, -0.570336, -0.556097,
		0.630608, 0.769191, -0.103340,
		47.613346, 35.452946, 34.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.887405, 34.671326, 34.986485>,  <47.171921, 34.914513, 34.950523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.887405, 34.671326, 34.986485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814007, 35.044773, 35.109562>,  <47.769966, 35.268841, 35.183411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814007, 35.044773, 35.109562>,  <47.887405, 34.671326, 34.986485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.814007, 35.044773, 35.109562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414784, -0.210248, 0.885297,
		0.891226, 0.290077, -0.348672,
		-0.183496, 0.933623, 0.307698,
		47.758957, 35.324860, 35.201870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.768326, 34.189655, 43.761993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452755, 33.956799, 43.840694>,  <38.263412, 33.817085, 43.887913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.452755, 33.956799, 43.840694>,  <38.768326, 34.189655, 43.761993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452755, 33.956799, 43.840694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446695, 0.323440, -0.834176,
		0.421969, -0.745991, -0.515208,
		-0.788927, -0.582137, 0.196749,
		38.216076, 33.782158, 43.899719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617077, 33.730312, 43.129593>,  <38.768326, 34.189655, 43.761993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617077, 33.730312, 43.129593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281025, 33.785664, 43.339363>,  <38.079391, 33.818874, 43.465225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281025, 33.785664, 43.339363>,  <38.617077, 33.730312, 43.129593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281025, 33.785664, 43.339363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516131, 0.093180, -0.851426,
		-0.166686, -0.985986, -0.006861,
		-0.840133, 0.138379, 0.524430,
		38.028984, 33.827179, 43.496693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127930, 33.319637, 42.819321>,  <38.617077, 33.730312, 43.129593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127930, 33.319637, 42.819321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860264, 33.534100, 43.025143>,  <37.699665, 33.662777, 43.148636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860264, 33.534100, 43.025143>,  <38.127930, 33.319637, 42.819321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860264, 33.534100, 43.025143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557615, 0.095425, -0.824596,
		-0.491211, -0.838710, 0.235113,
		-0.669162, 0.536153, 0.514551,
		37.659515, 33.694946, 43.179508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464993, 33.000057, 42.764980>,  <38.127930, 33.319637, 42.819321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464993, 33.000057, 42.764980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396057, 33.383156, 42.857090>,  <37.354694, 33.613014, 42.912357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396057, 33.383156, 42.857090>,  <37.464993, 33.000057, 42.764980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396057, 33.383156, 42.857090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589249, 0.087096, -0.803244,
		-0.789357, -0.274124, 0.549338,
		-0.172343, 0.957742, 0.230277,
		37.344353, 33.670479, 42.926174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799892, 33.052959, 42.688477>,  <37.464993, 33.000057, 42.764980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799892, 33.052959, 42.688477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936554, 33.428043, 42.663254>,  <37.018551, 33.653091, 42.648121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936554, 33.428043, 42.663254>,  <36.799892, 33.052959, 42.688477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936554, 33.428043, 42.663254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621666, 0.175170, -0.763444,
		-0.704842, 0.300033, 0.642789,
		0.341656, 0.937707, -0.063053,
		37.039051, 33.709354, 42.644337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279987, 33.324284, 42.242821>,  <36.799892, 33.052959, 42.688477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279987, 33.324284, 42.242821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566200, 33.603634, 42.249580>,  <36.737930, 33.771244, 42.253635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566200, 33.603634, 42.249580>,  <36.279987, 33.324284, 42.242821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566200, 33.603634, 42.249580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306740, 0.335829, -0.890578,
		-0.627632, 0.632055, 0.454516,
		0.715534, 0.698373, 0.016901,
		36.780861, 33.813145, 42.254650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893703, 33.935909, 41.988705>,  <36.279987, 33.324284, 42.242821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893703, 33.935909, 41.988705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281532, 33.999943, 41.914627>,  <36.514229, 34.038361, 41.870182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281532, 33.999943, 41.914627>,  <35.893703, 33.935909, 41.988705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281532, 33.999943, 41.914627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235568, 0.404463, -0.883695,
		-0.066558, 0.900436, 0.429868,
		0.969576, 0.160080, -0.185193,
		36.572407, 34.047966, 41.859070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919453, 34.579899, 41.756584>,  <35.893703, 33.935909, 41.988705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919453, 34.579899, 41.756584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261890, 34.423828, 41.621014>,  <36.467354, 34.330185, 41.539673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261890, 34.423828, 41.621014>,  <35.919453, 34.579899, 41.756584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261890, 34.423828, 41.621014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059892, 0.576473, -0.814919,
		0.513343, 0.717943, 0.470145,
		0.856091, -0.390175, -0.338927,
		36.518719, 34.306774, 41.519337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251419, 35.163509, 41.446888>,  <35.919453, 34.579899, 41.756584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251419, 35.163509, 41.446888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417938, 34.824577, 41.314987>,  <36.517849, 34.621220, 41.235847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417938, 34.824577, 41.314987>,  <36.251419, 35.163509, 41.446888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417938, 34.824577, 41.314987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038218, 0.346041, -0.937441,
		0.908426, 0.402855, 0.111673,
		0.416296, -0.847327, -0.329749,
		36.542828, 34.570377, 41.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729439, 35.321499, 40.885262>,  <36.251419, 35.163509, 41.446888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729439, 35.321499, 40.885262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676884, 34.927986, 40.836414>,  <36.645351, 34.691879, 40.807106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676884, 34.927986, 40.836414>,  <36.729439, 35.321499, 40.885262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676884, 34.927986, 40.836414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098899, 0.135580, -0.985818,
		0.986385, -0.117450, -0.115109,
		-0.131391, -0.983780, -0.122119,
		36.637466, 34.632851, 40.799778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216900, 35.078106, 40.353783>,  <36.729439, 35.321499, 40.885262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216900, 35.078106, 40.353783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916786, 34.813850, 40.363834>,  <36.736717, 34.655296, 40.369865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916786, 34.813850, 40.363834>,  <37.216900, 35.078106, 40.353783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916786, 34.813850, 40.363834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047831, 0.016330, -0.998722,
		0.659388, -0.750523, -0.043851,
		-0.750280, -0.660643, 0.025130,
		36.691704, 34.615658, 40.371372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391911, 34.391689, 39.972023>,  <37.216900, 35.078106, 40.353783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391911, 34.391689, 39.972023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996223, 34.448612, 39.958176>,  <36.758812, 34.482765, 39.949867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996223, 34.448612, 39.958176>,  <37.391911, 34.391689, 39.972023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996223, 34.448612, 39.958176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023590, -0.078451, -0.996639,
		-0.144545, -0.986709, 0.074248,
		-0.989217, 0.142308, -0.034616,
		36.699459, 34.491302, 39.947792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104454, 33.880737, 39.459801>,  <37.391911, 34.391689, 39.972023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104454, 33.880737, 39.459801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811901, 34.151455, 39.493320>,  <36.636368, 34.313885, 39.513432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811901, 34.151455, 39.493320>,  <37.104454, 33.880737, 39.459801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811901, 34.151455, 39.493320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034481, 0.086029, -0.995696,
		-0.681093, -0.731126, -0.039584,
		-0.731384, 0.676797, 0.083804,
		36.592487, 34.354492, 39.518463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523758, 33.609230, 39.080994>,  <37.104454, 33.880737, 39.459801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523758, 33.609230, 39.080994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503788, 34.007111, 39.116959>,  <36.491806, 34.245838, 39.138538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503788, 34.007111, 39.116959>,  <36.523758, 33.609230, 39.080994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503788, 34.007111, 39.116959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017634, 0.090888, -0.995705,
		-0.998597, -0.048129, -0.022079,
		-0.049929, 0.994697, 0.089912,
		36.488808, 34.305519, 39.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176628, 33.766586, 38.434456>,  <36.523758, 33.609230, 39.080994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176628, 33.766586, 38.434456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355103, 34.099655, 38.565651>,  <36.462189, 34.299496, 38.644367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355103, 34.099655, 38.565651>,  <36.176628, 33.766586, 38.434456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355103, 34.099655, 38.565651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184138, 0.273237, -0.944158,
		-0.875791, 0.481668, -0.031411,
		0.446188, 0.832669, 0.327991,
		36.488960, 34.349457, 38.664047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881870, 34.267292, 38.026562>,  <36.176628, 33.766586, 38.434456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881870, 34.267292, 38.026562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191051, 34.464958, 38.185726>,  <36.376560, 34.583557, 38.281223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191051, 34.464958, 38.185726>,  <35.881870, 34.267292, 38.026562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191051, 34.464958, 38.185726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193243, 0.413999, -0.889529,
		-0.604313, 0.764462, 0.224509,
		0.772958, 0.494169, 0.397912,
		36.422939, 34.613209, 38.305099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787701, 34.912560, 37.843979>,  <35.881870, 34.267292, 38.026562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787701, 34.912560, 37.843979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175594, 34.878109, 37.935375>,  <36.408329, 34.857437, 37.990211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175594, 34.878109, 37.935375>,  <35.787701, 34.912560, 37.843979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175594, 34.878109, 37.935375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235556, 0.576460, -0.782436,
		-0.064325, 0.812573, 0.579299,
		0.969730, -0.086127, 0.228488,
		36.466515, 34.852272, 38.003922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091713, 35.594616, 37.860378>,  <35.787701, 34.912560, 37.843979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091713, 35.594616, 37.860378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408360, 35.354660, 37.813957>,  <36.598347, 35.210686, 37.786102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408360, 35.354660, 37.813957>,  <36.091713, 35.594616, 37.860378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408360, 35.354660, 37.813957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363683, 0.615233, -0.699445,
		0.490993, 0.511486, 0.705201,
		0.791619, -0.599892, -0.116056,
		36.645844, 35.174694, 37.779140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691925, 36.088165, 37.625225>,  <36.091713, 35.594616, 37.860378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691925, 36.088165, 37.625225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798622, 35.712837, 37.537224>,  <36.862640, 35.487640, 37.484425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798622, 35.712837, 37.537224>,  <36.691925, 36.088165, 37.625225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798622, 35.712837, 37.537224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369182, 0.310342, -0.876009,
		0.890253, 0.152452, 0.429194,
		0.266746, -0.938321, -0.220001,
		36.878647, 35.431339, 37.471222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316933, 36.185688, 37.561424>,  <36.691925, 36.088165, 37.625225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316933, 36.185688, 37.561424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197365, 35.862595, 37.358166>,  <37.125626, 35.668739, 37.236210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197365, 35.862595, 37.358166>,  <37.316933, 36.185688, 37.561424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197365, 35.862595, 37.358166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397709, 0.378593, -0.835760,
		0.867454, -0.451914, 0.208077,
		-0.298915, -0.807738, -0.508143,
		37.107689, 35.620274, 37.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867142, 36.119831, 37.123283>,  <37.316933, 36.185688, 37.561424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867142, 36.119831, 37.123283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570763, 35.889153, 36.985630>,  <37.392937, 35.750748, 36.903038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570763, 35.889153, 36.985630>,  <37.867142, 36.119831, 37.123283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570763, 35.889153, 36.985630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313304, 0.156413, -0.936683,
		0.594006, -0.801848, 0.064787,
		-0.740944, -0.576694, -0.344133,
		37.348480, 35.716145, 36.882389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183788, 35.727470, 36.577385>,  <37.867142, 36.119831, 37.123283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183788, 35.727470, 36.577385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797398, 35.663128, 36.496368>,  <37.565563, 35.624523, 36.447758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797398, 35.663128, 36.496368>,  <38.183788, 35.727470, 36.577385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797398, 35.663128, 36.496368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216926, -0.077404, -0.973115,
		0.140852, -0.983938, 0.109664,
		-0.965973, -0.160854, -0.202539,
		37.507607, 35.614872, 36.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828030, 35.348759, 36.514053>,  <38.183788, 35.727470, 36.577385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828030, 35.348759, 36.514053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214928, 35.411762, 36.434429>,  <39.447067, 35.449562, 36.386654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214928, 35.411762, 36.434429>,  <38.828030, 35.348759, 36.514053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214928, 35.411762, 36.434429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252102, -0.504459, 0.825812,
		0.029651, -0.848948, -0.527643,
		0.967246, 0.157506, -0.199063,
		39.505100, 35.459015, 36.374710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180164, 34.745049, 36.728943>,  <38.828030, 35.348759, 36.514053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180164, 34.745049, 36.728943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481567, 35.007118, 36.707153>,  <39.662411, 35.164360, 36.694080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481567, 35.007118, 36.707153>,  <39.180164, 34.745049, 36.728943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481567, 35.007118, 36.707153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520966, -0.544501, 0.657353,
		0.401019, -0.523703, -0.751611,
		0.753511, 0.655175, -0.054476,
		39.707619, 35.203671, 36.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716179, 34.320488, 36.837242>,  <39.180164, 34.745049, 36.728943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716179, 34.320488, 36.837242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837719, 34.696224, 36.900875>,  <39.910645, 34.921665, 36.939056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837719, 34.696224, 36.900875>,  <39.716179, 34.320488, 36.837242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837719, 34.696224, 36.900875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631310, -0.323570, 0.704805,
		0.713529, -0.113725, -0.691334,
		0.303849, 0.939345, 0.159081,
		39.928875, 34.978027, 36.948601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422661, 34.305538, 36.835690>,  <39.716179, 34.320488, 36.837242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422661, 34.305538, 36.835690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288235, 34.611351, 37.055706>,  <40.207577, 34.794838, 37.187714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288235, 34.611351, 37.055706>,  <40.422661, 34.305538, 36.835690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288235, 34.611351, 37.055706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654324, -0.230533, 0.720219,
		0.677435, 0.601947, -0.422779,
		-0.336069, 0.764536, 0.550039,
		40.187412, 34.840714, 37.220718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983166, 34.480862, 37.151936>,  <40.422661, 34.305538, 36.835690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983166, 34.480862, 37.151936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.701042, 34.672768, 37.360691>,  <40.531769, 34.787910, 37.485947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.701042, 34.672768, 37.360691>,  <40.983166, 34.480862, 37.151936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701042, 34.672768, 37.360691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510087, -0.167791, 0.843598,
		0.492295, 0.861205, -0.126377,
		-0.705306, 0.479762, 0.521892,
		40.489449, 34.816696, 37.517258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338745, 34.898212, 37.681702>,  <40.983166, 34.480862, 37.151936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338745, 34.898212, 37.681702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.960381, 34.844501, 37.799831>,  <40.733360, 34.812275, 37.870708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.960381, 34.844501, 37.799831>,  <41.338745, 34.898212, 37.681702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960381, 34.844501, 37.799831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320618, -0.247965, 0.914176,
		-0.049522, 0.959418, 0.277605,
		-0.945913, -0.134277, 0.295327,
		40.676605, 34.804218, 37.888428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257584, 35.146931, 38.329201>,  <41.338745, 34.898212, 37.681702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257584, 35.146931, 38.329201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946522, 34.896137, 38.310673>,  <40.759884, 34.745663, 38.299557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946522, 34.896137, 38.310673>,  <41.257584, 35.146931, 38.329201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946522, 34.896137, 38.310673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131202, -0.233907, 0.963366,
		-0.614851, 0.743087, 0.264160,
		-0.777653, -0.626984, -0.046323,
		40.713226, 34.708042, 38.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980129, 35.310684, 38.853725>,  <41.257584, 35.146931, 38.329201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980129, 35.310684, 38.853725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788635, 34.971439, 38.762936>,  <40.673737, 34.767891, 38.708462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788635, 34.971439, 38.762936>,  <40.980129, 35.310684, 38.853725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788635, 34.971439, 38.762936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123064, -0.191144, 0.973817,
		-0.869289, 0.494136, -0.012864,
		-0.478739, -0.848112, -0.226970,
		40.645012, 34.717007, 38.694843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324276, 35.328388, 39.199501>,  <40.980129, 35.310684, 38.853725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324276, 35.328388, 39.199501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426662, 34.948746, 39.126102>,  <40.488094, 34.720959, 39.082062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426662, 34.948746, 39.126102>,  <40.324276, 35.328388, 39.199501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426662, 34.948746, 39.126102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254684, -0.249325, 0.934331,
		-0.932533, -0.192422, -0.305541,
		0.255964, -0.949111, -0.183497,
		40.503452, 34.664013, 39.071053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833759, 34.877571, 39.577751>,  <40.324276, 35.328388, 39.199501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833759, 34.877571, 39.577751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161991, 34.660851, 39.504974>,  <40.358929, 34.530819, 39.461308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161991, 34.660851, 39.504974>,  <39.833759, 34.877571, 39.577751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161991, 34.660851, 39.504974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043669, -0.257969, 0.965166,
		-0.569865, -0.799938, -0.188024,
		0.820577, -0.541803, -0.181940,
		40.408165, 34.498310, 39.450394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692276, 34.220215, 39.790466>,  <39.833759, 34.877571, 39.577751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692276, 34.220215, 39.790466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088959, 34.265202, 39.815369>,  <40.326969, 34.292194, 39.830311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088959, 34.265202, 39.815369>,  <39.692276, 34.220215, 39.790466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088959, 34.265202, 39.815369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031815, -0.254477, 0.966555,
		0.124550, -0.960517, -0.248788,
		0.991703, 0.112469, 0.062254,
		40.386471, 34.298943, 39.834045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897442, 33.494057, 40.082272>,  <39.692276, 34.220215, 39.790466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897442, 33.494057, 40.082272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227879, 33.715252, 40.125660>,  <40.426140, 33.847969, 40.151695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227879, 33.715252, 40.125660>,  <39.897442, 33.494057, 40.082272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227879, 33.715252, 40.125660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093530, -0.324365, 0.941297,
		0.555714, -0.767455, -0.319678,
		0.826096, 0.552991, 0.108474,
		40.475708, 33.881149, 40.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355698, 33.137295, 40.403572>,  <39.897442, 33.494057, 40.082272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355698, 33.137295, 40.403572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513935, 33.496460, 40.480774>,  <40.608879, 33.711960, 40.527096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.513935, 33.496460, 40.480774>,  <40.355698, 33.137295, 40.403572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513935, 33.496460, 40.480774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296399, -0.323718, 0.898529,
		0.869281, -0.298251, -0.394204,
		0.395598, 0.897916, 0.193000,
		40.632614, 33.765835, 40.538673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915546, 33.005424, 40.831329>,  <40.355698, 33.137295, 40.403572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915546, 33.005424, 40.831329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880219, 33.397675, 40.901260>,  <40.859020, 33.633026, 40.943218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880219, 33.397675, 40.901260>,  <40.915546, 33.005424, 40.831329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880219, 33.397675, 40.901260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313322, -0.139258, 0.939381,
		0.945531, 0.137746, -0.294953,
		-0.088321, 0.980629, 0.174832,
		40.853722, 33.691864, 40.953709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639412, 33.263557, 41.037777>,  <40.915546, 33.005424, 40.831329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639412, 33.263557, 41.037777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.340023, 33.487934, 41.179272>,  <41.160389, 33.622559, 41.264168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.340023, 33.487934, 41.179272>,  <41.639412, 33.263557, 41.037777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340023, 33.487934, 41.179272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215910, -0.298229, 0.929754,
		0.627031, 0.772274, 0.102105,
		-0.748475, 0.560939, 0.353741,
		41.115482, 33.656216, 41.285393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957294, 33.688530, 41.668037>,  <41.639412, 33.263557, 41.037777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957294, 33.688530, 41.668037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559174, 33.653904, 41.685371>,  <41.320301, 33.633129, 41.695770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559174, 33.653904, 41.685371>,  <41.957294, 33.688530, 41.668037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559174, 33.653904, 41.685371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066150, -0.281402, 0.957307,
		-0.070673, 0.955678, 0.285807,
		-0.995304, -0.086561, 0.043330,
		41.260582, 33.627937, 41.698372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829472, 33.874496, 42.268776>,  <41.957294, 33.688530, 41.668037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829472, 33.874496, 42.268776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.480217, 33.698036, 42.185818>,  <41.270664, 33.592159, 42.136044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.480217, 33.698036, 42.185818>,  <41.829472, 33.874496, 42.268776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480217, 33.698036, 42.185818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094618, -0.263984, 0.959875,
		-0.478198, 0.857728, 0.188754,
		-0.873140, -0.441151, -0.207393,
		41.218273, 33.565689, 42.123600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367233, 34.216763, 42.721157>,  <41.829472, 33.874496, 42.268776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367233, 34.216763, 42.721157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.168594, 33.889179, 42.606133>,  <41.049412, 33.692627, 42.537117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.168594, 33.889179, 42.606133>,  <41.367233, 34.216763, 42.721157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168594, 33.889179, 42.606133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170680, -0.232697, 0.957455,
		-0.851035, 0.524550, -0.024224,
		-0.496596, -0.818962, -0.287564,
		41.019615, 33.643490, 42.519863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.592583, 34.274700, 42.992794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674095, 33.889706, 42.921143>,  <40.723003, 33.658707, 42.878151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674095, 33.889706, 42.921143>,  <40.592583, 34.274700, 42.992794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674095, 33.889706, 42.921143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164021, -0.213948, 0.962976,
		-0.965178, -0.166858, -0.201468,
		0.203784, -0.962489, -0.179130,
		40.735229, 33.600960, 42.867405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102524, 33.913837, 43.353546>,  <40.592583, 34.274700, 42.992794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102524, 33.913837, 43.353546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388195, 33.638096, 43.304989>,  <40.559597, 33.472652, 43.275856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388195, 33.638096, 43.304989>,  <40.102524, 33.913837, 43.353546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388195, 33.638096, 43.304989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117089, -0.288638, 0.950252,
		-0.690098, -0.664439, -0.286855,
		0.714181, -0.689354, -0.121390,
		40.602451, 33.431290, 43.268570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866020, 33.321552, 43.737667>,  <40.102524, 33.913837, 43.353546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866020, 33.321552, 43.737667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252850, 33.261421, 43.655521>,  <40.484947, 33.225342, 43.606236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252850, 33.261421, 43.655521>,  <39.866020, 33.321552, 43.737667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252850, 33.261421, 43.655521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143424, -0.344687, 0.927696,
		-0.210241, -0.926603, -0.311777,
		0.967072, -0.150323, -0.205365,
		40.542973, 33.216324, 43.593910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018978, 32.608757, 43.988338>,  <39.866020, 33.321552, 43.737667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018978, 32.608757, 43.988338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380093, 32.779041, 43.963856>,  <40.596760, 32.881210, 43.949165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.380093, 32.779041, 43.963856>,  <40.018978, 32.608757, 43.988338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380093, 32.779041, 43.963856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257420, -0.420840, 0.869844,
		0.344545, -0.801039, -0.489515,
		0.902787, 0.425711, -0.061206,
		40.650928, 32.906754, 43.945496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388592, 32.155174, 44.232426>,  <40.018978, 32.608757, 43.988338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388592, 32.155174, 44.232426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604088, 32.487648, 44.287418>,  <40.733387, 32.687130, 44.320412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604088, 32.487648, 44.287418>,  <40.388592, 32.155174, 44.232426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604088, 32.487648, 44.287418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123769, -0.239499, 0.962975,
		0.833331, -0.501777, -0.231902,
		0.538740, 0.831180, 0.137477,
		40.765709, 32.737003, 44.328663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067276, 31.929184, 44.524864>,  <40.388592, 32.155174, 44.232426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067276, 31.929184, 44.524864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973064, 32.309509, 44.605339>,  <40.916538, 32.537704, 44.653625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.973064, 32.309509, 44.605339>,  <41.067276, 31.929184, 44.524864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973064, 32.309509, 44.605339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118822, -0.177290, 0.976959,
		0.964577, 0.254006, -0.071221,
		-0.235527, 0.950815, 0.201192,
		40.902405, 32.594753, 44.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449303, 31.997341, 45.088490>,  <41.067276, 31.929184, 44.524864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449303, 31.997341, 45.088490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.230545, 32.331444, 45.111298>,  <41.099289, 32.531906, 45.124981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.230545, 32.331444, 45.111298>,  <41.449303, 31.997341, 45.088490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230545, 32.331444, 45.111298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011678, -0.060486, 0.998101,
		0.837120, 0.546522, 0.023326,
		-0.546895, 0.835257, 0.057017,
		41.066475, 32.582020, 45.128403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625324, 32.237270, 45.635937>,  <41.449303, 31.997341, 45.088490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625324, 32.237270, 45.635937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287830, 32.450855, 45.614029>,  <41.085335, 32.579006, 45.600883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287830, 32.450855, 45.614029>,  <41.625324, 32.237270, 45.635937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287830, 32.450855, 45.614029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048291, 0.026108, 0.998492,
		0.534590, 0.845103, 0.003758,
		-0.843730, 0.533966, -0.054768,
		41.034710, 32.611046, 45.597599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725143, 32.819778, 46.063065>,  <41.625324, 32.237270, 45.635937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725143, 32.819778, 46.063065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325634, 32.814026, 46.044113>,  <41.085930, 32.810574, 46.032742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325634, 32.814026, 46.044113>,  <41.725143, 32.819778, 46.063065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325634, 32.814026, 46.044113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049182, 0.178126, 0.982778,
		-0.005690, 0.983903, -0.178614,
		-0.998774, -0.014377, -0.047377,
		41.026001, 32.809711, 46.029900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490349, 33.336391, 46.527088>,  <41.725143, 32.819778, 46.063065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490349, 33.336391, 46.527088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158695, 33.120464, 46.468952>,  <40.959702, 32.990906, 46.434071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158695, 33.120464, 46.468952>,  <41.490349, 33.336391, 46.527088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158695, 33.120464, 46.468952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189221, 0.026362, 0.981581,
		-0.526047, 0.841367, -0.124003,
		-0.829138, -0.539821, -0.145336,
		40.909954, 32.958519, 46.425350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803146, 33.655018, 46.836941>,  <41.490349, 33.336391, 46.527088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803146, 33.655018, 46.836941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816147, 33.255314, 46.828724>,  <40.823948, 33.015491, 46.823795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816147, 33.255314, 46.828724>,  <40.803146, 33.655018, 46.836941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816147, 33.255314, 46.828724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086582, -0.023290, 0.995972,
		-0.995714, -0.030594, -0.087275,
		0.032503, -0.999260, -0.020541,
		40.825897, 32.955536, 46.822563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619984, 33.389668, 47.562435>,  <40.803146, 33.655018, 46.836941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619984, 33.389668, 47.562435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753269, 33.075691, 47.353500>,  <40.833241, 32.887306, 47.228138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753269, 33.075691, 47.353500>,  <40.619984, 33.389668, 47.562435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753269, 33.075691, 47.353500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124360, -0.585748, 0.800895,
		-0.934612, -0.201914, -0.292797,
		0.333217, -0.784939, -0.522337,
		40.853233, 32.840210, 47.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207142, 32.854446, 47.879326>,  <40.619984, 33.389668, 47.562435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207142, 32.854446, 47.879326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.515804, 32.669731, 47.704376>,  <40.701000, 32.558903, 47.599407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.515804, 32.669731, 47.704376>,  <40.207142, 32.854446, 47.879326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515804, 32.669731, 47.704376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027577, -0.662719, 0.748360,
		-0.635438, -0.589540, -0.498658,
		0.771659, -0.461785, -0.437375,
		40.747299, 32.531193, 47.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911957, 32.180328, 47.865139>,  <40.207142, 32.854446, 47.879326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911957, 32.180328, 47.865139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309319, 32.148510, 47.832127>,  <40.547737, 32.129417, 47.812321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309319, 32.148510, 47.832127>,  <39.911957, 32.180328, 47.865139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309319, 32.148510, 47.832127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015448, -0.620515, 0.784042,
		-0.113576, -0.780150, -0.615196,
		0.993409, -0.079545, -0.082528,
		40.607342, 32.124645, 47.807369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036522, 31.475872, 48.000057>,  <39.911957, 32.180328, 47.865139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036522, 31.475872, 48.000057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388611, 31.653690, 48.066498>,  <40.599865, 31.760382, 48.106361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388611, 31.653690, 48.066498>,  <40.036522, 31.475872, 48.000057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388611, 31.653690, 48.066498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149197, -0.591486, 0.792392,
		0.450499, -0.672700, -0.586963,
		0.880222, 0.444545, 0.166099,
		40.652679, 31.787054, 48.116329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491974, 30.879751, 48.059570>,  <40.036522, 31.475872, 48.000057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491974, 30.879751, 48.059570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634041, 31.199123, 48.254040>,  <40.719280, 31.390747, 48.370720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634041, 31.199123, 48.254040>,  <40.491974, 30.879751, 48.059570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634041, 31.199123, 48.254040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046435, -0.504372, 0.862237,
		0.933649, -0.328814, -0.142061,
		0.355167, 0.798430, 0.486175,
		40.740589, 31.438652, 48.399891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876022, 30.628922, 48.717438>,  <40.491974, 30.879751, 48.059570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876022, 30.628922, 48.717438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865269, 31.018438, 48.807777>,  <40.858818, 31.252148, 48.861980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865269, 31.018438, 48.807777>,  <40.876022, 30.628922, 48.717438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865269, 31.018438, 48.807777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063835, -0.223793, 0.972544,
		0.997598, 0.040559, -0.056147,
		-0.026881, 0.973792, 0.225845,
		40.857204, 31.310575, 48.875530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495560, 30.866590, 48.969471>,  <40.876022, 30.628922, 48.717438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495560, 30.866590, 48.969471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219109, 31.122368, 49.104202>,  <41.053238, 31.275835, 49.185040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219109, 31.122368, 49.104202>,  <41.495560, 30.866590, 48.969471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219109, 31.122368, 49.104202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131844, -0.346676, 0.928672,
		0.710604, 0.686241, 0.155291,
		-0.691129, 0.639444, 0.336826,
		41.011768, 31.314201, 49.205250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678230, 30.909861, 49.670170>,  <41.495560, 30.866590, 48.969471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678230, 30.909861, 49.670170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309364, 31.062904, 49.647453>,  <41.088043, 31.154730, 49.633823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309364, 31.062904, 49.647453>,  <41.678230, 30.909861, 49.670170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309364, 31.062904, 49.647453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178446, -0.290552, 0.940073,
		0.343178, 0.877035, 0.336211,
		-0.922164, 0.382608, -0.056792,
		41.032715, 31.177687, 49.630417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609119, 31.286585, 50.273777>,  <41.678230, 30.909861, 49.670170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609119, 31.286585, 50.273777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225529, 31.223534, 50.179523>,  <40.995377, 31.185703, 50.122971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225529, 31.223534, 50.179523>,  <41.609119, 31.286585, 50.273777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225529, 31.223534, 50.179523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190790, -0.255950, 0.947675,
		-0.209692, 0.953752, 0.215376,
		-0.958973, -0.157628, -0.235637,
		40.937836, 31.176245, 50.108833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206638, 31.622156, 50.789944>,  <41.609119, 31.286585, 50.273777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206638, 31.622156, 50.789944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960556, 31.354805, 50.622715>,  <40.812904, 31.194393, 50.522377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960556, 31.354805, 50.622715>,  <41.206638, 31.622156, 50.789944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960556, 31.354805, 50.622715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227556, -0.357187, 0.905890,
		-0.754810, 0.652446, 0.067650,
		-0.615208, -0.668380, -0.418076,
		40.775993, 31.154291, 50.497292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576336, 31.770433, 51.160561>,  <41.206638, 31.622156, 50.789944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576336, 31.770433, 51.160561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.571323, 31.404966, 50.998055>,  <40.568314, 31.185686, 50.900551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.571323, 31.404966, 50.998055>,  <40.576336, 31.770433, 51.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571323, 31.404966, 50.998055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296222, -0.384670, 0.874232,
		-0.955037, 0.131306, -0.265826,
		-0.012536, -0.913667, -0.406270,
		40.567562, 31.130867, 50.876175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938038, 31.466118, 51.431042>,  <40.576336, 31.770433, 51.160561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938038, 31.466118, 51.431042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179417, 31.166536, 51.321556>,  <40.324242, 30.986788, 51.255863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179417, 31.166536, 51.321556>,  <39.938038, 31.466118, 51.431042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179417, 31.166536, 51.321556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164460, -0.452775, 0.876326,
		-0.780261, -0.483798, -0.396398,
		0.603444, -0.748955, -0.273717,
		40.360451, 30.941851, 51.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147671, 31.370682, 51.151424>,  <39.938038, 31.466118, 51.431042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147671, 31.370682, 51.151424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967186, 31.721071, 51.219639>,  <38.858894, 31.931305, 51.260567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967186, 31.721071, 51.219639>,  <39.147671, 31.370682, 51.151424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967186, 31.721071, 51.219639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891067, 0.431711, 0.140092,
		0.049093, 0.215172, -0.975341,
		-0.451210, 0.875972, 0.170539,
		38.831821, 31.983862, 51.270802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948280, 30.999805, 51.694965>,  <39.147671, 31.370682, 51.151424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948280, 30.999805, 51.694965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550083, 31.028913, 51.670658>,  <38.311165, 31.046377, 51.656075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550083, 31.028913, 51.670658>,  <38.948280, 30.999805, 51.694965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550083, 31.028913, 51.670658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053500, -0.097914, -0.993756,
		-0.078253, -0.992532, 0.093581,
		-0.995497, 0.072758, -0.060763,
		38.251434, 31.050745, 51.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733063, 30.467268, 51.143944>,  <38.948280, 30.999805, 51.694965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733063, 30.467268, 51.143944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434010, 30.731911, 51.167011>,  <38.254578, 30.890696, 51.180851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434010, 30.731911, 51.167011>,  <38.733063, 30.467268, 51.143944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434010, 30.731911, 51.167011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095206, -0.020830, -0.995239,
		-0.657254, -0.749563, 0.078563,
		-0.747632, 0.661605, 0.057672,
		38.209721, 30.930391, 51.184315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217598, 30.333738, 50.622845>,  <38.733063, 30.467268, 51.143944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217598, 30.333738, 50.622845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106514, 30.704973, 50.722069>,  <38.039864, 30.927713, 50.781601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106514, 30.704973, 50.722069>,  <38.217598, 30.333738, 50.622845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106514, 30.704973, 50.722069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134231, 0.218194, -0.966630,
		-0.951242, -0.301735, 0.063985,
		-0.277705, 0.928088, 0.248058,
		38.023201, 30.983400, 50.796486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614956, 30.414879, 50.256031>,  <38.217598, 30.333738, 50.622845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614956, 30.414879, 50.256031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779354, 30.767534, 50.348808>,  <37.877995, 30.979128, 50.404472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779354, 30.767534, 50.348808>,  <37.614956, 30.414879, 50.256031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779354, 30.767534, 50.348808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094231, 0.294145, -0.951104,
		-0.906753, 0.369046, 0.203971,
		0.410999, 0.881637, 0.231941,
		37.902653, 31.032024, 50.418392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195950, 30.837866, 49.881374>,  <37.614956, 30.414879, 50.256031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195950, 30.837866, 49.881374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506596, 31.085297, 49.929092>,  <37.692982, 31.233755, 49.957722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506596, 31.085297, 49.929092>,  <37.195950, 30.837866, 49.881374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506596, 31.085297, 49.929092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288974, 0.518061, -0.805051,
		-0.559790, 0.590740, 0.581087,
		0.776614, 0.618579, 0.119297,
		37.739578, 31.270870, 49.964882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959949, 31.460041, 49.526897>,  <37.195950, 30.837866, 49.881374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959949, 31.460041, 49.526897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353001, 31.522469, 49.567081>,  <37.588829, 31.559925, 49.591190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.353001, 31.522469, 49.567081>,  <36.959949, 31.460041, 49.526897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353001, 31.522469, 49.567081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005054, 0.518535, -0.855042,
		-0.185537, 0.840693, 0.508736,
		0.982624, 0.156071, 0.100456,
		37.647789, 31.569290, 49.597218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063087, 32.117474, 49.440468>,  <36.959949, 31.460041, 49.526897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063087, 32.117474, 49.440468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424118, 31.961336, 49.367809>,  <37.640736, 31.867653, 49.324215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.424118, 31.961336, 49.367809>,  <37.063087, 32.117474, 49.440468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424118, 31.961336, 49.367809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009618, 0.440084, -0.897905,
		0.430432, 0.808677, 0.400962,
		0.902572, -0.390343, -0.181649,
		37.694889, 31.844233, 49.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297276, 32.585682, 48.990025>,  <37.063087, 32.117474, 49.440468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297276, 32.585682, 48.990025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572346, 32.297256, 48.956142>,  <37.737389, 32.124203, 48.935814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572346, 32.297256, 48.956142>,  <37.297276, 32.585682, 48.990025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572346, 32.297256, 48.956142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131847, 0.238757, -0.962087,
		0.713945, 0.650437, 0.259257,
		0.687676, -0.721060, -0.084701,
		37.778648, 32.080940, 48.930733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954250, 32.847622, 48.768021>,  <37.297276, 32.585682, 48.990025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954250, 32.847622, 48.768021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895908, 32.469070, 48.652710>,  <37.860905, 32.241940, 48.583523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895908, 32.469070, 48.652710>,  <37.954250, 32.847622, 48.768021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895908, 32.469070, 48.652710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121935, 0.271971, -0.954549,
		0.981763, -0.174377, 0.075727,
		-0.145856, -0.946374, -0.288274,
		37.852150, 32.185158, 48.566227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414509, 32.870804, 48.298763>,  <37.954250, 32.847622, 48.768021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414509, 32.870804, 48.298763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211746, 32.535500, 48.218388>,  <38.090088, 32.334316, 48.170162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211746, 32.535500, 48.218388>,  <38.414509, 32.870804, 48.298763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211746, 32.535500, 48.218388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219315, 0.100021, -0.970514,
		0.833638, -0.536024, 0.133142,
		-0.506902, -0.838257, -0.200939,
		38.059677, 32.284023, 48.158104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888599, 32.452812, 47.876675>,  <38.414509, 32.870804, 48.298763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888599, 32.452812, 47.876675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509308, 32.341919, 47.814693>,  <38.281734, 32.275383, 47.777504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.509308, 32.341919, 47.814693>,  <38.888599, 32.452812, 47.876675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509308, 32.341919, 47.814693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121944, 0.132701, -0.983626,
		0.293256, -0.951595, -0.092024,
		-0.948225, -0.277233, -0.154957,
		38.224842, 32.258751, 47.768208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015308, 32.278400, 47.301785>,  <38.888599, 32.452812, 47.876675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015308, 32.278400, 47.301785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615318, 32.275578, 47.301754>,  <38.375324, 32.273884, 47.301735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615318, 32.275578, 47.301754>,  <39.015308, 32.278400, 47.301785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615318, 32.275578, 47.301754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001234, 0.185622, -0.982620,
		0.006953, -0.982596, -0.185626,
		-0.999975, -0.007061, -0.000078,
		38.315327, 32.273460, 47.301731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756821, 31.856623, 46.771877>,  <39.015308, 32.278400, 47.301785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756821, 31.856623, 46.771877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462421, 32.108879, 46.870346>,  <38.285782, 32.260235, 46.929428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462421, 32.108879, 46.870346>,  <38.756821, 31.856623, 46.771877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462421, 32.108879, 46.870346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083902, 0.275855, -0.957530,
		-0.671766, -0.725393, -0.150116,
		-0.735996, 0.630642, 0.246172,
		38.241623, 32.298073, 46.944199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293449, 31.751129, 46.230274>,  <38.756821, 31.856623, 46.771877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293449, 31.751129, 46.230274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221287, 32.112350, 46.386196>,  <38.177990, 32.329082, 46.479748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221287, 32.112350, 46.386196>,  <38.293449, 31.751129, 46.230274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221287, 32.112350, 46.386196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070029, 0.383507, -0.920879,
		-0.981095, -0.193434, -0.005949,
		-0.180411, 0.903053, 0.389803,
		38.167164, 32.383266, 46.503136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694328, 31.987362, 45.910404>,  <38.293449, 31.751129, 46.230274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694328, 31.987362, 45.910404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.866642, 32.309715, 46.072872>,  <37.970032, 32.503128, 46.170353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.866642, 32.309715, 46.072872>,  <37.694328, 31.987362, 45.910404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866642, 32.309715, 46.072872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088351, 0.485568, -0.869723,
		-0.898118, 0.338781, 0.280378,
		0.430788, 0.805885, 0.406166,
		37.995880, 32.551479, 46.194721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367092, 32.499470, 45.612270>,  <37.694328, 31.987362, 45.910404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367092, 32.499470, 45.612270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710350, 32.671097, 45.725044>,  <37.916306, 32.774075, 45.792709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710350, 32.671097, 45.725044>,  <37.367092, 32.499470, 45.612270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710350, 32.671097, 45.725044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177233, 0.267817, -0.947028,
		-0.481849, 0.862655, 0.153780,
		0.858143, 0.429069, 0.281938,
		37.967793, 32.799816, 45.809628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262825, 33.153465, 45.401272>,  <37.367092, 32.499470, 45.612270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262825, 33.153465, 45.401272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657776, 33.094833, 45.425297>,  <37.894745, 33.059654, 45.439713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657776, 33.094833, 45.425297>,  <37.262825, 33.153465, 45.401272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657776, 33.094833, 45.425297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114156, 0.395547, -0.911324,
		0.109829, 0.906673, 0.407286,
		0.987373, -0.146583, 0.060060,
		37.953987, 33.050858, 45.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581043, 33.793884, 45.294548>,  <37.262825, 33.153465, 45.401272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581043, 33.793884, 45.294548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860424, 33.522198, 45.204365>,  <38.028053, 33.359184, 45.150257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860424, 33.522198, 45.204365>,  <37.581043, 33.793884, 45.294548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860424, 33.522198, 45.204365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162398, 0.457236, -0.874393,
		0.696989, 0.574107, 0.429660,
		0.698451, -0.679218, -0.225455,
		38.069958, 33.318432, 45.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136135, 34.201942, 45.111706>,  <37.581043, 33.793884, 45.294548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136135, 34.201942, 45.111706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174942, 33.836132, 44.954617>,  <38.198227, 33.616646, 44.860363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174942, 33.836132, 44.954617>,  <38.136135, 34.201942, 45.111706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174942, 33.836132, 44.954617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082124, 0.385881, -0.918886,
		0.991889, 0.121402, -0.037666,
		0.097020, -0.914526, -0.392721,
		38.204048, 33.561775, 44.836800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518719, 34.322498, 44.497139>,  <38.136135, 34.201942, 45.111706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518719, 34.322498, 44.497139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343479, 33.970352, 44.424454>,  <38.238335, 33.759064, 44.380844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343479, 33.970352, 44.424454>,  <38.518719, 34.322498, 44.497139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343479, 33.970352, 44.424454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366044, 0.359337, -0.858422,
		0.821025, -0.309558, -0.479679,
		-0.438098, -0.880370, -0.181713,
		38.212051, 33.706242, 44.369938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.997299, 32.115280, 26.629290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650818, 31.916775, 26.605953>,  <44.442928, 31.797670, 26.591951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650818, 31.916775, 26.605953>,  <44.997299, 32.115280, 26.629290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650818, 31.916775, 26.605953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199354, 0.236156, 0.951046,
		-0.458196, 0.835433, -0.303493,
		-0.866207, -0.496268, -0.058341,
		44.390957, 31.767895, 26.588451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446690, 32.546925, 26.864546>,  <44.997299, 32.115280, 26.629290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446690, 32.546925, 26.864546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337223, 32.169250, 26.937893>,  <44.271545, 31.942646, 26.981901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337223, 32.169250, 26.937893>,  <44.446690, 32.546925, 26.864546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337223, 32.169250, 26.937893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254355, 0.254900, 0.932915,
		-0.927584, 0.208665, -0.309915,
		-0.273663, -0.944185, 0.183366,
		44.255123, 31.885996, 26.992903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994160, 32.641678, 27.492167>,  <44.446690, 32.546925, 26.864546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994160, 32.641678, 27.492167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067299, 32.249146, 27.468281>,  <44.111183, 32.013626, 27.453949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067299, 32.249146, 27.468281>,  <43.994160, 32.641678, 27.492167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067299, 32.249146, 27.468281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337581, -0.119712, 0.933653,
		-0.923367, -0.150555, -0.353166,
		0.182844, -0.981327, -0.059714,
		44.122150, 31.954748, 27.450367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450115, 32.279434, 27.863459>,  <43.994160, 32.641678, 27.492167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450115, 32.279434, 27.863459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749031, 32.013660, 27.859642>,  <43.928379, 31.854197, 27.857351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749031, 32.013660, 27.859642>,  <43.450115, 32.279434, 27.863459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749031, 32.013660, 27.859642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182671, -0.219214, 0.958424,
		-0.638901, -0.714474, -0.285188,
		0.747286, -0.664434, -0.009542,
		43.973217, 31.814331, 27.856779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197647, 31.666529, 28.217808>,  <43.450115, 32.279434, 27.863459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197647, 31.666529, 28.217808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595676, 31.632473, 28.238159>,  <43.834492, 31.612040, 28.250370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595676, 31.632473, 28.238159>,  <43.197647, 31.666529, 28.217808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595676, 31.632473, 28.238159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078960, -0.369563, 0.925845,
		-0.060022, -0.925297, -0.374463,
		0.995069, -0.085138, 0.050879,
		43.894196, 31.606932, 28.253424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311211, 31.183977, 28.744904>,  <43.197647, 31.666529, 28.217808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311211, 31.183977, 28.744904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675129, 31.347946, 28.718901>,  <43.893482, 31.446327, 28.703299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675129, 31.347946, 28.718901>,  <43.311211, 31.183977, 28.744904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675129, 31.347946, 28.718901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014062, 0.186982, 0.982263,
		0.414808, -0.892749, 0.175881,
		0.909800, 0.409924, -0.065008,
		43.948071, 31.470922, 28.699398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779915, 30.853956, 29.257439>,  <43.311211, 31.183977, 28.744904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779915, 30.853956, 29.257439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942554, 31.208466, 29.168718>,  <44.040138, 31.421171, 29.115486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942554, 31.208466, 29.168718>,  <43.779915, 30.853956, 29.257439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942554, 31.208466, 29.168718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129560, 0.184387, 0.974277,
		0.904372, -0.424880, -0.039853,
		0.406602, 0.886272, -0.221802,
		44.064537, 31.474348, 29.102179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294834, 30.823400, 29.645994>,  <43.779915, 30.853956, 29.257439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294834, 30.823400, 29.645994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231064, 31.210972, 29.570351>,  <44.192802, 31.443514, 29.524965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231064, 31.210972, 29.570351>,  <44.294834, 30.823400, 29.645994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231064, 31.210972, 29.570351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049174, 0.199114, 0.978742,
		0.985984, 0.146742, -0.079391,
		-0.159430, 0.968928, -0.189108,
		44.183235, 31.501650, 29.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777020, 31.254917, 30.004513>,  <44.294834, 30.823400, 29.645994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777020, 31.254917, 30.004513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464924, 31.496153, 29.938162>,  <44.277668, 31.640894, 29.898352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464924, 31.496153, 29.938162>,  <44.777020, 31.254917, 30.004513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464924, 31.496153, 29.938162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039783, 0.312511, 0.949081,
		0.624217, 0.733909, -0.267825,
		-0.780237, 0.603087, -0.165878,
		44.230854, 31.677078, 29.888399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954659, 31.913797, 30.427189>,  <44.777020, 31.254917, 30.004513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954659, 31.913797, 30.427189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568626, 31.946592, 30.327669>,  <44.337006, 31.966269, 30.267958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568626, 31.946592, 30.327669>,  <44.954659, 31.913797, 30.427189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568626, 31.946592, 30.327669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185188, 0.458213, 0.869337,
		0.185275, 0.885053, -0.427029,
		-0.965079, 0.081986, -0.248797,
		44.279102, 31.971188, 30.253031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913929, 32.580708, 30.585173>,  <44.954659, 31.913797, 30.427189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913929, 32.580708, 30.585173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542183, 32.435936, 30.556091>,  <44.319134, 32.349075, 30.538643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542183, 32.435936, 30.556091>,  <44.913929, 32.580708, 30.585173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542183, 32.435936, 30.556091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308243, 0.652444, 0.692317,
		-0.203132, 0.665828, -0.717921,
		-0.929367, -0.361926, -0.072704,
		44.263374, 32.327358, 30.534281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403637, 33.114384, 30.437389>,  <44.913929, 32.580708, 30.585173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403637, 33.114384, 30.437389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190472, 32.821259, 30.606619>,  <44.062572, 32.645382, 30.708157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190472, 32.821259, 30.606619>,  <44.403637, 33.114384, 30.437389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190472, 32.821259, 30.606619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284913, 0.626188, 0.725750,
		-0.796764, 0.266220, -0.542489,
		-0.532909, -0.732814, 0.423075,
		44.030598, 32.601414, 30.733541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789646, 33.407860, 30.499922>,  <44.403637, 33.114384, 30.437389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789646, 33.407860, 30.499922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819508, 33.114025, 30.769680>,  <43.837425, 32.937725, 30.931534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819508, 33.114025, 30.769680>,  <43.789646, 33.407860, 30.499922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819508, 33.114025, 30.769680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316608, 0.623830, 0.714560,
		-0.945614, -0.266865, -0.186004,
		0.074656, -0.734588, 0.674394,
		43.841904, 32.893650, 30.971998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330818, 33.534630, 30.969748>,  <43.789646, 33.407860, 30.499922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330818, 33.534630, 30.969748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542942, 33.273003, 31.185513>,  <43.670216, 33.116024, 31.314972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542942, 33.273003, 31.185513>,  <43.330818, 33.534630, 30.969748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542942, 33.273003, 31.185513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178528, 0.535827, 0.825237,
		-0.828795, -0.533931, 0.167384,
		0.530309, -0.654070, 0.539413,
		43.702034, 33.076782, 31.347336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978058, 33.476021, 31.691879>,  <43.330818, 33.534630, 30.969748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978058, 33.476021, 31.691879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366280, 33.387955, 31.730959>,  <43.599213, 33.335117, 31.754406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366280, 33.387955, 31.730959>,  <42.978058, 33.476021, 31.691879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366280, 33.387955, 31.730959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033801, 0.526095, 0.849754,
		-0.238484, -0.821433, 0.518048,
		0.970558, -0.220163, 0.097700,
		43.657448, 33.321907, 31.760269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975666, 33.128284, 32.400139>,  <42.978058, 33.476021, 31.691879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975666, 33.128284, 32.400139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339134, 33.264996, 32.304226>,  <43.557217, 33.347023, 32.246677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.339134, 33.264996, 32.304226>,  <42.975666, 33.128284, 32.400139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339134, 33.264996, 32.304226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111150, 0.355566, 0.928019,
		0.402438, -0.869919, 0.285105,
		0.908675, 0.341780, -0.239785,
		43.611736, 33.367531, 32.232292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292713, 33.114410, 33.051674>,  <42.975666, 33.128284, 32.400139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292713, 33.114410, 33.051674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551353, 33.335995, 32.841900>,  <43.706539, 33.468945, 32.716034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551353, 33.335995, 32.841900>,  <43.292713, 33.114410, 33.051674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551353, 33.335995, 32.841900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527521, 0.171895, 0.831970,
		0.551027, -0.814604, -0.181078,
		0.646600, 0.553961, -0.524439,
		43.745335, 33.502182, 32.684566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088478, 32.960751, 33.348820>,  <43.292713, 33.114410, 33.051674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088478, 32.960751, 33.348820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078396, 33.312756, 33.159103>,  <44.072346, 33.523956, 33.045273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078396, 33.312756, 33.159103>,  <44.088478, 32.960751, 33.348820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078396, 33.312756, 33.159103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505725, 0.420475, 0.753288,
		0.862326, -0.220869, -0.455642,
		-0.025208, 0.880010, -0.474286,
		44.070835, 33.576759, 33.016819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791237, 33.277637, 33.420879>,  <44.088478, 32.960751, 33.348820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791237, 33.277637, 33.420879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588383, 33.604702, 33.311886>,  <44.466671, 33.800941, 33.246490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588383, 33.604702, 33.311886>,  <44.791237, 33.277637, 33.420879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588383, 33.604702, 33.311886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419967, 0.510520, 0.750331,
		0.752626, 0.266081, -0.602291,
		-0.507131, 0.817661, -0.272485,
		44.436245, 33.850002, 33.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249001, 33.803188, 33.252262>,  <44.791237, 33.277637, 33.420879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249001, 33.803188, 33.252262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908218, 34.002113, 33.317806>,  <44.703751, 34.121468, 33.357132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908218, 34.002113, 33.317806>,  <45.249001, 33.803188, 33.252262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908218, 34.002113, 33.317806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496496, 0.667845, 0.554504,
		0.166330, 0.553768, -0.815889,
		-0.851954, 0.497316, 0.163861,
		44.652634, 34.151310, 33.366966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422672, 34.548340, 33.285950>,  <45.249001, 33.803188, 33.252262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422672, 34.548340, 33.285950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087017, 34.490517, 33.495689>,  <44.885624, 34.455822, 33.621532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087017, 34.490517, 33.495689>,  <45.422672, 34.548340, 33.285950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087017, 34.490517, 33.495689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309259, 0.666240, 0.678589,
		-0.447437, 0.731593, -0.514365,
		-0.839142, -0.144554, 0.524352,
		44.835274, 34.447151, 33.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208965, 35.189110, 33.644455>,  <45.422672, 34.548340, 33.285950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208965, 35.189110, 33.644455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062954, 34.884327, 33.858440>,  <44.975349, 34.701458, 33.986832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.062954, 34.884327, 33.858440>,  <45.208965, 35.189110, 33.644455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062954, 34.884327, 33.858440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329999, 0.431408, 0.839636,
		-0.870550, 0.483025, 0.093969,
		-0.365026, -0.761954, 0.534960,
		44.953445, 34.655739, 34.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036194, 35.254791, 33.610252>,  <45.208965, 35.189110, 33.644455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036194, 35.254791, 33.610252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400261, 35.414791, 33.567196>,  <46.618702, 35.510792, 33.541363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400261, 35.414791, 33.567196>,  <46.036194, 35.254791, 33.610252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400261, 35.414791, 33.567196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123569, 0.014166, -0.992235,
		-0.395372, 0.916404, 0.062321,
		0.910171, 0.400002, -0.107638,
		46.673313, 35.534790, 33.534904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970413, 35.929634, 33.257320>,  <46.036194, 35.254791, 33.610252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970413, 35.929634, 33.257320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.351978, 35.831738, 33.187859>,  <46.580917, 35.772999, 33.146183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.351978, 35.831738, 33.187859>,  <45.970413, 35.929634, 33.257320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351978, 35.831738, 33.187859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141975, 0.141739, -0.979670,
		0.264383, 0.959172, 0.100458,
		0.953910, -0.244745, -0.173652,
		46.638153, 35.758312, 33.135761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260551, 36.541885, 32.876858>,  <45.970413, 35.929634, 33.257320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260551, 36.541885, 32.876858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462006, 36.202248, 32.813122>,  <46.582878, 35.998466, 32.774879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462006, 36.202248, 32.813122>,  <46.260551, 36.541885, 32.876858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462006, 36.202248, 32.813122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058431, 0.217499, -0.974310,
		0.861939, 0.481385, 0.159153,
		0.503634, -0.849095, -0.159343,
		46.613094, 35.947517, 32.765320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819500, 36.787575, 32.351608>,  <46.260551, 36.541885, 32.876858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819500, 36.787575, 32.351608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838234, 36.388123, 32.360950>,  <46.849476, 36.148453, 32.366554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.838234, 36.388123, 32.360950>,  <46.819500, 36.787575, 32.351608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838234, 36.388123, 32.360950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207700, -0.013130, -0.978104,
		0.977070, 0.050664, 0.206801,
		0.046840, -0.998629, 0.023352,
		46.852287, 36.088535, 32.367954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290127, 36.626659, 31.878771>,  <46.819500, 36.787575, 32.351608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290127, 36.626659, 31.878771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097515, 36.280819, 31.936172>,  <46.981949, 36.073315, 31.970613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097515, 36.280819, 31.936172>,  <47.290127, 36.626659, 31.878771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097515, 36.280819, 31.936172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007800, -0.167956, -0.985764,
		0.876395, -0.473555, 0.087620,
		-0.481529, -0.864602, 0.143502,
		46.953056, 36.021439, 31.979223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675858, 36.151260, 31.522156>,  <47.290127, 36.626659, 31.878771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675858, 36.151260, 31.522156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.333561, 35.953022, 31.581600>,  <47.128181, 35.834080, 31.617268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.333561, 35.953022, 31.581600>,  <47.675858, 36.151260, 31.522156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333561, 35.953022, 31.581600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017710, -0.259000, -0.965715,
		0.517099, -0.829035, 0.212860,
		-0.855742, -0.495600, 0.148611,
		47.076839, 35.804340, 31.626184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.787022, 35.481197, 31.280607>,  <47.675858, 36.151260, 31.522156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.787022, 35.481197, 31.280607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.391617, 35.541622, 31.278309>,  <47.154373, 35.577877, 31.276930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.391617, 35.541622, 31.278309>,  <47.787022, 35.481197, 31.280607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.391617, 35.541622, 31.278309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010928, -0.109305, -0.993948,
		-0.150779, -0.982462, 0.109700,
		-0.988508, 0.151065, -0.005745,
		47.095066, 35.586941, 31.276585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543030, 34.832619, 30.901619>,  <47.787022, 35.481197, 31.280607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.543030, 34.832619, 30.901619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.259907, 35.114937, 30.889935>,  <47.090031, 35.284328, 30.882923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.259907, 35.114937, 30.889935>,  <47.543030, 34.832619, 30.901619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259907, 35.114937, 30.889935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096855, -0.137927, -0.985695,
		-0.699730, -0.694857, 0.165986,
		-0.707812, 0.705797, -0.029211,
		47.047562, 35.326675, 30.881170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.052513, 34.574123, 30.476913>,  <47.543030, 34.832619, 30.901619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.052513, 34.574123, 30.476913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016628, 34.972485, 30.481407>,  <46.995098, 35.211502, 30.484102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016628, 34.972485, 30.481407>,  <47.052513, 34.574123, 30.476913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016628, 34.972485, 30.481407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178147, -0.004949, -0.983992,
		-0.979906, -0.090276, 0.177862,
		-0.089711, 0.995905, 0.011233,
		46.989716, 35.271255, 30.484777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510807, 34.553314, 30.110258>,  <47.052513, 34.574123, 30.476913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510807, 34.553314, 30.110258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650105, 34.928036, 30.096872>,  <46.733681, 35.152870, 30.088840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650105, 34.928036, 30.096872>,  <46.510807, 34.553314, 30.110258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650105, 34.928036, 30.096872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210991, 0.043548, -0.976518,
		-0.913352, 0.347125, 0.212823,
		0.348241, 0.936808, -0.033466,
		46.754578, 35.209080, 30.086832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977242, 35.018448, 29.866091>,  <46.510807, 34.553314, 30.110258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977242, 35.018448, 29.866091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325928, 35.182220, 29.758400>,  <46.535137, 35.280483, 29.693785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325928, 35.182220, 29.758400>,  <45.977242, 35.018448, 29.866091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325928, 35.182220, 29.758400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287263, -0.018131, -0.957680,
		-0.396987, 0.912160, 0.101810,
		0.871712, 0.409432, -0.269227,
		46.587440, 35.305050, 29.677631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804634, 35.477215, 29.332491>,  <45.977242, 35.018448, 29.866091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804634, 35.477215, 29.332491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.201370, 35.463249, 29.283449>,  <46.439411, 35.454868, 29.254025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.201370, 35.463249, 29.283449>,  <45.804634, 35.477215, 29.332491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201370, 35.463249, 29.283449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127036, -0.190484, -0.973436,
		0.010633, 0.981069, -0.193365,
		0.991841, -0.034915, -0.122606,
		46.498924, 35.452774, 29.246668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894718, 35.797314, 28.667923>,  <45.804634, 35.477215, 29.332491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894718, 35.797314, 28.667923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215660, 35.573784, 28.751766>,  <46.408226, 35.439667, 28.802073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.215660, 35.573784, 28.751766>,  <45.894718, 35.797314, 28.667923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215660, 35.573784, 28.751766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000424, -0.351730, -0.936101,
		0.596841, 0.751001, -0.282451,
		0.802360, -0.558823, 0.209609,
		46.456367, 35.406136, 28.814650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406097, 35.953205, 28.118105>,  <45.894718, 35.797314, 28.667923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406097, 35.953205, 28.118105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.527901, 35.598225, 28.256500>,  <46.600983, 35.385235, 28.339537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.527901, 35.598225, 28.256500>,  <46.406097, 35.953205, 28.118105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527901, 35.598225, 28.256500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068719, -0.382759, -0.921289,
		0.950027, 0.256765, -0.177539,
		0.304510, -0.887450, 0.345987,
		46.619255, 35.331989, 28.360296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905464, 35.876095, 27.623974>,  <46.406097, 35.953205, 28.118105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905464, 35.876095, 27.623974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.796265, 35.538925, 27.809425>,  <46.730743, 35.336624, 27.920696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.796265, 35.538925, 27.809425>,  <46.905464, 35.876095, 27.623974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796265, 35.538925, 27.809425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188388, -0.425764, -0.885006,
		0.943387, -0.328952, -0.042562,
		-0.273003, -0.842921, 0.463631,
		46.714363, 35.286049, 27.948515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101181, 35.422844, 27.137747>,  <46.905464, 35.876095, 27.623974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101181, 35.422844, 27.137747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.872921, 35.199356, 27.378477>,  <46.735966, 35.065262, 27.522915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.872921, 35.199356, 27.378477>,  <47.101181, 35.422844, 27.137747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872921, 35.199356, 27.378477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406233, -0.444848, -0.798176,
		0.713677, -0.699959, 0.026882,
		-0.570649, -0.558719, 0.601825,
		46.701725, 35.031742, 27.559025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256474, 34.778580, 26.917013>,  <47.101181, 35.422844, 27.137747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256474, 34.778580, 26.917013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.897202, 34.777943, 27.092867>,  <46.681641, 34.777561, 27.198380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.897202, 34.777943, 27.092867>,  <47.256474, 34.778580, 26.917013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897202, 34.777943, 27.092867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394320, -0.439259, -0.807194,
		0.194399, -0.898359, 0.393904,
		-0.898176, -0.001593, 0.439633,
		46.627750, 34.777466, 27.224756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919186, 34.088905, 26.748066>,  <47.256474, 34.778580, 26.917013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919186, 34.088905, 26.748066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610344, 34.333626, 26.816832>,  <46.425041, 34.480457, 26.858091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610344, 34.333626, 26.816832>,  <46.919186, 34.088905, 26.748066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610344, 34.333626, 26.816832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498183, -0.414745, -0.761446,
		-0.394560, -0.673555, 0.625017,
		-0.772099, 0.611809, 0.171912,
		46.378712, 34.517166, 26.868406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378998, 33.657001, 26.814743>,  <46.919186, 34.088905, 26.748066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378998, 33.657001, 26.814743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229450, 34.013683, 26.712700>,  <46.139721, 34.227692, 26.651474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.229450, 34.013683, 26.712700>,  <46.378998, 33.657001, 26.814743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229450, 34.013683, 26.712700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570494, -0.437961, -0.694785,
		-0.731273, -0.114220, 0.672454,
		-0.373867, 0.891708, -0.255107,
		46.117290, 34.281197, 26.636168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893555, 33.476265, 26.506960>,  <46.378998, 33.657001, 26.814743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893555, 33.476265, 26.506960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899807, 33.856983, 26.384428>,  <45.903557, 34.085415, 26.310909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899807, 33.856983, 26.384428>,  <45.893555, 33.476265, 26.506960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899807, 33.856983, 26.384428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643626, -0.224878, -0.731557,
		-0.765181, 0.208593, 0.609088,
		0.015627, 0.951797, -0.306328,
		45.904495, 34.142521, 26.292530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.463707, 34.745956, 40.255180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181919, 34.462933, 40.232971>,  <41.012848, 34.293118, 40.219646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181919, 34.462933, 40.232971>,  <41.463707, 34.745956, 40.255180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181919, 34.462933, 40.232971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091011, 0.167639, -0.981638,
		0.703875, -0.686481, -0.182493,
		-0.704469, -0.707559, -0.055519,
		40.970577, 34.250664, 40.216316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725483, 34.294434, 39.740021>,  <41.463707, 34.745956, 40.255180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725483, 34.294434, 39.740021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326908, 34.281395, 39.771137>,  <41.087765, 34.273571, 39.789806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326908, 34.281395, 39.771137>,  <41.725483, 34.294434, 39.740021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326908, 34.281395, 39.771137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079674, 0.061223, -0.994939,
		0.027666, -0.997592, -0.063602,
		-0.996437, -0.032593, 0.077789,
		41.027977, 34.271614, 39.794476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449932, 33.672039, 39.309669>,  <41.725483, 34.294434, 39.740021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449932, 33.672039, 39.309669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135643, 33.915867, 39.351746>,  <40.947071, 34.062164, 39.376991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135643, 33.915867, 39.351746>,  <41.449932, 33.672039, 39.309669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135643, 33.915867, 39.351746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121025, 0.015283, -0.992532,
		-0.606628, -0.792583, 0.061766,
		-0.785720, 0.609573, 0.105193,
		40.899925, 34.098740, 39.383305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890041, 33.415405, 38.837986>,  <41.449932, 33.672039, 39.309669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890041, 33.415405, 38.837986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776917, 33.794556, 38.896717>,  <40.709042, 34.022045, 38.931953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776917, 33.794556, 38.896717>,  <40.890041, 33.415405, 38.837986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776917, 33.794556, 38.896717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121258, 0.116514, -0.985759,
		-0.951480, -0.296588, 0.081986,
		-0.282812, 0.947872, 0.146824,
		40.692074, 34.078918, 38.940765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223095, 33.491833, 38.487297>,  <40.890041, 33.415405, 38.837986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223095, 33.491833, 38.487297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348038, 33.867405, 38.545044>,  <40.423004, 34.092747, 38.579693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348038, 33.867405, 38.545044>,  <40.223095, 33.491833, 38.487297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348038, 33.867405, 38.545044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057817, 0.170484, -0.983663,
		-0.948205, 0.298904, 0.107537,
		0.312354, 0.938931, 0.144372,
		40.441742, 34.149086, 38.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668541, 33.966793, 38.226048>,  <40.223095, 33.491833, 38.487297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668541, 33.966793, 38.226048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986137, 34.208267, 38.254715>,  <40.176697, 34.353153, 38.271915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986137, 34.208267, 38.254715>,  <39.668541, 33.966793, 38.226048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986137, 34.208267, 38.254715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199897, 0.370594, -0.907029,
		-0.574122, 0.705848, 0.414925,
		0.793993, 0.603688, 0.071670,
		40.224335, 34.389374, 38.276215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425800, 34.556530, 38.242973>,  <39.668541, 33.966793, 38.226048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425800, 34.556530, 38.242973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804207, 34.591087, 38.118015>,  <40.031250, 34.611824, 38.043041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804207, 34.591087, 38.118015>,  <39.425800, 34.556530, 38.242973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804207, 34.591087, 38.118015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317568, 0.439864, -0.840042,
		0.064834, 0.893899, 0.443555,
		0.946016, 0.086396, -0.312392,
		40.088013, 34.617004, 38.024300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571815, 35.366146, 38.219509>,  <39.425800, 34.556530, 38.242973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571815, 35.366146, 38.219509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832878, 35.172874, 37.986073>,  <39.989513, 35.056911, 37.846008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832878, 35.172874, 37.986073>,  <39.571815, 35.366146, 38.219509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832878, 35.172874, 37.986073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226771, 0.610375, -0.758958,
		0.722923, 0.627679, 0.288793,
		0.652654, -0.483178, -0.583594,
		40.028675, 35.027920, 37.810993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810894, 35.904381, 37.826729>,  <39.571815, 35.366146, 38.219509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810894, 35.904381, 37.826729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948864, 35.587475, 37.625397>,  <40.031647, 35.397331, 37.504597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948864, 35.587475, 37.625397>,  <39.810894, 35.904381, 37.826729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948864, 35.587475, 37.625397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126736, 0.492020, -0.861309,
		0.930036, 0.360875, 0.069300,
		0.344922, -0.792266, -0.503332,
		40.052341, 35.349796, 37.474396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395554, 36.081760, 37.379616>,  <39.810894, 35.904381, 37.826729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395554, 36.081760, 37.379616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231678, 35.746555, 37.235451>,  <40.133354, 35.545433, 37.148952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231678, 35.746555, 37.235451>,  <40.395554, 36.081760, 37.379616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231678, 35.746555, 37.235451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143841, 0.330807, -0.932672,
		0.900815, -0.433946, -0.014987,
		-0.409687, -0.838008, -0.360415,
		40.108772, 35.495152, 37.127327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850044, 35.830376, 36.824444>,  <40.395554, 36.081760, 37.379616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850044, 35.830376, 36.824444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488781, 35.668388, 36.767437>,  <40.272022, 35.571198, 36.733234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488781, 35.668388, 36.767437>,  <40.850044, 35.830376, 36.824444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488781, 35.668388, 36.767437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016420, 0.299130, -0.954071,
		0.428998, -0.864015, -0.263512,
		-0.903156, -0.404967, -0.142513,
		40.217834, 35.546898, 36.724682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811325, 35.580154, 36.235023>,  <40.850044, 35.830376, 36.824444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811325, 35.580154, 36.235023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415569, 35.568577, 36.291969>,  <40.178116, 35.561630, 36.326138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415569, 35.568577, 36.291969>,  <40.811325, 35.580154, 36.235023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415569, 35.568577, 36.291969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145140, 0.239949, -0.959874,
		-0.006382, -0.970354, -0.241604,
		-0.989391, -0.028941, 0.142369,
		40.118752, 35.559895, 36.334679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414536, 34.979961, 36.251305>,  <40.811325, 35.580154, 36.235023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414536, 34.979961, 36.251305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132244, 34.697865, 36.224239>,  <39.962868, 34.528606, 36.208000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132244, 34.697865, 36.224239>,  <40.414536, 34.979961, 36.251305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132244, 34.697865, 36.224239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028573, -0.123756, 0.991901,
		-0.707907, 0.698078, 0.107489,
		-0.705727, -0.705245, -0.067661,
		39.920525, 34.486290, 36.203941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468460, 34.357185, 35.796608>,  <40.414536, 34.979961, 36.251305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468460, 34.357185, 35.796608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799431, 34.459377, 35.596569>,  <40.998013, 34.520691, 35.476547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799431, 34.459377, 35.596569>,  <40.468460, 34.357185, 35.796608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799431, 34.459377, 35.596569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384920, 0.390410, 0.836312,
		0.408908, -0.884481, 0.224693,
		0.827424, 0.255486, -0.500096,
		41.047661, 34.536022, 35.446541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832108, 33.794716, 36.163250>,  <40.468460, 34.357185, 35.796608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832108, 33.794716, 36.163250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003193, 33.568336, 36.445175>,  <41.105846, 33.432510, 36.614330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003193, 33.568336, 36.445175>,  <40.832108, 33.794716, 36.163250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003193, 33.568336, 36.445175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289494, 0.652900, 0.699939,
		-0.856302, -0.503415, 0.115418,
		0.427716, -0.565946, 0.704814,
		41.131508, 33.398552, 36.656620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653202, 33.037323, 36.249104>,  <40.832108, 33.794716, 36.163250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653202, 33.037323, 36.249104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021492, 32.911858, 36.341957>,  <41.242466, 32.836578, 36.397671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021492, 32.911858, 36.341957>,  <40.653202, 33.037323, 36.249104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021492, 32.911858, 36.341957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390095, -0.724615, 0.568119,
		-0.009988, -0.613635, -0.789527,
		0.920720, -0.313664, 0.232138,
		41.297707, 32.817757, 36.411598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602539, 32.396870, 36.326035>,  <40.653202, 33.037323, 36.249104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602539, 32.396870, 36.326035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943558, 32.452633, 36.527523>,  <41.148167, 32.486092, 36.648415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943558, 32.452633, 36.527523>,  <40.602539, 32.396870, 36.326035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943558, 32.452633, 36.527523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367104, -0.526294, 0.766974,
		0.372027, -0.838797, -0.397511,
		0.852543, 0.139407, 0.503722,
		41.199322, 32.494453, 36.678638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844376, 31.719774, 36.587509>,  <40.602539, 32.396870, 36.326035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844376, 31.719774, 36.587509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007183, 32.010685, 36.808559>,  <41.104870, 32.185230, 36.941189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007183, 32.010685, 36.808559>,  <40.844376, 31.719774, 36.587509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007183, 32.010685, 36.808559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196614, -0.521072, 0.830558,
		0.892006, -0.446711, -0.069095,
		0.407023, 0.727278, 0.552629,
		41.129292, 32.228867, 36.974350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116035, 31.350231, 37.178368>,  <40.844376, 31.719774, 36.587509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116035, 31.350231, 37.178368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130402, 31.723213, 37.322166>,  <41.139023, 31.947002, 37.408447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130402, 31.723213, 37.322166>,  <41.116035, 31.350231, 37.178368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130402, 31.723213, 37.322166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280409, -0.335874, 0.899200,
		0.959208, -0.133100, 0.249406,
		0.035914, 0.932455, 0.359495,
		41.141174, 32.002949, 37.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508518, 31.396479, 37.792690>,  <41.116035, 31.350231, 37.178368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508518, 31.396479, 37.792690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298996, 31.735138, 37.830235>,  <41.173283, 31.938334, 37.852760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298996, 31.735138, 37.830235>,  <41.508518, 31.396479, 37.792690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298996, 31.735138, 37.830235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303319, -0.288350, 0.908214,
		0.796004, 0.447259, 0.407845,
		-0.523809, 0.846648, 0.093865,
		41.141853, 31.989132, 37.858395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685303, 31.723064, 38.491898>,  <41.508518, 31.396479, 37.792690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685303, 31.723064, 38.491898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316093, 31.815121, 38.368572>,  <41.094566, 31.870354, 38.294579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316093, 31.815121, 38.368572>,  <41.685303, 31.723064, 38.491898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316093, 31.815121, 38.368572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342764, -0.127947, 0.930668,
		0.174736, 0.964710, 0.196983,
		-0.923027, 0.230140, -0.308311,
		41.039185, 31.884163, 38.276077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430161, 32.135712, 39.059822>,  <41.685303, 31.723064, 38.491898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430161, 32.135712, 39.059822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109226, 32.013428, 38.854771>,  <40.916664, 31.940058, 38.731739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109226, 32.013428, 38.854771>,  <41.430161, 32.135712, 39.059822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109226, 32.013428, 38.854771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446715, -0.262043, 0.855441,
		-0.395850, 0.915355, 0.073681,
		-0.802339, -0.305712, -0.512632,
		40.868523, 31.921715, 38.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808777, 32.583088, 39.222198>,  <41.430161, 32.135712, 39.059822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808777, 32.583088, 39.222198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686279, 32.219948, 39.107639>,  <40.612782, 32.002064, 39.038902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686279, 32.219948, 39.107639>,  <40.808777, 32.583088, 39.222198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686279, 32.219948, 39.107639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498642, -0.103299, 0.860631,
		-0.810908, 0.406373, -0.421057,
		-0.306242, -0.907849, -0.286401,
		40.594406, 31.947594, 39.021721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167271, 32.468658, 39.629684>,  <40.808777, 32.583088, 39.222198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167271, 32.468658, 39.629684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186432, 32.110744, 39.452118>,  <40.197929, 31.895996, 39.345577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186432, 32.110744, 39.452118>,  <40.167271, 32.468658, 39.629684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186432, 32.110744, 39.452118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459142, -0.414420, 0.785777,
		-0.887071, 0.166181, -0.430685,
		0.047904, -0.894785, -0.443920,
		40.200802, 31.842308, 39.318943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528358, 32.243435, 39.545425>,  <40.167271, 32.468658, 39.629684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528358, 32.243435, 39.545425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759571, 31.917444, 39.561920>,  <39.898300, 31.721851, 39.571815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759571, 31.917444, 39.561920>,  <39.528358, 32.243435, 39.545425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759571, 31.917444, 39.561920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389537, -0.231176, 0.891526,
		-0.717036, -0.531392, -0.451088,
		0.578031, -0.814972, 0.041235,
		39.932980, 31.672953, 39.574291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093925, 31.684866, 39.683674>,  <39.528358, 32.243435, 39.545425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093925, 31.684866, 39.683674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439968, 31.491405, 39.736839>,  <39.647594, 31.375330, 39.768738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439968, 31.491405, 39.736839>,  <39.093925, 31.684866, 39.683674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439968, 31.491405, 39.736839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399125, -0.503307, 0.766408,
		-0.303777, -0.716076, -0.628453,
		0.865112, -0.483649, 0.132911,
		39.699501, 31.346310, 39.776711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914913, 30.959459, 39.732376>,  <39.093925, 31.684866, 39.683674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914913, 30.959459, 39.732376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271683, 31.008249, 39.906548>,  <39.485744, 31.037523, 40.011051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271683, 31.008249, 39.906548>,  <38.914913, 30.959459, 39.732376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271683, 31.008249, 39.906548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377833, -0.328011, 0.865824,
		0.248435, -0.936766, -0.246474,
		0.891921, 0.121975, 0.435430,
		39.539261, 31.044842, 40.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972931, 30.388683, 40.200512>,  <38.914913, 30.959459, 39.732376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972931, 30.388683, 40.200512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269905, 30.628555, 40.319958>,  <39.448090, 30.772478, 40.391624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269905, 30.628555, 40.319958>,  <38.972931, 30.388683, 40.200512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269905, 30.628555, 40.319958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192414, -0.236084, 0.952492,
		0.641689, -0.764623, -0.059891,
		0.742437, 0.599680, 0.298617,
		39.492638, 30.808458, 40.409542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284012, 29.667402, 40.121597>,  <38.972931, 30.388683, 40.200512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284012, 29.667402, 40.121597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093685, 29.355890, 39.958084>,  <38.979488, 29.168983, 39.859978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093685, 29.355890, 39.958084>,  <39.284012, 29.667402, 40.121597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093685, 29.355890, 39.958084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063876, 0.494136, -0.867035,
		0.877222, -0.386438, -0.284863,
		-0.475817, -0.778778, -0.408782,
		38.950939, 29.122257, 39.835449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658546, 29.594624, 39.562054>,  <39.284012, 29.667402, 40.121597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658546, 29.594624, 39.562054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291695, 29.445431, 39.505833>,  <39.071583, 29.355915, 39.472099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291695, 29.445431, 39.505833>,  <39.658546, 29.594624, 39.562054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291695, 29.445431, 39.505833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082429, 0.522491, -0.848651,
		0.389965, -0.766741, -0.509938,
		-0.917133, -0.372978, -0.140551,
		39.016556, 29.333536, 39.463669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503994, 29.910255, 38.914867>,  <39.658546, 29.594624, 39.562054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503994, 29.910255, 38.914867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158852, 29.724504, 38.994698>,  <38.951767, 29.613054, 39.042595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158852, 29.724504, 38.994698>,  <39.503994, 29.910255, 38.914867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158852, 29.724504, 38.994698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447513, 0.518333, -0.728741,
		0.234961, -0.718114, -0.655062,
		-0.862859, -0.464375, 0.199577,
		38.899994, 29.585192, 39.054569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206039, 29.584454, 38.320244>,  <39.503994, 29.910255, 38.914867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206039, 29.584454, 38.320244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929161, 29.703640, 38.583176>,  <38.763035, 29.775152, 38.740936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929161, 29.703640, 38.583176>,  <39.206039, 29.584454, 38.320244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929161, 29.703640, 38.583176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402580, 0.596522, -0.694328,
		-0.598999, -0.745237, -0.292953,
		-0.692192, 0.297965, 0.657334,
		38.721504, 29.793030, 38.780376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555065, 29.498587, 37.980865>,  <39.206039, 29.584454, 38.320244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555065, 29.498587, 37.980865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463894, 29.741575, 38.285240>,  <38.409191, 29.887367, 38.467865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463894, 29.741575, 38.285240>,  <38.555065, 29.498587, 37.980865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463894, 29.741575, 38.285240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543958, 0.568739, -0.616965,
		-0.807564, -0.554541, 0.200809,
		-0.227925, 0.607471, 0.760940,
		38.395515, 29.923817, 38.513523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847359, 29.587589, 37.959621>,  <38.555065, 29.498587, 37.980865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847359, 29.587589, 37.959621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992367, 29.910290, 38.146267>,  <38.079372, 30.103910, 38.258255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992367, 29.910290, 38.146267>,  <37.847359, 29.587589, 37.959621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992367, 29.910290, 38.146267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577815, 0.587394, -0.566656,
		-0.731236, -0.064189, 0.679098,
		0.362524, 0.806752, 0.466613,
		38.101124, 30.152315, 38.286251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288162, 29.985630, 38.024963>,  <37.847359, 29.587589, 37.959621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288162, 29.985630, 38.024963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573563, 30.261740, 38.073021>,  <37.744804, 30.427404, 38.101856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573563, 30.261740, 38.073021>,  <37.288162, 29.985630, 38.024963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573563, 30.261740, 38.073021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575253, 0.675023, -0.461983,
		-0.399994, 0.260514, 0.878713,
		0.713505, 0.690273, 0.120143,
		37.787613, 30.468822, 38.109062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916901, 30.577766, 38.108551>,  <37.288162, 29.985630, 38.024963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916901, 30.577766, 38.108551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285225, 30.712688, 38.030247>,  <37.506222, 30.793642, 37.983265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285225, 30.712688, 38.030247>,  <36.916901, 30.577766, 38.108551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285225, 30.712688, 38.030247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376972, 0.641142, -0.668453,
		-0.099961, 0.689319, 0.717529,
		0.920815, 0.337307, -0.195765,
		37.561470, 30.813881, 37.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971603, 31.290789, 38.257160>,  <36.916901, 30.577766, 38.108551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971603, 31.290789, 38.257160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255585, 31.220844, 37.984280>,  <37.425972, 31.178877, 37.820553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255585, 31.220844, 37.984280>,  <36.971603, 31.290789, 38.257160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255585, 31.220844, 37.984280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524352, 0.515415, -0.677792,
		0.470136, 0.838911, 0.274229,
		0.709949, -0.174862, -0.682199,
		37.468571, 31.168386, 37.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225491, 31.893015, 37.941471>,  <36.971603, 31.290789, 38.257160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225491, 31.893015, 37.941471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346222, 31.616257, 37.679119>,  <37.418659, 31.450201, 37.521709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346222, 31.616257, 37.679119>,  <37.225491, 31.893015, 37.941471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346222, 31.616257, 37.679119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514520, 0.460954, -0.723043,
		0.802602, 0.555697, -0.216867,
		0.301828, -0.691898, -0.655879,
		37.436771, 31.408688, 37.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487331, 32.200600, 37.309662>,  <37.225491, 31.893015, 37.941471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487331, 32.200600, 37.309662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387100, 31.830784, 37.194820>,  <37.326962, 31.608892, 37.125916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387100, 31.830784, 37.194820>,  <37.487331, 32.200600, 37.309662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387100, 31.830784, 37.194820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515200, 0.378436, -0.768996,
		0.819622, -0.044775, -0.571152,
		-0.250576, -0.924544, -0.287106,
		37.311928, 31.553421, 37.108688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644352, 32.195225, 36.597256>,  <37.487331, 32.200600, 37.309662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644352, 32.195225, 36.597256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376736, 31.911545, 36.686184>,  <37.216167, 31.741339, 36.739540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376736, 31.911545, 36.686184>,  <37.644352, 32.195225, 36.597256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376736, 31.911545, 36.686184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582186, 0.314134, -0.749919,
		0.462002, -0.631158, -0.623052,
		-0.669040, -0.709197, 0.222321,
		37.176025, 31.698786, 36.752880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.593525, 27.112810, 42.215500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213230, 27.003696, 42.274406>,  <39.985054, 26.938229, 42.309750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213230, 27.003696, 42.274406>,  <40.593525, 27.112810, 42.215500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213230, 27.003696, 42.274406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255020, 0.418127, -0.871857,
		0.176252, -0.866463, -0.467094,
		-0.950736, -0.272785, 0.147270,
		39.928009, 26.921860, 42.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323807, 26.761160, 41.582893>,  <40.593525, 27.112810, 42.215500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323807, 26.761160, 41.582893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.979340, 26.842428, 41.769276>,  <39.772659, 26.891190, 41.881104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.979340, 26.842428, 41.769276>,  <40.323807, 26.761160, 41.582893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979340, 26.842428, 41.769276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429981, 0.197763, -0.880912,
		-0.271126, -0.958963, -0.082947,
		-0.861166, 0.203172, 0.465955,
		39.720989, 26.903379, 41.909061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890427, 26.470598, 41.204407>,  <40.323807, 26.761160, 41.582893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890427, 26.470598, 41.204407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700935, 26.763069, 41.400757>,  <39.587242, 26.938551, 41.518566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700935, 26.763069, 41.400757>,  <39.890427, 26.470598, 41.204407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700935, 26.763069, 41.400757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392315, 0.323821, -0.860946,
		-0.788462, -0.600432, 0.133450,
		-0.473726, 0.731178, 0.490879,
		39.558819, 26.982422, 41.548019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272320, 26.421301, 40.875477>,  <39.890427, 26.470598, 41.204407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272320, 26.421301, 40.875477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312855, 26.784275, 41.038593>,  <39.337177, 27.002060, 41.136463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312855, 26.784275, 41.038593>,  <39.272320, 26.421301, 40.875477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312855, 26.784275, 41.038593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325707, 0.417571, -0.848263,
		-0.940024, -0.046859, 0.337873,
		0.101337, 0.907435, 0.407789,
		39.343254, 27.056505, 41.160931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713837, 26.774532, 40.716743>,  <39.272320, 26.421301, 40.875477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713837, 26.774532, 40.716743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954514, 27.078146, 40.816208>,  <39.098919, 27.260315, 40.875885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954514, 27.078146, 40.816208>,  <38.713837, 26.774532, 40.716743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954514, 27.078146, 40.816208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464478, 0.585779, -0.664171,
		-0.649788, 0.284131, 0.705015,
		0.601694, 0.759034, 0.248659,
		39.135021, 27.305857, 40.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305721, 27.394287, 40.668629>,  <38.713837, 26.774532, 40.716743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305721, 27.394287, 40.668629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.672638, 27.553030, 40.681736>,  <38.892788, 27.648275, 40.689602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.672638, 27.553030, 40.681736>,  <38.305721, 27.394287, 40.668629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672638, 27.553030, 40.681736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283043, 0.707680, -0.647360,
		-0.280099, 0.584546, 0.761479,
		0.917296, 0.396856, 0.032769,
		38.947826, 27.672087, 40.691566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270599, 28.054150, 40.642086>,  <38.305721, 27.394287, 40.668629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270599, 28.054150, 40.642086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.658367, 28.043901, 40.544464>,  <38.891029, 28.037752, 40.485893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.658367, 28.043901, 40.544464>,  <38.270599, 28.054150, 40.642086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658367, 28.043901, 40.544464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106706, 0.851579, -0.513252,
		0.220977, 0.523600, 0.822807,
		0.969424, -0.025619, -0.244051,
		38.949196, 28.036217, 40.471249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518257, 28.750956, 40.844410>,  <38.270599, 28.054150, 40.642086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518257, 28.750956, 40.844410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795280, 28.622835, 40.585869>,  <38.961494, 28.545963, 40.430744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795280, 28.622835, 40.585869>,  <38.518257, 28.750956, 40.844410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795280, 28.622835, 40.585869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195059, 0.779486, -0.595276,
		0.694493, 0.538339, 0.477358,
		0.692554, -0.320302, -0.646355,
		39.003048, 28.526745, 40.391964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022858, 29.255753, 40.693878>,  <38.518257, 28.750956, 40.844410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022858, 29.255753, 40.693878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953789, 29.020838, 40.377579>,  <38.912346, 28.879889, 40.187798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953789, 29.020838, 40.377579>,  <39.022858, 29.255753, 40.693878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953789, 29.020838, 40.377579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023611, 0.805043, -0.592747,
		0.984697, -0.083680, -0.152874,
		-0.172671, -0.587285, -0.790747,
		38.901989, 28.844652, 40.140354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416824, 29.976112, 40.758034>,  <39.022858, 29.255753, 40.693878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416824, 29.976112, 40.758034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487282, 30.363077, 40.830795>,  <39.529556, 30.595257, 40.874451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487282, 30.363077, 40.830795>,  <39.416824, 29.976112, 40.758034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487282, 30.363077, 40.830795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211752, -0.143225, 0.966772,
		0.961319, -0.208808, 0.179623,
		0.176144, 0.967412, 0.181900,
		39.540127, 30.653301, 40.885365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890598, 30.079725, 41.402618>,  <39.416824, 29.976112, 40.758034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890598, 30.079725, 41.402618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.701832, 30.427969, 41.346992>,  <39.588573, 30.636915, 41.313618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.701832, 30.427969, 41.346992>,  <39.890598, 30.079725, 41.402618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701832, 30.427969, 41.346992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171587, 0.064022, 0.983086,
		0.864785, 0.487795, 0.119172,
		-0.471916, 0.870607, -0.139065,
		39.560257, 30.689152, 41.305271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210461, 30.583509, 41.871380>,  <39.890598, 30.079725, 41.402618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210461, 30.583509, 41.871380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843903, 30.717852, 41.784271>,  <39.623966, 30.798456, 41.732006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.843903, 30.717852, 41.784271>,  <40.210461, 30.583509, 41.871380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843903, 30.717852, 41.784271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196233, 0.097227, 0.975725,
		0.348874, 0.936882, -0.023193,
		-0.916395, 0.335854, -0.217767,
		39.568985, 30.818607, 41.718941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062088, 30.923676, 42.424595>,  <40.210461, 30.583509, 41.871380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062088, 30.923676, 42.424595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697128, 30.899107, 42.262730>,  <39.478153, 30.884365, 42.165611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697128, 30.899107, 42.262730>,  <40.062088, 30.923676, 42.424595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697128, 30.899107, 42.262730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406468, 0.019973, 0.913447,
		-0.048025, 0.997912, -0.043190,
		-0.912402, -0.061423, -0.404660,
		39.423409, 30.880680, 42.141331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569527, 31.510597, 42.679646>,  <40.062088, 30.923676, 42.424595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569527, 31.510597, 42.679646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351246, 31.203569, 42.545162>,  <39.220276, 31.019352, 42.464470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351246, 31.203569, 42.545162>,  <39.569527, 31.510597, 42.679646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351246, 31.203569, 42.545162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502649, -0.021193, 0.864231,
		-0.670485, 0.640613, -0.374254,
		-0.545706, -0.767572, -0.336212,
		39.187534, 30.973297, 42.444298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923092, 31.740583, 42.923386>,  <39.569527, 31.510597, 42.679646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923092, 31.740583, 42.923386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875565, 31.350281, 42.849873>,  <38.847046, 31.116098, 42.805763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875565, 31.350281, 42.849873>,  <38.923092, 31.740583, 42.923386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875565, 31.350281, 42.849873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395883, -0.123191, 0.910000,
		-0.910581, 0.180885, -0.371648,
		-0.118821, -0.975758, -0.183785,
		38.839920, 31.057552, 42.794739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313419, 31.609543, 43.229710>,  <38.923092, 31.740583, 42.923386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313419, 31.609543, 43.229710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489143, 31.251949, 43.194393>,  <38.594578, 31.037394, 43.173203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489143, 31.251949, 43.194393>,  <38.313419, 31.609543, 43.229710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489143, 31.251949, 43.194393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291300, -0.234737, 0.927385,
		-0.849794, -0.381692, -0.363541,
		0.439312, -0.893985, -0.088291,
		38.620937, 30.983753, 43.167908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911774, 31.128061, 43.639343>,  <38.313419, 31.609543, 43.229710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911774, 31.128061, 43.639343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263084, 30.942312, 43.593761>,  <38.473869, 30.830862, 43.566410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263084, 30.942312, 43.593761>,  <37.911774, 31.128061, 43.639343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263084, 30.942312, 43.593761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066493, -0.354632, 0.932639,
		-0.473507, -0.811537, -0.342342,
		0.878276, -0.464375, -0.113959,
		38.526566, 30.802999, 43.559574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870895, 30.431892, 43.804974>,  <37.911774, 31.128061, 43.639343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870895, 30.431892, 43.804974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253670, 30.521866, 43.878387>,  <38.483334, 30.575850, 43.922436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.253670, 30.521866, 43.878387>,  <37.870895, 30.431892, 43.804974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253670, 30.521866, 43.878387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092255, -0.363824, 0.926888,
		0.275265, -0.903900, -0.327404,
		0.956932, 0.224935, 0.183537,
		38.540749, 30.589346, 43.933449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182747, 29.893051, 44.218227>,  <37.870895, 30.431892, 43.804974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182747, 29.893051, 44.218227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449120, 30.187622, 44.265900>,  <38.608944, 30.364365, 44.294502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449120, 30.187622, 44.265900>,  <38.182747, 29.893051, 44.218227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449120, 30.187622, 44.265900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176206, -0.310510, 0.934096,
		0.724900, -0.601048, -0.336543,
		0.665936, 0.736427, 0.119181,
		38.648899, 30.408550, 44.301655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796665, 29.602398, 44.379898>,  <38.182747, 29.893051, 44.218227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796665, 29.602398, 44.379898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823154, 29.975203, 44.522427>,  <38.839050, 30.198885, 44.607944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823154, 29.975203, 44.522427>,  <38.796665, 29.602398, 44.379898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823154, 29.975203, 44.522427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407247, -0.351256, 0.843071,
		0.910914, 0.089277, -0.402822,
		0.066226, 0.932013, 0.356321,
		38.843021, 30.254807, 44.629322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366108, 29.633673, 44.735928>,  <38.796665, 29.602398, 44.379898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366108, 29.633673, 44.735928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224911, 29.982386, 44.871803>,  <39.140190, 30.191614, 44.953327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224911, 29.982386, 44.871803>,  <39.366108, 29.633673, 44.735928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224911, 29.982386, 44.871803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528578, -0.113753, 0.841229,
		0.772009, 0.476502, -0.420651,
		-0.352997, 0.871783, 0.339686,
		39.119011, 30.243921, 44.973709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952915, 30.026934, 45.046051>,  <39.366108, 29.633673, 44.735928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952915, 30.026934, 45.046051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609585, 30.165459, 45.197495>,  <39.403587, 30.248573, 45.288361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609585, 30.165459, 45.197495>,  <39.952915, 30.026934, 45.046051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609585, 30.165459, 45.197495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355275, -0.131262, 0.925500,
		0.370207, 0.928891, -0.010370,
		-0.858328, 0.346311, 0.378606,
		39.352085, 30.269352, 45.311077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135174, 30.462872, 45.541286>,  <39.952915, 30.026934, 45.046051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135174, 30.462872, 45.541286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755924, 30.360792, 45.617107>,  <39.528374, 30.299545, 45.662601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755924, 30.360792, 45.617107>,  <40.135174, 30.462872, 45.541286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755924, 30.360792, 45.617107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238482, -0.176729, 0.954931,
		-0.210198, 0.950600, 0.228422,
		-0.948126, -0.255199, 0.189553,
		39.471485, 30.284233, 45.673973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.355011, 31.282866, 45.642925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575188, 30.968637, 45.529861>,  <35.707294, 30.780102, 45.462025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575188, 30.968637, 45.529861>,  <35.355011, 31.282866, 45.642925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575188, 30.968637, 45.529861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144276, 0.422977, -0.894581,
		0.822313, 0.451633, 0.346163,
		0.550442, -0.785568, -0.282660,
		35.740318, 30.732967, 45.445065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974846, 31.503723, 45.316547>,  <35.355011, 31.282866, 45.642925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974846, 31.503723, 45.316547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930763, 31.134527, 45.169064>,  <35.904316, 30.913010, 45.080574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930763, 31.134527, 45.169064>,  <35.974846, 31.503723, 45.316547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930763, 31.134527, 45.169064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061190, 0.363962, -0.929402,
		0.992024, -0.124985, 0.016368,
		-0.110203, -0.922990, -0.368706,
		35.897701, 30.857630, 45.058453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604778, 31.311371, 44.789700>,  <35.974846, 31.503723, 45.316547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604778, 31.311371, 44.789700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331799, 31.032984, 44.700352>,  <36.168011, 30.865952, 44.646744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331799, 31.032984, 44.700352>,  <36.604778, 31.311371, 44.789700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331799, 31.032984, 44.700352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147090, 0.168580, -0.974651,
		0.715983, -0.698003, -0.012676,
		-0.682446, -0.695969, -0.223370,
		36.127064, 30.824194, 44.633339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723389, 31.350891, 44.171406>,  <36.604778, 31.311371, 44.789700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723389, 31.350891, 44.171406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438522, 31.070105, 44.174671>,  <36.267601, 30.901632, 44.176632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438522, 31.070105, 44.174671>,  <36.723389, 31.350891, 44.171406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438522, 31.070105, 44.174671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167248, 0.158361, -0.973114,
		0.681798, -0.694383, -0.230181,
		-0.712165, -0.701965, 0.008164,
		36.224873, 30.859516, 44.177120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800003, 31.034483, 43.564419>,  <36.723389, 31.350891, 44.171406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800003, 31.034483, 43.564419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412731, 30.985447, 43.651688>,  <36.180367, 30.956024, 43.704048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.412731, 30.985447, 43.651688>,  <36.800003, 31.034483, 43.564419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412731, 30.985447, 43.651688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241949, 0.235843, -0.941190,
		0.063926, -0.964028, -0.257999,
		-0.968181, -0.122589, 0.218169,
		36.122276, 30.948669, 43.717136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587719, 30.711641, 43.001171>,  <36.800003, 31.034483, 43.564419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587719, 30.711641, 43.001171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274086, 30.872538, 43.190239>,  <36.085907, 30.969074, 43.303680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274086, 30.872538, 43.190239>,  <36.587719, 30.711641, 43.001171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274086, 30.872538, 43.190239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350190, 0.342046, -0.871993,
		-0.512425, -0.849239, -0.127333,
		-0.784084, 0.402240, 0.472667,
		36.038860, 30.993210, 43.332039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959061, 30.527508, 42.594284>,  <36.587719, 30.711641, 43.001171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959061, 30.527508, 42.594284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851112, 30.850132, 42.804668>,  <35.786343, 31.043707, 42.930901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851112, 30.850132, 42.804668>,  <35.959061, 30.527508, 42.594284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851112, 30.850132, 42.804668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390519, 0.407608, -0.825440,
		-0.880151, -0.428157, 0.204976,
		-0.269868, 0.806559, 0.525960,
		35.770153, 31.092100, 42.962456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464550, 30.715420, 42.214569>,  <35.959061, 30.527508, 42.594284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464550, 30.715420, 42.214569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 31.035286, 42.454205>,  <35.490440, 31.227205, 42.597984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480732, 31.035286, 42.454205>,  <35.464550, 30.715420, 42.214569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480732, 31.035286, 42.454205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367033, 0.569550, -0.735459,
		-0.929328, -0.190133, 0.316541,
		0.040451, 0.799663, 0.599084,
		35.492867, 31.275185, 42.633930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806622, 31.034447, 42.229939>,  <35.464550, 30.715420, 42.214569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806622, 31.034447, 42.229939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080559, 31.316572, 42.303173>,  <35.244923, 31.485847, 42.347115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080559, 31.316572, 42.303173>,  <34.806622, 31.034447, 42.229939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080559, 31.316572, 42.303173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404197, 0.576748, -0.709920,
		-0.606311, 0.412182, 0.680069,
		0.684844, 0.705314, 0.183086,
		35.286011, 31.528166, 42.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429276, 31.621176, 42.140602>,  <34.806622, 31.034447, 42.229939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429276, 31.621176, 42.140602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810242, 31.741871, 42.123344>,  <35.038822, 31.814287, 42.112991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810242, 31.741871, 42.123344>,  <34.429276, 31.621176, 42.140602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810242, 31.741871, 42.123344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251266, 0.697095, -0.671509,
		-0.172545, 0.650395, 0.739739,
		0.952414, 0.301737, -0.043142,
		35.095966, 31.832392, 42.110401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473518, 32.357494, 42.152611>,  <34.429276, 31.621176, 42.140602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473518, 32.357494, 42.152611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805363, 32.227921, 41.970707>,  <35.004471, 32.150177, 41.861565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805363, 32.227921, 41.970707>,  <34.473518, 32.357494, 42.152611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805363, 32.227921, 41.970707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148888, 0.656646, -0.739357,
		0.538119, 0.681089, 0.496534,
		0.829615, -0.323934, -0.454760,
		35.054249, 32.130741, 41.834278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681355, 32.933960, 41.953876>,  <34.473518, 32.357494, 42.152611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681355, 32.933960, 41.953876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884708, 32.653419, 41.754017>,  <35.006721, 32.485096, 41.634102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884708, 32.653419, 41.754017>,  <34.681355, 32.933960, 41.953876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884708, 32.653419, 41.754017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112913, 0.520928, -0.846100,
		0.853693, 0.486565, 0.185643,
		0.508389, -0.701348, -0.499652,
		35.037224, 32.443016, 41.604122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074379, 33.301502, 41.479404>,  <34.681355, 32.933960, 41.953876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074379, 33.301502, 41.479404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079071, 32.938213, 41.312077>,  <35.081886, 32.720238, 41.211681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079071, 32.938213, 41.312077>,  <35.074379, 33.301502, 41.479404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079071, 32.938213, 41.312077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211378, 0.406643, -0.888797,
		0.977334, 0.098849, -0.187209,
		0.011729, -0.908224, -0.418320,
		35.082588, 32.665745, 41.186581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472607, 33.355049, 40.882942>,  <35.074379, 33.301502, 41.479404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472607, 33.355049, 40.882942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278328, 33.009422, 40.830040>,  <35.161758, 32.802048, 40.798298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278328, 33.009422, 40.830040>,  <35.472607, 33.355049, 40.882942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278328, 33.009422, 40.830040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158595, 0.235894, -0.958750,
		0.859618, -0.444690, -0.251610,
		-0.485700, -0.864063, -0.132254,
		35.132618, 32.750202, 40.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271069, 33.395741, 40.685471>,  <35.472607, 33.355049, 40.882942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271069, 33.395741, 40.685471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390167, 33.777290, 40.700787>,  <36.461628, 34.006222, 40.709976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.390167, 33.777290, 40.700787>,  <36.271069, 33.395741, 40.685471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390167, 33.777290, 40.700787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375348, -0.153853, 0.914026,
		0.877759, -0.257776, -0.403845,
		0.297746, 0.953877, 0.038290,
		36.479492, 34.063454, 40.712273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970772, 33.379848, 40.797401>,  <36.271069, 33.395741, 40.685471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970772, 33.379848, 40.797401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815521, 33.723904, 40.929775>,  <36.722370, 33.930336, 41.009197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815521, 33.723904, 40.929775>,  <36.970772, 33.379848, 40.797401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815521, 33.723904, 40.929775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367624, -0.184781, 0.911432,
		0.845110, 0.475408, -0.244491,
		-0.388125, 0.860141, 0.330932,
		36.699085, 33.981945, 41.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572990, 33.639774, 41.169258>,  <36.970772, 33.379848, 40.797401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572990, 33.639774, 41.169258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267086, 33.882057, 41.257126>,  <37.083542, 34.027428, 41.309849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267086, 33.882057, 41.257126>,  <37.572990, 33.639774, 41.169258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267086, 33.882057, 41.257126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261428, -0.019908, 0.965018,
		0.588891, 0.795439, -0.143124,
		-0.764763, 0.605707, 0.219673,
		37.037659, 34.063770, 41.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823746, 34.345181, 41.632580>,  <37.572990, 33.639774, 41.169258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823746, 34.345181, 41.632580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440258, 34.254433, 41.701153>,  <37.210167, 34.199982, 41.742298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440258, 34.254433, 41.701153>,  <37.823746, 34.345181, 41.632580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440258, 34.254433, 41.701153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162636, 0.057065, 0.985035,
		-0.233262, 0.972251, -0.017811,
		-0.958717, -0.226874, 0.171434,
		37.152641, 34.186371, 41.752583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759682, 34.700752, 42.186871>,  <37.823746, 34.345181, 41.632580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759682, 34.700752, 42.186871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454834, 34.442139, 42.200569>,  <37.271927, 34.286972, 42.208790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454834, 34.442139, 42.200569>,  <37.759682, 34.700752, 42.186871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454834, 34.442139, 42.200569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173279, -0.152715, 0.972960,
		-0.623822, 0.747443, 0.228418,
		-0.762115, -0.646535, 0.034249,
		37.226200, 34.248177, 42.210842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306221, 34.924080, 42.672287>,  <37.759682, 34.700752, 42.186871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306221, 34.924080, 42.672287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280357, 34.524921, 42.670460>,  <37.264839, 34.285427, 42.669365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280357, 34.524921, 42.670460>,  <37.306221, 34.924080, 42.672287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280357, 34.524921, 42.670460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170986, -0.015590, 0.985150,
		-0.983150, 0.062917, 0.171634,
		-0.064658, -0.997897, -0.004569,
		37.260960, 34.225552, 42.669090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936607, 34.882668, 43.253403>,  <37.306221, 34.924080, 42.672287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936607, 34.882668, 43.253403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066059, 34.515175, 43.162907>,  <37.143730, 34.294678, 43.108608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.066059, 34.515175, 43.162907>,  <36.936607, 34.882668, 43.253403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066059, 34.515175, 43.162907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344202, -0.108412, 0.932615,
		-0.881355, -0.379699, 0.281145,
		0.323633, -0.918736, -0.226243,
		37.163151, 34.239555, 43.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023991, 34.503475, 43.906010>,  <36.936607, 34.882668, 43.253403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023991, 34.503475, 43.906010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197311, 34.238991, 43.661045>,  <37.301304, 34.080299, 43.514065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197311, 34.238991, 43.661045>,  <37.023991, 34.503475, 43.906010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197311, 34.238991, 43.661045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394542, -0.471778, 0.788519,
		-0.810300, -0.583289, 0.056454,
		0.433301, -0.661210, -0.612414,
		37.327301, 34.040627, 43.477322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808285, 33.889408, 44.034729>,  <37.023991, 34.503475, 43.906010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808285, 33.889408, 44.034729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.178123, 33.832020, 43.893574>,  <37.400028, 33.797585, 43.808880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.178123, 33.832020, 43.893574>,  <36.808285, 33.889408, 44.034729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178123, 33.832020, 43.893574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248642, -0.474522, 0.844397,
		-0.288600, -0.868473, -0.403070,
		0.924601, -0.143473, -0.352886,
		37.455505, 33.788979, 43.787708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064980, 33.190533, 44.187988>,  <36.808285, 33.889408, 44.034729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064980, 33.190533, 44.187988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412968, 33.355892, 44.080467>,  <37.621761, 33.455109, 44.015953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412968, 33.355892, 44.080467>,  <37.064980, 33.190533, 44.187988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412968, 33.355892, 44.080467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467140, -0.516377, 0.717728,
		0.157900, -0.749972, -0.642346,
		0.869970, 0.413396, -0.268806,
		37.673958, 33.479912, 43.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576729, 32.583000, 44.012474>,  <37.064980, 33.190533, 44.187988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576729, 32.583000, 44.012474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783333, 32.909824, 44.114944>,  <37.907295, 33.105919, 44.176426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783333, 32.909824, 44.114944>,  <37.576729, 32.583000, 44.012474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783333, 32.909824, 44.114944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393776, -0.492308, 0.776256,
		0.760366, -0.300071, -0.576022,
		0.516512, 0.817062, 0.256174,
		37.938286, 33.154942, 44.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314548, 32.389881, 44.291359>,  <37.576729, 32.583000, 44.012474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314548, 32.389881, 44.291359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273918, 32.749657, 44.461391>,  <38.249538, 32.965523, 44.563412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273918, 32.749657, 44.461391>,  <38.314548, 32.389881, 44.291359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273918, 32.749657, 44.461391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417400, -0.349333, 0.838894,
		0.903028, 0.262642, -0.339941,
		-0.101577, 0.899436, 0.425084,
		38.243446, 33.019489, 44.588917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959808, 32.416889, 44.806091>,  <38.314548, 32.389881, 44.291359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959808, 32.416889, 44.806091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674339, 32.679337, 44.904217>,  <38.503056, 32.836803, 44.963093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674339, 32.679337, 44.904217>,  <38.959808, 32.416889, 44.806091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674339, 32.679337, 44.904217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174696, -0.172428, 0.969407,
		0.678341, 0.734699, 0.008437,
		-0.713677, 0.656115, 0.245314,
		38.460236, 32.876171, 44.977810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248287, 32.799580, 45.433594>,  <38.959808, 32.416889, 44.806091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248287, 32.799580, 45.433594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854519, 32.868038, 45.449745>,  <38.618259, 32.909115, 45.459435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854519, 32.868038, 45.449745>,  <39.248287, 32.799580, 45.433594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854519, 32.868038, 45.449745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056634, 0.091208, 0.994220,
		0.166479, 0.981014, -0.099479,
		-0.984417, 0.171150, 0.040374,
		38.559193, 32.919384, 45.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910198, 33.153049, 45.358559>,  <39.248287, 32.799580, 45.433594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910198, 33.153049, 45.358559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.265095, 32.997730, 45.458183>,  <40.478031, 32.904541, 45.517960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.265095, 32.997730, 45.458183>,  <39.910198, 33.153049, 45.358559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265095, 32.997730, 45.458183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386102, 0.329600, -0.861562,
		0.252450, 0.860576, 0.442356,
		0.887240, -0.388296, 0.249063,
		40.531265, 32.881241, 45.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335377, 33.632847, 45.226669>,  <39.910198, 33.153049, 45.358559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335377, 33.632847, 45.226669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.570328, 33.309776, 45.206074>,  <40.711300, 33.115936, 45.193718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.570328, 33.309776, 45.206074>,  <40.335377, 33.632847, 45.226669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570328, 33.309776, 45.206074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345223, 0.307587, -0.886685,
		0.731989, 0.503044, 0.459498,
		0.587377, -0.807674, -0.051488,
		40.746540, 33.067474, 45.190628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946503, 33.842068, 44.966049>,  <40.335377, 33.632847, 45.226669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946503, 33.842068, 44.966049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933571, 33.452579, 44.875870>,  <40.925812, 33.218887, 44.821762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.933571, 33.452579, 44.875870>,  <40.946503, 33.842068, 44.966049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933571, 33.452579, 44.875870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242746, 0.211165, -0.946828,
		0.969551, -0.085334, 0.229540,
		-0.032326, -0.973719, -0.225450,
		40.923874, 33.160465, 44.808235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514690, 33.791733, 44.512493>,  <40.946503, 33.842068, 44.966049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514690, 33.791733, 44.512493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290596, 33.465279, 44.455841>,  <41.156139, 33.269405, 44.421848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290596, 33.465279, 44.455841>,  <41.514690, 33.791733, 44.512493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290596, 33.465279, 44.455841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212593, 0.023585, -0.976856,
		0.800588, -0.577378, 0.160292,
		-0.560235, -0.816136, -0.141629,
		41.122524, 33.220436, 44.413353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712399, 33.630726, 43.901138>,  <41.514690, 33.791733, 44.512493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712399, 33.630726, 43.901138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403687, 33.376373, 43.901459>,  <41.218460, 33.223763, 43.901649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403687, 33.376373, 43.901459>,  <41.712399, 33.630726, 43.901138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403687, 33.376373, 43.901459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050827, -0.062942, -0.996722,
		0.633852, -0.769212, 0.080898,
		-0.771783, -0.635886, 0.000799,
		41.172153, 33.185608, 43.901699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836815, 32.998032, 43.453888>,  <41.712399, 33.630726, 43.901138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836815, 32.998032, 43.453888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.443241, 33.062729, 43.484146>,  <41.207096, 33.101547, 43.502300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.443241, 33.062729, 43.484146>,  <41.836815, 32.998032, 43.453888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443241, 33.062729, 43.484146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092497, -0.099341, -0.990745,
		-0.152732, -0.981820, 0.112706,
		-0.983930, 0.161743, 0.075643,
		41.148064, 33.111252, 43.506840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530300, 32.520943, 43.000286>,  <41.836815, 32.998032, 43.453888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530300, 32.520943, 43.000286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250401, 32.793766, 43.085281>,  <41.082462, 32.957458, 43.136280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250401, 32.793766, 43.085281>,  <41.530300, 32.520943, 43.000286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250401, 32.793766, 43.085281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293575, -0.003377, -0.955930,
		-0.651280, -0.731293, 0.202597,
		-0.699749, 0.682056, 0.212490,
		41.040478, 32.998383, 43.149029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934834, 32.309475, 42.678699>,  <41.530300, 32.520943, 43.000286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934834, 32.309475, 42.678699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914490, 32.705540, 42.730854>,  <40.902283, 32.943176, 42.762146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914490, 32.705540, 42.730854>,  <40.934834, 32.309475, 42.678699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914490, 32.705540, 42.730854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187526, 0.118760, -0.975054,
		-0.980942, -0.074045, 0.179640,
		-0.050864, 0.990158, 0.130382,
		40.899231, 33.002586, 42.769970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417610, 32.531525, 42.139370>,  <40.934834, 32.309475, 42.678699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417610, 32.531525, 42.139370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611176, 32.858162, 42.265224>,  <40.727314, 33.054146, 42.340736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.611176, 32.858162, 42.265224>,  <40.417610, 32.531525, 42.139370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611176, 32.858162, 42.265224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201424, 0.453816, -0.868032,
		-0.851618, 0.356680, 0.384091,
		0.483916, 0.816597, 0.314634,
		40.756351, 33.103142, 42.359615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020855, 33.111542, 41.963573>,  <40.417610, 32.531525, 42.139370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020855, 33.111542, 41.963573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392796, 33.255096, 41.996040>,  <40.615959, 33.341228, 42.015518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392796, 33.255096, 41.996040>,  <40.020855, 33.111542, 41.963573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392796, 33.255096, 41.996040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110396, 0.482538, -0.868890,
		-0.350995, 0.798974, 0.488306,
		0.929847, 0.358883, 0.081165,
		40.671749, 33.362762, 42.020390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941650, 33.825218, 41.968742>,  <40.020855, 33.111542, 41.963573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941650, 33.825218, 41.968742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.320980, 33.776367, 41.851604>,  <40.548580, 33.747059, 41.781322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.320980, 33.776367, 41.851604>,  <39.941650, 33.825218, 41.968742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320980, 33.776367, 41.851604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224667, 0.393280, -0.891547,
		0.224049, 0.911272, 0.345522,
		0.948328, -0.122123, -0.292847,
		40.605480, 33.739731, 41.763752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239517, 34.524448, 41.765949>,  <39.941650, 33.825218, 41.968742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239517, 34.524448, 41.765949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.521908, 34.275238, 41.631226>,  <40.691341, 34.125713, 41.550392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.521908, 34.275238, 41.631226>,  <40.239517, 34.524448, 41.765949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521908, 34.275238, 41.631226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013203, 0.463901, -0.885789,
		0.708116, 0.629790, 0.319276,
		0.705973, -0.623025, -0.336811,
		40.733700, 34.088329, 41.530182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718048, 34.865147, 41.308102>,  <40.239517, 34.524448, 41.765949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718048, 34.865147, 41.308102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800903, 34.496498, 41.176830>,  <40.850616, 34.275307, 41.098068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800903, 34.496498, 41.176830>,  <40.718048, 34.865147, 41.308102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800903, 34.496498, 41.176830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048649, 0.344746, -0.937435,
		0.977102, 0.178210, 0.116245,
		0.207136, -0.921624, -0.328182,
		40.863045, 34.220013, 41.078377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090317, 34.993896, 40.802261>,  <40.718048, 34.865147, 41.308102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090317, 34.993896, 40.802261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.997784, 34.614407, 40.716087>,  <40.942265, 34.386715, 40.664383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.997784, 34.614407, 40.716087>,  <41.090317, 34.993896, 40.802261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997784, 34.614407, 40.716087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016965, 0.225343, -0.974132,
		0.972727, -0.221694, -0.068225,
		-0.231333, -0.948721, -0.215436,
		40.928383, 34.329792, 40.651455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.173119, 41.857624, 36.552952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135164, 41.972130, 36.171574>,  <31.112392, 42.040833, 35.942749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135164, 41.972130, 36.171574>,  <31.173119, 41.857624, 36.552952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135164, 41.972130, 36.171574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906076, -0.421547, -0.036394,
		-0.412339, 0.860437, 0.299374,
		-0.094886, 0.286262, -0.953441,
		31.106699, 42.058010, 35.885540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552084, 42.162560, 36.370541>,  <31.173119, 41.857624, 36.552952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552084, 42.162560, 36.370541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714622, 41.979668, 36.054104>,  <30.812145, 41.869934, 35.864243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714622, 41.979668, 36.054104>,  <30.552084, 42.162560, 36.370541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714622, 41.979668, 36.054104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840734, -0.526165, -0.127735,
		-0.357840, 0.717001, -0.598214,
		0.406345, -0.457230, -0.791091,
		30.836527, 41.842499, 35.816776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109886, 42.348446, 35.782394>,  <30.552084, 42.162560, 36.370541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109886, 42.348446, 35.782394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297684, 42.005150, 35.699440>,  <30.410362, 41.799171, 35.649670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297684, 42.005150, 35.699440>,  <30.109886, 42.348446, 35.782394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297684, 42.005150, 35.699440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878342, -0.477913, -0.010674,
		-0.089950, 0.187165, -0.978202,
		0.469493, -0.858236, -0.207383,
		30.438532, 41.747681, 35.637226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691113, 42.053555, 35.253857>,  <30.109886, 42.348446, 35.782394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691113, 42.053555, 35.253857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895802, 41.747887, 35.410923>,  <30.018614, 41.564487, 35.505161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895802, 41.747887, 35.410923>,  <29.691113, 42.053555, 35.253857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895802, 41.747887, 35.410923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790815, -0.597574, -0.132354,
		0.335788, -0.242798, -0.910107,
		0.511721, -0.764169, 0.392667,
		30.049318, 41.518635, 35.528725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402931, 41.578041, 34.889580>,  <29.691113, 42.053555, 35.253857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402931, 41.578041, 34.889580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574923, 41.363770, 35.180279>,  <29.678118, 41.235207, 35.354698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574923, 41.363770, 35.180279>,  <29.402931, 41.578041, 34.889580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574923, 41.363770, 35.180279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723724, -0.685750, -0.077271,
		0.539762, -0.492742, -0.682541,
		0.429978, -0.535679, 0.726751,
		29.703917, 41.203064, 35.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419565, 40.787498, 34.675190>,  <29.402931, 41.578041, 34.889580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419565, 40.787498, 34.675190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450209, 40.777657, 35.073895>,  <29.468596, 40.771751, 35.313118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450209, 40.777657, 35.073895>,  <29.419565, 40.787498, 34.675190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450209, 40.777657, 35.073895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682300, -0.730262, 0.034413,
		0.727048, -0.682724, -0.072734,
		0.076609, -0.024607, 0.996758,
		29.473192, 40.770275, 35.372921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647097, 40.137096, 34.859287>,  <29.419565, 40.787498, 34.675190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647097, 40.137096, 34.859287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472807, 40.265884, 35.195496>,  <29.368233, 40.343159, 35.397221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472807, 40.265884, 35.195496>,  <29.647097, 40.137096, 34.859287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472807, 40.265884, 35.195496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657885, -0.751232, -0.053278,
		0.614275, -0.576183, 0.539147,
		-0.435722, 0.321969, 0.840525,
		29.342091, 40.362476, 35.447655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582930, 39.586884, 35.368835>,  <29.647097, 40.137096, 34.859287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582930, 39.586884, 35.368835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308125, 39.853188, 35.485298>,  <29.143242, 40.012970, 35.555176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308125, 39.853188, 35.485298>,  <29.582930, 39.586884, 35.368835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308125, 39.853188, 35.485298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666619, -0.736921, 0.112098,
		0.289190, -0.117078, 0.950085,
		-0.687014, 0.665763, 0.291156,
		29.102020, 40.052917, 35.572643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338860, 39.244118, 35.941982>,  <29.582930, 39.586884, 35.368835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338860, 39.244118, 35.941982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075884, 39.517265, 35.814568>,  <28.918098, 39.681152, 35.738117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075884, 39.517265, 35.814568>,  <29.338860, 39.244118, 35.941982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075884, 39.517265, 35.814568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748557, -0.543500, 0.379829,
		0.086246, 0.488160, 0.868482,
		-0.657438, 0.682867, -0.318540,
		28.878653, 39.722126, 35.719006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881598, 39.289581, 36.516407>,  <29.338860, 39.244118, 35.941982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881598, 39.289581, 36.516407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644733, 39.463478, 36.245010>,  <28.502615, 39.567818, 36.082172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644733, 39.463478, 36.245010>,  <28.881598, 39.289581, 36.516407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644733, 39.463478, 36.245010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800291, -0.415753, 0.432069,
		-0.094245, 0.798842, 0.594112,
		-0.592158, 0.434742, -0.678489,
		28.467087, 39.593903, 36.041462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234682, 39.554905, 36.930233>,  <28.881598, 39.289581, 36.516407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234682, 39.554905, 36.930233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161263, 39.511730, 36.539406>,  <28.117210, 39.485825, 36.304909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161263, 39.511730, 36.539406>,  <28.234682, 39.554905, 36.930233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161263, 39.511730, 36.539406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804754, -0.554301, 0.212416,
		-0.564517, 0.825287, 0.014877,
		-0.183551, -0.107941, -0.977066,
		28.106197, 39.479347, 36.246284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422358, 39.649265, 36.858124>,  <28.234682, 39.554905, 36.930233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422358, 39.649265, 36.858124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563532, 39.455524, 36.537914>,  <27.648237, 39.339279, 36.345787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563532, 39.455524, 36.537914>,  <27.422358, 39.649265, 36.858124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563532, 39.455524, 36.537914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658540, -0.736369, 0.155197,
		-0.664651, 0.472402, -0.578857,
		0.352937, -0.484352, -0.800524,
		27.669413, 39.310219, 36.297756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861450, 39.393963, 36.492371>,  <27.422358, 39.649265, 36.858124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861450, 39.393963, 36.492371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167324, 39.181126, 36.346970>,  <27.350847, 39.053421, 36.259727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167324, 39.181126, 36.346970>,  <26.861450, 39.393963, 36.492371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167324, 39.181126, 36.346970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572414, -0.819955, -0.003909,
		-0.295975, 0.211063, -0.931585,
		0.764683, -0.532096, -0.363502,
		27.396729, 39.021496, 36.237919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478836, 38.870567, 36.261116>,  <26.861450, 39.393963, 36.492371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478836, 38.870567, 36.261116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853130, 38.729572, 36.256096>,  <27.077707, 38.644978, 36.253086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853130, 38.729572, 36.256096>,  <26.478836, 38.870567, 36.261116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853130, 38.729572, 36.256096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347409, -0.927239, 0.139767,
		-0.060898, -0.126426, -0.990105,
		0.935734, -0.352483, -0.012546,
		27.133850, 38.623829, 36.252331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556770, 38.311954, 35.729439>,  <26.478836, 38.870567, 36.261116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556770, 38.311954, 35.729439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854092, 38.237644, 35.986496>,  <27.032484, 38.193058, 36.140732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854092, 38.237644, 35.986496>,  <26.556770, 38.311954, 35.729439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854092, 38.237644, 35.986496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327564, -0.938693, 0.107509,
		0.583271, -0.290418, -0.758586,
		0.743302, -0.185779, 0.642642,
		27.077082, 38.181911, 36.179287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877998, 37.720428, 35.489223>,  <26.556770, 38.311954, 35.729439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877998, 37.720428, 35.489223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965548, 37.761013, 35.877411>,  <27.018076, 37.785362, 36.110321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965548, 37.761013, 35.877411>,  <26.877998, 37.720428, 35.489223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965548, 37.761013, 35.877411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304882, -0.937671, 0.166794,
		0.926899, -0.332384, -0.174296,
		0.218871, 0.101461, 0.970464,
		27.031208, 37.791451, 36.168549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173292, 37.090317, 35.631664>,  <26.877998, 37.720428, 35.489223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173292, 37.090317, 35.631664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116854, 37.240669, 35.998009>,  <27.082991, 37.330879, 36.217815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116854, 37.240669, 35.998009>,  <27.173292, 37.090317, 35.631664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116854, 37.240669, 35.998009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229401, -0.912354, 0.339095,
		0.963051, -0.162256, 0.214955,
		-0.141094, 0.375877, 0.915865,
		27.074526, 37.353432, 36.272770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484272, 36.569130, 36.065971>,  <27.173292, 37.090317, 35.631664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484272, 36.569130, 36.065971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206968, 36.779408, 36.263168>,  <27.040586, 36.905575, 36.381485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206968, 36.779408, 36.263168>,  <27.484272, 36.569130, 36.065971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206968, 36.779408, 36.263168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466792, -0.848710, 0.248588,
		0.549085, -0.057786, 0.833767,
		-0.693261, 0.525692, 0.492988,
		26.998989, 36.937115, 36.411064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393953, 36.143154, 36.676632>,  <27.484272, 36.569130, 36.065971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393953, 36.143154, 36.676632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070837, 36.378616, 36.689049>,  <26.876968, 36.519894, 36.696499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070837, 36.378616, 36.689049>,  <27.393953, 36.143154, 36.676632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070837, 36.378616, 36.689049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554670, -0.776868, 0.298022,
		0.199546, 0.223522, 0.954054,
		-0.807788, 0.588655, 0.031040,
		26.828501, 36.555214, 36.698360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079771, 35.816689, 36.787987>,  <27.393953, 36.143154, 36.676632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079771, 35.816689, 36.787987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321846, 35.679489, 36.500626>,  <28.467091, 35.597168, 36.328209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.321846, 35.679489, 36.500626>,  <28.079771, 35.816689, 36.787987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321846, 35.679489, 36.500626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788166, 0.131212, 0.601314,
		-0.111990, -0.930125, 0.349751,
		0.605188, -0.343003, -0.718398,
		28.503403, 35.576588, 36.285107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481682, 35.283840, 37.074627>,  <28.079771, 35.816689, 36.787987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481682, 35.283840, 37.074627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677868, 35.409817, 36.749603>,  <28.795580, 35.485401, 36.554588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677868, 35.409817, 36.749603>,  <28.481682, 35.283840, 37.074627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677868, 35.409817, 36.749603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681407, 0.442655, 0.582873,
		0.543255, -0.839564, 0.002504,
		0.490467, 0.314942, -0.812559,
		28.825008, 35.504299, 36.505836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170874, 35.019051, 37.237827>,  <28.481682, 35.283840, 37.074627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170874, 35.019051, 37.237827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231915, 35.290882, 36.950806>,  <29.268539, 35.453979, 36.778591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231915, 35.290882, 36.950806>,  <29.170874, 35.019051, 37.237827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231915, 35.290882, 36.950806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513407, 0.565890, 0.645121,
		0.844468, -0.466848, -0.262541,
		0.152604, 0.679574, -0.717559,
		29.277697, 35.494755, 36.735538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917326, 35.107624, 37.150810>,  <29.170874, 35.019051, 37.237827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917326, 35.107624, 37.150810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724970, 35.436428, 37.028793>,  <29.609556, 35.633709, 36.955582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.724970, 35.436428, 37.028793>,  <29.917326, 35.107624, 37.150810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724970, 35.436428, 37.028793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678830, 0.569254, 0.463831,
		0.554918, 0.015981, -0.831752,
		-0.480890, 0.822006, -0.305041,
		29.580704, 35.683029, 36.937283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430326, 35.615555, 36.970123>,  <29.917326, 35.107624, 37.150810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430326, 35.615555, 36.970123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105240, 35.845531, 37.007919>,  <29.910187, 35.983517, 37.030598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105240, 35.845531, 37.007919>,  <30.430326, 35.615555, 36.970123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105240, 35.845531, 37.007919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528370, 0.658883, 0.535442,
		0.245591, 0.485090, -0.839269,
		-0.812718, 0.574944, 0.094491,
		29.861425, 36.018013, 37.036266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684931, 36.283760, 36.714272>,  <30.430326, 35.615555, 36.970123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684931, 36.283760, 36.714272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358847, 36.332935, 36.940659>,  <30.163197, 36.362438, 37.076492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358847, 36.332935, 36.940659>,  <30.684931, 36.283760, 36.714272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358847, 36.332935, 36.940659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450171, 0.749322, 0.485657,
		-0.364390, 0.650695, -0.666196,
		-0.815209, 0.122934, 0.565969,
		30.114285, 36.369816, 37.110451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774189, 36.933071, 36.872887>,  <30.684931, 36.283760, 36.714272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774189, 36.933071, 36.872887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479181, 36.835434, 37.124756>,  <30.302177, 36.776852, 37.275875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.479181, 36.835434, 37.124756>,  <30.774189, 36.933071, 36.872887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479181, 36.835434, 37.124756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343332, 0.667385, 0.660849,
		-0.581539, 0.703575, -0.408405,
		-0.737519, -0.244091, 0.629670,
		30.257925, 36.762207, 37.313656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395519, 37.658367, 37.067371>,  <30.774189, 36.933071, 36.872887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395519, 37.658367, 37.067371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364218, 37.368202, 37.340912>,  <30.345436, 37.194103, 37.505035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364218, 37.368202, 37.340912>,  <30.395519, 37.658367, 37.067371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364218, 37.368202, 37.340912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314912, 0.632850, 0.707341,
		-0.945889, 0.270707, 0.178916,
		-0.078256, -0.725409, 0.683855,
		30.340740, 37.150581, 37.546070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011318, 37.958397, 37.537525>,  <30.395519, 37.658367, 37.067371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011318, 37.958397, 37.537525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210409, 37.658772, 37.712421>,  <30.329863, 37.478996, 37.817360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210409, 37.658772, 37.712421>,  <30.011318, 37.958397, 37.537525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210409, 37.658772, 37.712421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292248, 0.619478, 0.728587,
		-0.816615, -0.234854, 0.527242,
		0.497726, -0.749060, 0.437239,
		30.359728, 37.434055, 37.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886290, 37.956116, 38.320202>,  <30.011318, 37.958397, 37.537525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886290, 37.956116, 38.320202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233013, 37.761734, 38.275497>,  <30.441048, 37.645103, 38.248676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.233013, 37.761734, 38.275497>,  <29.886290, 37.956116, 38.320202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233013, 37.761734, 38.275497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439160, 0.637833, 0.632699,
		-0.236180, -0.597509, 0.766291,
		0.866809, -0.485955, -0.111758,
		30.493055, 37.615948, 38.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106977, 37.719437, 38.949615>,  <29.886290, 37.956116, 38.320202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106977, 37.719437, 38.949615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446993, 37.723331, 38.738964>,  <30.651003, 37.725670, 38.612572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446993, 37.723331, 38.738964>,  <30.106977, 37.719437, 38.949615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446993, 37.723331, 38.738964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447669, 0.513465, 0.732084,
		0.277536, -0.858055, 0.432106,
		0.850040, 0.009739, -0.526630,
		30.702005, 37.726254, 38.580975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514666, 37.760696, 39.462349>,  <30.106977, 37.719437, 38.949615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514666, 37.760696, 39.462349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739227, 37.850464, 39.143738>,  <30.873964, 37.904324, 38.952572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739227, 37.850464, 39.143738>,  <30.514666, 37.760696, 39.462349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739227, 37.850464, 39.143738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493171, 0.682202, 0.539798,
		0.664531, -0.695873, 0.272321,
		0.561409, 0.224412, -0.796529,
		30.907648, 37.917789, 38.904778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233765, 37.743412, 39.689884>,  <30.514666, 37.760696, 39.462349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233765, 37.743412, 39.689884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.200680, 37.982651, 39.371029>,  <31.180830, 38.126194, 39.179714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.200680, 37.982651, 39.371029>,  <31.233765, 37.743412, 39.689884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200680, 37.982651, 39.371029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389910, 0.755541, 0.526430,
		0.917131, -0.267272, -0.295697,
		-0.082711, 0.598100, -0.797142,
		31.175867, 38.162083, 39.131886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849792, 38.168724, 39.811131>,  <31.233765, 37.743412, 39.689884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849792, 38.168724, 39.811131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634037, 38.340485, 39.521393>,  <31.504583, 38.443539, 39.347549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.634037, 38.340485, 39.521393>,  <31.849792, 38.168724, 39.811131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634037, 38.340485, 39.521393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337545, 0.898332, 0.281182,
		0.771443, -0.092833, -0.629490,
		-0.539388, 0.429398, -0.724347,
		31.472221, 38.469303, 39.304089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342091, 38.574768, 39.430012>,  <31.849792, 38.168724, 39.811131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342091, 38.574768, 39.430012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.977270, 38.717842, 39.349781>,  <31.758379, 38.803688, 39.301643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.977270, 38.717842, 39.349781>,  <32.342091, 38.574768, 39.430012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977270, 38.717842, 39.349781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305947, 0.919185, 0.247983,
		0.273068, 0.164806, -0.947773,
		-0.912048, 0.357684, -0.200578,
		31.703655, 38.825146, 39.289608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464882, 39.167805, 39.065849>,  <32.342091, 38.574768, 39.430012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464882, 39.167805, 39.065849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104202, 39.216022, 39.231941>,  <31.887794, 39.244953, 39.331596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104202, 39.216022, 39.231941>,  <32.464882, 39.167805, 39.065849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104202, 39.216022, 39.231941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261511, 0.916828, 0.301727,
		-0.344322, 0.380653, -0.858222,
		-0.901695, 0.120543, 0.415229,
		31.833694, 39.252186, 39.356510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162197, 39.798500, 38.804543>,  <32.464882, 39.167805, 39.065849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162197, 39.798500, 38.804543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.964281, 39.760258, 39.150036>,  <31.845531, 39.737312, 39.357334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.964281, 39.760258, 39.150036>,  <32.162197, 39.798500, 38.804543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964281, 39.760258, 39.150036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196785, 0.955785, 0.218518,
		-0.846437, 0.278092, -0.454103,
		-0.494794, -0.095601, 0.863736,
		31.815844, 39.731579, 39.409157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965994, 40.500961, 38.854298>,  <32.162197, 39.798500, 38.804543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965994, 40.500961, 38.854298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898293, 40.338058, 39.213295>,  <31.857672, 40.240314, 39.428692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898293, 40.338058, 39.213295>,  <31.965994, 40.500961, 38.854298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898293, 40.338058, 39.213295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029935, 0.908085, 0.417714,
		-0.985118, 0.097566, -0.141505,
		-0.169253, -0.407262, 0.897492,
		31.847517, 40.215881, 39.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319971, 40.844643, 39.168106>,  <31.965994, 40.500961, 38.854298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319971, 40.844643, 39.168106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.532524, 40.706558, 39.477547>,  <31.660057, 40.623707, 39.663212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.532524, 40.706558, 39.477547>,  <31.319971, 40.844643, 39.168106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532524, 40.706558, 39.477547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009117, 0.915481, 0.402257,
		-0.847082, -0.206700, 0.489619,
		0.531384, -0.345209, 0.773603,
		31.691938, 40.602997, 39.709629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947433, 41.003796, 39.768208>,  <31.319971, 40.844643, 39.168106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947433, 41.003796, 39.768208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.332106, 40.948246, 39.862766>,  <31.562908, 40.914917, 39.919502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.332106, 40.948246, 39.862766>,  <30.947433, 41.003796, 39.768208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332106, 40.948246, 39.862766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037230, 0.920382, 0.389244,
		-0.271635, -0.365527, 0.890283,
		0.961680, -0.138878, 0.236400,
		31.620609, 40.906582, 39.933685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056871, 41.189064, 40.476368>,  <30.947433, 41.003796, 39.768208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056871, 41.189064, 40.476368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434479, 41.207729, 40.345737>,  <31.661043, 41.218929, 40.267361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.434479, 41.207729, 40.345737>,  <31.056871, 41.189064, 40.476368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434479, 41.207729, 40.345737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147124, 0.826500, 0.543371,
		0.295270, -0.560999, 0.773366,
		0.944018, 0.046661, -0.326577,
		31.717684, 41.221729, 40.247765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478668, 41.324684, 40.991131>,  <31.056871, 41.189064, 40.476368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478668, 41.324684, 40.991131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705238, 41.437073, 40.681236>,  <31.841181, 41.504505, 40.495300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.705238, 41.437073, 40.681236>,  <31.478668, 41.324684, 40.991131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705238, 41.437073, 40.681236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263629, 0.828911, 0.493361,
		0.780810, -0.483695, 0.395442,
		0.566423, 0.280972, -0.774739,
		31.875166, 41.521362, 40.448814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249596, 41.484699, 41.269508>,  <31.478668, 41.324684, 40.991131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249596, 41.484699, 41.269508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.112751, 41.664066, 40.939205>,  <32.030643, 41.771687, 40.741024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.112751, 41.664066, 40.939205>,  <32.249596, 41.484699, 41.269508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112751, 41.664066, 40.939205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149186, 0.893562, 0.423428,
		0.927739, 0.021670, -0.372599,
		-0.342116, 0.448417, -0.825760,
		32.010117, 41.798592, 40.691479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.995647, 30.858360, 46.205578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.721771, 30.568497, 46.174408>,  <39.557446, 30.394579, 46.155708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.721771, 30.568497, 46.174408>,  <39.995647, 30.858360, 46.205578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721771, 30.568497, 46.174408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266668, -0.348580, 0.898544,
		-0.678298, 0.594445, 0.431912,
		-0.684690, -0.724657, -0.077922,
		39.516365, 30.351099, 46.151031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684738, 30.754974, 46.894550>,  <39.995647, 30.858360, 46.205578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684738, 30.754974, 46.894550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573757, 30.417398, 46.710903>,  <39.507168, 30.214853, 46.600716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573757, 30.417398, 46.710903>,  <39.684738, 30.754974, 46.894550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573757, 30.417398, 46.710903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191720, -0.516900, 0.834301,
		-0.941417, 0.143454, 0.305213,
		-0.277448, -0.843941, -0.459116,
		39.490524, 30.164217, 46.573170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141705, 30.460791, 47.188461>,  <39.684738, 30.754974, 46.894550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141705, 30.460791, 47.188461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288460, 30.130304, 47.017456>,  <39.376514, 29.932013, 46.914852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.288460, 30.130304, 47.017456>,  <39.141705, 30.460791, 47.188461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288460, 30.130304, 47.017456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071719, -0.433066, 0.898504,
		-0.927496, -0.360311, -0.099631,
		0.366888, -0.826214, -0.427508,
		39.398525, 29.882441, 46.889202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819431, 29.970587, 47.603844>,  <39.141705, 30.460791, 47.188461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819431, 29.970587, 47.603844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114113, 29.782911, 47.409061>,  <39.290920, 29.670305, 47.292191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114113, 29.782911, 47.409061>,  <38.819431, 29.970587, 47.603844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114113, 29.782911, 47.409061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274696, -0.450382, 0.849528,
		-0.617907, -0.759616, -0.202914,
		0.736705, -0.469190, -0.486958,
		39.335125, 29.642155, 47.262974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729595, 29.249458, 47.819874>,  <38.819431, 29.970587, 47.603844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729595, 29.249458, 47.819874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095032, 29.329529, 47.678295>,  <39.314293, 29.377571, 47.593349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095032, 29.329529, 47.678295>,  <38.729595, 29.249458, 47.819874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095032, 29.329529, 47.678295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403756, -0.549835, 0.731206,
		-0.048240, -0.810932, -0.583148,
		0.913594, 0.200176, -0.353943,
		39.369110, 29.389582, 47.572113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021217, 28.593290, 47.941505>,  <38.729595, 29.249458, 47.819874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021217, 28.593290, 47.941505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323307, 28.849195, 47.884472>,  <39.504562, 29.002739, 47.850250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323307, 28.849195, 47.884472>,  <39.021217, 28.593290, 47.941505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323307, 28.849195, 47.884472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528707, -0.466016, 0.709435,
		0.387425, -0.611171, -0.690197,
		0.755228, 0.639765, -0.142584,
		39.549877, 29.041124, 47.841698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554482, 28.240593, 48.094929>,  <39.021217, 28.593290, 47.941505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554482, 28.240593, 48.094929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.756596, 28.585773, 48.094357>,  <39.877865, 28.792883, 48.094013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.756596, 28.585773, 48.094357>,  <39.554482, 28.240593, 48.094929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756596, 28.585773, 48.094357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614195, -0.358462, 0.703043,
		0.606179, -0.356115, -0.711146,
		0.505284, 0.862952, -0.001432,
		39.908180, 28.844660, 48.093925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390072, 28.051023, 48.047073>,  <39.554482, 28.240593, 48.094929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390072, 28.051023, 48.047073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318356, 28.424955, 48.169674>,  <40.275326, 28.649315, 48.243237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318356, 28.424955, 48.169674>,  <40.390072, 28.051023, 48.047073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318356, 28.424955, 48.169674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679035, -0.107849, 0.726140,
		0.711875, 0.338317, -0.615448,
		-0.179290, 0.934832, 0.306505,
		40.264568, 28.705404, 48.261623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014942, 28.338816, 48.059856>,  <40.390072, 28.051023, 48.047073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014942, 28.338816, 48.059856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.786556, 28.553312, 48.308514>,  <40.649525, 28.682011, 48.457706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.786556, 28.553312, 48.308514>,  <41.014942, 28.338816, 48.059856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786556, 28.553312, 48.308514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691463, -0.094085, 0.716259,
		0.442576, 0.838804, -0.317072,
		-0.570969, 0.536243, 0.621641,
		40.615265, 28.714186, 48.495007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471397, 28.697920, 48.515350>,  <41.014942, 28.338816, 48.059856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471397, 28.697920, 48.515350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.117985, 28.679295, 48.701771>,  <40.905937, 28.668119, 48.813622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.117985, 28.679295, 48.701771>,  <41.471397, 28.697920, 48.515350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117985, 28.679295, 48.701771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462127, -0.248613, 0.851252,
		0.076231, 0.967483, 0.241174,
		-0.883531, -0.046561, 0.466052,
		40.852924, 28.665327, 48.841587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594490, 29.036844, 49.103199>,  <41.471397, 28.697920, 48.515350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594490, 29.036844, 49.103199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269344, 28.824249, 49.198509>,  <41.074257, 28.696693, 49.255695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.269344, 28.824249, 49.198509>,  <41.594490, 29.036844, 49.103199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269344, 28.824249, 49.198509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375706, -0.165844, 0.911779,
		-0.445082, 0.830673, 0.334491,
		-0.812864, -0.531486, 0.238275,
		41.025486, 28.664803, 49.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197369, 29.414377, 49.636925>,  <41.594490, 29.036844, 49.103199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197369, 29.414377, 49.636925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.124954, 29.021345, 49.653713>,  <41.081505, 28.785526, 49.663784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.124954, 29.021345, 49.653713>,  <41.197369, 29.414377, 49.636925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124954, 29.021345, 49.653713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410387, -0.036696, 0.911173,
		-0.893760, 0.182181, 0.409881,
		-0.181039, -0.982580, 0.041968,
		41.070644, 28.726572, 49.666302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062443, 29.223864, 50.392078>,  <41.197369, 29.414377, 49.636925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062443, 29.223864, 50.392078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.151211, 28.871399, 50.225079>,  <41.204472, 28.659920, 50.124878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.151211, 28.871399, 50.225079>,  <41.062443, 29.223864, 50.392078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151211, 28.871399, 50.225079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548704, -0.241088, 0.800500,
		-0.806025, -0.406727, 0.429996,
		0.221918, -0.881164, -0.417496,
		41.217785, 28.607050, 50.099831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120506, 29.966251, 50.706635>,  <41.062443, 29.223864, 50.392078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120506, 29.966251, 50.706635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827435, 30.196941, 50.851170>,  <40.651592, 30.335356, 50.937893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827435, 30.196941, 50.851170>,  <41.120506, 29.966251, 50.706635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827435, 30.196941, 50.851170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118087, 0.415151, -0.902056,
		-0.670251, -0.703588, -0.236068,
		-0.732679, 0.576727, 0.361339,
		40.607632, 30.369959, 50.959572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517937, 29.949810, 50.299007>,  <41.120506, 29.966251, 50.706635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517937, 29.949810, 50.299007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500351, 30.305088, 50.481953>,  <40.489799, 30.518255, 50.591721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500351, 30.305088, 50.481953>,  <40.517937, 29.949810, 50.299007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500351, 30.305088, 50.481953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010980, 0.458203, -0.888780,
		-0.998973, -0.034051, -0.029896,
		-0.043963, 0.888195, 0.457359,
		40.487164, 30.571547, 50.619160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943035, 30.336887, 49.988667>,  <40.517937, 29.949810, 50.299007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943035, 30.336887, 49.988667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220318, 30.579536, 50.144341>,  <40.386688, 30.725126, 50.237747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220318, 30.579536, 50.144341>,  <39.943035, 30.336887, 49.988667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220318, 30.579536, 50.144341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030554, 0.564235, -0.825049,
		-0.720088, 0.560041, 0.409668,
		0.693210, 0.606625, 0.389187,
		40.428280, 30.761524, 50.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719963, 30.994026, 49.800308>,  <39.943035, 30.336887, 49.988667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719963, 30.994026, 49.800308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.103878, 31.034510, 49.905041>,  <40.334229, 31.058800, 49.967880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.103878, 31.034510, 49.905041>,  <39.719963, 30.994026, 49.800308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103878, 31.034510, 49.905041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164612, 0.552621, -0.817015,
		-0.227387, 0.827264, 0.513740,
		0.959791, 0.101211, 0.261836,
		40.391815, 31.064873, 49.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773357, 31.627001, 49.601994>,  <39.719963, 30.994026, 49.800308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773357, 31.627001, 49.601994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157566, 31.515776, 49.605724>,  <40.388092, 31.449039, 49.607964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157566, 31.515776, 49.605724>,  <39.773357, 31.627001, 49.601994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157566, 31.515776, 49.605724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152837, 0.499328, -0.852826,
		0.232481, 0.820580, 0.522111,
		0.960517, -0.278064, 0.009331,
		40.445721, 31.432356, 49.608524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159466, 32.225677, 49.540573>,  <39.773357, 31.627001, 49.601994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159466, 32.225677, 49.540573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427555, 31.941555, 49.454540>,  <40.588409, 31.771080, 49.402920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427555, 31.941555, 49.454540>,  <40.159466, 32.225677, 49.540573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427555, 31.941555, 49.454540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168464, 0.427849, -0.888012,
		0.722786, 0.558933, 0.406416,
		0.670224, -0.710309, -0.215083,
		40.628624, 31.728462, 49.390015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717621, 32.541000, 49.180931>,  <40.159466, 32.225677, 49.540573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717621, 32.541000, 49.180931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773075, 32.158127, 49.079281>,  <40.806347, 31.928402, 49.018291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.773075, 32.158127, 49.079281>,  <40.717621, 32.541000, 49.180931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773075, 32.158127, 49.079281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242648, 0.281612, -0.928341,
		0.960157, 0.067038, 0.271300,
		0.138635, -0.957184, -0.254125,
		40.814667, 31.870972, 49.003044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304749, 32.506592, 48.808975>,  <40.717621, 32.541000, 49.180931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304749, 32.506592, 48.808975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.143715, 32.153881, 48.710667>,  <41.047096, 31.942255, 48.651680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.143715, 32.153881, 48.710667>,  <41.304749, 32.506592, 48.808975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143715, 32.153881, 48.710667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236011, 0.159425, -0.958583,
		0.884435, -0.443914, 0.143927,
		-0.402583, -0.881773, -0.245770,
		41.022942, 31.889349, 48.636936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804180, 32.283794, 48.369728>,  <41.304749, 32.506592, 48.808975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804180, 32.283794, 48.369728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.453053, 32.107174, 48.295460>,  <41.242378, 32.001202, 48.250900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.453053, 32.107174, 48.295460>,  <41.804180, 32.283794, 48.369728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453053, 32.107174, 48.295460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018701, 0.355728, -0.934402,
		0.478636, -0.823704, -0.304006,
		-0.877814, -0.441553, -0.185669,
		41.189709, 31.974709, 48.239758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853310, 31.924696, 47.706825>,  <41.804180, 32.283794, 48.369728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853310, 31.924696, 47.706825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.470196, 32.030106, 47.752792>,  <41.240326, 32.093349, 47.780373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.470196, 32.030106, 47.752792>,  <41.853310, 31.924696, 47.706825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470196, 32.030106, 47.752792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044319, 0.259600, -0.964699,
		-0.284053, -0.929066, -0.236962,
		-0.957784, 0.263523, 0.114915,
		41.182861, 32.109161, 47.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712280, 31.936684, 47.019341>,  <41.853310, 31.924696, 47.706825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712280, 31.936684, 47.019341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.391022, 32.102566, 47.190437>,  <41.198265, 32.202095, 47.293095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.391022, 32.102566, 47.190437>,  <41.712280, 31.936684, 47.019341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391022, 32.102566, 47.190437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273779, 0.380763, -0.883212,
		-0.529145, -0.826460, -0.192272,
		-0.803150, 0.414708, 0.427746,
		41.150078, 32.226978, 47.318760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045189, 31.645754, 46.726608>,  <41.712280, 31.936684, 47.019341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045189, 31.645754, 46.726608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976925, 32.014736, 46.865143>,  <40.935966, 32.236126, 46.948265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976925, 32.014736, 46.865143>,  <41.045189, 31.645754, 46.726608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976925, 32.014736, 46.865143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241516, 0.301610, -0.922335,
		-0.955273, -0.241051, 0.171315,
		-0.170659, 0.922456, 0.346337,
		40.925728, 32.291473, 46.969044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339554, 31.845682, 46.594692>,  <41.045189, 31.645754, 46.726608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339554, 31.845682, 46.594692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549076, 32.183071, 46.642342>,  <40.674789, 32.385506, 46.670929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549076, 32.183071, 46.642342>,  <40.339554, 31.845682, 46.594692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549076, 32.183071, 46.642342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321191, 0.325077, -0.889472,
		-0.788967, 0.427647, 0.441191,
		0.523801, 0.843471, 0.119119,
		40.706215, 32.436111, 46.678078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801449, 32.338951, 46.377415>,  <40.339554, 31.845682, 46.594692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801449, 32.338951, 46.377415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171711, 32.490292, 46.375866>,  <40.393867, 32.581097, 46.374939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171711, 32.490292, 46.375866>,  <39.801449, 32.338951, 46.377415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171711, 32.490292, 46.375866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090104, 0.210484, -0.973436,
		-0.367490, 0.901412, 0.228926,
		0.925653, 0.378355, -0.003870,
		40.449406, 32.603798, 46.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843189, 33.019764, 46.103138>,  <39.801449, 32.338951, 46.377415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843189, 33.019764, 46.103138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201805, 32.868690, 46.010555>,  <40.416973, 32.778046, 45.955006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201805, 32.868690, 46.010555>,  <39.843189, 33.019764, 46.103138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201805, 32.868690, 46.010555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152328, 0.227783, -0.961723,
		0.415945, 0.897482, 0.146686,
		0.896541, -0.377680, -0.231457,
		40.470768, 32.755386, 45.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110901, 33.298653, 46.118572>,  <39.843189, 33.019764, 46.103138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110901, 33.298653, 46.118572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756908, 33.132744, 46.033939>,  <38.544514, 33.033199, 45.983158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.756908, 33.132744, 46.033939>,  <39.110901, 33.298653, 46.118572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756908, 33.132744, 46.033939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181777, -0.110583, 0.977102,
		-0.428671, 0.903181, 0.022468,
		-0.884985, -0.414771, -0.211581,
		38.491413, 33.008312, 45.970467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578930, 33.633171, 46.620461>,  <39.110901, 33.298653, 46.118572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578930, 33.633171, 46.620461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385780, 33.305161, 46.497570>,  <38.269890, 33.108353, 46.423836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385780, 33.305161, 46.497570>,  <38.578930, 33.633171, 46.620461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385780, 33.305161, 46.497570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220395, -0.225736, 0.948931,
		-0.847503, 0.525921, -0.071729,
		-0.482871, -0.820031, -0.307222,
		38.240921, 33.059151, 46.405403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063931, 33.505627, 47.098507>,  <38.578930, 33.633171, 46.620461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063931, 33.505627, 47.098507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091381, 33.165543, 46.889729>,  <38.107853, 32.961491, 46.764462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091381, 33.165543, 46.889729>,  <38.063931, 33.505627, 47.098507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091381, 33.165543, 46.889729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355058, -0.509741, 0.783644,
		-0.932322, 0.131542, -0.336856,
		0.068627, -0.850212, -0.521948,
		38.111969, 32.910480, 46.733143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363571, 33.173630, 47.260662>,  <38.063931, 33.505627, 47.098507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363571, 33.173630, 47.260662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642513, 32.907963, 47.152897>,  <37.809879, 32.748562, 47.088238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642513, 32.907963, 47.152897>,  <37.363571, 33.173630, 47.260662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642513, 32.907963, 47.152897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253314, -0.580022, 0.774214,
		-0.670473, -0.471653, -0.572721,
		0.697351, -0.664168, -0.269412,
		37.851719, 32.708714, 47.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072891, 32.536945, 47.415947>,  <37.363571, 33.173630, 47.260662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072891, 32.536945, 47.415947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454067, 32.435009, 47.350273>,  <37.682774, 32.373848, 47.310871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454067, 32.435009, 47.350273>,  <37.072891, 32.536945, 47.415947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454067, 32.435009, 47.350273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046801, -0.658777, 0.750881,
		-0.299512, -0.707864, -0.639704,
		0.952944, -0.254837, -0.164183,
		37.739952, 32.358559, 47.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997040, 31.809031, 47.502842>,  <37.072891, 32.536945, 47.415947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997040, 31.809031, 47.502842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362507, 31.938618, 47.601028>,  <37.581787, 32.016369, 47.659943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362507, 31.938618, 47.601028>,  <36.997040, 31.809031, 47.502842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362507, 31.938618, 47.601028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043251, -0.522999, 0.851235,
		0.404154, -0.788363, -0.463835,
		0.913667, 0.323969, 0.245470,
		37.636608, 32.035809, 47.674671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320637, 31.284590, 47.754646>,  <36.997040, 31.809031, 47.502842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320637, 31.284590, 47.754646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548733, 31.577082, 47.904385>,  <37.685589, 31.752577, 47.994228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548733, 31.577082, 47.904385>,  <37.320637, 31.284590, 47.754646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548733, 31.577082, 47.904385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008404, -0.460862, 0.887432,
		0.821438, -0.502899, -0.268946,
		0.570236, 0.731231, 0.374343,
		37.719803, 31.796452, 48.016689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600243, 30.666965, 47.332317>,  <37.320637, 31.284590, 47.754646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600243, 30.666965, 47.332317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403358, 30.375570, 47.522907>,  <37.285229, 30.200733, 47.637260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403358, 30.375570, 47.522907>,  <37.600243, 30.666965, 47.332317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403358, 30.375570, 47.522907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615630, -0.095658, -0.782208,
		0.615410, -0.678345, -0.401396,
		-0.492210, -0.728490, 0.476478,
		37.255695, 30.157022, 47.665852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679432, 30.008024, 46.937775>,  <37.600243, 30.666965, 47.332317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679432, 30.008024, 46.937775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.346493, 30.047577, 47.155922>,  <37.146729, 30.071308, 47.286808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.346493, 30.047577, 47.155922>,  <37.679432, 30.008024, 46.937775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346493, 30.047577, 47.155922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549907, -0.024309, -0.834872,
		-0.069300, -0.994802, 0.074612,
		-0.832345, 0.098886, 0.545364,
		37.096790, 30.077240, 47.319530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169991, 29.403162, 46.775711>,  <37.679432, 30.008024, 46.937775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169991, 29.403162, 46.775711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974522, 29.712883, 46.936539>,  <36.857243, 29.898716, 47.033035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974522, 29.712883, 46.936539>,  <37.169991, 29.403162, 46.775711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974522, 29.712883, 46.936539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518603, 0.112802, -0.847541,
		-0.701608, -0.622680, 0.346433,
		-0.488668, 0.774303, 0.402067,
		36.827923, 29.945173, 47.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353367, 29.304441, 46.698685>,  <37.169991, 29.403162, 46.775711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353367, 29.304441, 46.698685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400002, 29.698011, 46.752800>,  <36.427982, 29.934153, 46.785267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400002, 29.698011, 46.752800>,  <36.353367, 29.304441, 46.698685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400002, 29.698011, 46.752800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655381, 0.178564, -0.733888,
		-0.746246, -0.003100, 0.665663,
		0.116589, 0.983923, 0.135284,
		36.434978, 29.993189, 46.793385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610798, 29.568682, 46.729687>,  <36.353367, 29.304441, 46.698685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610798, 29.568682, 46.729687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882938, 29.842422, 46.624783>,  <36.046223, 30.006668, 46.561840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882938, 29.842422, 46.624783>,  <35.610798, 29.568682, 46.729687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882938, 29.842422, 46.624783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458045, 0.117701, -0.881102,
		-0.572117, 0.719588, 0.393542,
		0.680350, 0.684354, -0.262265,
		36.087044, 30.047729, 46.546104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111355, 30.120562, 46.332764>,  <35.610798, 29.568682, 46.729687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111355, 30.120562, 46.332764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489326, 30.221172, 46.249008>,  <35.716110, 30.281540, 46.198753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489326, 30.221172, 46.249008>,  <35.111355, 30.120562, 46.332764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489326, 30.221172, 46.249008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271962, 0.247572, -0.929916,
		-0.182062, 0.935650, 0.302344,
		0.944929, 0.251528, -0.209388,
		35.772804, 30.296631, 46.186192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038853, 30.716951, 46.059647>,  <35.111355, 30.120562, 46.332764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038853, 30.716951, 46.059647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393993, 30.591202, 45.925255>,  <35.607079, 30.515753, 45.844620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393993, 30.591202, 45.925255>,  <35.038853, 30.716951, 46.059647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393993, 30.591202, 45.925255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289644, 0.185496, -0.938988,
		0.357516, 0.930999, 0.073637,
		0.887856, -0.314375, -0.335976,
		35.660351, 30.496889, 45.824463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.377823, 25.423384, 49.166260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.310947, 25.817524, 49.179733>,  <41.270824, 26.054008, 49.187817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.310947, 25.817524, 49.179733>,  <41.377823, 25.423384, 49.166260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310947, 25.817524, 49.179733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474086, -0.050393, -0.879035,
		-0.864460, -0.162929, 0.475565,
		-0.167186, 0.985350, 0.033680,
		41.260792, 26.113129, 49.189838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659428, 25.585197, 49.008270>,  <41.377823, 25.423384, 49.166260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659428, 25.585197, 49.008270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.852859, 25.918674, 48.901608>,  <40.968918, 26.118761, 48.837608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.852859, 25.918674, 48.901608>,  <40.659428, 25.585197, 49.008270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852859, 25.918674, 48.901608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528503, 0.035258, -0.848199,
		-0.697736, 0.551101, 0.457659,
		0.483579, 0.833693, -0.266658,
		40.997932, 26.168783, 48.821609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074188, 26.085844, 48.641361>,  <40.659428, 25.585197, 49.008270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074188, 26.085844, 48.641361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.438770, 26.193647, 48.517033>,  <40.657520, 26.258329, 48.442436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.438770, 26.193647, 48.517033>,  <40.074188, 26.085844, 48.641361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438770, 26.193647, 48.517033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371772, 0.216079, -0.902826,
		-0.176155, 0.938444, 0.297142,
		0.911457, 0.269507, -0.310824,
		40.712208, 26.274500, 48.423786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941326, 26.691816, 48.291458>,  <40.074188, 26.085844, 48.641361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941326, 26.691816, 48.291458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.307159, 26.578928, 48.175598>,  <40.526657, 26.511194, 48.106083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.307159, 26.578928, 48.175598>,  <39.941326, 26.691816, 48.291458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307159, 26.578928, 48.175598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252679, 0.160429, -0.954157,
		0.315751, 0.945840, 0.075414,
		0.914579, -0.282220, -0.289649,
		40.581532, 26.494263, 48.088703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309048, 27.246233, 47.955944>,  <39.941326, 26.691816, 48.291458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309048, 27.246233, 47.955944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.485180, 26.917082, 47.812286>,  <40.590858, 26.719591, 47.726093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.485180, 26.917082, 47.812286>,  <40.309048, 27.246233, 47.955944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485180, 26.917082, 47.812286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319039, 0.230498, -0.919285,
		0.839241, 0.519367, -0.161036,
		0.440328, -0.822878, -0.359142,
		40.617279, 26.670218, 47.704544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618469, 27.507126, 47.327068>,  <40.309048, 27.246233, 47.955944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618469, 27.507126, 47.327068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.633049, 27.108940, 47.291920>,  <40.641796, 26.870029, 47.270832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.633049, 27.108940, 47.291920>,  <40.618469, 27.507126, 47.327068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633049, 27.108940, 47.291920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317131, 0.071861, -0.945656,
		0.947681, 0.062340, -0.313073,
		0.036454, -0.995465, -0.087871,
		40.643986, 26.810301, 47.265560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097164, 27.352123, 46.650043>,  <40.618469, 27.507126, 47.327068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097164, 27.352123, 46.650043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.836372, 27.070894, 46.763611>,  <40.679897, 26.902157, 46.831753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.836372, 27.070894, 46.763611>,  <41.097164, 27.352123, 46.650043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836372, 27.070894, 46.763611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291384, -0.113376, -0.949864,
		0.700013, -0.702023, -0.130945,
		-0.651980, -0.703072, 0.283923,
		40.640778, 26.859972, 46.848789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268387, 26.914827, 46.177547>,  <41.097164, 27.352123, 46.650043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268387, 26.914827, 46.177547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.903625, 26.821943, 46.312908>,  <40.684769, 26.766212, 46.394123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.903625, 26.821943, 46.312908>,  <41.268387, 26.914827, 46.177547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903625, 26.821943, 46.312908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294363, -0.204498, -0.933558,
		0.285983, -0.950926, 0.118129,
		-0.911902, -0.232209, 0.338400,
		40.630054, 26.752281, 46.414429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118355, 26.332449, 45.749378>,  <41.268387, 26.914827, 46.177547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118355, 26.332449, 45.749378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.774662, 26.465918, 45.904499>,  <40.568447, 26.545998, 45.997574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.774662, 26.465918, 45.904499>,  <41.118355, 26.332449, 45.749378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774662, 26.465918, 45.904499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433417, -0.072035, -0.898310,
		-0.271804, -0.939933, 0.206513,
		-0.859228, 0.333671, 0.387804,
		40.516895, 26.566019, 46.020840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705772, 25.865337, 45.588753>,  <41.118355, 26.332449, 45.749378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705772, 25.865337, 45.588753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467232, 26.180824, 45.648472>,  <40.324108, 26.370115, 45.684303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467232, 26.180824, 45.648472>,  <40.705772, 25.865337, 45.588753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467232, 26.180824, 45.648472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451417, -0.175715, -0.874841,
		-0.663767, -0.589111, 0.460828,
		-0.596353, 0.788716, 0.149301,
		40.288326, 26.417439, 45.693264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985825, 25.727057, 45.473446>,  <40.705772, 25.865337, 45.588753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985825, 25.727057, 45.473446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.993275, 26.122375, 45.412884>,  <39.997746, 26.359566, 45.376545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.993275, 26.122375, 45.412884>,  <39.985825, 25.727057, 45.473446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993275, 26.122375, 45.412884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616923, -0.107812, -0.779604,
		-0.786803, 0.107927, 0.607694,
		0.018624, 0.988296, -0.151410,
		39.998863, 26.418863, 45.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393734, 25.837027, 45.094368>,  <39.985825, 25.727057, 45.473446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393734, 25.837027, 45.094368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608898, 26.164600, 45.014366>,  <39.737995, 26.361145, 44.966366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.608898, 26.164600, 45.014366>,  <39.393734, 25.837027, 45.094368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608898, 26.164600, 45.014366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303881, -0.032933, -0.952141,
		-0.786329, 0.572940, 0.231144,
		0.537907, 0.818936, -0.200002,
		39.770271, 26.410280, 44.954365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555607, 26.047522, 45.224186>,  <39.393734, 25.837027, 45.094368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555607, 26.047522, 45.224186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.208321, 25.871349, 45.315590>,  <37.999947, 25.765646, 45.370430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.208321, 25.871349, 45.315590>,  <38.555607, 26.047522, 45.224186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208321, 25.871349, 45.315590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189526, 0.131241, 0.973065,
		-0.458557, 0.888142, -0.030473,
		-0.868219, -0.440431, 0.228508,
		37.947853, 25.739220, 45.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229412, 26.500204, 45.608582>,  <38.555607, 26.047522, 45.224186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229412, 26.500204, 45.608582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070770, 26.146767, 45.708157>,  <37.975586, 25.934704, 45.767902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070770, 26.146767, 45.708157>,  <38.229412, 26.500204, 45.608582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070770, 26.146767, 45.708157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292326, 0.135497, 0.946671,
		-0.870201, 0.448225, 0.204558,
		-0.396605, -0.883592, 0.248938,
		37.951790, 25.881689, 45.782837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952278, 26.592867, 46.256702>,  <38.229412, 26.500204, 45.608582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952278, 26.592867, 46.256702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922054, 26.194012, 46.257526>,  <37.903919, 25.954699, 46.258018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.922054, 26.194012, 46.257526>,  <37.952278, 26.592867, 46.256702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922054, 26.194012, 46.257526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049355, -0.001679, 0.998780,
		-0.995919, 0.075565, 0.049341,
		-0.075555, -0.997140, 0.002058,
		37.899387, 25.894871, 46.258144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368546, 26.412741, 46.635727>,  <37.952278, 26.592867, 46.256702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368546, 26.412741, 46.635727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605312, 26.090418, 46.642780>,  <37.747372, 25.897024, 46.647011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605312, 26.090418, 46.642780>,  <37.368546, 26.412741, 46.635727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605312, 26.090418, 46.642780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011188, 0.013656, 0.999844,
		-0.805922, -0.592021, -0.000932,
		0.591917, -0.805807, 0.017630,
		37.782887, 25.848677, 46.648067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082783, 25.926506, 47.108082>,  <37.368546, 26.412741, 46.635727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082783, 25.926506, 47.108082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465420, 25.813879, 47.078011>,  <37.695004, 25.746304, 47.059967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465420, 25.813879, 47.078011>,  <37.082783, 25.926506, 47.108082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465420, 25.813879, 47.078011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008774, -0.230017, 0.973147,
		-0.291303, -0.931563, -0.217561,
		0.956590, -0.281571, -0.075178,
		37.752396, 25.729408, 47.055458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053871, 25.413979, 47.347912>,  <37.082783, 25.926506, 47.108082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053871, 25.413979, 47.347912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.437637, 25.522263, 47.379513>,  <37.667896, 25.587233, 47.398476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.437637, 25.522263, 47.379513>,  <37.053871, 25.413979, 47.347912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437637, 25.522263, 47.379513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030739, -0.378879, 0.924936,
		0.280323, -0.884967, -0.371823,
		0.959414, 0.270710, 0.079006,
		37.725460, 25.603476, 47.403214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243935, 25.038105, 47.966797>,  <37.053871, 25.413979, 47.347912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243935, 25.038105, 47.966797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.534077, 25.310232, 47.924789>,  <37.708160, 25.473509, 47.899586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.534077, 25.310232, 47.924789>,  <37.243935, 25.038105, 47.966797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534077, 25.310232, 47.924789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118459, 0.273646, 0.954508,
		0.678105, -0.679917, 0.279080,
		0.725355, 0.680316, -0.105019,
		37.751682, 25.514326, 47.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670467, 24.920252, 48.543629>,  <37.243935, 25.038105, 47.966797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670467, 24.920252, 48.543629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.731319, 25.294512, 48.416245>,  <37.767830, 25.519068, 48.339813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.731319, 25.294512, 48.416245>,  <37.670467, 24.920252, 48.543629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731319, 25.294512, 48.416245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027052, 0.318148, 0.947655,
		0.987991, -0.152778, 0.023087,
		0.152126, 0.935650, -0.318460,
		37.776958, 25.575207, 48.320705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099091, 25.186079, 49.080128>,  <37.670467, 24.920252, 48.543629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099091, 25.186079, 49.080128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.990932, 25.506834, 48.867016>,  <37.926037, 25.699287, 48.739147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.990932, 25.506834, 48.867016>,  <38.099091, 25.186079, 49.080128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990932, 25.506834, 48.867016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038594, 0.561982, 0.826248,
		0.961975, 0.202852, -0.182906,
		-0.270396, 0.801890, -0.532784,
		37.909813, 25.747400, 48.707180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505894, 25.715117, 49.292210>,  <38.099091, 25.186079, 49.080128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505894, 25.715117, 49.292210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206493, 25.923792, 49.128460>,  <38.026852, 26.048996, 49.030209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206493, 25.923792, 49.128460>,  <38.505894, 25.715117, 49.292210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206493, 25.923792, 49.128460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064458, 0.671651, 0.738059,
		0.659994, 0.526050, -0.536358,
		-0.748501, 0.521686, -0.409377,
		37.981941, 26.080297, 49.005646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761265, 26.393566, 49.133236>,  <38.505894, 25.715117, 49.292210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761265, 26.393566, 49.133236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.363441, 26.388552, 49.174614>,  <38.124748, 26.385544, 49.199440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.363441, 26.388552, 49.174614>,  <38.761265, 26.393566, 49.133236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363441, 26.388552, 49.174614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066808, 0.685138, 0.725343,
		-0.079967, 0.728306, -0.680571,
		-0.994556, -0.012536, 0.103445,
		38.065075, 26.384790, 49.205647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570911, 27.168686, 49.166149>,  <38.761265, 26.393566, 49.133236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570911, 27.168686, 49.166149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254002, 26.969248, 49.306831>,  <38.063854, 26.849585, 49.391239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.254002, 26.969248, 49.306831>,  <38.570911, 27.168686, 49.166149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254002, 26.969248, 49.306831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027946, 0.605463, 0.795382,
		-0.609519, 0.620335, -0.493629,
		-0.792278, -0.498596, 0.351706,
		38.016319, 26.819670, 49.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133274, 27.632080, 49.421089>,  <38.570911, 27.168686, 49.166149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133274, 27.632080, 49.421089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.989742, 27.319862, 49.625828>,  <37.903622, 27.132532, 49.748672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.989742, 27.319862, 49.625828>,  <38.133274, 27.632080, 49.421089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989742, 27.319862, 49.625828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068885, 0.569018, 0.819435,
		-0.930857, 0.258779, -0.257949,
		-0.358830, -0.780546, 0.511848,
		37.882092, 27.085699, 49.779381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412655, 27.814379, 49.672474>,  <38.133274, 27.632080, 49.421089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412655, 27.814379, 49.672474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.544281, 27.510727, 49.897129>,  <37.623257, 27.328535, 50.031921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.544281, 27.510727, 49.897129>,  <37.412655, 27.814379, 49.672474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544281, 27.510727, 49.897129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302487, 0.478682, 0.824236,
		-0.894549, -0.441115, -0.072110,
		0.329065, -0.759132, 0.561636,
		37.643002, 27.282988, 50.065620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183601, 28.117409, 49.067379>,  <37.412655, 27.814379, 49.672474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183601, 28.117409, 49.067379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229107, 28.334558, 49.400208>,  <37.256413, 28.464848, 49.599907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.229107, 28.334558, 49.400208>,  <37.183601, 28.117409, 49.067379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229107, 28.334558, 49.400208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439485, 0.778612, -0.447903,
		-0.891016, -0.314728, 0.327164,
		0.113766, 0.542872, 0.832074,
		37.263237, 28.497419, 49.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622360, 28.488049, 49.225334>,  <37.183601, 28.117409, 49.067379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622360, 28.488049, 49.225334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906403, 28.704151, 49.405941>,  <37.076828, 28.833813, 49.514305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906403, 28.704151, 49.405941>,  <36.622360, 28.488049, 49.225334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906403, 28.704151, 49.405941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356242, 0.828820, -0.431449,
		-0.607320, 0.145526, 0.781015,
		0.710108, 0.540258, 0.451516,
		37.119434, 28.866228, 49.541397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297043, 29.037514, 49.627605>,  <36.622360, 28.488049, 49.225334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297043, 29.037514, 49.627605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662888, 29.120167, 49.488586>,  <36.882393, 29.169758, 49.405174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.662888, 29.120167, 49.488586>,  <36.297043, 29.037514, 49.627605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662888, 29.120167, 49.488586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375690, 0.752064, -0.541532,
		0.149481, 0.625862, 0.765476,
		0.914610, 0.206633, -0.347549,
		36.937271, 29.182158, 49.384323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298038, 29.832451, 49.666924>,  <36.297043, 29.037514, 49.627605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298038, 29.832451, 49.666924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.570004, 29.682898, 49.414597>,  <36.733185, 29.593166, 49.263203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.570004, 29.682898, 49.414597>,  <36.298038, 29.832451, 49.666924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570004, 29.682898, 49.414597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327108, 0.615276, -0.717242,
		0.656289, 0.694008, 0.296036,
		0.679916, -0.373882, -0.630814,
		36.773979, 29.570732, 49.225353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604324, 30.486025, 49.391693>,  <36.298038, 29.832451, 49.666924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604324, 30.486025, 49.391693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696178, 30.187992, 49.141216>,  <36.751289, 30.009172, 48.990929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696178, 30.187992, 49.141216>,  <36.604324, 30.486025, 49.391693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696178, 30.187992, 49.141216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161805, 0.605210, -0.779448,
		0.959732, 0.280311, 0.018420,
		0.229636, -0.745081, -0.626196,
		36.765068, 29.964468, 48.953358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165253, 30.617603, 48.931622>,  <36.604324, 30.486025, 49.391693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165253, 30.617603, 48.931622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.879719, 30.377333, 48.787609>,  <36.708397, 30.233170, 48.701202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.879719, 30.377333, 48.787609>,  <37.165253, 30.617603, 48.931622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879719, 30.377333, 48.787609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311080, 0.732575, -0.605444,
		0.627429, -0.320188, -0.709797,
		-0.713836, -0.600677, -0.360035,
		36.665569, 30.197130, 48.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207020, 30.461882, 48.200531>,  <37.165253, 30.617603, 48.931622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207020, 30.461882, 48.200531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.830387, 30.454817, 48.335060>,  <36.604408, 30.450577, 48.415779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.830387, 30.454817, 48.335060>,  <37.207020, 30.461882, 48.200531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830387, 30.454817, 48.335060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250376, 0.704618, -0.663947,
		-0.225254, -0.709367, -0.667876,
		-0.941580, -0.017664, 0.336326,
		36.547913, 30.449518, 48.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889484, 30.902437, 48.283230>,  <37.207020, 30.461882, 48.200531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889484, 30.902437, 48.283230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880436, 31.291130, 48.377232>,  <37.875008, 31.524345, 48.433632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880436, 31.291130, 48.377232>,  <37.889484, 30.902437, 48.283230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880436, 31.291130, 48.377232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234421, -0.223355, 0.946129,
		0.971872, 0.076493, -0.222741,
		-0.022622, 0.971731, 0.235004,
		37.873650, 31.582649, 48.447731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376457, 30.917768, 48.707088>,  <37.889484, 30.902437, 48.283230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376457, 30.917768, 48.707088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.224445, 31.282089, 48.771606>,  <38.133240, 31.500683, 48.810318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.224445, 31.282089, 48.771606>,  <38.376457, 30.917768, 48.707088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224445, 31.282089, 48.771606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074108, -0.143834, 0.986823,
		0.922001, 0.386973, -0.012837,
		-0.380028, 0.910804, 0.161293,
		38.110435, 31.555330, 48.819996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834244, 31.338202, 49.063450>,  <38.376457, 30.917768, 48.707088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834244, 31.338202, 49.063450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.464169, 31.474104, 49.131088>,  <38.242123, 31.555645, 49.171673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.464169, 31.474104, 49.131088>,  <38.834244, 31.338202, 49.063450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464169, 31.474104, 49.131088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107261, -0.193313, 0.975256,
		0.364039, 0.920432, 0.142408,
		-0.925187, 0.339757, 0.169100,
		38.186611, 31.576031, 49.181820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945087, 31.422457, 49.720016>,  <38.834244, 31.338202, 49.063450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945087, 31.422457, 49.720016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551300, 31.478136, 49.677227>,  <38.315029, 31.511543, 49.651554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.551300, 31.478136, 49.677227>,  <38.945087, 31.422457, 49.720016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551300, 31.478136, 49.677227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105276, 0.019529, 0.994251,
		0.140487, 0.990072, -0.004571,
		-0.984469, 0.139199, -0.106974,
		38.255959, 31.519896, 49.645134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783585, 31.990107, 50.119350>,  <38.945087, 31.422457, 49.720016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783585, 31.990107, 50.119350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.459572, 31.760872, 50.069695>,  <38.265163, 31.623331, 50.039902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.459572, 31.760872, 50.069695>,  <38.783585, 31.990107, 50.119350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459572, 31.760872, 50.069695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115720, -0.051311, 0.991956,
		-0.574847, 0.817886, -0.024754,
		-0.810037, -0.573088, -0.124142,
		38.216560, 31.588945, 50.032452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311493, 32.244373, 50.628311>,  <38.783585, 31.990107, 50.119350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311493, 32.244373, 50.628311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.192436, 31.869047, 50.557919>,  <38.121002, 31.643850, 50.515682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.192436, 31.869047, 50.557919>,  <38.311493, 32.244373, 50.628311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192436, 31.869047, 50.557919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153154, -0.135013, 0.978936,
		-0.942312, 0.318327, -0.103522,
		-0.297645, -0.938318, -0.175977,
		38.103142, 31.587551, 50.505127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733124, 32.217358, 50.957317>,  <38.311493, 32.244373, 50.628311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733124, 32.217358, 50.957317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.837914, 31.832155, 50.932053>,  <37.900787, 31.601034, 50.916893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.837914, 31.832155, 50.932053>,  <37.733124, 32.217358, 50.957317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837914, 31.832155, 50.932053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161969, -0.108396, 0.980824,
		-0.951386, -0.246718, -0.184374,
		0.261973, -0.963006, -0.063165,
		37.916504, 31.543253, 50.913101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299660, 31.809111, 51.446808>,  <37.733124, 32.217358, 50.957317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299660, 31.809111, 51.446808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.567295, 31.523077, 51.365845>,  <37.727879, 31.351456, 51.317268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.567295, 31.523077, 51.365845>,  <37.299660, 31.809111, 51.446808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567295, 31.523077, 51.365845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187890, -0.426269, 0.884868,
		-0.719037, -0.554027, -0.419571,
		0.669091, -0.715086, -0.202407,
		37.768024, 31.308552, 51.305122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943947, 31.205036, 51.756485>,  <37.299660, 31.809111, 51.446808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943947, 31.205036, 51.756485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.337734, 31.141615, 51.726353>,  <37.574009, 31.103561, 51.708271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.337734, 31.141615, 51.726353>,  <36.943947, 31.205036, 51.756485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337734, 31.141615, 51.726353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002247, -0.417729, 0.908569,
		-0.175525, -0.894630, -0.410886,
		0.984473, -0.158554, -0.075333,
		37.633076, 31.094049, 51.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.240818, 35.639320, 36.132542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630569, 35.607658, 36.216747>,  <36.864422, 35.588661, 36.267269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630569, 35.607658, 36.216747>,  <36.240818, 35.639320, 36.132542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630569, 35.607658, 36.216747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224809, -0.369613, 0.901580,
		0.006445, -0.925808, -0.377939,
		0.974382, -0.079154, 0.210512,
		36.922882, 35.583912, 36.279900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395832, 34.928570, 36.338497>,  <36.240818, 35.639320, 36.132542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395832, 34.928570, 36.338497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682156, 35.167641, 36.482941>,  <36.853951, 35.311085, 36.569607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682156, 35.167641, 36.482941>,  <36.395832, 34.928570, 36.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682156, 35.167641, 36.482941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002819, -0.514645, 0.857399,
		0.698290, -0.614752, -0.366703,
		0.715810, 0.597679, 0.361104,
		36.896900, 35.346943, 36.591270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876419, 34.482414, 36.666477>,  <36.395832, 34.928570, 36.338497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876419, 34.482414, 36.666477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965111, 34.838646, 36.825325>,  <37.018326, 35.052383, 36.920631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965111, 34.838646, 36.825325>,  <36.876419, 34.482414, 36.666477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965111, 34.838646, 36.825325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141318, -0.373607, 0.916759,
		0.964814, -0.259391, 0.043016,
		0.221728, 0.890581, 0.397118,
		37.031628, 35.105820, 36.944462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376919, 34.301708, 37.084175>,  <36.876419, 34.482414, 36.666477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376919, 34.301708, 37.084175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215607, 34.645416, 37.210045>,  <37.118820, 34.851643, 37.285568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215607, 34.645416, 37.210045>,  <37.376919, 34.301708, 37.084175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215607, 34.645416, 37.210045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014888, -0.337671, 0.941146,
		0.914957, 0.384226, 0.123382,
		-0.403276, 0.859272, 0.314675,
		37.094624, 34.903198, 37.304447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709469, 34.470001, 37.661968>,  <37.376919, 34.301708, 37.084175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709469, 34.470001, 37.661968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370304, 34.680138, 37.690414>,  <37.166805, 34.806221, 37.707481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370304, 34.680138, 37.690414>,  <37.709469, 34.470001, 37.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370304, 34.680138, 37.690414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084689, -0.266660, 0.960063,
		0.523325, 0.808028, 0.270595,
		-0.847914, 0.525341, 0.071119,
		37.115929, 34.837742, 37.711750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735794, 34.792446, 38.340492>,  <37.709469, 34.470001, 37.661968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735794, 34.792446, 38.340492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350765, 34.787071, 38.232212>,  <37.119747, 34.783844, 38.167244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350765, 34.787071, 38.232212>,  <37.735794, 34.792446, 38.340492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350765, 34.787071, 38.232212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258700, -0.252249, 0.932440,
		-0.080816, 0.967569, 0.239330,
		-0.962571, -0.013442, -0.270696,
		37.061993, 34.783039, 38.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464230, 35.177067, 38.848366>,  <37.735794, 34.792446, 38.340492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464230, 35.177067, 38.848366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162582, 34.985489, 38.668621>,  <36.981594, 34.870544, 38.560776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162582, 34.985489, 38.668621>,  <37.464230, 35.177067, 38.848366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162582, 34.985489, 38.668621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437726, -0.143543, 0.887576,
		-0.489601, 0.866031, -0.101398,
		-0.754113, -0.478942, -0.449363,
		36.936348, 34.841805, 38.533813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940327, 35.496883, 39.196239>,  <37.464230, 35.177067, 38.848366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940327, 35.496883, 39.196239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795155, 35.161392, 39.033852>,  <36.708050, 34.960098, 38.936417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795155, 35.161392, 39.033852>,  <36.940327, 35.496883, 39.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795155, 35.161392, 39.033852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460342, -0.217414, 0.860707,
		-0.810165, 0.499262, -0.307197,
		-0.362929, -0.838731, -0.405972,
		36.686275, 34.909775, 38.912060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136559, 35.549904, 39.338223>,  <36.940327, 35.496883, 39.196239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136559, 35.549904, 39.338223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248432, 35.174789, 39.255932>,  <36.315556, 34.949718, 39.206558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248432, 35.174789, 39.255932>,  <36.136559, 35.549904, 39.338223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248432, 35.174789, 39.255932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478532, -0.321931, 0.816926,
		-0.832335, -0.130037, -0.538803,
		0.279687, -0.937790, -0.205727,
		36.332340, 34.893452, 39.194214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607021, 35.164658, 39.656982>,  <36.136559, 35.549904, 39.338223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607021, 35.164658, 39.656982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909698, 34.905308, 39.623432>,  <36.091305, 34.749699, 39.603302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909698, 34.905308, 39.623432>,  <35.607021, 35.164658, 39.656982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909698, 34.905308, 39.623432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059791, -0.196388, 0.978702,
		-0.651035, -0.735558, -0.187372,
		0.756689, -0.648372, -0.083876,
		36.136703, 34.710796, 39.598270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444786, 34.572262, 40.122349>,  <35.607021, 35.164658, 39.656982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444786, 34.572262, 40.122349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839283, 34.591839, 40.059196>,  <36.075981, 34.603584, 40.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839283, 34.591839, 40.059196>,  <35.444786, 34.572262, 40.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839283, 34.591839, 40.059196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165267, -0.309158, 0.936540,
		-0.002974, -0.949750, -0.312994,
		0.986244, 0.048942, -0.157882,
		36.135155, 34.606522, 40.011833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704861, 33.813290, 40.254784>,  <35.444786, 34.572262, 40.122349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704861, 33.813290, 40.254784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010490, 34.065479, 40.309460>,  <36.193871, 34.216793, 40.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010490, 34.065479, 40.309460>,  <35.704861, 33.813290, 40.254784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010490, 34.065479, 40.309460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089850, -0.313814, 0.945223,
		0.638836, -0.709943, -0.296427,
		0.764078, 0.630477, 0.136688,
		36.239716, 34.254623, 40.350468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648571, 32.971996, 40.077797>,  <35.704861, 33.813290, 40.254784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648571, 32.971996, 40.077797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323841, 32.762955, 40.181969>,  <35.129002, 32.637531, 40.244473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323841, 32.762955, 40.181969>,  <35.648571, 32.971996, 40.077797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323841, 32.762955, 40.181969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402309, 0.177377, -0.898156,
		0.423184, -0.833921, -0.354247,
		-0.811827, -0.522602, 0.260431,
		35.080292, 32.606174, 40.260098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483738, 32.570515, 39.553547>,  <35.648571, 32.971996, 40.077797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483738, 32.570515, 39.553547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139732, 32.582466, 39.757301>,  <34.933327, 32.589638, 39.879555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139732, 32.582466, 39.757301>,  <35.483738, 32.570515, 39.553547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139732, 32.582466, 39.757301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510130, -0.027329, -0.859663,
		-0.011771, -0.999180, 0.038749,
		-0.860016, 0.029886, 0.509390,
		34.881729, 32.591431, 39.910118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124851, 31.973469, 39.379772>,  <35.483738, 32.570515, 39.553547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124851, 31.973469, 39.379772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847759, 32.230850, 39.510063>,  <34.681503, 32.385281, 39.588238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847759, 32.230850, 39.510063>,  <35.124851, 31.973469, 39.379772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847759, 32.230850, 39.510063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556579, -0.189760, -0.808833,
		-0.458636, -0.741593, 0.489585,
		-0.692728, 0.643453, 0.325725,
		34.639942, 32.423885, 39.607780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484940, 31.655075, 39.164852>,  <35.124851, 31.973469, 39.379772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484940, 31.655075, 39.164852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394024, 32.038940, 39.231045>,  <34.339474, 32.269260, 39.270760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394024, 32.038940, 39.231045>,  <34.484940, 31.655075, 39.164852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394024, 32.038940, 39.231045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661961, -0.027625, -0.749030,
		-0.714245, -0.279789, 0.641539,
		-0.227293, 0.959664, 0.165478,
		34.325836, 32.326839, 39.280689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838715, 31.724447, 39.228661>,  <34.484940, 31.655075, 39.164852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838715, 31.724447, 39.228661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916241, 32.104469, 39.130817>,  <33.962757, 32.332481, 39.072113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916241, 32.104469, 39.130817>,  <33.838715, 31.724447, 39.228661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916241, 32.104469, 39.130817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702029, -0.039851, -0.711032,
		-0.685267, 0.309532, 0.659242,
		0.193816, 0.950054, -0.244609,
		33.974384, 32.389484, 39.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201599, 32.112110, 39.160995>,  <33.838715, 31.724447, 39.228661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201599, 32.112110, 39.160995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459846, 32.342564, 38.960499>,  <33.614796, 32.480835, 38.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459846, 32.342564, 38.960499>,  <33.201599, 32.112110, 39.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459846, 32.342564, 38.960499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618345, 0.009231, -0.785852,
		-0.448132, 0.817300, 0.362212,
		0.645621, 0.576138, -0.501237,
		33.653534, 32.515404, 38.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733295, 32.605553, 38.901264>,  <33.201599, 32.112110, 39.160995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733295, 32.605553, 38.901264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063423, 32.610409, 38.675449>,  <33.261501, 32.613323, 38.539963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063423, 32.610409, 38.675449>,  <32.733295, 32.605553, 38.901264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063423, 32.610409, 38.675449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563820, -0.036960, -0.825071,
		-0.030878, 0.999243, -0.023661,
		0.825320, 0.012136, -0.564534,
		33.311020, 32.614048, 38.506088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615334, 33.127731, 38.498768>,  <32.733295, 32.605553, 38.901264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615334, 33.127731, 38.498768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899223, 32.929291, 38.298698>,  <33.069557, 32.810226, 38.178658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899223, 32.929291, 38.298698>,  <32.615334, 33.127731, 38.498768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899223, 32.929291, 38.298698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542196, 0.068654, -0.837443,
		0.449798, 0.865544, -0.220261,
		0.709722, -0.496105, -0.500175,
		33.112141, 32.780460, 38.148647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785904, 33.513634, 37.877693>,  <32.615334, 33.127731, 38.498768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785904, 33.513634, 37.877693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942329, 33.154678, 37.795944>,  <33.036182, 32.939304, 37.746895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942329, 33.154678, 37.795944>,  <32.785904, 33.513634, 37.877693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942329, 33.154678, 37.795944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317488, 0.076889, -0.945140,
		0.863871, 0.434492, -0.254842,
		0.391061, -0.897388, -0.204368,
		33.059647, 32.885464, 37.734634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077911, 33.575363, 37.281921>,  <32.785904, 33.513634, 37.877693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077911, 33.575363, 37.281921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983952, 33.187744, 37.312332>,  <32.927578, 32.955173, 37.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983952, 33.187744, 37.312332>,  <33.077911, 33.575363, 37.281921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983952, 33.187744, 37.312332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455306, 0.040587, -0.889410,
		0.858791, -0.243533, -0.450745,
		-0.234895, -0.969043, 0.076026,
		32.913483, 32.897030, 37.335140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019833, 33.282326, 36.573509>,  <33.077911, 33.575363, 37.281921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019833, 33.282326, 36.573509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837749, 32.973587, 36.751064>,  <32.728500, 32.788345, 36.857597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837749, 32.973587, 36.751064>,  <33.019833, 33.282326, 36.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837749, 32.973587, 36.751064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457939, -0.224589, -0.860146,
		0.763594, -0.594820, -0.251223,
		-0.455210, -0.771847, 0.443886,
		32.701187, 32.742031, 36.884232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011570, 32.639759, 36.169361>,  <33.019833, 33.282326, 36.573509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011570, 32.639759, 36.169361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699070, 32.596546, 36.415283>,  <32.511570, 32.570618, 36.562836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699070, 32.596546, 36.415283>,  <33.011570, 32.639759, 36.169361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699070, 32.596546, 36.415283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535343, -0.390579, -0.748903,
		0.321034, -0.914209, 0.247305,
		-0.781246, -0.108030, 0.614804,
		32.464695, 32.564137, 36.599724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668251, 32.095989, 35.927860>,  <33.011570, 32.639759, 36.169361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668251, 32.095989, 35.927860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380245, 32.263466, 36.149227>,  <32.207443, 32.363953, 36.282047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380245, 32.263466, 36.149227>,  <32.668251, 32.095989, 35.927860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380245, 32.263466, 36.149227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660341, -0.168162, -0.731895,
		-0.213380, -0.892420, 0.397563,
		-0.720013, 0.418699, 0.553419,
		32.164242, 32.389072, 36.315254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227673, 31.523296, 35.995224>,  <32.668251, 32.095989, 35.927860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227673, 31.523296, 35.995224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083775, 31.896299, 36.007957>,  <31.997437, 32.120102, 36.015598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083775, 31.896299, 36.007957>,  <32.227673, 31.523296, 35.995224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083775, 31.896299, 36.007957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656501, -0.228727, -0.718812,
		-0.663018, -0.279482, 0.694476,
		-0.359740, 0.932509, 0.031830,
		31.975853, 32.176052, 36.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527210, 30.932556, 36.446033>,  <32.227673, 31.523296, 35.995224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527210, 30.932556, 36.446033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228477, 30.699686, 36.317459>,  <32.049240, 30.559965, 36.240314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228477, 30.699686, 36.317459>,  <32.527210, 30.932556, 36.446033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228477, 30.699686, 36.317459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663730, 0.622488, 0.414694,
		-0.041336, 0.523050, -0.851299,
		-0.746830, -0.582174, -0.321433,
		32.004429, 30.525034, 36.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199154, 30.531805, 36.528271>,  <32.527210, 30.932556, 36.446033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199154, 30.531805, 36.528271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424873, 30.527271, 36.198074>,  <33.560307, 30.524551, 35.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424873, 30.527271, 36.198074>,  <33.199154, 30.531805, 36.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424873, 30.527271, 36.198074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519081, 0.782401, 0.344097,
		0.641967, -0.622672, 0.447391,
		0.564298, -0.011334, -0.825493,
		33.594162, 30.523870, 35.950428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939373, 30.442560, 36.660095>,  <33.199154, 30.531805, 36.528271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939373, 30.442560, 36.660095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898537, 30.639971, 36.314610>,  <33.874035, 30.758417, 36.107319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898537, 30.639971, 36.314610>,  <33.939373, 30.442560, 36.660095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898537, 30.639971, 36.314610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769502, 0.589430, 0.245842,
		0.630431, -0.639534, -0.439947,
		-0.102094, 0.493527, -0.863718,
		33.867908, 30.788029, 36.055492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212593, 29.782066, 36.843372>,  <33.939373, 30.442560, 36.660095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212593, 29.782066, 36.843372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501373, 30.008001, 37.003246>,  <34.674641, 30.143562, 37.099171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501373, 30.008001, 37.003246>,  <34.212593, 29.782066, 36.843372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501373, 30.008001, 37.003246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098307, -0.655489, 0.748779,
		0.684927, -0.501289, -0.528757,
		0.721949, 0.564839, 0.399682,
		34.717957, 30.177454, 37.123150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746441, 29.352938, 36.996746>,  <34.212593, 29.782066, 36.843372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746441, 29.352938, 36.996746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792088, 29.653315, 37.256920>,  <34.819477, 29.833540, 37.413025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792088, 29.653315, 37.256920>,  <34.746441, 29.352938, 36.996746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792088, 29.653315, 37.256920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243910, -0.655849, 0.714402,
		0.963060, 0.077122, -0.258006,
		0.114116, 0.750942, 0.650433,
		34.826321, 29.878597, 37.452049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294357, 29.256996, 37.351498>,  <34.746441, 29.352938, 36.996746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294357, 29.256996, 37.351498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100304, 29.499676, 37.603390>,  <34.983871, 29.645285, 37.754524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100304, 29.499676, 37.603390>,  <35.294357, 29.256996, 37.351498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100304, 29.499676, 37.603390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240218, -0.599978, 0.763100,
		0.840796, 0.521480, 0.145331,
		-0.485137, 0.606701, 0.629728,
		34.954762, 29.681686, 37.792309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777275, 29.338282, 38.008839>,  <35.294357, 29.256996, 37.351498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777275, 29.338282, 38.008839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402294, 29.441179, 38.102654>,  <35.177307, 29.502918, 38.158943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402294, 29.441179, 38.102654>,  <35.777275, 29.338282, 38.008839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402294, 29.441179, 38.102654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070565, -0.519329, 0.851656,
		0.340885, 0.814937, 0.468694,
		-0.937453, 0.257244, 0.234537,
		35.121059, 29.518353, 38.173016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892349, 29.328669, 38.680534>,  <35.777275, 29.338282, 38.008839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892349, 29.328669, 38.680534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492977, 29.348911, 38.690144>,  <35.253353, 29.361057, 38.695908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492977, 29.348911, 38.690144>,  <35.892349, 29.328669, 38.680534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492977, 29.348911, 38.690144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001828, -0.399191, 0.916866,
		0.055987, 0.915470, 0.398472,
		-0.998430, 0.050604, 0.024023,
		35.193447, 29.364092, 38.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797695, 29.527935, 39.367229>,  <35.892349, 29.328669, 38.680534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797695, 29.527935, 39.367229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449863, 29.380562, 39.235725>,  <35.241165, 29.292137, 39.156822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449863, 29.380562, 39.235725>,  <35.797695, 29.527935, 39.367229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449863, 29.380562, 39.235725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126534, -0.477303, 0.869581,
		-0.477303, 0.797771, 0.368434,
		-0.869581, -0.368434, -0.328763,
		35.188988, 29.270031, 39.137096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379105, 29.528088, 39.939629>,  <35.797695, 29.527935, 39.367229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379105, 29.528088, 39.939629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215233, 29.265501, 39.686264>,  <35.116909, 29.107948, 39.534245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215233, 29.265501, 39.686264>,  <35.379105, 29.528088, 39.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215233, 29.265501, 39.686264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329648, -0.540901, 0.773795,
		-0.850585, 0.525813, 0.005193,
		-0.409680, -0.656466, -0.633415,
		35.092327, 29.068562, 39.496239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784809, 29.360035, 40.346531>,  <35.379105, 29.528088, 39.939629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784809, 29.360035, 40.346531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866043, 29.081667, 40.071011>,  <34.914783, 28.914646, 39.905697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866043, 29.081667, 40.071011>,  <34.784809, 29.360035, 40.346531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866043, 29.081667, 40.071011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210516, -0.718044, 0.663397,
		-0.956263, 0.010276, -0.292329,
		0.203088, -0.695922, -0.688802,
		34.926968, 28.872890, 39.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318203, 28.838202, 40.511292>,  <34.784809, 29.360035, 40.346531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318203, 28.838202, 40.511292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608799, 28.666166, 40.296913>,  <34.783157, 28.562946, 40.168285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608799, 28.666166, 40.296913>,  <34.318203, 28.838202, 40.511292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608799, 28.666166, 40.296913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026064, -0.762116, 0.646916,
		-0.686681, -0.483948, -0.542461,
		0.726491, -0.430086, -0.535944,
		34.826748, 28.537140, 40.136131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022144, 28.193489, 40.395359>,  <34.318203, 28.838202, 40.511292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022144, 28.193489, 40.395359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420334, 28.172251, 40.363831>,  <34.659248, 28.159508, 40.344913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420334, 28.172251, 40.363831>,  <34.022144, 28.193489, 40.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420334, 28.172251, 40.363831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016650, -0.719120, 0.694686,
		-0.093565, -0.692854, -0.714981,
		0.995474, -0.053094, -0.078820,
		34.718975, 28.156322, 40.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210579, 27.498671, 40.355835>,  <34.022144, 28.193489, 40.395359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210579, 27.498671, 40.355835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539761, 27.680208, 40.492523>,  <34.737270, 27.789131, 40.574535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539761, 27.680208, 40.492523>,  <34.210579, 27.498671, 40.355835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539761, 27.680208, 40.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129502, -0.735535, 0.664994,
		0.553151, -0.503006, -0.664085,
		0.822954, 0.453843, 0.341722,
		34.786648, 27.816360, 40.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728958, 26.884466, 40.507652>,  <34.210579, 27.498671, 40.355835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728958, 26.884466, 40.507652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892784, 27.202557, 40.686478>,  <34.991081, 27.393412, 40.793774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892784, 27.202557, 40.686478>,  <34.728958, 26.884466, 40.507652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892784, 27.202557, 40.686478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372186, -0.593068, 0.713966,
		0.832905, -0.126027, -0.538875,
		0.409569, 0.795228, 0.447063,
		35.015656, 27.441126, 40.820595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527138, 26.863817, 40.504990>,  <34.728958, 26.884466, 40.507652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527138, 26.863817, 40.504990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410118, 27.091965, 40.812000>,  <35.339909, 27.228853, 40.996204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410118, 27.091965, 40.812000>,  <35.527138, 26.863817, 40.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410118, 27.091965, 40.812000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617290, -0.500362, 0.607117,
		0.730322, 0.651395, -0.205705,
		-0.292546, 0.570370, 0.767525,
		35.322353, 27.263077, 41.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085899, 26.965593, 40.941635>,  <35.527138, 26.863817, 40.504990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085899, 26.965593, 40.941635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802151, 27.097635, 41.190739>,  <35.631901, 27.176861, 41.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802151, 27.097635, 41.190739>,  <36.085899, 26.965593, 40.941635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802151, 27.097635, 41.190739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570294, -0.250411, 0.782342,
		0.414200, 0.910124, -0.010623,
		-0.709368, 0.330104, 0.622758,
		35.589340, 27.196667, 41.377567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398212, 27.359079, 41.376553>,  <36.085899, 26.965593, 40.941635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398212, 27.359079, 41.376553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067905, 27.224331, 41.557495>,  <35.869720, 27.143482, 41.666061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067905, 27.224331, 41.557495>,  <36.398212, 27.359079, 41.376553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067905, 27.224331, 41.557495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539430, -0.237512, 0.807839,
		-0.164698, 0.911101, 0.377849,
		-0.825766, -0.336873, 0.452358,
		35.820175, 27.123268, 41.693203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466530, 27.594112, 42.083183>,  <36.398212, 27.359079, 41.376553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466530, 27.594112, 42.083183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181816, 27.317705, 42.133545>,  <36.010986, 27.151859, 42.163761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181816, 27.317705, 42.133545>,  <36.466530, 27.594112, 42.083183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181816, 27.317705, 42.133545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381142, -0.229415, 0.895600,
		-0.589993, 0.685463, 0.426671,
		-0.711785, -0.691020, 0.125905,
		35.968281, 27.110399, 42.171318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277653, 27.697681, 42.820217>,  <36.466530, 27.594112, 42.083183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277653, 27.697681, 42.820217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143970, 27.335152, 42.716770>,  <36.063763, 27.117634, 42.654701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143970, 27.335152, 42.716770>,  <36.277653, 27.697681, 42.820217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143970, 27.335152, 42.716770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503719, -0.403676, 0.763749,
		-0.796602, 0.124980, 0.591443,
		-0.334205, -0.906325, -0.258615,
		36.043709, 27.063253, 42.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992989, 27.472166, 43.374493>,  <36.277653, 27.697681, 42.820217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992989, 27.472166, 43.374493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057587, 27.140558, 43.160336>,  <36.096344, 26.941593, 43.031841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057587, 27.140558, 43.160336>,  <35.992989, 27.472166, 43.374493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057587, 27.140558, 43.160336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078383, -0.530025, 0.844351,
		-0.983756, -0.178321, -0.020613,
		0.161491, -0.829020, -0.535393,
		36.106033, 26.891851, 42.999718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577915, 26.784464, 43.742062>,  <35.992989, 27.472166, 43.374493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577915, 26.784464, 43.742062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884224, 26.643221, 43.527058>,  <36.068008, 26.558475, 43.398056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884224, 26.643221, 43.527058>,  <35.577915, 26.784464, 43.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884224, 26.643221, 43.527058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185289, -0.679205, 0.710175,
		-0.615845, -0.643424, -0.454687,
		0.765769, -0.353109, -0.537505,
		36.113956, 26.537289, 43.365807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664902, 26.083315, 43.919003>,  <35.577915, 26.784464, 43.742062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664902, 26.083315, 43.919003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020870, 26.186327, 43.768417>,  <36.234451, 26.248135, 43.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020870, 26.186327, 43.768417>,  <35.664902, 26.083315, 43.919003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020870, 26.186327, 43.768417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445765, -0.665933, 0.598186,
		-0.096649, -0.700151, -0.707423,
		0.889917, 0.257531, -0.376465,
		36.287846, 26.263586, 43.655479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980633, 25.439577, 43.713833>,  <35.664902, 26.083315, 43.919003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980633, 25.439577, 43.713833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246090, 25.727829, 43.794102>,  <36.405365, 25.900780, 43.842262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246090, 25.727829, 43.794102>,  <35.980633, 25.439577, 43.713833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246090, 25.727829, 43.794102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435506, -0.590315, 0.679604,
		0.608205, -0.363619, -0.705598,
		0.663642, 0.720631, 0.200674,
		36.445183, 25.944017, 43.854305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494091, 25.123968, 44.154877>,  <35.980633, 25.439577, 43.713833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494091, 25.123968, 44.154877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634605, 25.496586, 44.192448>,  <36.718914, 25.720158, 44.214993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634605, 25.496586, 44.192448>,  <36.494091, 25.123968, 44.154877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634605, 25.496586, 44.192448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531239, -0.280923, 0.799292,
		0.770965, -0.230877, -0.593556,
		0.351282, 0.931546, 0.093931,
		36.739990, 25.776051, 44.220627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222694, 25.082565, 44.062222>,  <36.494091, 25.123968, 44.154877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222694, 25.082565, 44.062222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156376, 25.420319, 44.265995>,  <37.116585, 25.622971, 44.388260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156376, 25.420319, 44.265995>,  <37.222694, 25.082565, 44.062222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156376, 25.420319, 44.265995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668097, -0.283799, 0.687826,
		0.725367, 0.454396, -0.517076,
		-0.165800, 0.844383, 0.509438,
		37.106636, 25.673634, 44.418827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913582, 25.321144, 44.226471>,  <37.222694, 25.082565, 44.062222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913582, 25.321144, 44.226471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656406, 25.482574, 44.486858>,  <37.502102, 25.579433, 44.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656406, 25.482574, 44.486858>,  <37.913582, 25.321144, 44.226471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656406, 25.482574, 44.486858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634855, -0.194657, 0.747709,
		0.428472, 0.893999, -0.131060,
		-0.642939, 0.403577, 0.650965,
		37.463524, 25.603647, 44.682148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185497, 26.007458, 44.509502>,  <37.913582, 25.321144, 44.226471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185497, 26.007458, 44.509502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940201, 25.806061, 44.752956>,  <37.793022, 25.685223, 44.899029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940201, 25.806061, 44.752956>,  <38.185497, 26.007458, 44.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940201, 25.806061, 44.752956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722411, -0.045853, 0.689942,
		-0.319473, 0.862782, 0.391848,
		-0.613237, -0.503493, 0.608634,
		37.756229, 25.655012, 44.935547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890652, 26.335442, 44.526039>,  <38.185497, 26.007458, 44.509502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890652, 26.335442, 44.526039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268551, 26.466259, 44.534889>,  <39.495293, 26.544748, 44.540199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268551, 26.466259, 44.534889>,  <38.890652, 26.335442, 44.526039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268551, 26.466259, 44.534889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009606, 0.095087, -0.995423,
		-0.327649, 0.940214, 0.092975,
		0.944751, 0.327042, 0.022123,
		39.551975, 26.564371, 44.541527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883583, 26.997326, 44.338917>,  <38.890652, 26.335442, 44.526039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883583, 26.997326, 44.338917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244812, 26.851629, 44.247883>,  <39.461548, 26.764212, 44.193264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244812, 26.851629, 44.247883>,  <38.883583, 26.997326, 44.338917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244812, 26.851629, 44.247883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151852, 0.224887, -0.962480,
		0.401755, 0.903745, 0.147778,
		0.903069, -0.364241, -0.227585,
		39.515732, 26.742357, 44.179607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227077, 27.530220, 43.821304>,  <38.883583, 26.997326, 44.338917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227077, 27.530220, 43.821304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457428, 27.212200, 43.745140>,  <39.595638, 27.021387, 43.699440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457428, 27.212200, 43.745140>,  <39.227077, 27.530220, 43.821304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457428, 27.212200, 43.745140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011105, 0.240499, -0.970586,
		0.817460, 0.556825, 0.147327,
		0.575879, -0.795051, -0.190415,
		39.630192, 26.973684, 43.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769531, 27.716663, 43.402042>,  <39.227077, 27.530220, 43.821304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769531, 27.716663, 43.402042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774441, 27.321438, 43.340618>,  <39.777386, 27.084303, 43.303764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774441, 27.321438, 43.340618>,  <39.769531, 27.716663, 43.402042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774441, 27.321438, 43.340618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075771, 0.154050, -0.985154,
		0.997050, 0.000456, 0.076758,
		0.012274, -0.988063, -0.153561,
		39.778122, 27.025019, 43.294548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354546, 27.598427, 43.023357>,  <39.769531, 27.716663, 43.402042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354546, 27.598427, 43.023357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100185, 27.303005, 42.933762>,  <39.947571, 27.125751, 42.880005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100185, 27.303005, 42.933762>,  <40.354546, 27.598427, 43.023357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100185, 27.303005, 42.933762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024543, 0.270727, -0.962343,
		0.771384, -0.617449, -0.154028,
		-0.635897, -0.738555, -0.223988,
		39.909416, 27.081438, 42.866566>
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
