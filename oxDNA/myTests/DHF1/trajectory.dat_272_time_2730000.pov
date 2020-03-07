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
	<2.899503, 2.166313, 2.007779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.556164, 2.036453, 2.166695>,  <2.350160, 1.958537, 2.262044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.556164, 2.036453, 2.166695>,  <2.899503, 2.166313, 2.007779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.556164, 2.036453, 2.166695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160809, -0.905560, -0.392557,
		0.487213, -0.273063, 0.829494,
		-0.858349, -0.324649, 0.397290,
		2.298659, 1.939059, 2.285882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.075552, 1.474767, 2.221007>,  <2.899503, 2.166313, 2.007779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.075552, 1.474767, 2.221007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.682575, 1.532791, 2.174080>,  <2.446789, 1.567605, 2.145924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.682575, 1.532791, 2.174080>,  <3.075552, 1.474767, 2.221007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.682575, 1.532791, 2.174080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102387, -0.944901, -0.310932,
		-0.155957, -0.293461, 0.943164,
		-0.982443, 0.145060, -0.117318,
		2.387842, 1.576309, 2.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.642333, 0.989671, 2.643999>,  <3.075552, 1.474767, 2.221007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.642333, 0.989671, 2.643999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489391, 1.098206, 2.290688>,  <2.397626, 1.163327, 2.078701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.489391, 1.098206, 2.290688>,  <2.642333, 0.989671, 2.643999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.489391, 1.098206, 2.290688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071032, -0.944453, -0.320878,
		-0.921280, -0.185431, 0.341845,
		-0.382357, 0.271337, -0.883278,
		2.374685, 1.179607, 2.025704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.999563, 0.647716, 2.417791>,  <2.642333, 0.989671, 2.643999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.999563, 0.647716, 2.417791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220200, 0.731842, 2.094925>,  <2.352582, 0.782318, 1.901206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220200, 0.731842, 2.094925>,  <1.999563, 0.647716, 2.417791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.220200, 0.731842, 2.094925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132935, -0.977487, -0.163852,
		-0.823453, -0.016920, -0.567132,
		0.551591, 0.210316, -0.807164,
		2.385677, 0.794937, 1.852776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770638, 0.428994, 1.760632>,  <1.999563, 0.647716, 2.417791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770638, 0.428994, 1.760632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170494, 0.433060, 1.770554>,  <2.410408, 0.435499, 1.776507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170494, 0.433060, 1.770554>,  <1.770638, 0.428994, 1.760632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.170494, 0.433060, 1.770554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014115, -0.986242, -0.164702,
		0.022790, 0.164993, -0.986031,
		0.999641, 0.010164, 0.024805,
		2.470386, 0.436109, 1.777995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.027227, -0.182506, 1.384121>,  <1.770638, 0.428994, 1.760632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.027227, -0.182506, 1.384121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.386028, -0.083664, 1.530724>,  <2.601309, -0.024359, 1.618685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.386028, -0.083664, 1.530724>,  <2.027227, -0.182506, 1.384121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.386028, -0.083664, 1.530724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333254, -0.922774, -0.193468,
		0.290395, 0.295681, -0.910079,
		0.897002, 0.247105, 0.366505,
		2.655129, -0.009532, 1.640675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.519260, -0.554077, 0.979089>,  <2.027227, -0.182506, 1.384121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.519260, -0.554077, 0.979089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.749561, -0.444595, 1.287270>,  <2.887742, -0.378906, 1.472178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.749561, -0.444595, 1.287270>,  <2.519260, -0.554077, 0.979089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.749561, -0.444595, 1.287270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293584, -0.948669, 0.117623,
		0.763097, 0.158471, -0.626554,
		0.575752, 0.273704, 0.770451,
		2.922287, -0.362484, 1.518405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263413, -0.855037, 0.802597>,  <2.519260, -0.554077, 0.979089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263413, -0.855037, 0.802597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.230614, -0.778687, 1.193871>,  <3.210934, -0.732876, 1.428635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.230614, -0.778687, 1.193871>,  <3.263413, -0.855037, 0.802597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.230614, -0.778687, 1.193871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576076, -0.791837, 0.202804,
		0.813273, 0.580138, -0.045030,
		-0.081998, 0.190876, 0.978183,
		3.206014, -0.721424, 1.487326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.708436, 2.581410, 3.699490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.695322, 2.264938, 3.455208>,  <3.687453, 2.075055, 3.308639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.695322, 2.264938, 3.455208>,  <3.708436, 2.581410, 3.699490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.695322, 2.264938, 3.455208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995154, -0.030832, 0.093370,
		-0.092702, 0.610806, -0.786335,
		-0.032786, -0.791180, -0.610705,
		3.685486, 2.027584, 3.271996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.096979, 2.748471, 3.205236>,  <3.708436, 2.581410, 3.699490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.096979, 2.748471, 3.205236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149302, 2.357254, 3.270134>,  <3.180696, 2.122524, 3.309073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149302, 2.357254, 3.270134>,  <3.096979, 2.748471, 3.205236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.149302, 2.357254, 3.270134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990602, -0.122342, 0.061164,
		-0.039972, -0.168721, -0.984853,
		0.130808, -0.978041, 0.162245,
		3.188545, 2.063842, 3.318808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.711362, 3.192613, 2.627875>,  <3.096979, 2.748471, 3.205236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.711362, 3.192613, 2.627875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015233, 3.399567, 2.470291>,  <3.197556, 3.523739, 2.375741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015233, 3.399567, 2.470291>,  <2.711362, 3.192613, 2.627875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015233, 3.399567, 2.470291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644292, 0.680981, -0.348069,
		0.088193, 0.518244, 0.850673,
		0.759677, 0.517385, -0.393958,
		3.243136, 3.554782, 2.352104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.630355, 3.926599, 2.523873>,  <2.711362, 3.192613, 2.627875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.630355, 3.926599, 2.523873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.972867, 3.966736, 2.321205>,  <3.178374, 3.990818, 2.199604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.972867, 3.966736, 2.321205>,  <2.630355, 3.926599, 2.523873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.972867, 3.966736, 2.321205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268420, 0.924533, -0.270536,
		0.441287, 0.367655, 0.818593,
		0.856280, 0.100343, -0.506670,
		3.229751, 3.996839, 2.169204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.235791, 4.413465, 2.737284>,  <2.630355, 3.926599, 2.523873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.235791, 4.413465, 2.737284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.221511, 4.381378, 2.338829>,  <3.212943, 4.362126, 2.099756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.221511, 4.381378, 2.338829>,  <3.235791, 4.413465, 2.737284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.221511, 4.381378, 2.338829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154680, 0.985205, -0.073794,
		0.987320, 0.151448, -0.047579,
		-0.035700, -0.080217, -0.996138,
		3.210801, 4.357313, 2.039988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.572603, 5.002551, 2.573843>,  <3.235791, 4.413465, 2.737284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.572603, 5.002551, 2.573843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.366362, 4.884735, 2.251999>,  <3.242617, 4.814045, 2.058892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.366362, 4.884735, 2.251999>,  <3.572603, 5.002551, 2.573843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.366362, 4.884735, 2.251999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251663, 0.949698, -0.186384,
		0.819035, 0.106390, -0.563793,
		-0.515604, -0.294540, -0.804611,
		3.211681, 4.796373, 2.010616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.805993, 5.386440, 2.020581>,  <3.572603, 5.002551, 2.573843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.805993, 5.386440, 2.020581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.445363, 5.263077, 1.899223>,  <3.228985, 5.189059, 1.826409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.445363, 5.263077, 1.899223>,  <3.805993, 5.386440, 2.020581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.445363, 5.263077, 1.899223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231004, 0.936129, -0.265142,
		0.365787, -0.168960, -0.915234,
		-0.901575, -0.308407, -0.303393,
		3.174891, 5.170555, 1.808205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.570302, 5.685593, 1.337159>,  <3.805993, 5.386440, 2.020581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.570302, 5.685593, 1.337159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253735, 5.591858, 1.562988>,  <3.063795, 5.535617, 1.698486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.253735, 5.591858, 1.562988>,  <3.570302, 5.685593, 1.337159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.253735, 5.591858, 1.562988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311865, 0.949143, -0.043214,
		-0.525734, -0.210271, -0.824251,
		-0.791419, -0.234336, 0.564573,
		3.016309, 5.521557, 1.732360>
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
