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
	<24.415745, 35.389645, 35.112076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333838, 35.039307, 34.937279>,  <24.284693, 34.829102, 34.832401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333838, 35.039307, 34.937279>,  <24.415745, 35.389645, 35.112076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333838, 35.039307, 34.937279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490581, 0.294496, -0.820124,
		0.846995, -0.382315, 0.369370,
		-0.204768, -0.875847, -0.436993,
		24.272408, 34.776554, 34.806179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077318, 34.992115, 34.980122>,  <24.415745, 35.389645, 35.112076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077318, 34.992115, 34.980122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770464, 34.980042, 34.723812>,  <24.586351, 34.972797, 34.570026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770464, 34.980042, 34.723812>,  <25.077318, 34.992115, 34.980122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770464, 34.980042, 34.723812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580908, 0.391050, -0.713881,
		0.272120, -0.919874, -0.282456,
		-0.767135, -0.030180, -0.640775,
		24.540323, 34.970985, 34.531578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308796, 34.686256, 34.413727>,  <25.077318, 34.992115, 34.980122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308796, 34.686256, 34.413727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011194, 34.940731, 34.332024>,  <24.832634, 35.093418, 34.283001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011194, 34.940731, 34.332024>,  <25.308796, 34.686256, 34.413727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011194, 34.940731, 34.332024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581574, 0.466059, -0.666753,
		-0.328985, -0.614859, -0.716741,
		-0.744003, 0.636190, -0.204259,
		24.787992, 35.131588, 34.270744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227240, 34.731358, 33.648346>,  <25.308796, 34.686256, 34.413727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227240, 34.731358, 33.648346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117386, 35.062870, 33.843365>,  <25.051474, 35.261776, 33.960377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117386, 35.062870, 33.843365>,  <25.227240, 34.731358, 33.648346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117386, 35.062870, 33.843365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615511, 0.541072, -0.573050,
		-0.738730, 0.142712, -0.658719,
		-0.274634, 0.828779, 0.487547,
		25.034996, 35.311504, 33.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147005, 35.282753, 33.165127>,  <25.227240, 34.731358, 33.648346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147005, 35.282753, 33.165127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149351, 35.474457, 33.516186>,  <25.150759, 35.589481, 33.726822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149351, 35.474457, 33.516186>,  <25.147005, 35.282753, 33.165127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149351, 35.474457, 33.516186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656058, 0.660532, -0.365083,
		-0.754688, 0.577930, -0.310552,
		0.005863, 0.479264, 0.877651,
		25.151110, 35.618237, 33.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662687, 35.887962, 33.145081>,  <25.147005, 35.282753, 33.165127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662687, 35.887962, 33.145081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893932, 35.671169, 33.389065>,  <26.032679, 35.541096, 33.535454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893932, 35.671169, 33.389065>,  <25.662687, 35.887962, 33.145081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893932, 35.671169, 33.389065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410922, 0.839202, 0.356207,
		-0.704934, 0.044717, 0.707862,
		0.578111, -0.541979, 0.609957,
		26.067366, 35.508575, 33.572052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553017, 36.191559, 33.810162>,  <25.662687, 35.887962, 33.145081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553017, 36.191559, 33.810162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902136, 36.009800, 33.738892>,  <26.111609, 35.900745, 33.696129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902136, 36.009800, 33.738892>,  <25.553017, 36.191559, 33.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902136, 36.009800, 33.738892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487863, 0.801301, 0.346276,
		-0.014572, -0.389156, 0.921057,
		0.872799, -0.454395, -0.178178,
		26.163975, 35.873482, 33.685436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942595, 36.185699, 34.463268>,  <25.553017, 36.191559, 33.810162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942595, 36.185699, 34.463268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204062, 36.160454, 34.161610>,  <26.360941, 36.145306, 33.980614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204062, 36.160454, 34.161610>,  <25.942595, 36.185699, 34.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204062, 36.160454, 34.161610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543296, 0.732855, 0.409576,
		0.526828, -0.677451, 0.513335,
		0.653667, -0.063116, -0.754145,
		26.400162, 36.141518, 33.935368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549564, 36.488995, 34.764969>,  <25.942595, 36.185699, 34.463268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549564, 36.488995, 34.764969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671535, 36.487911, 34.384022>,  <26.744719, 36.487263, 34.155453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671535, 36.487911, 34.384022>,  <26.549564, 36.488995, 34.764969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671535, 36.487911, 34.384022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497882, 0.852917, 0.156990,
		0.811869, -0.522039, 0.261426,
		0.304929, -0.002704, -0.952371,
		26.763014, 36.487099, 34.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259188, 36.673000, 34.756229>,  <26.549564, 36.488995, 34.764969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259188, 36.673000, 34.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188595, 36.732716, 34.367062>,  <27.146238, 36.768543, 34.133560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188595, 36.732716, 34.367062>,  <27.259188, 36.673000, 34.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188595, 36.732716, 34.367062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610906, 0.791631, 0.010656,
		0.771782, -0.592480, -0.230909,
		-0.176482, 0.149287, -0.972917,
		27.135651, 36.777500, 34.075188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925640, 36.835548, 34.603130>,  <27.259188, 36.673000, 34.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925640, 36.835548, 34.603130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714464, 36.944248, 34.281277>,  <27.587759, 37.009468, 34.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714464, 36.944248, 34.281277>,  <27.925640, 36.835548, 34.603130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714464, 36.944248, 34.281277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559690, 0.823913, -0.088961,
		0.638771, -0.497310, -0.587073,
		-0.527938, 0.271753, -0.804631,
		27.556082, 37.025776, 34.039886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440706, 36.959278, 33.992981>,  <27.925640, 36.835548, 34.603130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440706, 36.959278, 33.992981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104546, 37.176060, 33.991581>,  <27.902849, 37.306129, 33.990742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104546, 37.176060, 33.991581>,  <28.440706, 36.959278, 33.992981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104546, 37.176060, 33.991581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541196, 0.839537, 0.047806,
		0.028849, 0.038280, -0.998851,
		-0.840402, 0.541953, -0.003503,
		27.852425, 37.338646, 33.990532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652426, 37.457432, 33.493092>,  <28.440706, 36.959278, 33.992981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652426, 37.457432, 33.493092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319979, 37.610386, 33.654598>,  <28.120510, 37.702156, 33.751503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319979, 37.610386, 33.654598>,  <28.652426, 37.457432, 33.493092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319979, 37.610386, 33.654598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364160, 0.922977, -0.124500,
		-0.420273, 0.043561, -0.906352,
		-0.831119, 0.382381, 0.403765,
		28.070642, 37.725101, 33.775726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487921, 38.039520, 33.058838>,  <28.652426, 37.457432, 33.493092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487921, 38.039520, 33.058838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338030, 38.090584, 33.426159>,  <28.248096, 38.121223, 33.646553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338030, 38.090584, 33.426159>,  <28.487921, 38.039520, 33.058838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338030, 38.090584, 33.426159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425759, 0.903556, 0.048123,
		-0.823596, 0.409009, -0.392938,
		-0.374725, 0.127663, 0.918305,
		28.225613, 38.128883, 33.701649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237869, 38.750816, 33.141251>,  <28.487921, 38.039520, 33.058838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237869, 38.750816, 33.141251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314539, 38.623116, 33.512486>,  <28.360540, 38.546497, 33.735226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314539, 38.623116, 33.512486>,  <28.237869, 38.750816, 33.141251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314539, 38.623116, 33.512486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454797, 0.866856, 0.204258,
		-0.869724, 0.382938, 0.311349,
		0.191676, -0.319249, 0.928084,
		28.372042, 38.527340, 33.790913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148422, 39.283508, 33.518528>,  <28.237869, 38.750816, 33.141251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148422, 39.283508, 33.518528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357780, 39.059559, 33.775463>,  <28.483395, 38.925190, 33.929623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357780, 39.059559, 33.775463>,  <28.148422, 39.283508, 33.518528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357780, 39.059559, 33.775463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479473, 0.816682, 0.321149,
		-0.704388, 0.139895, 0.695893,
		0.523396, -0.559876, 0.642336,
		28.514799, 38.891598, 33.968163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279274, 39.704796, 34.023540>,  <28.148422, 39.283508, 33.518528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279274, 39.704796, 34.023540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553925, 39.426903, 34.109222>,  <28.718714, 39.260166, 34.160633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553925, 39.426903, 34.109222>,  <28.279274, 39.704796, 34.023540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553925, 39.426903, 34.109222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665943, 0.719233, 0.198051,
		-0.291660, 0.006665, 0.956499,
		0.686625, -0.694737, 0.214210,
		28.759912, 39.218483, 34.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632248, 39.973907, 34.645935>,  <28.279274, 39.704796, 34.023540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632248, 39.973907, 34.645935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873320, 39.691505, 34.497162>,  <29.017963, 39.522064, 34.407898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873320, 39.691505, 34.497162>,  <28.632248, 39.973907, 34.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873320, 39.691505, 34.497162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781646, 0.616126, 0.097050,
		0.160640, -0.349210, 0.923172,
		0.602682, -0.706004, -0.371932,
		29.054125, 39.479706, 34.385582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165262, 39.901951, 35.098984>,  <28.632248, 39.973907, 34.645935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165262, 39.901951, 35.098984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317841, 39.739468, 34.766842>,  <29.409388, 39.641979, 34.567554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317841, 39.739468, 34.766842>,  <29.165262, 39.901951, 35.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317841, 39.739468, 34.766842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837046, 0.532942, 0.123803,
		0.392243, -0.742273, 0.543301,
		0.381444, -0.406207, -0.830359,
		29.432274, 39.617607, 34.517735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888741, 39.642033, 35.289307>,  <29.165262, 39.901951, 35.098984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888741, 39.642033, 35.289307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893555, 39.682949, 34.891434>,  <29.896444, 39.707500, 34.652710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893555, 39.682949, 34.891434>,  <29.888741, 39.642033, 35.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893555, 39.682949, 34.891434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912132, 0.406477, 0.052841,
		0.409720, -0.907916, -0.088414,
		0.012037, 0.102295, -0.994681,
		29.897165, 39.713638, 34.593029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524849, 39.368134, 35.062786>,  <29.888741, 39.642033, 35.289307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524849, 39.368134, 35.062786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384153, 39.624790, 34.790150>,  <30.299736, 39.778786, 34.626568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384153, 39.624790, 34.790150>,  <30.524849, 39.368134, 35.062786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384153, 39.624790, 34.790150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892386, 0.449743, -0.037135,
		0.282715, -0.621308, -0.730786,
		-0.351738, 0.641645, -0.681595,
		30.278631, 39.817284, 34.585670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924164, 39.279785, 34.408382>,  <30.524849, 39.368134, 35.062786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924164, 39.279785, 34.408382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767708, 39.646015, 34.445766>,  <30.673834, 39.865753, 34.468197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767708, 39.646015, 34.445766>,  <30.924164, 39.279785, 34.408382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767708, 39.646015, 34.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887413, 0.402118, -0.225386,
		-0.243939, -0.005220, -0.969776,
		-0.391141, 0.915573, 0.093461,
		30.650366, 39.920689, 34.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425091, 39.640823, 33.987263>,  <30.924164, 39.279785, 34.408382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425091, 39.640823, 33.987263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223579, 39.910004, 34.203911>,  <31.102673, 40.071510, 34.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223579, 39.910004, 34.203911>,  <31.425091, 39.640823, 33.987263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223579, 39.910004, 34.203911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714773, 0.676821, -0.176104,
		-0.485086, 0.298415, -0.821973,
		-0.503776, 0.672950, 0.541616,
		31.072447, 40.111889, 34.366394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483114, 40.316044, 33.547028>,  <31.425091, 39.640823, 33.987263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483114, 40.316044, 33.547028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366611, 40.431461, 33.911865>,  <31.296709, 40.500713, 34.130768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366611, 40.431461, 33.911865>,  <31.483114, 40.316044, 33.547028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366611, 40.431461, 33.911865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719013, 0.694928, 0.009759,
		-0.631023, 0.658648, -0.409869,
		-0.291257, 0.288542, 0.912092,
		31.279234, 40.518024, 34.185493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257828, 41.016495, 33.537476>,  <31.483114, 40.316044, 33.547028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257828, 41.016495, 33.537476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415108, 40.943287, 33.897896>,  <31.509476, 40.899361, 34.114147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415108, 40.943287, 33.897896>,  <31.257828, 41.016495, 33.537476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415108, 40.943287, 33.897896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547445, 0.833951, -0.069501,
		-0.738715, 0.520605, 0.428101,
		0.393198, -0.183020, 0.901054,
		31.533068, 40.888382, 34.168213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259043, 41.594391, 33.995358>,  <31.257828, 41.016495, 33.537476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259043, 41.594391, 33.995358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570602, 41.374409, 34.115936>,  <31.757538, 41.242420, 34.188282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570602, 41.374409, 34.115936>,  <31.259043, 41.594391, 33.995358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570602, 41.374409, 34.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596585, 0.797958, -0.085730,
		-0.193393, 0.246612, 0.949622,
		0.778900, -0.549951, 0.301445,
		31.804272, 41.209423, 34.206371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552179, 41.966782, 34.509312>,  <31.259043, 41.594391, 33.995358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552179, 41.966782, 34.509312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804726, 41.722183, 34.318542>,  <31.956253, 41.575424, 34.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804726, 41.722183, 34.318542>,  <31.552179, 41.966782, 34.509312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804726, 41.722183, 34.318542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465573, 0.790721, -0.397496,
		0.620176, 0.028925, 0.783929,
		0.631367, -0.611494, -0.476919,
		31.994135, 41.538734, 34.175468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296104, 41.999210, 34.791100>,  <31.552179, 41.966782, 34.509312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296104, 41.999210, 34.791100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262138, 41.911053, 34.402416>,  <32.241760, 41.858158, 34.169205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262138, 41.911053, 34.402416>,  <32.296104, 41.999210, 34.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262138, 41.911053, 34.402416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628872, 0.744594, -0.223832,
		0.772859, -0.630086, 0.075373,
		-0.084911, -0.220391, -0.971709,
		32.236664, 41.844936, 34.110905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006802, 41.951305, 34.516045>,  <32.296104, 41.999210, 34.791100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006802, 41.951305, 34.516045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746235, 42.038048, 34.225216>,  <32.589893, 42.090092, 34.050720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746235, 42.038048, 34.225216>,  <33.006802, 41.951305, 34.516045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746235, 42.038048, 34.225216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634390, 0.681321, -0.365173,
		0.416177, -0.699125, -0.581395,
		-0.651418, 0.216855, -0.727068,
		32.550808, 42.103104, 34.007095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344162, 41.913296, 33.855614>,  <33.006802, 41.951305, 34.516045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344162, 41.913296, 33.855614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038639, 42.170700, 33.835621>,  <32.855324, 42.325142, 33.823627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038639, 42.170700, 33.835621>,  <33.344162, 41.913296, 33.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038639, 42.170700, 33.835621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563765, 0.627439, -0.537112,
		-0.314276, -0.438427, -0.842029,
		-0.763806, 0.643507, -0.049980,
		32.809498, 42.363750, 33.820625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069920, 42.020287, 33.197853>,  <33.344162, 41.913296, 33.855614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069920, 42.020287, 33.197853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013783, 42.352085, 33.414085>,  <32.980099, 42.551167, 33.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013783, 42.352085, 33.414085>,  <33.069920, 42.020287, 33.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013783, 42.352085, 33.414085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691022, 0.473080, -0.546520,
		-0.709079, 0.296856, -0.639596,
		-0.140342, 0.829501, 0.540585,
		32.971680, 42.600937, 33.576260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857517, 42.650986, 32.764683>,  <33.069920, 42.020287, 33.197853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857517, 42.650986, 32.764683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080082, 42.768490, 33.075581>,  <33.213619, 42.838993, 33.262119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080082, 42.768490, 33.075581>,  <32.857517, 42.650986, 32.764683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080082, 42.768490, 33.075581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665015, 0.403383, -0.628520,
		-0.498163, 0.866595, 0.029091,
		0.556407, 0.293760, 0.777249,
		33.247005, 42.856617, 33.308754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202194, 42.163445, 32.246468>,  <32.857517, 42.650986, 32.764683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202194, 42.163445, 32.246468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204098, 42.221424, 31.850698>,  <33.205238, 42.256214, 31.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204098, 42.221424, 31.850698>,  <33.202194, 42.163445, 32.246468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204098, 42.221424, 31.850698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604778, -0.787561, -0.118286,
		-0.796380, 0.598946, 0.083920,
		0.004754, 0.144954, -0.989427,
		33.205524, 42.264912, 31.553871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467960, 42.123909, 31.764862>,  <33.202194, 42.163445, 32.246468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467960, 42.123909, 31.764862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791016, 41.986507, 31.573143>,  <32.984848, 41.904064, 31.458111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791016, 41.986507, 31.573143>,  <32.467960, 42.123909, 31.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791016, 41.986507, 31.573143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414496, -0.908832, -0.047094,
		-0.419425, 0.236702, -0.876387,
		0.807636, -0.343506, -0.479299,
		33.033306, 41.883457, 31.429354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230350, 41.827274, 31.123669>,  <32.467960, 42.123909, 31.764862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230350, 41.827274, 31.123669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584526, 41.653461, 31.189604>,  <32.797031, 41.549171, 31.229166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584526, 41.653461, 31.189604>,  <32.230350, 41.827274, 31.123669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584526, 41.653461, 31.189604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404119, -0.895036, -0.188673,
		0.229523, 0.100444, -0.968107,
		0.885441, -0.434535, 0.164840,
		32.850159, 41.523102, 31.239056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303520, 41.409863, 30.504232>,  <32.230350, 41.827274, 31.123669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303520, 41.409863, 30.504232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470661, 41.300446, 30.850775>,  <32.570946, 41.234795, 31.058701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470661, 41.300446, 30.850775>,  <32.303520, 41.409863, 30.504232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470661, 41.300446, 30.850775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481140, -0.875520, -0.044371,
		0.770651, -0.398298, -0.497450,
		0.417854, -0.273538, 0.866357,
		32.596016, 41.218384, 31.110682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664673, 40.698837, 30.379614>,  <32.303520, 41.409863, 30.504232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664673, 40.698837, 30.379614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537868, 40.754677, 30.754850>,  <32.461784, 40.788181, 30.979992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537868, 40.754677, 30.754850>,  <32.664673, 40.698837, 30.379614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537868, 40.754677, 30.754850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469513, -0.882502, -0.027338,
		0.824052, -0.449113, 0.345304,
		-0.317010, 0.139597, 0.938093,
		32.442764, 40.796555, 31.036278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907757, 40.097557, 30.755333>,  <32.664673, 40.698837, 30.379614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907757, 40.097557, 30.755333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594070, 40.255314, 30.946941>,  <32.405857, 40.349968, 31.061907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594070, 40.255314, 30.946941>,  <32.907757, 40.097557, 30.755333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594070, 40.255314, 30.946941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419832, -0.905721, 0.058389,
		0.456887, -0.155319, 0.875860,
		-0.784216, 0.394391, 0.479020,
		32.358807, 40.373631, 31.090647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705421, 39.562366, 31.167786>,  <32.907757, 40.097557, 30.755333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705421, 39.562366, 31.167786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387405, 39.799732, 31.218018>,  <32.196598, 39.942154, 31.248156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387405, 39.799732, 31.218018>,  <32.705421, 39.562366, 31.167786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387405, 39.799732, 31.218018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570328, -0.801834, 0.178293,
		0.206496, 0.070129, 0.975931,
		-0.795038, 0.593418, 0.125579,
		32.148895, 39.977757, 31.255692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370907, 39.378788, 31.769758>,  <32.705421, 39.562366, 31.167786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370907, 39.378788, 31.769758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072617, 39.600513, 31.621908>,  <31.893642, 39.733551, 31.533197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072617, 39.600513, 31.621908>,  <32.370907, 39.378788, 31.769758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072617, 39.600513, 31.621908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665532, -0.594004, 0.451915,
		0.030946, 0.583002, 0.811881,
		-0.745727, 0.554317, -0.369624,
		31.848898, 39.766808, 31.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833185, 39.442802, 32.356400>,  <32.370907, 39.378788, 31.769758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833185, 39.442802, 32.356400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658083, 39.510563, 32.003204>,  <31.553020, 39.551220, 31.791286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658083, 39.510563, 32.003204>,  <31.833185, 39.442802, 32.356400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658083, 39.510563, 32.003204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705681, -0.673285, 0.220686,
		-0.557121, 0.719716, 0.414276,
		-0.437757, 0.169398, -0.882991,
		31.526756, 39.561382, 31.738308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203648, 39.418697, 32.459835>,  <31.833185, 39.442802, 32.356400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203648, 39.418697, 32.459835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211227, 39.349579, 32.065926>,  <31.215775, 39.308109, 31.829580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211227, 39.349579, 32.065926>,  <31.203648, 39.418697, 32.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211227, 39.349579, 32.065926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618730, -0.775722, 0.124209,
		-0.785375, 0.606956, -0.121615,
		0.018950, -0.172798, -0.984775,
		31.216913, 39.297741, 31.770493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551067, 39.380161, 32.139454>,  <31.203648, 39.418697, 32.459835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551067, 39.380161, 32.139454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768127, 39.129025, 31.916262>,  <30.898363, 38.978340, 31.782347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768127, 39.129025, 31.916262>,  <30.551067, 39.380161, 32.139454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768127, 39.129025, 31.916262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658197, -0.730540, 0.181900,
		-0.521830, 0.268551, -0.809675,
		0.542651, -0.627846, -0.557977,
		30.930923, 38.940670, 31.748869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067934, 38.881947, 31.741135>,  <30.551067, 39.380161, 32.139454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067934, 38.881947, 31.741135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427799, 38.710552, 31.707655>,  <30.643719, 38.607716, 31.687567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427799, 38.710552, 31.707655>,  <30.067934, 38.881947, 31.741135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427799, 38.710552, 31.707655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435507, -0.894254, -0.103164,
		-0.030646, 0.129266, -0.991136,
		0.899664, -0.428485, -0.083701,
		30.697699, 38.582008, 31.682545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900095, 38.511745, 31.238440>,  <30.067934, 38.881947, 31.741135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900095, 38.511745, 31.238440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206020, 38.345108, 31.435013>,  <30.389576, 38.245125, 31.552958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206020, 38.345108, 31.435013>,  <29.900095, 38.511745, 31.238440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206020, 38.345108, 31.435013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474803, -0.880064, -0.007112,
		0.435455, -0.227894, -0.870887,
		0.764815, -0.416596, 0.491433,
		30.435465, 38.220131, 31.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097246, 37.844177, 30.919897>,  <29.900095, 38.511745, 31.238440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097246, 37.844177, 30.919897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291855, 37.803513, 31.266991>,  <30.408621, 37.779114, 31.475246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291855, 37.803513, 31.266991>,  <30.097246, 37.844177, 30.919897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291855, 37.803513, 31.266991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321276, -0.944433, 0.069491,
		0.812452, -0.312591, -0.492148,
		0.486523, -0.101657, 0.867734,
		30.437811, 37.773014, 31.527311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486111, 37.158451, 30.891766>,  <30.097246, 37.844177, 30.919897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486111, 37.158451, 30.891766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429394, 37.257969, 31.275013>,  <30.395365, 37.317680, 31.504961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429394, 37.257969, 31.275013>,  <30.486111, 37.158451, 30.891766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429394, 37.257969, 31.275013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428231, -0.888061, 0.167232,
		0.892476, -0.386585, 0.232462,
		-0.141791, 0.248798, 0.958121,
		30.386856, 37.332607, 31.562449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715073, 36.550903, 31.334728>,  <30.486111, 37.158451, 30.891766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715073, 36.550903, 31.334728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470963, 36.769783, 31.563862>,  <30.324497, 36.901112, 31.701342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470963, 36.769783, 31.563862>,  <30.715073, 36.550903, 31.334728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470963, 36.769783, 31.563862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413533, -0.836813, 0.358795,
		0.675688, -0.017923, 0.736970,
		-0.610276, 0.547195, 0.572836,
		30.287880, 36.933941, 31.735712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710947, 36.153343, 31.897934>,  <30.715073, 36.550903, 31.334728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710947, 36.153343, 31.897934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405113, 36.409756, 31.924726>,  <30.221613, 36.563602, 31.940802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405113, 36.409756, 31.924726>,  <30.710947, 36.153343, 31.897934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405113, 36.409756, 31.924726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541903, -0.695630, 0.471636,
		0.348927, 0.324310, 0.879246,
		-0.764586, 0.641032, 0.066979,
		30.175737, 36.602066, 31.944820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469088, 36.143261, 32.690117>,  <30.710947, 36.153343, 31.897934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469088, 36.143261, 32.690117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180538, 36.235073, 32.428757>,  <30.007408, 36.290161, 32.271938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180538, 36.235073, 32.428757>,  <30.469088, 36.143261, 32.690117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180538, 36.235073, 32.428757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576613, -0.721636, 0.383090,
		-0.383587, 0.653111, 0.652921,
		-0.721372, 0.229535, -0.653403,
		29.964127, 36.303932, 32.232735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803541, 36.026936, 33.065739>,  <30.469088, 36.143261, 32.690117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803541, 36.026936, 33.065739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696341, 36.064083, 32.682167>,  <29.632021, 36.086372, 32.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696341, 36.064083, 32.682167>,  <29.803541, 36.026936, 33.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696341, 36.064083, 32.682167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685383, -0.717886, 0.122026,
		-0.677072, 0.689939, 0.256044,
		-0.268001, 0.092868, -0.958932,
		29.615940, 36.091942, 32.394485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105251, 36.028542, 33.142277>,  <29.803541, 36.026936, 33.065739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105251, 36.028542, 33.142277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169550, 35.925934, 32.761047>,  <29.208128, 35.864368, 32.532310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169550, 35.925934, 32.761047>,  <29.105251, 36.028542, 33.142277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169550, 35.925934, 32.761047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696018, -0.714116, 0.074816,
		-0.699800, 0.651333, -0.293334,
		0.160744, -0.256522, -0.953078,
		29.217773, 35.848976, 32.475124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418041, 36.081848, 32.700356>,  <29.105251, 36.028542, 33.142277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418041, 36.081848, 32.700356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680082, 35.828926, 32.534935>,  <28.837307, 35.677174, 32.435680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680082, 35.828926, 32.534935>,  <28.418041, 36.081848, 32.700356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680082, 35.828926, 32.534935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678370, -0.733247, 0.046508,
		-0.332646, 0.250076, -0.909290,
		0.655104, -0.632306, -0.413555,
		28.876614, 35.639233, 32.410870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107864, 35.753132, 32.322861>,  <28.418041, 36.081848, 32.700356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107864, 35.753132, 32.322861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418385, 35.511112, 32.393600>,  <28.604696, 35.365902, 32.436047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418385, 35.511112, 32.393600>,  <28.107864, 35.753132, 32.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418385, 35.511112, 32.393600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615550, -0.788076, 0.005803,
		0.135862, -0.113366, -0.984220,
		0.776299, -0.605049, 0.176852,
		28.651274, 35.329597, 32.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911503, 35.089161, 31.940733>,  <28.107864, 35.753132, 32.322861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911503, 35.089161, 31.940733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233843, 34.976028, 32.148815>,  <28.427246, 34.908150, 32.273663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233843, 34.976028, 32.148815>,  <27.911503, 35.089161, 31.940733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233843, 34.976028, 32.148815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431084, -0.882515, 0.187971,
		0.405924, -0.375728, -0.833099,
		0.805848, -0.282834, 0.520205,
		28.475597, 34.891178, 32.304878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108751, 34.437576, 31.745317>,  <27.911503, 35.089161, 31.940733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108751, 34.437576, 31.745317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257147, 34.438194, 32.116772>,  <28.346184, 34.438564, 32.339645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257147, 34.438194, 32.116772>,  <28.108751, 34.437576, 31.745317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257147, 34.438194, 32.116772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406914, -0.898613, 0.164060,
		0.834740, -0.438739, -0.332742,
		0.370986, 0.001550, 0.928637,
		28.368443, 34.438660, 32.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364491, 33.707573, 31.915590>,  <28.108751, 34.437576, 31.745317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364491, 33.707573, 31.915590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339775, 33.877472, 32.276871>,  <28.324945, 33.979412, 32.493641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339775, 33.877472, 32.276871>,  <28.364491, 33.707573, 31.915590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339775, 33.877472, 32.276871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597998, -0.740281, 0.307218,
		0.799112, -0.521130, 0.299738,
		-0.061790, 0.424744, 0.903202,
		28.321238, 34.004894, 32.547832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335802, 33.077011, 32.441044>,  <28.364491, 33.707573, 31.915590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335802, 33.077011, 32.441044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191669, 33.406624, 32.615921>,  <28.105190, 33.604393, 32.720848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191669, 33.406624, 32.615921>,  <28.335802, 33.077011, 32.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191669, 33.406624, 32.615921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659323, -0.556524, 0.505543,
		0.659889, -0.106086, 0.743836,
		-0.360331, 0.824030, 0.437190,
		28.083570, 33.653831, 32.747078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060251, 33.344116, 32.545433>,  <28.335802, 33.077011, 32.441044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060251, 33.344116, 32.545433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399504, 33.308201, 32.754280>,  <29.603056, 33.286652, 32.879589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399504, 33.308201, 32.754280>,  <29.060251, 33.344116, 32.545433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399504, 33.308201, 32.754280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454723, -0.629076, 0.630469,
		0.271844, -0.772141, -0.574369,
		0.848132, -0.089790, 0.522120,
		29.653944, 33.281265, 32.910915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996294, 32.740047, 32.994972>,  <29.060251, 33.344116, 32.545433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996294, 32.740047, 32.994972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299189, 32.944656, 33.157425>,  <29.480925, 33.067421, 33.254894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299189, 32.944656, 33.157425>,  <28.996294, 32.740047, 32.994972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299189, 32.944656, 33.157425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141929, -0.478080, 0.866773,
		0.637534, -0.713993, -0.289420,
		0.757236, 0.511520, 0.406128,
		29.526360, 33.098114, 33.279263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508944, 32.297882, 33.347183>,  <28.996294, 32.740047, 32.994972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508944, 32.297882, 33.347183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531818, 32.650276, 33.535049>,  <29.545544, 32.861713, 33.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531818, 32.650276, 33.535049>,  <29.508944, 32.297882, 33.347183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531818, 32.650276, 33.535049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119882, -0.473093, 0.872818,
		0.991140, 0.006390, -0.132670,
		0.057188, 0.880989, 0.469668,
		29.548975, 32.914574, 33.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144487, 32.550827, 33.679199>,  <29.508944, 32.297882, 33.347183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144487, 32.550827, 33.679199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802179, 32.649418, 33.861149>,  <29.596794, 32.708572, 33.970318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802179, 32.649418, 33.861149>,  <30.144487, 32.550827, 33.679199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802179, 32.649418, 33.861149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208322, -0.640619, 0.739060,
		0.473562, 0.727224, 0.496874,
		-0.855769, 0.246481, 0.454870,
		29.545448, 32.723362, 33.997608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810152, 32.009335, 33.958191>,  <30.144487, 32.550827, 33.679199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810152, 32.009335, 33.958191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770128, 31.733652, 34.245239>,  <29.746115, 31.568243, 34.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770128, 31.733652, 34.245239>,  <29.810152, 32.009335, 33.958191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770128, 31.733652, 34.245239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772673, 0.508229, 0.380369,
		-0.626870, -0.516429, -0.583383,
		-0.100059, -0.689206, 0.717623,
		29.740110, 31.526890, 34.460526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170668, 31.667849, 33.983685>,  <29.810152, 32.009335, 33.958191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170668, 31.667849, 33.983685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312862, 31.668962, 34.357555>,  <29.398180, 31.669632, 34.581879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312862, 31.668962, 34.357555>,  <29.170668, 31.667849, 33.983685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312862, 31.668962, 34.357555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859775, 0.393221, 0.325828,
		-0.366627, -0.919440, 0.142180,
		0.355488, 0.002785, 0.934677,
		29.419510, 31.669798, 34.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899622, 31.407742, 34.775913>,  <29.170668, 31.667849, 33.983685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899622, 31.407742, 34.775913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200747, 31.232361, 34.972294>,  <29.381422, 31.127132, 35.090122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200747, 31.232361, 34.972294>,  <28.899622, 31.407742, 34.775913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200747, 31.232361, 34.972294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122097, 0.825929, 0.550394,
		-0.646811, -0.354401, 0.675304,
		0.752813, -0.438454, 0.490949,
		29.426590, 31.100824, 35.119579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025969, 31.796202, 35.386169>,  <28.899622, 31.407742, 34.775913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025969, 31.796202, 35.386169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345789, 31.556152, 35.376621>,  <29.537682, 31.412123, 35.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345789, 31.556152, 35.376621>,  <29.025969, 31.796202, 35.386169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345789, 31.556152, 35.376621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533380, 0.691239, 0.487539,
		-0.276084, -0.402544, 0.872775,
		0.799552, -0.600122, -0.023869,
		29.585655, 31.376116, 35.369461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208601, 31.382053, 35.906883>,  <29.025969, 31.796202, 35.386169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208601, 31.382053, 35.906883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563192, 31.469770, 35.743877>,  <29.775948, 31.522400, 35.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563192, 31.469770, 35.743877>,  <29.208601, 31.382053, 35.906883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563192, 31.469770, 35.743877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154386, 0.690008, 0.707144,
		0.436262, -0.689782, 0.577820,
		0.886477, 0.219293, -0.407517,
		29.829136, 31.535559, 35.621624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831278, 31.341951, 36.437309>,  <29.208601, 31.382053, 35.906883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831278, 31.341951, 36.437309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920366, 31.604198, 36.148708>,  <29.973820, 31.761547, 35.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920366, 31.604198, 36.148708>,  <29.831278, 31.341951, 36.437309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920366, 31.604198, 36.148708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085892, 0.724014, 0.684417,
		0.971091, -0.214406, 0.104942,
		0.222723, 0.655617, -0.721499,
		29.987183, 31.800884, 35.932259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358603, 31.725891, 36.666618>,  <29.831278, 31.341951, 36.437309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358603, 31.725891, 36.666618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190416, 31.960646, 36.389843>,  <30.089504, 32.101498, 36.223778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190416, 31.960646, 36.389843>,  <30.358603, 31.725891, 36.666618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190416, 31.960646, 36.389843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009200, 0.759828, 0.650059,
		0.907262, 0.279694, -0.314082,
		-0.420466, 0.586884, -0.691936,
		30.064276, 32.136711, 36.182262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726854, 32.382557, 36.709023>,  <30.358603, 31.725891, 36.666618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726854, 32.382557, 36.709023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385910, 32.479366, 36.523590>,  <30.181343, 32.537453, 36.412331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385910, 32.479366, 36.523590>,  <30.726854, 32.382557, 36.709023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385910, 32.479366, 36.523590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142819, 0.745031, 0.651561,
		0.503075, 0.621572, -0.600468,
		-0.852360, 0.242026, -0.463579,
		30.130201, 32.551975, 36.384518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677299, 33.031208, 36.859013>,  <30.726854, 32.382557, 36.709023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677299, 33.031208, 36.859013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299767, 32.966743, 36.743626>,  <30.073248, 32.928066, 36.674393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299767, 32.966743, 36.743626>,  <30.677299, 33.031208, 36.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299767, 32.966743, 36.743626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321469, 0.649781, 0.688798,
		0.076435, 0.742841, -0.665090,
		-0.943830, -0.161158, -0.288467,
		30.016617, 32.918396, 36.657085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397694, 33.703178, 36.864994>,  <30.677299, 33.031208, 36.859013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397694, 33.703178, 36.864994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104929, 33.433384, 36.903713>,  <29.929270, 33.271507, 36.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104929, 33.433384, 36.903713>,  <30.397694, 33.703178, 36.864994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104929, 33.433384, 36.903713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450080, 0.585199, 0.674514,
		-0.511597, 0.450120, -0.731889,
		-0.731913, -0.674488, 0.096796,
		29.885355, 33.231037, 36.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897348, 34.183620, 36.933865>,  <30.397694, 33.703178, 36.864994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897348, 34.183620, 36.933865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810524, 33.821457, 37.079803>,  <29.758429, 33.604156, 37.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810524, 33.821457, 37.079803>,  <29.897348, 34.183620, 36.933865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810524, 33.821457, 37.079803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531294, 0.423126, 0.733955,
		-0.818908, -0.034527, -0.572885,
		-0.217061, -0.905413, 0.364846,
		29.745405, 33.549831, 37.189259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159628, 34.309448, 37.061279>,  <29.897348, 34.183620, 36.933865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159628, 34.309448, 37.061279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321445, 34.016014, 37.279709>,  <29.418537, 33.839954, 37.410767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321445, 34.016014, 37.279709>,  <29.159628, 34.309448, 37.061279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321445, 34.016014, 37.279709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234398, 0.493996, 0.837273,
		-0.883969, -0.466713, 0.027893,
		0.404545, -0.733585, 0.546073,
		29.442808, 33.795940, 37.443531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721865, 34.247997, 37.449886>,  <29.159628, 34.309448, 37.061279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721865, 34.247997, 37.449886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023384, 34.066624, 37.640121>,  <29.204296, 33.957798, 37.754261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023384, 34.066624, 37.640121>,  <28.721865, 34.247997, 37.449886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023384, 34.066624, 37.640121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281424, 0.431253, 0.857217,
		-0.593789, -0.780012, 0.197472,
		0.753800, -0.453433, 0.475588,
		29.249525, 33.930595, 37.782799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474180, 34.071606, 38.007557>,  <28.721865, 34.247997, 37.449886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474180, 34.071606, 38.007557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868862, 34.063557, 38.072063>,  <29.105671, 34.058727, 38.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868862, 34.063557, 38.072063>,  <28.474180, 34.071606, 38.007557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868862, 34.063557, 38.072063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115796, 0.609206, 0.784512,
		-0.114030, -0.792757, 0.598777,
		0.986706, -0.020122, 0.161266,
		29.164873, 34.057522, 38.120441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514347, 33.781940, 38.688766>,  <28.474180, 34.071606, 38.007557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514347, 33.781940, 38.688766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838943, 33.995468, 38.593674>,  <29.033701, 34.123585, 38.536617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838943, 33.995468, 38.593674>,  <28.514347, 33.781940, 38.688766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838943, 33.995468, 38.593674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112563, 0.541996, 0.832808,
		0.573427, -0.649053, 0.499912,
		0.811487, 0.533826, -0.237735,
		29.082390, 34.155617, 38.522354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933224, 33.764210, 39.254341>,  <28.514347, 33.781940, 38.688766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933224, 33.764210, 39.254341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055201, 34.090775, 39.058186>,  <29.128387, 34.286713, 38.940495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055201, 34.090775, 39.058186>,  <28.933224, 33.764210, 39.254341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055201, 34.090775, 39.058186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141909, 0.548114, 0.824277,
		0.941739, -0.181767, 0.282999,
		0.304942, 0.816414, -0.490386,
		29.146683, 34.335697, 38.911068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463121, 34.112885, 39.693527>,  <28.933224, 33.764210, 39.254341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463121, 34.112885, 39.693527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276148, 34.365597, 39.446186>,  <29.163963, 34.517223, 39.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276148, 34.365597, 39.446186>,  <29.463121, 34.112885, 39.693527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276148, 34.365597, 39.446186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283961, 0.555100, 0.781812,
		0.837179, 0.541035, -0.080073,
		-0.467436, 0.631780, -0.618351,
		29.135918, 34.555130, 39.260681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714058, 34.686436, 39.876236>,  <29.463121, 34.112885, 39.693527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714058, 34.686436, 39.876236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367151, 34.763912, 39.692791>,  <29.159006, 34.810398, 39.582722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367151, 34.763912, 39.692791>,  <29.714058, 34.686436, 39.876236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367151, 34.763912, 39.692791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252448, 0.622883, 0.740464,
		0.429086, 0.757958, -0.491310,
		-0.867269, 0.193693, -0.458615,
		29.106970, 34.822021, 39.555206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478849, 35.337776, 40.050777>,  <29.714058, 34.686436, 39.876236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478849, 35.337776, 40.050777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129438, 35.196358, 39.916935>,  <28.919792, 35.111507, 39.836632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129438, 35.196358, 39.916935>,  <29.478849, 35.337776, 40.050777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129438, 35.196358, 39.916935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480991, 0.521237, 0.704953,
		-0.074824, 0.776736, -0.625366,
		-0.873527, -0.353543, -0.334602,
		28.867380, 35.090294, 39.816555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127590, 35.917252, 40.188725>,  <29.478849, 35.337776, 40.050777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127590, 35.917252, 40.188725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867371, 35.620911, 40.121883>,  <28.711239, 35.443108, 40.081779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867371, 35.620911, 40.121883>,  <29.127590, 35.917252, 40.188725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867371, 35.620911, 40.121883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571150, 0.332224, 0.750610,
		-0.500574, 0.583751, -0.639265,
		-0.650548, -0.740852, -0.167107,
		28.672207, 35.398655, 40.071751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558874, 36.310883, 40.355549>,  <29.127590, 35.917252, 40.188725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558874, 36.310883, 40.355549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412153, 35.938847, 40.363449>,  <28.324120, 35.715626, 40.368191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412153, 35.938847, 40.363449>,  <28.558874, 36.310883, 40.355549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412153, 35.938847, 40.363449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535001, 0.228267, 0.813430,
		-0.761071, 0.287801, -0.581327,
		-0.366804, -0.930089, 0.019754,
		28.302113, 35.659821, 40.369377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881170, 36.380013, 40.355400>,  <28.558874, 36.310883, 40.355549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881170, 36.380013, 40.355400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964327, 36.032112, 40.534428>,  <28.014221, 35.823372, 40.641842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964327, 36.032112, 40.534428>,  <27.881170, 36.380013, 40.355400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964327, 36.032112, 40.534428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374993, 0.351736, 0.857708,
		-0.903417, -0.346143, -0.253028,
		0.207891, -0.869751, 0.447566,
		28.026693, 35.771187, 40.668697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289762, 36.155102, 40.638004>,  <27.881170, 36.380013, 40.355400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289762, 36.155102, 40.638004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570400, 35.968674, 40.853611>,  <27.738783, 35.856815, 40.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570400, 35.968674, 40.853611>,  <27.289762, 36.155102, 40.638004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570400, 35.968674, 40.853611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432334, 0.322888, 0.841921,
		-0.566438, -0.823724, 0.025038,
		0.701595, -0.466071, 0.539020,
		27.780878, 35.828854, 41.015316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932194, 35.778584, 41.255848>,  <27.289762, 36.155102, 40.638004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932194, 35.778584, 41.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320040, 35.802216, 41.350803>,  <27.552748, 35.816395, 41.407776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320040, 35.802216, 41.350803>,  <26.932194, 35.778584, 41.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320040, 35.802216, 41.350803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243958, 0.161816, 0.956191,
		0.018082, -0.985051, 0.171314,
		0.969617, 0.059084, 0.237384,
		27.610926, 35.819942, 41.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938007, 35.607918, 41.953247>,  <26.932194, 35.778584, 41.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938007, 35.607918, 41.953247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318871, 35.729706, 41.942738>,  <27.547388, 35.802780, 41.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318871, 35.729706, 41.942738>,  <26.938007, 35.607918, 41.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318871, 35.729706, 41.942738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089720, 0.360678, 0.928365,
		0.292130, -0.881596, 0.370740,
		0.952161, 0.304467, -0.026268,
		27.604519, 35.821049, 41.934856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440121, 35.316216, 42.515671>,  <26.938007, 35.607918, 41.953247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440121, 35.316216, 42.515671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562939, 35.677193, 42.394794>,  <27.636629, 35.893780, 42.322269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.562939, 35.677193, 42.394794>,  <27.440121, 35.316216, 42.515671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562939, 35.677193, 42.394794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131097, 0.354614, 0.925777,
		0.942622, -0.244640, 0.227190,
		0.307047, 0.902441, -0.302195,
		27.655052, 35.947926, 42.304134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877661, 35.552505, 43.039070>,  <27.440121, 35.316216, 42.515671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877661, 35.552505, 43.039070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785793, 35.893204, 42.850697>,  <27.730673, 36.097622, 42.737671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785793, 35.893204, 42.850697>,  <27.877661, 35.552505, 43.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785793, 35.893204, 42.850697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018417, 0.487585, 0.872881,
		0.973095, 0.191799, -0.127669,
		-0.229667, 0.851747, -0.470934,
		27.716892, 36.148727, 42.709415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274529, 36.054264, 43.332794>,  <27.877661, 35.552505, 43.039070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274529, 36.054264, 43.332794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003246, 36.286308, 43.152348>,  <27.840477, 36.425537, 43.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003246, 36.286308, 43.152348>,  <28.274529, 36.054264, 43.332794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003246, 36.286308, 43.152348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148801, 0.709557, 0.688758,
		0.719649, 0.399995, -0.567548,
		-0.678207, 0.580115, -0.451112,
		27.799784, 36.460342, 43.017014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645718, 36.710773, 43.279186>,  <28.274529, 36.054264, 43.332794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645718, 36.710773, 43.279186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246813, 36.737617, 43.266777>,  <28.007469, 36.753723, 43.259331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246813, 36.737617, 43.266777>,  <28.645718, 36.710773, 43.279186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246813, 36.737617, 43.266777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026107, 0.712230, 0.701460,
		0.069170, 0.698730, -0.712033,
		-0.997263, 0.067109, -0.031023,
		27.947634, 36.757751, 43.257469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434855, 37.511139, 43.239750>,  <28.645718, 36.710773, 43.279186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434855, 37.511139, 43.239750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149170, 37.292271, 43.414337>,  <27.977758, 37.160950, 43.519089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149170, 37.292271, 43.414337>,  <28.434855, 37.511139, 43.239750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149170, 37.292271, 43.414337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041334, 0.589533, 0.806686,
		-0.698709, 0.594185, -0.398434,
		-0.714211, -0.547170, 0.436472,
		27.934906, 37.128120, 43.545280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902115, 37.934753, 43.468315>,  <28.434855, 37.511139, 43.239750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902115, 37.934753, 43.468315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882048, 37.602871, 43.690689>,  <27.870007, 37.403740, 43.824116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882048, 37.602871, 43.690689>,  <27.902115, 37.934753, 43.468315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882048, 37.602871, 43.690689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036004, 0.554775, 0.831221,
		-0.998092, 0.061717, 0.002040,
		-0.050168, -0.829708, 0.555938,
		27.866997, 37.353958, 43.857471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555315, 38.264812, 44.007290>,  <27.902115, 37.934753, 43.468315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555315, 38.264812, 44.007290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667706, 37.910198, 44.154316>,  <27.735140, 37.697430, 44.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667706, 37.910198, 44.154316>,  <27.555315, 38.264812, 44.007290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667706, 37.910198, 44.154316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049517, 0.369096, 0.928071,
		-0.958437, -0.278965, 0.059808,
		0.280974, -0.886536, 0.367569,
		27.751997, 37.644238, 44.264587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227766, 38.155579, 44.620903>,  <27.555315, 38.264812, 44.007290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227766, 38.155579, 44.620903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518211, 37.887920, 44.684155>,  <27.692478, 37.727325, 44.722107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518211, 37.887920, 44.684155>,  <27.227766, 38.155579, 44.620903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518211, 37.887920, 44.684155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165761, 0.393554, 0.904234,
		-0.667298, -0.630362, 0.396683,
		0.726111, -0.669147, 0.158128,
		27.736044, 37.687176, 44.731594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192533, 38.002159, 45.266567>,  <27.227766, 38.155579, 44.620903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192533, 38.002159, 45.266567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572004, 37.907070, 45.183144>,  <27.799686, 37.850018, 45.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572004, 37.907070, 45.183144>,  <27.192533, 38.002159, 45.266567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572004, 37.907070, 45.183144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271512, 0.274117, 0.922573,
		-0.162142, -0.931853, 0.324593,
		0.948679, -0.237718, -0.208563,
		27.856607, 37.835754, 45.120575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437216, 37.725567, 45.891357>,  <27.192533, 38.002159, 45.266567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437216, 37.725567, 45.891357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753139, 37.814651, 45.662762>,  <27.942694, 37.868103, 45.525604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753139, 37.814651, 45.662762>,  <27.437216, 37.725567, 45.891357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753139, 37.814651, 45.662762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450824, 0.420986, 0.787102,
		0.415865, -0.879307, 0.232109,
		0.789819, 0.222688, -0.571486,
		27.990082, 37.881466, 45.491314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113411, 37.517353, 46.129440>,  <27.437216, 37.725567, 45.891357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113411, 37.517353, 46.129440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257126, 37.811756, 45.899933>,  <28.343355, 37.988396, 45.762230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257126, 37.811756, 45.899933>,  <28.113411, 37.517353, 46.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257126, 37.811756, 45.899933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458539, 0.396261, 0.795437,
		0.812808, -0.548884, -0.195116,
		0.359285, 0.736005, -0.573768,
		28.364912, 38.032558, 45.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888348, 37.623890, 46.215099>,  <28.113411, 37.517353, 46.129440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888348, 37.623890, 46.215099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750546, 37.971676, 46.073486>,  <28.667864, 38.180347, 45.988518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750546, 37.971676, 46.073486>,  <28.888348, 37.623890, 46.215099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750546, 37.971676, 46.073486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558663, 0.492951, 0.667005,
		0.754461, 0.032001, -0.655564,
		-0.344506, 0.869468, -0.354035,
		28.647194, 38.232517, 45.967278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550276, 38.019680, 46.200474>,  <28.888348, 37.623890, 46.215099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550276, 38.019680, 46.200474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244024, 38.273857, 46.160427>,  <29.060274, 38.426365, 46.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244024, 38.273857, 46.160427>,  <29.550276, 38.019680, 46.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244024, 38.273857, 46.160427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511453, 0.695706, 0.504389,
		0.390165, 0.334968, -0.857652,
		-0.765628, 0.635444, -0.100120,
		29.014336, 38.464489, 46.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872107, 38.618416, 45.939152>,  <29.550276, 38.019680, 46.200474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872107, 38.618416, 45.939152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532959, 38.707935, 46.131416>,  <29.329472, 38.761646, 46.246777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532959, 38.707935, 46.131416>,  <29.872107, 38.618416, 45.939152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532959, 38.707935, 46.131416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509573, 0.594400, 0.622112,
		-0.146479, 0.772401, -0.618013,
		-0.847867, 0.223796, 0.480662,
		29.278599, 38.775074, 46.275616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038778, 39.268414, 46.136108>,  <29.872107, 38.618416, 45.939152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038778, 39.268414, 46.136108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705669, 39.190990, 46.343582>,  <29.505804, 39.144535, 46.468067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705669, 39.190990, 46.343582>,  <30.038778, 39.268414, 46.136108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705669, 39.190990, 46.343582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335530, 0.568756, 0.750957,
		-0.440356, 0.799407, -0.408699,
		-0.832770, -0.193558, 0.518681,
		29.455839, 39.132923, 46.499187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793203, 40.029362, 46.335953>,  <30.038778, 39.268414, 46.136108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793203, 40.029362, 46.335953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669193, 39.729904, 46.570362>,  <29.594788, 39.550232, 46.711006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.669193, 39.729904, 46.570362>,  <29.793203, 40.029362, 46.335953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669193, 39.729904, 46.570362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279768, 0.517262, 0.808808,
		-0.908633, 0.414703, 0.049080,
		-0.310027, -0.748640, 0.586021,
		29.576185, 39.505314, 46.746170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531387, 40.393803, 46.882496>,  <29.793203, 40.029362, 46.335953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531387, 40.393803, 46.882496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590652, 40.018078, 47.006260>,  <29.626211, 39.792641, 47.080517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590652, 40.018078, 47.006260>,  <29.531387, 40.393803, 46.882496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590652, 40.018078, 47.006260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380865, 0.342927, 0.858686,
		-0.912682, -0.009384, 0.408562,
		0.148165, -0.939315, 0.309409,
		29.635101, 39.736282, 47.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178467, 40.262817, 47.449860>,  <29.531387, 40.393803, 46.882496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178467, 40.262817, 47.449860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493315, 40.016560, 47.464993>,  <29.682222, 39.868805, 47.474072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493315, 40.016560, 47.464993>,  <29.178467, 40.262817, 47.449860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493315, 40.016560, 47.464993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197002, 0.309049, 0.930419,
		-0.584496, -0.724896, 0.364540,
		0.787118, -0.615641, 0.037832,
		29.729450, 39.831867, 47.476341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020319, 39.930874, 48.021580>,  <29.178467, 40.262817, 47.449860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020319, 39.930874, 48.021580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418245, 39.936298, 47.981274>,  <29.657001, 39.939552, 47.957088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418245, 39.936298, 47.981274>,  <29.020319, 39.930874, 48.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418245, 39.936298, 47.981274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101412, -0.203567, 0.973795,
		-0.007305, -0.978967, -0.203887,
		0.994817, 0.013563, -0.100766,
		29.716690, 39.940369, 47.951042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390608, 39.285160, 48.245029>,  <29.020319, 39.930874, 48.021580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390608, 39.285160, 48.245029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612808, 39.613300, 48.299347>,  <29.746128, 39.810184, 48.331936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612808, 39.613300, 48.299347>,  <29.390608, 39.285160, 48.245029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612808, 39.613300, 48.299347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008739, -0.169056, 0.985568,
		0.831470, -0.546296, -0.101080,
		0.555500, 0.820353, 0.135791,
		29.779459, 39.859406, 48.340084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827530, 39.125454, 48.737652>,  <29.390608, 39.285160, 48.245029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827530, 39.125454, 48.737652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799408, 39.524429, 48.742992>,  <29.782536, 39.763813, 48.746197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799408, 39.524429, 48.742992>,  <29.827530, 39.125454, 48.737652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799408, 39.524429, 48.742992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257129, -0.031052, 0.965878,
		0.963816, 0.064474, 0.258653,
		-0.070306, 0.997436, 0.013350,
		29.778316, 39.823662, 48.746998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544434, 39.187817, 49.368542>,  <29.827530, 39.125454, 48.737652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544434, 39.187817, 49.368542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601171, 39.558937, 49.230515>,  <29.635214, 39.781609, 49.147697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601171, 39.558937, 49.230515>,  <29.544434, 39.187817, 49.368542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601171, 39.558937, 49.230515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273941, 0.371766, 0.886987,
		0.951229, -0.031287, 0.306895,
		0.141844, 0.927800, -0.345063,
		29.643724, 39.837276, 49.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922495, 39.536266, 49.858582>,  <29.544434, 39.187817, 49.368542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922495, 39.536266, 49.858582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700514, 39.805874, 49.663555>,  <29.567326, 39.967640, 49.546539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700514, 39.805874, 49.663555>,  <29.922495, 39.536266, 49.858582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700514, 39.805874, 49.663555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480052, 0.219195, 0.849414,
		0.679395, 0.705444, 0.201921,
		-0.554953, 0.674020, -0.487569,
		29.534027, 40.008080, 49.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807388, 40.019638, 50.392918>,  <29.922495, 39.536266, 49.858582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807388, 40.019638, 50.392918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536123, 40.070618, 50.103409>,  <29.373363, 40.101208, 49.929703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536123, 40.070618, 50.103409>,  <29.807388, 40.019638, 50.392918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536123, 40.070618, 50.103409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705248, 0.164111, 0.689704,
		0.206684, 0.978173, -0.021409,
		-0.678164, 0.127452, -0.723774,
		29.332674, 40.108852, 49.886276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028883, 40.295815, 49.705997>,  <29.807388, 40.019638, 50.392918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028883, 40.295815, 49.705997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365160, 40.425495, 49.879494>,  <30.566925, 40.503304, 49.983593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365160, 40.425495, 49.879494>,  <30.028883, 40.295815, 49.705997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365160, 40.425495, 49.879494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509400, -0.745200, -0.430335,
		0.183712, 0.582728, -0.791630,
		0.840691, 0.324199, 0.433744,
		30.617367, 40.522755, 50.009617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684692, 40.498905, 49.216228>,  <30.028883, 40.295815, 49.705997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684692, 40.498905, 49.216228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748816, 40.292824, 49.553005>,  <30.787289, 40.169174, 49.755070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748816, 40.292824, 49.553005>,  <30.684692, 40.498905, 49.216228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748816, 40.292824, 49.553005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647694, -0.588752, -0.483595,
		0.744845, 0.622844, 0.239314,
		0.160307, -0.515206, 0.841941,
		30.796907, 40.138264, 49.805588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430765, 40.168709, 49.301132>,  <30.684692, 40.498905, 49.216228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430765, 40.168709, 49.301132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150234, 39.944305, 49.477043>,  <30.981916, 39.809662, 49.582588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150234, 39.944305, 49.477043>,  <31.430765, 40.168709, 49.301132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150234, 39.944305, 49.477043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390546, -0.818507, -0.421331,
		0.596334, -0.123737, 0.793142,
		-0.701327, -0.561013, 0.439779,
		30.939837, 39.776001, 49.608978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641270, 39.691986, 49.814362>,  <31.430765, 40.168709, 49.301132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641270, 39.691986, 49.814362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316404, 39.542515, 49.635139>,  <31.121485, 39.452831, 49.527607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316404, 39.542515, 49.635139>,  <31.641270, 39.691986, 49.814362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316404, 39.542515, 49.635139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537680, -0.777497, -0.326189,
		-0.226476, -0.505832, 0.832372,
		-0.812163, -0.373676, -0.448060,
		31.072756, 39.430412, 49.500721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714102, 38.980675, 49.866524>,  <31.641270, 39.691986, 49.814362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714102, 38.980675, 49.866524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481155, 39.054806, 49.549915>,  <31.341387, 39.099285, 49.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481155, 39.054806, 49.549915>,  <31.714102, 38.980675, 49.866524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481155, 39.054806, 49.549915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403640, -0.779240, -0.479437,
		-0.705636, -0.598697, 0.378998,
		-0.582368, 0.185330, -0.791518,
		31.306444, 39.110405, 49.312458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572748, 38.332363, 49.629669>,  <31.714102, 38.980675, 49.866524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572748, 38.332363, 49.629669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507938, 38.577450, 49.320263>,  <31.469053, 38.724503, 49.134617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507938, 38.577450, 49.320263>,  <31.572748, 38.332363, 49.629669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507938, 38.577450, 49.320263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400121, -0.675752, -0.619081,
		-0.902026, -0.409808, -0.135671,
		-0.162025, 0.612712, -0.773519,
		31.459332, 38.761265, 49.088207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346272, 37.857018, 49.078632>,  <31.572748, 38.332363, 49.629669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346272, 37.857018, 49.078632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457918, 38.190567, 48.888157>,  <31.524906, 38.390697, 48.773872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457918, 38.190567, 48.888157>,  <31.346272, 37.857018, 49.078632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457918, 38.190567, 48.888157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369108, -0.550962, -0.748465,
		-0.886484, 0.033144, -0.461571,
		0.279115, 0.833872, -0.476186,
		31.541653, 38.440727, 48.745300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080868, 37.691765, 48.500332>,  <31.346272, 37.857018, 49.078632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080868, 37.691765, 48.500332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330513, 37.996117, 48.429283>,  <31.480301, 38.178726, 48.386654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330513, 37.996117, 48.429283>,  <31.080868, 37.691765, 48.500332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330513, 37.996117, 48.429283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293665, -0.439098, -0.849090,
		-0.724045, 0.477767, -0.497490,
		0.624114, 0.760875, -0.177623,
		31.517748, 38.224380, 48.375996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097429, 37.876411, 47.794868>,  <31.080868, 37.691765, 48.500332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097429, 37.876411, 47.794868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434908, 38.068447, 47.890942>,  <31.637396, 38.183670, 47.948586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434908, 38.068447, 47.890942>,  <31.097429, 37.876411, 47.794868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434908, 38.068447, 47.890942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341569, -0.134938, -0.930120,
		-0.414129, 0.866780, -0.277830,
		0.843699, 0.480088, 0.240183,
		31.688017, 38.212475, 47.962997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157299, 38.465302, 47.291077>,  <31.097429, 37.876411, 47.794868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157299, 38.465302, 47.291077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516235, 38.349453, 47.424282>,  <31.731598, 38.279942, 47.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516235, 38.349453, 47.424282>,  <31.157299, 38.465302, 47.291077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516235, 38.349453, 47.424282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278474, -0.213814, -0.936342,
		0.342388, 0.932953, -0.111211,
		0.897342, -0.289623, 0.333010,
		31.785439, 38.262566, 47.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597288, 38.818157, 46.922737>,  <31.157299, 38.465302, 47.291077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597288, 38.818157, 46.922737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757898, 38.475056, 47.051136>,  <31.854265, 38.269196, 47.128178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757898, 38.475056, 47.051136>,  <31.597288, 38.818157, 46.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757898, 38.475056, 47.051136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281244, -0.218080, -0.934528,
		0.871595, 0.465517, 0.153672,
		0.401526, -0.857750, 0.321001,
		31.878357, 38.217731, 47.147438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212326, 38.846661, 46.553020>,  <31.597288, 38.818157, 46.922737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212326, 38.846661, 46.553020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174297, 38.466805, 46.672451>,  <32.151482, 38.238892, 46.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174297, 38.466805, 46.672451>,  <32.212326, 38.846661, 46.553020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174297, 38.466805, 46.672451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204268, -0.312165, -0.927808,
		0.974288, -0.027217, 0.223658,
		-0.095070, -0.949638, 0.298579,
		32.145775, 38.181911, 46.762024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716022, 38.437302, 46.144951>,  <32.212326, 38.846661, 46.553020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716022, 38.437302, 46.144951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524448, 38.143620, 46.337433>,  <32.409504, 37.967411, 46.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524448, 38.143620, 46.337433>,  <32.716022, 38.437302, 46.144951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524448, 38.143620, 46.337433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145244, -0.606884, -0.781406,
		0.865753, -0.304348, 0.397295,
		-0.478932, -0.734210, 0.481207,
		32.380768, 37.923355, 46.481796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198807, 37.861832, 46.051811>,  <32.716022, 38.437302, 46.144951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198807, 37.861832, 46.051811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824642, 37.741615, 46.126301>,  <32.600143, 37.669487, 46.170994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824642, 37.741615, 46.126301>,  <33.198807, 37.861832, 46.051811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824642, 37.741615, 46.126301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012282, -0.554020, -0.832412,
		0.353349, -0.776361, 0.521928,
		-0.935411, -0.300542, 0.186227,
		32.544018, 37.651451, 46.182167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176643, 37.061611, 45.942204>,  <33.198807, 37.861832, 46.051811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176643, 37.061611, 45.942204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798199, 37.190525, 45.929565>,  <32.571133, 37.267876, 45.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798199, 37.190525, 45.929565>,  <33.176643, 37.061611, 45.942204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798199, 37.190525, 45.929565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138689, -0.491419, -0.859810,
		-0.292630, -0.809097, 0.509636,
		-0.946115, 0.322287, -0.031591,
		32.514366, 37.287212, 45.920090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871578, 36.561310, 45.752979>,  <33.176643, 37.061611, 45.942204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871578, 36.561310, 45.752979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591076, 36.831348, 45.661335>,  <32.422775, 36.993370, 45.606350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591076, 36.831348, 45.661335>,  <32.871578, 36.561310, 45.752979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591076, 36.831348, 45.661335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237408, -0.524163, -0.817857,
		-0.672222, -0.519132, 0.527844,
		-0.701252, 0.675096, -0.229108,
		32.380699, 37.033878, 45.592602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186043, 36.331940, 45.712112>,  <32.871578, 36.561310, 45.752979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186043, 36.331940, 45.712112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178093, 36.650951, 45.470932>,  <32.173321, 36.842358, 45.326225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178093, 36.650951, 45.470932>,  <32.186043, 36.331940, 45.712112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178093, 36.650951, 45.470932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417970, -0.554469, -0.719628,
		-0.908243, 0.237711, 0.344366,
		-0.019877, 0.797533, -0.602949,
		32.172131, 36.890213, 45.290047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578831, 36.230667, 45.292175>,  <32.186043, 36.331940, 45.712112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578831, 36.230667, 45.292175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774328, 36.522072, 45.100178>,  <31.891626, 36.696915, 44.984978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774328, 36.522072, 45.100178>,  <31.578831, 36.230667, 45.292175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774328, 36.522072, 45.100178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451936, -0.259194, -0.853565,
		-0.746246, 0.634102, 0.202562,
		0.488745, 0.728514, -0.479996,
		31.920952, 36.740627, 44.956181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081577, 36.577194, 44.845673>,  <31.578831, 36.230667, 45.292175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081577, 36.577194, 44.845673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444445, 36.660934, 44.699673>,  <31.662165, 36.711178, 44.612072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444445, 36.660934, 44.699673>,  <31.081577, 36.577194, 44.845673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444445, 36.660934, 44.699673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319446, -0.221945, -0.921246,
		-0.273869, 0.952321, -0.134467,
		0.907166, 0.209346, -0.364999,
		31.716595, 36.723740, 44.590172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990475, 37.010780, 44.249611>,  <31.081577, 36.577194, 44.845673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990475, 37.010780, 44.249611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355011, 36.855503, 44.194820>,  <31.573732, 36.762337, 44.161945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355011, 36.855503, 44.194820>,  <30.990475, 37.010780, 44.249611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355011, 36.855503, 44.194820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333533, -0.501292, -0.798412,
		0.241275, 0.773312, -0.586324,
		0.911341, -0.388195, -0.136976,
		31.628414, 36.739044, 44.153728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065090, 36.979904, 43.535629>,  <30.990475, 37.010780, 44.249611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065090, 36.979904, 43.535629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350533, 36.729809, 43.662025>,  <31.521797, 36.579754, 43.737862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350533, 36.729809, 43.662025>,  <31.065090, 36.979904, 43.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350533, 36.729809, 43.662025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105394, -0.541740, -0.833912,
		0.692574, 0.561782, -0.452485,
		0.713606, -0.625235, 0.315987,
		31.564613, 36.542240, 43.756821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609358, 36.860039, 43.056076>,  <31.065090, 36.979904, 43.535629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609358, 36.860039, 43.056076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630680, 36.520851, 43.267017>,  <31.643473, 36.317337, 43.393581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630680, 36.520851, 43.267017>,  <31.609358, 36.860039, 43.056076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630680, 36.520851, 43.267017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091023, -0.521778, -0.848211,
		0.994421, 0.093214, 0.049372,
		0.053304, -0.847974, 0.527352,
		31.646671, 36.266460, 43.425224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037884, 36.440701, 42.735100>,  <31.609358, 36.860039, 43.056076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037884, 36.440701, 42.735100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855280, 36.175449, 42.972374>,  <31.745718, 36.016300, 43.114738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855280, 36.175449, 42.972374>,  <32.037884, 36.440701, 42.735100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855280, 36.175449, 42.972374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146473, -0.713627, -0.685041,
		0.877581, -0.225840, 0.422905,
		-0.456506, -0.663123, 0.593186,
		31.718328, 35.976513, 43.150330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463528, 35.804214, 42.714649>,  <32.037884, 36.440701, 42.735100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463528, 35.804214, 42.714649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094219, 35.707203, 42.833813>,  <31.872635, 35.648994, 42.905312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094219, 35.707203, 42.833813>,  <32.463528, 35.804214, 42.714649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094219, 35.707203, 42.833813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041727, -0.834236, -0.549827,
		0.381878, -0.495207, 0.780345,
		-0.923270, -0.242528, 0.297913,
		31.817238, 35.634445, 42.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604328, 35.215408, 42.897614>,  <32.463528, 35.804214, 42.714649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604328, 35.215408, 42.897614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205715, 35.206150, 42.865623>,  <31.966549, 35.200596, 42.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205715, 35.206150, 42.865623>,  <32.604328, 35.215408, 42.897614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205715, 35.206150, 42.865623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064739, -0.819400, -0.569555,
		-0.052345, -0.572755, 0.818054,
		-0.996529, -0.023147, -0.079971,
		31.906757, 35.199207, 42.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446716, 34.493629, 42.909912>,  <32.604328, 35.215408, 42.897614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446716, 34.493629, 42.909912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137230, 34.680180, 42.738396>,  <31.951538, 34.792110, 42.635487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137230, 34.680180, 42.738396>,  <32.446716, 34.493629, 42.909912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137230, 34.680180, 42.738396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111866, -0.766759, -0.632112,
		-0.623582, -0.441106, 0.645423,
		-0.773712, 0.466375, -0.428792,
		31.905117, 34.820091, 42.609756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015587, 33.915283, 42.648163>,  <32.446716, 34.493629, 42.909912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015587, 33.915283, 42.648163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866793, 34.233036, 42.456081>,  <31.777517, 34.423687, 42.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866793, 34.233036, 42.456081>,  <32.015587, 33.915283, 42.648163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866793, 34.233036, 42.456081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031602, -0.527862, -0.848742,
		-0.927701, -0.300543, 0.221460,
		-0.371984, 0.794378, -0.480200,
		31.755198, 34.471348, 42.312023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407797, 33.673298, 42.359341>,  <32.015587, 33.915283, 42.648163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407797, 33.673298, 42.359341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526096, 33.991016, 42.147068>,  <31.597076, 34.181648, 42.019703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526096, 33.991016, 42.147068>,  <31.407797, 33.673298, 42.359341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526096, 33.991016, 42.147068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024779, -0.548966, -0.835477,
		-0.954945, 0.260240, -0.142673,
		0.295747, 0.794299, -0.530681,
		31.614820, 34.229305, 41.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161272, 33.442104, 41.639889>,  <31.407797, 33.673298, 42.359341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161272, 33.442104, 41.639889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408461, 33.755642, 41.615559>,  <31.556774, 33.943764, 41.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408461, 33.755642, 41.615559>,  <31.161272, 33.442104, 41.639889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408461, 33.755642, 41.615559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326788, -0.326462, -0.886923,
		-0.715069, 0.528213, -0.457894,
		0.617969, 0.783846, -0.060829,
		31.593851, 33.990795, 41.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054472, 33.783932, 41.022560>,  <31.161272, 33.442104, 41.639889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054472, 33.783932, 41.022560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430387, 33.892292, 41.105900>,  <31.655937, 33.957306, 41.155903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430387, 33.892292, 41.105900>,  <31.054472, 33.783932, 41.022560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430387, 33.892292, 41.105900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295502, -0.337881, -0.893597,
		-0.171675, 0.901361, -0.397588,
		0.939791, 0.270896, 0.208348,
		31.712324, 33.973560, 41.168404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291618, 34.122959, 40.426003>,  <31.054472, 33.783932, 41.022560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291618, 34.122959, 40.426003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608316, 34.010372, 40.642857>,  <31.798336, 33.942822, 40.772968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608316, 34.010372, 40.642857>,  <31.291618, 34.122959, 40.426003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608316, 34.010372, 40.642857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451757, -0.327575, -0.829825,
		0.411160, 0.901926, -0.132201,
		0.791747, -0.281468, 0.542137,
		31.845840, 33.925930, 40.805496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830536, 34.250851, 39.949783>,  <31.291618, 34.122959, 40.426003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830536, 34.250851, 39.949783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992569, 33.994137, 40.210251>,  <32.089790, 33.840107, 40.366531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992569, 33.994137, 40.210251>,  <31.830536, 34.250851, 39.949783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992569, 33.994137, 40.210251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470695, -0.464189, -0.750317,
		0.783807, 0.610441, 0.114050,
		0.405083, -0.641787, 0.651166,
		32.114094, 33.801601, 40.405602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511219, 34.113716, 39.693050>,  <31.830536, 34.250851, 39.949783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511219, 34.113716, 39.693050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393116, 33.800526, 39.912056>,  <32.322254, 33.612610, 40.043461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393116, 33.800526, 39.912056>,  <32.511219, 34.113716, 39.693050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393116, 33.800526, 39.912056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530623, -0.610937, -0.587533,
		0.794522, 0.117053, 0.595847,
		-0.295253, -0.782978, 0.547514,
		32.304539, 33.565632, 40.076309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129192, 33.754353, 39.738514>,  <32.511219, 34.113716, 39.693050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129192, 33.754353, 39.738514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842091, 33.490826, 39.828651>,  <32.669830, 33.332710, 39.882732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842091, 33.490826, 39.828651>,  <33.129192, 33.754353, 39.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842091, 33.490826, 39.828651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460097, -0.691665, -0.556696,
		0.522623, -0.295895, 0.799570,
		-0.717758, -0.658821, 0.225340,
		32.626762, 33.293179, 39.896252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529503, 33.106716, 39.782894>,  <33.129192, 33.754353, 39.738514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529503, 33.106716, 39.782894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146236, 32.995220, 39.756920>,  <32.916275, 32.928322, 39.741333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146236, 32.995220, 39.756920>,  <33.529503, 33.106716, 39.782894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146236, 32.995220, 39.756920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242347, -0.669476, -0.702189,
		0.152253, -0.688553, 0.709023,
		-0.958169, -0.278740, -0.064939,
		32.858788, 32.911598, 39.737438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513283, 32.325035, 39.808922>,  <33.529503, 33.106716, 39.782894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513283, 32.325035, 39.808922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168377, 32.441875, 39.643429>,  <32.961433, 32.511978, 39.544132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168377, 32.441875, 39.643429>,  <33.513283, 32.325035, 39.808922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168377, 32.441875, 39.643429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006159, -0.810816, -0.585269,
		-0.506419, -0.507206, 0.697339,
		-0.862266, 0.292096, -0.413736,
		32.909698, 32.529503, 39.519306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095585, 31.753458, 39.578846>,  <33.513283, 32.325035, 39.808922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095585, 31.753458, 39.578846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948944, 32.039307, 39.340546>,  <32.860962, 32.210815, 39.197563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948944, 32.039307, 39.340546>,  <33.095585, 31.753458, 39.578846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948944, 32.039307, 39.340546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092810, -0.665231, -0.740847,
		-0.925739, -0.216302, 0.310196,
		-0.366598, 0.714620, -0.595755,
		32.838963, 32.253693, 39.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642258, 31.390896, 39.248379>,  <33.095585, 31.753458, 39.578846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642258, 31.390896, 39.248379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707489, 31.705454, 39.010056>,  <32.746628, 31.894190, 38.867062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707489, 31.705454, 39.010056>,  <32.642258, 31.390896, 39.248379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707489, 31.705454, 39.010056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154852, -0.576006, -0.802645,
		-0.974385, 0.223158, 0.027840,
		0.163081, 0.786396, -0.595807,
		32.756413, 31.941372, 38.831314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090221, 31.479250, 38.833019>,  <32.642258, 31.390896, 39.248379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090221, 31.479250, 38.833019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383236, 31.665592, 38.634476>,  <32.559044, 31.777397, 38.515350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383236, 31.665592, 38.634476>,  <32.090221, 31.479250, 38.833019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383236, 31.665592, 38.634476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136193, -0.614115, -0.777377,
		-0.666962, 0.637059, -0.386417,
		0.732539, 0.465853, -0.496355,
		32.602997, 31.805347, 38.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834700, 31.579960, 38.119431>,  <32.090221, 31.479250, 38.833019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834700, 31.579960, 38.119431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233398, 31.606022, 38.100456>,  <32.472618, 31.621658, 38.089073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233398, 31.606022, 38.100456>,  <31.834700, 31.579960, 38.119431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233398, 31.606022, 38.100456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012245, -0.459329, -0.888182,
		-0.079657, 0.885873, -0.457037,
		0.996747, 0.065154, -0.047437,
		32.532421, 31.625568, 38.086224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951475, 31.701641, 37.470070>,  <31.834700, 31.579960, 38.119431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951475, 31.701641, 37.470070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329880, 31.612602, 37.564312>,  <32.556923, 31.559179, 37.620857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329880, 31.612602, 37.564312>,  <31.951475, 31.701641, 37.470070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329880, 31.612602, 37.564312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117148, -0.442951, -0.888859,
		0.302220, 0.868473, -0.392960,
		0.946012, -0.222597, 0.235609,
		32.613682, 31.545824, 37.634995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303425, 31.965647, 36.908905>,  <31.951475, 31.701641, 37.470070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303425, 31.965647, 36.908905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526241, 31.686661, 37.089237>,  <32.659931, 31.519270, 37.197437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526241, 31.686661, 37.089237>,  <32.303425, 31.965647, 36.908905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526241, 31.686661, 37.089237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333602, -0.309205, -0.890563,
		0.760533, 0.646480, 0.060434,
		0.557045, -0.697464, 0.450828,
		32.693356, 31.477421, 37.224487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983307, 32.026348, 36.610348>,  <32.303425, 31.965647, 36.908905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983307, 32.026348, 36.610348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999084, 31.662994, 36.776855>,  <33.008553, 31.444983, 36.876759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999084, 31.662994, 36.776855>,  <32.983307, 32.026348, 36.610348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999084, 31.662994, 36.776855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459058, -0.353554, -0.815025,
		0.887530, 0.223240, 0.403056,
		0.039444, -0.908385, 0.416270,
		33.010918, 31.390478, 36.901737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615856, 31.706577, 36.373066>,  <32.983307, 32.026348, 36.610348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615856, 31.706577, 36.373066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371197, 31.406050, 36.472183>,  <33.224400, 31.225733, 36.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371197, 31.406050, 36.472183>,  <33.615856, 31.706577, 36.373066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371197, 31.406050, 36.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207895, -0.454848, -0.865964,
		0.763322, -0.478155, 0.434405,
		-0.611653, -0.751320, 0.247790,
		33.187702, 31.180655, 36.546520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328072, 31.504639, 36.459663>,  <33.615856, 31.706577, 36.373066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328072, 31.504639, 36.459663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683231, 31.581236, 36.292347>,  <34.896328, 31.627193, 36.191956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683231, 31.581236, 36.292347>,  <34.328072, 31.504639, 36.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683231, 31.581236, 36.292347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091542, 0.817525, 0.568571,
		0.450839, -0.543124, 0.708350,
		0.887898, 0.191491, -0.418291,
		34.949600, 31.638683, 36.166859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030949, 31.552889, 36.923695>,  <34.328072, 31.504639, 36.459663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030949, 31.552889, 36.923695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070946, 31.787321, 36.602070>,  <35.094944, 31.927980, 36.409096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070946, 31.787321, 36.602070>,  <35.030949, 31.552889, 36.923695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070946, 31.787321, 36.602070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058425, 0.803256, 0.592762,
		0.993272, -0.106247, 0.046076,
		0.099990, 0.586082, -0.804059,
		35.100945, 31.963146, 36.360851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542877, 31.992527, 37.087990>,  <35.030949, 31.552889, 36.923695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542877, 31.992527, 37.087990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309357, 32.162724, 36.811401>,  <35.169243, 32.264843, 36.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309357, 32.162724, 36.811401>,  <35.542877, 31.992527, 37.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309357, 32.162724, 36.811401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011041, 0.847433, 0.530787,
		0.811820, 0.317510, -0.490036,
		-0.583803, 0.425494, -0.691469,
		35.134216, 32.290371, 36.603962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920536, 32.580482, 36.903713>,  <35.542877, 31.992527, 37.087990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920536, 32.580482, 36.903713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535980, 32.635014, 36.808090>,  <35.305248, 32.667732, 36.750717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535980, 32.635014, 36.808090>,  <35.920536, 32.580482, 36.903713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535980, 32.635014, 36.808090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026900, 0.817967, 0.574635,
		0.273881, 0.558878, -0.782716,
		-0.961387, 0.136326, -0.239059,
		35.247562, 32.675911, 36.736374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858257, 33.272339, 36.748329>,  <35.920536, 32.580482, 36.903713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858257, 33.272339, 36.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478592, 33.184139, 36.838196>,  <35.250793, 33.131218, 36.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478592, 33.184139, 36.838196>,  <35.858257, 33.272339, 36.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478592, 33.184139, 36.838196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064599, 0.834932, 0.546548,
		-0.308095, 0.504249, -0.806728,
		-0.949160, -0.220502, 0.224664,
		35.193844, 33.117989, 36.905594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510422, 33.946396, 36.581703>,  <35.858257, 33.272339, 36.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510422, 33.946396, 36.581703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289749, 33.715763, 36.822769>,  <35.157345, 33.577381, 36.967407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289749, 33.715763, 36.822769>,  <35.510422, 33.946396, 36.581703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289749, 33.715763, 36.822769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059632, 0.747985, 0.661032,
		-0.831923, 0.328738, -0.447029,
		-0.551677, -0.576585, 0.602662,
		35.124245, 33.542789, 37.003567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969276, 34.282173, 36.837200>,  <35.510422, 33.946396, 36.581703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969276, 34.282173, 36.837200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999527, 33.996937, 37.115993>,  <35.017677, 33.825794, 37.283268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999527, 33.996937, 37.115993>,  <34.969276, 34.282173, 36.837200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999527, 33.996937, 37.115993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085079, 0.691823, 0.717037,
		-0.993500, -0.113522, -0.008352,
		0.075622, -0.713087, 0.696984,
		35.022213, 33.783012, 37.325089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538021, 34.610722, 37.316921>,  <34.969276, 34.282173, 36.837200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538021, 34.610722, 37.316921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751602, 34.338619, 37.517780>,  <34.879749, 34.175358, 37.638294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751602, 34.338619, 37.517780>,  <34.538021, 34.610722, 37.316921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751602, 34.338619, 37.517780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167910, 0.667376, 0.725545,
		-0.828674, -0.303091, 0.470568,
		0.533952, -0.680254, 0.502145,
		34.911789, 34.134544, 37.668423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226707, 34.552357, 37.914864>,  <34.538021, 34.610722, 37.316921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226707, 34.552357, 37.914864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593929, 34.418980, 38.000641>,  <34.814262, 34.338951, 38.052109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593929, 34.418980, 38.000641>,  <34.226707, 34.552357, 37.914864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593929, 34.418980, 38.000641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069618, 0.668098, 0.740809,
		-0.390289, -0.665175, 0.636566,
		0.918056, -0.333447, 0.214443,
		34.869347, 34.318947, 38.064972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200146, 34.418274, 38.629436>,  <34.226707, 34.552357, 37.914864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200146, 34.418274, 38.629436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593899, 34.437706, 38.561760>,  <34.830151, 34.449368, 38.521156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593899, 34.437706, 38.561760>,  <34.200146, 34.418274, 38.629436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593899, 34.437706, 38.561760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116500, 0.540702, 0.833108,
		0.131956, -0.839810, 0.526599,
		0.984386, 0.048585, -0.169187,
		34.889214, 34.452282, 38.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419819, 34.145805, 39.274590>,  <34.200146, 34.418274, 38.629436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419819, 34.145805, 39.274590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703560, 34.350647, 39.080860>,  <34.873806, 34.473553, 38.964622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703560, 34.350647, 39.080860>,  <34.419819, 34.145805, 39.274590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703560, 34.350647, 39.080860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183959, 0.528800, 0.828571,
		0.680425, -0.676844, 0.280899,
		0.709353, 0.512106, -0.484321,
		34.916367, 34.504280, 38.935566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996643, 34.165985, 39.732601>,  <34.419819, 34.145805, 39.274590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996643, 34.165985, 39.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065556, 34.461605, 39.472103>,  <35.106903, 34.638977, 39.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065556, 34.461605, 39.472103>,  <34.996643, 34.165985, 39.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065556, 34.461605, 39.472103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093922, 0.645793, 0.757714,
		0.980560, -0.191704, 0.041843,
		0.172279, 0.739054, -0.651244,
		35.117241, 34.683323, 39.276730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632477, 34.447880, 39.942833>,  <34.996643, 34.165985, 39.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632477, 34.447880, 39.942833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433445, 34.714722, 39.721066>,  <35.314026, 34.874828, 39.588005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433445, 34.714722, 39.721066>,  <35.632477, 34.447880, 39.942833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433445, 34.714722, 39.721066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061793, 0.610273, 0.789777,
		0.865213, 0.427238, -0.262439,
		-0.497583, 0.667109, -0.554416,
		35.284172, 34.914856, 39.554741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982903, 35.112064, 40.015247>,  <35.632477, 34.447880, 39.942833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982903, 35.112064, 40.015247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 35.173939, 39.919144>,  <35.369591, 35.211063, 39.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 35.173939, 39.919144>,  <35.982903, 35.112064, 40.015247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599583, 35.173939, 39.919144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099532, 0.607461, 0.788089,
		0.267857, 0.779143, -0.566735,
		-0.958304, 0.154687, -0.240262,
		35.312092, 35.220345, 39.847065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842182, 35.839741, 40.045853>,  <35.982903, 35.112064, 40.015247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842182, 35.839741, 40.045853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472031, 35.689964, 40.069427>,  <35.249939, 35.600098, 40.083572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472031, 35.689964, 40.069427>,  <35.842182, 35.839741, 40.045853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472031, 35.689964, 40.069427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194881, 0.603334, 0.773311,
		-0.325120, 0.704117, -0.631282,
		-0.925375, -0.374443, 0.058937,
		35.194420, 35.577633, 40.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404987, 36.440544, 39.974487>,  <35.842182, 35.839741, 40.045853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404987, 36.440544, 39.974487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185200, 36.152428, 40.143845>,  <35.053329, 35.979557, 40.245457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185200, 36.152428, 40.143845>,  <35.404987, 36.440544, 39.974487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185200, 36.152428, 40.143845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358335, 0.660930, 0.659370,
		-0.754773, 0.210586, -0.621266,
		-0.549467, -0.720295, 0.423391,
		35.020359, 35.936340, 40.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820019, 36.896572, 40.174217>,  <35.404987, 36.440544, 39.974487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820019, 36.896572, 40.174217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797272, 36.551598, 40.375401>,  <34.783623, 36.344612, 40.496109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797272, 36.551598, 40.375401>,  <34.820019, 36.896572, 40.174217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797272, 36.551598, 40.375401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365589, 0.486770, 0.793347,
		-0.929037, -0.138759, -0.342980,
		-0.056868, -0.862439, 0.502956,
		34.780212, 36.292866, 40.526287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096355, 36.860508, 40.549099>,  <34.820019, 36.896572, 40.174217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096355, 36.860508, 40.549099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331738, 36.590984, 40.727852>,  <34.472965, 36.429272, 40.835102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331738, 36.590984, 40.727852>,  <34.096355, 36.860508, 40.549099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331738, 36.590984, 40.727852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396026, 0.241662, 0.885868,
		-0.704900, -0.698270, -0.124638,
		0.588455, -0.673809, 0.446881,
		34.508274, 36.388840, 40.861916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650425, 36.436680, 41.034557>,  <34.096355, 36.860508, 40.549099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650425, 36.436680, 41.034557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026367, 36.388973, 41.162586>,  <34.251934, 36.360348, 41.239403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026367, 36.388973, 41.162586>,  <33.650425, 36.436680, 41.034557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026367, 36.388973, 41.162586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294072, 0.194149, 0.935857,
		-0.173760, -0.973695, 0.147398,
		0.939856, -0.119269, 0.320072,
		34.308323, 36.353191, 41.258606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455013, 36.245998, 41.639027>,  <33.650425, 36.436680, 41.034557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455013, 36.245998, 41.639027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845901, 36.309845, 41.694969>,  <34.080437, 36.348152, 41.728535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845901, 36.309845, 41.694969>,  <33.455013, 36.245998, 41.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845901, 36.309845, 41.694969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166944, 0.171346, 0.970963,
		0.131012, -0.972196, 0.194090,
		0.977223, 0.159611, 0.139854,
		34.139069, 36.357731, 41.736923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646988, 36.034008, 42.356415>,  <33.455013, 36.245998, 41.639027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646988, 36.034008, 42.356415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938374, 36.287605, 42.252579>,  <34.113205, 36.439766, 42.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938374, 36.287605, 42.252579>,  <33.646988, 36.034008, 42.356415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938374, 36.287605, 42.252579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035340, 0.413193, 0.909957,
		0.684173, -0.653696, 0.323401,
		0.728463, 0.633997, -0.259594,
		34.156914, 36.477806, 42.174702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093342, 36.288033, 43.010353>,  <33.646988, 36.034008, 42.356415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093342, 36.288033, 43.010353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147305, 36.567043, 42.728855>,  <34.179684, 36.734447, 42.559956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147305, 36.567043, 42.728855>,  <34.093342, 36.288033, 43.010353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147305, 36.567043, 42.728855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035334, 0.713176, 0.700093,
		0.990228, -0.069580, 0.120858,
		0.134906, 0.697523, -0.703749,
		34.187775, 36.776299, 42.517731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609364, 36.810337, 43.306473>,  <34.093342, 36.288033, 43.010353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609364, 36.810337, 43.306473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418140, 37.007030, 43.015362>,  <34.303406, 37.125046, 42.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418140, 37.007030, 43.015362>,  <34.609364, 36.810337, 43.306473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418140, 37.007030, 43.015362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089398, 0.797050, 0.597259,
		0.873766, 0.350586, -0.337077,
		-0.478059, 0.491731, -0.727778,
		34.274723, 37.154549, 42.797028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830811, 37.415295, 43.451641>,  <34.609364, 36.810337, 43.306473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830811, 37.415295, 43.451641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513390, 37.472057, 43.214951>,  <34.322937, 37.506115, 43.072937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513390, 37.472057, 43.214951>,  <34.830811, 37.415295, 43.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513390, 37.472057, 43.214951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189457, 0.866478, 0.461868,
		0.578259, 0.478623, -0.660710,
		-0.793551, 0.141903, -0.591727,
		34.275326, 37.514629, 43.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820564, 38.086128, 43.272297>,  <34.830811, 37.415295, 43.451641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820564, 38.086128, 43.272297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433575, 37.994934, 43.228436>,  <34.201382, 37.940216, 43.202118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433575, 37.994934, 43.228436>,  <34.820564, 38.086128, 43.272297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433575, 37.994934, 43.228436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251916, 0.828304, 0.500450,
		-0.023272, 0.511794, -0.858793,
		-0.967469, -0.227990, -0.109653,
		34.143333, 37.926537, 43.195541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533981, 38.720688, 43.196121>,  <34.820564, 38.086128, 43.272297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533981, 38.720688, 43.196121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204376, 38.514374, 43.289906>,  <34.006615, 38.390583, 43.346176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204376, 38.514374, 43.289906>,  <34.533981, 38.720688, 43.196121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204376, 38.514374, 43.289906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334965, 0.777247, 0.532621,
		-0.456957, 0.360347, -0.813229,
		-0.824008, -0.515788, 0.234465,
		33.957172, 38.359638, 43.360245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991272, 39.116001, 43.010468>,  <34.533981, 38.720688, 43.196121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991272, 39.116001, 43.010468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861050, 38.868561, 43.296501>,  <33.782917, 38.720097, 43.468121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861050, 38.868561, 43.296501>,  <33.991272, 39.116001, 43.010468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861050, 38.868561, 43.296501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460661, 0.764225, 0.451389,
		-0.825716, -0.182460, -0.533762,
		-0.325554, -0.618602, 0.715085,
		33.763382, 38.682980, 43.511028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308357, 39.388607, 43.177357>,  <33.991272, 39.116001, 43.010468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308357, 39.388607, 43.177357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437805, 39.159706, 43.478764>,  <33.515472, 39.022366, 43.659607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437805, 39.159706, 43.478764>,  <33.308357, 39.388607, 43.177357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437805, 39.159706, 43.478764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338308, 0.673751, 0.656969,
		-0.883640, -0.467529, 0.024439,
		0.323618, -0.572256, 0.753522,
		33.534889, 38.988029, 43.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760277, 39.311279, 43.658184>,  <33.308357, 39.388607, 43.177357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760277, 39.311279, 43.658184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090736, 39.230553, 43.868610>,  <33.289013, 39.182117, 43.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090736, 39.230553, 43.868610>,  <32.760277, 39.311279, 43.658184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090736, 39.230553, 43.868610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365650, 0.518311, 0.773080,
		-0.428688, -0.831036, 0.354408,
		0.826151, -0.201821, 0.526062,
		33.338581, 39.170006, 44.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509209, 39.013382, 44.247906>,  <32.760277, 39.311279, 43.658184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509209, 39.013382, 44.247906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877491, 39.143692, 44.333847>,  <33.098461, 39.221878, 44.385414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877491, 39.143692, 44.333847>,  <32.509209, 39.013382, 44.247906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877491, 39.143692, 44.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350641, 0.448914, 0.821904,
		0.171307, -0.832072, 0.527551,
		0.920709, 0.325779, 0.214857,
		33.153702, 39.241425, 44.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748249, 38.816555, 45.052876>,  <32.509209, 39.013382, 44.247906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748249, 38.816555, 45.052876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971127, 39.125137, 44.929985>,  <33.104855, 39.310287, 44.856251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971127, 39.125137, 44.929985>,  <32.748249, 38.816555, 45.052876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971127, 39.125137, 44.929985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296387, 0.530384, 0.794259,
		0.775684, -0.351500, 0.524178,
		0.557198, 0.771453, -0.307230,
		33.138287, 39.356575, 44.837814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050953, 39.085056, 45.688683>,  <32.748249, 38.816555, 45.052876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050953, 39.085056, 45.688683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088516, 39.390785, 45.433498>,  <33.111053, 39.574223, 45.280388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088516, 39.390785, 45.433498>,  <33.050953, 39.085056, 45.688683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088516, 39.390785, 45.433498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369958, 0.621698, 0.690378,
		0.924290, 0.171188, 0.341148,
		0.093907, 0.764321, -0.637962,
		33.116688, 39.620083, 45.242111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931698, 39.523693, 46.199993>,  <33.050953, 39.085056, 45.688683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931698, 39.523693, 46.199993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954727, 39.742439, 45.865898>,  <32.968544, 39.873688, 45.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954727, 39.742439, 45.865898>,  <32.931698, 39.523693, 46.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954727, 39.742439, 45.865898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422561, 0.771336, 0.475902,
		0.904504, 0.325542, 0.275490,
		0.057569, 0.546867, -0.835238,
		32.971996, 39.906498, 45.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219688, 40.135143, 46.393822>,  <32.931698, 39.523693, 46.199993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219688, 40.135143, 46.393822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012547, 40.190262, 46.056103>,  <32.888264, 40.223331, 45.853470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012547, 40.190262, 46.056103>,  <33.219688, 40.135143, 46.393822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012547, 40.190262, 46.056103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515190, 0.737665, 0.436383,
		0.682941, 0.660956, -0.311012,
		-0.517852, 0.137794, -0.844300,
		32.857189, 40.231602, 45.802814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200142, 40.912048, 46.238262>,  <33.219688, 40.135143, 46.393822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200142, 40.912048, 46.238262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878273, 40.759682, 46.056095>,  <32.685154, 40.668262, 45.946793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878273, 40.759682, 46.056095>,  <33.200142, 40.912048, 46.238262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878273, 40.759682, 46.056095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523646, 0.816843, 0.241997,
		0.279825, 0.433206, -0.856756,
		-0.804669, -0.380921, -0.455419,
		32.636871, 40.645405, 45.919468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962261, 41.470558, 45.923229>,  <33.200142, 40.912048, 46.238262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962261, 41.470558, 45.923229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652149, 41.217911, 45.922825>,  <32.466084, 41.066322, 45.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652149, 41.217911, 45.922825>,  <32.962261, 41.470558, 45.923229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652149, 41.217911, 45.922825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624072, 0.765763, 0.155375,
		-0.097366, 0.121087, -0.987855,
		-0.775277, -0.631621, -0.001007,
		32.419567, 41.028423, 45.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516209, 41.708138, 45.392902>,  <32.962261, 41.470558, 45.923229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516209, 41.708138, 45.392902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331909, 41.505535, 45.684425>,  <32.221329, 41.383972, 45.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331909, 41.505535, 45.684425>,  <32.516209, 41.708138, 45.392902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331909, 41.505535, 45.684425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413654, 0.849074, 0.328578,
		-0.785237, -0.150080, -0.600732,
		-0.460753, -0.506507, 0.728806,
		32.193684, 41.353584, 45.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865772, 41.961121, 45.393074>,  <32.516209, 41.708138, 45.392902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865772, 41.961121, 45.393074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922409, 41.802311, 45.755802>,  <31.956390, 41.707024, 45.973438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922409, 41.802311, 45.755802>,  <31.865772, 41.961121, 45.393074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922409, 41.802311, 45.755802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307058, 0.853253, 0.421514,
		-0.941099, -0.338129, -0.001097,
		0.141590, -0.397023, 0.906821,
		31.964886, 41.683205, 46.027847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335812, 42.115093, 45.929054>,  <31.865772, 41.961121, 45.393074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335812, 42.115093, 45.929054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340782, 42.473061, 45.750633>,  <31.343765, 42.687843, 45.643581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340782, 42.473061, 45.750633>,  <31.335812, 42.115093, 45.929054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340782, 42.473061, 45.750633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233060, -0.436394, -0.869048,
		-0.972383, -0.093158, -0.213992,
		0.012426, 0.894920, -0.446053,
		31.344509, 42.741535, 45.616817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169117, 41.988297, 45.283684>,  <31.335812, 42.115093, 45.929054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169117, 41.988297, 45.283684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333696, 42.349625, 45.235138>,  <31.432444, 42.566422, 45.206013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333696, 42.349625, 45.235138>,  <31.169117, 41.988297, 45.283684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333696, 42.349625, 45.235138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333750, -0.273228, -0.902196,
		-0.848129, 0.330702, -0.413901,
		0.411447, 0.903318, -0.121361,
		31.457130, 42.620621, 45.198730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912840, 42.253532, 44.534515>,  <31.169117, 41.988297, 45.283684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912840, 42.253532, 44.534515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256067, 42.439339, 44.622101>,  <31.462004, 42.550823, 44.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256067, 42.439339, 44.622101>,  <30.912840, 42.253532, 44.534515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256067, 42.439339, 44.622101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358904, -0.237491, -0.902655,
		-0.367295, 0.853126, -0.370500,
		0.858069, 0.464514, 0.218961,
		31.513489, 42.578693, 44.687790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002989, 42.612892, 43.982307>,  <30.912840, 42.253532, 44.534515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002989, 42.612892, 43.982307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367123, 42.592579, 44.146606>,  <31.585602, 42.580391, 44.245186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367123, 42.592579, 44.146606>,  <31.002989, 42.612892, 43.982307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367123, 42.592579, 44.146606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376452, -0.310782, -0.872753,
		0.171978, 0.949123, -0.263796,
		0.910334, -0.050787, 0.410747,
		31.640223, 42.577343, 44.269829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428263, 42.972469, 43.485058>,  <31.002989, 42.612892, 43.982307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428263, 42.972469, 43.485058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708332, 42.770943, 43.687416>,  <31.876373, 42.650028, 43.808830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708332, 42.770943, 43.687416>,  <31.428263, 42.972469, 43.485058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708332, 42.770943, 43.687416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575228, -0.021664, -0.817706,
		0.422930, 0.863541, 0.274638,
		0.700173, -0.503812, 0.505896,
		31.918385, 42.619801, 43.839184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185123, 43.292473, 43.303650>,  <31.428263, 42.972469, 43.485058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185123, 43.292473, 43.303650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208099, 42.922344, 43.453571>,  <32.221886, 42.700268, 43.543526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208099, 42.922344, 43.453571>,  <32.185123, 43.292473, 43.303650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208099, 42.922344, 43.453571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657563, -0.247421, -0.711614,
		0.751207, 0.287335, 0.594245,
		0.057443, -0.925323, 0.374804,
		32.225330, 42.644749, 43.566013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868954, 43.004906, 43.260227>,  <32.185123, 43.292473, 43.303650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868954, 43.004906, 43.260227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677536, 42.659111, 43.321751>,  <32.562683, 42.451633, 43.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677536, 42.659111, 43.321751>,  <32.868954, 43.004906, 43.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677536, 42.659111, 43.321751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538214, -0.427196, -0.726518,
		0.693770, -0.264893, 0.669712,
		-0.478548, -0.864486, 0.153806,
		32.533970, 42.399765, 43.367893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354309, 42.567642, 43.371761>,  <32.868954, 43.004906, 43.260227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354309, 42.567642, 43.371761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046291, 42.351021, 43.236851>,  <32.861481, 42.221050, 43.155907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046291, 42.351021, 43.236851>,  <33.354309, 42.567642, 43.371761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046291, 42.351021, 43.236851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600664, -0.437240, -0.669346,
		0.215016, -0.718014, 0.661985,
		-0.770046, -0.541551, -0.337272,
		32.815277, 42.188557, 43.135670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740128, 41.975689, 43.266720>,  <33.354309, 42.567642, 43.371761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740128, 41.975689, 43.266720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402798, 41.928093, 43.057095>,  <33.200397, 41.899536, 42.931320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402798, 41.928093, 43.057095>,  <33.740128, 41.975689, 43.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402798, 41.928093, 43.057095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519611, -0.429369, -0.738679,
		-0.137119, -0.895256, 0.423928,
		-0.843329, -0.118990, -0.524060,
		33.149799, 41.892395, 42.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664585, 41.221203, 43.142929>,  <33.740128, 41.975689, 43.266720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664585, 41.221203, 43.142929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475945, 41.449512, 42.874062>,  <33.362759, 41.586498, 42.712742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475945, 41.449512, 42.874062>,  <33.664585, 41.221203, 43.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475945, 41.449512, 42.874062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535717, -0.420015, -0.732526,
		-0.700426, -0.705553, -0.107692,
		-0.471604, 0.570773, -0.672167,
		33.334465, 41.620743, 42.672413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390797, 40.696594, 42.643589>,  <33.664585, 41.221203, 43.142929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390797, 40.696594, 42.643589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428398, 41.053207, 42.466351>,  <33.450958, 41.267174, 42.360008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428398, 41.053207, 42.466351>,  <33.390797, 40.696594, 42.643589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428398, 41.053207, 42.466351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247173, -0.452032, -0.857072,
		-0.964400, -0.028950, -0.262857,
		0.094008, 0.891532, -0.443095,
		33.456600, 41.320667, 42.333424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945904, 40.619236, 42.164501>,  <33.390797, 40.696594, 42.643589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945904, 40.619236, 42.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187782, 40.908302, 42.030579>,  <33.332909, 41.081741, 41.950226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187782, 40.908302, 42.030579>,  <32.945904, 40.619236, 42.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187782, 40.908302, 42.030579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215089, -0.552924, -0.804992,
		-0.766863, 0.414763, -0.489789,
		0.604697, 0.722666, -0.334806,
		33.369190, 41.125103, 41.930138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855083, 40.767746, 41.383808>,  <32.945904, 40.619236, 42.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855083, 40.767746, 41.383808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225426, 40.905685, 41.445618>,  <33.447632, 40.988449, 41.482704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225426, 40.905685, 41.445618>,  <32.855083, 40.767746, 41.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225426, 40.905685, 41.445618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341381, -0.587940, -0.733339,
		-0.162035, 0.731717, -0.662069,
		0.925853, 0.344844, 0.154528,
		33.503181, 41.009140, 41.491978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235577, 40.838379, 40.715542>,  <32.855083, 40.767746, 41.383808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235577, 40.838379, 40.715542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533302, 40.804642, 40.980534>,  <33.711937, 40.784401, 41.139530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533302, 40.804642, 40.980534>,  <33.235577, 40.838379, 40.715542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533302, 40.804642, 40.980534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501988, -0.583601, -0.638293,
		0.440459, 0.807649, -0.392045,
		0.744314, -0.084341, 0.662483,
		33.756596, 40.779339, 41.179279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837688, 40.911736, 40.319084>,  <33.235577, 40.838379, 40.715542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837688, 40.911736, 40.319084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950031, 40.728401, 40.656380>,  <34.017437, 40.618401, 40.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950031, 40.728401, 40.656380>,  <33.837688, 40.911736, 40.319084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950031, 40.728401, 40.656380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513913, -0.670212, -0.535453,
		0.810564, 0.583736, 0.047309,
		0.280856, -0.458331, 0.843239,
		34.034286, 40.590900, 40.909351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516785, 40.765469, 40.196915>,  <33.837688, 40.911736, 40.319084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516785, 40.765469, 40.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403114, 40.527306, 40.497509>,  <34.334911, 40.384407, 40.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403114, 40.527306, 40.497509>,  <34.516785, 40.765469, 40.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403114, 40.527306, 40.497509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511147, -0.757208, -0.406652,
		0.811156, 0.268562, 0.519519,
		-0.284173, -0.595409, 0.751488,
		34.317863, 40.348682, 40.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021595, 40.263947, 40.180862>,  <34.516785, 40.765469, 40.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021595, 40.263947, 40.180862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738255, 40.086376, 40.400375>,  <34.568249, 39.979832, 40.532085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738255, 40.086376, 40.400375>,  <35.021595, 40.263947, 40.180862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738255, 40.086376, 40.400375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318381, -0.894832, -0.312905,
		0.629978, -0.046924, 0.775194,
		-0.708351, -0.443930, 0.548785,
		34.525749, 39.953197, 40.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359463, 39.714046, 40.490776>,  <35.021595, 40.263947, 40.180862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359463, 39.714046, 40.490776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971878, 39.616211, 40.505157>,  <34.739326, 39.557510, 40.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971878, 39.616211, 40.505157>,  <35.359463, 39.714046, 40.490776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971878, 39.616211, 40.505157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194074, -0.842685, -0.502213,
		0.153135, -0.479646, 0.863996,
		-0.968961, -0.244586, 0.035958,
		34.681190, 39.542835, 40.515945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183880, 38.949680, 40.864014>,  <35.359463, 39.714046, 40.490776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183880, 38.949680, 40.864014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886318, 39.038551, 40.611904>,  <34.707783, 39.091873, 40.460640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886318, 39.038551, 40.611904>,  <35.183880, 38.949680, 40.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886318, 39.038551, 40.611904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099307, -0.895896, -0.433022,
		-0.660868, -0.384718, 0.644396,
		-0.743903, 0.222177, -0.630274,
		34.663147, 39.105206, 40.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932205, 38.274586, 40.781845>,  <35.183880, 38.949680, 40.864014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932205, 38.274586, 40.781845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792389, 38.512440, 40.492233>,  <34.708500, 38.655151, 40.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792389, 38.512440, 40.492233>,  <34.932205, 38.274586, 40.781845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792389, 38.512440, 40.492233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017365, -0.768535, -0.639571,
		-0.936760, -0.236130, 0.258309,
		-0.349542, 0.594639, -0.724034,
		34.687527, 38.690830, 40.275024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553921, 37.737690, 40.407555>,  <34.932205, 38.274586, 40.781845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553921, 37.737690, 40.407555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582523, 38.028393, 40.134289>,  <34.599686, 38.202812, 39.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582523, 38.028393, 40.134289>,  <34.553921, 37.737690, 40.407555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582523, 38.028393, 40.134289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065215, -0.680047, -0.730262,
		-0.995306, 0.096769, -0.001230,
		0.071503, 0.726754, -0.683166,
		34.603973, 38.246418, 39.929340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092064, 37.620953, 39.889820>,  <34.553921, 37.737690, 40.407555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092064, 37.620953, 39.889820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365067, 37.863190, 39.726139>,  <34.528866, 38.008533, 39.627930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365067, 37.863190, 39.726139>,  <34.092064, 37.620953, 39.889820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365067, 37.863190, 39.726139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048916, -0.596463, -0.801149,
		-0.729245, 0.526769, -0.436711,
		0.682502, 0.605596, -0.409200,
		34.569817, 38.044868, 39.603378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949673, 37.763985, 39.156727>,  <34.092064, 37.620953, 39.889820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949673, 37.763985, 39.156727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342175, 37.827457, 39.200481>,  <34.577675, 37.865540, 39.226734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342175, 37.827457, 39.200481>,  <33.949673, 37.763985, 39.156727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342175, 37.827457, 39.200481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179732, -0.548563, -0.816563,
		-0.069568, 0.820914, -0.566798,
		0.981253, 0.158678, 0.109383,
		34.636551, 37.875061, 39.233295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123505, 37.741280, 38.426853>,  <33.949673, 37.763985, 39.156727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123505, 37.741280, 38.426853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465889, 37.711319, 38.631489>,  <34.671318, 37.693344, 38.754272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465889, 37.711319, 38.631489>,  <34.123505, 37.741280, 38.426853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465889, 37.711319, 38.631489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402915, -0.523463, -0.750763,
		0.324030, 0.848750, -0.417885,
		0.855958, -0.074898, 0.511592,
		34.722675, 37.688850, 38.784966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620945, 37.901531, 37.914059>,  <34.123505, 37.741280, 38.426853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620945, 37.901531, 37.914059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819107, 37.694424, 38.193054>,  <34.938004, 37.570160, 38.360451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819107, 37.694424, 38.193054>,  <34.620945, 37.901531, 37.914059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819107, 37.694424, 38.193054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355015, -0.612143, -0.706573,
		0.792804, 0.597658, -0.119442,
		0.495405, -0.517770, 0.697487,
		34.967728, 37.539093, 38.402302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396484, 37.868332, 37.737324>,  <34.620945, 37.901531, 37.914059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396484, 37.868332, 37.737324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309654, 37.553612, 37.968433>,  <35.257557, 37.364780, 38.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309654, 37.553612, 37.968433>,  <35.396484, 37.868332, 37.737324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309654, 37.553612, 37.968433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410241, -0.610613, -0.677388,
		0.885766, 0.089982, 0.455327,
		-0.217076, -0.786800, 0.577774,
		35.244530, 37.317574, 38.141766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063114, 37.589622, 37.987820>,  <35.396484, 37.868332, 37.737324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063114, 37.589622, 37.987820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760120, 37.328480, 37.988144>,  <35.578323, 37.171795, 37.988338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760120, 37.328480, 37.988144>,  <36.063114, 37.589622, 37.987820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760120, 37.328480, 37.988144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503189, -0.584621, -0.636411,
		0.415958, -0.481663, 0.771350,
		-0.757483, -0.652855, 0.000810,
		35.532875, 37.132622, 37.988388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419498, 36.958805, 38.057152>,  <36.063114, 37.589622, 37.987820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419498, 36.958805, 38.057152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035866, 36.877148, 37.978672>,  <35.805687, 36.828152, 37.931583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035866, 36.877148, 37.978672>,  <36.419498, 36.958805, 38.057152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035866, 36.877148, 37.978672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279388, -0.569905, -0.772755,
		0.045943, -0.795947, 0.603620,
		-0.959078, -0.204147, -0.196195,
		35.748142, 36.815903, 37.919815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358738, 36.243519, 38.101479>,  <36.419498, 36.958805, 38.057152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358738, 36.243519, 38.101479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079018, 36.378227, 37.849270>,  <35.911186, 36.459053, 37.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079018, 36.378227, 37.849270>,  <36.358738, 36.243519, 38.101479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079018, 36.378227, 37.849270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418970, -0.521576, -0.743252,
		-0.579174, -0.783928, 0.223641,
		-0.699301, 0.336773, -0.630525,
		35.869228, 36.479259, 37.660110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143223, 35.568481, 37.768341>,  <36.358738, 36.243519, 38.101479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143223, 35.568481, 37.768341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047832, 35.901131, 37.567734>,  <35.990597, 36.100719, 37.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047832, 35.901131, 37.567734>,  <36.143223, 35.568481, 37.768341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047832, 35.901131, 37.567734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372207, -0.398717, -0.838145,
		-0.896989, -0.386550, -0.214451,
		-0.238480, 0.831627, -0.501521,
		35.976288, 36.150620, 37.417278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937195, 35.298370, 37.174049>,  <36.143223, 35.568481, 37.768341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937195, 35.298370, 37.174049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001942, 35.682728, 37.084175>,  <36.040791, 35.913342, 37.030251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001942, 35.682728, 37.084175>,  <35.937195, 35.298370, 37.174049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001942, 35.682728, 37.084175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394419, -0.271709, -0.877843,
		-0.904562, 0.053473, -0.422975,
		0.161867, 0.960893, -0.224687,
		36.050503, 35.970997, 37.016769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720554, 35.340443, 36.525848>,  <35.937195, 35.298370, 37.174049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720554, 35.340443, 36.525848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957527, 35.662033, 36.546406>,  <36.099712, 35.854988, 36.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957527, 35.662033, 36.546406>,  <35.720554, 35.340443, 36.525848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957527, 35.662033, 36.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492224, -0.310730, -0.813119,
		-0.637761, 0.507015, -0.579824,
		0.592433, 0.803979, 0.051393,
		36.135258, 35.903225, 36.561825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823582, 35.562935, 35.891712>,  <35.720554, 35.340443, 36.525848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823582, 35.562935, 35.891712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138100, 35.736122, 36.068020>,  <36.326809, 35.840034, 36.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138100, 35.736122, 36.068020>,  <35.823582, 35.562935, 35.891712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138100, 35.736122, 36.068020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586868, -0.300297, -0.751936,
		-0.193202, 0.849917, -0.490218,
		0.786294, 0.432969, 0.440771,
		36.373989, 35.866013, 36.200253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189674, 36.028881, 35.351456>,  <35.823582, 35.562935, 35.891712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189674, 36.028881, 35.351456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461788, 36.000687, 35.643276>,  <36.625057, 35.983772, 35.818367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461788, 36.000687, 35.643276>,  <36.189674, 36.028881, 35.351456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461788, 36.000687, 35.643276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728899, -0.039443, -0.683484,
		0.076950, 0.996733, 0.024543,
		0.680283, -0.070483, 0.729553,
		36.665874, 35.979542, 35.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640316, 36.415565, 35.109100>,  <36.189674, 36.028881, 35.351456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640316, 36.415565, 35.109100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838409, 36.200500, 35.382057>,  <36.957264, 36.071461, 35.545830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838409, 36.200500, 35.382057>,  <36.640316, 36.415565, 35.109100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838409, 36.200500, 35.382057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801873, -0.019339, -0.597181,
		0.334280, 0.842937, 0.421562,
		0.495233, -0.537665, 0.682393,
		36.986980, 36.039200, 35.586777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366123, 36.635868, 35.042637>,  <36.640316, 36.415565, 35.109100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366123, 36.635868, 35.042637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409016, 36.277824, 35.215736>,  <37.434753, 36.062996, 35.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409016, 36.277824, 35.215736>,  <37.366123, 36.635868, 35.042637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409016, 36.277824, 35.215736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747348, -0.214495, -0.628858,
		0.655722, 0.390852, 0.645959,
		0.107236, -0.895113, 0.432752,
		37.441185, 36.009289, 35.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064468, 36.547070, 35.024681>,  <37.366123, 36.635868, 35.042637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064468, 36.547070, 35.024681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912708, 36.180237, 35.073700>,  <37.821651, 35.960136, 35.103111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912708, 36.180237, 35.073700>,  <38.064468, 36.547070, 35.024681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912708, 36.180237, 35.073700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617743, -0.349681, -0.704355,
		0.688804, -0.191529, 0.699190,
		-0.379398, -0.917082, 0.122546,
		37.798889, 35.905113, 35.110462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665512, 36.068951, 34.981506>,  <38.064468, 36.547070, 35.024681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665512, 36.068951, 34.981506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353615, 35.827465, 34.915146>,  <38.166477, 35.682571, 34.875328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353615, 35.827465, 34.915146>,  <38.665512, 36.068951, 34.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353615, 35.827465, 34.915146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467202, -0.384660, -0.796090,
		0.416797, -0.698256, 0.581995,
		-0.779745, -0.603717, -0.165901,
		38.119690, 35.646351, 34.865376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987934, 35.399063, 34.982086>,  <38.665512, 36.068951, 34.981506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987934, 35.399063, 34.982086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651207, 35.371407, 34.767956>,  <38.449173, 35.354813, 34.639477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651207, 35.371407, 34.767956>,  <38.987934, 35.399063, 34.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651207, 35.371407, 34.767956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513494, -0.408248, -0.754756,
		-0.166357, -0.910248, 0.379174,
		-0.841813, -0.069144, -0.535322,
		38.398663, 35.350662, 34.607361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906216, 34.638725, 34.831707>,  <38.987934, 35.399063, 34.982086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906216, 34.638725, 34.831707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699585, 34.860687, 34.570869>,  <38.575607, 34.993862, 34.414368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699585, 34.860687, 34.570869>,  <38.906216, 34.638725, 34.831707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699585, 34.860687, 34.570869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545228, -0.374042, -0.750212,
		-0.660206, -0.743085, -0.109326,
		-0.516579, 0.554902, -0.652096,
		38.544609, 35.027157, 34.375240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680161, 34.247299, 34.145454>,  <38.906216, 34.638725, 34.831707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680161, 34.247299, 34.145454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756927, 34.633308, 34.074005>,  <38.802986, 34.864914, 34.031136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756927, 34.633308, 34.074005>,  <38.680161, 34.247299, 34.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756927, 34.633308, 34.074005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687160, -0.262079, -0.677588,
		-0.700699, 0.007296, -0.713420,
		0.191916, 0.965019, -0.178624,
		38.814503, 34.922813, 34.020416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721416, 34.473022, 33.435833>,  <38.680161, 34.247299, 34.145454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721416, 34.473022, 33.435833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 34.638088, 33.693535>,  <39.133526, 34.737129, 33.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 34.638088, 33.693535>,  <38.721416, 34.473022, 33.435833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978985, 34.638088, 33.693535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759877, -0.443072, -0.475683,
		0.089154, 0.795860, -0.598880,
		0.643925, 0.412666, 0.644258,
		39.172161, 34.761887, 33.886810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325764, 34.933044, 33.127220>,  <38.721416, 34.473022, 33.435833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325764, 34.933044, 33.127220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441605, 34.734467, 33.454556>,  <39.511108, 34.615318, 33.650955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441605, 34.734467, 33.454556>,  <39.325764, 34.933044, 33.127220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441605, 34.734467, 33.454556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743685, -0.421518, -0.518899,
		0.602548, 0.758857, 0.247127,
		0.289602, -0.496446, 0.818335,
		39.528484, 34.585533, 33.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018509, 34.917259, 33.185085>,  <39.325764, 34.933044, 33.127220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018509, 34.917259, 33.185085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919609, 34.602676, 33.411488>,  <39.860271, 34.413929, 33.547329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919609, 34.602676, 33.411488>,  <40.018509, 34.917259, 33.185085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919609, 34.602676, 33.411488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777737, -0.509480, -0.368180,
		0.577923, 0.349169, 0.737622,
		-0.247246, -0.786455, 0.566002,
		39.845436, 34.366741, 33.581287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582939, 34.833702, 33.608910>,  <40.018509, 34.917259, 33.185085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582939, 34.833702, 33.608910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359348, 34.508144, 33.545513>,  <40.225193, 34.312809, 33.507477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359348, 34.508144, 33.545513>,  <40.582939, 34.833702, 33.608910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359348, 34.508144, 33.545513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794130, -0.470494, -0.384697,
		0.238535, -0.340898, 0.909335,
		-0.558979, -0.813894, -0.158488,
		40.191654, 34.263977, 33.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944885, 34.280956, 33.878452>,  <40.582939, 34.833702, 33.608910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944885, 34.280956, 33.878452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712460, 34.164909, 33.574295>,  <40.573002, 34.095280, 33.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712460, 34.164909, 33.574295>,  <40.944885, 34.280956, 33.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712460, 34.164909, 33.574295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794584, -0.404350, -0.452920,
		-0.176062, -0.867370, 0.465479,
		-0.581066, -0.290121, -0.760390,
		40.538139, 34.077873, 33.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240288, 33.885769, 33.290531>,  <40.944885, 34.280956, 33.878452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240288, 33.885769, 33.290531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462086, 33.619503, 33.490303>,  <41.595165, 33.459743, 33.610165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462086, 33.619503, 33.490303>,  <41.240288, 33.885769, 33.290531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462086, 33.619503, 33.490303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436680, 0.278134, 0.855542,
		-0.708409, -0.692486, -0.136456,
		0.554498, -0.665661, 0.499427,
		41.628433, 33.419804, 33.640133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820770, 33.497845, 33.775311>,  <41.240288, 33.885769, 33.290531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820770, 33.497845, 33.775311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194324, 33.493755, 33.918278>,  <41.418457, 33.491302, 34.004059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194324, 33.493755, 33.918278>,  <40.820770, 33.497845, 33.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194324, 33.493755, 33.918278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351994, 0.149477, 0.923989,
		-0.062868, -0.988712, 0.135998,
		0.933888, -0.010218, 0.357418,
		41.474491, 33.490688, 34.025505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828342, 33.065178, 34.390686>,  <40.820770, 33.497845, 33.775311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828342, 33.065178, 34.390686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164520, 33.276913, 34.437103>,  <41.366226, 33.403954, 34.464954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164520, 33.276913, 34.437103>,  <40.828342, 33.065178, 34.390686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164520, 33.276913, 34.437103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193588, 0.093258, 0.976640,
		0.506146, -0.843273, 0.180850,
		0.840441, 0.529333, 0.116045,
		41.416653, 33.435711, 34.471916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084007, 32.778088, 35.045635>,  <40.828342, 33.065178, 34.390686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084007, 32.778088, 35.045635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256836, 33.135155, 34.994324>,  <41.360535, 33.349396, 34.963539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256836, 33.135155, 34.994324>,  <41.084007, 32.778088, 35.045635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256836, 33.135155, 34.994324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170523, 0.220540, 0.960356,
		0.885571, -0.393069, 0.247510,
		0.432072, 0.892669, -0.128276,
		41.386459, 33.402954, 34.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554367, 32.928814, 35.665638>,  <41.084007, 32.778088, 35.045635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554367, 32.928814, 35.665638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503426, 33.296669, 35.517017>,  <41.472862, 33.517380, 35.427845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503426, 33.296669, 35.517017>,  <41.554367, 32.928814, 35.665638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503426, 33.296669, 35.517017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186733, 0.345675, 0.919587,
		0.974122, 0.186490, 0.127705,
		-0.127350, 0.919636, -0.371554,
		41.465221, 33.572559, 35.405552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894535, 33.425575, 36.098515>,  <41.554367, 32.928814, 35.665638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894535, 33.425575, 36.098515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647213, 33.680996, 35.915234>,  <41.498817, 33.834248, 35.805267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647213, 33.680996, 35.915234>,  <41.894535, 33.425575, 36.098515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647213, 33.680996, 35.915234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173671, 0.457580, 0.872043,
		0.766508, 0.618766, -0.172027,
		-0.618307, 0.638552, -0.458201,
		41.461720, 33.872562, 35.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033588, 34.054409, 36.328678>,  <41.894535, 33.425575, 36.098515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033588, 34.054409, 36.328678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667023, 34.136181, 36.191040>,  <41.447083, 34.185242, 36.108459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667023, 34.136181, 36.191040>,  <42.033588, 34.054409, 36.328678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667023, 34.136181, 36.191040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123239, 0.673824, 0.728542,
		0.380792, 0.710049, -0.592306,
		-0.916411, 0.204428, -0.344093,
		41.392097, 34.197510, 36.087811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927105, 34.706421, 36.245022>,  <42.033588, 34.054409, 36.328678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927105, 34.706421, 36.245022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541084, 34.601971, 36.253830>,  <41.309471, 34.539299, 36.259113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541084, 34.601971, 36.253830>,  <41.927105, 34.706421, 36.245022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541084, 34.601971, 36.253830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183481, 0.733294, 0.654687,
		-0.187101, 0.627768, -0.755580,
		-0.965053, -0.261127, 0.022016,
		41.251568, 34.523632, 36.260433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536842, 35.297840, 36.124302>,  <41.927105, 34.706421, 36.245022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536842, 35.297840, 36.124302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267075, 35.056793, 36.294952>,  <41.105213, 34.912167, 36.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267075, 35.056793, 36.294952>,  <41.536842, 35.297840, 36.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267075, 35.056793, 36.294952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228765, 0.719923, 0.655269,
		-0.702015, 0.344329, -0.623388,
		-0.674419, -0.602618, 0.426626,
		41.064751, 34.876007, 36.422939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077908, 35.747971, 36.148060>,  <41.536842, 35.297840, 36.124302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077908, 35.747971, 36.148060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976452, 35.446507, 36.390602>,  <40.915577, 35.265629, 36.536129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976452, 35.446507, 36.390602>,  <41.077908, 35.747971, 36.148060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976452, 35.446507, 36.390602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010817, 0.629024, 0.777310,
		-0.967238, 0.190598, -0.167698,
		-0.253640, -0.753658, 0.606355,
		40.900360, 35.220409, 36.572510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505077, 35.956554, 36.465862>,  <41.077908, 35.747971, 36.148060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505077, 35.956554, 36.465862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638844, 35.670689, 36.711601>,  <40.719105, 35.499168, 36.859047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638844, 35.670689, 36.711601>,  <40.505077, 35.956554, 36.465862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638844, 35.670689, 36.711601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012836, 0.648369, 0.761218,
		-0.942339, -0.262448, 0.207650,
		0.334414, -0.714660, 0.614352,
		40.739166, 35.456291, 36.895908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985161, 35.827751, 37.051907>,  <40.505077, 35.956554, 36.465862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985161, 35.827751, 37.051907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361832, 35.725700, 37.139687>,  <40.587833, 35.664471, 37.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361832, 35.725700, 37.139687>,  <39.985161, 35.827751, 37.051907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361832, 35.725700, 37.139687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007989, 0.634979, 0.772488,
		-0.336433, -0.729185, 0.595905,
		0.941673, -0.255130, 0.219453,
		40.644333, 35.649162, 37.205521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929520, 35.904678, 37.745747>,  <39.985161, 35.827751, 37.051907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929520, 35.904678, 37.745747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320004, 35.889893, 37.660294>,  <40.554295, 35.881020, 37.609020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320004, 35.889893, 37.660294>,  <39.929520, 35.904678, 37.745747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320004, 35.889893, 37.660294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170778, 0.738155, 0.652658,
		0.133572, -0.673618, 0.726910,
		0.976214, -0.036963, -0.213636,
		40.612869, 35.878803, 37.596203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281445, 35.698631, 38.372051>,  <39.929520, 35.904678, 37.745747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281445, 35.698631, 38.372051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515167, 35.913254, 38.128510>,  <40.655399, 36.042027, 37.982384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515167, 35.913254, 38.128510>,  <40.281445, 35.698631, 38.372051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515167, 35.913254, 38.128510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126962, 0.680571, 0.721599,
		0.801545, -0.498932, 0.329535,
		0.584300, 0.536555, -0.608853,
		40.690456, 36.074219, 37.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620205, 36.179058, 38.773830>,  <40.281445, 35.698631, 38.372051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620205, 36.179058, 38.773830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 36.322426, 38.432076>,  <40.860996, 36.408447, 38.227020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770699, 36.322426, 38.432076>,  <40.620205, 36.179058, 38.773830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770699, 36.322426, 38.432076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309932, 0.820336, 0.480615,
		0.873149, -0.445627, 0.197553,
		0.376235, 0.358421, -0.854390,
		40.883568, 36.429951, 38.175758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340603, 36.391056, 38.843273>,  <40.620205, 36.179058, 38.773830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340603, 36.391056, 38.843273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157558, 36.604843, 38.559040>,  <41.047729, 36.733116, 38.388500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157558, 36.604843, 38.559040>,  <41.340603, 36.391056, 38.843273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157558, 36.604843, 38.559040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256800, 0.844561, 0.469863,
		0.851260, 0.032539, -0.523735,
		-0.457615, 0.534471, -0.710584,
		41.020275, 36.765182, 38.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717098, 37.027859, 38.831219>,  <41.340603, 36.391056, 38.843273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717098, 37.027859, 38.831219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377846, 37.124325, 38.642536>,  <41.174294, 37.182205, 38.529327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377846, 37.124325, 38.642536>,  <41.717098, 37.027859, 38.831219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377846, 37.124325, 38.642536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027836, 0.868869, 0.494259,
		0.529049, 0.432328, -0.730205,
		-0.848134, 0.241161, -0.471709,
		41.123405, 37.196674, 38.501022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769707, 37.757675, 38.594166>,  <41.717098, 37.027859, 38.831219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769707, 37.757675, 38.594166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376373, 37.692070, 38.562790>,  <41.140373, 37.652706, 38.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376373, 37.692070, 38.562790>,  <41.769707, 37.757675, 38.594166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376373, 37.692070, 38.562790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181535, 0.909066, 0.375026,
		0.009796, 0.383015, -0.923690,
		-0.983336, -0.164008, -0.078436,
		41.081371, 37.642868, 38.539261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620468, 38.392227, 38.346855>,  <41.769707, 37.757675, 38.594166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620468, 38.392227, 38.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283504, 38.227165, 38.485451>,  <41.081326, 38.128128, 38.568607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283504, 38.227165, 38.485451>,  <41.620468, 38.392227, 38.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283504, 38.227165, 38.485451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296759, 0.892037, 0.340887,
		-0.449752, 0.184343, -0.873923,
		-0.842412, -0.412659, 0.346490,
		41.030781, 38.103367, 38.589397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091202, 38.796856, 38.137939>,  <41.620468, 38.392227, 38.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091202, 38.796856, 38.137939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969280, 38.592106, 38.459206>,  <40.896126, 38.469257, 38.651966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969280, 38.592106, 38.459206>,  <41.091202, 38.796856, 38.137939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969280, 38.592106, 38.459206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390279, 0.836372, 0.384922,
		-0.868778, -0.196133, -0.454705,
		-0.304806, -0.511873, 0.803168,
		40.877838, 38.438545, 38.700157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432499, 38.994595, 38.161732>,  <41.091202, 38.796856, 38.137939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432499, 38.994595, 38.161732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475750, 38.853489, 38.533508>,  <40.501701, 38.768826, 38.756577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475750, 38.853489, 38.533508>,  <40.432499, 38.994595, 38.161732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475750, 38.853489, 38.533508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266588, 0.890394, 0.368957,
		-0.957726, -0.287674, 0.002235,
		0.108130, -0.352763, 0.929444,
		40.508190, 38.747662, 38.812340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365868, 39.676373, 38.436047>,  <40.432499, 38.994595, 38.161732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365868, 39.676373, 38.436047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452877, 39.441872, 38.748199>,  <40.505085, 39.301170, 38.935490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452877, 39.441872, 38.748199>,  <40.365868, 39.676373, 38.436047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452877, 39.441872, 38.748199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060449, 0.806084, 0.588706,
		-0.974181, -0.080886, 0.210783,
		0.217527, -0.586248, 0.780382,
		40.518135, 39.265999, 38.982315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953693, 40.018158, 38.892994>,  <40.365868, 39.676373, 38.436047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953693, 40.018158, 38.892994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230606, 39.799553, 39.081490>,  <40.396755, 39.668388, 39.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230606, 39.799553, 39.081490>,  <39.953693, 40.018158, 38.892994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230606, 39.799553, 39.081490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126477, 0.734804, 0.666383,
		-0.710454, -0.401727, 0.577815,
		0.692285, -0.546515, 0.471235,
		40.438293, 39.635597, 39.222858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745026, 39.846157, 39.598076>,  <39.953693, 40.018158, 38.892994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745026, 39.846157, 39.598076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128273, 39.937958, 39.529552>,  <40.358219, 39.993038, 39.488438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128273, 39.937958, 39.529552>,  <39.745026, 39.846157, 39.598076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128273, 39.937958, 39.529552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045752, 0.713140, 0.699527,
		0.282708, -0.662389, 0.693770,
		0.958114, 0.229503, -0.171304,
		40.415707, 40.006809, 39.478161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186623, 39.824074, 40.275154>,  <39.745026, 39.846157, 39.598076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186623, 39.824074, 40.275154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270073, 40.077805, 39.977398>,  <40.320141, 40.230042, 39.798744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270073, 40.077805, 39.977398>,  <40.186623, 39.824074, 40.275154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270073, 40.077805, 39.977398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154682, 0.772954, 0.615317,
		0.965687, -0.013225, 0.259373,
		0.208622, 0.634324, -0.744386,
		40.332661, 40.268101, 39.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426975, 40.562389, 40.487549>,  <40.186623, 39.824074, 40.275154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426975, 40.562389, 40.487549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610882, 40.241234, 40.639332>,  <40.721226, 40.048542, 40.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610882, 40.241234, 40.639332>,  <40.426975, 40.562389, 40.487549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610882, 40.241234, 40.639332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250862, -0.527320, -0.811789,
		0.851869, 0.278044, -0.443859,
		0.459769, -0.802885, 0.379456,
		40.748814, 40.000370, 40.753170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038712, 40.385155, 40.006626>,  <40.426975, 40.562389, 40.487549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038712, 40.385155, 40.006626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906712, 40.080975, 40.230347>,  <40.827511, 39.898468, 40.364578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906712, 40.080975, 40.230347>,  <41.038712, 40.385155, 40.006626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906712, 40.080975, 40.230347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112688, -0.556523, -0.823155,
		0.937230, -0.334669, 0.097960,
		-0.330001, -0.760447, 0.559303,
		40.807713, 39.852840, 40.398136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379971, 39.744991, 39.864185>,  <41.038712, 40.385155, 40.006626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379971, 39.744991, 39.864185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020466, 39.652618, 40.013264>,  <40.804764, 39.597195, 40.102711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020466, 39.652618, 40.013264>,  <41.379971, 39.744991, 39.864185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020466, 39.652618, 40.013264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227858, -0.480226, -0.847032,
		0.374584, -0.846200, 0.378988,
		-0.898759, -0.230929, 0.372699,
		40.750839, 39.583340, 40.125072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801552, 39.125477, 40.192089>,  <41.379971, 39.744991, 39.864185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801552, 39.125477, 40.192089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945866, 38.790531, 40.356361>,  <42.032452, 38.589565, 40.454926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945866, 38.790531, 40.356361>,  <41.801552, 39.125477, 40.192089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945866, 38.790531, 40.356361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458860, -0.542724, -0.703490,
		0.811963, 0.065361, -0.580037,
		0.360781, -0.837364, 0.410681,
		42.054100, 38.539322, 40.479565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270103, 38.770294, 39.672558>,  <41.801552, 39.125477, 40.192089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270103, 38.770294, 39.672558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083538, 38.515606, 39.918175>,  <41.971600, 38.362793, 40.065544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083538, 38.515606, 39.918175>,  <42.270103, 38.770294, 39.672558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083538, 38.515606, 39.918175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457934, -0.420110, -0.783456,
		0.756807, -0.646605, -0.095631,
		-0.466411, -0.636717, 0.614045,
		41.943615, 38.324593, 40.102386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568409, 38.839432, 40.399544>,  <42.270103, 38.770294, 39.672558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568409, 38.839432, 40.399544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461655, 38.548428, 40.652370>,  <42.397602, 38.373825, 40.804066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461655, 38.548428, 40.652370>,  <42.568409, 38.839432, 40.399544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461655, 38.548428, 40.652370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265125, -0.685970, -0.677609,
		0.926543, -0.013266, 0.375954,
		-0.266882, -0.727509, 0.632064,
		42.381592, 38.330173, 40.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102016, 38.424553, 40.675995>,  <42.568409, 38.839432, 40.399544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102016, 38.424553, 40.675995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780407, 38.188770, 40.644787>,  <42.587440, 38.047302, 40.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780407, 38.188770, 40.644787>,  <43.102016, 38.424553, 40.675995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780407, 38.188770, 40.644787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537178, -0.663842, -0.520340,
		0.254923, -0.460278, 0.850387,
		-0.804024, -0.589456, -0.078023,
		42.539200, 38.011932, 40.621380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402420, 37.753040, 40.683743>,  <43.102016, 38.424553, 40.675995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402420, 37.753040, 40.683743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030609, 37.703487, 40.544815>,  <42.807522, 37.673756, 40.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030609, 37.703487, 40.544815>,  <43.402420, 37.753040, 40.683743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030609, 37.703487, 40.544815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313169, -0.762477, -0.566174,
		-0.194684, -0.635045, 0.747540,
		-0.929529, -0.123882, -0.347318,
		42.751751, 37.666325, 40.440620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288288, 37.041847, 40.492344>,  <43.402420, 37.753040, 40.683743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288288, 37.041847, 40.492344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993771, 37.236683, 40.304466>,  <42.817059, 37.353584, 40.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993771, 37.236683, 40.304466>,  <43.288288, 37.041847, 40.492344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993771, 37.236683, 40.304466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072048, -0.633750, -0.770175,
		-0.672815, -0.600916, 0.431532,
		-0.736294, 0.487094, -0.469692,
		42.772881, 37.382812, 40.163559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850163, 36.502926, 40.304798>,  <43.288288, 37.041847, 40.492344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850163, 36.502926, 40.304798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791046, 36.799934, 40.043472>,  <42.755577, 36.978142, 39.886677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791046, 36.799934, 40.043472>,  <42.850163, 36.502926, 40.304798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791046, 36.799934, 40.043472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123931, -0.641455, -0.757085,
		-0.981223, -0.192856, 0.002779,
		-0.147791, 0.742525, -0.653311,
		42.746708, 37.022690, 39.847481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364807, 36.271755, 39.844173>,  <42.850163, 36.502926, 40.304798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364807, 36.271755, 39.844173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562016, 36.560314, 39.649647>,  <42.680340, 36.733452, 39.532928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562016, 36.560314, 39.649647>,  <42.364807, 36.271755, 39.844173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562016, 36.560314, 39.649647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027058, -0.571423, -0.820210,
		-0.869594, 0.391225, -0.301245,
		0.493025, 0.721401, -0.486321,
		42.709923, 36.776733, 39.503750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083710, 36.303253, 39.150562>,  <42.364807, 36.271755, 39.844173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083710, 36.303253, 39.150562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452164, 36.457138, 39.126900>,  <42.673237, 36.549469, 39.112701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452164, 36.457138, 39.126900>,  <42.083710, 36.303253, 39.150562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452164, 36.457138, 39.126900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171234, -0.537003, -0.826018,
		-0.349546, 0.750749, -0.560531,
		0.921139, 0.384713, -0.059153,
		42.728504, 36.572552, 39.109154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121147, 36.378738, 38.465183>,  <42.083710, 36.303253, 39.150562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121147, 36.378738, 38.465183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492409, 36.443657, 38.599163>,  <42.715164, 36.482609, 38.679550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492409, 36.443657, 38.599163>,  <42.121147, 36.378738, 38.465183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492409, 36.443657, 38.599163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372172, -0.415864, -0.829786,
		0.004626, 0.894829, -0.446386,
		0.928152, 0.162294, 0.334954,
		42.770855, 36.492344, 38.699650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500965, 36.802277, 37.917511>,  <42.121147, 36.378738, 38.465183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500965, 36.802277, 37.917511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764919, 36.609238, 38.147869>,  <42.923290, 36.493416, 38.286083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764919, 36.609238, 38.147869>,  <42.500965, 36.802277, 37.917511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764919, 36.609238, 38.147869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486992, -0.308975, -0.816930,
		0.572182, 0.819535, 0.031132,
		0.659884, -0.482594, 0.575897,
		42.962883, 36.464458, 38.320637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091831, 37.038792, 37.695621>,  <42.500965, 36.802277, 37.917511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091831, 37.038792, 37.695621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188766, 36.694378, 37.874458>,  <43.246929, 36.487728, 37.981762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188766, 36.694378, 37.874458>,  <43.091831, 37.038792, 37.695621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188766, 36.694378, 37.874458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465264, -0.301240, -0.832336,
		0.851352, 0.409725, 0.327606,
		0.242341, -0.861034, 0.447092,
		43.261467, 36.436069, 38.008587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866222, 36.938396, 37.513851>,  <43.091831, 37.038792, 37.695621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866222, 36.938396, 37.513851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691833, 36.596172, 37.625526>,  <43.587200, 36.390839, 37.692532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691833, 36.596172, 37.625526>,  <43.866222, 36.938396, 37.513851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691833, 36.596172, 37.625526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351152, -0.447352, -0.822538,
		0.828627, -0.260564, 0.495463,
		-0.435970, -0.855560, 0.279190,
		43.561043, 36.339504, 37.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372379, 36.418842, 37.343754>,  <43.866222, 36.938396, 37.513851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372379, 36.418842, 37.343754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038158, 36.203808, 37.389114>,  <43.837627, 36.074787, 37.416332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038158, 36.203808, 37.389114>,  <44.372379, 36.418842, 37.343754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038158, 36.203808, 37.389114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283230, -0.598332, -0.749520,
		0.470782, -0.594142, 0.652196,
		-0.835551, -0.537582, 0.113405,
		43.787495, 36.042534, 37.423134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511215, 35.815136, 37.237076>,  <44.372379, 36.418842, 37.343754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511215, 35.815136, 37.237076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116871, 35.777531, 37.181591>,  <43.880264, 35.754967, 37.148300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116871, 35.777531, 37.181591>,  <44.511215, 35.815136, 37.237076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116871, 35.777531, 37.181591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167206, -0.606602, -0.777224,
		-0.011072, -0.789427, 0.613744,
		-0.985860, -0.094016, -0.138713,
		43.821114, 35.749325, 37.139977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385017, 35.124878, 37.169651>,  <44.511215, 35.815136, 37.237076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385017, 35.124878, 37.169651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064518, 35.276627, 36.984581>,  <43.872219, 35.367676, 36.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064518, 35.276627, 36.984581>,  <44.385017, 35.124878, 37.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064518, 35.276627, 36.984581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082995, -0.695343, -0.713870,
		-0.592539, -0.610391, 0.525661,
		-0.801255, 0.379369, -0.462677,
		43.824142, 35.390438, 36.845776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004799, 34.511803, 36.980766>,  <44.385017, 35.124878, 37.169651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004799, 34.511803, 36.980766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906773, 34.819569, 36.744820>,  <43.847958, 35.004227, 36.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906773, 34.819569, 36.744820>,  <44.004799, 34.511803, 36.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906773, 34.819569, 36.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113252, -0.581536, -0.805600,
		-0.962870, -0.264225, 0.055374,
		-0.245061, 0.769417, -0.589867,
		43.833256, 35.050392, 36.567860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511536, 34.224609, 36.404186>,  <44.004799, 34.511803, 36.980766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511536, 34.224609, 36.404186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641571, 34.577099, 36.266914>,  <43.719593, 34.788593, 36.184551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641571, 34.577099, 36.266914>,  <43.511536, 34.224609, 36.404186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641571, 34.577099, 36.266914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283606, -0.437028, -0.853566,
		-0.902157, 0.180155, -0.391991,
		0.325085, 0.881221, -0.343175,
		43.739098, 34.841465, 36.163963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307880, 34.202263, 35.725498>,  <43.511536, 34.224609, 36.404186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307880, 34.202263, 35.725498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584305, 34.490208, 35.699448>,  <43.750160, 34.662975, 35.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584305, 34.490208, 35.699448>,  <43.307880, 34.202263, 35.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584305, 34.490208, 35.699448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127092, -0.209712, -0.969468,
		-0.711537, 0.661683, -0.236411,
		0.691059, 0.719859, -0.065123,
		43.791622, 34.706165, 35.679913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352730, 34.426189, 35.002548>,  <43.307880, 34.202263, 35.725498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352730, 34.426189, 35.002548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701252, 34.546120, 35.157948>,  <43.910366, 34.618076, 35.251186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701252, 34.546120, 35.157948>,  <43.352730, 34.426189, 35.002548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701252, 34.546120, 35.157948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410029, -0.009828, -0.912020,
		-0.269628, 0.953944, -0.131500,
		0.871308, 0.299824, 0.388495,
		43.962643, 34.636066, 35.274494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563679, 35.049515, 34.613659>,  <43.352730, 34.426189, 35.002548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563679, 35.049515, 34.613659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894024, 34.928364, 34.803909>,  <44.092232, 34.855675, 34.918060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894024, 34.928364, 34.803909>,  <43.563679, 35.049515, 34.613659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894024, 34.928364, 34.803909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483477, -0.053716, -0.873707,
		0.290172, 0.951515, 0.102071,
		0.825863, -0.302875, 0.475623,
		44.141785, 34.837502, 34.946594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090794, 35.551884, 34.418026>,  <43.563679, 35.049515, 34.613659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090794, 35.551884, 34.418026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249973, 35.204994, 34.537735>,  <44.345482, 34.996861, 34.609562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249973, 35.204994, 34.537735>,  <44.090794, 35.551884, 34.418026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249973, 35.204994, 34.537735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398958, -0.130162, -0.907684,
		0.826118, 0.480607, 0.294188,
		0.397947, -0.867222, 0.299272,
		44.369358, 34.944828, 34.627518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709148, 35.504257, 34.038300>,  <44.090794, 35.551884, 34.418026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709148, 35.504257, 34.038300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697506, 35.131397, 34.182659>,  <44.690521, 34.907681, 34.269276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697506, 35.131397, 34.182659>,  <44.709148, 35.504257, 34.038300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697506, 35.131397, 34.182659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447806, -0.334955, -0.829021,
		0.893657, 0.137488, 0.427170,
		-0.029102, -0.932149, 0.360903,
		44.688774, 34.851753, 34.290932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369274, 35.108845, 34.023773>,  <44.709148, 35.504257, 34.038300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369274, 35.108845, 34.023773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067638, 34.847244, 33.999672>,  <44.886658, 34.690285, 33.985210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067638, 34.847244, 33.999672>,  <45.369274, 35.108845, 34.023773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067638, 34.847244, 33.999672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310359, -0.273991, -0.910278,
		0.578817, -0.705129, 0.409590,
		-0.754088, -0.654004, -0.060253,
		44.841412, 34.651043, 33.981598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893978, 35.053280, 34.601784>,  <45.369274, 35.108845, 34.023773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893978, 35.053280, 34.601784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865158, 34.845001, 34.942062>,  <45.847866, 34.720036, 35.146229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865158, 34.845001, 34.942062>,  <45.893978, 35.053280, 34.601784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865158, 34.845001, 34.942062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930576, -0.271850, -0.245207,
		0.358940, -0.809304, -0.464962,
		-0.072047, -0.520697, 0.850696,
		45.843544, 34.688793, 35.197269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438801, 35.543842, 34.420551>,  <45.893978, 35.053280, 34.601784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438801, 35.543842, 34.420551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443535, 35.152454, 34.338123>,  <46.446377, 34.917622, 34.288666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443535, 35.152454, 34.338123>,  <46.438801, 35.543842, 34.420551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443535, 35.152454, 34.338123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759829, 0.142772, -0.634252,
		0.650015, -0.149070, 0.745157,
		0.011839, -0.978465, -0.206072,
		46.447086, 34.858913, 34.276302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127827, 35.123547, 34.529408>,  <46.438801, 35.543842, 34.420551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127827, 35.123547, 34.529408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902374, 34.996933, 34.224220>,  <46.767101, 34.920963, 34.041107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902374, 34.996933, 34.224220>,  <47.127827, 35.123547, 34.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902374, 34.996933, 34.224220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720813, 0.262629, -0.641447,
		0.403420, -0.911499, 0.080139,
		-0.563631, -0.316538, -0.762970,
		46.733284, 34.901970, 33.995331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515713, 34.660088, 34.067585>,  <47.127827, 35.123547, 34.529408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515713, 34.660088, 34.067585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217972, 34.825352, 33.857735>,  <47.039326, 34.924511, 33.731823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217972, 34.825352, 33.857735>,  <47.515713, 34.660088, 34.067585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217972, 34.825352, 33.857735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646497, 0.249080, -0.721110,
		-0.167259, -0.875933, -0.452511,
		-0.744355, 0.413160, -0.524627,
		46.994663, 34.949299, 33.700348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703331, 34.588474, 34.760555>,  <47.515713, 34.660088, 34.067585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703331, 34.588474, 34.760555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725254, 34.847656, 35.064438>,  <47.738407, 35.003166, 35.246765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725254, 34.847656, 35.064438>,  <47.703331, 34.588474, 34.760555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725254, 34.847656, 35.064438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920785, -0.327080, 0.212542,
		0.386202, 0.687875, -0.614553,
		0.054806, 0.647955, 0.759704,
		47.741695, 35.042042, 35.292351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.201807, 38.971764, 39.687927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.032845, 38.648514, 39.852127>,  <28.931467, 38.454563, 39.950645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.032845, 38.648514, 39.852127>,  <29.201807, 38.971764, 39.687927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032845, 38.648514, 39.852127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179356, -0.518450, -0.836087,
		0.888484, -0.279543, 0.363939,
		-0.422406, -0.808124, 0.410497,
		28.906122, 38.406078, 39.975277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683578, 38.400154, 39.519180>,  <29.201807, 38.971764, 39.687927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683578, 38.400154, 39.519180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.335032, 38.239628, 39.632076>,  <29.125902, 38.143311, 39.699814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.335032, 38.239628, 39.632076>,  <29.683578, 38.400154, 39.519180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335032, 38.239628, 39.632076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144452, -0.759619, -0.634123,
		0.468881, -0.511785, 0.719879,
		-0.871369, -0.401316, 0.282243,
		29.073620, 38.119232, 39.716747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837193, 37.694553, 39.731857>,  <29.683578, 38.400154, 39.519180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837193, 37.694553, 39.731857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.453358, 37.723747, 39.623142>,  <29.223057, 37.741264, 39.557915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.453358, 37.723747, 39.623142>,  <29.837193, 37.694553, 39.731857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453358, 37.723747, 39.623142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126839, -0.749958, -0.649210,
		-0.251209, -0.657446, 0.710393,
		-0.959587, 0.072983, -0.271787,
		29.165482, 37.745644, 39.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632315, 37.035271, 39.680145>,  <29.837193, 37.694553, 39.731857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632315, 37.035271, 39.680145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395714, 37.268997, 39.457901>,  <29.253754, 37.409233, 39.324554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395714, 37.268997, 39.457901>,  <29.632315, 37.035271, 39.680145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395714, 37.268997, 39.457901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027121, -0.674271, -0.737985,
		-0.805848, -0.451587, 0.382985,
		-0.591501, 0.584317, -0.555608,
		29.218264, 37.444294, 39.291218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157953, 36.611008, 39.308865>,  <29.632315, 37.035271, 39.680145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157953, 36.611008, 39.308865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.142797, 36.944534, 39.088566>,  <29.133703, 37.144650, 38.956387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.142797, 36.944534, 39.088566>,  <29.157953, 36.611008, 39.308865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142797, 36.944534, 39.088566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324119, -0.511090, -0.796074,
		-0.945257, -0.208670, -0.250890,
		-0.037889, 0.833813, -0.550746,
		29.131432, 37.194679, 38.923344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903505, 36.335228, 38.719151>,  <29.157953, 36.611008, 39.308865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903505, 36.335228, 38.719151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080095, 36.684986, 38.638618>,  <29.186049, 36.894840, 38.590298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.080095, 36.684986, 38.638618>,  <28.903505, 36.335228, 38.719151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080095, 36.684986, 38.638618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416447, -0.398426, -0.817208,
		-0.794778, 0.276932, -0.540034,
		0.441475, 0.874394, -0.201333,
		29.212538, 36.947304, 38.578220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682682, 36.592495, 38.074757>,  <28.903505, 36.335228, 38.719151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682682, 36.592495, 38.074757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049290, 36.732628, 38.151970>,  <29.269255, 36.816708, 38.198299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.049290, 36.732628, 38.151970>,  <28.682682, 36.592495, 38.074757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049290, 36.732628, 38.151970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364597, -0.533217, -0.763380,
		-0.164504, 0.770032, -0.616432,
		0.916519, 0.350328, 0.193036,
		29.324245, 36.837727, 38.209881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008179, 36.642509, 37.397469>,  <28.682682, 36.592495, 38.074757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008179, 36.642509, 37.397469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.316429, 36.635555, 37.652287>,  <29.501379, 36.631382, 37.805180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.316429, 36.635555, 37.652287>,  <29.008179, 36.642509, 37.397469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316429, 36.635555, 37.652287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596395, -0.332629, -0.730528,
		0.224602, 0.942897, -0.245964,
		0.770627, -0.017387, 0.637049,
		29.547617, 36.630341, 37.843403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546762, 37.055073, 37.121632>,  <29.008179, 36.642509, 37.397469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546762, 37.055073, 37.121632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718327, 36.811802, 37.388813>,  <29.821266, 36.665840, 37.549122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.718327, 36.811802, 37.388813>,  <29.546762, 37.055073, 37.121632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718327, 36.811802, 37.388813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651373, -0.304101, -0.695152,
		0.625898, 0.733244, 0.265715,
		0.428911, -0.608174, 0.667952,
		29.847000, 36.629349, 37.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091915, 36.899738, 36.759254>,  <29.546762, 37.055073, 37.121632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091915, 36.899738, 36.759254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118744, 36.663322, 37.080791>,  <30.134840, 36.521473, 37.273716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118744, 36.663322, 37.080791>,  <30.091915, 36.899738, 36.759254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118744, 36.663322, 37.080791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699317, -0.546802, -0.460395,
		0.711658, 0.593023, 0.376652,
		0.067070, -0.591043, 0.803847,
		30.138865, 36.486008, 37.321945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777929, 36.924812, 36.907230>,  <30.091915, 36.899738, 36.759254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777929, 36.924812, 36.907230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622452, 36.591381, 37.064232>,  <30.529165, 36.391323, 37.158432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622452, 36.591381, 37.064232>,  <30.777929, 36.924812, 36.907230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622452, 36.591381, 37.064232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784025, -0.523005, -0.334321,
		0.483965, 0.177784, 0.856837,
		-0.388693, -0.833582, 0.392503,
		30.505844, 36.341305, 37.181984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350771, 36.582088, 37.178192>,  <30.777929, 36.924812, 36.907230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350771, 36.582088, 37.178192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060038, 36.310078, 37.139660>,  <30.885597, 36.146870, 37.116539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060038, 36.310078, 37.139660>,  <31.350771, 36.582088, 37.178192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060038, 36.310078, 37.139660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654013, -0.642445, -0.399413,
		0.209722, -0.353310, 0.911696,
		-0.726831, -0.680026, -0.096334,
		30.841988, 36.106071, 37.110760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703247, 35.985626, 37.425423>,  <31.350771, 36.582088, 37.178192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703247, 35.985626, 37.425423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366552, 35.904377, 37.225334>,  <31.164536, 35.855629, 37.105282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366552, 35.904377, 37.225334>,  <31.703247, 35.985626, 37.425423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366552, 35.904377, 37.225334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489006, -0.679502, -0.546946,
		-0.228801, -0.704995, 0.671291,
		-0.841738, -0.203124, -0.500218,
		31.114031, 35.843441, 37.075268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777611, 35.297947, 37.415844>,  <31.703247, 35.985626, 37.425423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777611, 35.297947, 37.415844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532946, 35.409321, 37.119644>,  <31.386147, 35.476147, 36.941925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532946, 35.409321, 37.119644>,  <31.777611, 35.297947, 37.415844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532946, 35.409321, 37.119644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538275, -0.539479, -0.647474,
		-0.579767, -0.794628, 0.180102,
		-0.611662, 0.278439, -0.740501,
		31.349447, 35.492851, 36.897495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719036, 34.708233, 37.060352>,  <31.777611, 35.297947, 37.415844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719036, 34.708233, 37.060352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.593853, 34.999283, 36.816185>,  <31.518742, 35.173912, 36.669685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.593853, 34.999283, 36.816185>,  <31.719036, 34.708233, 37.060352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593853, 34.999283, 36.816185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493799, -0.424353, -0.759004,
		-0.811306, -0.538963, -0.226497,
		-0.312960, 0.727629, -0.610420,
		31.499966, 35.217571, 36.633060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281361, 34.411350, 36.455925>,  <31.719036, 34.708233, 37.060352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281361, 34.411350, 36.455925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.414143, 34.764194, 36.322247>,  <31.493813, 34.975899, 36.242039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.414143, 34.764194, 36.322247>,  <31.281361, 34.411350, 36.455925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414143, 34.764194, 36.322247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296595, -0.433925, -0.850729,
		-0.895453, 0.183283, -0.405674,
		0.331957, 0.882109, -0.334199,
		31.513729, 35.028828, 36.221989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000540, 34.464111, 35.786087>,  <31.281361, 34.411350, 36.455925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000540, 34.464111, 35.786087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.291712, 34.738365, 35.784393>,  <31.466415, 34.902920, 35.783379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.291712, 34.738365, 35.784393>,  <31.000540, 34.464111, 35.786087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291712, 34.738365, 35.784393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399138, -0.428762, -0.810464,
		-0.557500, 0.588272, -0.585773,
		0.727931, 0.685638, -0.004233,
		31.510092, 34.944057, 35.783123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066303, 34.737152, 35.124996>,  <31.000540, 34.464111, 35.786087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066303, 34.737152, 35.124996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.413290, 34.832409, 35.299713>,  <31.621483, 34.889565, 35.404545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.413290, 34.832409, 35.299713>,  <31.066303, 34.737152, 35.124996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413290, 34.832409, 35.299713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496888, -0.371406, -0.784321,
		-0.024554, 0.897410, -0.440514,
		0.867467, 0.238144, 0.436793,
		31.673531, 34.903851, 35.430752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432276, 35.140732, 34.647285>,  <31.066303, 34.737152, 35.124996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432276, 35.140732, 34.647285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736650, 35.014946, 34.874298>,  <31.919275, 34.939476, 35.010506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736650, 35.014946, 34.874298>,  <31.432276, 35.140732, 34.647285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736650, 35.014946, 34.874298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524585, -0.216559, -0.823354,
		0.381816, 0.924238, 0.000174,
		0.760938, -0.314461, 0.567527,
		31.964931, 34.920609, 35.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043766, 35.367924, 34.289116>,  <31.432276, 35.140732, 34.647285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043766, 35.367924, 34.289116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170982, 35.077435, 34.532902>,  <32.247311, 34.903141, 34.679173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170982, 35.077435, 34.532902>,  <32.043766, 35.367924, 34.289116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170982, 35.077435, 34.532902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604711, -0.339722, -0.720357,
		0.730190, 0.597653, 0.331110,
		0.318038, -0.726223, 0.609469,
		32.266392, 34.859566, 34.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758125, 35.348415, 34.368526>,  <32.043766, 35.367924, 34.289116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758125, 35.348415, 34.368526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645119, 34.968910, 34.425144>,  <32.577316, 34.741207, 34.459114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645119, 34.968910, 34.425144>,  <32.758125, 35.348415, 34.368526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645119, 34.968910, 34.425144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598229, -0.289603, -0.747162,
		0.749871, -0.126411, 0.649395,
		-0.282516, -0.948762, 0.141542,
		32.560364, 34.684280, 34.467606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342384, 34.935322, 34.079575>,  <32.758125, 35.348415, 34.368526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342384, 34.935322, 34.079575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067207, 34.647747, 34.119286>,  <32.902100, 34.475201, 34.143112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067207, 34.647747, 34.119286>,  <33.342384, 34.935322, 34.079575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067207, 34.647747, 34.119286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242823, -0.356918, -0.902024,
		0.683937, -0.596435, 0.420114,
		-0.687945, -0.718940, 0.099281,
		32.860825, 34.432064, 34.149071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646709, 34.291061, 34.085049>,  <33.342384, 34.935322, 34.079575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646709, 34.291061, 34.085049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.283688, 34.324997, 33.920540>,  <33.065876, 34.345360, 33.821835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.283688, 34.324997, 33.920540>,  <33.646709, 34.291061, 34.085049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283688, 34.324997, 33.920540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380851, -0.246299, -0.891229,
		-0.176906, -0.965474, 0.191219,
		-0.907555, 0.084838, -0.411273,
		33.011421, 34.350449, 33.797157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346783, 34.657047, 34.131649>,  <33.646709, 34.291061, 34.085049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346783, 34.657047, 34.131649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462437, 35.011723, 33.987328>,  <34.531830, 35.224529, 33.900734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462437, 35.011723, 33.987328>,  <34.346783, 34.657047, 34.131649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462437, 35.011723, 33.987328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040770, 0.387962, 0.920773,
		0.956418, -0.251522, 0.148325,
		0.289139, 0.886692, -0.360800,
		34.549179, 35.277729, 33.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784515, 34.919651, 34.614029>,  <34.346783, 34.657047, 34.131649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784515, 34.919651, 34.614029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705635, 35.255722, 34.411957>,  <34.658306, 35.457367, 34.290714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705635, 35.255722, 34.411957>,  <34.784515, 34.919651, 34.614029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705635, 35.255722, 34.411957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021799, 0.518933, 0.854537,
		0.980121, 0.157501, -0.120647,
		-0.197198, 0.840180, -0.505184,
		34.646477, 35.507774, 34.260403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088123, 35.450260, 35.108246>,  <34.784515, 34.919651, 34.614029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088123, 35.450260, 35.108246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864437, 35.663902, 34.854630>,  <34.730225, 35.792088, 34.702461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864437, 35.663902, 34.854630>,  <35.088123, 35.450260, 35.108246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864437, 35.663902, 34.854630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193582, 0.659536, 0.726319,
		0.806105, 0.528907, -0.265429,
		-0.559215, 0.534107, -0.634042,
		34.696674, 35.824135, 34.664417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129360, 36.141479, 35.337051>,  <35.088123, 35.450260, 35.108246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129360, 36.141479, 35.337051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794254, 36.141369, 35.118637>,  <34.593193, 36.141304, 34.987587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.794254, 36.141369, 35.118637>,  <35.129360, 36.141479, 35.337051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794254, 36.141369, 35.118637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374824, 0.727472, 0.574709,
		0.397069, 0.686137, -0.609551,
		-0.837761, -0.000275, -0.546038,
		34.542927, 36.141285, 34.954826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973545, 36.861458, 35.154778>,  <35.129360, 36.141479, 35.337051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973545, 36.861458, 35.154778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620083, 36.680218, 35.107704>,  <34.408005, 36.571472, 35.079460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.620083, 36.680218, 35.107704>,  <34.973545, 36.861458, 35.154778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620083, 36.680218, 35.107704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438725, 0.713859, 0.545825,
		-0.163308, 0.533952, -0.829594,
		-0.883658, -0.453101, -0.117679,
		34.354984, 36.544289, 35.072399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530258, 37.416309, 34.904076>,  <34.973545, 36.861458, 35.154778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530258, 37.416309, 34.904076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305313, 37.115623, 35.041874>,  <34.170345, 36.935211, 35.124554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305313, 37.115623, 35.041874>,  <34.530258, 37.416309, 34.904076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305313, 37.115623, 35.041874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586450, 0.656287, 0.474724,
		-0.582942, 0.064940, -0.809914,
		-0.562365, -0.751711, 0.344494,
		34.136604, 36.890110, 35.145222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760426, 37.564468, 34.754562>,  <34.530258, 37.416309, 34.904076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760426, 37.564468, 34.754562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755360, 37.290600, 35.046059>,  <33.752319, 37.126278, 35.220955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755360, 37.290600, 35.046059>,  <33.760426, 37.564468, 34.754562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755360, 37.290600, 35.046059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560111, 0.608586, 0.562049,
		-0.828321, -0.401058, -0.391199,
		-0.012664, -0.684672, 0.728741,
		33.751560, 37.085197, 35.264683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122524, 37.377274, 34.881111>,  <33.760426, 37.564468, 34.754562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122524, 37.377274, 34.881111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.306339, 37.288666, 35.225147>,  <33.416630, 37.235500, 35.431568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.306339, 37.288666, 35.225147>,  <33.122524, 37.377274, 34.881111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306339, 37.288666, 35.225147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751788, 0.418606, 0.509493,
		-0.472902, -0.880736, 0.025829,
		0.459541, -0.221522, 0.860087,
		33.444202, 37.222210, 35.483173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568504, 37.308418, 35.379169>,  <33.122524, 37.377274, 34.881111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568504, 37.308418, 35.379169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896660, 37.333950, 35.606461>,  <33.093555, 37.349270, 35.742836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896660, 37.333950, 35.606461>,  <32.568504, 37.308418, 35.379169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896660, 37.333950, 35.606461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519534, 0.498280, 0.694119,
		-0.238831, -0.864663, 0.441947,
		0.820392, 0.063829, 0.568227,
		33.142776, 37.353100, 35.776928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314556, 37.044998, 35.973965>,  <32.568504, 37.308418, 35.379169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314556, 37.044998, 35.973965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629639, 37.280956, 36.045006>,  <32.818687, 37.422531, 36.087631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629639, 37.280956, 36.045006>,  <32.314556, 37.044998, 35.973965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629639, 37.280956, 36.045006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499397, 0.442624, 0.744773,
		0.360723, -0.675360, 0.643248,
		0.787706, 0.589893, 0.177608,
		32.865952, 37.457924, 36.098289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357376, 36.965546, 36.632160>,  <32.314556, 37.044998, 35.973965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357376, 36.965546, 36.632160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570812, 37.299484, 36.578030>,  <32.698875, 37.499847, 36.545551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570812, 37.299484, 36.578030>,  <32.357376, 36.965546, 36.632160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570812, 37.299484, 36.578030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378293, 0.378702, 0.844677,
		0.756421, -0.399522, 0.517889,
		0.533593, 0.834845, -0.135322,
		32.730888, 37.549938, 36.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663494, 37.176338, 37.326660>,  <32.357376, 36.965546, 36.632160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663494, 37.176338, 37.326660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653400, 37.511833, 37.109077>,  <32.647343, 37.713131, 36.978527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653400, 37.511833, 37.109077>,  <32.663494, 37.176338, 37.326660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653400, 37.511833, 37.109077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283821, 0.515726, 0.808376,
		0.958545, 0.174785, 0.225037,
		-0.025235, 0.838735, -0.543954,
		32.645828, 37.763454, 36.945892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920380, 37.646622, 37.812477>,  <32.663494, 37.176338, 37.326660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920380, 37.646622, 37.812477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726471, 37.873474, 37.546135>,  <32.610126, 38.009586, 37.386330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726471, 37.873474, 37.546135>,  <32.920380, 37.646622, 37.812477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726471, 37.873474, 37.546135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425923, 0.511855, 0.746053,
		0.763929, 0.645267, -0.006579,
		-0.484770, 0.567129, -0.665855,
		32.581039, 38.043613, 37.346378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249832, 38.313805, 37.887718>,  <32.920380, 37.646622, 37.812477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249832, 38.313805, 37.887718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.880024, 38.323586, 37.735584>,  <32.658138, 38.329456, 37.644302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.880024, 38.323586, 37.735584>,  <33.249832, 38.313805, 37.887718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880024, 38.323586, 37.735584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311350, 0.527084, 0.790724,
		0.219806, 0.849462, -0.479688,
		-0.924525, 0.024455, -0.380336,
		32.602665, 38.330921, 37.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103642, 38.982533, 38.053345>,  <33.249832, 38.313805, 37.887718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103642, 38.982533, 38.053345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752541, 38.819305, 37.952923>,  <32.541878, 38.721371, 37.892670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752541, 38.819305, 37.952923>,  <33.103642, 38.982533, 38.053345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752541, 38.819305, 37.952923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453568, 0.538949, 0.709796,
		-0.154342, 0.736896, -0.658151,
		-0.877755, -0.408068, -0.251050,
		32.489212, 38.696884, 37.877609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682819, 39.556713, 37.963234>,  <33.103642, 38.982533, 38.053345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682819, 39.556713, 37.963234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.444298, 39.241074, 38.022224>,  <32.301186, 39.051689, 38.057617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.444298, 39.241074, 38.022224>,  <32.682819, 39.556713, 37.963234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444298, 39.241074, 38.022224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542832, 0.531701, 0.650098,
		-0.591403, 0.307601, -0.745402,
		-0.596302, -0.789098, 0.147474,
		32.265408, 39.004345, 38.066467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970217, 39.905605, 38.100796>,  <32.682819, 39.556713, 37.963234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970217, 39.905605, 38.100796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933830, 39.530312, 38.234329>,  <31.911999, 39.305134, 38.314449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.933830, 39.530312, 38.234329>,  <31.970217, 39.905605, 38.100796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933830, 39.530312, 38.234329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486744, 0.334341, 0.807029,
		-0.868795, -0.089077, -0.487094,
		-0.090968, -0.938233, 0.333832,
		31.906540, 39.248840, 38.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.012091, 39.650772, 38.265530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276598, 39.458111, 38.495567>,  <31.435303, 39.342514, 38.633591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276598, 39.458111, 38.495567>,  <31.012091, 39.650772, 38.265530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276598, 39.458111, 38.495567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526655, 0.247850, 0.813146,
		-0.534189, -0.840585, -0.089768,
		0.661269, -0.481650, 0.575097,
		31.474979, 39.313618, 38.668095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575874, 39.181190, 38.694176>,  <31.012091, 39.650772, 38.265530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575874, 39.181190, 38.694176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930838, 39.200996, 38.877502>,  <31.143816, 39.212879, 38.987499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930838, 39.200996, 38.877502>,  <30.575874, 39.181190, 38.694176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930838, 39.200996, 38.877502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459337, 0.179019, 0.870035,
		-0.038970, -0.982599, 0.181606,
		0.887406, 0.049514, 0.458321,
		31.197060, 39.215851, 39.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442396, 38.867107, 39.253944>,  <30.575874, 39.181190, 38.694176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442396, 38.867107, 39.253944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777487, 39.060135, 39.356194>,  <30.978540, 39.175949, 39.417545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777487, 39.060135, 39.356194>,  <30.442396, 38.867107, 39.253944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777487, 39.060135, 39.356194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409368, 0.245127, 0.878823,
		0.361429, -0.840859, 0.402897,
		0.837727, 0.482565, 0.255625,
		31.028805, 39.204903, 39.432880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429642, 38.844517, 39.943829>,  <30.442396, 38.867107, 39.253944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429642, 38.844517, 39.943829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726597, 39.108334, 39.896729>,  <30.904770, 39.266624, 39.868469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726597, 39.108334, 39.896729>,  <30.429642, 38.844517, 39.943829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726597, 39.108334, 39.896729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261249, 0.446817, 0.855631,
		0.616937, -0.604448, 0.504016,
		0.742386, 0.659544, -0.117747,
		30.949312, 39.306198, 39.861404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837664, 38.712193, 40.573765>,  <30.429642, 38.844517, 39.943829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837664, 38.712193, 40.573765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883120, 39.076378, 40.414696>,  <30.910393, 39.294888, 40.319256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883120, 39.076378, 40.414696>,  <30.837664, 38.712193, 40.573765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883120, 39.076378, 40.414696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375175, 0.409954, 0.831373,
		0.919962, 0.054717, 0.388172,
		0.113642, 0.910464, -0.397671,
		30.917212, 39.349518, 40.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083216, 39.088673, 41.100185>,  <30.837664, 38.712193, 40.573765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083216, 39.088673, 41.100185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909899, 39.352264, 40.854256>,  <30.805908, 39.510418, 40.706699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909899, 39.352264, 40.854256>,  <31.083216, 39.088673, 41.100185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909899, 39.352264, 40.854256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239020, 0.573734, 0.783389,
		0.868982, 0.486389, -0.091084,
		-0.433290, 0.658980, -0.614821,
		30.779911, 39.549957, 40.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130159, 39.584370, 41.460346>,  <31.083216, 39.088673, 41.100185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130159, 39.584370, 41.460346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853107, 39.705200, 41.198349>,  <30.686876, 39.777699, 41.041149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.853107, 39.705200, 41.198349>,  <31.130159, 39.584370, 41.460346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853107, 39.705200, 41.198349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310735, 0.694527, 0.648903,
		0.650930, 0.652977, -0.387183,
		-0.692628, 0.302080, -0.654992,
		30.645319, 39.795826, 41.001850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205748, 40.345936, 41.486080>,  <31.130159, 39.584370, 41.460346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205748, 40.345936, 41.486080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850742, 40.268150, 41.318985>,  <30.637739, 40.221478, 41.218727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850742, 40.268150, 41.318985>,  <31.205748, 40.345936, 41.486080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850742, 40.268150, 41.318985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386427, 0.807930, 0.444887,
		0.250987, 0.556267, -0.792194,
		-0.887513, -0.194464, -0.417737,
		30.584488, 40.209812, 41.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982637, 40.898586, 40.980385>,  <31.205748, 40.345936, 41.486080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982637, 40.898586, 40.980385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676291, 40.724987, 41.170158>,  <30.492483, 40.620827, 41.284023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676291, 40.724987, 41.170158>,  <30.982637, 40.898586, 40.980385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676291, 40.724987, 41.170158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134070, 0.829417, 0.542303,
		-0.628866, 0.351724, -0.693410,
		-0.765867, -0.434001, 0.474437,
		30.446529, 40.594788, 41.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510538, 41.423317, 40.964931>,  <30.982637, 40.898586, 40.980385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510538, 41.423317, 40.964931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427191, 41.162403, 41.256439>,  <30.377182, 41.005856, 41.431343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427191, 41.162403, 41.256439>,  <30.510538, 41.423317, 40.964931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427191, 41.162403, 41.256439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231374, 0.756849, 0.611266,
		-0.950289, -0.041251, -0.308624,
		-0.208366, -0.652287, 0.728770,
		30.364681, 40.966717, 41.475071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744944, 41.631184, 41.243130>,  <30.510538, 41.423317, 40.964931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744944, 41.631184, 41.243130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910637, 41.396938, 41.521832>,  <30.010054, 41.256390, 41.689053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910637, 41.396938, 41.521832>,  <29.744944, 41.631184, 41.243130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910637, 41.396938, 41.521832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320035, 0.622922, 0.713825,
		-0.852050, -0.518676, 0.070617,
		0.414233, -0.585614, 0.696755,
		30.034906, 41.221252, 41.730858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155056, 41.594116, 41.696564>,  <29.744944, 41.631184, 41.243130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155056, 41.594116, 41.696564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486151, 41.498188, 41.899475>,  <29.684809, 41.440632, 42.021221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486151, 41.498188, 41.899475>,  <29.155056, 41.594116, 41.696564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486151, 41.498188, 41.899475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251675, 0.649346, 0.717641,
		-0.501507, -0.721690, 0.477132,
		0.827738, -0.239820, 0.507283,
		29.734472, 41.426243, 42.051659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001833, 41.539062, 42.323124>,  <29.155056, 41.594116, 41.696564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001833, 41.539062, 42.323124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391153, 41.606850, 42.385040>,  <29.624746, 41.647522, 42.422192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391153, 41.606850, 42.385040>,  <29.001833, 41.539062, 42.323124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391153, 41.606850, 42.385040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229523, 0.719980, 0.654941,
		-0.000457, -0.672985, 0.739656,
		0.973303, 0.169469, 0.154795,
		29.683144, 41.657692, 42.431480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058403, 41.503536, 42.990654>,  <29.001833, 41.539062, 42.323124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058403, 41.503536, 42.990654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381218, 41.697117, 42.855316>,  <29.574907, 41.813267, 42.774113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381218, 41.697117, 42.855316>,  <29.058403, 41.503536, 42.990654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381218, 41.697117, 42.855316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127124, 0.701942, 0.700797,
		0.576651, -0.522559, 0.628017,
		0.807039, 0.483952, -0.338347,
		29.623329, 41.842300, 42.753811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538391, 41.581291, 43.563416>,  <29.058403, 41.503536, 42.990654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538391, 41.581291, 43.563416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.613499, 41.869892, 43.296829>,  <29.658564, 42.043053, 43.136879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.613499, 41.869892, 43.296829>,  <29.538391, 41.581291, 43.563416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613499, 41.869892, 43.296829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192680, 0.692406, 0.695304,
		0.963129, -0.002142, 0.269032,
		0.187769, 0.721505, -0.666464,
		29.669830, 42.086342, 43.096889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054361, 41.993954, 43.951664>,  <29.538391, 41.581291, 43.563416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054361, 41.993954, 43.951664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880182, 42.222683, 43.673553>,  <29.775675, 42.359921, 43.506687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880182, 42.222683, 43.673553>,  <30.054361, 41.993954, 43.951664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880182, 42.222683, 43.673553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095239, 0.738745, 0.667222,
		0.895161, 0.356758, -0.267226,
		-0.435449, 0.571821, -0.695273,
		29.749548, 42.394230, 43.464970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278502, 42.676964, 44.055885>,  <30.054361, 41.993954, 43.951664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278502, 42.676964, 44.055885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964827, 42.726170, 43.812599>,  <29.776623, 42.755692, 43.666630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964827, 42.726170, 43.812599>,  <30.278502, 42.676964, 44.055885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964827, 42.726170, 43.812599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408337, 0.635736, 0.655058,
		0.467241, 0.762042, -0.448306,
		-0.784185, 0.123010, -0.608212,
		29.729570, 42.763073, 43.630135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250000, 43.406605, 43.900108>,  <30.278502, 42.676964, 44.055885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250000, 43.406605, 43.900108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887396, 43.245575, 43.849247>,  <29.669834, 43.148956, 43.818729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887396, 43.245575, 43.849247>,  <30.250000, 43.406605, 43.900108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887396, 43.245575, 43.849247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394704, 0.701267, 0.593660,
		-0.149823, 0.588349, -0.794606,
		-0.906511, -0.402578, -0.127158,
		29.615442, 43.124802, 43.811100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815565, 44.023495, 43.785072>,  <30.250000, 43.406605, 43.900108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815565, 44.023495, 43.785072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562319, 43.729546, 43.882332>,  <29.410372, 43.553177, 43.940689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562319, 43.729546, 43.882332>,  <29.815565, 44.023495, 43.785072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562319, 43.729546, 43.882332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420872, 0.590446, 0.688651,
		-0.649641, 0.333660, -0.683109,
		-0.633115, -0.734877, 0.243150,
		29.372385, 43.509083, 43.955276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198357, 44.356689, 43.805359>,  <29.815565, 44.023495, 43.785072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198357, 44.356689, 43.805359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159117, 44.031559, 44.035030>,  <29.135572, 43.836479, 44.172832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159117, 44.031559, 44.035030>,  <29.198357, 44.356689, 43.805359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159117, 44.031559, 44.035030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396142, 0.561177, 0.726741,
		-0.912934, -0.156165, -0.377046,
		-0.098098, -0.812830, 0.574181,
		29.129688, 43.787708, 44.207283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536953, 44.481136, 44.187122>,  <29.198357, 44.356689, 43.805359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536953, 44.481136, 44.187122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730431, 44.196735, 44.391285>,  <28.846518, 44.026093, 44.513783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730431, 44.196735, 44.391285>,  <28.536953, 44.481136, 44.187122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730431, 44.196735, 44.391285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248342, 0.447700, 0.859006,
		-0.839265, -0.542250, 0.039977,
		0.483694, -0.711006, 0.510403,
		28.875538, 43.983433, 44.544407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039103, 44.306282, 44.673195>,  <28.536953, 44.481136, 44.187122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039103, 44.306282, 44.673195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.386967, 44.173027, 44.818913>,  <28.595686, 44.093075, 44.906345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.386967, 44.173027, 44.818913>,  <28.039103, 44.306282, 44.673195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386967, 44.173027, 44.818913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275646, 0.284500, 0.918194,
		-0.409526, -0.898933, 0.155590,
		0.869660, -0.333137, 0.364297,
		28.647865, 44.073086, 44.928200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792789, 43.993774, 45.235699>,  <28.039103, 44.306282, 44.673195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792789, 43.993774, 45.235699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.185865, 44.055275, 45.277035>,  <28.421711, 44.092175, 45.301834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.185865, 44.055275, 45.277035>,  <27.792789, 43.993774, 45.235699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185865, 44.055275, 45.277035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129167, 0.168820, 0.977147,
		0.132795, -0.973581, 0.185758,
		0.982691, 0.153754, 0.103337,
		28.480673, 44.101402, 45.308037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968065, 43.471519, 45.832596>,  <27.792789, 43.993774, 45.235699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968065, 43.471519, 45.832596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.216290, 43.781116, 45.782242>,  <28.365223, 43.966873, 45.752029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.216290, 43.781116, 45.782242>,  <27.968065, 43.471519, 45.832596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216290, 43.781116, 45.782242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078509, 0.221054, 0.972096,
		0.780220, -0.593360, 0.197942,
		0.620559, 0.773989, -0.125887,
		28.402458, 44.013313, 45.744476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303770, 43.232494, 45.932892>,  <27.968065, 43.471519, 45.832596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303770, 43.232494, 45.932892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.164228, 42.937862, 46.164665>,  <27.080503, 42.761082, 46.303730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.164228, 42.937862, 46.164665>,  <27.303770, 43.232494, 45.932892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164228, 42.937862, 46.164665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418326, -0.675652, -0.607040,
		0.838632, 0.030623, 0.543837,
		-0.348856, -0.736584, 0.579434,
		27.059572, 42.716888, 46.338497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872091, 42.746468, 45.928577>,  <27.303770, 43.232494, 45.932892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872091, 42.746468, 45.928577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543074, 42.547970, 46.039696>,  <27.345663, 42.428871, 46.106365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.543074, 42.547970, 46.039696>,  <27.872091, 42.746468, 45.928577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543074, 42.547970, 46.039696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325170, -0.811125, -0.486149,
		0.466571, -0.309549, 0.828547,
		-0.822542, -0.496242, 0.277792,
		27.296310, 42.399097, 46.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127672, 42.068375, 46.129276>,  <27.872091, 42.746468, 45.928577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127672, 42.068375, 46.129276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.737270, 42.004936, 46.069595>,  <27.503029, 41.966873, 46.033787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.737270, 42.004936, 46.069595>,  <28.127672, 42.068375, 46.129276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737270, 42.004936, 46.069595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216093, -0.789803, -0.574035,
		-0.026796, -0.592501, 0.805123,
		-0.976005, -0.158600, -0.149198,
		27.444469, 41.957355, 46.024837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919470, 41.275745, 46.282673>,  <28.127672, 42.068375, 46.129276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919470, 41.275745, 46.282673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.644367, 41.404999, 46.022648>,  <27.479305, 41.482552, 45.866634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.644367, 41.404999, 46.022648>,  <27.919470, 41.275745, 46.282673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644367, 41.404999, 46.022648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119046, -0.833147, -0.540088,
		-0.716116, -0.448835, 0.534533,
		-0.687754, 0.323131, -0.650062,
		27.438042, 41.501938, 45.827629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430805, 40.680538, 46.157696>,  <27.919470, 41.275745, 46.282673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430805, 40.680538, 46.157696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.393961, 40.915615, 45.836166>,  <27.371855, 41.056660, 45.643250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.393961, 40.915615, 45.836166>,  <27.430805, 40.680538, 46.157696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393961, 40.915615, 45.836166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151885, -0.789518, -0.594637,
		-0.984097, -0.176861, -0.016539,
		-0.092110, 0.587692, -0.803825,
		27.366327, 41.091923, 45.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195557, 40.309406, 45.639568>,  <27.430805, 40.680538, 46.157696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195557, 40.309406, 45.639568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297977, 40.611721, 45.398499>,  <27.359430, 40.793110, 45.253857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297977, 40.611721, 45.398499>,  <27.195557, 40.309406, 45.639568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297977, 40.611721, 45.398499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080650, -0.637990, -0.765810,
		-0.963292, 0.147482, -0.224314,
		0.256053, 0.755790, -0.602676,
		27.374794, 40.838459, 45.217697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887997, 40.156937, 45.066055>,  <27.195557, 40.309406, 45.639568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887997, 40.156937, 45.066055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.167213, 40.424297, 44.963314>,  <27.334743, 40.584713, 44.901669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.167213, 40.424297, 44.963314>,  <26.887997, 40.156937, 45.066055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167213, 40.424297, 44.963314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147447, -0.485188, -0.861889,
		-0.700713, 0.563761, -0.437235,
		0.698040, 0.668406, -0.256853,
		27.376625, 40.624821, 44.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883766, 40.348492, 44.350922>,  <26.887997, 40.156937, 45.066055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883766, 40.348492, 44.350922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264294, 40.434822, 44.438931>,  <27.492611, 40.486622, 44.491737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.264294, 40.434822, 44.438931>,  <26.883766, 40.348492, 44.350922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264294, 40.434822, 44.438931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304753, -0.552130, -0.776066,
		-0.046016, 0.805339, -0.591026,
		0.951319, 0.215828, 0.220022,
		27.549690, 40.499569, 44.504936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201822, 40.705238, 43.846222>,  <26.883766, 40.348492, 44.350922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201822, 40.705238, 43.846222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484484, 40.512482, 44.053459>,  <27.654079, 40.396828, 44.177803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.484484, 40.512482, 44.053459>,  <27.201822, 40.705238, 43.846222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484484, 40.512482, 44.053459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248830, -0.516203, -0.819523,
		0.662364, 0.708035, -0.244867,
		0.706653, -0.481893, 0.518094,
		27.696480, 40.367912, 44.208889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745533, 40.858925, 43.515614>,  <27.201822, 40.705238, 43.846222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745533, 40.858925, 43.515614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820217, 40.525967, 43.724327>,  <27.865028, 40.326191, 43.849556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820217, 40.525967, 43.724327>,  <27.745533, 40.858925, 43.515614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820217, 40.525967, 43.724327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332375, -0.446281, -0.830879,
		0.924481, 0.328563, 0.193341,
		0.186712, -0.832394, 0.521785,
		27.876230, 40.276249, 43.880863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452629, 40.695683, 43.374798>,  <27.745533, 40.858925, 43.515614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452629, 40.695683, 43.374798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.339025, 40.342693, 43.524769>,  <28.270863, 40.130898, 43.614754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.339025, 40.342693, 43.524769>,  <28.452629, 40.695683, 43.374798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339025, 40.342693, 43.524769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521674, -0.470310, -0.711804,
		0.804484, -0.006569, 0.593939,
		-0.284011, -0.882477, 0.374930,
		28.253822, 40.077950, 43.637249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111069, 40.189602, 43.459190>,  <28.452629, 40.695683, 43.374798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111069, 40.189602, 43.459190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778877, 39.966801, 43.456306>,  <28.579563, 39.833118, 43.454578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778877, 39.966801, 43.456306>,  <29.111069, 40.189602, 43.459190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778877, 39.966801, 43.456306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384162, -0.563306, -0.731510,
		0.403396, -0.610271, 0.681793,
		-0.830477, -0.557006, -0.007208,
		28.529734, 39.799698, 43.454144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337727, 39.505016, 43.261269>,  <29.111069, 40.189602, 43.459190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337727, 39.505016, 43.261269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944574, 39.501637, 43.187645>,  <28.708683, 39.499611, 43.143471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944574, 39.501637, 43.187645>,  <29.337727, 39.505016, 43.261269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944574, 39.501637, 43.187645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161108, -0.524118, -0.836268,
		-0.089407, -0.851604, 0.516505,
		-0.982879, -0.008445, -0.184060,
		28.649712, 39.499104, 43.132427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143574, 38.784054, 42.936581>,  <29.337727, 39.505016, 43.261269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143574, 38.784054, 42.936581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816093, 39.002125, 42.864456>,  <28.619606, 39.132969, 42.821182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816093, 39.002125, 42.864456>,  <29.143574, 38.784054, 42.936581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816093, 39.002125, 42.864456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126529, -0.477563, -0.869439,
		-0.560108, -0.688994, 0.459962,
		-0.818699, 0.545179, -0.180309,
		28.570484, 39.165680, 42.810364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805262, 38.390354, 42.646416>,  <29.143574, 38.784054, 42.936581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805262, 38.390354, 42.646416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629827, 38.730770, 42.530922>,  <28.524567, 38.935020, 42.461628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629827, 38.730770, 42.530922>,  <28.805262, 38.390354, 42.646416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629827, 38.730770, 42.530922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118783, -0.373359, -0.920051,
		-0.890805, -0.369225, 0.264840,
		-0.438586, 0.851044, -0.288732,
		28.498251, 38.986084, 42.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192417, 38.132088, 42.206043>,  <28.805262, 38.390354, 42.646416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192417, 38.132088, 42.206043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270456, 38.511391, 42.105843>,  <28.317280, 38.738972, 42.045723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270456, 38.511391, 42.105843>,  <28.192417, 38.132088, 42.206043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270456, 38.511391, 42.105843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080526, -0.239059, -0.967660,
		-0.977472, 0.208961, 0.029719,
		0.195099, 0.948254, -0.250500,
		28.328985, 38.795868, 42.030693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680916, 38.277653, 41.713871>,  <28.192417, 38.132088, 42.206043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680916, 38.277653, 41.713871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980923, 38.538387, 41.668999>,  <28.160927, 38.694828, 41.642075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980923, 38.538387, 41.668999>,  <27.680916, 38.277653, 41.713871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980923, 38.538387, 41.668999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033343, -0.206655, -0.977846,
		-0.660577, 0.729661, -0.176729,
		0.750017, 0.651835, -0.112182,
		28.205929, 38.733936, 41.635345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435127, 38.737015, 41.196251>,  <27.680916, 38.277653, 41.713871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435127, 38.737015, 41.196251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835001, 38.732014, 41.187546>,  <28.074924, 38.729012, 41.182323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835001, 38.732014, 41.187546>,  <27.435127, 38.737015, 41.196251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835001, 38.732014, 41.187546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022540, -0.065692, -0.997585,
		0.011047, 0.997761, -0.065953,
		0.999685, -0.012507, -0.021764,
		28.134907, 38.728260, 41.181015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626556, 39.054111, 40.557747>,  <27.435127, 38.737015, 41.196251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626556, 39.054111, 40.557747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966841, 38.872616, 40.663883>,  <28.171011, 38.763718, 40.727566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966841, 38.872616, 40.663883>,  <27.626556, 39.054111, 40.557747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966841, 38.872616, 40.663883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189274, -0.206511, -0.959963,
		0.490372, 0.866875, -0.089800,
		0.850712, -0.453742, 0.265344,
		28.222054, 38.736492, 40.743488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092072, 39.124584, 39.972366>,  <27.626556, 39.054111, 40.557747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092072, 39.124584, 39.972366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237307, 38.808338, 40.169586>,  <28.324448, 38.618591, 40.287918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237307, 38.808338, 40.169586>,  <28.092072, 39.124584, 39.972366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237307, 38.808338, 40.169586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072962, -0.503411, -0.860961,
		0.928894, 0.348579, -0.125098,
		0.363088, -0.790614, 0.493048,
		28.346233, 38.571156, 40.317501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.036602, 38.925793, 39.892044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741394, 38.917358, 39.622261>,  <40.564270, 38.912296, 39.460392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741394, 38.917358, 39.622261>,  <41.036602, 38.925793, 39.892044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741394, 38.917358, 39.622261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346349, -0.869644, -0.351797,
		-0.579115, -0.493228, 0.649116,
		-0.738017, -0.021090, -0.674453,
		40.519989, 38.911030, 39.419926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804173, 38.230152, 39.953701>,  <41.036602, 38.925793, 39.892044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804173, 38.230152, 39.953701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692654, 38.390007, 39.604401>,  <40.625744, 38.485920, 39.394821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692654, 38.390007, 39.604401>,  <40.804173, 38.230152, 39.953701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692654, 38.390007, 39.604401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119975, -0.887687, -0.444543,
		-0.952828, -0.228703, 0.199534,
		-0.278792, 0.399634, -0.873251,
		40.609016, 38.509895, 39.342426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319065, 37.764198, 39.692776>,  <40.804173, 38.230152, 39.953701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319065, 37.764198, 39.692776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.472897, 37.969585, 39.385933>,  <40.565197, 38.092819, 39.201828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.472897, 37.969585, 39.385933>,  <40.319065, 37.764198, 39.692776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472897, 37.969585, 39.385933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027095, -0.836938, -0.546626,
		-0.922695, 0.189435, -0.335781,
		0.384578, 0.513467, -0.767106,
		40.588268, 38.123627, 39.155800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061016, 37.410885, 39.126198>,  <40.319065, 37.764198, 39.692776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061016, 37.410885, 39.126198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333275, 37.640003, 38.943497>,  <40.496632, 37.777473, 38.833878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333275, 37.640003, 38.943497>,  <40.061016, 37.410885, 39.126198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333275, 37.640003, 38.943497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160475, -0.724882, -0.669920,
		-0.714820, 0.382682, -0.585309,
		0.680646, 0.572800, -0.456750,
		40.537468, 37.811844, 38.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807259, 37.537014, 38.368774>,  <40.061016, 37.410885, 39.126198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807259, 37.537014, 38.368774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200432, 37.567814, 38.435612>,  <40.436337, 37.586292, 38.475716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200432, 37.567814, 38.435612>,  <39.807259, 37.537014, 38.368774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200432, 37.567814, 38.435612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153365, -0.844577, -0.513000,
		0.101624, 0.529869, -0.841969,
		0.982930, 0.076996, 0.167093,
		40.495312, 37.590912, 38.485741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055389, 37.408680, 37.726753>,  <39.807259, 37.537014, 38.368774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055389, 37.408680, 37.726753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365791, 37.347637, 37.971550>,  <40.552032, 37.311012, 38.118427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365791, 37.347637, 37.971550>,  <40.055389, 37.408680, 37.726753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365791, 37.347637, 37.971550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300354, -0.763805, -0.571305,
		0.554626, 0.627148, -0.546879,
		0.776001, -0.152603, 0.611992,
		40.598591, 37.301857, 38.155148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643948, 37.422684, 37.363075>,  <40.055389, 37.408680, 37.726753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643948, 37.422684, 37.363075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721764, 37.201336, 37.687035>,  <40.768452, 37.068527, 37.881413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721764, 37.201336, 37.687035>,  <40.643948, 37.422684, 37.363075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721764, 37.201336, 37.687035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309135, -0.749012, -0.586017,
		0.930909, 0.364371, 0.025356,
		0.194536, -0.553367, 0.809902,
		40.780125, 37.035324, 37.930004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278637, 37.165306, 37.208263>,  <40.643948, 37.422684, 37.363075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278637, 37.165306, 37.208263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109642, 36.931854, 37.485645>,  <41.008244, 36.791782, 37.652073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109642, 36.931854, 37.485645>,  <41.278637, 37.165306, 37.208263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109642, 36.931854, 37.485645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374363, -0.809146, -0.452918,
		0.825443, 0.068251, 0.560344,
		-0.422488, -0.583630, 0.693455,
		40.982895, 36.756763, 37.693680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595055, 36.559189, 37.127468>,  <41.278637, 37.165306, 37.208263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595055, 36.559189, 37.127468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346455, 36.401470, 37.398251>,  <41.197296, 36.306839, 37.560719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346455, 36.401470, 37.398251>,  <41.595055, 36.559189, 37.127468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346455, 36.401470, 37.398251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178280, -0.912618, -0.367891,
		0.762863, -0.107955, 0.637484,
		-0.621495, -0.394301, 0.676957,
		41.160007, 36.283180, 37.601337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920589, 35.876015, 37.435425>,  <41.595055, 36.559189, 37.127468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920589, 35.876015, 37.435425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523708, 35.875114, 37.485268>,  <41.285580, 35.874577, 37.515175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523708, 35.875114, 37.485268>,  <41.920589, 35.876015, 37.435425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523708, 35.875114, 37.485268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059110, -0.871738, -0.486393,
		0.109720, -0.489967, 0.864808,
		-0.992203, -0.002248, 0.124609,
		41.226048, 35.874439, 37.522652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732792, 35.196968, 37.667625>,  <41.920589, 35.876015, 37.435425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732792, 35.196968, 37.667625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402378, 35.346828, 37.499199>,  <41.204128, 35.436745, 37.398144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402378, 35.346828, 37.499199>,  <41.732792, 35.196968, 37.667625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402378, 35.346828, 37.499199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172853, -0.879482, -0.443434,
		-0.536452, -0.293512, 0.791246,
		-0.826040, 0.374650, -0.421065,
		41.154568, 35.459225, 37.372879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311642, 34.587322, 37.654377>,  <41.732792, 35.196968, 37.667625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311642, 34.587322, 37.654377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118282, 34.840366, 37.412342>,  <41.002266, 34.992191, 37.267120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.118282, 34.840366, 37.412342>,  <41.311642, 34.587322, 37.654377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118282, 34.840366, 37.412342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202605, -0.753293, -0.625700,
		-0.851630, -0.179871, 0.492313,
		-0.483401, 0.632611, -0.605084,
		40.973263, 35.030151, 37.230816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668198, 34.248951, 37.402992>,  <41.311642, 34.587322, 37.654377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668198, 34.248951, 37.402992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.743229, 34.553684, 37.154984>,  <40.788246, 34.736523, 37.006176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.743229, 34.553684, 37.154984>,  <40.668198, 34.248951, 37.402992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743229, 34.553684, 37.154984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113859, -0.610109, -0.784094,
		-0.975629, 0.217671, -0.027699,
		0.187573, 0.761831, -0.620024,
		40.799500, 34.782234, 36.968975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146545, 34.111069, 36.903095>,  <40.668198, 34.248951, 37.402992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146545, 34.111069, 36.903095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427864, 34.353497, 36.754475>,  <40.596657, 34.498955, 36.665302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427864, 34.353497, 36.754475>,  <40.146545, 34.111069, 36.903095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427864, 34.353497, 36.754475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032756, -0.549724, -0.834704,
		-0.710139, 0.574876, -0.406473,
		0.703300, 0.606070, -0.371550,
		40.638855, 34.535316, 36.643009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016666, 34.132545, 36.274895>,  <40.146545, 34.111069, 36.903095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016666, 34.132545, 36.274895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394699, 34.263252, 36.272278>,  <40.621521, 34.341675, 36.270710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.394699, 34.263252, 36.272278>,  <40.016666, 34.132545, 36.274895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394699, 34.263252, 36.272278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186142, -0.554603, -0.811029,
		-0.268640, 0.765273, -0.584970,
		0.945084, 0.326762, -0.006539,
		40.678223, 34.361282, 36.270317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129681, 34.326366, 35.617252>,  <40.016666, 34.132545, 36.274895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129681, 34.326366, 35.617252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508209, 34.305195, 35.744797>,  <40.735329, 34.292492, 35.821323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508209, 34.305195, 35.744797>,  <40.129681, 34.326366, 35.617252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508209, 34.305195, 35.744797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285908, -0.323062, -0.902157,
		0.150760, 0.944897, -0.290589,
		0.946323, -0.052927, 0.318858,
		40.792107, 34.289318, 35.840454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645924, 34.613148, 35.114548>,  <40.129681, 34.326366, 35.617252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645924, 34.613148, 35.114548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889008, 34.370739, 35.319847>,  <41.034859, 34.225296, 35.443027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889008, 34.370739, 35.319847>,  <40.645924, 34.613148, 35.114548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889008, 34.370739, 35.319847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360495, -0.365351, -0.858232,
		0.707621, 0.706583, -0.003562,
		0.607714, -0.606019, 0.513250,
		41.071323, 34.188934, 35.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278126, 34.682114, 34.772293>,  <40.645924, 34.613148, 35.114548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278126, 34.682114, 34.772293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317234, 34.341183, 34.977810>,  <41.340698, 34.136623, 35.101120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317234, 34.341183, 34.977810>,  <41.278126, 34.682114, 34.772293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317234, 34.341183, 34.977810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515124, -0.398389, -0.758903,
		0.851521, 0.338867, 0.400102,
		0.097771, -0.852324, 0.513795,
		41.346565, 34.085487, 35.131947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917152, 34.582321, 34.800041>,  <41.278126, 34.682114, 34.772293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917152, 34.582321, 34.800041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753502, 34.219715, 34.841713>,  <41.655312, 34.002151, 34.866718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.753502, 34.219715, 34.841713>,  <41.917152, 34.582321, 34.800041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753502, 34.219715, 34.841713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506474, -0.320573, -0.800448,
		0.759015, -0.274715, 0.590278,
		-0.409122, -0.906512, 0.104184,
		41.630764, 33.947762, 34.872967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439240, 34.165993, 34.685062>,  <41.917152, 34.582321, 34.800041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439240, 34.165993, 34.685062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114628, 33.947319, 34.602547>,  <41.919861, 33.816113, 34.553036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114628, 33.947319, 34.602547>,  <42.439240, 34.165993, 34.685062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114628, 33.947319, 34.602547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425745, -0.311417, -0.849565,
		0.400205, -0.777272, 0.485473,
		-0.811528, -0.546688, -0.206290,
		41.871170, 33.783314, 34.540661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669441, 33.482876, 34.548775>,  <42.439240, 34.165993, 34.685062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669441, 33.482876, 34.548775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308456, 33.515179, 34.379520>,  <42.091866, 33.534561, 34.277966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308456, 33.515179, 34.379520>,  <42.669441, 33.482876, 34.548775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308456, 33.515179, 34.379520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363367, -0.384866, -0.848435,
		-0.231369, -0.919433, 0.317981,
		-0.902459, 0.080758, -0.423137,
		42.037720, 33.539406, 34.252579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174610, 33.725098, 34.084694>,  <42.669441, 33.482876, 34.548775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174610, 33.725098, 34.084694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190876, 33.674698, 34.481174>,  <43.200634, 33.644459, 34.719063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190876, 33.674698, 34.481174>,  <43.174610, 33.725098, 34.084694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190876, 33.674698, 34.481174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206802, 0.969476, 0.131720,
		-0.977538, -0.210337, 0.013361,
		0.040659, -0.125998, 0.991197,
		43.203075, 33.636898, 34.778534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980644, 33.759056, 34.106861>,  <43.174610, 33.725098, 34.084694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980644, 33.759056, 34.106861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289791, 34.008839, 34.061733>,  <44.475281, 34.158707, 34.034657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289791, 34.008839, 34.061733>,  <43.980644, 33.759056, 34.106861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289791, 34.008839, 34.061733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109292, 0.306129, 0.945696,
		0.625085, -0.718567, 0.304845,
		0.772867, 0.624457, -0.112823,
		44.521652, 34.196175, 34.027885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344337, 33.718445, 34.775013>,  <43.980644, 33.759056, 34.106861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344337, 33.718445, 34.775013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479961, 34.053349, 34.603413>,  <44.561337, 34.254292, 34.500454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479961, 34.053349, 34.603413>,  <44.344337, 33.718445, 34.775013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479961, 34.053349, 34.603413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007567, 0.458421, 0.888703,
		0.940734, -0.298078, 0.161768,
		0.339061, 0.837258, -0.428996,
		44.581680, 34.304527, 34.474712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981144, 33.846344, 35.018211>,  <44.344337, 33.718445, 34.775013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981144, 33.846344, 35.018211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804546, 34.188694, 34.910465>,  <44.698586, 34.394104, 34.845818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804546, 34.188694, 34.910465>,  <44.981144, 33.846344, 35.018211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804546, 34.188694, 34.910465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175197, 0.212198, 0.961394,
		0.879993, 0.471644, 0.056262,
		-0.441497, 0.855876, -0.269363,
		44.672096, 34.445457, 34.829655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151325, 34.318954, 35.526169>,  <44.981144, 33.846344, 35.018211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151325, 34.318954, 35.526169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846500, 34.498436, 35.339439>,  <44.663605, 34.606125, 35.227402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846500, 34.498436, 35.339439>,  <45.151325, 34.318954, 35.526169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846500, 34.498436, 35.339439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285841, 0.413782, 0.864338,
		0.580995, 0.792117, -0.187070,
		-0.762063, 0.448704, -0.466824,
		44.617882, 34.633049, 35.199390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199665, 35.061707, 35.640934>,  <45.151325, 34.318954, 35.526169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199665, 35.061707, 35.640934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824894, 34.947327, 35.560532>,  <44.600033, 34.878700, 35.512291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824894, 34.947327, 35.560532>,  <45.199665, 35.061707, 35.640934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824894, 34.947327, 35.560532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307506, 0.400988, 0.862930,
		-0.166152, 0.870313, -0.463627,
		-0.936928, -0.285945, -0.201001,
		44.543816, 34.861542, 35.500233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753757, 35.584686, 35.653172>,  <45.199665, 35.061707, 35.640934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753757, 35.584686, 35.653172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464119, 35.309597, 35.674061>,  <44.290337, 35.144543, 35.686596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464119, 35.309597, 35.674061>,  <44.753757, 35.584686, 35.653172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464119, 35.309597, 35.674061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387870, 0.468651, 0.793677,
		-0.570303, 0.554441, -0.606094,
		-0.724093, -0.687722, 0.052222,
		44.246891, 35.103279, 35.689728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132038, 35.924419, 35.596298>,  <44.753757, 35.584686, 35.653172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132038, 35.924419, 35.596298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004688, 35.589584, 35.774250>,  <43.928280, 35.388683, 35.881020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004688, 35.589584, 35.774250>,  <44.132038, 35.924419, 35.596298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004688, 35.589584, 35.774250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370660, 0.541863, 0.754318,
		-0.872496, 0.075255, -0.482791,
		-0.318373, -0.837091, 0.444879,
		43.909176, 35.338455, 35.907715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444309, 36.101093, 35.869164>,  <44.132038, 35.924419, 35.596298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444309, 36.101093, 35.869164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548588, 35.767498, 36.063690>,  <43.611153, 35.567341, 36.180405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548588, 35.767498, 36.063690>,  <43.444309, 36.101093, 35.869164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548588, 35.767498, 36.063690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268791, 0.421113, 0.866265,
		-0.927249, -0.356545, -0.114388,
		0.260692, -0.833990, 0.486313,
		43.626797, 35.517300, 36.209583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863762, 35.966480, 36.225861>,  <43.444309, 36.101093, 35.869164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863762, 35.966480, 36.225861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160233, 35.784821, 36.423611>,  <43.338116, 35.675827, 36.542263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160233, 35.784821, 36.423611>,  <42.863762, 35.966480, 36.225861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160233, 35.784821, 36.423611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255141, 0.490609, 0.833190,
		-0.620937, -0.743677, 0.247756,
		0.741175, -0.454146, 0.494379,
		43.382584, 35.648579, 36.571926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563747, 35.764927, 36.885094>,  <42.863762, 35.966480, 36.225861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563747, 35.764927, 36.885094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955482, 35.756519, 36.965553>,  <43.190521, 35.751476, 37.013828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955482, 35.756519, 36.965553>,  <42.563747, 35.764927, 36.885094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955482, 35.756519, 36.965553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160610, 0.523596, 0.836691,
		-0.122905, -0.851708, 0.509400,
		0.979336, -0.021019, 0.201145,
		43.249283, 35.750214, 37.025898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602390, 35.474247, 37.631275>,  <42.563747, 35.764927, 36.885094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602390, 35.474247, 37.631275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975239, 35.617065, 37.607082>,  <43.198948, 35.702759, 37.592567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975239, 35.617065, 37.607082>,  <42.602390, 35.474247, 37.631275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975239, 35.617065, 37.607082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080659, 0.367525, 0.926509,
		0.353022, -0.858751, 0.371379,
		0.932132, 0.357033, -0.060479,
		43.254875, 35.724182, 37.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057384, 35.188766, 38.154446>,  <42.602390, 35.474247, 37.631275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057384, 35.188766, 38.154446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230579, 35.534321, 38.051517>,  <43.334496, 35.741653, 37.989761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.230579, 35.534321, 38.051517>,  <43.057384, 35.188766, 38.154446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230579, 35.534321, 38.051517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070445, 0.317029, 0.945796,
		0.898642, -0.391393, 0.198127,
		0.432990, 0.863889, -0.257324,
		43.360477, 35.793488, 37.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487679, 35.368889, 38.640656>,  <43.057384, 35.188766, 38.154446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487679, 35.368889, 38.640656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450737, 35.710846, 38.436451>,  <43.428574, 35.916019, 38.313927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450737, 35.710846, 38.436451>,  <43.487679, 35.368889, 38.640656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450737, 35.710846, 38.436451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181233, 0.489711, 0.852841,
		0.979094, 0.171286, 0.109708,
		-0.092355, 0.854894, -0.510516,
		43.423031, 35.967316, 38.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879948, 35.864017, 38.998707>,  <43.487679, 35.368889, 38.640656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879948, 35.864017, 38.998707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605659, 36.058582, 38.782120>,  <43.441086, 36.175323, 38.652168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605659, 36.058582, 38.782120>,  <43.879948, 35.864017, 38.998707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605659, 36.058582, 38.782120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130218, 0.649931, 0.748754,
		0.716123, 0.583944, -0.382331,
		-0.685719, 0.486414, -0.541470,
		43.399944, 36.204506, 38.619678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045120, 36.581272, 38.989239>,  <43.879948, 35.864017, 38.998707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045120, 36.581272, 38.989239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652153, 36.551090, 38.920933>,  <43.416374, 36.532982, 38.879948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.652153, 36.551090, 38.920933>,  <44.045120, 36.581272, 38.989239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652153, 36.551090, 38.920933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163446, 0.789644, 0.591394,
		0.090223, 0.608908, -0.788094,
		-0.982418, -0.075453, -0.170768,
		43.357430, 36.528454, 38.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737591, 37.243973, 38.741322>,  <44.045120, 36.581272, 38.989239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737591, 37.243973, 38.741322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437119, 37.030815, 38.897141>,  <43.256836, 36.902920, 38.990631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437119, 37.030815, 38.897141>,  <43.737591, 37.243973, 38.741322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437119, 37.030815, 38.897141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273410, 0.788325, 0.551171,
		-0.600808, 0.307523, -0.737875,
		-0.751183, -0.532891, 0.389552,
		43.211765, 36.870949, 39.014008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187336, 37.779198, 38.799763>,  <43.737591, 37.243973, 38.741322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187336, 37.779198, 38.799763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031036, 37.475250, 39.007580>,  <42.937256, 37.292881, 39.132271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031036, 37.475250, 39.007580>,  <43.187336, 37.779198, 38.799763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031036, 37.475250, 39.007580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434935, 0.649844, 0.623325,
		-0.811262, 0.017598, -0.584418,
		-0.390750, -0.759864, 0.519539,
		42.913811, 37.247292, 39.163441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554115, 38.037029, 39.059673>,  <43.187336, 37.779198, 38.799763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554115, 38.037029, 39.059673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631729, 37.733105, 39.307880>,  <42.678299, 37.550751, 39.456806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.631729, 37.733105, 39.307880>,  <42.554115, 38.037029, 39.059673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631729, 37.733105, 39.307880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312506, 0.551711, 0.773275,
		-0.929888, -0.343956, -0.130395,
		0.194033, -0.759808, 0.620518,
		42.689938, 37.505161, 39.494038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915043, 38.048653, 39.487537>,  <42.554115, 38.037029, 39.059673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915043, 38.048653, 39.487537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197021, 37.847363, 39.687466>,  <42.366207, 37.726589, 39.807423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.197021, 37.847363, 39.687466>,  <41.915043, 38.048653, 39.487537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197021, 37.847363, 39.687466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293508, 0.434554, 0.851479,
		-0.645682, -0.746947, 0.158637,
		0.704946, -0.503223, 0.499818,
		42.408504, 37.696396, 39.837410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537479, 37.621189, 39.887920>,  <41.915043, 38.048653, 39.487537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537479, 37.621189, 39.887920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902653, 37.645710, 40.049313>,  <42.121758, 37.660423, 40.146149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.902653, 37.645710, 40.049313>,  <41.537479, 37.621189, 39.887920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902653, 37.645710, 40.049313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405684, 0.244008, 0.880841,
		-0.044457, -0.967834, 0.247632,
		0.912932, 0.061301, 0.403482,
		42.176533, 37.664101, 40.170357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.391930, 38.644226, 36.472584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183037, 38.303104, 36.471958>,  <33.057701, 38.098431, 36.471581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183037, 38.303104, 36.471958>,  <33.391930, 38.644226, 36.472584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183037, 38.303104, 36.471958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599811, -0.366003, -0.711525,
		0.606216, -0.372522, 0.702659,
		-0.522234, -0.852801, -0.001566,
		33.026367, 38.047264, 36.471489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920982, 38.129841, 36.450333>,  <33.391930, 38.644226, 36.472584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920982, 38.129841, 36.450333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590073, 37.933956, 36.340206>,  <33.391525, 37.816425, 36.274132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590073, 37.933956, 36.340206>,  <33.920982, 38.129841, 36.450333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590073, 37.933956, 36.340206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551224, -0.612938, -0.566091,
		0.108468, -0.620075, 0.777008,
		-0.827277, -0.489708, -0.275317,
		33.341888, 37.787045, 36.257610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211117, 37.523209, 36.541248>,  <33.920982, 38.129841, 36.450333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211117, 37.523209, 36.541248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883320, 37.487911, 36.314747>,  <33.686642, 37.466732, 36.178844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883320, 37.487911, 36.314747>,  <34.211117, 37.523209, 36.541248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883320, 37.487911, 36.314747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435830, -0.737564, -0.515802,
		-0.372136, -0.669487, 0.642885,
		-0.819492, -0.088240, -0.566257,
		33.637474, 37.461441, 36.144871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007034, 36.761425, 36.562710>,  <34.211117, 37.523209, 36.541248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007034, 36.761425, 36.562710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838978, 36.915325, 36.233967>,  <33.738144, 37.007664, 36.036720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838978, 36.915325, 36.233967>,  <34.007034, 36.761425, 36.562710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838978, 36.915325, 36.233967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455267, -0.694073, -0.557669,
		-0.784991, -0.608465, 0.116446,
		-0.420144, 0.384751, -0.821855,
		33.712936, 37.030750, 35.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759190, 36.102230, 36.151047>,  <34.007034, 36.761425, 36.562710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759190, 36.102230, 36.151047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751694, 36.393852, 35.877365>,  <33.747196, 36.568825, 35.713158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751694, 36.393852, 35.877365>,  <33.759190, 36.102230, 36.151047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751694, 36.393852, 35.877365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243492, -0.660390, -0.710350,
		-0.969722, -0.179910, -0.165142,
		-0.018741, 0.729053, -0.684201,
		33.746071, 36.612568, 35.672104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515572, 35.801773, 35.550671>,  <33.759190, 36.102230, 36.151047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515572, 35.801773, 35.550671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709763, 36.131897, 35.435314>,  <33.826279, 36.329971, 35.366100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709763, 36.131897, 35.435314>,  <33.515572, 35.801773, 35.550671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709763, 36.131897, 35.435314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412291, -0.507021, -0.756931,
		-0.770926, 0.248571, -0.586417,
		0.485477, 0.825313, -0.288393,
		33.855404, 36.379490, 35.348797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338425, 35.798077, 34.864697>,  <33.515572, 35.801773, 35.550671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338425, 35.798077, 34.864697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648460, 36.040543, 34.936039>,  <33.834480, 36.186020, 34.978844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648460, 36.040543, 34.936039>,  <33.338425, 35.798077, 34.864697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648460, 36.040543, 34.936039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436695, -0.309893, -0.844550,
		-0.456661, 0.732486, -0.504901,
		0.775086, 0.606160, 0.178356,
		33.880985, 36.222389, 34.989548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492638, 35.977665, 34.288010>,  <33.338425, 35.798077, 34.864697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492638, 35.977665, 34.288010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831299, 36.043232, 34.490517>,  <34.034496, 36.082573, 34.612019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831299, 36.043232, 34.490517>,  <33.492638, 35.977665, 34.288010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831299, 36.043232, 34.490517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530991, -0.322707, -0.783523,
		0.034942, 0.932197, -0.360261,
		0.846656, 0.163918, 0.506265,
		34.085297, 36.092407, 34.642395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912514, 36.366535, 33.798668>,  <33.492638, 35.977665, 34.288010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912514, 36.366535, 33.798668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163109, 36.213871, 34.070507>,  <34.313465, 36.122272, 34.233608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163109, 36.213871, 34.070507>,  <33.912514, 36.366535, 33.798668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163109, 36.213871, 34.070507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531330, -0.428804, -0.730627,
		0.570263, 0.818819, -0.065855,
		0.626490, -0.381659, 0.679593,
		34.351055, 36.099373, 34.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484661, 36.542458, 33.535896>,  <33.912514, 36.366535, 33.798668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484661, 36.542458, 33.535896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524292, 36.220078, 33.769348>,  <34.548073, 36.026649, 33.909420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524292, 36.220078, 33.769348>,  <34.484661, 36.542458, 33.535896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524292, 36.220078, 33.769348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464552, -0.481213, -0.743388,
		0.879986, 0.344780, 0.326729,
		0.099080, -0.805953, 0.583629,
		34.554016, 35.978291, 33.944435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114731, 36.382214, 33.474197>,  <34.484661, 36.542458, 33.535896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114731, 36.382214, 33.474197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920177, 36.050671, 33.584782>,  <34.803444, 35.851746, 33.651131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920177, 36.050671, 33.584782>,  <35.114731, 36.382214, 33.474197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920177, 36.050671, 33.584782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383244, -0.486723, -0.785000,
		0.785208, -0.275863, 0.554389,
		-0.486386, -0.828854, 0.276457,
		34.774261, 35.802013, 33.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563164, 35.841339, 33.428871>,  <35.114731, 36.382214, 33.474197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563164, 35.841339, 33.428871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186707, 35.712231, 33.388729>,  <34.960831, 35.634766, 33.364643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186707, 35.712231, 33.388729>,  <35.563164, 35.841339, 33.428871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186707, 35.712231, 33.388729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278733, -0.573138, -0.770598,
		0.191205, -0.753216, 0.629370,
		-0.941142, -0.322768, -0.100359,
		34.904366, 35.615398, 33.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320667, 35.882145, 33.859829>,  <35.563164, 35.841339, 33.428871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320667, 35.882145, 33.859829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192238, 36.259830, 33.830502>,  <36.115181, 36.486443, 33.812904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192238, 36.259830, 33.830502>,  <36.320667, 35.882145, 33.859829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192238, 36.259830, 33.830502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795899, -0.310972, -0.519463,
		-0.513282, -0.108434, 0.851342,
		-0.321071, 0.944213, -0.073314,
		36.095917, 36.543095, 33.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985371, 35.907135, 33.647507>,  <36.320667, 35.882145, 33.859829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985371, 35.907135, 33.647507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160637, 36.266041, 33.669147>,  <37.265797, 36.481384, 33.682133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160637, 36.266041, 33.669147>,  <36.985371, 35.907135, 33.647507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160637, 36.266041, 33.669147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888850, -0.441460, 0.122718,
		0.133994, -0.005682, -0.990966,
		0.438169, 0.897263, 0.054102,
		37.292088, 36.535221, 33.685379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731716, 35.648594, 33.601593>,  <36.985371, 35.907135, 33.647507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731716, 35.648594, 33.601593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988121, 35.443703, 33.830235>,  <38.141964, 35.320770, 33.967419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988121, 35.443703, 33.830235>,  <37.731716, 35.648594, 33.601593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988121, 35.443703, 33.830235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546897, 0.217713, 0.808397,
		-0.538528, -0.830798, -0.140579,
		0.641008, -0.512226, 0.571605,
		38.180424, 35.290035, 34.001717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349949, 35.157986, 33.934566>,  <37.731716, 35.648594, 33.601593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349949, 35.157986, 33.934566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672741, 35.230553, 34.159374>,  <37.866417, 35.274094, 34.294258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672741, 35.230553, 34.159374>,  <37.349949, 35.157986, 33.934566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672741, 35.230553, 34.159374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590155, 0.283518, 0.755867,
		-0.022218, -0.941651, 0.335857,
		0.806984, 0.181414, 0.562019,
		37.914837, 35.284977, 34.327980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153294, 34.881168, 34.523857>,  <37.349949, 35.157986, 33.934566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153294, 34.881168, 34.523857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461407, 35.104908, 34.646362>,  <37.646275, 35.239151, 34.719864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461407, 35.104908, 34.646362>,  <37.153294, 34.881168, 34.523857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461407, 35.104908, 34.646362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531062, 0.296767, 0.793664,
		0.353052, -0.773984, 0.525645,
		0.770277, 0.559356, 0.306260,
		37.692490, 35.272713, 34.738239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303364, 34.721336, 35.238106>,  <37.153294, 34.881168, 34.523857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303364, 34.721336, 35.238106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485706, 35.076813, 35.218445>,  <37.595112, 35.290100, 35.206646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485706, 35.076813, 35.218445>,  <37.303364, 34.721336, 35.238106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485706, 35.076813, 35.218445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486522, 0.295048, 0.822340,
		0.745312, -0.350954, 0.566869,
		0.455857, 0.888695, -0.049157,
		37.622463, 35.343422, 35.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617950, 34.836903, 35.886475>,  <37.303364, 34.721336, 35.238106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617950, 34.836903, 35.886475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567741, 35.195461, 35.716431>,  <37.537617, 35.410595, 35.614407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567741, 35.195461, 35.716431>,  <37.617950, 34.836903, 35.886475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567741, 35.195461, 35.716431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543315, 0.296417, 0.785459,
		0.830092, 0.329558, 0.449820,
		-0.125520, 0.896397, -0.425107,
		37.530087, 35.464382, 35.588898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688152, 35.326633, 36.395542>,  <37.617950, 34.836903, 35.886475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688152, 35.326633, 36.395542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442623, 35.499920, 36.131561>,  <37.295307, 35.603893, 35.973171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442623, 35.499920, 36.131561>,  <37.688152, 35.326633, 36.395542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442623, 35.499920, 36.131561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636994, 0.222014, 0.738206,
		0.466324, 0.873516, 0.139681,
		-0.613824, 0.433219, -0.659955,
		37.258476, 35.629887, 35.933575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651798, 35.906628, 36.687248>,  <37.688152, 35.326633, 36.395542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651798, 35.906628, 36.687248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333782, 35.920116, 36.445000>,  <37.142971, 35.928211, 36.299652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333782, 35.920116, 36.445000>,  <37.651798, 35.906628, 36.687248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333782, 35.920116, 36.445000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502590, 0.522352, 0.688877,
		0.339578, 0.852063, -0.398341,
		-0.795041, 0.033726, -0.605617,
		37.095268, 35.930233, 36.263313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364464, 36.491116, 36.915005>,  <37.651798, 35.906628, 36.687248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364464, 36.491116, 36.915005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070667, 36.306713, 36.715809>,  <36.894390, 36.196072, 36.596291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070667, 36.306713, 36.715809>,  <37.364464, 36.491116, 36.915005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070667, 36.306713, 36.715809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676995, 0.447054, 0.584654,
		-0.046902, 0.766560, -0.640458,
		-0.734491, -0.461009, -0.497989,
		36.850319, 36.168411, 36.566414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881653, 36.926376, 36.679832>,  <37.364464, 36.491116, 36.915005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881653, 36.926376, 36.679832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661839, 36.592255, 36.673229>,  <36.529949, 36.391781, 36.669266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661839, 36.592255, 36.673229>,  <36.881653, 36.926376, 36.679832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661839, 36.592255, 36.673229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663679, 0.424448, 0.615933,
		-0.507487, 0.349432, -0.787626,
		-0.549533, -0.835309, -0.016508,
		36.496979, 36.341663, 36.668278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172684, 37.238731, 36.658890>,  <36.881653, 36.926376, 36.679832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172684, 37.238731, 36.658890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136719, 36.861248, 36.786217>,  <36.115139, 36.634758, 36.862614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136719, 36.861248, 36.786217>,  <36.172684, 37.238731, 36.658890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136719, 36.861248, 36.786217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660670, 0.295679, 0.689992,
		-0.745273, -0.148264, -0.650066,
		-0.089910, -0.943712, 0.318315,
		36.109745, 36.578133, 36.881710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519577, 37.178276, 36.791298>,  <36.172684, 37.238731, 36.658890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519577, 37.178276, 36.791298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657455, 36.859722, 36.990074>,  <35.740185, 36.668591, 37.109341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657455, 36.859722, 36.990074>,  <35.519577, 37.178276, 36.791298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657455, 36.859722, 36.990074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755041, 0.079333, 0.650861,
		-0.557760, -0.599565, -0.573956,
		0.344700, -0.796384, 0.496945,
		35.760864, 36.620808, 37.139156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865204, 36.892479, 36.993275>,  <35.519577, 37.178276, 36.791298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865204, 36.892479, 36.993275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187283, 36.765553, 37.193661>,  <35.380531, 36.689396, 37.313892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187283, 36.765553, 37.193661>,  <34.865204, 36.892479, 36.993275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187283, 36.765553, 37.193661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552498, -0.094550, 0.828134,
		-0.215419, -0.943592, -0.251451,
		0.805196, -0.317322, 0.500965,
		35.428841, 36.670357, 37.343952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549854, 36.456779, 37.539165>,  <34.865204, 36.892479, 36.993275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549854, 36.456779, 37.539165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919823, 36.561890, 37.649055>,  <35.141804, 36.624958, 37.714989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919823, 36.561890, 37.649055>,  <34.549854, 36.456779, 37.539165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919823, 36.561890, 37.649055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322535, 0.159895, 0.932955,
		0.201241, -0.951513, 0.232648,
		0.924918, 0.262786, 0.274718,
		35.197300, 36.640724, 37.731472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691532, 36.117867, 38.106106>,  <34.549854, 36.456779, 37.539165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691532, 36.117867, 38.106106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913342, 36.450714, 38.102444>,  <35.046429, 36.650421, 38.100246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913342, 36.450714, 38.102444>,  <34.691532, 36.117867, 38.106106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913342, 36.450714, 38.102444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349342, 0.242758, 0.905002,
		0.755288, -0.498650, 0.425309,
		0.554527, 0.832116, -0.009153,
		35.079700, 36.700348, 38.099697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207096, 35.736961, 38.534302>,  <34.691532, 36.117867, 38.106106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207096, 35.736961, 38.534302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187092, 35.412689, 38.767639>,  <35.175091, 35.218124, 38.907642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187092, 35.412689, 38.767639>,  <35.207096, 35.736961, 38.534302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187092, 35.412689, 38.767639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256772, -0.574877, -0.776907,
		0.965177, 0.110935, 0.236909,
		-0.050007, -0.810684, 0.583344,
		35.172089, 35.169483, 38.942642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868126, 35.288445, 38.445328>,  <35.207096, 35.736961, 38.534302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868126, 35.288445, 38.445328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583672, 35.044853, 38.585854>,  <35.412998, 34.898697, 38.670170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583672, 35.044853, 38.585854>,  <35.868126, 35.288445, 38.445328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583672, 35.044853, 38.585854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323785, -0.727246, -0.605208,
		0.624053, -0.316636, 0.714352,
		-0.711141, -0.608978, 0.351318,
		35.370331, 34.862160, 38.691250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146408, 34.650734, 38.282177>,  <35.868126, 35.288445, 38.445328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146408, 34.650734, 38.282177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763092, 34.569183, 38.362289>,  <35.533104, 34.520252, 38.410358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763092, 34.569183, 38.362289>,  <36.146408, 34.650734, 38.282177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763092, 34.569183, 38.362289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060250, -0.829158, -0.555758,
		0.279372, -0.520511, 0.806858,
		-0.958291, -0.203877, 0.200282,
		35.475605, 34.508018, 38.422375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065941, 33.862934, 38.283443>,  <36.146408, 34.650734, 38.282177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065941, 33.862934, 38.283443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692245, 33.993687, 38.226391>,  <35.468029, 34.072136, 38.192158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692245, 33.993687, 38.226391>,  <36.065941, 33.862934, 38.283443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692245, 33.993687, 38.226391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192278, -0.798478, -0.570492,
		-0.300372, -0.505552, 0.808823,
		-0.934241, 0.326878, -0.142634,
		35.411972, 34.091751, 38.183601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547783, 33.257992, 38.346508>,  <36.065941, 33.862934, 38.283443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547783, 33.257992, 38.346508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352642, 33.521458, 38.117367>,  <35.235558, 33.679539, 37.979881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352642, 33.521458, 38.117367>,  <35.547783, 33.257992, 38.346508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352642, 33.521458, 38.117367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264484, -0.736929, -0.622081,
		-0.831897, -0.151970, 0.533716,
		-0.487848, 0.658667, -0.572855,
		35.206287, 33.719059, 37.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985680, 32.883560, 38.210815>,  <35.547783, 33.257992, 38.346508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985680, 32.883560, 38.210815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987232, 33.164726, 37.926311>,  <34.988163, 33.333427, 37.755608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987232, 33.164726, 37.926311>,  <34.985680, 32.883560, 38.210815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987232, 33.164726, 37.926311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139895, -0.703888, -0.696398,
		-0.990159, 0.102206, 0.095602,
		0.003883, 0.702919, -0.711259,
		34.988396, 33.375603, 37.712933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379784, 32.781155, 37.781132>,  <34.985680, 32.883560, 38.210815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379784, 32.781155, 37.781132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600521, 33.016460, 37.544685>,  <34.732964, 33.157642, 37.402817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600521, 33.016460, 37.544685>,  <34.379784, 32.781155, 37.781132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600521, 33.016460, 37.544685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119781, -0.645558, -0.754260,
		-0.825303, 0.487035, -0.285782,
		0.551840, 0.588262, -0.591118,
		34.766071, 33.192940, 37.367352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955509, 32.858318, 37.150768>,  <34.379784, 32.781155, 37.781132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955509, 32.858318, 37.150768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337975, 32.947624, 37.074978>,  <34.567455, 33.001209, 37.029503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337975, 32.947624, 37.074978>,  <33.955509, 32.858318, 37.150768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337975, 32.947624, 37.074978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027245, -0.576423, -0.816697,
		-0.291558, 0.786060, -0.545072,
		0.956165, 0.223264, -0.189477,
		34.624825, 33.014603, 37.018135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997700, 33.043934, 36.416656>,  <33.955509, 32.858318, 37.150768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997700, 33.043934, 36.416656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355850, 32.909641, 36.533672>,  <34.570740, 32.829067, 36.603882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355850, 32.909641, 36.533672>,  <33.997700, 33.043934, 36.416656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355850, 32.909641, 36.533672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058262, -0.562982, -0.824413,
		0.441474, 0.755207, -0.484523,
		0.895381, -0.335728, 0.292542,
		34.624466, 32.808922, 36.621433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440449, 32.955261, 35.753330>,  <33.997700, 33.043934, 36.416656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440449, 32.955261, 35.753330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667072, 32.749821, 36.011082>,  <34.803047, 32.626556, 36.165733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667072, 32.749821, 36.011082>,  <34.440449, 32.955261, 35.753330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667072, 32.749821, 36.011082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243288, -0.642868, -0.726314,
		0.787286, 0.568270, -0.239271,
		0.566562, -0.513605, 0.644374,
		34.837040, 32.595737, 36.204395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076698, 32.844894, 35.400112>,  <34.440449, 32.955261, 35.753330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076698, 32.844894, 35.400112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067600, 32.568123, 35.688755>,  <35.062141, 32.402061, 35.861942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067600, 32.568123, 35.688755>,  <35.076698, 32.844894, 35.400112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067600, 32.568123, 35.688755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221038, -0.707415, -0.671347,
		0.975000, 0.144235, 0.169031,
		-0.022743, -0.691926, 0.721610,
		35.060776, 32.360546, 35.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753815, 32.457314, 35.347443>,  <35.076698, 32.844894, 35.400112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753815, 32.457314, 35.347443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468735, 32.249443, 35.535908>,  <35.297688, 32.124722, 35.648987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468735, 32.249443, 35.535908>,  <35.753815, 32.457314, 35.347443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468735, 32.249443, 35.535908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188354, -0.788790, -0.585092,
		0.675704, -0.328252, 0.660056,
		-0.712704, -0.519673, 0.471161,
		35.254925, 32.093540, 35.677258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.943489, 37.395638, 41.730579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725452, 37.111286, 41.908356>,  <34.594631, 36.940674, 42.015022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725452, 37.111286, 41.908356>,  <34.943489, 37.395638, 41.730579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725452, 37.111286, 41.908356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369977, -0.679671, -0.633376,
		0.752327, -0.180813, 0.633490,
		-0.545088, -0.710883, 0.444438,
		34.561928, 36.898022, 42.041687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396835, 36.864952, 41.894344>,  <34.943489, 37.395638, 41.730579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396835, 36.864952, 41.894344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033287, 36.706852, 41.841087>,  <34.815159, 36.611992, 41.809135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033287, 36.706852, 41.841087>,  <35.396835, 36.864952, 41.894344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033287, 36.706852, 41.841087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356417, -0.570263, -0.740113,
		0.216608, -0.720121, 0.659171,
		-0.908872, -0.395254, -0.133140,
		34.760624, 36.588276, 41.801144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439461, 36.155609, 41.794296>,  <35.396835, 36.864952, 41.894344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439461, 36.155609, 41.794296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103287, 36.231007, 41.591068>,  <34.901581, 36.276245, 41.469131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103287, 36.231007, 41.591068>,  <35.439461, 36.155609, 41.794296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103287, 36.231007, 41.591068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340963, -0.544785, -0.766129,
		-0.421201, -0.817116, 0.393587,
		-0.840437, 0.188496, -0.508070,
		34.851154, 36.287556, 41.438648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299637, 35.592480, 41.438667>,  <35.439461, 36.155609, 41.794296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299637, 35.592480, 41.438667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026287, 35.818794, 41.254112>,  <34.862278, 35.954582, 41.143379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026287, 35.818794, 41.254112>,  <35.299637, 35.592480, 41.438667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026287, 35.818794, 41.254112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057231, -0.588519, -0.806456,
		-0.727821, -0.577518, 0.369798,
		-0.683376, 0.565791, -0.461388,
		34.821274, 35.988533, 41.115696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780926, 35.121391, 41.116859>,  <35.299637, 35.592480, 41.438667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780926, 35.121391, 41.116859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760803, 35.478352, 40.937489>,  <34.748730, 35.692528, 40.829868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760803, 35.478352, 40.937489>,  <34.780926, 35.121391, 41.116859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760803, 35.478352, 40.937489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012900, -0.449535, -0.893170,
		-0.998651, -0.039147, 0.034126,
		-0.050306, 0.892404, -0.448424,
		34.745712, 35.746075, 40.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217049, 35.028957, 40.753536>,  <34.780926, 35.121391, 41.116859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217049, 35.028957, 40.753536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.451900, 35.313019, 40.598125>,  <34.592812, 35.483456, 40.504879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.451900, 35.313019, 40.598125>,  <34.217049, 35.028957, 40.753536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451900, 35.313019, 40.598125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062198, -0.438970, -0.896346,
		-0.807097, 0.550440, -0.213563,
		0.587133, 0.710156, -0.388528,
		34.628040, 35.526066, 40.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049568, 35.076332, 40.082806>,  <34.217049, 35.028957, 40.753536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049568, 35.076332, 40.082806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398853, 35.271061, 40.091686>,  <34.608425, 35.387897, 40.097015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398853, 35.271061, 40.091686>,  <34.049568, 35.076332, 40.082806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398853, 35.271061, 40.091686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266000, -0.437956, -0.858742,
		-0.408333, 0.755775, -0.511926,
		0.873217, 0.486826, 0.022204,
		34.660820, 35.417110, 40.098347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098042, 35.458294, 39.421509>,  <34.049568, 35.076332, 40.082806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098042, 35.458294, 39.421509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470753, 35.406452, 39.557148>,  <34.694382, 35.375347, 39.638531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470753, 35.406452, 39.557148>,  <34.098042, 35.458294, 39.421509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470753, 35.406452, 39.557148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246047, -0.461339, -0.852424,
		0.266915, 0.877707, -0.397979,
		0.931782, -0.129604, 0.339095,
		34.750286, 35.367573, 39.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601879, 35.782341, 38.946159>,  <34.098042, 35.458294, 39.421509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601879, 35.782341, 38.946159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810715, 35.488483, 39.119465>,  <34.936016, 35.312168, 39.223450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810715, 35.488483, 39.119465>,  <34.601879, 35.782341, 38.946159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810715, 35.488483, 39.119465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253278, -0.351535, -0.901262,
		0.814413, 0.580280, 0.002535,
		0.522093, -0.734642, 0.433267,
		34.967342, 35.268089, 39.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207584, 36.330688, 39.035995>,  <34.601879, 35.782341, 38.946159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207584, 36.330688, 39.035995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235676, 36.637547, 38.780949>,  <35.252529, 36.821663, 38.627922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.235676, 36.637547, 38.780949>,  <35.207584, 36.330688, 39.035995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235676, 36.637547, 38.780949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172940, 0.638879, 0.749616,
		0.982426, 0.057628, 0.177535,
		0.070224, 0.767145, -0.637618,
		35.256744, 36.867691, 38.589664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640923, 36.840752, 39.406437>,  <35.207584, 36.330688, 39.035995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640923, 36.840752, 39.406437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420139, 37.032673, 39.133636>,  <35.287666, 37.147827, 38.969955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420139, 37.032673, 39.133636>,  <35.640923, 36.840752, 39.406437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420139, 37.032673, 39.133636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201549, 0.716861, 0.667449,
		0.809145, 0.505864, -0.298977,
		-0.551963, 0.479805, -0.682000,
		35.254551, 37.176613, 38.929035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865574, 37.497509, 39.340878>,  <35.640923, 36.840752, 39.406437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865574, 37.497509, 39.340878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487385, 37.545605, 39.219803>,  <35.260471, 37.574463, 39.147160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487385, 37.545605, 39.219803>,  <35.865574, 37.497509, 39.340878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487385, 37.545605, 39.219803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043557, 0.874326, 0.483381,
		0.322767, 0.470209, -0.821416,
		-0.945476, 0.120241, -0.302685,
		35.203743, 37.581676, 39.128998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863586, 38.259815, 39.284107>,  <35.865574, 37.497509, 39.340878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863586, 38.259815, 39.284107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.486214, 38.127193, 39.282543>,  <35.259792, 38.047619, 39.281605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.486214, 38.127193, 39.282543>,  <35.863586, 38.259815, 39.284107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486214, 38.127193, 39.282543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244225, 0.686871, 0.684516,
		-0.224271, 0.646746, -0.728987,
		-0.943428, -0.331554, -0.003906,
		35.203186, 38.027729, 39.281372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474167, 38.812466, 39.136345>,  <35.863586, 38.259815, 39.284107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474167, 38.812466, 39.136345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202366, 38.568657, 39.299690>,  <35.039284, 38.422371, 39.397697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.202366, 38.568657, 39.299690>,  <35.474167, 38.812466, 39.136345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202366, 38.568657, 39.299690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251769, 0.716525, 0.650541,
		-0.689117, 0.339234, -0.640342,
		-0.679507, -0.609518, 0.408361,
		34.998512, 38.385803, 39.422199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800579, 39.262600, 39.141441>,  <35.474167, 38.812466, 39.136345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800579, 39.262600, 39.141441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752361, 38.957554, 39.395653>,  <34.723431, 38.774529, 39.548180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.752361, 38.957554, 39.395653>,  <34.800579, 39.262600, 39.141441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752361, 38.957554, 39.395653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502064, 0.599118, 0.623690,
		-0.856387, -0.243891, -0.455102,
		-0.120548, -0.762611, 0.635526,
		34.716198, 38.728771, 39.586311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161430, 39.308762, 39.291119>,  <34.800579, 39.262600, 39.141441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161430, 39.308762, 39.291119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335564, 39.114048, 39.594044>,  <34.440044, 38.997219, 39.775799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335564, 39.114048, 39.594044>,  <34.161430, 39.308762, 39.291119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335564, 39.114048, 39.594044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369261, 0.670645, 0.643336,
		-0.821057, -0.559711, 0.112202,
		0.435330, -0.486784, 0.757317,
		34.466164, 38.968014, 39.821239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596207, 39.228149, 39.728531>,  <34.161430, 39.308762, 39.291119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596207, 39.228149, 39.728531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929447, 39.187695, 39.946053>,  <34.129391, 39.163422, 40.076565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929447, 39.187695, 39.946053>,  <33.596207, 39.228149, 39.728531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929447, 39.187695, 39.946053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367005, 0.634481, 0.680251,
		-0.413832, -0.766293, 0.491465,
		0.833097, -0.101140, 0.543802,
		34.179375, 39.157352, 40.109192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393051, 39.307198, 40.414562>,  <33.596207, 39.228149, 39.728531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393051, 39.307198, 40.414562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.786705, 39.366737, 40.453167>,  <34.022900, 39.402462, 40.476330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.786705, 39.366737, 40.453167>,  <33.393051, 39.307198, 40.414562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786705, 39.366737, 40.453167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174593, 0.716240, 0.675661,
		0.031445, -0.681795, 0.730867,
		0.984139, 0.148851, 0.096514,
		34.081947, 39.411392, 40.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544613, 39.342613, 41.125889>,  <33.393051, 39.307198, 40.414562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544613, 39.342613, 41.125889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848343, 39.538315, 40.954281>,  <34.030582, 39.655735, 40.851315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848343, 39.538315, 40.954281>,  <33.544613, 39.342613, 41.125889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848343, 39.538315, 40.954281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103636, 0.741822, 0.662541,
		0.642404, -0.458623, 0.613989,
		0.759327, 0.489250, -0.429020,
		34.076141, 39.685089, 40.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934135, 39.544388, 41.657650>,  <33.544613, 39.342613, 41.125889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934135, 39.544388, 41.657650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038273, 39.800987, 41.369011>,  <34.100758, 39.954945, 41.195827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038273, 39.800987, 41.369011>,  <33.934135, 39.544388, 41.657650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038273, 39.800987, 41.369011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074443, 0.758484, 0.647426,
		0.962642, -0.114836, 0.245222,
		0.260345, 0.641494, -0.721600,
		34.116375, 39.993435, 41.152531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411907, 39.962196, 41.966824>,  <33.934135, 39.544388, 41.657650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411907, 39.962196, 41.966824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.288898, 40.161465, 41.642540>,  <34.215092, 40.281025, 41.447971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.288898, 40.161465, 41.642540>,  <34.411907, 39.962196, 41.966824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288898, 40.161465, 41.642540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118171, 0.825407, 0.552032,
		0.944174, 0.265565, -0.194962,
		-0.307523, 0.498176, -0.810710,
		34.196640, 40.310917, 41.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789482, 40.767803, 41.901699>,  <34.411907, 39.962196, 41.966824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789482, 40.767803, 41.901699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.447933, 40.774723, 41.693623>,  <34.243004, 40.778877, 41.568779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.447933, 40.774723, 41.693623>,  <34.789482, 40.767803, 41.901699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447933, 40.774723, 41.693623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336544, 0.744046, 0.577177,
		0.397031, 0.667904, -0.629500,
		-0.853876, 0.017302, -0.520189,
		34.191769, 40.779915, 41.537567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616726, 41.606377, 41.848206>,  <34.789482, 40.767803, 41.901699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616726, 41.606377, 41.848206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271290, 41.436226, 41.739937>,  <34.064030, 41.334133, 41.674976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271290, 41.436226, 41.739937>,  <34.616726, 41.606377, 41.848206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271290, 41.436226, 41.739937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493012, 0.599986, 0.630044,
		-0.105607, 0.677546, -0.727859,
		-0.863589, -0.425380, -0.270676,
		34.012215, 41.308613, 41.658733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.634655, 36.877827, 43.257648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034033, 36.857204, 43.249191>,  <27.273661, 36.844830, 43.244118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034033, 36.857204, 43.249191>,  <26.634655, 36.877827, 43.257648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034033, 36.857204, 43.249191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046258, -0.555215, -0.830420,
		0.031072, 0.830107, -0.556737,
		0.998446, -0.051557, -0.021147,
		27.333567, 36.841736, 43.242847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810061, 37.130028, 42.582970>,  <26.634655, 36.877827, 43.257648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810061, 37.130028, 42.582970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.127558, 36.929169, 42.720272>,  <27.318056, 36.808655, 42.802654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.127558, 36.929169, 42.720272>,  <26.810061, 37.130028, 42.582970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127558, 36.929169, 42.720272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119175, -0.425008, -0.897310,
		0.596465, 0.753141, -0.277504,
		0.793742, -0.502143, 0.343258,
		27.365681, 36.778526, 42.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321985, 37.246151, 42.096779>,  <26.810061, 37.130028, 42.582970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321985, 37.246151, 42.096779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.434578, 36.918640, 42.296928>,  <27.502132, 36.722134, 42.417019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.434578, 36.918640, 42.296928>,  <27.321985, 37.246151, 42.096779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434578, 36.918640, 42.296928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157281, -0.475042, -0.865793,
		0.946589, 0.322404, -0.004937,
		0.281481, -0.818774, 0.500377,
		27.519022, 36.673008, 42.447041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999372, 37.061554, 41.731293>,  <27.321985, 37.246151, 42.096779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999372, 37.061554, 41.731293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.886364, 36.728977, 41.922665>,  <27.818558, 36.529430, 42.037487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.886364, 36.728977, 41.922665>,  <27.999372, 37.061554, 41.731293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886364, 36.728977, 41.922665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190193, -0.537395, -0.821604,
		0.940217, -0.141128, 0.309960,
		-0.282523, -0.831438, 0.478427,
		27.801607, 36.479546, 42.066193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545406, 36.506649, 41.858585>,  <27.999372, 37.061554, 41.731293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545406, 36.506649, 41.858585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.176554, 36.357769, 41.816372>,  <27.955242, 36.268440, 41.791042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.176554, 36.357769, 41.816372>,  <28.545406, 36.506649, 41.858585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176554, 36.357769, 41.816372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348159, -0.679437, -0.645872,
		0.168692, -0.632322, 0.756117,
		-0.922132, -0.372203, -0.105533,
		27.899914, 36.246109, 41.784714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738714, 35.864265, 41.870377>,  <28.545406, 36.506649, 41.858585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738714, 35.864265, 41.870377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.383160, 35.883972, 41.688190>,  <28.169827, 35.895794, 41.578876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.383160, 35.883972, 41.688190>,  <28.738714, 35.864265, 41.870377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383160, 35.883972, 41.688190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344724, -0.582883, -0.735808,
		-0.301731, -0.811062, 0.501136,
		-0.888889, 0.049262, -0.455467,
		28.116493, 35.898750, 41.551552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562109, 35.078129, 41.666237>,  <28.738714, 35.864265, 41.870377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562109, 35.078129, 41.666237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.329643, 35.322422, 41.451107>,  <28.190165, 35.468998, 41.322029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.329643, 35.322422, 41.451107>,  <28.562109, 35.078129, 41.666237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329643, 35.322422, 41.451107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220191, -0.518222, -0.826415,
		-0.783432, -0.598705, 0.166692,
		-0.581162, 0.610736, -0.537821,
		28.155294, 35.505642, 41.289761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143898, 34.663841, 41.348484>,  <28.562109, 35.078129, 41.666237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143898, 34.663841, 41.348484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147259, 35.004772, 41.139309>,  <28.149275, 35.209332, 41.013802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.147259, 35.004772, 41.139309>,  <28.143898, 34.663841, 41.348484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147259, 35.004772, 41.139309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295034, -0.501794, -0.813116,
		-0.955450, -0.147452, -0.255683,
		0.008404, 0.852327, -0.522942,
		28.149780, 35.260471, 40.982426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988846, 34.470089, 40.580441>,  <28.143898, 34.663841, 41.348484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988846, 34.470089, 40.580441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100899, 34.848331, 40.514294>,  <28.168131, 35.075279, 40.474606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100899, 34.848331, 40.514294>,  <27.988846, 34.470089, 40.580441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100899, 34.848331, 40.514294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235654, -0.234734, -0.943063,
		-0.930588, 0.225212, -0.288593,
		0.280131, 0.945611, -0.165369,
		28.184938, 35.132015, 40.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706026, 34.596954, 39.944229>,  <27.988846, 34.470089, 40.580441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706026, 34.596954, 39.944229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.020039, 34.839363, 39.995541>,  <28.208447, 34.984810, 40.026329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.020039, 34.839363, 39.995541>,  <27.706026, 34.596954, 39.944229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020039, 34.839363, 39.995541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317735, -0.216171, -0.923209,
		-0.531759, 0.765508, -0.362257,
		0.785033, 0.606026, 0.128278,
		28.255548, 35.021172, 40.034023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764803, 34.821018, 39.233177>,  <27.706026, 34.596954, 39.944229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764803, 34.821018, 39.233177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105495, 34.912487, 39.421757>,  <28.309912, 34.967369, 39.534904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105495, 34.912487, 39.421757>,  <27.764803, 34.821018, 39.233177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105495, 34.912487, 39.421757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520501, -0.265756, -0.811451,
		-0.060268, 0.936526, -0.345378,
		0.851732, 0.228674, 0.471446,
		28.361015, 34.981091, 39.563190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139439, 35.099552, 38.646591>,  <27.764803, 34.821018, 39.233177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139439, 35.099552, 38.646591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.420092, 35.020466, 38.920414>,  <28.588484, 34.973015, 39.084709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.420092, 35.020466, 38.920414>,  <28.139439, 35.099552, 38.646591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420092, 35.020466, 38.920414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640557, -0.245772, -0.727518,
		0.312090, 0.948949, -0.045791,
		0.701632, -0.197719, 0.684558,
		28.630581, 34.961151, 39.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742409, 35.358974, 38.332710>,  <28.139439, 35.099552, 38.646591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742409, 35.358974, 38.332710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.873302, 35.119762, 38.625362>,  <28.951838, 34.976234, 38.800953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.873302, 35.119762, 38.625362>,  <28.742409, 35.358974, 38.332710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873302, 35.119762, 38.625362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579102, -0.484906, -0.655368,
		0.746699, 0.638147, 0.187641,
		0.327233, -0.598026, 0.731631,
		28.971472, 34.940353, 38.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444113, 35.370014, 38.209732>,  <28.742409, 35.358974, 38.332710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444113, 35.370014, 38.209732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364864, 35.045589, 38.429890>,  <29.317316, 34.850937, 38.561985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364864, 35.045589, 38.429890>,  <29.444113, 35.370014, 38.209732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364864, 35.045589, 38.429890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512679, -0.564336, -0.647059,
		0.835409, 0.153980, 0.527618,
		-0.198120, -0.811058, 0.550394,
		29.305428, 34.802273, 38.595009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133310, 35.660431, 38.275211>,  <29.444113, 35.370014, 38.209732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133310, 35.660431, 38.275211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170511, 35.920353, 37.973457>,  <30.192831, 36.076305, 37.792404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170511, 35.920353, 37.973457>,  <30.133310, 35.660431, 38.275211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170511, 35.920353, 37.973457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384674, 0.722289, 0.574739,
		0.918355, 0.236741, 0.317139,
		0.093002, 0.649810, -0.754386,
		30.198412, 36.115295, 37.747143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548901, 36.107365, 38.563698>,  <30.133310, 35.660431, 38.275211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548901, 36.107365, 38.563698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332350, 36.280972, 38.275658>,  <30.202419, 36.385136, 38.102833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.332350, 36.280972, 38.275658>,  <30.548901, 36.107365, 38.563698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332350, 36.280972, 38.275658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258933, 0.728772, 0.633912,
		0.799915, 0.529643, -0.282160,
		-0.541377, 0.434015, -0.720098,
		30.169937, 36.411175, 38.059628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604519, 36.910904, 38.551212>,  <30.548901, 36.107365, 38.563698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604519, 36.910904, 38.551212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262016, 36.814751, 38.368328>,  <30.056515, 36.757057, 38.258598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262016, 36.814751, 38.368328>,  <30.604519, 36.910904, 38.551212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262016, 36.814751, 38.368328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473091, 0.720313, 0.507280,
		0.207391, 0.650664, -0.730497,
		-0.856255, -0.240386, -0.457210,
		30.005140, 36.742634, 38.231167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370411, 37.580013, 38.457306>,  <30.604519, 36.910904, 38.551212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370411, 37.580013, 38.457306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068050, 37.336746, 38.360355>,  <29.886635, 37.190784, 38.302185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068050, 37.336746, 38.360355>,  <30.370411, 37.580013, 38.457306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068050, 37.336746, 38.360355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635633, 0.593087, 0.494184,
		-0.156801, 0.527614, -0.834888,
		-0.755899, -0.608171, -0.242372,
		29.841280, 37.154297, 38.287643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890949, 38.064430, 38.224155>,  <30.370411, 37.580013, 38.457306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890949, 38.064430, 38.224155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.681549, 37.744976, 38.342899>,  <29.555910, 37.553303, 38.414146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.681549, 37.744976, 38.342899>,  <29.890949, 38.064430, 38.224155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681549, 37.744976, 38.342899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440111, 0.551803, 0.708390,
		-0.729555, 0.240190, -0.640357,
		-0.523500, -0.798638, 0.296860,
		29.524500, 37.505386, 38.431957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189054, 38.319744, 38.274818>,  <29.890949, 38.064430, 38.224155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189054, 38.319744, 38.274818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.185591, 37.973488, 38.475060>,  <29.183512, 37.765736, 38.595203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.185591, 37.973488, 38.475060>,  <29.189054, 38.319744, 38.274818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185591, 37.973488, 38.475060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393162, 0.463247, 0.794245,
		-0.919428, -0.189937, -0.344348,
		-0.008662, -0.865636, 0.500598,
		29.182993, 37.713799, 38.625240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507898, 38.289482, 38.595825>,  <29.189054, 38.319744, 38.274818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507898, 38.289482, 38.595825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715223, 38.022873, 38.810154>,  <28.839619, 37.862907, 38.938751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.715223, 38.022873, 38.810154>,  <28.507898, 38.289482, 38.595825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715223, 38.022873, 38.810154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499235, 0.272886, 0.822373,
		-0.694345, -0.693748, -0.191309,
		0.518314, -0.666519, 0.535820,
		28.870718, 37.822918, 38.970901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966188, 37.850456, 39.147625>,  <28.507898, 38.289482, 38.595825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966188, 37.850456, 39.147625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.343458, 37.824673, 39.278019>,  <28.569820, 37.809200, 39.356255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.343458, 37.824673, 39.278019>,  <27.966188, 37.850456, 39.147625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343458, 37.824673, 39.278019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307949, 0.199043, 0.930349,
		-0.124858, -0.977868, 0.167881,
		0.943174, -0.064463, 0.325986,
		28.626411, 37.805332, 39.375816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914614, 37.564674, 39.819054>,  <27.966188, 37.850456, 39.147625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914614, 37.564674, 39.819054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.282146, 37.720638, 39.794647>,  <28.502666, 37.814217, 39.780003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.282146, 37.720638, 39.794647>,  <27.914614, 37.564674, 39.819054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282146, 37.720638, 39.794647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089251, 0.355901, 0.930252,
		0.384434, -0.849295, 0.361812,
		0.918828, 0.389913, -0.061020,
		28.557796, 37.837612, 39.776340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282127, 37.398430, 40.516941>,  <27.914614, 37.564674, 39.819054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282127, 37.398430, 40.516941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.461344, 37.715378, 40.351334>,  <28.568874, 37.905544, 40.251968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.461344, 37.715378, 40.351334>,  <28.282127, 37.398430, 40.516941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461344, 37.715378, 40.351334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051361, 0.485155, 0.872919,
		0.892536, -0.369840, 0.258066,
		0.448042, 0.792366, -0.414022,
		28.595757, 37.953087, 40.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795048, 37.624241, 40.982067>,  <28.282127, 37.398430, 40.516941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795048, 37.624241, 40.982067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.712475, 37.944992, 40.757790>,  <28.662931, 38.137444, 40.623222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.712475, 37.944992, 40.757790>,  <28.795048, 37.624241, 40.982067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712475, 37.944992, 40.757790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239069, 0.514330, 0.823596,
		0.948806, 0.304060, 0.085531,
		-0.206431, 0.801880, -0.560691,
		28.650545, 38.185555, 40.589581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237383, 38.179562, 41.284054>,  <28.795048, 37.624241, 40.982067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237383, 38.179562, 41.284054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.924711, 38.361118, 41.112957>,  <28.737108, 38.470051, 41.010300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.924711, 38.361118, 41.112957>,  <29.237383, 38.179562, 41.284054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924711, 38.361118, 41.112957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047304, 0.640708, 0.766326,
		0.621883, 0.619256, -0.479358,
		-0.781680, 0.453890, -0.427738,
		28.690207, 38.497284, 40.984634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431309, 38.915672, 41.184067>,  <29.237383, 38.179562, 41.284054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431309, 38.915672, 41.184067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036888, 38.849102, 41.184410>,  <28.800236, 38.809158, 41.184616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036888, 38.849102, 41.184410>,  <29.431309, 38.915672, 41.184067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036888, 38.849102, 41.184410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108334, 0.645740, 0.755833,
		-0.126343, 0.745199, -0.654764,
		-0.986053, -0.166428, 0.000855,
		28.741072, 38.799175, 41.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123869, 39.608307, 41.338814>,  <29.431309, 38.915672, 41.184067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123869, 39.608307, 41.338814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.844496, 39.344994, 41.451134>,  <28.676872, 39.187004, 41.518528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.844496, 39.344994, 41.451134>,  <29.123869, 39.608307, 41.338814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844496, 39.344994, 41.451134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085528, 0.466323, 0.880470,
		-0.710547, 0.590933, -0.381997,
		-0.698433, -0.658287, 0.280803,
		28.634966, 39.147507, 41.535374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386591, 39.932228, 40.733200>,  <29.123869, 39.608307, 41.338814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386591, 39.932228, 40.733200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748293, 40.025311, 40.876404>,  <29.965315, 40.081161, 40.962326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.748293, 40.025311, 40.876404>,  <29.386591, 39.932228, 40.733200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748293, 40.025311, 40.876404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425069, -0.411132, -0.806404,
		-0.040471, 0.881372, -0.470686,
		0.904256, 0.232710, 0.358005,
		30.019569, 40.095123, 40.983807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718567, 40.276829, 40.229706>,  <29.386591, 39.932228, 40.733200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718567, 40.276829, 40.229706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012682, 40.136021, 40.461372>,  <30.189152, 40.051537, 40.600372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.012682, 40.136021, 40.461372>,  <29.718567, 40.276829, 40.229706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012682, 40.136021, 40.461372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511178, -0.273063, -0.814943,
		0.445023, 0.895277, -0.020837,
		0.735290, -0.352017, 0.579166,
		30.233269, 40.030415, 40.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275351, 40.379505, 39.829124>,  <29.718567, 40.276829, 40.229706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275351, 40.379505, 39.829124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.433249, 40.122925, 40.092247>,  <30.527987, 39.968975, 40.250122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.433249, 40.122925, 40.092247>,  <30.275351, 40.379505, 39.829124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433249, 40.122925, 40.092247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598413, -0.363783, -0.713838,
		0.697193, 0.675426, 0.240252,
		0.394745, -0.641453, 0.657811,
		30.551672, 39.930489, 40.289589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908291, 40.606018, 39.910461>,  <30.275351, 40.379505, 39.829124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908291, 40.606018, 39.910461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906864, 40.220493, 40.017090>,  <30.906008, 39.989178, 40.081066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906864, 40.220493, 40.017090>,  <30.908291, 40.606018, 39.910461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906864, 40.220493, 40.017090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675400, -0.198905, -0.710121,
		0.737443, 0.177508, 0.651666,
		-0.003568, -0.963809, 0.266570,
		30.905794, 39.931351, 40.097061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648218, 40.402424, 39.712440>,  <30.908291, 40.606018, 39.910461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648218, 40.402424, 39.712440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441631, 40.063496, 39.761940>,  <31.317678, 39.860138, 39.791641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441631, 40.063496, 39.761940>,  <31.648218, 40.402424, 39.712440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441631, 40.063496, 39.761940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500699, -0.416058, -0.759076,
		0.694666, -0.330076, 0.639131,
		-0.516468, -0.847317, 0.123753,
		31.286692, 39.809299, 39.799065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091503, 39.873531, 39.607941>,  <31.648218, 40.402424, 39.712440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091503, 39.873531, 39.607941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748974, 39.674828, 39.551453>,  <31.543455, 39.555607, 39.517559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.748974, 39.674828, 39.551453>,  <32.091503, 39.873531, 39.607941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748974, 39.674828, 39.551453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468356, -0.631784, -0.617649,
		0.217601, -0.595048, 0.773671,
		-0.856325, -0.496755, -0.141218,
		31.492077, 39.525803, 39.509087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388233, 39.218559, 39.456333>,  <32.091503, 39.873531, 39.607941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388233, 39.218559, 39.456333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009106, 39.234146, 39.329762>,  <31.781630, 39.243496, 39.253819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009106, 39.234146, 39.329762>,  <32.388233, 39.218559, 39.456333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009106, 39.234146, 39.329762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242803, -0.555011, -0.795619,
		-0.206623, -0.830929, 0.516587,
		-0.947815, 0.038965, -0.316430,
		31.724762, 39.245834, 39.234833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136089, 38.424911, 39.406311>,  <32.388233, 39.218559, 39.456333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136089, 38.424911, 39.406311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950871, 38.696213, 39.178078>,  <31.839739, 38.858994, 39.041138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950871, 38.696213, 39.178078>,  <32.136089, 38.424911, 39.406311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950871, 38.696213, 39.178078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277881, -0.500205, -0.820108,
		-0.841649, -0.538300, 0.043143,
		-0.463044, 0.678254, -0.570580,
		31.811956, 38.899689, 39.006905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818550, 38.089027, 38.917667>,  <32.136089, 38.424911, 39.406311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818550, 38.089027, 38.917667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863445, 38.446445, 38.743782>,  <31.890383, 38.660896, 38.639450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863445, 38.446445, 38.743782>,  <31.818550, 38.089027, 38.917667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863445, 38.446445, 38.743782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328625, -0.446237, -0.832393,
		-0.937768, -0.049430, -0.343728,
		0.112239, 0.893549, -0.434710,
		31.897118, 38.714512, 38.613369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414667, 38.031193, 38.289158>,  <31.818550, 38.089027, 38.917667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414667, 38.031193, 38.289158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678751, 38.322258, 38.214722>,  <31.837202, 38.496899, 38.170059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678751, 38.322258, 38.214722>,  <31.414667, 38.031193, 38.289158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678751, 38.322258, 38.214722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232238, -0.433399, -0.870764,
		-0.714275, 0.531670, -0.455126,
		0.660210, 0.727662, -0.186092,
		31.876814, 38.540558, 38.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307076, 38.240681, 37.605263>,  <31.414667, 38.031193, 38.289158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307076, 38.240681, 37.605263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673777, 38.380169, 37.683193>,  <31.893797, 38.463863, 37.729950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673777, 38.380169, 37.683193>,  <31.307076, 38.240681, 37.605263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673777, 38.380169, 37.683193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336715, -0.412209, -0.846585,
		-0.214914, 0.841710, -0.495314,
		0.916752, 0.348723, 0.194827,
		31.948803, 38.484787, 37.741642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516239, 38.556870, 36.980705>,  <31.307076, 38.240681, 37.605263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516239, 38.556870, 36.980705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849571, 38.472687, 37.185162>,  <32.049572, 38.422176, 37.307835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849571, 38.472687, 37.185162>,  <31.516239, 38.556870, 36.980705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849571, 38.472687, 37.185162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440807, -0.304929, -0.844220,
		0.333537, 0.928830, -0.161335,
		0.833332, -0.210461, 0.511140,
		32.099571, 38.409550, 37.338505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010269, 38.770412, 36.441227>,  <31.516239, 38.556870, 36.980705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010269, 38.770412, 36.441227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210835, 38.564316, 36.719254>,  <32.331173, 38.440659, 36.886070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210835, 38.564316, 36.719254>,  <32.010269, 38.770412, 36.441227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210835, 38.564316, 36.719254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561943, -0.416909, -0.714428,
		0.657881, 0.748809, 0.080493,
		0.501411, -0.515241, 0.695064,
		32.361259, 38.409744, 36.927773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736340, 38.816425, 36.224781>,  <32.010269, 38.770412, 36.441227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736340, 38.816425, 36.224781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707130, 38.486992, 36.449772>,  <32.689606, 38.289333, 36.584766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707130, 38.486992, 36.449772>,  <32.736340, 38.816425, 36.224781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707130, 38.486992, 36.449772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626717, -0.476614, -0.616494,
		0.775817, 0.307494, 0.550958,
		-0.073026, -0.823582, 0.562477,
		32.685223, 38.239918, 36.618515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.679888, 40.521507, 35.376778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.552164, 40.705315, 35.045261>,  <31.475531, 40.815598, 34.846352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.552164, 40.705315, 35.045261>,  <31.679888, 40.521507, 35.376778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552164, 40.705315, 35.045261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847122, -0.530417, 0.032287,
		-0.424766, 0.712393, 0.558631,
		-0.319308, 0.459515, -0.828788,
		31.456371, 40.843170, 34.796623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910364, 40.908878, 35.370129>,  <31.679888, 40.521507, 35.376778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910364, 40.908878, 35.370129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.028759, 40.795406, 35.005291>,  <31.099796, 40.727325, 34.786388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.028759, 40.795406, 35.005291>,  <30.910364, 40.908878, 35.370129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028759, 40.795406, 35.005291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844314, -0.524238, -0.110943,
		-0.446683, 0.802934, -0.394679,
		0.295985, -0.283677, -0.912096,
		31.117554, 40.710304, 34.731663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366137, 41.006443, 34.956200>,  <30.910364, 40.908878, 35.370129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366137, 41.006443, 34.956200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589798, 40.765404, 34.728439>,  <30.723995, 40.620781, 34.591782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.589798, 40.765404, 34.728439>,  <30.366137, 41.006443, 34.956200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589798, 40.765404, 34.728439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826283, -0.461275, -0.323237,
		-0.067869, 0.651227, -0.755842,
		0.559152, -0.602601, -0.569404,
		30.757544, 40.584621, 34.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062553, 41.025650, 34.167278>,  <30.366137, 41.006443, 34.956200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062553, 41.025650, 34.167278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.258793, 40.684830, 34.240299>,  <30.376537, 40.480339, 34.284111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.258793, 40.684830, 34.240299>,  <30.062553, 41.025650, 34.167278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258793, 40.684830, 34.240299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797027, -0.523457, -0.301233,
		0.352225, 0.002284, -0.935913,
		0.490598, -0.852049, 0.182554,
		30.405972, 40.429214, 34.295067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861559, 40.565784, 33.652328>,  <30.062553, 41.025650, 34.167278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861559, 40.565784, 33.652328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994118, 40.324783, 33.942753>,  <30.073652, 40.180183, 34.117008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994118, 40.324783, 33.942753>,  <29.861559, 40.565784, 33.652328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994118, 40.324783, 33.942753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796934, -0.590688, -0.126426,
		0.505047, -0.536725, -0.675909,
		0.331395, -0.602507, 0.726060,
		30.093536, 40.144032, 34.160572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996300, 39.868118, 33.336113>,  <29.861559, 40.565784, 33.652328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996300, 39.868118, 33.336113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939743, 39.826630, 33.729916>,  <29.905809, 39.801739, 33.966198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939743, 39.826630, 33.729916>,  <29.996300, 39.868118, 33.336113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939743, 39.826630, 33.729916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730004, -0.660802, -0.174456,
		0.668658, -0.743359, 0.017717,
		-0.141391, -0.103718, 0.984506,
		29.897326, 39.795513, 34.025269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015272, 39.040100, 33.469734>,  <29.996300, 39.868118, 33.336113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015272, 39.040100, 33.469734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828417, 39.214848, 33.777222>,  <29.716303, 39.319695, 33.961716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828417, 39.214848, 33.777222>,  <30.015272, 39.040100, 33.469734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828417, 39.214848, 33.777222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698099, -0.715788, -0.017439,
		0.542622, -0.544788, 0.639349,
		-0.467139, 0.436867, 0.768719,
		29.688274, 39.345909, 34.007839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781130, 38.517887, 33.880165>,  <30.015272, 39.040100, 33.469734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781130, 38.517887, 33.880165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567495, 38.821613, 34.028866>,  <29.439314, 39.003849, 34.118084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567495, 38.821613, 34.028866>,  <29.781130, 38.517887, 33.880165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567495, 38.821613, 34.028866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769288, -0.618852, 0.158804,
		0.350640, -0.201167, 0.914650,
		-0.534086, 0.759312, 0.371749,
		29.407270, 39.049408, 34.140392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545179, 38.263672, 34.548443>,  <29.781130, 38.517887, 33.880165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545179, 38.263672, 34.548443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301659, 38.563755, 34.445259>,  <29.155546, 38.743805, 34.383350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301659, 38.563755, 34.445259>,  <29.545179, 38.263672, 34.548443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301659, 38.563755, 34.445259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777855, -0.628389, 0.008281,
		-0.155886, 0.205695, 0.966121,
		-0.608803, 0.750211, -0.257958,
		29.119019, 38.788818, 34.367870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044468, 38.194279, 34.913921>,  <29.545179, 38.263672, 34.548443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044468, 38.194279, 34.913921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876951, 38.411766, 34.622997>,  <28.776442, 38.542259, 34.448444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876951, 38.411766, 34.622997>,  <29.044468, 38.194279, 34.913921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876951, 38.411766, 34.622997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768441, -0.638952, -0.035192,
		-0.483852, 0.544158, 0.685405,
		-0.418791, 0.543721, -0.727311,
		28.751314, 38.574883, 34.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345016, 38.091019, 35.031490>,  <29.044468, 38.194279, 34.913921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345016, 38.091019, 35.031490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358839, 38.248684, 34.664135>,  <28.367132, 38.343285, 34.443722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358839, 38.248684, 34.664135>,  <28.345016, 38.091019, 35.031490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358839, 38.248684, 34.664135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711468, -0.635656, -0.299591,
		-0.701869, 0.663758, 0.258469,
		0.034558, 0.394166, -0.918389,
		28.369207, 38.366932, 34.388618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717876, 38.290600, 34.895832>,  <28.345016, 38.091019, 35.031490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717876, 38.290600, 34.895832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899532, 38.239342, 34.543163>,  <28.008526, 38.208588, 34.331562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899532, 38.239342, 34.543163>,  <27.717876, 38.290600, 34.895832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899532, 38.239342, 34.543163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774960, -0.545036, -0.319958,
		-0.439540, 0.828562, -0.346827,
		0.454139, -0.128143, -0.881668,
		28.035774, 38.200897, 34.278664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096220, 38.258900, 34.448883>,  <27.717876, 38.290600, 34.895832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096220, 38.258900, 34.448883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399601, 38.110603, 34.234482>,  <27.581629, 38.021626, 34.105843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.399601, 38.110603, 34.234482>,  <27.096220, 38.258900, 34.448883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399601, 38.110603, 34.234482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595561, -0.728281, -0.338989,
		-0.264682, 0.576330, -0.773167,
		0.758453, -0.370744, -0.536003,
		27.627136, 37.999378, 34.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874123, 38.171501, 33.736298>,  <27.096220, 38.258900, 34.448883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874123, 38.171501, 33.736298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172636, 37.913300, 33.801270>,  <27.351744, 37.758377, 33.840252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172636, 37.913300, 33.801270>,  <26.874123, 38.171501, 33.736298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172636, 37.913300, 33.801270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601326, -0.758450, -0.251317,
		0.285420, 0.089882, -0.954178,
		0.746286, -0.645504, 0.162429,
		27.396523, 37.719650, 33.849998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836990, 37.695717, 33.183697>,  <26.874123, 38.171501, 33.736298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836990, 37.695717, 33.183697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053535, 37.498444, 33.456078>,  <27.183462, 37.380081, 33.619507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053535, 37.498444, 33.456078>,  <26.836990, 37.695717, 33.183697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053535, 37.498444, 33.456078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527121, -0.830050, -0.182102,
		0.655033, -0.260360, -0.709327,
		0.541364, -0.493183, 0.680952,
		27.215944, 37.350487, 33.660362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161699, 37.160049, 32.840916>,  <26.836990, 37.695717, 33.183697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161699, 37.160049, 32.840916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127384, 37.041225, 33.221313>,  <27.106794, 36.969933, 33.449554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127384, 37.041225, 33.221313>,  <27.161699, 37.160049, 32.840916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127384, 37.041225, 33.221313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410685, -0.859108, -0.305405,
		0.907733, -0.416760, -0.048299,
		-0.085787, -0.297062, 0.950997,
		27.101648, 36.952106, 33.506611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001596, 36.395817, 32.838486>,  <27.161699, 37.160049, 32.840916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001596, 36.395817, 32.838486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933365, 36.435459, 33.230625>,  <26.892426, 36.459244, 33.465908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933365, 36.435459, 33.230625>,  <27.001596, 36.395817, 32.838486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933365, 36.435459, 33.230625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406506, -0.913392, 0.021609,
		0.897583, -0.394831, 0.196095,
		-0.170580, 0.099110, 0.980347,
		26.882191, 36.465191, 33.524731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405357, 35.928967, 33.126003>,  <27.001596, 36.395817, 32.838486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405357, 35.928967, 33.126003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088463, 35.992661, 33.361629>,  <26.898325, 36.030876, 33.503006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088463, 35.992661, 33.361629>,  <27.405357, 35.928967, 33.126003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088463, 35.992661, 33.361629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244469, -0.967318, -0.067308,
		0.559101, -0.197334, 0.805274,
		-0.792238, 0.159232, 0.589070,
		26.850792, 36.040432, 33.538349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261530, 35.320206, 33.337444>,  <27.405357, 35.928967, 33.126003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261530, 35.320206, 33.337444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918152, 35.488205, 33.455208>,  <26.712126, 35.589005, 33.525867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.918152, 35.488205, 33.455208>,  <27.261530, 35.320206, 33.337444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918152, 35.488205, 33.455208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487200, -0.847152, -0.212060,
		0.160345, -0.325477, 0.931855,
		-0.858444, 0.419997, 0.294409,
		26.660618, 35.614204, 33.543530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585926, 34.719254, 33.332222>,  <27.261530, 35.320206, 33.337444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585926, 34.719254, 33.332222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733431, 34.391304, 33.157036>,  <27.821934, 34.194534, 33.051926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733431, 34.391304, 33.157036>,  <27.585926, 34.719254, 33.332222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733431, 34.391304, 33.157036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826693, 0.504693, -0.248723,
		0.424961, -0.270344, 0.863900,
		0.368763, -0.819878, -0.437966,
		27.844059, 34.145340, 33.025646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123974, 34.460793, 33.765324>,  <27.585926, 34.719254, 33.332222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123974, 34.460793, 33.765324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179918, 34.367733, 33.380344>,  <28.213486, 34.311897, 33.149357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.179918, 34.367733, 33.380344>,  <28.123974, 34.460793, 33.765324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179918, 34.367733, 33.380344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762943, 0.644897, -0.045016,
		0.631155, -0.727999, 0.267695,
		0.139863, -0.232648, -0.962452,
		28.221878, 34.297939, 33.091610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817331, 34.533195, 33.628025>,  <28.123974, 34.460793, 33.765324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817331, 34.533195, 33.628025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700373, 34.487206, 33.248280>,  <28.630198, 34.459610, 33.020432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700373, 34.487206, 33.248280>,  <28.817331, 34.533195, 33.628025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700373, 34.487206, 33.248280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745021, 0.595004, -0.301521,
		0.599539, -0.795457, -0.088321,
		-0.292399, -0.114972, -0.949360,
		28.612654, 34.452713, 32.963470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392750, 34.531376, 33.210373>,  <28.817331, 34.533195, 33.628025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392750, 34.531376, 33.210373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104664, 34.638374, 32.954330>,  <28.931812, 34.702572, 32.800705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104664, 34.638374, 32.954330>,  <29.392750, 34.531376, 33.210373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104664, 34.638374, 32.954330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576205, 0.744507, -0.337190,
		0.386368, -0.611682, -0.690337,
		-0.720214, 0.267496, -0.640108,
		28.888599, 34.718624, 32.762299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721523, 34.547119, 32.411072>,  <29.392750, 34.531376, 33.210373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721523, 34.547119, 32.411072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398792, 34.783211, 32.421398>,  <29.205154, 34.924866, 32.427593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398792, 34.783211, 32.421398>,  <29.721523, 34.547119, 32.411072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398792, 34.783211, 32.421398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533642, 0.746835, -0.396816,
		-0.253492, -0.306385, -0.917535,
		-0.806826, 0.590225, 0.025817,
		29.156744, 34.960278, 32.429142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815308, 34.931950, 31.757996>,  <29.721523, 34.547119, 32.411072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815308, 34.931950, 31.757996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536715, 35.132885, 31.962959>,  <29.369558, 35.253448, 32.085938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536715, 35.132885, 31.962959>,  <29.815308, 34.931950, 31.757996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536715, 35.132885, 31.962959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443295, 0.862739, -0.243249,
		-0.564271, 0.057730, -0.823569,
		-0.696482, 0.502343, 0.512410,
		29.327770, 35.283588, 32.116684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430010, 35.363228, 31.280788>,  <29.815308, 34.931950, 31.757996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430010, 35.363228, 31.280788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398014, 35.518742, 31.647928>,  <29.378817, 35.612049, 31.868212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398014, 35.518742, 31.647928>,  <29.430010, 35.363228, 31.280788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398014, 35.518742, 31.647928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327741, 0.879862, -0.344135,
		-0.941376, 0.273289, -0.197801,
		-0.079989, 0.388788, 0.917848,
		29.374018, 35.635380, 31.923283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275480, 36.132408, 31.128305>,  <29.430010, 35.363228, 31.280788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275480, 36.132408, 31.128305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364336, 36.125973, 31.518259>,  <29.417648, 36.122112, 31.752232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.364336, 36.125973, 31.518259>,  <29.275480, 36.132408, 31.128305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364336, 36.125973, 31.518259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413526, 0.907037, -0.079253,
		-0.882979, 0.420744, 0.208141,
		0.222137, -0.016093, 0.974883,
		29.430977, 36.121143, 31.810724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020010, 36.767582, 31.519991>,  <29.275480, 36.132408, 31.128305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020010, 36.767582, 31.519991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330809, 36.622269, 31.725632>,  <29.517288, 36.535080, 31.849016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330809, 36.622269, 31.725632>,  <29.020010, 36.767582, 31.519991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330809, 36.622269, 31.725632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402356, 0.914684, 0.038241,
		-0.484134, 0.177139, 0.856876,
		0.776997, -0.363283, 0.514103,
		29.563908, 36.513283, 31.879862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145340, 37.399635, 32.053860>,  <29.020010, 36.767582, 31.519991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145340, 37.399635, 32.053860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.443779, 37.134453, 32.029125>,  <29.622843, 36.975342, 32.014286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.443779, 37.134453, 32.029125>,  <29.145340, 37.399635, 32.053860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443779, 37.134453, 32.029125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657088, 0.748118, -0.092496,
		0.107583, 0.028379, 0.993791,
		0.746097, -0.662959, -0.061837,
		29.667608, 36.935566, 32.010574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577377, 37.701900, 32.477718>,  <29.145340, 37.399635, 32.053860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577377, 37.701900, 32.477718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798084, 37.458111, 32.250000>,  <29.930508, 37.311836, 32.113369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798084, 37.458111, 32.250000>,  <29.577377, 37.701900, 32.477718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798084, 37.458111, 32.250000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636390, 0.748872, -0.184926,
		0.539038, -0.260259, 0.801064,
		0.551766, -0.609471, -0.569297,
		29.963614, 37.275269, 32.079212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238256, 37.842186, 32.758724>,  <29.577377, 37.701900, 32.477718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238256, 37.842186, 32.758724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291254, 37.655029, 32.409206>,  <30.323051, 37.542736, 32.199497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291254, 37.655029, 32.409206>,  <30.238256, 37.842186, 32.758724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291254, 37.655029, 32.409206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767640, 0.606130, -0.208171,
		0.627036, -0.643179, 0.439484,
		0.132493, -0.467896, -0.873796,
		30.331001, 37.514660, 32.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915697, 37.693905, 32.665848>,  <30.238256, 37.842186, 32.758724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915697, 37.693905, 32.665848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.756186, 37.719105, 32.299896>,  <30.660479, 37.734222, 32.080326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.756186, 37.719105, 32.299896>,  <30.915697, 37.693905, 32.665848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756186, 37.719105, 32.299896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670230, 0.700939, -0.243875,
		0.625913, -0.710433, -0.321742,
		-0.398778, 0.062997, -0.914881,
		30.636553, 37.738003, 32.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485104, 37.692493, 32.242542>,  <30.915697, 37.693905, 32.665848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485104, 37.692493, 32.242542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.185280, 37.858929, 32.036621>,  <31.005384, 37.958790, 31.913067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.185280, 37.858929, 32.036621>,  <31.485104, 37.692493, 32.242542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185280, 37.858929, 32.036621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571008, 0.799847, -0.184915,
		0.334824, -0.432563, -0.837127,
		-0.749561, 0.416093, -0.514805,
		30.960411, 37.983757, 31.882179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850023, 38.118599, 31.871782>,  <31.485104, 37.692493, 32.242542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850023, 38.118599, 31.871782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480152, 38.236771, 31.775711>,  <31.258228, 38.307674, 31.718067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480152, 38.236771, 31.775711>,  <31.850023, 38.118599, 31.871782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480152, 38.236771, 31.775711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372450, 0.832818, -0.409506,
		0.079044, -0.468116, -0.880125,
		-0.924680, 0.295433, -0.240179,
		31.202747, 38.325401, 31.703657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827047, 38.338501, 31.081543>,  <31.850023, 38.118599, 31.871782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827047, 38.338501, 31.081543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.546806, 38.529095, 31.294003>,  <31.378662, 38.643452, 31.421478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.546806, 38.529095, 31.294003>,  <31.827047, 38.338501, 31.081543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546806, 38.529095, 31.294003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227183, 0.854589, -0.466975,
		-0.676419, -0.206496, -0.706977,
		-0.700603, 0.476484, 0.531148,
		31.336626, 38.672039, 31.453346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538107, 38.934017, 30.596966>,  <31.827047, 38.338501, 31.081543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538107, 38.934017, 30.596966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420359, 39.041924, 30.963697>,  <31.349710, 39.106667, 31.183737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420359, 39.041924, 30.963697>,  <31.538107, 38.934017, 30.596966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420359, 39.041924, 30.963697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183820, 0.957405, -0.222680,
		-0.937847, 0.102981, -0.331418,
		-0.294369, 0.269761, 0.916829,
		31.332048, 39.122852, 31.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150295, 39.557373, 30.464567>,  <31.538107, 38.934017, 30.596966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150295, 39.557373, 30.464567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242971, 39.580353, 30.853004>,  <31.298576, 39.594139, 31.086067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.242971, 39.580353, 30.853004>,  <31.150295, 39.557373, 30.464567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242971, 39.580353, 30.853004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354176, 0.924759, -0.139212,
		-0.906024, 0.376192, 0.193910,
		0.231690, 0.057451, 0.971092,
		31.312479, 39.597588, 31.144333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041155, 40.213200, 30.673584>,  <31.150295, 39.557373, 30.464567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041155, 40.213200, 30.673584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275023, 40.089474, 30.973579>,  <31.415342, 40.015236, 31.153578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.275023, 40.089474, 30.973579>,  <31.041155, 40.213200, 30.673584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275023, 40.089474, 30.973579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499211, 0.865887, -0.032053,
		-0.639493, 0.393144, 0.660671,
		0.584668, -0.309317, 0.749991,
		31.450422, 39.996677, 31.198576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106018, 40.746712, 31.304899>,  <31.041155, 40.213200, 30.673584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106018, 40.746712, 31.304899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426725, 40.507706, 31.300186>,  <31.619150, 40.364304, 31.297358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426725, 40.507706, 31.300186>,  <31.106018, 40.746712, 31.304899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426725, 40.507706, 31.300186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562879, 0.748374, 0.350861,
		-0.200828, -0.287942, 0.936354,
		0.801771, -0.597516, -0.011782,
		31.667257, 40.328449, 31.296652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498363, 40.967945, 31.930882>,  <31.106018, 40.746712, 31.304899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498363, 40.967945, 31.930882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753839, 40.760841, 31.703197>,  <31.907125, 40.636578, 31.566587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753839, 40.760841, 31.703197>,  <31.498363, 40.967945, 31.930882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753839, 40.760841, 31.703197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719458, 0.664161, 0.203151,
		0.272865, -0.539275, 0.796698,
		0.638690, -0.517758, -0.569212,
		31.945446, 40.605515, 31.532434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171886, 40.797882, 32.271072>,  <31.498363, 40.967945, 31.930882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171886, 40.797882, 32.271072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243752, 40.794773, 31.877592>,  <32.286869, 40.792908, 31.641504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243752, 40.794773, 31.877592>,  <32.171886, 40.797882, 32.271072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243752, 40.794773, 31.877592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647838, 0.753446, 0.112365,
		0.740290, -0.657465, 0.140398,
		0.179659, -0.007772, -0.983698,
		32.297649, 40.792442, 31.582483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889671, 40.825504, 32.262371>,  <32.171886, 40.797882, 32.271072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889671, 40.825504, 32.262371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.740788, 40.989529, 31.929308>,  <32.651459, 41.087944, 31.729471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.740788, 40.989529, 31.929308>,  <32.889671, 40.825504, 32.262371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740788, 40.989529, 31.929308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575270, 0.805937, 0.139749,
		0.728373, -0.426986, -0.535869,
		-0.372206, 0.410059, -0.832655,
		32.629128, 41.112545, 31.679512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.032047, 42.147022, 41.703415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807358, 41.819817, 41.752922>,  <33.672543, 41.623493, 41.782627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807358, 41.819817, 41.752922>,  <34.032047, 42.147022, 41.703415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807358, 41.819817, 41.752922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557615, 0.484856, 0.673780,
		-0.611169, 0.309468, -0.728493,
		-0.561728, -0.818012, 0.123765,
		33.638840, 41.574413, 41.790051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343033, 42.320976, 41.550346>,  <34.032047, 42.147022, 41.703415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343033, 42.320976, 41.550346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365574, 42.016338, 41.808586>,  <33.379097, 41.833557, 41.963531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365574, 42.016338, 41.808586>,  <33.343033, 42.320976, 41.550346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365574, 42.016338, 41.808586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755873, 0.389917, 0.525947,
		-0.652288, -0.517634, -0.553693,
		0.056353, -0.761590, 0.645604,
		33.382481, 41.787861, 42.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676136, 42.228687, 41.743610>,  <33.343033, 42.320976, 41.550346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676136, 42.228687, 41.743610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859661, 42.022091, 42.032810>,  <32.969776, 41.898132, 42.206329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859661, 42.022091, 42.032810>,  <32.676136, 42.228687, 41.743610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859661, 42.022091, 42.032810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635418, 0.378045, 0.673295,
		-0.621076, -0.768324, -0.154734,
		0.458812, -0.516488, 0.723001,
		32.997303, 41.867146, 42.249710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118717, 41.836468, 42.102253>,  <32.676136, 42.228687, 41.743610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118717, 41.836468, 42.102253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439495, 41.869976, 42.338848>,  <32.631962, 41.890083, 42.480804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439495, 41.869976, 42.338848>,  <32.118717, 41.836468, 42.102253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439495, 41.869976, 42.338848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594950, 0.201431, 0.778113,
		-0.053961, -0.975914, 0.211377,
		0.801949, 0.083771, 0.591490,
		32.680080, 41.895107, 42.516296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788738, 41.463680, 42.761276>,  <32.118717, 41.836468, 42.102253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788738, 41.463680, 42.761276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106258, 41.684792, 42.862720>,  <32.296772, 41.817459, 42.923588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106258, 41.684792, 42.862720>,  <31.788738, 41.463680, 42.761276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106258, 41.684792, 42.862720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447683, 0.248831, 0.858873,
		0.411657, -0.795313, 0.444990,
		0.793800, 0.552775, 0.253615,
		32.344398, 41.850624, 42.938805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905787, 41.318707, 43.535301>,  <31.788738, 41.463680, 42.761276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905787, 41.318707, 43.535301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095699, 41.665337, 43.473808>,  <32.209648, 41.873314, 43.436913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095699, 41.665337, 43.473808>,  <31.905787, 41.318707, 43.535301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095699, 41.665337, 43.473808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376732, 0.357972, 0.854359,
		0.795396, -0.347718, 0.496424,
		0.474782, 0.866573, -0.153733,
		32.238132, 41.925308, 43.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329075, 41.467056, 44.158226>,  <31.905787, 41.318707, 43.535301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329075, 41.467056, 44.158226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306938, 41.823860, 43.978775>,  <32.293655, 42.037941, 43.871105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306938, 41.823860, 43.978775>,  <32.329075, 41.467056, 44.158226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306938, 41.823860, 43.978775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203830, 0.429757, 0.879638,
		0.977441, 0.140127, 0.158033,
		-0.055345, 0.892005, -0.448624,
		32.290337, 42.091461, 43.844189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687302, 41.880383, 44.553967>,  <32.329075, 41.467056, 44.158226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687302, 41.880383, 44.553967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.456028, 42.121922, 44.334484>,  <32.317265, 42.266846, 44.202797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.456028, 42.121922, 44.334484>,  <32.687302, 41.880383, 44.553967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456028, 42.121922, 44.334484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363396, 0.411533, 0.835813,
		0.730514, 0.682647, -0.018504,
		-0.578180, 0.603849, -0.548702,
		32.282574, 42.303078, 44.169872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805584, 42.588737, 44.782127>,  <32.687302, 41.880383, 44.553967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805584, 42.588737, 44.782127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439640, 42.589050, 44.620617>,  <32.220074, 42.589237, 44.523708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439640, 42.589050, 44.620617>,  <32.805584, 42.588737, 44.782127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439640, 42.589050, 44.620617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350010, 0.497066, 0.793988,
		0.201326, 0.867712, -0.454471,
		-0.914856, 0.000781, -0.403780,
		32.165184, 42.589283, 44.499481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586346, 43.246681, 44.974846>,  <32.805584, 42.588737, 44.782127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586346, 43.246681, 44.974846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.250103, 43.056591, 44.870895>,  <32.048359, 42.942535, 44.808525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.250103, 43.056591, 44.870895>,  <32.586346, 43.246681, 44.974846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250103, 43.056591, 44.870895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502100, 0.503720, 0.702967,
		-0.203162, 0.721405, -0.662042,
		-0.840607, -0.475228, -0.259881,
		31.997921, 42.914024, 44.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035099, 43.774849, 45.005699>,  <32.586346, 43.246681, 44.974846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035099, 43.774849, 45.005699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862368, 43.422474, 45.083138>,  <31.758730, 43.211048, 45.129601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862368, 43.422474, 45.083138>,  <32.035099, 43.774849, 45.005699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862368, 43.422474, 45.083138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637322, 0.449900, 0.625628,
		-0.638237, 0.146778, -0.755718,
		-0.431826, -0.880935, 0.193598,
		31.732821, 43.158192, 45.141216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366184, 43.886845, 45.017757>,  <32.035099, 43.774849, 45.005699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366184, 43.886845, 45.017757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387117, 43.536156, 45.209019>,  <31.399677, 43.325745, 45.323776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387117, 43.536156, 45.209019>,  <31.366184, 43.886845, 45.017757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387117, 43.536156, 45.209019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605746, 0.352794, 0.713167,
		-0.793935, -0.326957, -0.512607,
		0.052331, -0.876718, 0.478149,
		31.402817, 43.273140, 45.352463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656118, 43.698776, 45.227543>,  <31.366184, 43.886845, 45.017757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656118, 43.698776, 45.227543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970463, 43.617176, 45.461056>,  <31.159069, 43.568214, 45.601166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970463, 43.617176, 45.461056>,  <30.656118, 43.698776, 45.227543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970463, 43.617176, 45.461056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470609, 0.415143, 0.778578,
		-0.401188, -0.886588, 0.230238,
		0.785860, -0.204004, 0.583787,
		31.206221, 43.555973, 45.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378292, 43.423553, 45.856522>,  <30.656118, 43.698776, 45.227543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378292, 43.423553, 45.856522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731930, 43.606556, 45.894600>,  <30.944113, 43.716358, 45.917446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731930, 43.606556, 45.894600>,  <30.378292, 43.423553, 45.856522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731930, 43.606556, 45.894600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362608, 0.543134, 0.757312,
		0.294772, -0.704054, 0.646078,
		0.884095, 0.457508, 0.095195,
		30.997158, 43.743809, 45.923157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703276, 43.644905, 45.553211>,  <30.378292, 43.423553, 45.856522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703276, 43.644905, 45.553211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.359640, 43.740257, 45.372040>,  <29.153460, 43.797470, 45.263336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.359640, 43.740257, 45.372040>,  <29.703276, 43.644905, 45.553211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359640, 43.740257, 45.372040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268116, -0.544188, -0.794968,
		-0.435984, -0.804383, 0.403591,
		-0.859088, 0.238384, -0.452925,
		29.101913, 43.811771, 45.236164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617357, 43.105976, 45.167465>,  <29.703276, 43.644905, 45.553211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617357, 43.105976, 45.167465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400013, 43.386200, 44.982437>,  <29.269606, 43.554333, 44.871422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400013, 43.386200, 44.982437>,  <29.617357, 43.105976, 45.167465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400013, 43.386200, 44.982437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004854, -0.548377, -0.836217,
		-0.839484, -0.456615, 0.294567,
		-0.543363, 0.700561, -0.462570,
		29.237003, 43.596367, 44.843666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047846, 42.774837, 44.944454>,  <29.617357, 43.105976, 45.167465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047846, 42.774837, 44.944454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.073122, 43.087902, 44.696762>,  <29.088287, 43.275742, 44.548149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.073122, 43.087902, 44.696762>,  <29.047846, 42.774837, 44.944454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073122, 43.087902, 44.696762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027166, -0.621587, -0.782874,
		-0.997632, 0.032650, -0.060542,
		0.063193, 0.782665, -0.619228,
		29.092079, 43.322701, 44.510994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535818, 42.553616, 44.285732>,  <29.047846, 42.774837, 44.944454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535818, 42.553616, 44.285732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782467, 42.850304, 44.180183>,  <28.930456, 43.028316, 44.116856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782467, 42.850304, 44.180183>,  <28.535818, 42.553616, 44.285732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782467, 42.850304, 44.180183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188404, -0.464467, -0.865318,
		-0.764383, 0.483859, -0.426143,
		0.616621, 0.741722, -0.263870,
		28.967453, 43.072819, 44.101021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432085, 42.647121, 43.555408>,  <28.535818, 42.553616, 44.285732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432085, 42.647121, 43.555408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.789909, 42.812183, 43.624084>,  <29.004604, 42.911221, 43.665291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.789909, 42.812183, 43.624084>,  <28.432085, 42.647121, 43.555408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789909, 42.812183, 43.624084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353013, -0.416740, -0.837681,
		-0.274119, 0.809967, -0.518471,
		0.894562, 0.412652, 0.171693,
		29.058277, 42.935978, 43.675591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630615, 42.871670, 42.954914>,  <28.432085, 42.647121, 43.555408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630615, 42.871670, 42.954914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.978476, 42.854210, 43.151608>,  <29.187193, 42.843735, 43.269623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.978476, 42.854210, 43.151608>,  <28.630615, 42.871670, 42.954914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978476, 42.854210, 43.151608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363325, -0.617771, -0.697391,
		0.334215, 0.785146, -0.521388,
		0.869652, -0.043645, 0.491732,
		29.239370, 42.841118, 43.299126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260866, 43.124409, 42.419521>,  <28.630615, 42.871670, 42.954914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260866, 43.124409, 42.419521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.405300, 42.908188, 42.723473>,  <29.491961, 42.778454, 42.905846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.405300, 42.908188, 42.723473>,  <29.260866, 43.124409, 42.419521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405300, 42.908188, 42.723473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439919, -0.619747, -0.649911,
		0.822247, 0.568959, 0.014020,
		0.361084, -0.540555, 0.759881,
		29.513626, 42.746021, 42.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970974, 43.019619, 42.247162>,  <29.260866, 43.124409, 42.419521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970974, 43.019619, 42.247162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880459, 42.730206, 42.508018>,  <29.826151, 42.556557, 42.664532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880459, 42.730206, 42.508018>,  <29.970974, 43.019619, 42.247162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880459, 42.730206, 42.508018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345111, -0.685634, -0.640940,
		0.910875, 0.080026, 0.404849,
		-0.226287, -0.723534, 0.652145,
		29.812572, 42.513145, 42.703663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646309, 42.542839, 42.388317>,  <29.970974, 43.019619, 42.247162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646309, 42.542839, 42.388317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322197, 42.330711, 42.488079>,  <30.127729, 42.203434, 42.547935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322197, 42.330711, 42.488079>,  <30.646309, 42.542839, 42.388317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322197, 42.330711, 42.488079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366715, -0.790783, -0.490084,
		0.457127, -0.305646, 0.835234,
		-0.810281, -0.530323, 0.249403,
		30.079113, 42.171616, 42.562901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943096, 41.868374, 42.576523>,  <30.646309, 42.542839, 42.388317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943096, 41.868374, 42.576523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552315, 41.790012, 42.542618>,  <30.317846, 41.742996, 42.522274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552315, 41.790012, 42.542618>,  <30.943096, 41.868374, 42.576523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552315, 41.790012, 42.542618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212873, -0.923601, -0.318821,
		-0.015831, -0.329517, 0.944017,
		-0.976952, -0.195909, -0.084767,
		30.259230, 41.731239, 42.517189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744467, 41.152950, 42.778606>,  <30.943096, 41.868374, 42.576523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744467, 41.152950, 42.778606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434484, 41.245335, 42.543285>,  <30.248495, 41.300766, 42.402092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434484, 41.245335, 42.543285>,  <30.744467, 41.152950, 42.778606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434484, 41.245335, 42.543285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028546, -0.917096, -0.397642,
		-0.631370, -0.324949, 0.704116,
		-0.774956, 0.230959, -0.588304,
		30.201998, 41.314621, 42.366795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425964, 40.539478, 42.688210>,  <30.744467, 41.152950, 42.778606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425964, 40.539478, 42.688210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275768, 40.740036, 42.376411>,  <30.185652, 40.860371, 42.189331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275768, 40.740036, 42.376411>,  <30.425964, 40.539478, 42.688210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275768, 40.740036, 42.376411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067081, -0.853531, -0.516706,
		-0.924397, -0.141727, 0.354125,
		-0.375488, 0.501397, -0.779494,
		30.163122, 40.890453, 42.142563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781715, 40.169994, 42.468121>,  <30.425964, 40.539478, 42.688210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781715, 40.169994, 42.468121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940432, 40.398010, 42.180340>,  <30.035662, 40.534821, 42.007671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940432, 40.398010, 42.180340>,  <29.781715, 40.169994, 42.468121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940432, 40.398010, 42.180340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065598, -0.764184, -0.641654,
		-0.915562, 0.301798, -0.265829,
		0.396792, 0.570035, -0.719455,
		30.059469, 40.569019, 41.964504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407362, 40.011177, 41.882629>,  <29.781715, 40.169994, 42.468121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407362, 40.011177, 41.882629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723806, 40.189541, 41.715149>,  <29.913673, 40.296558, 41.614658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723806, 40.189541, 41.715149>,  <29.407362, 40.011177, 41.882629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723806, 40.189541, 41.715149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184306, -0.826481, -0.531939,
		-0.583247, 0.343652, -0.736021,
		0.791110, 0.445905, -0.418705,
		29.961140, 40.323311, 41.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668903, 40.013287, 41.683292>,  <29.407362, 40.011177, 41.882629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668903, 40.013287, 41.683292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559763, 39.640633, 41.779305>,  <28.494278, 39.417042, 41.836914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559763, 39.640633, 41.779305>,  <28.668903, 40.013287, 41.683292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559763, 39.640633, 41.779305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, 0.290985, 0.942493,
		-0.947902, 0.217693, -0.232575,
		-0.272850, -0.931632, 0.240032,
		28.477907, 39.361145, 41.851315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108421, 40.169838, 42.099808>,  <28.668903, 40.013287, 41.683292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108421, 40.169838, 42.099808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212835, 39.795589, 42.194870>,  <28.275484, 39.571041, 42.251907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.212835, 39.795589, 42.194870>,  <28.108421, 40.169838, 42.099808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212835, 39.795589, 42.194870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260813, 0.168680, 0.950539,
		-0.929429, -0.310106, -0.199990,
		0.261033, -0.935618, 0.237655,
		28.291145, 39.514904, 42.266167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539162, 39.806698, 42.367584>,  <28.108421, 40.169838, 42.099808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539162, 39.806698, 42.367584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.871723, 39.635044, 42.508789>,  <28.071260, 39.532051, 42.593510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.871723, 39.635044, 42.508789>,  <27.539162, 39.806698, 42.367584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871723, 39.635044, 42.508789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261642, 0.258127, 0.930007,
		-0.490219, -0.865572, 0.102328,
		0.831402, -0.429134, 0.353009,
		28.121143, 39.506306, 42.614693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336098, 39.340645, 42.860706>,  <27.539162, 39.806698, 42.367584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336098, 39.340645, 42.860706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.722256, 39.407192, 42.941044>,  <27.953951, 39.447121, 42.989246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.722256, 39.407192, 42.941044>,  <27.336098, 39.340645, 42.860706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722256, 39.407192, 42.941044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214778, 0.070313, 0.974129,
		0.147944, -0.983553, 0.103612,
		0.965393, 0.166370, 0.200844,
		28.011873, 39.457104, 43.001297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482006, 39.059608, 43.450123>,  <27.336098, 39.340645, 42.860706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482006, 39.059608, 43.450123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.795168, 39.307560, 43.428925>,  <27.983065, 39.456329, 43.416206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.795168, 39.307560, 43.428925>,  <27.482006, 39.059608, 43.450123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795168, 39.307560, 43.428925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203974, 0.336223, 0.919428,
		0.587754, -0.709015, 0.389670,
		0.782905, 0.619880, -0.052996,
		28.030039, 39.493523, 43.413025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721636, 38.973587, 44.117756>,  <27.482006, 39.059608, 43.450123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721636, 38.973587, 44.117756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.889444, 39.305134, 43.969707>,  <27.990129, 39.504063, 43.880878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.889444, 39.305134, 43.969707>,  <27.721636, 38.973587, 44.117756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889444, 39.305134, 43.969707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002992, 0.406469, 0.913660,
		0.907740, -0.384409, 0.168043,
		0.419523, 0.828862, -0.370118,
		28.015301, 39.553791, 43.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308651, 39.228264, 44.545513>,  <27.721636, 38.973587, 44.117756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308651, 39.228264, 44.545513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167486, 39.549793, 44.353958>,  <28.082788, 39.742710, 44.239025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167486, 39.549793, 44.353958>,  <28.308651, 39.228264, 44.545513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167486, 39.549793, 44.353958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000331, 0.511707, 0.859160,
		0.935657, 0.303365, -0.180320,
		-0.352911, 0.803819, -0.478883,
		28.061613, 39.790939, 44.210293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856554, 38.918785, 44.890442>,  <28.308651, 39.228264, 44.545513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856554, 38.918785, 44.890442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.694288, 38.651550, 45.139954>,  <28.596930, 38.491211, 45.289661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.694288, 38.651550, 45.139954>,  <28.856554, 38.918785, 44.890442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694288, 38.651550, 45.139954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223075, -0.589453, -0.776390,
		0.886383, -0.454104, 0.090087,
		-0.405664, -0.668083, 0.623780,
		28.572590, 38.451126, 45.327087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991386, 38.210323, 44.710682>,  <28.856554, 38.918785, 44.890442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991386, 38.210323, 44.710682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698111, 38.101318, 44.959892>,  <28.522144, 38.035915, 45.109421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698111, 38.101318, 44.959892>,  <28.991386, 38.210323, 44.710682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698111, 38.101318, 44.959892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350603, -0.633544, -0.689710,
		0.582673, -0.724125, 0.368964,
		-0.733191, -0.272516, 0.623030,
		28.478153, 38.019562, 45.146801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066561, 37.482731, 44.867558>,  <28.991386, 38.210323, 44.710682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066561, 37.482731, 44.867558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.685879, 37.588280, 44.930328>,  <28.457470, 37.651608, 44.967991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.685879, 37.588280, 44.930328>,  <29.066561, 37.482731, 44.867558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685879, 37.588280, 44.930328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298833, -0.679012, -0.670554,
		-0.070386, -0.685065, 0.725073,
		-0.951706, 0.263873, 0.156927,
		28.400368, 37.667442, 44.977406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709005, 36.852158, 44.827198>,  <29.066561, 37.482731, 44.867558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709005, 36.852158, 44.827198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.428747, 37.133774, 44.780853>,  <28.260592, 37.302742, 44.753044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.428747, 37.133774, 44.780853>,  <28.709005, 36.852158, 44.827198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428747, 37.133774, 44.780853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429911, -0.546160, -0.718947,
		-0.569455, -0.453908, 0.685338,
		-0.700640, 0.704043, -0.115874,
		28.218554, 37.344986, 44.746094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154600, 36.457809, 44.713898>,  <28.709005, 36.852158, 44.827198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154600, 36.457809, 44.713898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.029669, 36.810360, 44.572117>,  <27.954710, 37.021889, 44.487049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.029669, 36.810360, 44.572117>,  <28.154600, 36.457809, 44.713898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029669, 36.810360, 44.572117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461501, -0.466899, -0.754335,
		-0.830343, -0.072020, 0.552580,
		-0.312326, 0.881373, -0.354449,
		27.935970, 37.074772, 44.465782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447107, 36.288292, 44.459560>,  <28.154600, 36.457809, 44.713898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447107, 36.288292, 44.459560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.577047, 36.620026, 44.277710>,  <27.655010, 36.819065, 44.168602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.577047, 36.620026, 44.277710>,  <27.447107, 36.288292, 44.459560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577047, 36.620026, 44.277710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423946, -0.302006, -0.853851,
		-0.845425, 0.470109, 0.253485,
		0.324849, 0.829331, -0.454624,
		27.674501, 36.868824, 44.141323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891935, 36.540562, 44.080322>,  <27.447107, 36.288292, 44.459560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891935, 36.540562, 44.080322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.199898, 36.730530, 43.909821>,  <27.384676, 36.844509, 43.807518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.199898, 36.730530, 43.909821>,  <26.891935, 36.540562, 44.080322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199898, 36.730530, 43.909821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344262, -0.253325, -0.904052,
		-0.537332, 0.842781, -0.031541,
		0.769908, 0.474917, -0.426257,
		27.430870, 36.873005, 43.781944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.916441, 41.097294, 47.157917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910433, 41.298790, 46.812428>,  <31.906828, 41.419685, 46.605133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910433, 41.298790, 46.812428>,  <31.916441, 41.097294, 47.157917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910433, 41.298790, 46.812428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090247, -0.859616, -0.502908,
		-0.995806, -0.085502, -0.032550,
		-0.015019, 0.503737, -0.863727,
		31.905928, 41.449909, 46.553310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577114, 40.564968, 46.719982>,  <31.916441, 41.097294, 47.157917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577114, 40.564968, 46.719982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762981, 40.819916, 46.474106>,  <31.874502, 40.972885, 46.326580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762981, 40.819916, 46.474106>,  <31.577114, 40.564968, 46.719982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762981, 40.819916, 46.474106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099169, -0.727277, -0.679141,
		-0.879915, 0.254616, -0.401149,
		0.464667, 0.637368, -0.614692,
		31.902382, 41.011127, 46.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394484, 40.249931, 46.042339>,  <31.577114, 40.564968, 46.719982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394484, 40.249931, 46.042339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713438, 40.486839, 45.996044>,  <31.904810, 40.628983, 45.968269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713438, 40.486839, 45.996044>,  <31.394484, 40.249931, 46.042339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713438, 40.486839, 45.996044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389175, -0.651257, -0.651465,
		-0.461215, 0.474428, -0.749799,
		0.797385, 0.592269, -0.115734,
		31.952654, 40.664520, 45.961323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589323, 40.358589, 45.291748>,  <31.394484, 40.249931, 46.042339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589323, 40.358589, 45.291748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920723, 40.409977, 45.509769>,  <32.119564, 40.440807, 45.640583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920723, 40.409977, 45.509769>,  <31.589323, 40.358589, 45.291748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920723, 40.409977, 45.509769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509307, -0.577502, -0.638043,
		0.232806, 0.806219, -0.543887,
		0.828498, 0.128465, 0.545058,
		32.169273, 40.448517, 45.673286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098427, 40.481258, 44.795536>,  <31.589323, 40.358589, 45.291748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098427, 40.481258, 44.795536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324814, 40.400105, 45.115166>,  <32.460648, 40.351414, 45.306942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324814, 40.400105, 45.115166>,  <32.098427, 40.481258, 44.795536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324814, 40.400105, 45.115166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615129, -0.541401, -0.573150,
		0.548901, 0.815919, -0.181618,
		0.565972, -0.202884, 0.799071,
		32.494606, 40.339241, 45.354885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636345, 40.611664, 44.527870>,  <32.098427, 40.481258, 44.795536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636345, 40.611664, 44.527870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753403, 40.387753, 44.837967>,  <32.823639, 40.253407, 45.024025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.753403, 40.387753, 44.837967>,  <32.636345, 40.611664, 44.527870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753403, 40.387753, 44.837967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663628, -0.464805, -0.586135,
		0.688443, 0.686006, 0.235461,
		0.292649, -0.559779, 0.775244,
		32.841198, 40.219818, 45.070541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349380, 40.561436, 44.412796>,  <32.636345, 40.611664, 44.527870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349380, 40.561436, 44.412796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271229, 40.271622, 44.677181>,  <33.224339, 40.097733, 44.835812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271229, 40.271622, 44.677181>,  <33.349380, 40.561436, 44.412796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271229, 40.271622, 44.677181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587340, -0.626171, -0.512778,
		0.785403, 0.288026, 0.547890,
		-0.195379, -0.724535, 0.660966,
		33.212616, 40.054260, 44.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003326, 40.285728, 44.593132>,  <33.349380, 40.561436, 44.412796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003326, 40.285728, 44.593132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727554, 40.003777, 44.659859>,  <33.562092, 39.834606, 44.699894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727554, 40.003777, 44.659859>,  <34.003326, 40.285728, 44.593132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727554, 40.003777, 44.659859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509999, -0.635909, -0.579242,
		0.514379, -0.314269, 0.797903,
		-0.689431, -0.704879, 0.166821,
		33.520725, 39.792313, 44.709904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376194, 39.636047, 44.727085>,  <34.003326, 40.285728, 44.593132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376194, 39.636047, 44.727085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004524, 39.538631, 44.615856>,  <33.781521, 39.480183, 44.549118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004524, 39.538631, 44.615856>,  <34.376194, 39.636047, 44.727085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004524, 39.538631, 44.615856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368979, -0.655993, -0.658429,
		-0.022060, -0.714398, 0.699392,
		-0.929176, -0.243536, -0.278069,
		33.725773, 39.465572, 44.532436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355419, 38.875019, 44.751736>,  <34.376194, 39.636047, 44.727085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355419, 38.875019, 44.751736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057003, 38.978973, 44.506496>,  <33.877953, 39.041348, 44.359352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057003, 38.978973, 44.506496>,  <34.355419, 38.875019, 44.751736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057003, 38.978973, 44.506496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211850, -0.780234, -0.588519,
		-0.631306, -0.568942, 0.527027,
		-0.746038, 0.259884, -0.613097,
		33.833191, 39.056938, 44.322567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004135, 38.228603, 44.636497>,  <34.355419, 38.875019, 44.751736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004135, 38.228603, 44.636497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863297, 38.472492, 44.352451>,  <33.778793, 38.618828, 44.182022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863297, 38.472492, 44.352451>,  <34.004135, 38.228603, 44.636497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863297, 38.472492, 44.352451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040150, -0.748162, -0.662301,
		-0.935102, -0.261705, 0.238945,
		-0.352096, 0.609725, -0.710115,
		33.757668, 38.655411, 44.139416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355595, 37.836704, 44.340763>,  <34.004135, 38.228603, 44.636497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355595, 37.836704, 44.340763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521130, 38.104263, 44.093761>,  <33.620449, 38.264801, 43.945560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521130, 38.104263, 44.093761>,  <33.355595, 37.836704, 44.340763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521130, 38.104263, 44.093761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090707, -0.705235, -0.703148,
		-0.905820, 0.234978, -0.352527,
		0.413838, 0.668902, -0.617501,
		33.645283, 38.304935, 43.908512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617641, 37.660057, 44.390678>,  <33.355595, 37.836704, 44.340763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617641, 37.660057, 44.390678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.378613, 37.379951, 44.546902>,  <32.235195, 37.211887, 44.640636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.378613, 37.379951, 44.546902>,  <32.617641, 37.660057, 44.390678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378613, 37.379951, 44.546902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068184, 0.440946, 0.894940,
		-0.798908, 0.561424, -0.215752,
		-0.597576, -0.700264, 0.390555,
		32.199341, 37.169872, 44.664070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961838, 37.977253, 44.721622>,  <32.617641, 37.660057, 44.390678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961838, 37.977253, 44.721622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046337, 37.632881, 44.906734>,  <32.097038, 37.426258, 45.017803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046337, 37.632881, 44.906734>,  <31.961838, 37.977253, 44.721622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046337, 37.632881, 44.906734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057203, 0.483547, 0.873447,
		-0.975757, -0.158043, 0.151397,
		0.211250, -0.860933, 0.462784,
		32.109711, 37.374603, 45.045570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526674, 37.931568, 45.286854>,  <31.961838, 37.977253, 44.721622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526674, 37.931568, 45.286854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.774990, 37.639343, 45.400631>,  <31.923979, 37.464008, 45.468899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.774990, 37.639343, 45.400631>,  <31.526674, 37.931568, 45.286854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774990, 37.639343, 45.400631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080342, 0.301625, 0.950036,
		-0.779851, -0.612623, 0.128550,
		0.620788, -0.730558, 0.284442,
		31.961227, 37.420177, 45.485962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279863, 37.621967, 45.820446>,  <31.526674, 37.931568, 45.286854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279863, 37.621967, 45.820446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.660173, 37.503525, 45.856991>,  <31.888359, 37.432457, 45.878918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.660173, 37.503525, 45.856991>,  <31.279863, 37.621967, 45.820446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660173, 37.503525, 45.856991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000508, 0.293338, 0.956009,
		-0.309884, -0.908995, 0.278748,
		0.950774, -0.296110, 0.091363,
		31.945406, 37.414692, 45.884399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362446, 37.148148, 46.336784>,  <31.279863, 37.621967, 45.820446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362446, 37.148148, 46.336784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.709713, 37.339497, 46.283947>,  <31.918074, 37.454304, 46.252247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.709713, 37.339497, 46.283947>,  <31.362446, 37.148148, 46.336784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709713, 37.339497, 46.283947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061577, 0.160270, 0.985151,
		0.492435, -0.863410, 0.109685,
		0.868168, 0.478369, -0.132089,
		31.970163, 37.483006, 46.244320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603397, 36.948578, 46.925900>,  <31.362446, 37.148148, 46.336784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603397, 36.948578, 46.925900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853806, 37.235725, 46.804073>,  <32.004051, 37.408016, 46.730976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853806, 37.235725, 46.804073>,  <31.603397, 36.948578, 46.925900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853806, 37.235725, 46.804073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110956, 0.304597, 0.945996,
		0.771874, -0.626005, 0.111031,
		0.626018, 0.717870, -0.304570,
		32.041611, 37.451088, 46.712704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357067, 36.986576, 47.282833>,  <31.603397, 36.948578, 46.925900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357067, 36.986576, 47.282833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.300774, 37.355553, 47.139004>,  <32.266998, 37.576939, 47.052704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.300774, 37.355553, 47.139004>,  <32.357067, 36.986576, 47.282833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300774, 37.355553, 47.139004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022643, 0.360096, 0.932641,
		0.989788, 0.139398, -0.029792,
		-0.140736, 0.922442, -0.359575,
		32.258553, 37.632286, 47.031132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818737, 37.418282, 47.716660>,  <32.357067, 36.986576, 47.282833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818737, 37.418282, 47.716660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.552010, 37.662167, 47.545261>,  <32.391972, 37.808498, 47.442421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.552010, 37.662167, 47.545261>,  <32.818737, 37.418282, 47.716660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552010, 37.662167, 47.545261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129065, 0.471814, 0.872200,
		0.733958, 0.636903, -0.235923,
		-0.666819, 0.609709, -0.428494,
		32.351963, 37.845078, 47.416714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999870, 38.101101, 48.008358>,  <32.818737, 37.418282, 47.716660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999870, 38.101101, 48.008358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629295, 38.142704, 47.863644>,  <32.406948, 38.167667, 47.776814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629295, 38.142704, 47.863644>,  <32.999870, 38.101101, 48.008358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629295, 38.142704, 47.863644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291631, 0.409412, 0.864485,
		0.238037, 0.906401, -0.348963,
		-0.926440, 0.104011, -0.361789,
		32.351364, 38.173908, 47.755108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855999, 38.720097, 48.253262>,  <32.999870, 38.101101, 48.008358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855999, 38.720097, 48.253262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496143, 38.571655, 48.161232>,  <32.280231, 38.482590, 48.106014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496143, 38.571655, 48.161232>,  <32.855999, 38.720097, 48.253262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496143, 38.571655, 48.161232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414763, 0.561625, 0.715925,
		-0.136463, 0.739501, -0.659178,
		-0.899639, -0.371100, -0.230077,
		32.226254, 38.460327, 48.092209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458248, 39.226559, 48.490410>,  <32.855999, 38.720097, 48.253262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458248, 39.226559, 48.490410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185810, 38.953876, 48.383530>,  <32.022346, 38.790268, 48.319401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185810, 38.953876, 48.383530>,  <32.458248, 39.226559, 48.490410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185810, 38.953876, 48.383530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663368, 0.420040, 0.619281,
		-0.309930, 0.599041, -0.738305,
		-0.681092, -0.681702, -0.267202,
		31.981482, 38.749367, 48.303368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912125, 39.518639, 48.111980>,  <32.458248, 39.226559, 48.490410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912125, 39.518639, 48.111980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.791142, 39.190620, 48.306316>,  <31.718552, 38.993809, 48.422920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.791142, 39.190620, 48.306316>,  <31.912125, 39.518639, 48.111980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791142, 39.190620, 48.306316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591705, 0.561147, 0.578792,
		-0.747265, -0.112415, -0.654949,
		-0.302457, -0.820047, 0.485842,
		31.700405, 38.944607, 48.452068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184719, 39.451965, 47.995655>,  <31.912125, 39.518639, 48.111980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184719, 39.451965, 47.995655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271391, 39.247856, 48.328564>,  <31.323393, 39.125389, 48.528309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271391, 39.247856, 48.328564>,  <31.184719, 39.451965, 47.995655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271391, 39.247856, 48.328564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637443, 0.571745, 0.516502,
		-0.739403, -0.642437, -0.201389,
		0.216677, -0.510277, 0.832267,
		31.336393, 39.094772, 48.578243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604546, 39.285194, 48.250275>,  <31.184719, 39.451965, 47.995655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604546, 39.285194, 48.250275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833735, 39.266541, 48.577572>,  <30.971249, 39.255348, 48.773952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833735, 39.266541, 48.577572>,  <30.604546, 39.285194, 48.250275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833735, 39.266541, 48.577572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610765, 0.641438, 0.464244,
		-0.546503, -0.765756, 0.339045,
		0.572974, -0.046634, 0.818245,
		31.005627, 39.252552, 48.823044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492638, 38.812569, 47.626690>,  <30.604546, 39.285194, 48.250275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492638, 38.812569, 47.626690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211796, 39.097187, 47.615677>,  <30.043291, 39.267956, 47.609070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211796, 39.097187, 47.615677>,  <30.492638, 38.812569, 47.626690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211796, 39.097187, 47.615677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414834, -0.440142, -0.796359,
		-0.578762, -0.547705, 0.604197,
		-0.702102, 0.711544, -0.027530,
		30.001165, 39.310650, 47.607418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778816, 38.530251, 47.657188>,  <30.492638, 38.812569, 47.626690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778816, 38.530251, 47.657188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.739466, 38.885483, 47.477573>,  <29.715855, 39.098621, 47.369804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.739466, 38.885483, 47.477573>,  <29.778816, 38.530251, 47.657188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739466, 38.885483, 47.477573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562537, -0.421843, -0.711056,
		-0.820898, 0.182648, 0.541079,
		-0.098378, 0.888081, -0.449036,
		29.709953, 39.151909, 47.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093044, 38.545624, 47.482052>,  <29.778816, 38.530251, 47.657188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093044, 38.545624, 47.482052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255451, 38.823799, 47.244896>,  <29.352896, 38.990704, 47.102600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.255451, 38.823799, 47.244896>,  <29.093044, 38.545624, 47.482052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255451, 38.823799, 47.244896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597517, -0.288870, -0.748016,
		-0.691465, 0.657969, 0.298248,
		0.406016, 0.695435, -0.592892,
		29.377256, 39.032429, 47.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513605, 38.788258, 47.300148>,  <29.093044, 38.545624, 47.482052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513605, 38.788258, 47.300148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.809505, 38.888367, 47.050304>,  <28.987045, 38.948433, 46.900398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.809505, 38.888367, 47.050304>,  <28.513605, 38.788258, 47.300148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809505, 38.888367, 47.050304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616791, -0.118820, -0.778107,
		-0.268954, 0.960857, 0.066468,
		0.739752, 0.250272, -0.624604,
		29.031431, 38.963448, 46.862923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209040, 39.286091, 46.823372>,  <28.513605, 38.788258, 47.300148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209040, 39.286091, 46.823372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500935, 39.077518, 46.646465>,  <28.676071, 38.952377, 46.540321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.500935, 39.077518, 46.646465>,  <28.209040, 39.286091, 46.823372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500935, 39.077518, 46.646465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646772, -0.316649, -0.693844,
		0.221747, 0.792367, -0.568315,
		0.729736, -0.521428, -0.442265,
		28.719856, 38.921089, 46.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013552, 39.299881, 46.096230>,  <28.209040, 39.286091, 46.823372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013552, 39.299881, 46.096230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.305704, 39.027969, 46.122871>,  <28.480995, 38.864822, 46.138859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.305704, 39.027969, 46.122871>,  <28.013552, 39.299881, 46.096230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305704, 39.027969, 46.122871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346644, -0.452932, -0.821395,
		0.588540, 0.576843, -0.566456,
		0.730383, -0.679782, 0.066609,
		28.524818, 38.824036, 46.142853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295601, 39.295158, 45.346603>,  <28.013552, 39.299881, 46.096230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295601, 39.295158, 45.346603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.411249, 38.961105, 45.533775>,  <28.480639, 38.760674, 45.646080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.411249, 38.961105, 45.533775>,  <28.295601, 39.295158, 45.346603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411249, 38.961105, 45.533775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184992, -0.528333, -0.828638,
		0.939248, 0.153012, -0.307245,
		0.289120, -0.835135, 0.467930,
		28.497986, 38.710564, 45.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591745, 39.872063, 44.937065>,  <28.295601, 39.295158, 45.346603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591745, 39.872063, 44.937065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.326082, 40.021465, 44.678024>,  <28.166685, 40.111107, 44.522598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.326082, 40.021465, 44.678024>,  <28.591745, 39.872063, 44.937065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326082, 40.021465, 44.678024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217197, 0.732479, 0.645213,
		0.715347, 0.569180, -0.405356,
		-0.664157, 0.373509, -0.647601,
		28.126835, 40.133518, 44.483746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739712, 40.632530, 44.907055>,  <28.591745, 39.872063, 44.937065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739712, 40.632530, 44.907055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.361376, 40.612312, 44.778782>,  <28.134375, 40.600182, 44.701820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.361376, 40.612312, 44.778782>,  <28.739712, 40.632530, 44.907055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361376, 40.612312, 44.778782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236210, 0.784775, 0.573004,
		0.222700, 0.617716, -0.754209,
		-0.945838, -0.050544, -0.320680,
		28.077625, 40.597149, 44.682579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466787, 41.313126, 44.727665>,  <28.739712, 40.632530, 44.907055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466787, 41.313126, 44.727665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.120686, 41.115387, 44.761044>,  <27.913025, 40.996746, 44.781071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.120686, 41.115387, 44.761044>,  <28.466787, 41.313126, 44.727665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120686, 41.115387, 44.761044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377743, 0.752282, 0.539799,
		-0.329620, 0.435542, -0.837648,
		-0.865252, -0.494344, 0.083444,
		27.861111, 40.967083, 44.786076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927826, 41.821472, 44.576954>,  <28.466787, 41.313126, 44.727665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927826, 41.821472, 44.576954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.721573, 41.525566, 44.749870>,  <27.597822, 41.348022, 44.853619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.721573, 41.525566, 44.749870>,  <27.927826, 41.821472, 44.576954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721573, 41.525566, 44.749870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446012, 0.662532, 0.601768,
		-0.731573, 0.117483, -0.671565,
		-0.515630, -0.739763, 0.432291,
		27.566883, 41.303638, 44.879559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160168, 41.978539, 44.621094>,  <27.927826, 41.821472, 44.576954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160168, 41.978539, 44.621094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.254179, 41.717949, 44.909634>,  <27.310585, 41.561596, 45.082756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.254179, 41.717949, 44.909634>,  <27.160168, 41.978539, 44.621094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254179, 41.717949, 44.909634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516371, 0.545059, 0.660509,
		-0.823483, -0.527719, -0.208301,
		0.235027, -0.651478, 0.721345,
		27.324688, 41.522507, 45.126038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518858, 41.938187, 45.013264>,  <27.160168, 41.978539, 44.621094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518858, 41.938187, 45.013264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.813171, 41.818947, 45.256496>,  <26.989759, 41.747402, 45.402435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.813171, 41.818947, 45.256496>,  <26.518858, 41.938187, 45.013264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813171, 41.818947, 45.256496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431376, 0.485868, 0.760162,
		-0.522051, -0.821625, 0.228900,
		0.735784, -0.298101, 0.608078,
		27.033907, 41.729515, 45.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226339, 41.774948, 45.628048>,  <26.518858, 41.938187, 45.013264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226339, 41.774948, 45.628048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.604120, 41.833775, 45.745613>,  <26.830788, 41.869072, 45.816151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.604120, 41.833775, 45.745613>,  <26.226339, 41.774948, 45.628048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604120, 41.833775, 45.745613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325252, 0.546588, 0.771656,
		-0.047164, -0.824386, 0.564059,
		0.944450, 0.147067, 0.293912,
		26.887455, 41.877895, 45.833786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232222, 41.703011, 46.456696>,  <26.226339, 41.774948, 45.628048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232222, 41.703011, 46.456696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.561901, 41.907089, 46.358391>,  <26.759708, 42.029537, 46.299408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.561901, 41.907089, 46.358391>,  <26.232222, 41.703011, 46.456696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561901, 41.907089, 46.358391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154191, 0.619763, 0.769492,
		0.544904, -0.596321, 0.589475,
		0.824199, 0.510191, -0.245765,
		26.809160, 42.060146, 46.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609585, 41.794785, 47.170055>,  <26.232222, 41.703011, 46.456696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609585, 41.794785, 47.170055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.701784, 42.073578, 46.898441>,  <26.757103, 42.240852, 46.735474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.701784, 42.073578, 46.898441>,  <26.609585, 41.794785, 47.170055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701784, 42.073578, 46.898441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341076, 0.711423, 0.614447,
		0.911339, 0.089974, 0.401704,
		0.230497, 0.696981, -0.679035,
		26.770933, 42.282673, 46.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.736874, 33.755463, 34.311279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099266, 33.921589, 34.278496>,  <32.316700, 34.021263, 34.258827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099266, 33.921589, 34.278496>,  <31.736874, 33.755463, 34.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099266, 33.921589, 34.278496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122466, 0.442463, 0.888385,
		0.405216, -0.794824, 0.451725,
		0.905982, 0.415309, -0.081954,
		32.371059, 34.046181, 34.253910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144642, 33.525692, 34.854252>,  <31.736874, 33.755463, 34.311279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144642, 33.525692, 34.854252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267521, 33.884079, 34.725960>,  <32.341248, 34.099113, 34.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267521, 33.884079, 34.725960>,  <32.144642, 33.525692, 34.854252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267521, 33.884079, 34.725960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234413, 0.397882, 0.886984,
		0.922324, -0.197293, 0.332255,
		0.307194, 0.895972, -0.320729,
		32.359680, 34.152870, 34.629742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568844, 33.840611, 35.488701>,  <32.144642, 33.525692, 34.854252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568844, 33.840611, 35.488701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482273, 34.144440, 35.243359>,  <32.430332, 34.326736, 35.096153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482273, 34.144440, 35.243359>,  <32.568844, 33.840611, 35.488701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482273, 34.144440, 35.243359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084310, 0.611357, 0.786851,
		0.972652, 0.222007, -0.068274,
		-0.216426, 0.759576, -0.613355,
		32.417347, 34.372314, 35.059353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869076, 34.531815, 35.836071>,  <32.568844, 33.840611, 35.488701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869076, 34.531815, 35.836071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583935, 34.666908, 35.590218>,  <32.412849, 34.747967, 35.442707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583935, 34.666908, 35.590218>,  <32.869076, 34.531815, 35.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583935, 34.666908, 35.590218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318638, 0.624745, 0.712856,
		0.624745, 0.704008, -0.337737,
		-0.712856, 0.337737, -0.614630,
		32.370079, 34.768230, 35.405830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794941, 35.215485, 35.966293>,  <32.869076, 34.531815, 35.836071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794941, 35.215485, 35.966293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445190, 35.150593, 35.783363>,  <32.235340, 35.111660, 35.673607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445190, 35.150593, 35.783363>,  <32.794941, 35.215485, 35.966293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445190, 35.150593, 35.783363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453866, 0.606825, 0.652509,
		0.171662, 0.778104, -0.604224,
		-0.874378, -0.162225, -0.457324,
		32.182877, 35.101925, 35.646168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487255, 35.837524, 35.880398>,  <32.794941, 35.215485, 35.966293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487255, 35.837524, 35.880398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189980, 35.571491, 35.851185>,  <32.011616, 35.411869, 35.833656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189980, 35.571491, 35.851185>,  <32.487255, 35.837524, 35.880398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189980, 35.571491, 35.851185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576743, 0.581462, 0.573820,
		-0.339175, 0.468576, -0.815719,
		-0.743187, -0.665086, -0.073031,
		31.967024, 35.371967, 35.829277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861153, 36.180973, 35.767677>,  <32.487255, 35.837524, 35.880398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861153, 36.180973, 35.767677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756697, 35.829304, 35.927105>,  <31.694023, 35.618301, 36.022762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756697, 35.829304, 35.927105>,  <31.861153, 36.180973, 35.767677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756697, 35.829304, 35.927105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660933, 0.463781, 0.589979,
		-0.703543, -0.109361, -0.702187,
		-0.261140, -0.879174, 0.398570,
		31.678354, 35.565552, 36.046677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181244, 36.123577, 35.722580>,  <31.861153, 36.180973, 35.767677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181244, 36.123577, 35.722580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270845, 35.873642, 36.021751>,  <31.324606, 35.723682, 36.201256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270845, 35.873642, 36.021751>,  <31.181244, 36.123577, 35.722580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270845, 35.873642, 36.021751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711276, 0.419831, 0.563762,
		-0.666264, -0.658271, -0.350387,
		0.224005, -0.624836, 0.747932,
		31.338047, 35.686192, 36.246132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520992, 35.811409, 35.932892>,  <31.181244, 36.123577, 35.722580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520992, 35.811409, 35.932892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771854, 35.719475, 36.230576>,  <30.922373, 35.664314, 36.409187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771854, 35.719475, 36.230576>,  <30.520992, 35.811409, 35.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771854, 35.719475, 36.230576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675641, 0.314858, 0.666613,
		-0.387535, -0.920890, 0.042176,
		0.627157, -0.229840, 0.744210,
		30.960001, 35.650524, 36.453838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271280, 35.254116, 36.382515>,  <30.520992, 35.811409, 35.932892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271280, 35.254116, 36.382515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524544, 35.479218, 36.595085>,  <30.676502, 35.614281, 36.722630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524544, 35.479218, 36.595085>,  <30.271280, 35.254116, 36.382515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524544, 35.479218, 36.595085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731750, 0.211403, 0.647959,
		0.252301, -0.799130, 0.545652,
		0.633156, 0.562761, 0.531425,
		30.714491, 35.648045, 36.754513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970654, 35.160198, 36.964069>,  <30.271280, 35.254116, 36.382515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970654, 35.160198, 36.964069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223806, 35.464996, 37.018955>,  <30.375698, 35.647877, 37.051888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223806, 35.464996, 37.018955>,  <29.970654, 35.160198, 36.964069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223806, 35.464996, 37.018955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647789, 0.424065, 0.632881,
		0.424065, -0.489422, 0.761994,
		-0.632881, -0.761994, -0.137211,
		30.413671, 35.693596, 37.060120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947914, 35.213459, 37.602997>,  <29.970654, 35.160198, 36.964069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947914, 35.213459, 37.602997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125742, 35.557819, 37.504040>,  <30.232439, 35.764435, 37.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125742, 35.557819, 37.504040>,  <29.947914, 35.213459, 37.602997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125742, 35.557819, 37.504040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511412, 0.470694, 0.718961,
		0.735402, -0.193109, 0.649533,
		0.444569, 0.860905, -0.247391,
		30.259113, 35.816090, 37.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171478, 34.669670, 38.147213>,  <29.947914, 35.213459, 37.602997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171478, 34.669670, 38.147213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874659, 34.483303, 38.339993>,  <29.696566, 34.371483, 38.455662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874659, 34.483303, 38.339993>,  <30.171478, 34.669670, 38.147213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874659, 34.483303, 38.339993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147906, -0.815041, -0.560207,
		0.653822, -0.344419, 0.673715,
		-0.742051, -0.465922, 0.481951,
		29.652042, 34.343525, 38.484577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409283, 33.978703, 38.380119>,  <30.171478, 34.669670, 38.147213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409283, 33.978703, 38.380119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010086, 33.967808, 38.357239>,  <29.770569, 33.961269, 38.343510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010086, 33.967808, 38.357239>,  <30.409283, 33.978703, 38.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010086, 33.967808, 38.357239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059395, -0.716498, -0.695056,
		-0.022054, -0.697057, 0.716677,
		-0.997991, -0.027238, -0.057203,
		29.710690, 33.959637, 38.340076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214298, 33.285431, 38.400211>,  <30.409283, 33.978703, 38.380119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214298, 33.285431, 38.400211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908342, 33.479023, 38.230171>,  <29.724770, 33.595177, 38.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908342, 33.479023, 38.230171>,  <30.214298, 33.285431, 38.400211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908342, 33.479023, 38.230171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022662, -0.679735, -0.733108,
		-0.643763, -0.551112, 0.530890,
		-0.764889, 0.483979, -0.425099,
		29.678875, 33.624218, 38.102642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676229, 32.776680, 38.209721>,  <30.214298, 33.285431, 38.400211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676229, 32.776680, 38.209721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621511, 33.086536, 37.962749>,  <29.588680, 33.272449, 37.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621511, 33.086536, 37.962749>,  <29.676229, 32.776680, 38.209721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621511, 33.086536, 37.962749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027380, -0.620093, -0.784051,
		-0.990221, -0.124159, 0.063615,
		-0.136794, 0.774642, -0.617428,
		29.580473, 33.318928, 37.777519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193645, 32.538486, 37.680889>,  <29.676229, 32.776680, 38.209721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193645, 32.538486, 37.680889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414873, 32.837078, 37.532902>,  <29.547609, 33.016235, 37.444107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414873, 32.837078, 37.532902>,  <29.193645, 32.538486, 37.680889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414873, 32.837078, 37.532902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070153, -0.484221, -0.872129,
		-0.830176, 0.456394, -0.320176,
		0.553070, 0.746482, -0.369971,
		29.580793, 33.061024, 37.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943041, 32.384933, 37.058472>,  <29.193645, 32.538486, 37.680889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943041, 32.384933, 37.058472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224609, 32.664730, 37.009132>,  <29.393551, 32.832607, 36.979530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224609, 32.664730, 37.009132>,  <28.943041, 32.384933, 37.058472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224609, 32.664730, 37.009132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144033, -0.310626, -0.939556,
		-0.695523, 0.643606, -0.319405,
		0.703920, 0.699487, -0.123347,
		29.435785, 32.874577, 36.972130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792875, 32.538750, 36.377495>,  <28.943041, 32.384933, 37.058472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792875, 32.538750, 36.377495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163502, 32.669235, 36.452389>,  <29.385878, 32.747524, 36.497326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163502, 32.669235, 36.452389>,  <28.792875, 32.538750, 36.377495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163502, 32.669235, 36.452389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303269, -0.353482, -0.884917,
		-0.222486, 0.876719, -0.426455,
		0.926568, 0.326212, 0.187237,
		29.441473, 32.767097, 36.508560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085680, 32.827702, 35.696026>,  <28.792875, 32.538750, 36.377495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085680, 32.827702, 35.696026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393505, 32.717995, 35.926697>,  <29.578199, 32.652172, 36.065098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393505, 32.717995, 35.926697>,  <29.085680, 32.827702, 35.696026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393505, 32.717995, 35.926697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457323, -0.393565, -0.797472,
		0.445679, 0.877430, -0.177444,
		0.769562, -0.274268, 0.576673,
		29.624374, 32.635715, 36.099697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649107, 32.964287, 35.322010>,  <29.085680, 32.827702, 35.696026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649107, 32.964287, 35.322010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755470, 32.684666, 35.587528>,  <29.819288, 32.516895, 35.746838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755470, 32.684666, 35.587528>,  <29.649107, 32.964287, 35.322010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755470, 32.684666, 35.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419481, -0.536066, -0.732576,
		0.867945, 0.473247, 0.150694,
		0.265907, -0.699049, 0.663795,
		29.835243, 32.474953, 35.786667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260517, 32.609547, 34.902817>,  <29.649107, 32.964287, 35.322010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260517, 32.609547, 34.902817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195625, 32.372200, 35.218182>,  <30.156691, 32.229790, 35.407402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195625, 32.372200, 35.218182>,  <30.260517, 32.609547, 34.902817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195625, 32.372200, 35.218182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324703, -0.786600, -0.525194,
		0.931799, 0.170796, 0.320281,
		-0.162232, -0.593371, 0.788411,
		30.146955, 32.194187, 35.454704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850134, 32.033264, 35.017673>,  <30.260517, 32.609547, 34.902817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850134, 32.033264, 35.017673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523916, 31.872450, 35.184170>,  <30.328186, 31.775961, 35.284069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523916, 31.872450, 35.184170>,  <30.850134, 32.033264, 35.017673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523916, 31.872450, 35.184170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151989, -0.842830, -0.516272,
		0.558378, -0.357779, 0.748470,
		-0.815545, -0.402034, 0.416239,
		30.279253, 31.751841, 35.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080433, 31.279800, 35.165310>,  <30.850134, 32.033264, 35.017673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080433, 31.279800, 35.165310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681812, 31.312542, 35.170746>,  <30.442640, 31.332188, 35.174007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681812, 31.312542, 35.170746>,  <31.080433, 31.279800, 35.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681812, 31.312542, 35.170746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081516, -0.935227, -0.344537,
		-0.015489, -0.344457, 0.938674,
		-0.996552, 0.081854, 0.013593,
		30.382847, 31.337097, 35.174824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076500, 31.341305, 35.901390>,  <31.080433, 31.279800, 35.165310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076500, 31.341305, 35.901390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307009, 31.080635, 35.704117>,  <31.445314, 30.924232, 35.585754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307009, 31.080635, 35.704117>,  <31.076500, 31.341305, 35.901390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307009, 31.080635, 35.704117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570487, 0.752872, -0.328221,
		0.585198, -0.092211, 0.805630,
		0.576271, -0.651676, -0.493184,
		31.479891, 30.885132, 35.556160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800489, 31.184059, 36.205887>,  <31.076500, 31.341305, 35.901390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800489, 31.184059, 36.205887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763048, 31.160181, 35.808361>,  <31.740583, 31.145855, 35.569843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763048, 31.160181, 35.808361>,  <31.800489, 31.184059, 36.205887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763048, 31.160181, 35.808361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708417, 0.697387, -0.108612,
		0.699560, -0.714204, -0.022994,
		-0.093607, -0.059691, -0.993818,
		31.734966, 31.142273, 35.510216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146229, 30.992386, 36.859806>,  <31.800489, 31.184059, 36.205887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146229, 30.992386, 36.859806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013771, 31.316401, 36.666237>,  <31.934296, 31.510809, 36.550095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013771, 31.316401, 36.666237>,  <32.146229, 30.992386, 36.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013771, 31.316401, 36.666237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911693, -0.406872, -0.057192,
		-0.243221, 0.422250, 0.873240,
		-0.331148, 0.810037, -0.483922,
		31.914427, 31.559412, 36.521061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189438, 30.424976, 36.240536>,  <32.146229, 30.992386, 36.859806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189438, 30.424976, 36.240536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567387, 30.549013, 36.282593>,  <32.794155, 30.623434, 36.307827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567387, 30.549013, 36.282593>,  <32.189438, 30.424976, 36.240536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567387, 30.549013, 36.282593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170336, 0.191271, 0.966644,
		0.279640, -0.931266, 0.233547,
		0.944874, 0.310094, 0.105141,
		32.850849, 30.642040, 36.314137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414795, 30.245415, 36.974327>,  <32.189438, 30.424976, 36.240536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414795, 30.245415, 36.974327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669128, 30.531717, 36.858810>,  <32.821728, 30.703499, 36.789501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669128, 30.531717, 36.858810>,  <32.414795, 30.245415, 36.974327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669128, 30.531717, 36.858810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026533, 0.394218, 0.918634,
		0.771366, -0.576440, 0.269650,
		0.635838, 0.715758, -0.288792,
		32.859879, 30.746445, 36.772175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027695, 30.235622, 37.368423>,  <32.414795, 30.245415, 36.974327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027695, 30.235622, 37.368423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976715, 30.602900, 37.218395>,  <32.946129, 30.823267, 37.128380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976715, 30.602900, 37.218395>,  <33.027695, 30.235622, 37.368423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976715, 30.602900, 37.218395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027271, 0.374765, 0.926719,
		0.991470, 0.128336, -0.022723,
		-0.127447, 0.918194, -0.375068,
		32.938480, 30.878357, 37.105873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445210, 30.629711, 37.863068>,  <33.027695, 30.235622, 37.368423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445210, 30.629711, 37.863068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252346, 30.915249, 37.659916>,  <33.136627, 31.086573, 37.538025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252346, 30.915249, 37.659916>,  <33.445210, 30.629711, 37.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252346, 30.915249, 37.659916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092740, 0.618051, 0.780649,
		0.871160, 0.329297, -0.364202,
		-0.482161, 0.713846, -0.507882,
		33.107697, 31.129402, 37.507553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808361, 31.223377, 37.939705>,  <33.445210, 30.629711, 37.863068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808361, 31.223377, 37.939705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442162, 31.345263, 37.834625>,  <33.222443, 31.418394, 37.771576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442162, 31.345263, 37.834625>,  <33.808361, 31.223377, 37.939705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442162, 31.345263, 37.834625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003697, 0.659307, 0.751865,
		0.402306, 0.687359, -0.604721,
		-0.915498, 0.304715, -0.262702,
		33.167511, 31.436678, 37.755814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803646, 31.946470, 38.019749>,  <33.808361, 31.223377, 37.939705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803646, 31.946470, 38.019749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419220, 31.836201, 38.027241>,  <33.188564, 31.770039, 38.031734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419220, 31.836201, 38.027241>,  <33.803646, 31.946470, 38.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419220, 31.836201, 38.027241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173869, 0.656046, 0.734420,
		-0.214746, 0.702572, -0.678437,
		-0.961069, -0.275673, 0.018728,
		33.130898, 31.753498, 38.032860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553295, 32.549526, 37.974289>,  <33.803646, 31.946470, 38.019749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553295, 32.549526, 37.974289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265099, 32.307526, 38.109859>,  <33.092182, 32.162327, 38.191200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265099, 32.307526, 38.109859>,  <33.553295, 32.549526, 37.974289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265099, 32.307526, 38.109859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236287, 0.673670, 0.700241,
		-0.651972, 0.424431, -0.628325,
		-0.720487, -0.605002, 0.338926,
		33.048954, 32.126026, 38.211536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965870, 32.955379, 38.113338>,  <33.553295, 32.549526, 37.974289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965870, 32.955379, 38.113338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867706, 32.639423, 38.338139>,  <32.808807, 32.449848, 38.473019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867706, 32.639423, 38.338139>,  <32.965870, 32.955379, 38.113338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867706, 32.639423, 38.338139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281288, 0.612806, 0.738476,
		-0.927713, 0.023145, -0.372575,
		-0.245408, -0.789895, 0.561998,
		32.794083, 32.402454, 38.506737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340244, 33.095894, 38.385036>,  <32.965870, 32.955379, 38.113338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340244, 33.095894, 38.385036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516415, 32.833187, 38.629883>,  <32.622116, 32.675564, 38.776791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516415, 32.833187, 38.629883>,  <32.340244, 33.095894, 38.385036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516415, 32.833187, 38.629883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334703, 0.512538, 0.790746,
		-0.833067, -0.553141, 0.005913,
		0.440425, -0.656765, 0.612116,
		32.648540, 32.636158, 38.813519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857780, 32.946800, 38.933311>,  <32.340244, 33.095894, 38.385036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857780, 32.946800, 38.933311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185745, 32.811245, 39.117878>,  <32.382523, 32.729912, 39.228619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185745, 32.811245, 39.117878>,  <31.857780, 32.946800, 38.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185745, 32.811245, 39.117878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414512, 0.204501, 0.886769,
		-0.394871, -0.918334, 0.027201,
		0.819912, -0.338885, 0.461411,
		32.431721, 32.709579, 39.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611967, 32.584763, 39.547684>,  <31.857780, 32.946800, 38.933311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611967, 32.584763, 39.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990973, 32.702766, 39.596977>,  <32.218376, 32.773567, 39.626553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990973, 32.702766, 39.596977>,  <31.611967, 32.584763, 39.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990973, 32.702766, 39.596977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221827, 0.329050, 0.917888,
		0.230229, -0.897051, 0.377220,
		0.947517, 0.295002, 0.123233,
		32.275227, 32.791267, 39.633945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826624, 32.343407, 40.194725>,  <31.611967, 32.584763, 39.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826624, 32.343407, 40.194725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066788, 32.649773, 40.102737>,  <32.210888, 32.833591, 40.047543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066788, 32.649773, 40.102737>,  <31.826624, 32.343407, 40.194725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066788, 32.649773, 40.102737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301002, 0.482872, 0.822334,
		0.740882, -0.424515, 0.520462,
		0.600410, 0.765912, -0.229971,
		32.246910, 32.879547, 40.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043476, 32.516689, 40.795612>,  <31.826624, 32.343407, 40.194725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043476, 32.516689, 40.795612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108768, 32.848373, 40.581783>,  <32.147945, 33.047382, 40.453487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108768, 32.848373, 40.581783>,  <32.043476, 32.516689, 40.795612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108768, 32.848373, 40.581783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170246, 0.557383, 0.812614,
		0.971788, -0.041636, 0.232152,
		0.163231, 0.829211, -0.534569,
		32.157738, 33.097137, 40.421413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376194, 32.918503, 41.267887>,  <32.043476, 32.516689, 40.795612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376194, 32.918503, 41.267887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298382, 33.173264, 40.969486>,  <32.251694, 33.326118, 40.790447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298382, 33.173264, 40.969486>,  <32.376194, 32.918503, 41.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298382, 33.173264, 40.969486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085244, 0.746674, 0.659705,
		0.977185, 0.191927, -0.090962,
		-0.194535, 0.636900, -0.745999,
		32.240021, 33.364334, 40.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862633, 33.470356, 41.422020>,  <32.376194, 32.918503, 41.267887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862633, 33.470356, 41.422020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545277, 33.622719, 41.232098>,  <32.354862, 33.714134, 41.118145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545277, 33.622719, 41.232098>,  <32.862633, 33.470356, 41.422020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545277, 33.622719, 41.232098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191493, 0.584228, 0.788675,
		0.577802, 0.716652, -0.390583,
		-0.793395, 0.380904, -0.474802,
		32.307259, 33.736988, 41.089657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916809, 34.267151, 41.429871>,  <32.862633, 33.470356, 41.422020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916809, 34.267151, 41.429871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539528, 34.147667, 41.371716>,  <32.313160, 34.075977, 41.336823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539528, 34.147667, 41.371716>,  <32.916809, 34.267151, 41.429871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539528, 34.147667, 41.371716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308190, 0.623401, 0.718602,
		-0.124018, 0.722597, -0.680054,
		-0.943206, -0.298705, -0.145384,
		32.256565, 34.058056, 41.328102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519005, 34.875038, 41.406754>,  <32.916809, 34.267151, 41.429871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519005, 34.875038, 41.406754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237160, 34.605888, 41.496868>,  <32.068050, 34.444397, 41.550938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237160, 34.605888, 41.496868>,  <32.519005, 34.875038, 41.406754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237160, 34.605888, 41.496868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388247, 0.631330, 0.671332,
		-0.593954, 0.385565, -0.706087,
		-0.704616, -0.672876, 0.225286,
		32.025776, 34.404026, 41.564453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928730, 35.289661, 41.357883>,  <32.519005, 34.875038, 41.406754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928730, 35.289661, 41.357883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798651, 34.958797, 41.541210>,  <31.720602, 34.760281, 41.651207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798651, 34.958797, 41.541210>,  <31.928730, 35.289661, 41.357883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798651, 34.958797, 41.541210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423053, 0.560709, 0.711781,
		-0.845737, 0.037581, -0.532275,
		-0.325200, -0.827160, 0.458314,
		31.701090, 34.710651, 41.678703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321770, 35.434349, 41.628490>,  <31.928730, 35.289661, 41.357883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321770, 35.434349, 41.628490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476999, 35.137745, 41.847420>,  <31.570137, 34.959782, 41.978779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476999, 35.137745, 41.847420>,  <31.321770, 35.434349, 41.628490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476999, 35.137745, 41.847420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083967, 0.562954, 0.822212,
		-0.917796, -0.365035, 0.156206,
		0.388073, -0.741506, 0.547328,
		31.593422, 34.915295, 42.011620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790016, 35.386204, 42.116497>,  <31.321770, 35.434349, 41.628490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790016, 35.386204, 42.116497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110327, 35.200127, 42.267414>,  <31.302513, 35.088482, 42.357964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110327, 35.200127, 42.267414>,  <30.790016, 35.386204, 42.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110327, 35.200127, 42.267414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147497, 0.457363, 0.876963,
		-0.580516, -0.757903, 0.297632,
		0.800778, -0.465191, 0.377295,
		31.350561, 35.060570, 42.380604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592815, 35.225426, 42.745529>,  <30.790016, 35.386204, 42.116497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592815, 35.225426, 42.745529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991411, 35.200478, 42.767883>,  <31.230568, 35.185509, 42.781296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991411, 35.200478, 42.767883>,  <30.592815, 35.225426, 42.745529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991411, 35.200478, 42.767883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016282, 0.510313, 0.859835,
		-0.082147, -0.857724, 0.507505,
		0.996487, -0.062369, 0.055886,
		31.290358, 35.181767, 42.784649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732008, 35.119606, 43.440228>,  <30.592815, 35.225426, 42.745529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732008, 35.119606, 43.440228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052006, 35.296272, 43.277775>,  <31.244003, 35.402271, 43.180302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052006, 35.296272, 43.277775>,  <30.732008, 35.119606, 43.440228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052006, 35.296272, 43.277775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123625, 0.541022, 0.831873,
		0.587140, -0.715698, 0.378211,
		0.799990, 0.441670, -0.406133,
		31.292004, 35.428772, 43.155937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101109, 35.133060, 43.969547>,  <30.732008, 35.119606, 43.440228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101109, 35.133060, 43.969547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284792, 35.384209, 43.718182>,  <31.395002, 35.534897, 43.567360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284792, 35.384209, 43.718182>,  <31.101109, 35.133060, 43.969547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284792, 35.384209, 43.718182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369452, 0.508345, 0.777875,
		0.807855, -0.589379, 0.001470,
		0.459211, 0.627867, -0.628417,
		31.422556, 35.572571, 43.529655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889866, 35.124252, 44.114811>,  <31.101109, 35.133060, 43.969547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889866, 35.124252, 44.114811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821877, 35.476780, 43.938454>,  <31.781082, 35.688297, 43.832638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821877, 35.476780, 43.938454>,  <31.889866, 35.124252, 44.114811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821877, 35.476780, 43.938454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358428, 0.472054, 0.805416,
		0.917953, -0.021130, -0.396126,
		-0.169975, 0.881316, -0.440897,
		31.770884, 35.741177, 43.806183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350895, 35.614731, 44.314499>,  <31.889866, 35.124252, 44.114811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350895, 35.614731, 44.314499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071342, 35.881054, 44.209991>,  <31.903610, 36.040848, 44.147285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071342, 35.881054, 44.209991>,  <32.350895, 35.614731, 44.314499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071342, 35.881054, 44.209991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215434, 0.544290, 0.810763,
		0.682018, 0.510344, -0.523833,
		-0.698885, 0.665806, -0.261270,
		31.861677, 36.080795, 44.131611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819309, 36.200500, 44.085999>,  <32.350895, 35.614731, 44.314499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819309, 36.200500, 44.085999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465683, 36.387356, 44.080219>,  <32.253506, 36.499470, 44.076752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465683, 36.387356, 44.080219>,  <32.819309, 36.200500, 44.085999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465683, 36.387356, 44.080219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326002, 0.638527, 0.697141,
		0.334892, 0.611606, -0.716788,
		-0.884064, 0.467142, -0.014453,
		32.200462, 36.527500, 44.075882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942070, 37.002167, 44.141861>,  <32.819309, 36.200500, 44.085999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942070, 37.002167, 44.141861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565929, 36.930824, 44.257736>,  <32.340244, 36.888020, 44.327263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565929, 36.930824, 44.257736>,  <32.942070, 37.002167, 44.141861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565929, 36.930824, 44.257736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147852, 0.552649, 0.820195,
		-0.306388, 0.814105, -0.493315,
		-0.940354, -0.178360, 0.289692,
		32.283825, 36.877316, 44.344643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933758, 37.697433, 43.737167>,  <32.942070, 37.002167, 44.141861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933758, 37.697433, 43.737167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264244, 37.893917, 43.626831>,  <33.462536, 38.011806, 43.560631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264244, 37.893917, 43.626831>,  <32.933758, 37.697433, 43.737167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264244, 37.893917, 43.626831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038690, -0.537954, -0.842086,
		-0.562029, 0.685069, -0.463469,
		0.826212, 0.491208, -0.275840,
		33.512108, 38.041279, 43.544079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918549, 37.555222, 43.050507>,  <32.933758, 37.697433, 43.737167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918549, 37.555222, 43.050507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291233, 37.698547, 43.074272>,  <33.514843, 37.784542, 43.088531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291233, 37.698547, 43.074272>,  <32.918549, 37.555222, 43.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291233, 37.698547, 43.074272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243800, -0.495720, -0.833560,
		-0.269224, 0.791120, -0.549224,
		0.931708, 0.358315, 0.059416,
		33.570747, 37.806042, 43.092098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138718, 37.710064, 42.407112>,  <32.918549, 37.555222, 43.050507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138718, 37.710064, 42.407112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493763, 37.653442, 42.582432>,  <33.706791, 37.619469, 42.687622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493763, 37.653442, 42.582432>,  <33.138718, 37.710064, 42.407112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493763, 37.653442, 42.582432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332933, -0.460385, -0.822922,
		0.318272, 0.876361, -0.361517,
		0.887614, -0.141552, 0.438297,
		33.760048, 37.610977, 42.713921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596684, 37.834827, 41.923584>,  <33.138718, 37.710064, 42.407112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596684, 37.834827, 41.923584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815331, 37.635605, 42.192852>,  <33.946518, 37.516071, 42.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815331, 37.635605, 42.192852>,  <33.596684, 37.834827, 41.923584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815331, 37.635605, 42.192852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349684, -0.594685, -0.723928,
		0.760878, 0.631105, -0.150902,
		0.546614, -0.498052, 0.673170,
		33.979313, 37.486191, 42.394802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239429, 37.749599, 41.695049>,  <33.596684, 37.834827, 41.923584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239429, 37.749599, 41.695049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225761, 37.445259, 41.954258>,  <34.217560, 37.262653, 42.109783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225761, 37.445259, 41.954258>,  <34.239429, 37.749599, 41.695049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225761, 37.445259, 41.954258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569588, -0.547621, -0.612929,
		0.821220, 0.348162, 0.452085,
		-0.034173, -0.760851, 0.648026,
		34.215511, 37.217003, 42.148666>
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
