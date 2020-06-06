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
	<24.420645, 34.647015, 34.774345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548836, 34.657890, 35.153091>,  <24.625750, 34.664417, 35.380341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548836, 34.657890, 35.153091>,  <24.420645, 34.647015, 34.774345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548836, 34.657890, 35.153091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783581, -0.569270, -0.248865,
		0.532256, 0.821701, -0.203741,
		0.320476, 0.027188, 0.946866,
		24.644979, 34.666046, 35.437153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043716, 34.970398, 34.768818>,  <24.420645, 34.647015, 34.774345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043716, 34.970398, 34.768818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030813, 34.770813, 35.115227>,  <25.023071, 34.651062, 35.323071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030813, 34.770813, 35.115227>,  <25.043716, 34.970398, 34.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030813, 34.770813, 35.115227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957552, -0.263760, -0.116298,
		0.286450, 0.825510, 0.486291,
		-0.032259, -0.498963, 0.866023,
		25.021135, 34.621124, 35.375034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602886, 35.233898, 35.208672>,  <25.043716, 34.970398, 34.768818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602886, 35.233898, 35.208672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472380, 34.856796, 35.236275>,  <25.394075, 34.630535, 35.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472380, 34.856796, 35.236275>,  <25.602886, 35.233898, 35.208672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472380, 34.856796, 35.236275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877569, -0.329218, -0.348551,
		0.351318, -0.053161, 0.934746,
		-0.326264, -0.942756, 0.069008,
		25.374500, 34.573971, 35.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118233, 34.821537, 35.438675>,  <25.602886, 35.233898, 35.208672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118233, 34.821537, 35.438675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895069, 34.545414, 35.254410>,  <25.761171, 34.379738, 35.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895069, 34.545414, 35.254410>,  <26.118233, 34.821537, 35.438675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895069, 34.545414, 35.254410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829897, -0.466033, -0.306732,
		-0.002944, -0.553431, 0.832890,
		-0.557909, -0.690310, -0.460662,
		25.727695, 34.338322, 35.116211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282234, 34.203682, 35.577793>,  <26.118233, 34.821537, 35.438675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282234, 34.203682, 35.577793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139721, 34.122898, 35.212875>,  <26.054213, 34.074429, 34.993927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139721, 34.122898, 35.212875>,  <26.282234, 34.203682, 35.577793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139721, 34.122898, 35.212875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836201, -0.504580, -0.214867,
		-0.416929, -0.839411, 0.348652,
		-0.356285, -0.201959, -0.912290,
		26.032835, 34.062309, 34.939190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146282, 33.480286, 35.289017>,  <26.282234, 34.203682, 35.577793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146282, 33.480286, 35.289017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261572, 33.733189, 35.001354>,  <26.330746, 33.884930, 34.828758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261572, 33.733189, 35.001354>,  <26.146282, 33.480286, 35.289017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261572, 33.733189, 35.001354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776578, -0.593728, -0.210747,
		-0.560227, -0.497737, -0.662121,
		0.288223, 0.632254, -0.719154,
		26.348040, 33.922863, 34.785606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335163, 32.906342, 35.710659>,  <26.146282, 33.480286, 35.289017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335163, 32.906342, 35.710659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706060, 32.849281, 35.572166>,  <26.928598, 32.815044, 35.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706060, 32.849281, 35.572166>,  <26.335163, 32.906342, 35.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706060, 32.849281, 35.572166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118413, 0.765460, -0.632495,
		0.355247, 0.627474, 0.692875,
		0.927242, -0.142647, -0.346229,
		26.984234, 32.806488, 35.468296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836592, 33.491913, 35.687721>,  <26.335163, 32.906342, 35.710659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836592, 33.491913, 35.687721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916668, 33.246414, 35.382240>,  <26.964714, 33.099113, 35.198952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916668, 33.246414, 35.382240>,  <26.836592, 33.491913, 35.687721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916668, 33.246414, 35.382240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174728, 0.744619, -0.644215,
		0.964051, 0.262405, 0.041827,
		0.200191, -0.613747, -0.763700,
		26.976725, 33.062290, 35.153130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162191, 33.819958, 35.165524>,  <26.836592, 33.491913, 35.687721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162191, 33.819958, 35.165524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073887, 33.514847, 34.922401>,  <27.020905, 33.331779, 34.776527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073887, 33.514847, 34.922401>,  <27.162191, 33.819958, 35.165524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073887, 33.514847, 34.922401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214805, 0.645906, -0.732573,
		0.951380, -0.031162, -0.306439,
		-0.220760, -0.762780, -0.607809,
		27.007658, 33.286015, 34.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579220, 33.897514, 34.620144>,  <27.162191, 33.819958, 35.165524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579220, 33.897514, 34.620144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274080, 33.665958, 34.504936>,  <27.090998, 33.527027, 34.435810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274080, 33.665958, 34.504936>,  <27.579220, 33.897514, 34.620144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274080, 33.665958, 34.504936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100448, 0.546149, -0.831644,
		0.638731, -0.605484, -0.474776,
		-0.762846, -0.578887, -0.288022,
		27.045227, 33.492294, 34.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772709, 33.576401, 34.123066>,  <27.579220, 33.897514, 34.620144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772709, 33.576401, 34.123066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383408, 33.552826, 34.034245>,  <27.149828, 33.538681, 33.980953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383408, 33.552826, 34.034245>,  <27.772709, 33.576401, 34.123066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383408, 33.552826, 34.034245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150185, 0.568186, -0.809079,
		0.173853, -0.820787, -0.544136,
		-0.973252, -0.058940, -0.222050,
		27.091433, 33.535145, 33.967628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705437, 33.358429, 33.371990>,  <27.772709, 33.576401, 34.123066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705437, 33.358429, 33.371990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352003, 33.510860, 33.480850>,  <27.139944, 33.602318, 33.546165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352003, 33.510860, 33.480850>,  <27.705437, 33.358429, 33.371990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352003, 33.510860, 33.480850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066042, 0.473954, -0.878070,
		-0.463596, -0.793820, -0.393610,
		-0.883582, 0.381075, 0.272149,
		27.086929, 33.625183, 33.562496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161135, 33.048504, 32.864986>,  <27.705437, 33.358429, 33.371990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161135, 33.048504, 32.864986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064264, 33.408276, 33.010521>,  <27.006142, 33.624138, 33.097843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064264, 33.408276, 33.010521>,  <27.161135, 33.048504, 32.864986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064264, 33.408276, 33.010521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275942, 0.295666, -0.914570,
		-0.930166, -0.321883, 0.176588,
		-0.242174, 0.899429, 0.363839,
		26.991611, 33.678104, 33.119671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619297, 33.257610, 32.394093>,  <27.161135, 33.048504, 32.864986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619297, 33.257610, 32.394093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675936, 33.602829, 32.588043>,  <26.709919, 33.809959, 32.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675936, 33.602829, 32.588043>,  <26.619297, 33.257610, 32.394093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675936, 33.602829, 32.588043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203048, 0.504720, -0.839064,
		-0.968877, 0.020355, 0.246705,
		0.141596, 0.863043, 0.484878,
		26.718414, 33.861740, 32.733505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087315, 33.735546, 32.169708>,  <26.619297, 33.257610, 32.394093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087315, 33.735546, 32.169708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372286, 33.977421, 32.312141>,  <26.543268, 34.122547, 32.397602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372286, 33.977421, 32.312141>,  <26.087315, 33.735546, 32.169708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372286, 33.977421, 32.312141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166542, 0.638627, -0.751279,
		-0.681697, 0.475928, 0.555681,
		0.712428, 0.604688, 0.356088,
		26.586014, 34.158829, 32.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762501, 34.413296, 32.165302>,  <26.087315, 33.735546, 32.169708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762501, 34.413296, 32.165302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159472, 34.462437, 32.164883>,  <26.397654, 34.491920, 32.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159472, 34.462437, 32.164883>,  <25.762501, 34.413296, 32.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159472, 34.462437, 32.164883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082934, 0.663618, -0.743460,
		-0.090634, 0.737916, 0.668779,
		0.992425, 0.122848, -0.001052,
		26.457199, 34.499290, 32.164566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873985, 35.151363, 32.067436>,  <25.762501, 34.413296, 32.165302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873985, 35.151363, 32.067436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214708, 34.974621, 31.954876>,  <26.419142, 34.868576, 31.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214708, 34.974621, 31.954876>,  <25.873985, 35.151363, 32.067436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214708, 34.974621, 31.954876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022520, 0.567559, -0.823025,
		0.523369, 0.694723, 0.493402,
		0.851809, -0.441857, -0.281398,
		26.470251, 34.842064, 31.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253897, 35.709431, 31.888369>,  <25.873985, 35.151363, 32.067436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253897, 35.709431, 31.888369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444090, 35.392754, 31.734936>,  <26.558207, 35.202747, 31.642876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444090, 35.392754, 31.734936>,  <26.253897, 35.709431, 31.888369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444090, 35.392754, 31.734936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109532, 0.485910, -0.867118,
		0.872879, 0.370286, 0.317758,
		0.475484, -0.791694, -0.383583,
		26.586735, 35.155247, 31.619862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858778, 35.959167, 31.593267>,  <26.253897, 35.709431, 31.888369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858778, 35.959167, 31.593267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840164, 35.598225, 31.421883>,  <26.828997, 35.381657, 31.319052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840164, 35.598225, 31.421883>,  <26.858778, 35.959167, 31.593267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840164, 35.598225, 31.421883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246553, 0.405279, -0.880319,
		0.968012, -0.146602, 0.203621,
		-0.046533, -0.902362, -0.428460,
		26.826204, 35.327515, 31.293344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365465, 36.036282, 31.142365>,  <26.858778, 35.959167, 31.593267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365465, 36.036282, 31.142365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154238, 35.732807, 30.989767>,  <27.027500, 35.550724, 30.898209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154238, 35.732807, 30.989767>,  <27.365465, 36.036282, 31.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154238, 35.732807, 30.989767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330270, 0.230388, -0.915338,
		0.782345, -0.609359, 0.128910,
		-0.528071, -0.758685, -0.381496,
		26.995817, 35.505203, 30.875319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813473, 35.411266, 30.874022>,  <27.365465, 36.036282, 31.142365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813473, 35.411266, 30.874022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476030, 35.419559, 30.659397>,  <27.273565, 35.424538, 30.530622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476030, 35.419559, 30.659397>,  <27.813473, 35.411266, 30.874022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476030, 35.419559, 30.659397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536172, -0.021607, -0.843832,
		-0.029114, -0.999551, 0.007095,
		-0.843607, 0.020763, -0.536560,
		27.222948, 35.425781, 30.498428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061924, 35.091457, 30.350500>,  <27.813473, 35.411266, 30.874022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061924, 35.091457, 30.350500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718548, 35.239044, 30.207985>,  <27.512522, 35.327599, 30.122477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718548, 35.239044, 30.207985>,  <28.061924, 35.091457, 30.350500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718548, 35.239044, 30.207985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432088, 0.145936, -0.889945,
		-0.276369, -0.917912, -0.284705,
		-0.858441, 0.368971, -0.356287,
		27.461016, 35.349735, 30.101099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855364, 34.679089, 29.716549>,  <28.061924, 35.091457, 30.350500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855364, 34.679089, 29.716549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652662, 35.023029, 29.691710>,  <27.531042, 35.229393, 29.676805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652662, 35.023029, 29.691710>,  <27.855364, 34.679089, 29.716549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652662, 35.023029, 29.691710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253277, 0.079642, -0.964110,
		-0.824046, -0.504294, -0.258140,
		-0.506753, 0.859852, -0.062097,
		27.500637, 35.280983, 29.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440140, 34.684593, 29.109819>,  <27.855364, 34.679089, 29.716549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440140, 34.684593, 29.109819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487616, 35.074989, 29.182873>,  <27.516100, 35.309227, 29.226706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487616, 35.074989, 29.182873>,  <27.440140, 34.684593, 29.109819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487616, 35.074989, 29.182873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221993, 0.153197, -0.962938,
		-0.967798, 0.154833, -0.198480,
		0.118688, 0.975991, 0.182635,
		27.523222, 35.367786, 29.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256977, 35.077351, 28.441496>,  <27.440140, 34.684593, 29.109819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256977, 35.077351, 28.441496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466806, 35.357620, 28.634943>,  <27.592705, 35.525780, 28.751011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466806, 35.357620, 28.634943>,  <27.256977, 35.077351, 28.441496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466806, 35.357620, 28.634943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227248, 0.432204, -0.872673,
		-0.820476, 0.567682, 0.067497,
		0.524573, 0.700669, 0.483617,
		27.624178, 35.567822, 28.780027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110640, 35.831032, 28.234423>,  <27.256977, 35.077351, 28.441496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110640, 35.831032, 28.234423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479698, 35.790066, 28.383144>,  <27.701134, 35.765484, 28.472378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479698, 35.790066, 28.383144>,  <27.110640, 35.831032, 28.234423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479698, 35.790066, 28.383144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385507, 0.271230, -0.881940,
		-0.010518, 0.957050, 0.289732,
		0.922645, -0.102417, 0.371802,
		27.756493, 35.759342, 28.494684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562885, 36.441242, 28.069784>,  <27.110640, 35.831032, 28.234423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562885, 36.441242, 28.069784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776636, 36.107914, 28.126385>,  <27.904886, 35.907917, 28.160345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776636, 36.107914, 28.126385>,  <27.562885, 36.441242, 28.069784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776636, 36.107914, 28.126385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289366, 0.023066, -0.956941,
		0.794172, 0.552313, 0.253459,
		0.534377, -0.833318, 0.141502,
		27.936949, 35.857918, 28.168835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568632, 36.722103, 27.411983>,  <27.562885, 36.441242, 28.069784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568632, 36.722103, 27.411983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667652, 36.823833, 27.785944>,  <27.727064, 36.884872, 28.010321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667652, 36.823833, 27.785944>,  <27.568632, 36.722103, 27.411983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667652, 36.823833, 27.785944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957940, -0.208809, -0.196850,
		0.145152, 0.944309, -0.295317,
		0.247552, 0.254323, 0.934900,
		27.741919, 36.900131, 28.066414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995525, 37.350971, 27.362484>,  <27.568632, 36.722103, 27.411983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995525, 37.350971, 27.362484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083897, 37.083145, 27.646139>,  <28.136919, 36.922451, 27.816332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083897, 37.083145, 27.646139>,  <27.995525, 37.350971, 27.362484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083897, 37.083145, 27.646139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863826, -0.203210, -0.460989,
		0.452766, 0.714415, 0.533493,
		0.220926, -0.669565, 0.709137,
		28.150175, 36.882275, 27.858881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689693, 37.442299, 27.552629>,  <27.995525, 37.350971, 27.362484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689693, 37.442299, 27.552629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610538, 37.065678, 27.661673>,  <28.563046, 36.839703, 27.727098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610538, 37.065678, 27.661673>,  <28.689693, 37.442299, 27.552629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610538, 37.065678, 27.661673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893496, -0.287634, -0.344864,
		0.403120, 0.175329, 0.898195,
		-0.197887, -0.941555, 0.272606,
		28.551172, 36.783211, 27.743454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362545, 37.305458, 27.984573>,  <28.689693, 37.442299, 27.552629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362545, 37.305458, 27.984573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176847, 37.028488, 27.763657>,  <29.065430, 36.862305, 27.631105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176847, 37.028488, 27.763657>,  <29.362545, 37.305458, 27.984573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176847, 37.028488, 27.763657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822991, -0.106766, -0.557931,
		0.327358, -0.713548, 0.619424,
		-0.464244, -0.692424, -0.552293,
		29.037575, 36.820763, 27.597969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082708, 37.432186, 28.224897>,  <29.362545, 37.305458, 27.984573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082708, 37.432186, 28.224897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856031, 37.756676, 28.282547>,  <29.720026, 37.951370, 28.317137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856031, 37.756676, 28.282547>,  <30.082708, 37.432186, 28.224897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856031, 37.756676, 28.282547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695516, -0.564774, 0.444172,
		0.441723, 0.151467, 0.884273,
		-0.566691, 0.811227, 0.144126,
		29.686024, 38.000042, 28.325785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937208, 37.361771, 28.955875>,  <30.082708, 37.432186, 28.224897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937208, 37.361771, 28.955875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666876, 37.602165, 28.785196>,  <29.504677, 37.746403, 28.682789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666876, 37.602165, 28.785196>,  <29.937208, 37.361771, 28.955875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666876, 37.602165, 28.785196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712244, -0.383563, 0.587867,
		0.189634, 0.701211, 0.687271,
		-0.675831, 0.600985, -0.426697,
		29.464127, 37.782459, 28.657187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714256, 37.891743, 29.422113>,  <29.937208, 37.361771, 28.955875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714256, 37.891743, 29.422113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466780, 37.740807, 29.146481>,  <29.318293, 37.650246, 28.981100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466780, 37.740807, 29.146481>,  <29.714256, 37.891743, 29.422113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466780, 37.740807, 29.146481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611545, -0.319301, 0.723920,
		-0.493186, 0.869290, -0.033209,
		-0.618693, -0.377336, -0.689084,
		29.281172, 37.627605, 28.939754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084784, 38.462292, 29.225863>,  <29.714256, 37.891743, 29.422113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084784, 38.462292, 29.225863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817629, 38.749908, 29.302700>,  <29.657335, 38.922478, 29.348803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817629, 38.749908, 29.302700>,  <30.084784, 38.462292, 29.225863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817629, 38.749908, 29.302700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097691, -0.340561, 0.935133,
		0.737822, 0.605799, 0.297701,
		-0.667889, 0.719044, 0.192093,
		29.617262, 38.965622, 29.360329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272680, 38.617847, 29.877127>,  <30.084784, 38.462292, 29.225863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272680, 38.617847, 29.877127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913826, 38.787598, 29.828054>,  <29.698513, 38.889446, 29.798611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913826, 38.787598, 29.828054>,  <30.272680, 38.617847, 29.877127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913826, 38.787598, 29.828054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227469, -0.205720, 0.951808,
		0.378686, 0.881808, 0.281091,
		-0.897137, 0.424375, -0.122680,
		29.644686, 38.914909, 29.791250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170370, 39.189148, 30.415871>,  <30.272680, 38.617847, 29.877127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170370, 39.189148, 30.415871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823385, 39.026501, 30.301210>,  <29.615194, 38.928913, 30.232414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823385, 39.026501, 30.301210>,  <30.170370, 39.189148, 30.415871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823385, 39.026501, 30.301210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238168, -0.166446, 0.956855,
		-0.436790, 0.898306, 0.047541,
		-0.867462, -0.406622, -0.286650,
		29.563147, 38.904514, 30.215216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682547, 39.516068, 30.868507>,  <30.170370, 39.189148, 30.415871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682547, 39.516068, 30.868507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537411, 39.176598, 30.714573>,  <29.450329, 38.972916, 30.622211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537411, 39.176598, 30.714573>,  <29.682547, 39.516068, 30.868507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537411, 39.176598, 30.714573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267856, -0.300564, 0.915376,
		-0.892524, 0.435218, -0.118266,
		-0.362842, -0.848674, -0.384836,
		29.428558, 38.921997, 30.599121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110308, 39.417774, 31.261528>,  <29.682547, 39.516068, 30.868507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110308, 39.417774, 31.261528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163538, 39.045807, 31.124392>,  <29.195477, 38.822624, 31.042110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163538, 39.045807, 31.124392>,  <29.110308, 39.417774, 31.261528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163538, 39.045807, 31.124392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206545, -0.364343, 0.908071,
		-0.969345, -0.050030, -0.240555,
		0.133075, -0.929920, -0.342841,
		29.203461, 38.766830, 31.021540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491451, 39.061867, 31.475128>,  <29.110308, 39.417774, 31.261528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491451, 39.061867, 31.475128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791626, 38.809319, 31.396935>,  <28.971731, 38.657787, 31.350019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791626, 38.809319, 31.396935>,  <28.491451, 39.061867, 31.475128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791626, 38.809319, 31.396935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235796, -0.532046, 0.813220,
		-0.617453, -0.564175, -0.548141,
		0.750435, -0.631374, -0.195483,
		29.016756, 38.619907, 31.338289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195566, 38.324986, 31.514267>,  <28.491451, 39.061867, 31.475128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195566, 38.324986, 31.514267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592751, 38.286682, 31.542162>,  <28.831060, 38.263699, 31.558899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592751, 38.286682, 31.542162>,  <28.195566, 38.324986, 31.514267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592751, 38.286682, 31.542162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115415, -0.649422, 0.751619,
		-0.026686, -0.754375, -0.655901,
		0.992959, -0.095759, 0.069735,
		28.890638, 38.257954, 31.563082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323200, 37.571125, 31.542534>,  <28.195566, 38.324986, 31.514267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323200, 37.571125, 31.542534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647577, 37.753254, 31.689533>,  <28.842203, 37.862530, 31.777733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647577, 37.753254, 31.689533>,  <28.323200, 37.571125, 31.542534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647577, 37.753254, 31.689533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034066, -0.663744, 0.747184,
		0.584131, -0.593405, -0.553770,
		0.810944, 0.455318, 0.367498,
		28.890862, 37.889851, 31.799782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783936, 37.044327, 31.731867>,  <28.323200, 37.571125, 31.542534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783936, 37.044327, 31.731867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934416, 37.362873, 31.921295>,  <29.024704, 37.554001, 32.034954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934416, 37.362873, 31.921295>,  <28.783936, 37.044327, 31.731867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934416, 37.362873, 31.921295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250112, -0.579431, 0.775696,
		0.892141, -0.173372, -0.417164,
		0.376202, 0.796368, 0.473572,
		29.047276, 37.601784, 32.063366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548464, 37.047527, 31.998714>,  <28.783936, 37.044327, 31.731867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548464, 37.047527, 31.998714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374432, 37.313610, 32.241436>,  <29.270012, 37.473259, 32.387070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374432, 37.313610, 32.241436>,  <29.548464, 37.047527, 31.998714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374432, 37.313610, 32.241436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271582, -0.545590, 0.792827,
		0.858457, 0.509740, 0.056718,
		-0.435081, 0.665204, 0.606802,
		29.243908, 37.513172, 32.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063524, 37.148396, 32.630562>,  <29.548464, 37.047527, 31.998714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063524, 37.148396, 32.630562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686438, 37.234631, 32.732391>,  <29.460186, 37.286369, 32.793491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686438, 37.234631, 32.732391>,  <30.063524, 37.148396, 32.630562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686438, 37.234631, 32.732391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104312, -0.534364, 0.838793,
		0.316868, 0.817299, 0.481266,
		-0.942716, 0.215585, 0.254577,
		29.403624, 37.299305, 32.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175316, 36.980019, 33.238438>,  <30.063524, 37.148396, 32.630562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175316, 36.980019, 33.238438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785164, 37.026924, 33.163727>,  <29.551073, 37.055069, 33.118900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785164, 37.026924, 33.163727>,  <30.175316, 36.980019, 33.238438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785164, 37.026924, 33.163727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220105, -0.570824, 0.791021,
		-0.013858, 0.812655, 0.582580,
		-0.975378, 0.117266, -0.186780,
		29.492550, 37.062103, 33.107693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877129, 37.241215, 33.885990>,  <30.175316, 36.980019, 33.238438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877129, 37.241215, 33.885990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617945, 37.047962, 33.650452>,  <29.462435, 36.932011, 33.509129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617945, 37.047962, 33.650452>,  <29.877129, 37.241215, 33.885990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617945, 37.047962, 33.650452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172532, -0.659898, 0.731278,
		-0.741878, 0.575431, 0.344231,
		-0.647958, -0.483128, -0.588845,
		29.423557, 36.903023, 33.473797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452948, 36.938934, 34.311253>,  <29.877129, 37.241215, 33.885990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452948, 36.938934, 34.311253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339190, 36.742462, 33.981926>,  <29.270935, 36.624577, 33.784328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339190, 36.742462, 33.981926>,  <29.452948, 36.938934, 34.311253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339190, 36.742462, 33.981926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161189, -0.822060, 0.546110,
		-0.945059, 0.288021, 0.154616,
		-0.284395, -0.491184, -0.823321,
		29.253872, 36.595108, 33.734928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896299, 36.527718, 34.565025>,  <29.452948, 36.938934, 34.311253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896299, 36.527718, 34.565025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032921, 36.353138, 34.232075>,  <29.114893, 36.248390, 34.032303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032921, 36.353138, 34.232075>,  <28.896299, 36.527718, 34.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032921, 36.353138, 34.232075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204184, -0.898944, 0.387569,
		-0.917416, 0.037584, -0.396150,
		0.341550, -0.436449, -0.832379,
		29.135387, 36.222202, 33.982361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456110, 36.018929, 34.441444>,  <28.896299, 36.527718, 34.565025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456110, 36.018929, 34.441444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775692, 35.897602, 34.233723>,  <28.967442, 35.824806, 34.109089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775692, 35.897602, 34.233723>,  <28.456110, 36.018929, 34.441444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775692, 35.897602, 34.233723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156982, -0.938746, 0.306778,
		-0.580542, -0.163580, -0.797629,
		0.798954, -0.303312, -0.519303,
		29.015379, 35.806610, 34.077930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222532, 35.435883, 34.127777>,  <28.456110, 36.018929, 34.441444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222532, 35.435883, 34.127777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621712, 35.410423, 34.130455>,  <28.861219, 35.395149, 34.132061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621712, 35.410423, 34.130455>,  <28.222532, 35.435883, 34.127777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621712, 35.410423, 34.130455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057912, -0.853613, 0.517678,
		-0.027238, -0.517004, -0.855549,
		0.997950, -0.063647, 0.006690,
		28.921097, 35.391331, 34.132462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402840, 34.751820, 33.953709>,  <28.222532, 35.435883, 34.127777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402840, 34.751820, 33.953709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732651, 34.883114, 34.138062>,  <28.930538, 34.961891, 34.248672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732651, 34.883114, 34.138062>,  <28.402840, 34.751820, 33.953709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732651, 34.883114, 34.138062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019131, -0.830245, 0.557070,
		0.565499, -0.450502, -0.690839,
		0.824527, 0.328239, 0.460884,
		28.980009, 34.981586, 34.276325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938368, 34.165531, 33.969074>,  <28.402840, 34.751820, 33.953709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938368, 34.165531, 33.969074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031994, 34.430817, 34.253429>,  <29.088169, 34.589989, 34.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031994, 34.430817, 34.253429>,  <28.938368, 34.165531, 33.969074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031994, 34.430817, 34.253429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077199, -0.741570, 0.666420,
		0.969151, -0.101107, -0.224776,
		0.234066, 0.663213, 0.710887,
		29.102213, 34.629780, 34.466694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552288, 33.892788, 34.227779>,  <28.938368, 34.165531, 33.969074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552288, 33.892788, 34.227779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422510, 34.135910, 34.517693>,  <29.344645, 34.281784, 34.691639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422510, 34.135910, 34.517693>,  <29.552288, 33.892788, 34.227779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422510, 34.135910, 34.517693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121975, -0.732953, 0.669255,
		0.938008, 0.305540, 0.163664,
		-0.324442, 0.607803, 0.724784,
		29.325178, 34.318253, 34.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064972, 33.884346, 34.811295>,  <29.552288, 33.892788, 34.227779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064972, 33.884346, 34.811295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724314, 34.023613, 34.968002>,  <29.519918, 34.107174, 35.062027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724314, 34.023613, 34.968002>,  <30.064972, 33.884346, 34.811295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724314, 34.023613, 34.968002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066690, -0.669416, 0.739888,
		0.519858, 0.656250, 0.546886,
		-0.851645, 0.348165, 0.391767,
		29.468821, 34.128063, 35.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199791, 34.012161, 35.538174>,  <30.064972, 33.884346, 34.811295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199791, 34.012161, 35.538174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805113, 33.976608, 35.483719>,  <29.568306, 33.955276, 35.451046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805113, 33.976608, 35.483719>,  <30.199791, 34.012161, 35.538174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805113, 33.976608, 35.483719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042683, -0.666335, 0.744430,
		-0.156879, 0.740336, 0.653676,
		-0.986695, -0.088884, -0.136134,
		29.509104, 33.949944, 35.442879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945679, 34.194534, 36.207825>,  <30.199791, 34.012161, 35.538174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945679, 34.194534, 36.207825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644545, 33.987595, 36.045055>,  <29.463863, 33.863430, 35.947395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644545, 33.987595, 36.045055>,  <29.945679, 34.194534, 36.207825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644545, 33.987595, 36.045055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068797, -0.676686, 0.733051,
		-0.654604, 0.523871, 0.545025,
		-0.752835, -0.517354, -0.406921,
		29.418694, 33.832390, 35.922977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374651, 34.093304, 36.619843>,  <29.945679, 34.194534, 36.207825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374651, 34.093304, 36.619843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397205, 33.792557, 36.357082>,  <29.410738, 33.612110, 36.199425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397205, 33.792557, 36.357082>,  <29.374651, 34.093304, 36.619843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397205, 33.792557, 36.357082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019481, -0.658653, 0.752195,
		-0.998219, -0.029615, -0.051785,
		0.056385, -0.751864, -0.656903,
		29.414122, 33.566998, 36.160011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773006, 33.577137, 36.732914>,  <29.374651, 34.093304, 36.619843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773006, 33.577137, 36.732914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120838, 33.425941, 36.605820>,  <29.329536, 33.335224, 36.529564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120838, 33.425941, 36.605820>,  <28.773006, 33.577137, 36.732914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120838, 33.425941, 36.605820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073418, -0.537344, 0.840161,
		-0.488302, -0.753916, -0.439513,
		0.869581, -0.377984, -0.317737,
		29.381712, 33.312546, 36.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710258, 32.947899, 37.033134>,  <28.773006, 33.577137, 36.732914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710258, 32.947899, 37.033134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067541, 33.117294, 36.972687>,  <29.281912, 33.218933, 36.936420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067541, 33.117294, 36.972687>,  <28.710258, 32.947899, 37.033134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067541, 33.117294, 36.972687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194892, -0.061757, 0.978879,
		0.405212, -0.903793, -0.137696,
		0.893207, 0.423490, -0.151117,
		29.335503, 33.244343, 36.927353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302465, 32.513138, 37.343433>,  <28.710258, 32.947899, 37.033134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302465, 32.513138, 37.343433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332407, 32.911873, 37.332737>,  <29.350372, 33.151115, 37.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332407, 32.911873, 37.332737>,  <29.302465, 32.513138, 37.343433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332407, 32.911873, 37.332737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043820, 0.023505, 0.998763,
		0.996231, -0.075931, -0.041922,
		0.074852, 0.996836, -0.026744,
		29.354862, 33.210922, 37.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060390, 32.799679, 37.493233>,  <29.302465, 32.513138, 37.343433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060390, 32.799679, 37.493233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740952, 33.017197, 37.596409>,  <29.549288, 33.147705, 37.658314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740952, 33.017197, 37.596409>,  <30.060390, 32.799679, 37.493233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740952, 33.017197, 37.596409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263004, -0.070178, 0.962239,
		0.541360, 0.836280, -0.086976,
		-0.798598, 0.543792, 0.257937,
		29.501371, 33.180336, 37.673790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134310, 33.468193, 37.827785>,  <30.060390, 32.799679, 37.493233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134310, 33.468193, 37.827785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813087, 33.267036, 37.955662>,  <29.620354, 33.146343, 38.032387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813087, 33.267036, 37.955662>,  <30.134310, 33.468193, 37.827785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813087, 33.267036, 37.955662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462376, -0.187418, 0.866650,
		-0.375914, 0.843786, 0.383032,
		-0.803055, -0.502891, 0.319693,
		29.572170, 33.116169, 38.051571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914032, 33.673893, 38.565063>,  <30.134310, 33.468193, 37.827785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914032, 33.673893, 38.565063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823542, 33.297626, 38.463890>,  <29.769247, 33.071869, 38.403187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823542, 33.297626, 38.463890>,  <29.914032, 33.673893, 38.565063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823542, 33.297626, 38.463890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425296, -0.328990, 0.843142,
		-0.876325, 0.083170, 0.474487,
		-0.226225, -0.940664, -0.252930,
		29.755674, 33.015427, 38.388012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803474, 33.347618, 39.239395>,  <29.914032, 33.673893, 38.565063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803474, 33.347618, 39.239395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889482, 33.074642, 38.959953>,  <29.941088, 32.910858, 38.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889482, 33.074642, 38.959953>,  <29.803474, 33.347618, 39.239395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889482, 33.074642, 38.959953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647786, -0.435660, 0.624959,
		-0.730849, -0.586921, 0.348400,
		0.215018, -0.682440, -0.698601,
		29.953987, 32.869911, 38.750374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851730, 32.556889, 39.531254>,  <29.803474, 33.347618, 39.239395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851730, 32.556889, 39.531254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081635, 32.660816, 39.220860>,  <30.219576, 32.723171, 39.034622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081635, 32.660816, 39.220860>,  <29.851730, 32.556889, 39.531254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081635, 32.660816, 39.220860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777801, -0.468151, 0.419358,
		-0.254321, -0.844589, -0.471158,
		0.574758, 0.259815, -0.775983,
		30.254063, 32.738762, 38.988064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245907, 31.995317, 39.418388>,  <29.851730, 32.556889, 39.531254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245907, 31.995317, 39.418388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445011, 32.279427, 39.219292>,  <30.564474, 32.449890, 39.099834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445011, 32.279427, 39.219292>,  <30.245907, 31.995317, 39.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445011, 32.279427, 39.219292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853021, -0.504675, 0.132884,
		-0.156815, -0.490731, -0.857083,
		0.497759, 0.710272, -0.497745,
		30.594339, 32.492508, 39.069969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621790, 31.642990, 38.861351>,  <30.245907, 31.995317, 39.418388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621790, 31.642990, 38.861351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803583, 31.988571, 38.948101>,  <30.912659, 32.195919, 39.000149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803583, 31.988571, 38.948101>,  <30.621790, 31.642990, 38.861351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803583, 31.988571, 38.948101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833403, -0.498376, 0.238876,
		0.314462, 0.072178, -0.946522,
		0.454482, 0.863952, 0.216873,
		30.939928, 32.247757, 39.013165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344007, 31.485109, 38.618538>,  <30.621790, 31.642990, 38.861351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344007, 31.485109, 38.618538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327843, 31.806578, 38.856018>,  <31.318144, 31.999458, 38.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327843, 31.806578, 38.856018>,  <31.344007, 31.485109, 38.618538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327843, 31.806578, 38.856018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877336, -0.255818, 0.406004,
		0.478173, 0.537283, -0.694750,
		-0.040410, 0.803669, 0.593703,
		31.315720, 32.047680, 39.034130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054680, 31.731232, 38.600334>,  <31.344007, 31.485109, 38.618538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054680, 31.731232, 38.600334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881683, 31.890074, 38.924126>,  <31.777885, 31.985378, 39.118401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881683, 31.890074, 38.924126>,  <32.054680, 31.731232, 38.600334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881683, 31.890074, 38.924126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840237, -0.148136, 0.521592,
		0.327039, 0.905740, -0.269593,
		-0.432491, 0.397103, 0.809482,
		31.751936, 32.009205, 39.166969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601448, 32.064262, 38.831215>,  <32.054680, 31.731232, 38.600334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601448, 32.064262, 38.831215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359310, 32.075474, 39.149403>,  <32.214027, 32.082199, 39.340317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359310, 32.075474, 39.149403>,  <32.601448, 32.064262, 38.831215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359310, 32.075474, 39.149403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790658, -0.094004, 0.604998,
		0.091734, 0.995177, 0.034744,
		-0.605347, 0.028028, 0.795468,
		32.177708, 32.083881, 39.388042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909744, 32.525620, 39.312813>,  <32.601448, 32.064262, 38.831215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909744, 32.525620, 39.312813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653316, 32.296108, 39.516697>,  <32.499458, 32.158401, 39.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653316, 32.296108, 39.516697>,  <32.909744, 32.525620, 39.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653316, 32.296108, 39.516697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659451, -0.072059, 0.748286,
		-0.392619, 0.815836, 0.424573,
		-0.641073, -0.573776, 0.509712,
		32.460995, 32.123974, 39.669609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862755, 32.791771, 40.051373>,  <32.909744, 32.525620, 39.312813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862755, 32.791771, 40.051373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741207, 32.414150, 40.102634>,  <32.668278, 32.187576, 40.133392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741207, 32.414150, 40.102634>,  <32.862755, 32.791771, 40.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741207, 32.414150, 40.102634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738723, -0.148537, 0.657439,
		-0.601623, 0.294445, 0.742531,
		-0.303873, -0.944054, 0.128150,
		32.650043, 32.130936, 40.141079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933613, 32.689808, 40.715771>,  <32.862755, 32.791771, 40.051373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933613, 32.689808, 40.715771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893803, 32.309040, 40.599873>,  <32.869919, 32.080582, 40.530334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893803, 32.309040, 40.599873>,  <32.933613, 32.689808, 40.715771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893803, 32.309040, 40.599873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690904, -0.275658, 0.668329,
		-0.716063, -0.133673, 0.685117,
		-0.099521, -0.951916, -0.289744,
		32.863945, 32.023464, 40.512951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853592, 32.298229, 41.399410>,  <32.933613, 32.689808, 40.715771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853592, 32.298229, 41.399410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957214, 32.030159, 41.121201>,  <33.019390, 31.869316, 40.954277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957214, 32.030159, 41.121201>,  <32.853592, 32.298229, 41.399410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957214, 32.030159, 41.121201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719028, -0.346990, 0.602160,
		-0.644894, -0.656094, 0.391986,
		0.259058, -0.670178, -0.695521,
		33.034931, 31.829105, 40.912544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006275, 31.600775, 41.686962>,  <32.853592, 32.298229, 41.399410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006275, 31.600775, 41.686962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209507, 31.584522, 41.342823>,  <33.331448, 31.574772, 41.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209507, 31.584522, 41.342823>,  <33.006275, 31.600775, 41.686962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209507, 31.584522, 41.342823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733935, -0.502347, 0.457152,
		-0.450768, -0.863712, -0.225415,
		0.508083, -0.040630, -0.860349,
		33.361931, 31.572332, 41.084717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125645, 30.896006, 41.456024>,  <33.006275, 31.600775, 41.686962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125645, 30.896006, 41.456024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423222, 31.104174, 41.288353>,  <33.601768, 31.229074, 41.187748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423222, 31.104174, 41.288353>,  <33.125645, 30.896006, 41.456024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423222, 31.104174, 41.288353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657140, -0.683614, 0.317550,
		-0.121299, -0.511700, -0.850559,
		0.743944, 0.520418, -0.419180,
		33.646404, 31.260300, 41.162598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513889, 30.444626, 41.187023>,  <33.125645, 30.896006, 41.456024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513889, 30.444626, 41.187023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778145, 30.744017, 41.163921>,  <33.936699, 30.923651, 41.150059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778145, 30.744017, 41.163921>,  <33.513889, 30.444626, 41.187023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778145, 30.744017, 41.163921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749406, -0.653021, 0.109337,
		0.044122, -0.115514, -0.992326,
		0.660639, 0.748479, -0.057754,
		33.976337, 30.968561, 41.146595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140495, 30.195080, 40.803459>,  <33.513889, 30.444626, 41.187023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140495, 30.195080, 40.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259727, 30.513723, 41.013813>,  <34.331268, 30.704910, 41.140026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259727, 30.513723, 41.013813>,  <34.140495, 30.195080, 40.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259727, 30.513723, 41.013813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868709, -0.454721, 0.196401,
		0.395587, 0.398301, -0.827567,
		0.298085, 0.796609, 0.525889,
		34.349152, 30.752707, 41.171581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886482, 30.324940, 40.575878>,  <34.140495, 30.195080, 40.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886482, 30.324940, 40.575878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848206, 30.482655, 40.941475>,  <34.825241, 30.577284, 41.160831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848206, 30.482655, 40.941475>,  <34.886482, 30.324940, 40.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848206, 30.482655, 40.941475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820925, -0.488038, 0.296482,
		0.562962, 0.778689, -0.276978,
		-0.095691, 0.394286, 0.913992,
		34.819500, 30.600941, 41.215672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594589, 30.499432, 40.747890>,  <34.886482, 30.324940, 40.575878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594589, 30.499432, 40.747890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380875, 30.477694, 41.085312>,  <35.252647, 30.464651, 41.287766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380875, 30.477694, 41.085312>,  <35.594589, 30.499432, 40.747890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380875, 30.477694, 41.085312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754143, -0.481437, 0.446639,
		0.381847, 0.874795, 0.298207,
		-0.534285, -0.054343, 0.843556,
		35.220589, 30.461391, 41.338379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081928, 30.625153, 41.171455>,  <35.594589, 30.499432, 40.747890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081928, 30.625153, 41.171455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802307, 30.492401, 41.424812>,  <35.634533, 30.412750, 41.576828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802307, 30.492401, 41.424812>,  <36.081928, 30.625153, 41.171455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802307, 30.492401, 41.424812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710746, -0.419751, 0.564490,
		0.078526, 0.844788, 0.529308,
		-0.699052, -0.331877, 0.633391,
		35.592590, 30.392838, 41.614830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399876, 30.663870, 41.810581>,  <36.081928, 30.625153, 41.171455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399876, 30.663870, 41.810581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092667, 30.413660, 41.865528>,  <35.908340, 30.263535, 41.898495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092667, 30.413660, 41.865528>,  <36.399876, 30.663870, 41.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092667, 30.413660, 41.865528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547062, -0.529267, 0.648537,
		-0.332972, 0.573235, 0.748686,
		-0.768019, -0.625522, 0.137364,
		35.862263, 30.226004, 41.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278339, 30.659039, 42.561054>,  <36.399876, 30.663870, 41.810581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278339, 30.659039, 42.561054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132748, 30.319977, 42.406651>,  <36.045395, 30.116539, 42.314011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132748, 30.319977, 42.406651>,  <36.278339, 30.659039, 42.561054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132748, 30.319977, 42.406651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537619, -0.529623, 0.656099,
		-0.760583, 0.031281, 0.648487,
		-0.363977, -0.847656, -0.386005,
		36.023556, 30.065680, 42.290848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225822, 30.228228, 43.170902>,  <36.278339, 30.659039, 42.561054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225822, 30.228228, 43.170902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204716, 29.950773, 42.883545>,  <36.192051, 29.784300, 42.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204716, 29.950773, 42.883545>,  <36.225822, 30.228228, 43.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204716, 29.950773, 42.883545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421485, -0.667644, 0.613679,
		-0.905299, -0.270409, 0.327586,
		-0.052766, -0.693636, -0.718390,
		36.188885, 29.742683, 42.668026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854633, 29.744421, 43.532829>,  <36.225822, 30.228228, 43.170902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854633, 29.744421, 43.532829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073410, 29.592497, 43.234406>,  <36.204678, 29.501343, 43.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073410, 29.592497, 43.234406>,  <35.854633, 29.744421, 43.532829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073410, 29.592497, 43.234406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490475, -0.576828, 0.653226,
		-0.678448, -0.723198, -0.129204,
		0.546940, -0.379809, -0.746058,
		36.237492, 29.478554, 43.010590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946003, 29.013180, 43.670338>,  <35.854633, 29.744421, 43.532829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946003, 29.013180, 43.670338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243919, 29.097317, 43.417027>,  <36.422668, 29.147799, 43.265038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243919, 29.097317, 43.417027>,  <35.946003, 29.013180, 43.670338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243919, 29.097317, 43.417027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648262, -0.453142, 0.611898,
		-0.158257, -0.866267, -0.473853,
		0.744790, 0.210344, -0.633280,
		36.467358, 29.160419, 43.227043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423809, 28.345144, 43.407650>,  <35.946003, 29.013180, 43.670338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423809, 28.345144, 43.407650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646259, 28.674559, 43.362900>,  <36.779728, 28.872208, 43.336048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646259, 28.674559, 43.362900>,  <36.423809, 28.345144, 43.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646259, 28.674559, 43.362900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685240, -0.378174, 0.622440,
		0.470293, -0.422814, -0.774631,
		0.556121, 0.823537, -0.111876,
		36.813095, 28.921619, 43.329338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019154, 28.071289, 43.510891>,  <36.423809, 28.345144, 43.407650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019154, 28.071289, 43.510891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164196, 28.440964, 43.462910>,  <37.251221, 28.662769, 43.434120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164196, 28.440964, 43.462910>,  <37.019154, 28.071289, 43.510891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164196, 28.440964, 43.462910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706165, -0.188484, 0.682500,
		0.608149, -0.332188, -0.720976,
		0.362610, 0.924189, -0.119954,
		37.272980, 28.718220, 43.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753002, 28.032654, 43.405586>,  <37.019154, 28.071289, 43.510891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753002, 28.032654, 43.405586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668896, 28.389519, 43.565502>,  <37.618431, 28.603638, 43.661453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668896, 28.389519, 43.565502>,  <37.753002, 28.032654, 43.405586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668896, 28.389519, 43.565502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663805, -0.169932, 0.728344,
		0.717739, 0.418533, -0.556491,
		-0.210270, 0.892162, 0.399791,
		37.605816, 28.657167, 43.685440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445366, 28.353977, 43.497757>,  <37.753002, 28.032654, 43.405586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445366, 28.353977, 43.497757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179111, 28.536091, 43.734280>,  <38.019360, 28.645359, 43.876194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179111, 28.536091, 43.734280>,  <38.445366, 28.353977, 43.497757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179111, 28.536091, 43.734280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579264, -0.184339, 0.794023,
		0.470506, 0.871055, -0.141025,
		-0.665641, 0.455283, 0.591303,
		37.979420, 28.672676, 43.911671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756733, 28.909079, 43.754467>,  <38.445366, 28.353977, 43.497757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756733, 28.909079, 43.754467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464382, 28.819489, 44.012352>,  <38.288971, 28.765734, 44.167084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464382, 28.819489, 44.012352>,  <38.756733, 28.909079, 43.754467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464382, 28.819489, 44.012352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672611, -0.076072, 0.736076,
		-0.115820, 0.971621, 0.206249,
		-0.730876, -0.223977, 0.644713,
		38.245121, 28.752295, 44.205765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961552, 29.064249, 44.373802>,  <38.756733, 28.909079, 43.754467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961552, 29.064249, 44.373802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638580, 28.880415, 44.521767>,  <38.444798, 28.770115, 44.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638580, 28.880415, 44.521767>,  <38.961552, 29.064249, 44.373802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638580, 28.880415, 44.521767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544598, -0.339530, 0.766898,
		-0.226861, 0.820670, 0.524438,
		-0.807433, -0.459587, 0.369909,
		38.396351, 28.742538, 44.632740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829258, 29.332375, 45.124451>,  <38.961552, 29.064249, 44.373802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829258, 29.332375, 45.124451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676662, 28.968636, 45.058052>,  <38.585106, 28.750393, 45.018211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676662, 28.968636, 45.058052>,  <38.829258, 29.332375, 45.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676662, 28.968636, 45.058052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461200, -0.342876, 0.818371,
		-0.801100, 0.235639, 0.550194,
		-0.381489, -0.909346, -0.166001,
		38.562218, 28.695831, 45.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669941, 29.065266, 45.800819>,  <38.829258, 29.332375, 45.124451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669941, 29.065266, 45.800819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648373, 28.741432, 45.567009>,  <38.635433, 28.547132, 45.426723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648373, 28.741432, 45.567009>,  <38.669941, 29.065266, 45.800819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648373, 28.741432, 45.567009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584467, -0.500213, 0.638894,
		-0.809624, -0.307184, 0.500147,
		-0.053922, -0.809583, -0.584523,
		38.632195, 28.498558, 45.391651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277267, 28.525333, 46.180969>,  <38.669941, 29.065266, 45.800819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277267, 28.525333, 46.180969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508659, 28.363167, 45.897846>,  <38.647495, 28.265867, 45.727974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508659, 28.363167, 45.897846>,  <38.277267, 28.525333, 46.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508659, 28.363167, 45.897846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380413, -0.633502, 0.673766,
		-0.721555, -0.659023, -0.212244,
		0.578484, -0.405418, -0.707808,
		38.682205, 28.241541, 45.685505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377407, 27.823980, 46.371887>,  <38.277267, 28.525333, 46.180969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377407, 27.823980, 46.371887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685307, 27.901222, 46.128510>,  <38.870045, 27.947567, 45.982483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685307, 27.901222, 46.128510>,  <38.377407, 27.823980, 46.371887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685307, 27.901222, 46.128510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555284, -0.672715, 0.488994,
		-0.314880, -0.714259, -0.625048,
		0.769747, 0.193105, -0.608441,
		38.916229, 27.959154, 45.945976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582291, 27.217537, 46.077953>,  <38.377407, 27.823980, 46.371887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582291, 27.217537, 46.077953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903831, 27.453865, 46.050377>,  <39.096756, 27.595661, 46.033833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903831, 27.453865, 46.050377>,  <38.582291, 27.217537, 46.077953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903831, 27.453865, 46.050377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561166, -0.714820, 0.417283,
		0.197262, -0.374120, -0.906158,
		0.803854, 0.590819, -0.068937,
		39.144989, 27.631111, 46.029697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046394, 26.755888, 45.818130>,  <38.582291, 27.217537, 46.077953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046394, 26.755888, 45.818130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248131, 27.057976, 45.985600>,  <39.369171, 27.239227, 46.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248131, 27.057976, 45.985600>,  <39.046394, 26.755888, 45.818130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248131, 27.057976, 45.985600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521746, -0.652857, 0.549144,
		0.688057, -0.058514, -0.723293,
		0.504340, 0.755218, 0.418674,
		39.399433, 27.284540, 46.111202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824665, 26.575357, 45.749573>,  <39.046394, 26.755888, 45.818130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824665, 26.575357, 45.749573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753963, 26.833113, 46.047169>,  <39.711544, 26.987766, 46.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753963, 26.833113, 46.047169>,  <39.824665, 26.575357, 45.749573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753963, 26.833113, 46.047169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421265, -0.633631, 0.648881,
		0.889548, 0.428108, -0.159463,
		-0.176750, 0.644387, 0.743992,
		39.700939, 27.026428, 46.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391148, 26.660391, 46.100368>,  <39.824665, 26.575357, 45.749573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391148, 26.660391, 46.100368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106041, 26.768354, 46.359322>,  <39.934975, 26.833134, 46.514694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106041, 26.768354, 46.359322>,  <40.391148, 26.660391, 46.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106041, 26.768354, 46.359322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451361, -0.529979, 0.717911,
		0.536871, 0.803910, 0.255926,
		-0.712771, 0.269911, 0.647384,
		39.892208, 26.849327, 46.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781796, 26.674284, 46.681797>,  <40.391148, 26.660391, 46.100368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781796, 26.674284, 46.681797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416252, 26.671570, 46.844189>,  <40.196926, 26.669941, 46.941624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416252, 26.671570, 46.844189>,  <40.781796, 26.674284, 46.681797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416252, 26.671570, 46.844189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370701, -0.421913, 0.827388,
		0.165673, 0.906611, 0.388084,
		-0.913856, -0.006787, 0.405981,
		40.142094, 26.669533, 46.965984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976055, 26.742624, 47.412144>,  <40.781796, 26.674284, 46.681797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976055, 26.742624, 47.412144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604614, 26.596889, 47.383987>,  <40.381748, 26.509449, 47.367092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604614, 26.596889, 47.383987>,  <40.976055, 26.742624, 47.412144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604614, 26.596889, 47.383987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169343, -0.584879, 0.793246,
		-0.330179, 0.724691, 0.604818,
		-0.928604, -0.364335, -0.070393,
		40.326035, 26.487589, 47.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753750, 26.711851, 48.143681>,  <40.976055, 26.742624, 47.412144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753750, 26.711851, 48.143681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508499, 26.476906, 47.932369>,  <40.361347, 26.335938, 47.805584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508499, 26.476906, 47.932369>,  <40.753750, 26.711851, 48.143681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508499, 26.476906, 47.932369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063565, -0.703233, 0.708112,
		-0.787423, 0.400582, 0.468507,
		-0.613127, -0.587364, -0.528279,
		40.324562, 26.300697, 47.773884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394176, 26.422155, 48.580551>,  <40.753750, 26.711851, 48.143681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394176, 26.422155, 48.580551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344196, 26.136086, 48.305477>,  <40.314209, 25.964443, 48.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344196, 26.136086, 48.305477>,  <40.394176, 26.422155, 48.580551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344196, 26.136086, 48.305477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009799, -0.693976, 0.719932,
		-0.992114, 0.083220, 0.093723,
		-0.124954, -0.715173, -0.687688,
		40.306709, 25.921534, 48.099171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789577, 25.992979, 48.668583>,  <40.394176, 26.422155, 48.580551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789577, 25.992979, 48.668583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073830, 25.773293, 48.492691>,  <40.244381, 25.641481, 48.387157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073830, 25.773293, 48.492691>,  <39.789577, 25.992979, 48.668583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073830, 25.773293, 48.492691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169831, -0.740430, 0.650324,
		-0.682755, -0.387465, -0.619449,
		0.710636, -0.549213, -0.439728,
		40.287018, 25.608528, 48.360771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611027, 25.413061, 48.958961>,  <39.789577, 25.992979, 48.668583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611027, 25.413061, 48.958961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937496, 25.282070, 48.768543>,  <40.133377, 25.203476, 48.654293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937496, 25.282070, 48.768543>,  <39.611027, 25.413061, 48.958961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937496, 25.282070, 48.768543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066535, -0.871671, 0.485555,
		-0.573968, -0.364621, -0.733221,
		0.816170, -0.327478, -0.476050,
		40.182346, 25.183826, 48.625729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518188, 24.749496, 48.497372>,  <39.611027, 25.413061, 48.958961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518188, 24.749496, 48.497372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897606, 24.787310, 48.618259>,  <40.125256, 24.809998, 48.690792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897606, 24.787310, 48.618259>,  <39.518188, 24.749496, 48.497372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897606, 24.787310, 48.618259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031624, -0.977908, 0.206629,
		0.315078, -0.186438, -0.930573,
		0.948539, 0.094532, 0.302222,
		40.182167, 24.815670, 48.708927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756828, 24.095030, 48.333652>,  <39.518188, 24.749496, 48.497372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756828, 24.095030, 48.333652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006184, 24.279070, 48.586536>,  <40.155796, 24.389494, 48.738266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006184, 24.279070, 48.586536>,  <39.756828, 24.095030, 48.333652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006184, 24.279070, 48.586536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342026, -0.887549, 0.308668,
		0.703138, 0.023813, -0.710655,
		0.623390, 0.460098, 0.632213,
		40.193199, 24.417099, 48.776199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401569, 23.868950, 48.238945>,  <39.756828, 24.095030, 48.333652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401569, 23.868950, 48.238945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408352, 23.992550, 48.619308>,  <40.412422, 24.066710, 48.847527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408352, 23.992550, 48.619308>,  <40.401569, 23.868950, 48.238945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408352, 23.992550, 48.619308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247890, -0.922653, 0.295400,
		0.968640, 0.230713, -0.092241,
		0.016954, 0.309002, 0.950910,
		40.413437, 24.085251, 48.904583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490974, 24.692907, 48.204609>,  <40.401569, 23.868950, 48.238945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490974, 24.692907, 48.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863731, 24.593021, 48.309853>,  <41.087383, 24.533091, 48.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863731, 24.593021, 48.309853>,  <40.490974, 24.692907, 48.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863731, 24.593021, 48.309853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328229, 0.271661, -0.904691,
		0.154435, 0.929432, 0.335120,
		0.931888, -0.249713, 0.263113,
		41.143299, 24.518108, 48.388786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015301, 25.207115, 48.015427>,  <40.490974, 24.692907, 48.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015301, 25.207115, 48.015427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212772, 24.859499, 48.028439>,  <41.331253, 24.650930, 48.036243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212772, 24.859499, 48.028439>,  <41.015301, 25.207115, 48.015427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212772, 24.859499, 48.028439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171335, 0.060525, -0.983352,
		0.852602, 0.491029, 0.178776,
		0.493675, -0.869038, 0.032527,
		41.360874, 24.598787, 48.038197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278034, 25.260674, 47.428043>,  <41.015301, 25.207115, 48.015427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278034, 25.260674, 47.428043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330696, 24.870268, 47.497398>,  <41.362293, 24.636024, 47.539013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330696, 24.870268, 47.497398>,  <41.278034, 25.260674, 47.428043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330696, 24.870268, 47.497398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148853, -0.192390, -0.969963,
		0.980056, 0.101892, -0.170612,
		0.131656, -0.976014, 0.173387,
		41.370193, 24.577463, 47.549416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840279, 25.179136, 47.034866>,  <41.278034, 25.260674, 47.428043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840279, 25.179136, 47.034866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614326, 24.854753, 47.095871>,  <41.478756, 24.660124, 47.132473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614326, 24.854753, 47.095871>,  <41.840279, 25.179136, 47.034866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614326, 24.854753, 47.095871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108907, -0.109934, -0.987954,
		0.817956, -0.574682, -0.026220,
		-0.564878, -0.810959, 0.152509,
		41.444862, 24.611465, 47.141624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168743, 24.674585, 46.730034>,  <41.840279, 25.179136, 47.034866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168743, 24.674585, 46.730034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771339, 24.633036, 46.711472>,  <41.532898, 24.608107, 46.700333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771339, 24.633036, 46.711472>,  <42.168743, 24.674585, 46.730034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771339, 24.633036, 46.711472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036797, 0.092595, -0.995024,
		0.107664, -0.990270, -0.088171,
		-0.993506, -0.103884, -0.046409,
		41.473286, 24.601873, 46.697548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891953, 24.113327, 46.140873>,  <42.168743, 24.674585, 46.730034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891953, 24.113327, 46.140873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596268, 24.368938, 46.225922>,  <41.418858, 24.522305, 46.276951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596268, 24.368938, 46.225922>,  <41.891953, 24.113327, 46.140873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596268, 24.368938, 46.225922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255577, 0.025917, -0.966441,
		-0.623093, -0.768747, 0.144163,
		-0.739213, 0.639027, 0.212623,
		41.374504, 24.560646, 46.289707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367474, 23.804352, 45.789726>,  <41.891953, 24.113327, 46.140873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367474, 23.804352, 45.789726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337227, 24.199396, 45.844727>,  <41.319080, 24.436422, 45.877728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337227, 24.199396, 45.844727>,  <41.367474, 23.804352, 45.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337227, 24.199396, 45.844727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205616, 0.119485, -0.971311,
		-0.975707, -0.101720, 0.194034,
		-0.075617, 0.987611, 0.137498,
		41.314541, 24.495680, 45.885975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660522, 23.999090, 45.470505>,  <41.367474, 23.804352, 45.789726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660522, 23.999090, 45.470505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887539, 24.327370, 45.496891>,  <41.023750, 24.524338, 45.512722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887539, 24.327370, 45.496891>,  <40.660522, 23.999090, 45.470505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887539, 24.327370, 45.496891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302854, 0.282593, -0.910176,
		-0.765623, 0.496583, 0.408935,
		0.567540, 0.820699, 0.065967,
		41.057800, 24.573580, 45.516682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198517, 24.414850, 45.238396>,  <40.660522, 23.999090, 45.470505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198517, 24.414850, 45.238396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548641, 24.606958, 45.215843>,  <40.758717, 24.722223, 45.202312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548641, 24.606958, 45.215843>,  <40.198517, 24.414850, 45.238396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548641, 24.606958, 45.215843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301944, 0.451759, -0.839490,
		-0.377711, 0.751835, 0.540442,
		0.875308, 0.480268, -0.056377,
		40.811234, 24.751040, 45.198929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931683, 25.053564, 45.119835>,  <40.198517, 24.414850, 45.238396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931683, 25.053564, 45.119835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316528, 25.059673, 45.010952>,  <40.547436, 25.063339, 44.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316528, 25.059673, 45.010952>,  <39.931683, 25.053564, 45.119835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316528, 25.059673, 45.010952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244193, 0.492272, -0.835487,
		0.121238, 0.870308, 0.477353,
		0.962118, 0.015273, -0.272205,
		40.605164, 25.064255, 44.929291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045425, 25.717945, 44.909271>,  <39.931683, 25.053564, 45.119835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045425, 25.717945, 44.909271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352505, 25.511297, 44.757618>,  <40.536751, 25.387308, 44.666626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352505, 25.511297, 44.757618>,  <40.045425, 25.717945, 44.909271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352505, 25.511297, 44.757618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095705, 0.677449, -0.729317,
		0.633626, 0.523609, 0.569519,
		0.767697, -0.516620, -0.379137,
		40.582813, 25.356312, 44.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628986, 26.135769, 44.746895>,  <40.045425, 25.717945, 44.909271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628986, 26.135769, 44.746895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661877, 25.817726, 44.506550>,  <40.681610, 25.626900, 44.362343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661877, 25.817726, 44.506550>,  <40.628986, 26.135769, 44.746895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661877, 25.817726, 44.506550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050267, 0.605449, -0.794295,
		0.995345, 0.035111, 0.089753,
		0.082230, -0.795109, -0.600866,
		40.686546, 25.579193, 44.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006832, 26.404837, 44.182983>,  <40.628986, 26.135769, 44.746895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006832, 26.404837, 44.182983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832962, 26.068163, 44.054840>,  <40.728642, 25.866159, 43.977955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832962, 26.068163, 44.054840>,  <41.006832, 26.404837, 44.182983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832962, 26.068163, 44.054840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267238, 0.460247, -0.846615,
		0.860026, -0.282387, -0.424986,
		-0.434671, -0.841683, -0.320360,
		40.702560, 25.815659, 43.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121170, 26.465616, 43.446293>,  <41.006832, 26.404837, 44.182983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121170, 26.465616, 43.446293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862400, 26.162169, 43.415340>,  <40.707138, 25.980101, 43.396770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862400, 26.162169, 43.415340>,  <41.121170, 26.465616, 43.446293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862400, 26.162169, 43.415340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353698, 0.388416, -0.850900,
		0.675565, -0.523097, -0.519597,
		-0.646923, -0.758619, -0.077382,
		40.668324, 25.934584, 43.392124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140102, 26.355082, 42.754086>,  <41.121170, 26.465616, 43.446293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140102, 26.355082, 42.754086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816246, 26.178368, 42.908646>,  <40.621933, 26.072340, 43.001381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816246, 26.178368, 42.908646>,  <41.140102, 26.355082, 42.754086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816246, 26.178368, 42.908646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507834, 0.197241, -0.838571,
		0.294255, -0.875169, -0.384048,
		-0.809641, -0.441786, 0.386402,
		40.573353, 26.045832, 43.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804138, 25.815666, 42.242001>,  <41.140102, 26.355082, 42.754086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804138, 25.815666, 42.242001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511181, 25.947155, 42.480511>,  <40.335407, 26.026049, 42.623619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511181, 25.947155, 42.480511>,  <40.804138, 25.815666, 42.242001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511181, 25.947155, 42.480511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543754, 0.244708, -0.802776,
		-0.409803, -0.912174, -0.000478,
		-0.732388, 0.328721, 0.596280,
		40.291466, 26.045771, 42.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228828, 25.827200, 41.861629>,  <40.804138, 25.815666, 42.242001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228828, 25.827200, 41.861629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027607, 25.992399, 42.165306>,  <39.906876, 26.091518, 42.347511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027607, 25.992399, 42.165306>,  <40.228828, 25.827200, 41.861629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027607, 25.992399, 42.165306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749502, 0.228916, -0.621163,
		-0.430330, -0.881493, 0.194386,
		-0.503053, 0.412998, 0.759190,
		39.876690, 26.116299, 42.393063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415234, 25.688780, 41.826672>,  <40.228828, 25.827200, 41.861629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415234, 25.688780, 41.826672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481327, 26.025616, 42.032032>,  <39.520981, 26.227716, 42.155251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481327, 26.025616, 42.032032>,  <39.415234, 25.688780, 41.826672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481327, 26.025616, 42.032032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709263, 0.463172, -0.531430,
		-0.685306, -0.276330, 0.673793,
		0.165232, 0.842089, 0.513406,
		39.530895, 26.278242, 42.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805923, 25.944901, 42.060566>,  <39.415234, 25.688780, 41.826672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805923, 25.944901, 42.060566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044590, 26.262342, 42.012936>,  <39.187790, 26.452808, 41.984360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044590, 26.262342, 42.012936>,  <38.805923, 25.944901, 42.060566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044590, 26.262342, 42.012936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711168, 0.454169, -0.536629,
		-0.371794, 0.404868, 0.835375,
		0.596665, 0.793607, -0.119072,
		39.223591, 26.500425, 41.977215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399921, 26.525175, 42.009918>,  <38.805923, 25.944901, 42.060566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399921, 26.525175, 42.009918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749088, 26.653065, 41.862518>,  <38.958588, 26.729799, 41.774078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749088, 26.653065, 41.862518>,  <38.399921, 26.525175, 42.009918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749088, 26.653065, 41.862518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487827, 0.582116, -0.650512,
		0.006526, 0.747607, 0.664109,
		0.872916, 0.319725, -0.368502,
		39.010963, 26.748981, 41.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344585, 27.212019, 42.147186>,  <38.399921, 26.525175, 42.009918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344585, 27.212019, 42.147186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607742, 27.156071, 41.851181>,  <38.765636, 27.122501, 41.673576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607742, 27.156071, 41.851181>,  <38.344585, 27.212019, 42.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607742, 27.156071, 41.851181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544281, 0.590829, -0.595549,
		0.520520, 0.794580, 0.312571,
		0.657888, -0.139869, -0.740014,
		38.805107, 27.114111, 41.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452057, 27.953869, 41.794308>,  <38.344585, 27.212019, 42.147186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452057, 27.953869, 41.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600761, 27.688501, 41.534565>,  <38.689983, 27.529282, 41.378719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600761, 27.688501, 41.534565>,  <38.452057, 27.953869, 41.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600761, 27.688501, 41.534565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437733, 0.491577, -0.752822,
		0.818648, 0.564116, -0.107651,
		0.371761, -0.663419, -0.649361,
		38.712288, 27.489475, 41.339756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651821, 28.394962, 41.320469>,  <38.452057, 27.953869, 41.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651821, 28.394962, 41.320469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634594, 28.035223, 41.146427>,  <38.624256, 27.819380, 41.042000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634594, 28.035223, 41.146427>,  <38.651821, 28.394962, 41.320469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634594, 28.035223, 41.146427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356040, 0.420736, -0.834396,
		0.933478, 0.118977, -0.338325,
		-0.043072, -0.899347, -0.435108,
		38.621674, 27.765419, 41.015896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867588, 28.506441, 40.720695>,  <38.651821, 28.394962, 41.320469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867588, 28.506441, 40.720695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649479, 28.172537, 40.690090>,  <38.518616, 27.972195, 40.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649479, 28.172537, 40.690090>,  <38.867588, 28.506441, 40.720695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649479, 28.172537, 40.690090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494300, 0.393907, -0.774922,
		0.677015, -0.384720, -0.627409,
		-0.545268, -0.834762, -0.076514,
		38.485897, 27.922108, 40.667137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778816, 28.493341, 40.008553>,  <38.867588, 28.506441, 40.720695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778816, 28.493341, 40.008553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513844, 28.230938, 40.153233>,  <38.354858, 28.073496, 40.240040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513844, 28.230938, 40.153233>,  <38.778816, 28.493341, 40.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513844, 28.230938, 40.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620219, 0.209495, -0.755937,
		0.420128, -0.725094, -0.545647,
		-0.662436, -0.656011, 0.361703,
		38.315113, 28.034136, 40.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375298, 28.200754, 39.379677>,  <38.778816, 28.493341, 40.008553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375298, 28.200754, 39.379677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130051, 28.154648, 39.692291>,  <37.982903, 28.126984, 39.879860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130051, 28.154648, 39.692291>,  <38.375298, 28.200754, 39.379677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130051, 28.154648, 39.692291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782310, 0.226214, -0.580361,
		-0.109901, -0.967234, -0.228867,
		-0.613118, -0.115262, 0.781538,
		37.946114, 28.120070, 39.926754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743061, 27.754498, 39.096714>,  <38.375298, 28.200754, 39.379677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743061, 27.754498, 39.096714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656097, 27.964228, 39.426033>,  <37.603920, 28.090065, 39.623623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656097, 27.964228, 39.426033>,  <37.743061, 27.754498, 39.096714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656097, 27.964228, 39.426033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882125, 0.255529, -0.395678,
		-0.417840, -0.812273, 0.406967,
		-0.217406, 0.524326, 0.823297,
		37.590874, 28.121525, 39.673023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022636, 27.549402, 39.309322>,  <37.743061, 27.754498, 39.096714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022636, 27.549402, 39.309322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113014, 27.894480, 39.490299>,  <37.167240, 28.101526, 39.598885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113014, 27.894480, 39.490299>,  <37.022636, 27.549402, 39.309322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113014, 27.894480, 39.490299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813913, 0.422386, -0.398918,
		-0.535250, -0.278113, 0.797597,
		0.225949, 0.862696, 0.452441,
		37.180798, 28.153288, 39.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396076, 27.699978, 39.736408>,  <37.022636, 27.549402, 39.309322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396076, 27.699978, 39.736408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605042, 28.029728, 39.649239>,  <36.730419, 28.227579, 39.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605042, 28.029728, 39.649239>,  <36.396076, 27.699978, 39.736408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605042, 28.029728, 39.649239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831680, 0.436220, -0.343543,
		-0.188145, 0.360715, 0.913502,
		0.522409, 0.824377, -0.217927,
		36.761765, 28.277040, 39.583862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900860, 28.239708, 39.958828>,  <36.396076, 27.699978, 39.736408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900860, 28.239708, 39.958828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185513, 28.420242, 39.743465>,  <36.356304, 28.528563, 39.614246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185513, 28.420242, 39.743465>,  <35.900860, 28.239708, 39.958828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185513, 28.420242, 39.743465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694238, 0.569330, -0.440338,
		0.107790, 0.687139, 0.718486,
		0.711628, 0.451336, -0.538406,
		36.399002, 28.555643, 39.581944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813240, 28.965260, 40.098724>,  <35.900860, 28.239708, 39.958828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813240, 28.965260, 40.098724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006180, 28.927950, 39.750324>,  <36.121944, 28.905565, 39.541286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006180, 28.927950, 39.750324>,  <35.813240, 28.965260, 40.098724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006180, 28.927950, 39.750324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641043, 0.640056, -0.423547,
		0.596992, 0.762646, 0.248942,
		0.482353, -0.093272, -0.870997,
		36.150887, 28.899969, 39.489025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981739, 29.642365, 39.912754>,  <35.813240, 28.965260, 40.098724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981739, 29.642365, 39.912754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002026, 29.418959, 39.581577>,  <36.014198, 29.284916, 39.382870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002026, 29.418959, 39.581577>,  <35.981739, 29.642365, 39.912754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002026, 29.418959, 39.581577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683176, 0.585301, -0.436685,
		0.728490, 0.587779, -0.351877,
		0.050721, -0.558515, -0.827942,
		36.017242, 29.251404, 39.333195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017902, 30.085260, 39.429932>,  <35.981739, 29.642365, 39.912754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017902, 30.085260, 39.429932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894100, 29.768183, 39.219849>,  <35.819820, 29.577936, 39.093800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894100, 29.768183, 39.219849>,  <36.017902, 30.085260, 39.429932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894100, 29.768183, 39.219849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633371, 0.583828, -0.507923,
		0.709258, 0.175445, -0.682768,
		-0.309506, -0.792694, -0.525207,
		35.801247, 29.530375, 39.062286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102615, 30.351547, 38.694183>,  <36.017902, 30.085260, 39.429932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102615, 30.351547, 38.694183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844791, 30.045780, 38.699875>,  <35.690098, 29.862320, 38.703289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844791, 30.045780, 38.699875>,  <36.102615, 30.351547, 38.694183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844791, 30.045780, 38.699875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473514, 0.384517, -0.792421,
		0.600271, -0.517502, -0.609809,
		-0.644561, -0.764420, 0.014230,
		35.651424, 29.816454, 38.704144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038345, 30.039774, 38.016296>,  <36.102615, 30.351547, 38.694183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038345, 30.039774, 38.016296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693188, 29.959421, 38.201797>,  <35.486095, 29.911209, 38.313099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693188, 29.959421, 38.201797>,  <36.038345, 30.039774, 38.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693188, 29.959421, 38.201797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502664, 0.436285, -0.746314,
		-0.052406, -0.877099, -0.477443,
		-0.862892, -0.200882, 0.463750,
		35.434319, 29.899157, 38.340923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679333, 29.860203, 37.485214>,  <36.038345, 30.039774, 38.016296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679333, 29.860203, 37.485214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426262, 29.939272, 37.784721>,  <35.274418, 29.986713, 37.964424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426262, 29.939272, 37.784721>,  <35.679333, 29.860203, 37.485214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426262, 29.939272, 37.784721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542764, 0.576479, -0.610803,
		-0.552385, -0.792842, -0.257435,
		-0.632676, 0.197672, 0.748764,
		35.236458, 29.998573, 38.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017986, 29.985111, 37.085144>,  <35.679333, 29.860203, 37.485214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017986, 29.985111, 37.085144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976482, 30.121393, 37.458916>,  <34.951580, 30.203163, 37.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976482, 30.121393, 37.458916>,  <35.017986, 29.985111, 37.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976482, 30.121393, 37.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390724, 0.850004, -0.353309,
		-0.914641, -0.401762, 0.044926,
		-0.103759, 0.340705, 0.934427,
		34.945354, 30.223604, 37.739243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383816, 30.289764, 37.154018>,  <35.017986, 29.985111, 37.085144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383816, 30.289764, 37.154018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613945, 30.456842, 37.435310>,  <34.752022, 30.557089, 37.604088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613945, 30.456842, 37.435310>,  <34.383816, 30.289764, 37.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613945, 30.456842, 37.435310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375574, 0.898683, -0.226522,
		-0.726601, -0.133794, 0.673907,
		0.575321, 0.417693, 0.703234,
		34.786541, 30.582150, 37.646282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842823, 30.427618, 37.578098>,  <34.383816, 30.289764, 37.154018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842823, 30.427618, 37.578098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141376, 30.678185, 37.667995>,  <34.320511, 30.828524, 37.721931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141376, 30.678185, 37.667995>,  <33.842823, 30.427618, 37.578098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141376, 30.678185, 37.667995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515111, 0.757593, -0.400891,
		-0.421386, 0.183454, 0.888132,
		0.746387, 0.626417, 0.224740,
		34.365292, 30.866110, 37.735416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524097, 31.022547, 37.834000>,  <33.842823, 30.427618, 37.578098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524097, 31.022547, 37.834000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891659, 31.137037, 37.725414>,  <34.112194, 31.205730, 37.660263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891659, 31.137037, 37.725414>,  <33.524097, 31.022547, 37.834000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891659, 31.137037, 37.725414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382783, 0.813306, -0.438191,
		0.095361, 0.506566, 0.856911,
		0.918903, 0.286224, -0.271463,
		34.167332, 31.222904, 37.643974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624989, 31.634165, 38.152874>,  <33.524097, 31.022547, 37.834000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624989, 31.634165, 38.152874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883472, 31.630371, 37.847633>,  <34.038563, 31.628096, 37.664490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883472, 31.630371, 37.847633>,  <33.624989, 31.634165, 38.152874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883472, 31.630371, 37.847633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343615, 0.889217, -0.302030,
		0.681426, 0.457388, 0.571363,
		0.646210, -0.009482, -0.763101,
		34.077335, 31.627527, 37.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927464, 32.348446, 38.137089>,  <33.624989, 31.634165, 38.152874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927464, 32.348446, 38.137089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952007, 32.193142, 37.769287>,  <33.966732, 32.099960, 37.548607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952007, 32.193142, 37.769287>,  <33.927464, 32.348446, 38.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952007, 32.193142, 37.769287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277705, 0.878224, -0.389363,
		0.958705, 0.279240, -0.053939,
		0.061355, -0.388264, -0.919504,
		33.970413, 32.076664, 37.493435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120277, 32.991283, 37.718468>,  <33.927464, 32.348446, 38.137089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120277, 32.991283, 37.718468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020123, 32.720531, 37.441589>,  <33.960030, 32.558079, 37.275463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020123, 32.720531, 37.441589>,  <34.120277, 32.991283, 37.718468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020123, 32.720531, 37.441589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353629, 0.729512, -0.585456,
		0.901250, 0.098189, -0.422027,
		-0.250389, -0.676883, -0.692196,
		33.945007, 32.517467, 37.233932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544281, 33.086849, 37.032635>,  <34.120277, 32.991283, 37.718468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544281, 33.086849, 37.032635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200531, 32.895241, 36.961067>,  <33.994282, 32.780277, 36.918125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200531, 32.895241, 36.961067>,  <34.544281, 33.086849, 37.032635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200531, 32.895241, 36.961067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205707, 0.644202, -0.736674,
		0.468140, -0.596276, -0.652151,
		-0.859377, -0.479018, -0.178919,
		33.942719, 32.751534, 36.907391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764622, 33.335384, 36.290226>,  <34.544281, 33.086849, 37.032635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764622, 33.335384, 36.290226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024605, 33.382576, 35.989925>,  <35.180595, 33.410892, 35.809746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024605, 33.382576, 35.989925>,  <34.764622, 33.335384, 36.290226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024605, 33.382576, 35.989925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670998, -0.552907, 0.494020,
		-0.356813, -0.824848, -0.438532,
		0.649959, 0.117981, -0.750756,
		35.219593, 33.417969, 35.764698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022804, 32.716434, 36.063335>,  <34.764622, 33.335384, 36.290226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022804, 32.716434, 36.063335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314503, 32.980110, 35.989941>,  <35.489521, 33.138317, 35.945904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314503, 32.980110, 35.989941>,  <35.022804, 32.716434, 36.063335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314503, 32.980110, 35.989941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632200, -0.546508, 0.549228,
		0.261771, -0.516522, -0.815280,
		0.729245, 0.659192, -0.183485,
		35.533276, 33.177868, 35.934895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503254, 32.408356, 35.666149>,  <35.022804, 32.716434, 36.063335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503254, 32.408356, 35.666149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697178, 32.720001, 35.825111>,  <35.813534, 32.906990, 35.920490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697178, 32.720001, 35.825111>,  <35.503254, 32.408356, 35.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697178, 32.720001, 35.825111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736199, -0.608840, 0.295508,
		0.472194, 0.149307, -0.868758,
		0.484813, 0.779116, 0.397410,
		35.842621, 32.953735, 35.944336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235317, 32.373028, 35.429333>,  <35.503254, 32.408356, 35.666149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235317, 32.373028, 35.429333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233852, 32.596359, 35.761177>,  <36.232975, 32.730358, 35.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233852, 32.596359, 35.761177>,  <36.235317, 32.373028, 35.429333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233852, 32.596359, 35.761177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673865, -0.611586, 0.414569,
		0.738845, 0.560565, -0.373999,
		-0.003660, 0.558327, 0.829613,
		36.232754, 32.763859, 36.010059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892113, 32.540119, 35.467258>,  <36.235317, 32.373028, 35.429333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892113, 32.540119, 35.467258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728970, 32.567493, 35.831448>,  <36.631084, 32.583920, 36.049961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728970, 32.567493, 35.831448>,  <36.892113, 32.540119, 35.467258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728970, 32.567493, 35.831448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765852, -0.517283, 0.381955,
		0.497112, 0.853074, 0.158568,
		-0.407860, 0.068435, 0.910476,
		36.606613, 32.588024, 36.104591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389603, 32.681503, 36.018017>,  <36.892113, 32.540119, 35.467258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389603, 32.681503, 36.018017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101463, 32.549522, 36.262058>,  <36.928577, 32.470333, 36.408482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101463, 32.549522, 36.262058>,  <37.389603, 32.681503, 36.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101463, 32.549522, 36.262058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672402, -0.548038, 0.497523,
		0.170203, 0.768627, 0.616639,
		-0.720352, -0.329950, 0.610104,
		36.885357, 32.450539, 36.445091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755062, 32.619617, 36.590588>,  <37.389603, 32.681503, 36.018017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755062, 32.619617, 36.590588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425743, 32.415741, 36.690498>,  <37.228149, 32.293415, 36.750446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425743, 32.415741, 36.690498>,  <37.755062, 32.619617, 36.590588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425743, 32.415741, 36.690498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509046, -0.468355, 0.722160,
		-0.251093, 0.721705, 0.645054,
		-0.823301, -0.509691, 0.249780,
		37.178753, 32.262833, 36.765434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601120, 32.605789, 37.263802>,  <37.755062, 32.619617, 36.590588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601120, 32.605789, 37.263802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404167, 32.272926, 37.161762>,  <37.285995, 32.073208, 37.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404167, 32.272926, 37.161762>,  <37.601120, 32.605789, 37.263802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404167, 32.272926, 37.161762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395625, -0.475039, 0.786015,
		-0.775267, 0.286100, 0.563123,
		-0.492384, -0.832157, -0.255094,
		37.256451, 32.023281, 37.085236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396034, 32.291187, 37.925148>,  <37.601120, 32.605789, 37.263802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396034, 32.291187, 37.925148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349968, 32.014656, 37.639828>,  <37.322327, 31.848738, 37.468636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349968, 32.014656, 37.639828>,  <37.396034, 32.291187, 37.925148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349968, 32.014656, 37.639828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508944, -0.657738, 0.555299,
		-0.853061, -0.299079, 0.427597,
		-0.115169, -0.691327, -0.713305,
		37.315418, 31.807259, 37.425835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225784, 31.698185, 38.238251>,  <37.396034, 32.291187, 37.925148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225784, 31.698185, 38.238251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374577, 31.562683, 37.892563>,  <37.463852, 31.481382, 37.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374577, 31.562683, 37.892563>,  <37.225784, 31.698185, 38.238251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374577, 31.562683, 37.892563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579591, -0.642468, 0.501308,
		-0.725053, -0.687371, -0.042646,
		0.371984, -0.338757, -0.864217,
		37.486172, 31.461056, 37.633297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283691, 30.942184, 38.307308>,  <37.225784, 31.698185, 38.238251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283691, 30.942184, 38.307308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530888, 31.026423, 38.004326>,  <37.679207, 31.076965, 37.822536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530888, 31.026423, 38.004326>,  <37.283691, 30.942184, 38.307308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530888, 31.026423, 38.004326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743151, -0.470868, 0.475405,
		-0.256543, -0.856699, -0.447496,
		0.617990, 0.210595, -0.757455,
		37.716286, 31.089602, 37.777088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509426, 30.240149, 38.136166>,  <37.283691, 30.942184, 38.307308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509426, 30.240149, 38.136166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 30.470867, 37.946205>,  <37.934811, 30.609299, 37.832230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 30.470867, 37.946205>,  <37.509426, 30.240149, 38.136166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775291, 30.470867, 37.946205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725989, -0.648775, 0.228105,
		-0.176531, -0.496383, -0.849965,
		0.664663, 0.576797, -0.474897,
		37.974689, 30.643906, 37.803738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929550, 29.830769, 37.794727>,  <37.509426, 30.240149, 38.136166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929550, 29.830769, 37.794727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161800, 30.155712, 37.773018>,  <38.301151, 30.350679, 37.759991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161800, 30.155712, 37.773018>,  <37.929550, 29.830769, 37.794727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161800, 30.155712, 37.773018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795673, -0.552043, 0.249305,
		0.172563, -0.187938, -0.966903,
		0.580626, 0.812360, -0.054275,
		38.335987, 30.399420, 37.756737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580997, 29.683470, 37.295296>,  <37.929550, 29.830769, 37.794727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580997, 29.683470, 37.295296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630913, 29.966984, 37.573017>,  <38.660862, 30.137093, 37.739651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630913, 29.966984, 37.573017>,  <38.580997, 29.683470, 37.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630913, 29.966984, 37.573017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907068, -0.365066, 0.209652,
		0.402063, 0.603616, -0.688472,
		0.124788, 0.708784, 0.694300,
		38.668350, 30.179619, 37.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240185, 29.890373, 37.198681>,  <38.580997, 29.683470, 37.295296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240185, 29.890373, 37.198681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150608, 29.967964, 37.580723>,  <39.096863, 30.014519, 37.809948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150608, 29.967964, 37.580723>,  <39.240185, 29.890373, 37.198681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150608, 29.967964, 37.580723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869314, -0.403295, 0.285737,
		0.440615, 0.894274, -0.078310,
		-0.223945, 0.193976, 0.955103,
		39.083424, 30.026157, 37.867252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886372, 30.060146, 37.420223>,  <39.240185, 29.890373, 37.198681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886372, 30.060146, 37.420223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669998, 29.998055, 37.750870>,  <39.540173, 29.960800, 37.949257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669998, 29.998055, 37.750870>,  <39.886372, 30.060146, 37.420223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669998, 29.998055, 37.750870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763542, -0.502771, 0.405246,
		0.352693, 0.850368, 0.390489,
		-0.540935, -0.155227, 0.826616,
		39.507717, 29.951487, 37.998856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418476, 29.977413, 37.933372>,  <39.886372, 30.060146, 37.420223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418476, 29.977413, 37.933372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090008, 29.803856, 38.081650>,  <39.892925, 29.699720, 38.170616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090008, 29.803856, 38.081650>,  <40.418476, 29.977413, 37.933372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090008, 29.803856, 38.081650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569539, -0.664187, 0.484233,
		0.036104, 0.608762, 0.792531,
		-0.821171, -0.433895, 0.370693,
		39.843655, 29.673687, 38.192856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459602, 29.984358, 38.634724>,  <40.418476, 29.977413, 37.933372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459602, 29.984358, 38.634724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207226, 29.688496, 38.541069>,  <40.055798, 29.510979, 38.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207226, 29.688496, 38.541069>,  <40.459602, 29.984358, 38.634724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207226, 29.688496, 38.541069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487841, -0.612904, 0.621578,
		-0.603257, 0.277960, 0.747542,
		-0.630945, -0.739654, -0.234138,
		40.017941, 29.466600, 38.470829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294544, 29.650562, 39.238770>,  <40.459602, 29.984358, 38.634724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294544, 29.650562, 39.238770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221760, 29.383181, 38.950310>,  <40.178089, 29.222752, 38.777233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221760, 29.383181, 38.950310>,  <40.294544, 29.650562, 39.238770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221760, 29.383181, 38.950310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301700, -0.735973, 0.606070,
		-0.935877, -0.107288, 0.335594,
		-0.181965, -0.668456, -0.721149,
		40.167171, 29.182644, 38.733967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856178, 29.187160, 39.590645>,  <40.294544, 29.650562, 39.238770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856178, 29.187160, 39.590645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052425, 29.022352, 39.283520>,  <40.170174, 28.923468, 39.099243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052425, 29.022352, 39.283520>,  <39.856178, 29.187160, 39.590645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052425, 29.022352, 39.283520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410154, -0.668240, 0.620668,
		-0.768809, -0.619432, -0.158859,
		0.490618, -0.412019, -0.767811,
		40.199612, 28.898746, 39.053177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007725, 28.693766, 39.892689>,  <39.856178, 29.187160, 39.590645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007725, 28.693766, 39.892689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198162, 28.633862, 39.546070>,  <40.312424, 28.597919, 39.338100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198162, 28.633862, 39.546070>,  <40.007725, 28.693766, 39.892689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198162, 28.633862, 39.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774609, -0.395073, 0.493861,
		-0.416310, -0.906361, -0.072087,
		0.476096, -0.149760, -0.866548,
		40.340992, 28.588934, 39.286106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105446, 28.012667, 39.895420>,  <40.007725, 28.693766, 39.892689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105446, 28.012667, 39.895420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381115, 28.168180, 39.650837>,  <40.546516, 28.261490, 39.504086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381115, 28.168180, 39.650837>,  <40.105446, 28.012667, 39.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381115, 28.168180, 39.650837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700655, -0.572694, 0.425564,
		-0.184728, -0.721711, -0.667090,
		0.689173, 0.388787, -0.611463,
		40.587868, 28.284817, 39.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548244, 27.450663, 39.757950>,  <40.105446, 28.012667, 39.895420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548244, 27.450663, 39.757950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753029, 27.791962, 39.718227>,  <40.875900, 27.996740, 39.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753029, 27.791962, 39.718227>,  <40.548244, 27.450663, 39.757950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753029, 27.791962, 39.718227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721701, -0.364552, 0.588430,
		0.465875, -0.372922, -0.802427,
		0.511965, 0.853247, -0.099302,
		40.906620, 28.047935, 39.688438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257893, 27.197781, 39.673241>,  <40.548244, 27.450663, 39.757950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257893, 27.197781, 39.673241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236889, 27.583656, 39.776485>,  <41.224285, 27.815182, 39.838432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236889, 27.583656, 39.776485>,  <41.257893, 27.197781, 39.673241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236889, 27.583656, 39.776485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448788, -0.208096, 0.869071,
		0.892094, 0.161472, -0.422013,
		-0.052512, 0.964688, 0.258108,
		41.221134, 27.873062, 39.853916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754753, 27.304386, 40.140667>,  <41.257893, 27.197781, 39.673241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754753, 27.304386, 40.140667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588898, 27.661795, 40.209595>,  <41.489384, 27.876240, 40.250950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588898, 27.661795, 40.209595>,  <41.754753, 27.304386, 40.140667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588898, 27.661795, 40.209595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367618, -0.008747, 0.929936,
		0.832426, 0.448931, -0.324849,
		-0.414636, 0.893523, 0.172316,
		41.464508, 27.929852, 40.261288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236835, 27.784746, 40.497734>,  <41.754753, 27.304386, 40.140667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236835, 27.784746, 40.497734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872807, 27.939709, 40.556644>,  <41.654388, 28.032686, 40.591991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872807, 27.939709, 40.556644>,  <42.236835, 27.784746, 40.497734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872807, 27.939709, 40.556644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235153, 0.190031, 0.953201,
		0.341287, 0.902112, -0.264040,
		-0.910069, 0.387405, 0.147279,
		41.599785, 28.055931, 40.600830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395370, 28.242718, 40.985622>,  <42.236835, 27.784746, 40.497734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395370, 28.242718, 40.985622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001083, 28.198191, 41.036179>,  <41.764511, 28.171474, 41.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001083, 28.198191, 41.036179>,  <42.395370, 28.242718, 40.985622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001083, 28.198191, 41.036179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094415, 0.256241, 0.961991,
		-0.139472, 0.960182, -0.242071,
		-0.985715, -0.111316, 0.126394,
		41.705368, 28.164797, 41.074097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175137, 28.782280, 41.430229>,  <42.395370, 28.242718, 40.985622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175137, 28.782280, 41.430229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881908, 28.511131, 41.452480>,  <41.705971, 28.348442, 41.465832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881908, 28.511131, 41.452480>,  <42.175137, 28.782280, 41.430229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881908, 28.511131, 41.452480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004056, 0.077430, 0.996990,
		-0.680136, 0.731093, -0.054013,
		-0.733075, -0.677870, 0.055628,
		41.661987, 28.307770, 41.469170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727383, 29.090700, 41.917915>,  <42.175137, 28.782280, 41.430229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727383, 29.090700, 41.917915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666409, 28.695375, 41.918533>,  <41.629826, 28.458181, 41.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666409, 28.695375, 41.918533>,  <41.727383, 29.090700, 41.917915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666409, 28.695375, 41.918533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152335, -0.021950, 0.988085,
		-0.976503, 0.150855, 0.153901,
		-0.152436, -0.988312, 0.001546,
		41.620678, 28.398882, 41.918999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306511, 28.906301, 42.524982>,  <41.727383, 29.090700, 41.917915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306511, 28.906301, 42.524982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495537, 28.567429, 42.427853>,  <41.608952, 28.364105, 42.369576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495537, 28.567429, 42.427853>,  <41.306511, 28.906301, 42.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495537, 28.567429, 42.427853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267583, -0.124596, 0.955445,
		-0.839693, -0.516484, 0.167812,
		0.472563, -0.847184, -0.242824,
		41.637306, 28.313272, 42.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096519, 28.339357, 42.979206>,  <41.306511, 28.906301, 42.524982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096519, 28.339357, 42.979206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438454, 28.189980, 42.835098>,  <41.643616, 28.100353, 42.748634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438454, 28.189980, 42.835098>,  <41.096519, 28.339357, 42.979206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438454, 28.189980, 42.835098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204318, -0.395963, 0.895247,
		-0.476979, -0.838899, -0.262182,
		0.854836, -0.373446, -0.360268,
		41.694904, 28.077946, 42.727016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125557, 27.683474, 43.214527>,  <41.096519, 28.339357, 42.979206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125557, 27.683474, 43.214527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509716, 27.742811, 43.120190>,  <41.740211, 27.778414, 43.063587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509716, 27.742811, 43.120190>,  <41.125557, 27.683474, 43.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509716, 27.742811, 43.120190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277001, -0.417290, 0.865528,
		0.029979, -0.896585, -0.441857,
		0.960402, 0.148343, -0.235845,
		41.797836, 27.787313, 43.049435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520340, 27.008507, 43.199570>,  <41.125557, 27.683474, 43.214527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520340, 27.008507, 43.199570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781528, 27.307817, 43.246414>,  <41.938240, 27.487404, 43.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781528, 27.307817, 43.246414>,  <41.520340, 27.008507, 43.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781528, 27.307817, 43.246414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293201, -0.392305, 0.871854,
		0.698330, -0.534957, -0.475558,
		0.652968, 0.748276, 0.117109,
		41.977421, 27.532301, 43.281548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180149, 26.719345, 43.440376>,  <41.520340, 27.008507, 43.199570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180149, 26.719345, 43.440376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336662, 27.080313, 43.512531>,  <42.430573, 27.296892, 43.555824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336662, 27.080313, 43.512531>,  <42.180149, 26.719345, 43.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336662, 27.080313, 43.512531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201965, -0.275441, 0.939863,
		0.897834, -0.331323, -0.290032,
		0.391285, 0.902418, 0.180384,
		42.454048, 27.351038, 43.566647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756306, 26.673752, 43.814873>,  <42.180149, 26.719345, 43.440376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756306, 26.673752, 43.814873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649342, 27.047703, 43.908249>,  <42.585163, 27.272074, 43.964275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649342, 27.047703, 43.908249>,  <42.756306, 26.673752, 43.814873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649342, 27.047703, 43.908249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049882, -0.228506, 0.972264,
		0.962290, 0.271641, 0.014473,
		-0.267414, 0.934877, 0.233439,
		42.569118, 27.328167, 43.978279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254951, 26.957632, 44.240360>,  <42.756306, 26.673752, 43.814873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254951, 26.957632, 44.240360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910397, 27.148085, 44.311134>,  <42.703663, 27.262356, 44.353600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910397, 27.148085, 44.311134>,  <43.254951, 26.957632, 44.240360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910397, 27.148085, 44.311134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093693, -0.193426, 0.976631,
		0.499228, 0.857838, 0.122005,
		-0.861390, 0.476130, 0.176938,
		42.651981, 27.290924, 44.364216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418823, 27.499105, 44.681118>,  <43.254951, 26.957632, 44.240360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418823, 27.499105, 44.681118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028969, 27.457106, 44.760170>,  <42.795055, 27.431906, 44.807602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028969, 27.457106, 44.760170>,  <43.418823, 27.499105, 44.681118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028969, 27.457106, 44.760170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206833, -0.085448, 0.974638,
		-0.085448, 0.990795, 0.104998,
		-0.974638, -0.104998, 0.197627,
		42.736576, 27.425606, 44.819458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204311, 27.947577, 45.325451>,  <43.418823, 27.499105, 44.681118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204311, 27.947577, 45.325451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964184, 27.630987, 45.279522>,  <42.820107, 27.441034, 45.251965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964184, 27.630987, 45.279522>,  <43.204311, 27.947577, 45.325451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964184, 27.630987, 45.279522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030991, -0.166486, 0.985557,
		-0.799158, 0.588093, 0.124474,
		-0.600322, -0.791473, -0.114823,
		42.784088, 27.393545, 45.245075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798149, 27.984407, 45.898132>,  <43.204311, 27.947577, 45.325451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798149, 27.984407, 45.898132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741085, 27.619511, 45.744526>,  <42.706844, 27.400574, 45.652363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741085, 27.619511, 45.744526>,  <42.798149, 27.984407, 45.898132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741085, 27.619511, 45.744526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088327, -0.374698, 0.922930,
		-0.985822, 0.165588, -0.027120,
		-0.142664, -0.912240, -0.384012,
		42.698284, 27.345839, 45.629322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813007, 28.636143, 45.704433>,  <42.798149, 27.984407, 45.898132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813007, 28.636143, 45.704433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062542, 28.774466, 45.984791>,  <43.212261, 28.857460, 46.153004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062542, 28.774466, 45.984791>,  <42.813007, 28.636143, 45.704433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062542, 28.774466, 45.984791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077974, 0.919851, -0.384439,
		-0.777658, 0.185174, 0.600798,
		0.623833, 0.345809, 0.700891,
		43.249691, 28.878208, 46.195057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507797, 29.161098, 46.209457>,  <42.813007, 28.636143, 45.704433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507797, 29.161098, 46.209457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898773, 29.245556, 46.211460>,  <43.133358, 29.296230, 46.212662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898773, 29.245556, 46.211460>,  <42.507797, 29.161098, 46.209457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898773, 29.245556, 46.211460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207646, 0.965035, -0.159969,
		-0.038610, 0.155321, 0.987109,
		0.977442, 0.211146, 0.005009,
		43.192005, 29.308899, 46.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617237, 29.859642, 46.619942>,  <42.507797, 29.161098, 46.209457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617237, 29.859642, 46.619942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959915, 29.782478, 46.428585>,  <43.165520, 29.736179, 46.313770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959915, 29.782478, 46.428585>,  <42.617237, 29.859642, 46.619942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959915, 29.782478, 46.428585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037387, 0.948218, -0.315413,
		0.514470, 0.252326, 0.819544,
		0.856693, -0.192911, -0.478396,
		43.216923, 29.724606, 46.285065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149651, 30.354130, 46.837326>,  <42.617237, 29.859642, 46.619942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149651, 30.354130, 46.837326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243771, 30.210714, 46.475979>,  <43.300243, 30.124664, 46.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243771, 30.210714, 46.475979>,  <43.149651, 30.354130, 46.837326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243771, 30.210714, 46.475979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069585, 0.920870, -0.383610,
		0.969428, 0.153127, 0.191736,
		0.235305, -0.358540, -0.903372,
		43.314362, 30.103153, 46.204967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485615, 30.893810, 46.614006>,  <43.149651, 30.354130, 46.837326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485615, 30.893810, 46.614006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388798, 30.672876, 46.294922>,  <43.330708, 30.540316, 46.103470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388798, 30.672876, 46.294922>,  <43.485615, 30.893810, 46.614006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388798, 30.672876, 46.294922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214984, 0.832252, -0.511017,
		0.946148, 0.047805, -0.320186,
		-0.242046, -0.552332, -0.797711,
		43.316185, 30.507177, 46.055607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016830, 31.158955, 46.039032>,  <43.485615, 30.893810, 46.614006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016830, 31.158955, 46.039032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693501, 30.997536, 45.867565>,  <43.499500, 30.900684, 45.764687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693501, 30.997536, 45.867565>,  <44.016830, 31.158955, 46.039032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693501, 30.997536, 45.867565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016753, 0.743593, -0.668423,
		0.588493, -0.533124, -0.607828,
		-0.808329, -0.403545, -0.428667,
		43.451000, 30.876472, 45.738964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159889, 31.288002, 45.347569>,  <44.016830, 31.158955, 46.039032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159889, 31.288002, 45.347569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772598, 31.188416, 45.338161>,  <43.540222, 31.128664, 45.332516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772598, 31.188416, 45.338161>,  <44.159889, 31.288002, 45.347569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772598, 31.188416, 45.338161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170395, 0.725649, -0.666633,
		0.183035, -0.641445, -0.745015,
		-0.968227, -0.248964, -0.023520,
		43.482132, 31.113726, 45.331104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038681, 31.024858, 44.744854>,  <44.159889, 31.288002, 45.347569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038681, 31.024858, 44.744854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684940, 31.156931, 44.876862>,  <43.472698, 31.236174, 44.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684940, 31.156931, 44.876862>,  <44.038681, 31.024858, 44.744854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684940, 31.156931, 44.876862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102724, 0.551967, -0.827514,
		-0.455386, -0.765711, -0.454214,
		-0.884348, 0.330180, 0.330015,
		43.419636, 31.255985, 44.975864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616856, 30.936388, 44.207493>,  <44.038681, 31.024858, 44.744854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616856, 30.936388, 44.207493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406128, 31.185957, 44.438381>,  <43.279690, 31.335699, 44.576912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406128, 31.185957, 44.438381>,  <43.616856, 30.936388, 44.207493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406128, 31.185957, 44.438381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338322, 0.469059, -0.815795,
		-0.779743, -0.625063, -0.036022,
		-0.526820, 0.623923, 0.577218,
		43.248081, 31.373135, 44.611546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867031, 30.951096, 44.013859>,  <43.616856, 30.936388, 44.207493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867031, 30.951096, 44.013859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967442, 31.292521, 44.196472>,  <43.027687, 31.497375, 44.306038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967442, 31.292521, 44.196472>,  <42.867031, 30.951096, 44.013859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967442, 31.292521, 44.196472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364170, 0.520257, -0.772472,
		-0.896865, 0.027653, 0.441438,
		0.251023, 0.853562, 0.456530,
		43.042747, 31.548590, 44.333431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217438, 31.266867, 44.177296>,  <42.867031, 30.951096, 44.013859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217438, 31.266867, 44.177296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470047, 31.577009, 44.178291>,  <42.621613, 31.763094, 44.178886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470047, 31.577009, 44.178291>,  <42.217438, 31.266867, 44.177296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470047, 31.577009, 44.178291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607970, 0.497168, -0.619028,
		-0.481203, 0.389417, 0.785365,
		0.631519, 0.775357, 0.002485,
		42.659504, 31.809616, 44.179035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943588, 31.964516, 44.415798>,  <42.217438, 31.266867, 44.177296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943588, 31.964516, 44.415798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192978, 31.990931, 44.104179>,  <42.342613, 32.006779, 43.917206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192978, 31.990931, 44.104179>,  <41.943588, 31.964516, 44.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192978, 31.990931, 44.104179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686624, 0.522813, -0.505187,
		0.373936, 0.849885, 0.371305,
		0.623474, 0.066039, -0.779050,
		42.380020, 32.010742, 43.870464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603966, 32.516975, 44.103771>,  <41.943588, 31.964516, 44.415798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603966, 32.516975, 44.103771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864174, 32.397076, 43.824638>,  <42.020298, 32.325134, 43.657158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864174, 32.397076, 43.824638>,  <41.603966, 32.516975, 44.103771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864174, 32.397076, 43.824638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591385, 0.376597, -0.713049,
		0.476540, 0.876541, 0.067715,
		0.650518, -0.299751, -0.697837,
		42.059330, 32.307152, 43.615288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616268, 32.997650, 43.474842>,  <41.603966, 32.516975, 44.103771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616268, 32.997650, 43.474842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792545, 32.678108, 43.311077>,  <41.898312, 32.486382, 43.212818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792545, 32.678108, 43.311077>,  <41.616268, 32.997650, 43.474842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792545, 32.678108, 43.311077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491648, 0.166795, -0.854670,
		0.751045, 0.577937, -0.319249,
		0.440697, -0.798854, -0.409412,
		41.924755, 32.438454, 43.188255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875118, 33.205101, 42.778851>,  <41.616268, 32.997650, 43.474842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875118, 33.205101, 42.778851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924900, 32.808350, 42.768398>,  <41.954769, 32.570297, 42.762127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924900, 32.808350, 42.768398>,  <41.875118, 33.205101, 42.778851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924900, 32.808350, 42.768398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432721, -0.030555, -0.901010,
		0.892896, 0.123445, -0.433010,
		0.124456, -0.991881, -0.026134,
		41.962238, 32.510784, 42.760559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038910, 33.167221, 42.125359>,  <41.875118, 33.205101, 42.778851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038910, 33.167221, 42.125359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950001, 32.789051, 42.220661>,  <41.896656, 32.562149, 42.277843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950001, 32.789051, 42.220661>,  <42.038910, 33.167221, 42.125359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950001, 32.789051, 42.220661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382549, -0.140204, -0.913236,
		0.896799, -0.294136, -0.330506,
		-0.222277, -0.945424, 0.238257,
		41.883316, 32.505424, 42.292137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214272, 32.694656, 41.638878>,  <42.038910, 33.167221, 42.125359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214272, 32.694656, 41.638878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929909, 32.480206, 41.820946>,  <41.759293, 32.351536, 41.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929909, 32.480206, 41.820946>,  <42.214272, 32.694656, 41.638878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929909, 32.480206, 41.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409533, -0.210570, -0.887662,
		0.571745, -0.817451, -0.069866,
		-0.710908, -0.536129, 0.455165,
		41.716637, 32.319366, 41.957497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209892, 32.134293, 41.237465>,  <42.214272, 32.694656, 41.638878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209892, 32.134293, 41.237465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859570, 32.163151, 41.428360>,  <41.649376, 32.180466, 41.542896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859570, 32.163151, 41.428360>,  <42.209892, 32.134293, 41.237465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859570, 32.163151, 41.428360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475042, -0.303830, -0.825846,
		0.085417, -0.949991, 0.300370,
		-0.875808, 0.072147, 0.477238,
		41.596828, 32.184795, 41.571529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905083, 31.545048, 40.968391>,  <42.209892, 32.134293, 41.237465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905083, 31.545048, 40.968391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622559, 31.771935, 41.137810>,  <41.453045, 31.908068, 41.239460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622559, 31.771935, 41.137810>,  <41.905083, 31.545048, 40.968391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622559, 31.771935, 41.137810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634355, -0.241577, -0.734325,
		-0.314205, -0.787338, 0.530447,
		-0.706306, 0.567220, 0.423548,
		41.410667, 31.942101, 41.264874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364021, 31.089434, 40.978382>,  <41.905083, 31.545048, 40.968391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364021, 31.089434, 40.978382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 31.457884, 40.992123>,  <41.115864, 31.678953, 41.000366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 31.457884, 40.992123>,  <41.364021, 31.089434, 40.978382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208923, 31.457884, 40.992123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595117, -0.221711, -0.772451,
		-0.703910, -0.319955, 0.634145,
		-0.387746, 0.921126, 0.034346,
		41.092598, 31.734222, 41.002426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603012, 31.080332, 40.778870>,  <41.364021, 31.089434, 40.978382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603012, 31.080332, 40.778870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713100, 31.464714, 40.767418>,  <40.779152, 31.695343, 40.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713100, 31.464714, 40.767418>,  <40.603012, 31.080332, 40.778870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713100, 31.464714, 40.767418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596988, 0.147488, -0.788576,
		-0.753563, 0.234124, 0.614270,
		0.275222, 0.960954, -0.028628,
		40.795666, 31.753000, 40.758831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987640, 31.460428, 40.562397>,  <40.603012, 31.080332, 40.778870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987640, 31.460428, 40.562397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262798, 31.747208, 40.517178>,  <40.427895, 31.919275, 40.490044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262798, 31.747208, 40.517178>,  <39.987640, 31.460428, 40.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262798, 31.747208, 40.517178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439636, 0.287651, -0.850868,
		-0.577510, 0.635011, 0.513071,
		0.687897, 0.716950, -0.113052,
		40.469166, 31.962292, 40.483261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616882, 32.173897, 40.573906>,  <39.987640, 31.460428, 40.562397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616882, 32.173897, 40.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963154, 32.163620, 40.373928>,  <40.170918, 32.157455, 40.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963154, 32.163620, 40.373928>,  <39.616882, 32.173897, 40.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963154, 32.163620, 40.373928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486045, 0.195963, -0.851680,
		0.119852, 0.980275, 0.157152,
		0.865677, -0.025693, -0.499944,
		40.222858, 32.155910, 40.223946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548630, 32.807899, 40.129982>,  <39.616882, 32.173897, 40.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548630, 32.807899, 40.129982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830181, 32.570000, 39.974632>,  <39.999111, 32.427261, 39.881424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830181, 32.570000, 39.974632>,  <39.548630, 32.807899, 40.129982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830181, 32.570000, 39.974632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246125, 0.308678, -0.918771,
		0.666318, 0.742291, 0.070890,
		0.703877, -0.594746, -0.388374,
		40.041344, 32.391575, 39.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854065, 33.237091, 39.777855>,  <39.548630, 32.807899, 40.129982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854065, 33.237091, 39.777855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952900, 32.877430, 39.633369>,  <40.012199, 32.661633, 39.546677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952900, 32.877430, 39.633369>,  <39.854065, 33.237091, 39.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952900, 32.877430, 39.633369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143540, 0.334700, -0.931328,
		0.958303, 0.281968, -0.046364,
		0.247087, -0.899150, -0.361217,
		40.027027, 32.607685, 39.525005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382339, 33.265991, 39.315342>,  <39.854065, 33.237091, 39.777855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382339, 33.265991, 39.315342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213879, 32.922482, 39.198631>,  <40.112801, 32.716377, 39.128605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213879, 32.922482, 39.198631>,  <40.382339, 33.265991, 39.315342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213879, 32.922482, 39.198631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137695, 0.378509, -0.915298,
		0.896475, -0.345307, -0.277660,
		-0.421155, -0.858775, -0.291778,
		40.087532, 32.664848, 39.111099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667568, 33.153976, 38.722149>,  <40.382339, 33.265991, 39.315342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667568, 33.153976, 38.722149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353210, 32.909470, 38.684803>,  <40.164597, 32.762764, 38.662395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353210, 32.909470, 38.684803>,  <40.667568, 33.153976, 38.722149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353210, 32.909470, 38.684803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145587, 0.329659, -0.932807,
		0.600975, -0.719497, -0.348071,
		-0.785896, -0.611269, -0.093367,
		40.117443, 32.726089, 38.656792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786076, 32.930435, 38.062992>,  <40.667568, 33.153976, 38.722149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786076, 32.930435, 38.062992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400898, 32.854561, 38.139675>,  <40.169792, 32.809036, 38.185684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400898, 32.854561, 38.139675>,  <40.786076, 32.930435, 38.062992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400898, 32.854561, 38.139675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249222, 0.354223, -0.901340,
		0.103061, -0.915721, -0.388372,
		-0.962947, -0.189684, 0.191711,
		40.112015, 32.797657, 38.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443565, 32.607372, 37.390324>,  <40.786076, 32.930435, 38.062992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443565, 32.607372, 37.390324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186634, 32.787258, 37.638573>,  <40.032475, 32.895191, 37.787521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186634, 32.787258, 37.638573>,  <40.443565, 32.607372, 37.390324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186634, 32.787258, 37.638573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372887, 0.524088, -0.765694,
		-0.669608, -0.723246, -0.168940,
		-0.642324, 0.449719, 0.620622,
		39.993938, 32.922173, 37.824760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848469, 32.538086, 37.100227>,  <40.443565, 32.607372, 37.390324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848469, 32.538086, 37.100227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759293, 32.839405, 37.347721>,  <39.705788, 33.020199, 37.496216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759293, 32.839405, 37.347721>,  <39.848469, 32.538086, 37.100227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759293, 32.839405, 37.347721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610219, 0.387134, -0.691201,
		-0.760217, -0.531660, 0.373372,
		-0.222939, 0.753302, 0.618736,
		39.692410, 33.065395, 37.533340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148098, 32.660107, 37.128269>,  <39.848469, 32.538086, 37.100227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148098, 32.660107, 37.128269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327267, 33.008171, 37.210438>,  <39.434769, 33.217010, 37.259739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327267, 33.008171, 37.210438>,  <39.148098, 32.660107, 37.128269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327267, 33.008171, 37.210438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589730, 0.460232, -0.663630,
		-0.672003, 0.176109, 0.719304,
		0.447918, 0.870156, 0.205421,
		39.461643, 33.269218, 37.272064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580093, 33.120003, 36.848137>,  <39.148098, 32.660107, 37.128269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580093, 33.120003, 36.848137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884666, 33.363632, 36.936905>,  <39.067410, 33.509811, 36.990166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884666, 33.363632, 36.936905>,  <38.580093, 33.120003, 36.848137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884666, 33.363632, 36.936905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202295, 0.548499, -0.811311,
		-0.615870, 0.572867, 0.540858,
		0.761434, 0.609074, 0.221916,
		39.113098, 33.546356, 37.003479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434505, 33.869007, 36.707024>,  <38.580093, 33.120003, 36.848137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434505, 33.869007, 36.707024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832924, 33.881390, 36.740318>,  <39.071976, 33.888817, 36.760296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832924, 33.881390, 36.740318>,  <38.434505, 33.869007, 36.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832924, 33.881390, 36.740318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034673, 0.727357, -0.685383,
		-0.081757, 0.685561, 0.723410,
		0.996049, 0.030952, 0.083237,
		39.131737, 33.890675, 36.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708179, 34.543839, 36.943619>,  <38.434505, 33.869007, 36.707024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708179, 34.543839, 36.943619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978817, 34.365170, 36.709454>,  <39.141201, 34.257969, 36.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978817, 34.365170, 36.709454>,  <38.708179, 34.543839, 36.943619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978817, 34.365170, 36.709454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132627, 0.708087, -0.693559,
		0.724315, 0.546898, 0.419846,
		0.676593, -0.446672, -0.585411,
		39.181793, 34.231167, 36.533829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752960, 35.014297, 36.481335>,  <38.708179, 34.543839, 36.943619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752960, 35.014297, 36.481335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009098, 34.762978, 36.304607>,  <39.162781, 34.612186, 36.198570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009098, 34.762978, 36.304607>,  <38.752960, 35.014297, 36.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009098, 34.762978, 36.304607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087701, 0.631258, -0.770598,
		0.763067, 0.454699, 0.459324,
		0.640342, -0.628301, -0.441815,
		39.201202, 34.574486, 36.172062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298992, 35.450890, 36.149193>,  <38.752960, 35.014297, 36.481335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298992, 35.450890, 36.149193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304798, 35.083832, 35.990341>,  <39.308281, 34.863598, 35.895031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304798, 35.083832, 35.990341>,  <39.298992, 35.450890, 36.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304798, 35.083832, 35.990341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173104, 0.393477, -0.902890,
		0.984797, -0.055642, 0.164559,
		0.014511, -0.917649, -0.397127,
		39.309151, 34.808537, 35.871204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840942, 35.399506, 35.699593>,  <39.298992, 35.450890, 36.149193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840942, 35.399506, 35.699593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617081, 35.092545, 35.574451>,  <39.482761, 34.908367, 35.499367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617081, 35.092545, 35.574451>,  <39.840942, 35.399506, 35.699593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617081, 35.092545, 35.574451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171799, 0.261875, -0.949688,
		0.810721, -0.585248, -0.014721,
		-0.559658, -0.767403, -0.312852,
		39.449184, 34.862324, 35.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217369, 34.998001, 35.216148>,  <39.840942, 35.399506, 35.699593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217369, 34.998001, 35.216148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824448, 34.956955, 35.153477>,  <39.588696, 34.932327, 35.115875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824448, 34.956955, 35.153477>,  <40.217369, 34.998001, 35.216148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824448, 34.956955, 35.153477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124981, 0.263900, -0.956419,
		0.139492, -0.959076, -0.246405,
		-0.982304, -0.102617, -0.156678,
		39.529755, 34.926170, 35.106472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169216, 34.655334, 34.554493>,  <40.217369, 34.998001, 35.216148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169216, 34.655334, 34.554493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799000, 34.803165, 34.587456>,  <39.576870, 34.891865, 34.607231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799000, 34.803165, 34.587456>,  <40.169216, 34.655334, 34.554493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799000, 34.803165, 34.587456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019554, 0.170680, -0.985132,
		-0.378149, -0.913389, -0.150744,
		-0.925538, 0.369580, 0.082403,
		39.521339, 34.914040, 34.612175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823502, 35.120388, 34.459305>,  <40.169216, 34.655334, 34.554493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823502, 35.120388, 34.459305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170605, 35.203125, 34.640064>,  <41.378868, 35.252766, 34.748520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170605, 35.203125, 34.640064>,  <40.823502, 35.120388, 34.459305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170605, 35.203125, 34.640064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375854, -0.868034, -0.324425,
		0.325156, 0.451369, -0.830987,
		0.867760, 0.206841, 0.451895,
		41.430931, 35.265179, 34.775631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372131, 35.015343, 33.902992>,  <40.823502, 35.120388, 34.459305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372131, 35.015343, 33.902992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478188, 34.943134, 34.281857>,  <41.541821, 34.899807, 34.509174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478188, 34.943134, 34.281857>,  <41.372131, 35.015343, 33.902992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478188, 34.943134, 34.281857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318111, -0.910939, -0.262671,
		0.910222, 0.370947, -0.184103,
		0.265143, -0.180524, 0.947159,
		41.557732, 34.888977, 34.566006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029953, 34.768059, 33.954960>,  <41.372131, 35.015343, 33.902992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029953, 34.768059, 33.954960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845745, 34.608910, 34.272354>,  <41.735222, 34.513420, 34.462791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845745, 34.608910, 34.272354>,  <42.029953, 34.768059, 33.954960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845745, 34.608910, 34.272354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266659, -0.914637, -0.303863,
		0.846651, 0.071657, 0.527302,
		-0.460516, -0.397876, 0.793486,
		41.707592, 34.489548, 34.510399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673321, 34.441730, 33.788136>,  <42.029953, 34.768059, 33.954960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673321, 34.441730, 33.788136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039501, 34.585091, 33.861347>,  <43.259209, 34.671108, 33.905273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039501, 34.585091, 33.861347>,  <42.673321, 34.441730, 33.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039501, 34.585091, 33.861347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319619, 0.371171, 0.871823,
		0.244523, -0.856612, 0.454339,
		0.915452, 0.358397, 0.183030,
		43.314137, 34.692612, 33.916256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854748, 34.310703, 34.456429>,  <42.673321, 34.441730, 33.788136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854748, 34.310703, 34.456429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057804, 34.632420, 34.332867>,  <43.179638, 34.825451, 34.258728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057804, 34.632420, 34.332867>,  <42.854748, 34.310703, 34.456429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057804, 34.632420, 34.332867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311696, 0.505691, 0.804439,
		0.803213, -0.312078, 0.507402,
		0.507636, 0.804290, -0.308904,
		43.210094, 34.873707, 34.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400013, 34.529396, 34.877697>,  <42.854748, 34.310703, 34.456429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400013, 34.529396, 34.877697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254494, 34.848797, 34.685844>,  <43.167183, 35.040436, 34.570732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254494, 34.848797, 34.685844>,  <43.400013, 34.529396, 34.877697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254494, 34.848797, 34.685844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321645, 0.375559, 0.869195,
		0.874183, 0.470484, 0.120205,
		-0.363798, 0.798499, -0.479636,
		43.145355, 35.088345, 34.541954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702351, 35.083523, 35.255733>,  <43.400013, 34.529396, 34.877697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702351, 35.083523, 35.255733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362904, 35.179260, 35.067028>,  <43.159237, 35.236702, 34.953804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362904, 35.179260, 35.067028>,  <43.702351, 35.083523, 35.255733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362904, 35.179260, 35.067028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363317, 0.384513, 0.848617,
		0.384513, 0.891551, -0.239346,
		-0.848617, 0.239346, -0.471765,
		43.108318, 35.251064, 34.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470764, 35.024624, 35.965557>,  <43.702351, 35.083523, 35.255733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470764, 35.024624, 35.965557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817192, 35.096809, 36.152046>,  <44.025047, 35.140121, 36.263939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817192, 35.096809, 36.152046>,  <43.470764, 35.024624, 35.965557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817192, 35.096809, 36.152046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308790, 0.540312, -0.782759,
		-0.393161, 0.821886, 0.412222,
		0.866067, 0.180460, 0.466220,
		44.077011, 35.150948, 36.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674381, 35.786495, 36.142319>,  <43.470764, 35.024624, 35.965557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674381, 35.786495, 36.142319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001808, 35.572147, 36.059578>,  <44.198265, 35.443539, 36.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001808, 35.572147, 36.059578>,  <43.674381, 35.786495, 36.142319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001808, 35.572147, 36.059578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364588, 0.762976, -0.533801,
		0.443870, 0.361538, 0.819920,
		0.818569, -0.535872, -0.206850,
		44.247379, 35.411385, 35.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215065, 36.241890, 36.340904>,  <43.674381, 35.786495, 36.142319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215065, 36.241890, 36.340904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370537, 35.982903, 36.078693>,  <44.463818, 35.827511, 35.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370537, 35.982903, 36.078693>,  <44.215065, 36.241890, 36.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370537, 35.982903, 36.078693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379008, 0.760836, -0.526765,
		0.839812, -0.043708, 0.541115,
		0.388676, -0.647471, -0.655524,
		44.487141, 35.788662, 35.882034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899734, 36.520405, 36.164650>,  <44.215065, 36.241890, 36.340904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899734, 36.520405, 36.164650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808559, 36.275986, 35.861423>,  <44.753853, 36.129333, 35.679489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808559, 36.275986, 35.861423>,  <44.899734, 36.520405, 36.164650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808559, 36.275986, 35.861423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254784, 0.713999, -0.652143,
		0.939750, -0.341791, -0.007061,
		-0.227938, -0.611052, -0.758063,
		44.740177, 36.092670, 35.634003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471893, 36.584949, 35.676071>,  <44.899734, 36.520405, 36.164650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471893, 36.584949, 35.676071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152599, 36.462822, 35.468380>,  <44.961021, 36.389545, 35.343765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152599, 36.462822, 35.468380>,  <45.471893, 36.584949, 35.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152599, 36.462822, 35.468380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155574, 0.728261, -0.667407,
		0.581904, -0.613528, -0.533826,
		-0.798238, -0.305318, -0.519227,
		44.913128, 36.371227, 35.312611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600395, 36.552597, 35.044643>,  <45.471893, 36.584949, 35.676071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600395, 36.552597, 35.044643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202782, 36.581505, 35.011959>,  <44.964214, 36.598850, 34.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202782, 36.581505, 35.011959>,  <45.600395, 36.552597, 35.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202782, 36.581505, 35.011959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107629, 0.771792, -0.626701,
		0.017773, -0.631755, -0.774964,
		-0.994032, 0.072270, -0.081712,
		44.904572, 36.603188, 34.987446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537518, 36.687904, 34.355026>,  <45.600395, 36.552597, 35.044643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537518, 36.687904, 34.355026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180092, 36.768887, 34.515305>,  <44.965637, 36.817474, 34.611473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180092, 36.768887, 34.515305>,  <45.537518, 36.687904, 34.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180092, 36.768887, 34.515305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059760, 0.830959, -0.553114,
		-0.444946, -0.518187, -0.730414,
		-0.893561, 0.202457, 0.400699,
		44.912022, 36.829624, 34.635513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049179, 36.826843, 33.756317>,  <45.537518, 36.687904, 34.355026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049179, 36.826843, 33.756317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913544, 37.013023, 34.083332>,  <44.832161, 37.124733, 34.279541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913544, 37.013023, 34.083332>,  <45.049179, 36.826843, 33.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913544, 37.013023, 34.083332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046242, 0.859732, -0.508649,
		-0.939616, -0.210283, -0.270004,
		-0.339091, 0.465449, 0.817542,
		44.811817, 37.152657, 34.328594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574886, 37.214092, 33.497635>,  <45.049179, 36.826843, 33.756317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574886, 37.214092, 33.497635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625046, 37.401978, 33.847179>,  <44.655144, 37.514709, 34.056908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625046, 37.401978, 33.847179>,  <44.574886, 37.214092, 33.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625046, 37.401978, 33.847179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070619, 0.882810, -0.464392,
		-0.989590, -0.003476, 0.143877,
		0.125402, 0.469718, 0.873865,
		44.662666, 37.542892, 34.109341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064129, 37.666691, 33.546635>,  <44.574886, 37.214092, 33.497635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064129, 37.666691, 33.546635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339211, 37.819042, 33.793854>,  <44.504261, 37.910454, 33.942184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339211, 37.819042, 33.793854>,  <44.064129, 37.666691, 33.546635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339211, 37.819042, 33.793854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235602, 0.922336, -0.306247,
		-0.686694, 0.064994, 0.724035,
		0.687708, 0.380882, 0.618050,
		44.545525, 37.933308, 33.979267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689766, 38.264256, 33.912491>,  <44.064129, 37.666691, 33.546635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689766, 38.264256, 33.912491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089420, 38.277733, 33.902763>,  <44.329212, 38.285820, 33.896927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089420, 38.277733, 33.902763>,  <43.689766, 38.264256, 33.912491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089420, 38.277733, 33.902763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041094, 0.888143, -0.457726,
		0.006180, 0.458330, 0.888760,
		0.999136, 0.033694, -0.024323,
		44.389160, 38.287842, 33.895466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865246, 38.941612, 34.132584>,  <43.689766, 38.264256, 33.912491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865246, 38.941612, 34.132584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210781, 38.828758, 33.965645>,  <44.418102, 38.761047, 33.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210781, 38.828758, 33.965645>,  <43.865246, 38.941612, 34.132584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210781, 38.828758, 33.965645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020310, 0.808283, -0.588444,
		0.503358, 0.516797, 0.692497,
		0.863839, -0.282133, -0.417352,
		44.469933, 38.744118, 33.840439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368473, 39.537743, 34.135509>,  <43.865246, 38.941612, 34.132584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368473, 39.537743, 34.135509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547615, 39.319614, 33.852085>,  <44.655098, 39.188740, 33.682030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547615, 39.319614, 33.852085>,  <44.368473, 39.537743, 34.135509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547615, 39.319614, 33.852085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149069, 0.826927, -0.542191,
		0.881594, 0.137196, 0.451630,
		0.447851, -0.545316, -0.708562,
		44.681969, 39.156021, 33.639515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830578, 40.031975, 33.834522>,  <44.368473, 39.537743, 34.135509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830578, 40.031975, 33.834522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827225, 39.717598, 33.587223>,  <44.825211, 39.528973, 33.438843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827225, 39.717598, 33.587223>,  <44.830578, 40.031975, 33.834522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827225, 39.717598, 33.587223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216946, 0.602110, -0.768373,
		0.976148, -0.140569, 0.165457,
		-0.008386, -0.785941, -0.618244,
		44.824707, 39.481815, 33.401749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370556, 40.245277, 33.455750>,  <44.830578, 40.031975, 33.834522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370556, 40.245277, 33.455750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153877, 39.980076, 33.249062>,  <45.023872, 39.820957, 33.125050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153877, 39.980076, 33.249062>,  <45.370556, 40.245277, 33.455750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153877, 39.980076, 33.249062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126861, 0.543197, -0.829966,
		0.830947, -0.515140, -0.210138,
		-0.541695, -0.662999, -0.516719,
		44.991367, 39.781178, 33.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674892, 40.290546, 32.779190>,  <45.370556, 40.245277, 33.455750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674892, 40.290546, 32.779190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319725, 40.114742, 32.724873>,  <45.106625, 40.009262, 32.692280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319725, 40.114742, 32.724873>,  <45.674892, 40.290546, 32.779190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319725, 40.114742, 32.724873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000357, 0.295860, -0.955231,
		0.460010, -0.848114, -0.262855,
		-0.887914, -0.439510, -0.135796,
		45.053352, 39.982891, 32.684135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689152, 39.796227, 32.173691>,  <45.674892, 40.290546, 32.779190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689152, 39.796227, 32.173691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298862, 39.876312, 32.209183>,  <45.064690, 39.924362, 32.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298862, 39.876312, 32.209183>,  <45.689152, 39.796227, 32.173691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298862, 39.876312, 32.209183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036842, 0.249332, -0.967717,
		-0.215871, -0.947496, -0.235904,
		-0.975727, 0.200211, 0.088731,
		45.006145, 39.936375, 32.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370129, 39.633148, 31.511820>,  <45.689152, 39.796227, 32.173691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370129, 39.633148, 31.511820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095657, 39.879353, 31.666895>,  <44.930973, 40.027077, 31.759941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095657, 39.879353, 31.666895>,  <45.370129, 39.633148, 31.511820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095657, 39.879353, 31.666895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244439, 0.306866, -0.919828,
		-0.685132, -0.725935, -0.060111,
		-0.686181, 0.615510, 0.387690,
		44.889805, 40.064007, 31.783201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868038, 39.601974, 30.988317>,  <45.370129, 39.633148, 31.511820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868038, 39.601974, 30.988317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790779, 39.939583, 31.188446>,  <44.744423, 40.142147, 31.308523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790779, 39.939583, 31.188446>,  <44.868038, 39.601974, 30.988317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790779, 39.939583, 31.188446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304263, 0.433263, -0.848355,
		-0.932801, -0.316088, 0.173120,
		-0.193149, 0.844021, 0.500323,
		44.732834, 40.192787, 31.338543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183342, 39.858139, 30.942724>,  <44.868038, 39.601974, 30.988317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183342, 39.858139, 30.942724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407871, 40.179916, 31.020489>,  <44.542587, 40.372982, 31.067148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407871, 40.179916, 31.020489>,  <44.183342, 39.858139, 30.942724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407871, 40.179916, 31.020489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270304, 0.400231, -0.875643,
		-0.782211, 0.438967, 0.442101,
		0.561321, 0.804440, 0.194411,
		44.576267, 40.421249, 31.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841110, 40.312939, 30.589064>,  <44.183342, 39.858139, 30.942724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841110, 40.312939, 30.589064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183949, 40.500874, 30.673571>,  <44.389652, 40.613636, 30.724274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183949, 40.500874, 30.673571>,  <43.841110, 40.312939, 30.589064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183949, 40.500874, 30.673571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048833, 0.482360, -0.874611,
		-0.512830, 0.739312, 0.436374,
		0.857100, 0.469836, 0.211267,
		44.441078, 40.641823, 30.736950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707890, 41.056690, 30.548683>,  <43.841110, 40.312939, 30.589064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707890, 41.056690, 30.548683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092693, 40.958424, 30.501045>,  <44.323574, 40.899464, 30.472462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092693, 40.958424, 30.501045>,  <43.707890, 41.056690, 30.548683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092693, 40.958424, 30.501045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033469, 0.539058, -0.841603,
		0.270955, 0.805644, 0.526802,
		0.962010, -0.245668, -0.119097,
		44.381298, 40.884724, 30.465317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943939, 41.577995, 30.084513>,  <43.707890, 41.056690, 30.548683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943939, 41.577995, 30.084513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260353, 41.333862, 30.067743>,  <44.450203, 41.187382, 30.057682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260353, 41.333862, 30.067743>,  <43.943939, 41.577995, 30.084513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260353, 41.333862, 30.067743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294422, 0.439870, -0.848428,
		0.536264, 0.658792, 0.527649,
		0.791035, -0.610333, -0.041924,
		44.497665, 41.150761, 30.055166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461628, 42.057934, 29.669653>,  <43.943939, 41.577995, 30.084513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461628, 42.057934, 29.669653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624084, 41.694984, 29.712969>,  <44.721558, 41.477215, 29.738958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.624084, 41.694984, 29.712969>,  <44.461628, 42.057934, 29.669653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624084, 41.694984, 29.712969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616430, 0.184564, -0.765474,
		0.674581, 0.377646, 0.634290,
		0.406145, -0.907370, 0.108288,
		44.745930, 41.422775, 29.745455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187920, 42.104618, 29.817978>,  <44.461628, 42.057934, 29.669653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187920, 42.104618, 29.817978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077774, 41.781986, 29.608751>,  <45.011688, 41.588406, 29.483215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077774, 41.781986, 29.608751>,  <45.187920, 42.104618, 29.817978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077774, 41.781986, 29.608751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665407, 0.232786, -0.709256,
		0.693837, -0.543353, 0.472607,
		-0.275360, -0.806584, -0.523066,
		44.995167, 41.540012, 29.451832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738049, 41.734787, 29.596306>,  <45.187920, 42.104618, 29.817978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738049, 41.734787, 29.596306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450886, 41.632385, 29.337362>,  <45.278587, 41.570946, 29.181997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450886, 41.632385, 29.337362>,  <45.738049, 41.734787, 29.596306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450886, 41.632385, 29.337362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669244, 0.002176, -0.743040,
		0.191628, -0.966674, 0.169765,
		-0.717908, -0.256001, -0.647357,
		45.235512, 41.555584, 29.143154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062309, 41.268425, 29.176859>,  <45.738049, 41.734787, 29.596306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062309, 41.268425, 29.176859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754948, 41.421021, 28.971329>,  <45.570530, 41.512577, 28.848011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754948, 41.421021, 28.971329>,  <46.062309, 41.268425, 29.176859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754948, 41.421021, 28.971329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597011, 0.138128, -0.790252,
		-0.230500, -0.913994, -0.333893,
		-0.768406, 0.381491, -0.513826,
		45.524426, 41.535469, 28.817181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062870, 40.886189, 28.588629>,  <46.062309, 41.268425, 29.176859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062870, 40.886189, 28.588629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947163, 41.268780, 28.573229>,  <45.877739, 41.498333, 28.563988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947163, 41.268780, 28.573229>,  <46.062870, 40.886189, 28.588629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947163, 41.268780, 28.573229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691825, 0.181094, -0.698988,
		-0.661591, -0.228831, -0.714097,
		-0.289268, 0.956473, -0.038501,
		45.860382, 41.555721, 28.561678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738632, 41.103954, 27.944073>,  <46.062870, 40.886189, 28.588629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738632, 41.103954, 27.944073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909081, 41.432411, 28.095940>,  <46.011349, 41.629486, 28.187059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909081, 41.432411, 28.095940>,  <45.738632, 41.103954, 27.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909081, 41.432411, 28.095940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558712, 0.091203, -0.824332,
		-0.711520, 0.563391, -0.419917,
		0.426123, 0.821141, 0.379666,
		46.036919, 41.678753, 28.209839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114761, 40.818867, 27.340773>,  <45.738632, 41.103954, 27.944073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114761, 40.818867, 27.340773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456249, 40.868088, 27.543169>,  <46.661140, 40.897621, 27.664606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456249, 40.868088, 27.543169>,  <46.114761, 40.818867, 27.340773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456249, 40.868088, 27.543169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274220, -0.719801, 0.637723,
		0.442688, -0.683187, -0.580761,
		0.853716, 0.123056, 0.505990,
		46.712364, 40.905006, 27.694965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451740, 40.052567, 27.403811>,  <46.114761, 40.818867, 27.340773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451740, 40.052567, 27.403811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483505, 40.324532, 27.695404>,  <46.502563, 40.487709, 27.870359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483505, 40.324532, 27.695404>,  <46.451740, 40.052567, 27.403811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483505, 40.324532, 27.695404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280821, -0.686415, 0.670801,
		0.956469, -0.257982, 0.136425,
		0.079411, 0.679911, 0.728982,
		46.507328, 40.528503, 27.914099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751495, 39.793705, 27.987095>,  <46.451740, 40.052567, 27.403811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751495, 39.793705, 27.987095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589966, 40.105953, 28.177906>,  <46.493046, 40.293301, 28.292393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589966, 40.105953, 28.177906>,  <46.751495, 39.793705, 27.987095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589966, 40.105953, 28.177906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301032, -0.605786, 0.736480,
		0.863888, 0.153810, 0.479625,
		-0.403828, 0.780619, 0.477029,
		46.468819, 40.340137, 28.321014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137959, 39.976871, 28.661558>,  <46.751495, 39.793705, 27.987095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137959, 39.976871, 28.661558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755379, 40.087582, 28.698654>,  <46.525829, 40.154007, 28.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755379, 40.087582, 28.698654>,  <47.137959, 39.976871, 28.661558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755379, 40.087582, 28.698654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127303, -0.681416, 0.720740,
		0.262681, 0.677544, 0.686974,
		-0.956448, 0.276778, 0.092742,
		46.468445, 40.170616, 28.726477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032833, 40.120800, 29.391710>,  <47.137959, 39.976871, 28.661558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032833, 40.120800, 29.391710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669273, 40.075745, 29.231104>,  <46.451138, 40.048710, 29.134739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669273, 40.075745, 29.231104>,  <47.032833, 40.120800, 29.391710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669273, 40.075745, 29.231104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269279, -0.576663, 0.771329,
		-0.318424, 0.809179, 0.493796,
		-0.908898, -0.112641, -0.401518,
		46.396603, 40.041954, 29.110649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567959, 40.193275, 29.958853>,  <47.032833, 40.120800, 29.391710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567959, 40.193275, 29.958853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381031, 39.980862, 29.676119>,  <46.268875, 39.853413, 29.506477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381031, 39.980862, 29.676119>,  <46.567959, 40.193275, 29.958853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381031, 39.980862, 29.676119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357851, -0.617469, 0.700482,
		-0.808430, 0.580289, 0.098521,
		-0.467316, -0.531034, -0.706837,
		46.240837, 39.821552, 29.464067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986492, 40.020874, 30.289093>,  <46.567959, 40.193275, 29.958853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986492, 40.020874, 30.289093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023876, 39.759262, 29.988825>,  <46.046307, 39.602295, 29.808664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023876, 39.759262, 29.988825>,  <45.986492, 40.020874, 30.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023876, 39.759262, 29.988825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150233, -0.754602, 0.638753,
		-0.984223, 0.053077, -0.168784,
		0.093462, -0.654032, -0.750671,
		46.051914, 39.563053, 29.763624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442867, 39.516350, 30.288361>,  <45.986492, 40.020874, 30.289093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442867, 39.516350, 30.288361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749992, 39.338387, 30.103960>,  <45.934265, 39.231609, 29.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749992, 39.338387, 30.103960>,  <45.442867, 39.516350, 30.288361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749992, 39.338387, 30.103960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250607, -0.870785, 0.423002,
		-0.589629, -0.209256, -0.780096,
		0.767811, -0.444911, -0.460999,
		45.980335, 39.204914, 29.965660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075214, 38.980431, 30.127180>,  <45.442867, 39.516350, 30.288361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075214, 38.980431, 30.127180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465919, 38.906933, 30.083048>,  <45.700344, 38.862835, 30.056568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465919, 38.906933, 30.083048>,  <45.075214, 38.980431, 30.127180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465919, 38.906933, 30.083048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088900, -0.815747, 0.571537,
		-0.195019, -0.548447, -0.813126,
		0.976762, -0.183748, -0.110329,
		45.758949, 38.851810, 30.049950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146454, 38.276814, 30.109770>,  <45.075214, 38.980431, 30.127180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146454, 38.276814, 30.109770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519123, 38.399296, 30.187975>,  <45.742725, 38.472786, 30.234898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519123, 38.399296, 30.187975>,  <45.146454, 38.276814, 30.109770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519123, 38.399296, 30.187975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093125, -0.721459, 0.686167,
		0.351162, -0.621076, -0.700678,
		0.931672, 0.306206, 0.195511,
		45.798626, 38.491158, 30.246628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559845, 37.653252, 30.085123>,  <45.146454, 38.276814, 30.109770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559845, 37.653252, 30.085123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770393, 37.917164, 30.299646>,  <45.896721, 38.075512, 30.428360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770393, 37.917164, 30.299646>,  <45.559845, 37.653252, 30.085123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770393, 37.917164, 30.299646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149502, -0.692752, 0.705510,
		0.837011, -0.291178, -0.463280,
		0.526367, 0.659780, 0.536309,
		45.928303, 38.115097, 30.460539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253902, 37.346874, 30.312584>,  <45.559845, 37.653252, 30.085123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253902, 37.346874, 30.312584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190868, 37.636543, 30.581133>,  <46.153049, 37.810345, 30.742262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190868, 37.636543, 30.581133>,  <46.253902, 37.346874, 30.312584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190868, 37.636543, 30.581133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255062, -0.626948, 0.736124,
		0.953997, 0.287243, -0.085911,
		-0.157585, 0.724173, 0.671372,
		46.143593, 37.853794, 30.782545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759651, 37.146801, 30.672720>,  <46.253902, 37.346874, 30.312584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759651, 37.146801, 30.672720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539261, 37.386509, 30.905029>,  <46.407028, 37.530334, 31.044415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539261, 37.386509, 30.905029>,  <46.759651, 37.146801, 30.672720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539261, 37.386509, 30.905029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074736, -0.657709, 0.749556,
		0.831168, 0.456392, 0.317595,
		-0.550976, 0.599271, 0.580775,
		46.373966, 37.566292, 31.079262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075314, 37.259800, 31.340328>,  <46.759651, 37.146801, 30.672720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075314, 37.259800, 31.340328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691914, 37.346954, 31.413876>,  <46.461876, 37.399246, 31.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691914, 37.346954, 31.413876>,  <47.075314, 37.259800, 31.340328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691914, 37.346954, 31.413876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003911, -0.654910, 0.755697,
		0.285076, 0.723614, 0.628582,
		-0.958497, 0.217889, 0.183869,
		46.404366, 37.412319, 31.469036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084816, 37.458298, 32.013012>,  <47.075314, 37.259800, 31.340328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084816, 37.458298, 32.013012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697762, 37.377048, 31.953119>,  <46.465530, 37.328300, 31.917183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.697762, 37.377048, 31.953119>,  <47.084816, 37.458298, 32.013012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697762, 37.377048, 31.953119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012478, -0.554134, 0.832334,
		-0.252037, 0.807265, 0.533667,
		-0.967637, -0.203120, -0.149735,
		46.407471, 37.316113, 31.908199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864487, 37.382488, 32.696640>,  <47.084816, 37.458298, 32.013012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864487, 37.382488, 32.696640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560581, 37.231575, 32.484821>,  <46.378239, 37.141026, 32.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560581, 37.231575, 32.484821>,  <46.864487, 37.382488, 32.696640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560581, 37.231575, 32.484821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166015, -0.674870, 0.719020,
		-0.628649, 0.634197, 0.450106,
		-0.759763, -0.377286, -0.529543,
		46.332653, 37.118389, 32.325958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291248, 37.240040, 33.207867>,  <46.864487, 37.382488, 32.696640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291248, 37.240040, 33.207867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252338, 37.003021, 32.888008>,  <46.228992, 36.860809, 32.696095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252338, 37.003021, 32.888008>,  <46.291248, 37.240040, 33.207867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252338, 37.003021, 32.888008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100177, -0.793546, 0.600209,
		-0.990203, 0.138492, 0.017833,
		-0.097275, -0.592542, -0.799645,
		46.223156, 36.825260, 32.648113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738117, 36.859947, 33.402668>,  <46.291248, 37.240040, 33.207867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738117, 36.859947, 33.402668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917088, 36.649693, 33.113251>,  <46.024467, 36.523540, 32.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917088, 36.649693, 33.113251>,  <45.738117, 36.859947, 33.402668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917088, 36.649693, 33.113251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031759, -0.799192, 0.600236,
		-0.893758, -0.291538, -0.340883,
		0.447423, -0.525640, -0.723544,
		46.051315, 36.492001, 32.896187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336922, 36.291203, 33.370415>,  <45.738117, 36.859947, 33.402668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336922, 36.291203, 33.370415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702465, 36.191856, 33.241928>,  <45.921791, 36.132248, 33.164837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702465, 36.191856, 33.241928>,  <45.336922, 36.291203, 33.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702465, 36.191856, 33.241928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000811, -0.792218, 0.610238,
		-0.406038, -0.557409, -0.724174,
		0.913856, -0.248367, -0.321218,
		45.976624, 36.117348, 33.145561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268024, 35.580284, 33.236412>,  <45.336922, 36.291203, 33.370415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268024, 35.580284, 33.236412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658264, 35.659847, 33.273582>,  <45.892410, 35.707584, 33.295883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658264, 35.659847, 33.273582>,  <45.268024, 35.580284, 33.236412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658264, 35.659847, 33.273582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096152, -0.767634, 0.633635,
		0.197363, -0.609241, -0.768032,
		0.975604, 0.198904, 0.092923,
		45.950947, 35.719517, 33.301460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627655, 34.972084, 33.169445>,  <45.268024, 35.580284, 33.236412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627655, 34.972084, 33.169445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917969, 35.176670, 33.353462>,  <46.092155, 35.299423, 33.463871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917969, 35.176670, 33.353462>,  <45.627655, 34.972084, 33.169445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917969, 35.176670, 33.353462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214000, -0.803427, 0.555616,
		0.653788, -0.304809, -0.692569,
		0.725786, 0.511465, 0.460042,
		46.135704, 35.330109, 33.491474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040810, 34.451981, 33.349663>,  <45.627655, 34.972084, 33.169445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040810, 34.451981, 33.349663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166370, 34.754890, 33.578747>,  <46.241707, 34.936638, 33.716198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166370, 34.754890, 33.578747>,  <46.040810, 34.451981, 33.349663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166370, 34.754890, 33.578747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380070, -0.652986, 0.655100,
		0.870065, 0.012035, -0.492791,
		0.313902, 0.757274, 0.572714,
		46.260540, 34.982071, 33.750561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.694233, 34.338947, 33.476871>,  <46.040810, 34.451981, 33.349663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.694233, 34.338947, 33.476871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601166, 34.569588, 33.790150>,  <46.545326, 34.707973, 33.978115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601166, 34.569588, 33.790150>,  <46.694233, 34.338947, 33.476871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601166, 34.569588, 33.790150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271900, -0.734620, 0.621614,
		0.933775, 0.357582, 0.014146,
		-0.232670, 0.576601, 0.783196,
		46.531364, 34.742569, 34.025108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221050, 34.232941, 33.913181>,  <46.694233, 34.338947, 33.476871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221050, 34.232941, 33.913181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952896, 34.389107, 34.165585>,  <46.792004, 34.482807, 34.317024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952896, 34.389107, 34.165585>,  <47.221050, 34.232941, 33.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952896, 34.389107, 34.165585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312635, -0.622612, 0.717366,
		0.672940, 0.678182, 0.295330,
		-0.670381, 0.390414, 0.631004,
		46.751781, 34.506229, 34.354885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595688, 34.401432, 34.506306>,  <47.221050, 34.232941, 33.913181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595688, 34.401432, 34.506306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.214157, 34.314545, 34.589272>,  <46.985237, 34.262413, 34.639053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.214157, 34.314545, 34.589272>,  <47.595688, 34.401432, 34.506306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214157, 34.314545, 34.589272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299028, -0.622173, 0.723522,
		-0.028115, 0.752141, 0.658402,
		-0.953830, -0.217222, 0.207419,
		46.928009, 34.249378, 34.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209789, 35.083195, 34.367065>,  <47.595688, 34.401432, 34.506306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209789, 35.083195, 34.367065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072239, 35.067333, 34.742336>,  <46.989708, 35.057816, 34.967499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072239, 35.067333, 34.742336>,  <47.209789, 35.083195, 34.367065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.072239, 35.067333, 34.742336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725199, -0.645912, 0.238504,
		0.596522, 0.762381, 0.250871,
		-0.343871, -0.039658, 0.938179,
		46.969078, 35.055435, 35.023788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.817696, 35.220772, 34.815643>,  <47.209789, 35.083195, 34.367065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.817696, 35.220772, 34.815643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538918, 34.971020, 34.956738>,  <47.371651, 34.821167, 35.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538918, 34.971020, 34.956738>,  <47.817696, 35.220772, 34.815643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538918, 34.971020, 34.956738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712494, -0.658706, 0.241781,
		0.081387, 0.419830, 0.903946,
		-0.696942, -0.624379, 0.352737,
		47.329834, 34.783707, 35.062557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.012775, 35.051395, 35.550365>,  <47.817696, 35.220772, 34.815643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.012775, 35.051395, 35.550365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801540, 34.769157, 35.361366>,  <47.674797, 34.599815, 35.247967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801540, 34.769157, 35.361366>,  <48.012775, 35.051395, 35.550365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801540, 34.769157, 35.361366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743501, -0.653007, 0.144179,
		-0.410277, -0.275163, 0.869459,
		-0.528090, -0.705597, -0.472497,
		47.643112, 34.557480, 35.219616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.871105, 32.842541, 43.878262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666901, 32.499470, 43.902813>,  <37.544376, 32.293629, 43.917542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666901, 32.499470, 43.902813>,  <37.871105, 32.842541, 43.878262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666901, 32.499470, 43.902813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375932, 0.158428, -0.913004,
		0.773340, -0.489171, -0.403308,
		-0.510510, -0.857678, 0.061376,
		37.513748, 32.242165, 43.921227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104237, 32.375298, 43.256462>,  <37.871105, 32.842541, 43.878262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104237, 32.375298, 43.256462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760025, 32.218418, 43.386486>,  <37.553497, 32.124290, 43.464500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760025, 32.218418, 43.386486>,  <38.104237, 32.375298, 43.256462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760025, 32.218418, 43.386486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405418, 0.140956, -0.903199,
		0.308417, -0.909015, -0.280303,
		-0.860532, -0.392202, 0.325058,
		37.501865, 32.100758, 43.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885033, 31.912235, 42.824669>,  <38.104237, 32.375298, 43.256462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885033, 31.912235, 42.824669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541630, 31.958216, 43.024574>,  <37.335590, 31.985804, 43.144516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541630, 31.958216, 43.024574>,  <37.885033, 31.912235, 42.824669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541630, 31.958216, 43.024574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496125, 0.060380, -0.866149,
		-0.129742, -0.991534, 0.005195,
		-0.858503, 0.114953, 0.499759,
		37.284081, 31.992701, 43.174503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353428, 31.458967, 42.525513>,  <37.885033, 31.912235, 42.824669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353428, 31.458967, 42.525513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131836, 31.711967, 42.742050>,  <36.998882, 31.863768, 42.871975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131836, 31.711967, 42.742050>,  <37.353428, 31.458967, 42.525513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131836, 31.711967, 42.742050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569809, 0.186022, -0.800445,
		-0.606983, -0.751892, 0.257352,
		-0.553975, 0.632499, 0.541347,
		36.965645, 31.901716, 42.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661221, 31.328924, 42.315426>,  <37.353428, 31.458967, 42.525513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661221, 31.328924, 42.315426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653912, 31.698496, 42.468277>,  <36.649525, 31.920238, 42.559986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653912, 31.698496, 42.468277>,  <36.661221, 31.328924, 42.315426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653912, 31.698496, 42.468277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521035, 0.317391, -0.792329,
		-0.853339, -0.213577, 0.475602,
		-0.018271, 0.923931, 0.382123,
		36.648430, 31.975676, 42.582912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978764, 31.478228, 42.218987>,  <36.661221, 31.328924, 42.315426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978764, 31.478228, 42.218987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170090, 31.822815, 42.287205>,  <36.284885, 32.029568, 42.328136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170090, 31.822815, 42.287205>,  <35.978764, 31.478228, 42.218987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170090, 31.822815, 42.287205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733533, 0.498699, -0.461768,
		-0.482850, 0.095769, 0.870451,
		0.478316, 0.861468, 0.170546,
		36.313583, 32.081257, 42.338367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421124, 32.062786, 42.404583>,  <35.978764, 31.478228, 42.218987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421124, 32.062786, 42.404583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749474, 32.249569, 42.273064>,  <35.946484, 32.361637, 42.194153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749474, 32.249569, 42.273064>,  <35.421124, 32.062786, 42.404583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749474, 32.249569, 42.273064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567232, 0.599740, -0.564411,
		-0.066364, 0.649817, 0.757188,
		0.820880, 0.466958, -0.328796,
		35.995739, 32.389656, 42.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362007, 32.755978, 42.542095>,  <35.421124, 32.062786, 42.404583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362007, 32.755978, 42.542095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602745, 32.708084, 42.226257>,  <35.747189, 32.679348, 42.036755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602745, 32.708084, 42.226257>,  <35.362007, 32.755978, 42.542095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602745, 32.708084, 42.226257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515490, 0.696904, -0.498593,
		0.609965, 0.707099, 0.357705,
		0.601841, -0.119731, -0.789590,
		35.783298, 32.672165, 41.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416481, 33.466801, 42.399399>,  <35.362007, 32.755978, 42.542095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416481, 33.466801, 42.399399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573524, 33.259224, 42.095673>,  <35.667751, 33.134678, 41.913437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573524, 33.259224, 42.095673>,  <35.416481, 33.466801, 42.399399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573524, 33.259224, 42.095673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360875, 0.672470, -0.646184,
		0.845947, 0.527716, 0.076746,
		0.392611, -0.518941, -0.759313,
		35.691307, 33.103542, 41.867878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699017, 33.977154, 41.870995>,  <35.416481, 33.466801, 42.399399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699017, 33.977154, 41.870995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638054, 33.632679, 41.677032>,  <35.601479, 33.425995, 41.560658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638054, 33.632679, 41.677032>,  <35.699017, 33.977154, 41.870995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638054, 33.632679, 41.677032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376565, 0.504223, -0.777147,
		0.913768, 0.064158, -0.401138,
		-0.152403, -0.861187, -0.484902,
		35.592335, 33.374321, 41.531563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952335, 34.036190, 41.146324>,  <35.699017, 33.977154, 41.870995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952335, 34.036190, 41.146324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704994, 33.721855, 41.142410>,  <35.556591, 33.533253, 41.140064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704994, 33.721855, 41.142410>,  <35.952335, 34.036190, 41.146324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704994, 33.721855, 41.142410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463532, 0.374734, -0.802940,
		0.634648, -0.491965, -0.595980,
		-0.618352, -0.785840, -0.009783,
		35.519489, 33.486103, 41.139477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120041, 33.747330, 40.528278>,  <35.952335, 34.036190, 41.146324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120041, 33.747330, 40.528278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756248, 33.598873, 40.603222>,  <35.537975, 33.509800, 40.648190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756248, 33.598873, 40.603222>,  <36.120041, 33.747330, 40.528278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756248, 33.598873, 40.603222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301611, 0.278833, -0.911747,
		0.286176, -0.885711, -0.365540,
		-0.909469, -0.371171, 0.187345,
		35.483406, 33.487530, 40.659431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024918, 33.236477, 40.044422>,  <36.120041, 33.747330, 40.528278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024918, 33.236477, 40.044422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667263, 33.359085, 40.175003>,  <35.452671, 33.432648, 40.253349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667263, 33.359085, 40.175003>,  <36.024918, 33.236477, 40.044422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667263, 33.359085, 40.175003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229367, 0.312624, -0.921768,
		-0.384595, -0.899062, -0.209223,
		-0.894135, 0.306518, 0.326449,
		35.399021, 33.451042, 40.272938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582584, 32.978653, 39.541904>,  <36.024918, 33.236477, 40.044422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582584, 32.978653, 39.541904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349861, 33.243244, 39.731197>,  <35.210228, 33.402000, 39.844772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349861, 33.243244, 39.731197>,  <35.582584, 32.978653, 39.541904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349861, 33.243244, 39.731197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400656, 0.273257, -0.874532,
		-0.707799, -0.698409, 0.106044,
		-0.581803, 0.661480, 0.473233,
		35.175320, 33.441689, 39.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988071, 32.957809, 39.179573>,  <35.582584, 32.978653, 39.541904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988071, 32.957809, 39.179573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925949, 33.297394, 39.381622>,  <34.888676, 33.501144, 39.502850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925949, 33.297394, 39.381622>,  <34.988071, 32.957809, 39.179573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925949, 33.297394, 39.381622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406275, 0.411191, -0.816004,
		-0.900456, -0.331946, 0.281052,
		-0.155303, 0.848960, 0.505121,
		34.879356, 33.552082, 39.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347202, 33.231529, 38.976307>,  <34.988071, 32.957809, 39.179573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347202, 33.231529, 38.976307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525085, 33.558613, 39.122509>,  <34.631813, 33.754864, 39.210228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525085, 33.558613, 39.122509>,  <34.347202, 33.231529, 38.976307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525085, 33.558613, 39.122509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402394, 0.546971, -0.734099,
		-0.800198, 0.179381, 0.572281,
		0.444705, 0.817707, 0.365503,
		34.658497, 33.803925, 39.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891006, 33.759346, 38.904835>,  <34.347202, 33.231529, 38.976307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891006, 33.759346, 38.904835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249523, 33.936333, 38.916714>,  <34.464634, 34.042526, 38.923840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249523, 33.936333, 38.916714>,  <33.891006, 33.759346, 38.904835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249523, 33.936333, 38.916714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298164, 0.650837, -0.698218,
		-0.328267, 0.616953, 0.715269,
		0.896292, 0.442469, 0.029696,
		34.518410, 34.069073, 38.925621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827312, 34.534721, 38.911469>,  <33.891006, 33.759346, 38.904835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827312, 34.534721, 38.911469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207588, 34.467846, 38.806984>,  <34.435753, 34.427723, 38.744293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207588, 34.467846, 38.806984>,  <33.827312, 34.534721, 38.911469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207588, 34.467846, 38.806984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081031, 0.679101, -0.729559,
		0.299364, 0.714752, 0.632068,
		0.950692, -0.167186, -0.261216,
		34.492794, 34.417690, 38.728619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176243, 35.236427, 38.854481>,  <33.827312, 34.534721, 38.911469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176243, 35.236427, 38.854481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377949, 34.972721, 38.631378>,  <34.498970, 34.814499, 38.497517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377949, 34.972721, 38.631378>,  <34.176243, 35.236427, 38.854481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377949, 34.972721, 38.631378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156407, 0.704929, -0.691818,
		0.849269, 0.261620, 0.458582,
		0.504260, -0.659265, -0.557755,
		34.529228, 34.774940, 38.464050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756874, 35.583672, 38.578667>,  <34.176243, 35.236427, 38.854481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756874, 35.583672, 38.578667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 35.269714, 38.332375>,  <34.801338, 35.081341, 38.184601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784664, 35.269714, 38.332375>,  <34.756874, 35.583672, 38.578667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784664, 35.269714, 38.332375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158135, 0.618079, -0.770046,
		0.984970, -0.043871, 0.167058,
		0.069472, -0.784890, -0.615727,
		34.805508, 35.034248, 38.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456490, 35.622849, 38.095196>,  <34.756874, 35.583672, 38.578667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456490, 35.622849, 38.095196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187759, 35.390369, 37.911514>,  <35.026520, 35.250881, 37.801308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187759, 35.390369, 37.911514>,  <35.456490, 35.622849, 38.095196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187759, 35.390369, 37.911514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065150, 0.571176, -0.818238,
		0.737841, -0.579629, -0.345865,
		-0.671824, -0.581196, -0.459200,
		34.986214, 35.216011, 37.773754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761398, 35.540630, 37.459198>,  <35.456490, 35.622849, 38.095196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761398, 35.540630, 37.459198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368584, 35.469475, 37.434002>,  <35.132896, 35.426781, 37.418884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368584, 35.469475, 37.434002>,  <35.761398, 35.540630, 37.459198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368584, 35.469475, 37.434002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015755, 0.409903, -0.911993,
		0.188050, -0.894615, -0.405341,
		-0.982033, -0.177886, -0.062987,
		35.073975, 35.416107, 37.415104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442318, 35.392612, 37.234814>,  <35.761398, 35.540630, 37.459198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442318, 35.392612, 37.234814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755383, 35.554241, 37.045425>,  <36.943222, 35.651218, 36.931793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755383, 35.554241, 37.045425>,  <36.442318, 35.392612, 37.234814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755383, 35.554241, 37.045425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612597, -0.365202, 0.700965,
		0.110330, -0.838661, -0.533363,
		0.782657, 0.404074, -0.473468,
		36.990181, 35.675465, 36.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001369, 34.879734, 36.969418>,  <36.442318, 35.392612, 37.234814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001369, 34.879734, 36.969418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150230, 35.245525, 37.032948>,  <37.239548, 35.465000, 37.071068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150230, 35.245525, 37.032948>,  <37.001369, 34.879734, 36.969418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150230, 35.245525, 37.032948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636170, -0.375913, 0.673778,
		0.675864, -0.149704, -0.721662,
		0.372150, 0.914482, 0.158829,
		37.261875, 35.519871, 37.080597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537220, 34.673656, 37.398163>,  <37.001369, 34.879734, 36.969418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537220, 34.673656, 37.398163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556229, 35.071308, 37.437035>,  <37.567635, 35.309898, 37.460358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556229, 35.071308, 37.437035>,  <37.537220, 34.673656, 37.398163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556229, 35.071308, 37.437035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629091, -0.105355, 0.770159,
		0.775878, 0.024536, -0.630406,
		0.047520, 0.994132, 0.097178,
		37.570484, 35.369549, 37.466187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236553, 34.861134, 37.579990>,  <37.537220, 34.673656, 37.398163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236553, 34.861134, 37.579990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993126, 35.149479, 37.712654>,  <37.847069, 35.322487, 37.792252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.993126, 35.149479, 37.712654>,  <38.236553, 34.861134, 37.579990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993126, 35.149479, 37.712654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429396, -0.052315, 0.901600,
		0.667285, 0.691096, -0.277700,
		-0.608564, 0.720867, 0.331663,
		37.810558, 35.365738, 37.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722248, 35.326153, 37.794029>,  <38.236553, 34.861134, 37.579990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722248, 35.326153, 37.794029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372890, 35.413334, 37.968239>,  <38.163277, 35.465645, 38.072765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372890, 35.413334, 37.968239>,  <38.722248, 35.326153, 37.794029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372890, 35.413334, 37.968239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457358, 0.059784, 0.887271,
		0.167349, 0.974126, -0.151899,
		-0.873394, 0.217956, 0.435519,
		38.110870, 35.478722, 38.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822563, 35.866062, 38.287251>,  <38.722248, 35.326153, 37.794029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822563, 35.866062, 38.287251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465019, 35.730598, 38.404778>,  <38.250492, 35.649319, 38.475292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465019, 35.730598, 38.404778>,  <38.822563, 35.866062, 38.287251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465019, 35.730598, 38.404778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227229, 0.222751, 0.948024,
		-0.386505, 0.914162, -0.122155,
		-0.893857, -0.338659, 0.293818,
		38.196861, 35.629002, 38.492924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520748, 36.371910, 38.741566>,  <38.822563, 35.866062, 38.287251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520748, 36.371910, 38.741566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357292, 36.018158, 38.831802>,  <38.259220, 35.805908, 38.885944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357292, 36.018158, 38.831802>,  <38.520748, 36.371910, 38.741566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357292, 36.018158, 38.831802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300140, 0.103209, 0.948295,
		-0.861934, 0.455217, 0.223263,
		-0.408638, -0.884378, 0.225589,
		38.234699, 35.752846, 38.899479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300007, 36.361153, 39.437641>,  <38.520748, 36.371910, 38.741566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300007, 36.361153, 39.437641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302071, 35.964634, 39.385036>,  <38.303307, 35.726723, 39.353474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302071, 35.964634, 39.385036>,  <38.300007, 36.361153, 39.437641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302071, 35.964634, 39.385036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213174, -0.127399, 0.968673,
		-0.977001, -0.033029, 0.210663,
		0.005155, -0.991302, -0.131510,
		38.303616, 35.667244, 39.345585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902679, 36.215977, 39.938084>,  <38.300007, 36.361153, 39.437641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902679, 36.215977, 39.938084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072491, 35.865044, 39.848583>,  <38.174377, 35.654484, 39.794884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072491, 35.865044, 39.848583>,  <37.902679, 36.215977, 39.938084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072491, 35.865044, 39.848583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312936, -0.089716, 0.945527,
		-0.849615, -0.471424, 0.236462,
		0.424529, -0.877332, -0.223750,
		38.199848, 35.601845, 39.781460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727901, 35.769367, 40.438007>,  <37.902679, 36.215977, 39.938084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727901, 35.769367, 40.438007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062401, 35.606274, 40.291344>,  <38.263100, 35.508415, 40.203346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062401, 35.606274, 40.291344>,  <37.727901, 35.769367, 40.438007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062401, 35.606274, 40.291344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351721, -0.114142, 0.929120,
		-0.420689, -0.905936, 0.047959,
		0.836249, -0.407739, -0.366656,
		38.313274, 35.483952, 40.181347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918957, 35.172703, 40.811039>,  <37.727901, 35.769367, 40.438007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918957, 35.172703, 40.811039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272648, 35.260715, 40.646248>,  <38.484863, 35.313522, 40.547375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272648, 35.260715, 40.646248>,  <37.918957, 35.172703, 40.811039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272648, 35.260715, 40.646248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466909, -0.394786, 0.791290,
		0.011465, -0.892037, -0.451816,
		0.884231, 0.220029, -0.411974,
		38.537918, 35.326725, 40.522655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255508, 34.514057, 40.831059>,  <37.918957, 35.172703, 40.811039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255508, 34.514057, 40.831059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530106, 34.802029, 40.790211>,  <38.694862, 34.974812, 40.765701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530106, 34.802029, 40.790211>,  <38.255508, 34.514057, 40.831059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530106, 34.802029, 40.790211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552391, -0.425007, 0.717101,
		0.472861, -0.548694, -0.689447,
		0.686489, 0.719934, -0.102124,
		38.736053, 35.018009, 40.759575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954868, 34.275787, 40.725193>,  <38.255508, 34.514057, 40.831059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954868, 34.275787, 40.725193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966476, 34.617046, 40.933540>,  <38.973442, 34.821800, 41.058548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966476, 34.617046, 40.933540>,  <38.954868, 34.275787, 40.725193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966476, 34.617046, 40.933540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549630, -0.448860, 0.704580,
		0.834904, 0.265841, -0.481937,
		0.029016, 0.853143, 0.520869,
		38.975182, 34.872990, 41.089802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583115, 34.239971, 40.984207>,  <38.954868, 34.275787, 40.725193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583115, 34.239971, 40.984207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410439, 34.518063, 41.214092>,  <39.306831, 34.684917, 41.352024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410439, 34.518063, 41.214092>,  <39.583115, 34.239971, 40.984207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410439, 34.518063, 41.214092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468722, -0.371471, 0.801442,
		0.770676, 0.615357, -0.165508,
		-0.431692, 0.695230, 0.574715,
		39.280930, 34.726631, 41.386505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114002, 34.481766, 41.350033>,  <39.583115, 34.239971, 40.984207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114002, 34.481766, 41.350033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786781, 34.571144, 41.562019>,  <39.590450, 34.624771, 41.689213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786781, 34.571144, 41.562019>,  <40.114002, 34.481766, 41.350033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786781, 34.571144, 41.562019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429109, -0.376430, 0.821076,
		0.382958, 0.899097, 0.212058,
		-0.818052, 0.223441, 0.529967,
		39.541367, 34.638176, 41.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359470, 34.661896, 41.925526>,  <40.114002, 34.481766, 41.350033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359470, 34.661896, 41.925526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.979034, 34.575478, 42.013851>,  <39.750774, 34.523628, 42.066845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.979034, 34.575478, 42.013851>,  <40.359470, 34.661896, 41.925526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979034, 34.575478, 42.013851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302472, -0.505954, 0.807788,
		-0.062798, 0.835066, 0.546554,
		-0.951087, -0.216045, 0.220811,
		39.693707, 34.510666, 42.080093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348225, 34.744873, 42.671150>,  <40.359470, 34.661896, 41.925526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348225, 34.744873, 42.671150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017414, 34.546146, 42.565933>,  <39.818928, 34.426910, 42.502804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017414, 34.546146, 42.565933>,  <40.348225, 34.744873, 42.671150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017414, 34.546146, 42.565933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056014, -0.392762, 0.917933,
		-0.559359, 0.773893, 0.296997,
		-0.827031, -0.496818, -0.263044,
		39.769306, 34.397102, 42.487019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036575, 34.791756, 43.227097>,  <40.348225, 34.744873, 42.671150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036575, 34.791756, 43.227097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869648, 34.492985, 43.020042>,  <39.769489, 34.313725, 42.895809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869648, 34.492985, 43.020042>,  <40.036575, 34.791756, 43.227097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869648, 34.492985, 43.020042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007726, -0.566674, 0.823906,
		-0.908727, 0.347832, 0.230714,
		-0.417320, -0.746923, -0.517639,
		39.744453, 34.268909, 42.864750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.383839, 34.453400, 43.672127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452438, 34.170662, 43.397621>,  <39.493599, 34.001019, 43.232918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452438, 34.170662, 43.397621>,  <39.383839, 34.453400, 43.672127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452438, 34.170662, 43.397621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079345, -0.684414, 0.724763,
		-0.981984, -0.178746, -0.061290,
		0.171496, -0.706843, -0.686267,
		39.503887, 33.958611, 43.191742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873436, 33.944702, 43.769424>,  <39.383839, 34.453400, 43.672127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873436, 33.944702, 43.769424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198269, 33.778648, 43.605385>,  <39.393169, 33.679016, 43.506962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198269, 33.778648, 43.605385>,  <38.873436, 33.944702, 43.769424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198269, 33.778648, 43.605385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017564, -0.685066, 0.728270,
		-0.583274, -0.598621, -0.549040,
		0.812086, -0.415137, -0.410095,
		39.441895, 33.654106, 43.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741608, 33.255032, 43.929756>,  <38.873436, 33.944702, 43.769424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741608, 33.255032, 43.929756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130638, 33.249260, 43.836903>,  <39.364056, 33.245796, 43.781189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.130638, 33.249260, 43.836903>,  <38.741608, 33.255032, 43.929756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130638, 33.249260, 43.836903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157561, -0.693304, 0.703210,
		-0.171088, -0.720501, -0.672017,
		0.972576, -0.014427, -0.232138,
		39.422409, 33.244930, 43.767262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872837, 32.579330, 44.010941>,  <38.741608, 33.255032, 43.929756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872837, 32.579330, 44.010941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216064, 32.783825, 44.030354>,  <39.422001, 32.906521, 44.042004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216064, 32.783825, 44.030354>,  <38.872837, 32.579330, 44.010941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216064, 32.783825, 44.030354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248076, -0.495410, 0.832482,
		0.449638, -0.702288, -0.551922,
		0.858070, 0.511235, 0.048535,
		39.473484, 32.937195, 44.044914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458885, 32.041695, 44.035553>,  <38.872837, 32.579330, 44.010941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458885, 32.041695, 44.035553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642128, 32.366444, 44.180328>,  <39.752075, 32.561295, 44.267193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.642128, 32.366444, 44.180328>,  <39.458885, 32.041695, 44.035553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642128, 32.366444, 44.180328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322219, -0.531157, 0.783612,
		0.828440, -0.242354, -0.504928,
		0.458107, 0.811872, 0.361941,
		39.779560, 32.610004, 44.288910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073204, 31.757959, 44.399189>,  <39.458885, 32.041695, 44.035553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073204, 31.757959, 44.399189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031738, 32.135262, 44.525379>,  <40.006859, 32.361645, 44.601093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031738, 32.135262, 44.525379>,  <40.073204, 31.757959, 44.399189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031738, 32.135262, 44.525379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228110, -0.286179, 0.930628,
		0.968101, 0.168434, -0.185500,
		-0.103663, 0.943256, 0.315472,
		40.000641, 32.418240, 44.620022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667316, 31.884817, 44.717007>,  <40.073204, 31.757959, 44.399189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667316, 31.884817, 44.717007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392384, 32.138515, 44.858601>,  <40.227425, 32.290733, 44.943558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392384, 32.138515, 44.858601>,  <40.667316, 31.884817, 44.717007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392384, 32.138515, 44.858601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, -0.340162, 0.926119,
		0.707799, 0.694279, 0.130374,
		-0.687333, 0.634245, 0.353986,
		40.186184, 32.328789, 44.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025417, 32.232388, 45.216835>,  <40.667316, 31.884817, 44.717007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025417, 32.232388, 45.216835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634178, 32.254093, 45.297218>,  <40.399437, 32.267117, 45.345448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634178, 32.254093, 45.297218>,  <41.025417, 32.232388, 45.216835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634178, 32.254093, 45.297218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168978, -0.356749, 0.918791,
		0.121549, 0.932623, 0.339765,
		-0.978096, 0.054266, 0.200955,
		40.340748, 32.270374, 45.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962929, 32.722183, 45.726315>,  <41.025417, 32.232388, 45.216835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962929, 32.722183, 45.726315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636303, 32.493645, 45.759266>,  <40.440327, 32.356522, 45.779037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636303, 32.493645, 45.759266>,  <40.962929, 32.722183, 45.726315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636303, 32.493645, 45.759266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242253, -0.209647, 0.947292,
		-0.523958, 0.793484, 0.309600,
		-0.816567, -0.571342, 0.082378,
		40.391335, 32.322243, 45.783978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760319, 32.810429, 46.369366>,  <40.962929, 32.722183, 45.726315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760319, 32.810429, 46.369366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570175, 32.470806, 46.277157>,  <40.456089, 32.267033, 46.221832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.570175, 32.470806, 46.277157>,  <40.760319, 32.810429, 46.369366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570175, 32.470806, 46.277157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318985, -0.410519, 0.854238,
		-0.819928, 0.332536, 0.465980,
		-0.475359, -0.849054, -0.230523,
		40.427567, 32.216091, 46.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365082, 32.679909, 46.922962>,  <40.760319, 32.810429, 46.369366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365082, 32.679909, 46.922962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414967, 32.326069, 46.743217>,  <40.444897, 32.113766, 46.635372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.414967, 32.326069, 46.743217>,  <40.365082, 32.679909, 46.922962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414967, 32.326069, 46.743217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390507, -0.372583, 0.841835,
		-0.912115, -0.280461, 0.298980,
		0.124707, -0.884604, -0.449360,
		40.452377, 32.060688, 46.608410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098560, 32.167011, 47.367962>,  <40.365082, 32.679909, 46.922962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098560, 32.167011, 47.367962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351021, 31.990891, 47.112534>,  <40.502499, 31.885218, 46.959274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351021, 31.990891, 47.112534>,  <40.098560, 32.167011, 47.367962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351021, 31.990891, 47.112534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360519, -0.562416, 0.744120,
		-0.686784, -0.699872, -0.196233,
		0.631153, -0.440304, -0.638575,
		40.540367, 31.858799, 46.920959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193764, 31.482683, 47.658096>,  <40.098560, 32.167011, 47.367962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193764, 31.482683, 47.658096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489883, 31.536600, 47.394646>,  <40.667557, 31.568951, 47.236576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489883, 31.536600, 47.394646>,  <40.193764, 31.482683, 47.658096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489883, 31.536600, 47.394646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653428, -0.374631, 0.657787,
		-0.158078, -0.917324, -0.365415,
		0.740299, 0.134791, -0.658626,
		40.711975, 31.577038, 47.197060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543144, 30.897839, 47.868546>,  <40.193764, 31.482683, 47.658096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543144, 30.897839, 47.868546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783607, 31.128092, 47.646824>,  <40.927887, 31.266243, 47.513790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.783607, 31.128092, 47.646824>,  <40.543144, 30.897839, 47.868546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783607, 31.128092, 47.646824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796092, -0.370946, 0.478160,
		0.069626, -0.728730, -0.681253,
		0.601157, 0.575632, -0.554308,
		40.963955, 31.300781, 47.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026855, 30.504879, 47.526764>,  <40.543144, 30.897839, 47.868546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026855, 30.504879, 47.526764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172863, 30.874722, 47.570328>,  <41.260468, 31.096626, 47.596466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.172863, 30.874722, 47.570328>,  <41.026855, 30.504879, 47.526764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172863, 30.874722, 47.570328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762489, -0.364025, 0.534880,
		0.534199, -0.112201, -0.837880,
		0.365023, 0.924606, 0.108909,
		41.282372, 31.152103, 47.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674870, 30.398325, 47.303947>,  <41.026855, 30.504879, 47.526764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674870, 30.398325, 47.303947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.723652, 30.740423, 47.505417>,  <41.752922, 30.945683, 47.626297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.723652, 30.740423, 47.505417>,  <41.674870, 30.398325, 47.303947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723652, 30.740423, 47.505417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766497, -0.403543, 0.499635,
		0.630563, 0.325129, -0.704757,
		0.121954, 0.855245, 0.503670,
		41.760239, 30.996996, 47.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349159, 30.631945, 47.190567>,  <41.674870, 30.398325, 47.303947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349159, 30.631945, 47.190567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221149, 30.779709, 47.539536>,  <42.144344, 30.868368, 47.748917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221149, 30.779709, 47.539536>,  <42.349159, 30.631945, 47.190567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221149, 30.779709, 47.539536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724922, -0.497397, 0.476533,
		0.609977, 0.784940, -0.108615,
		-0.320025, 0.369412, 0.872422,
		42.125141, 30.890532, 47.801262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933578, 30.890383, 47.512737>,  <42.349159, 30.631945, 47.190567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933578, 30.890383, 47.512737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.664814, 30.874060, 47.808540>,  <42.503555, 30.864265, 47.986023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.664814, 30.874060, 47.808540>,  <42.933578, 30.890383, 47.512737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664814, 30.874060, 47.808540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721137, -0.263610, 0.640680,
		0.168797, 0.963766, 0.206550,
		-0.671914, -0.040806, 0.739504,
		42.463242, 30.861818, 48.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136967, 31.350647, 48.085571>,  <42.933578, 30.890383, 47.512737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136967, 31.350647, 48.085571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.896778, 31.083443, 48.261387>,  <42.752663, 30.923120, 48.366875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.896778, 31.083443, 48.261387>,  <43.136967, 31.350647, 48.085571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896778, 31.083443, 48.261387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727279, -0.227739, 0.647457,
		-0.332409, 0.708447, 0.622581,
		-0.600475, -0.668010, 0.439536,
		42.716637, 30.883039, 48.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273739, 31.451761, 48.798523>,  <43.136967, 31.350647, 48.085571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273739, 31.451761, 48.798523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104053, 31.089645, 48.789654>,  <43.002243, 30.872375, 48.784332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104053, 31.089645, 48.789654>,  <43.273739, 31.451761, 48.798523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104053, 31.089645, 48.789654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607095, -0.302479, 0.734808,
		-0.671923, 0.298250, 0.677913,
		-0.424211, -0.905292, -0.022177,
		42.976791, 30.818058, 48.783001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073078, 31.245686, 49.496307>,  <43.273739, 31.451761, 48.798523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073078, 31.245686, 49.496307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.091450, 30.902613, 49.291458>,  <43.102474, 30.696770, 49.168549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.091450, 30.902613, 49.291458>,  <43.073078, 31.245686, 49.496307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091450, 30.902613, 49.291458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687684, -0.344699, 0.638962,
		-0.724555, -0.381527, 0.573983,
		0.045929, -0.857683, -0.512123,
		43.105228, 30.645308, 49.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014725, 30.711941, 49.959839>,  <43.073078, 31.245686, 49.496307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014725, 30.711941, 49.959839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.229290, 30.574697, 49.651413>,  <43.358028, 30.492352, 49.466358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.229290, 30.574697, 49.651413>,  <43.014725, 30.711941, 49.959839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229290, 30.574697, 49.651413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707700, -0.314893, 0.632458,
		-0.459805, -0.884939, 0.073907,
		0.536414, -0.343111, -0.771061,
		43.390213, 30.471764, 49.420094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079075, 29.866829, 50.077671>,  <43.014725, 30.711941, 49.959839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079075, 29.866829, 50.077671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054646, 29.797689, 50.470894>,  <43.039989, 29.756207, 50.706825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.054646, 29.797689, 50.470894>,  <43.079075, 29.866829, 50.077671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054646, 29.797689, 50.470894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802889, 0.593632, 0.054495,
		-0.592991, -0.785954, -0.175033,
		-0.061075, -0.172848, 0.983053,
		43.036324, 29.745834, 50.765808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668674, 29.326254, 50.185814>,  <43.079075, 29.866829, 50.077671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668674, 29.326254, 50.185814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.668533, 29.583576, 50.492058>,  <42.668449, 29.737970, 50.675804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.668533, 29.583576, 50.492058>,  <42.668674, 29.326254, 50.185814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668533, 29.583576, 50.492058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967645, 0.192955, -0.162579,
		-0.252316, -0.740894, 0.622424,
		-0.000354, 0.643307, 0.765608,
		42.668427, 29.776567, 50.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039352, 29.105745, 49.879192>,  <42.668674, 29.326254, 50.185814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039352, 29.105745, 49.879192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.850166, 28.754425, 49.851219>,  <41.736656, 28.543633, 49.834435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.850166, 28.754425, 49.851219>,  <42.039352, 29.105745, 49.879192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850166, 28.754425, 49.851219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504706, 0.335130, -0.795588,
		0.722202, -0.340990, -0.601789,
		-0.472965, -0.878302, -0.069932,
		41.708275, 28.490934, 49.830238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141895, 28.927805, 49.121773>,  <42.039352, 29.105745, 49.879192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141895, 28.927805, 49.121773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823456, 28.744946, 49.280388>,  <41.632393, 28.635229, 49.375557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823456, 28.744946, 49.280388>,  <42.141895, 28.927805, 49.121773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823456, 28.744946, 49.280388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537326, 0.232507, -0.810692,
		0.278404, -0.858463, -0.430734,
		-0.796098, -0.457144, 0.396544,
		41.584625, 28.607801, 49.399349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859016, 28.422886, 48.622494>,  <42.141895, 28.927805, 49.121773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859016, 28.422886, 48.622494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550407, 28.538900, 48.848988>,  <41.365242, 28.608509, 48.984886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.550407, 28.538900, 48.848988>,  <41.859016, 28.422886, 48.622494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550407, 28.538900, 48.848988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491374, 0.293670, -0.819945,
		-0.404102, -0.910843, -0.084057,
		-0.771526, 0.290039, 0.566237,
		41.318951, 28.625912, 49.018860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250977, 28.230038, 48.262421>,  <41.859016, 28.422886, 48.622494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250977, 28.230038, 48.262421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095234, 28.480728, 48.532417>,  <41.001789, 28.631142, 48.694416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095234, 28.480728, 48.532417>,  <41.250977, 28.230038, 48.262421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095234, 28.480728, 48.532417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586257, 0.396594, -0.706411,
		-0.710423, -0.670767, 0.213004,
		-0.389361, 0.626726, 0.674991,
		40.978424, 28.668745, 48.734913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532154, 28.053493, 48.209732>,  <41.250977, 28.230038, 48.262421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532154, 28.053493, 48.209732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567505, 28.404066, 48.399071>,  <40.588715, 28.614410, 48.512672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567505, 28.404066, 48.399071>,  <40.532154, 28.053493, 48.209732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567505, 28.404066, 48.399071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600593, 0.425991, -0.676624,
		-0.794656, -0.224492, 0.564026,
		0.088373, 0.876433, 0.473345,
		40.594017, 28.666996, 48.541073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897671, 28.308531, 48.490612>,  <40.532154, 28.053493, 48.209732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897671, 28.308531, 48.490612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141289, 28.619408, 48.427319>,  <40.287460, 28.805933, 48.389343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141289, 28.619408, 48.427319>,  <39.897671, 28.308531, 48.490612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141289, 28.619408, 48.427319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668289, 0.395415, -0.630108,
		-0.427146, 0.489511, 0.760214,
		0.609045, 0.777191, -0.158235,
		40.324001, 28.852566, 48.379848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414234, 28.773842, 48.434681>,  <39.897671, 28.308531, 48.490612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414234, 28.773842, 48.434681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735294, 28.959585, 48.284950>,  <39.927933, 29.071032, 48.195110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735294, 28.959585, 48.284950>,  <39.414234, 28.773842, 48.434681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735294, 28.959585, 48.284950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589339, 0.520848, -0.617574,
		-0.091807, 0.716304, 0.691723,
		0.802653, 0.464356, -0.374328,
		39.976089, 29.098892, 48.172653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245419, 29.536152, 48.388058>,  <39.414234, 28.773842, 48.434681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245419, 29.536152, 48.388058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555622, 29.472723, 48.143620>,  <39.741745, 29.434666, 47.996956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555622, 29.472723, 48.143620>,  <39.245419, 29.536152, 48.388058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555622, 29.472723, 48.143620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382950, 0.651392, -0.655009,
		0.501931, 0.741985, 0.444435,
		0.775509, -0.158573, -0.611098,
		39.788277, 29.425152, 47.960289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293625, 30.046619, 47.962761>,  <39.245419, 29.536152, 48.388058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293625, 30.046619, 47.962761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535942, 29.805523, 47.755024>,  <39.681332, 29.660866, 47.630383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535942, 29.805523, 47.755024>,  <39.293625, 30.046619, 47.962761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535942, 29.805523, 47.755024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198971, 0.517240, -0.832390,
		0.770341, 0.607591, 0.193413,
		0.605793, -0.602741, -0.519344,
		39.717682, 29.624701, 47.599220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786583, 30.499439, 47.609661>,  <39.293625, 30.046619, 47.962761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786583, 30.499439, 47.609661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757725, 30.163527, 47.394417>,  <39.740410, 29.961979, 47.265270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757725, 30.163527, 47.394417>,  <39.786583, 30.499439, 47.609661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757725, 30.163527, 47.394417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259271, 0.536758, -0.802913,
		0.963107, 0.081594, -0.256453,
		-0.072141, -0.839781, -0.538110,
		39.736084, 29.911592, 47.232983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167332, 30.607784, 46.999363>,  <39.786583, 30.499439, 47.609661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167332, 30.607784, 46.999363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907768, 30.307766, 46.948208>,  <39.752029, 30.127756, 46.917515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907768, 30.307766, 46.948208>,  <40.167332, 30.607784, 46.999363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907768, 30.307766, 46.948208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375593, 0.461938, -0.803457,
		0.661703, -0.473336, -0.581466,
		-0.648906, -0.750045, -0.127884,
		39.713097, 30.082752, 46.909843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064575, 30.633442, 46.364067>,  <40.167332, 30.607784, 46.999363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064575, 30.633442, 46.364067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739838, 30.428579, 46.476215>,  <39.544994, 30.305662, 46.543507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739838, 30.428579, 46.476215>,  <40.064575, 30.633442, 46.364067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739838, 30.428579, 46.476215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459514, 0.264185, -0.847970,
		0.360223, -0.817253, -0.449819,
		-0.811841, -0.512157, 0.280373,
		39.496284, 30.274933, 46.560329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867798, 30.378998, 45.843075>,  <40.064575, 30.633442, 46.364067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867798, 30.378998, 45.843075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535995, 30.349342, 46.064495>,  <39.336914, 30.331549, 46.197350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535995, 30.349342, 46.064495>,  <39.867798, 30.378998, 45.843075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535995, 30.349342, 46.064495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543497, 0.335328, -0.769523,
		-0.128573, -0.939180, -0.318450,
		-0.829506, -0.074137, 0.553555,
		39.287144, 30.327101, 46.230560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358326, 30.137312, 45.403366>,  <39.867798, 30.378998, 45.843075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358326, 30.137312, 45.403366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124043, 30.288116, 45.690369>,  <38.983471, 30.378599, 45.862568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124043, 30.288116, 45.690369>,  <39.358326, 30.137312, 45.403366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124043, 30.288116, 45.690369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544922, 0.472150, -0.692917,
		-0.600006, -0.796830, -0.071101,
		-0.585707, 0.377010, 0.717503,
		38.948330, 30.401220, 45.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655205, 30.081352, 45.086117>,  <39.358326, 30.137312, 45.403366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655205, 30.081352, 45.086117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600418, 30.329287, 45.395191>,  <38.567547, 30.478046, 45.580635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600418, 30.329287, 45.395191>,  <38.655205, 30.081352, 45.086117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600418, 30.329287, 45.395191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632452, 0.545634, -0.549807,
		-0.762393, -0.563995, 0.317280,
		-0.136970, 0.619833, 0.772687,
		38.559326, 30.515236, 45.626999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910328, 30.127237, 45.353161>,  <38.655205, 30.081352, 45.086117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910328, 30.127237, 45.353161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058025, 30.476971, 45.479149>,  <38.146645, 30.686810, 45.554741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058025, 30.476971, 45.479149>,  <37.910328, 30.127237, 45.353161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058025, 30.476971, 45.479149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587204, 0.482190, -0.650142,
		-0.720315, 0.055107, 0.691454,
		0.369240, 0.874332, 0.314970,
		38.168797, 30.739269, 45.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345528, 30.546804, 45.564949>,  <37.910328, 30.127237, 45.353161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345528, 30.546804, 45.564949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641598, 30.786779, 45.443481>,  <37.819241, 30.930763, 45.370602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641598, 30.786779, 45.443481>,  <37.345528, 30.546804, 45.564949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641598, 30.786779, 45.443481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630834, 0.463226, -0.622470,
		-0.232776, 0.652302, 0.721330,
		0.740178, 0.599936, -0.303666,
		37.863651, 30.966761, 45.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013119, 31.138456, 45.457825>,  <37.345528, 30.546804, 45.564949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013119, 31.138456, 45.457825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361843, 31.195068, 45.270245>,  <37.571079, 31.229036, 45.157696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.361843, 31.195068, 45.270245>,  <37.013119, 31.138456, 45.457825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361843, 31.195068, 45.270245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456859, 0.580299, -0.674190,
		0.176714, 0.802011, 0.570570,
		0.871810, 0.141531, -0.468953,
		37.623386, 31.237528, 45.129559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964581, 31.870230, 45.328396>,  <37.013119, 31.138456, 45.457825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964581, 31.870230, 45.328396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211876, 31.690790, 45.070236>,  <37.360252, 31.583126, 44.915340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211876, 31.690790, 45.070236>,  <36.964581, 31.870230, 45.328396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211876, 31.690790, 45.070236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572920, 0.304945, -0.760770,
		0.538090, 0.840101, -0.068481,
		0.618241, -0.448597, -0.645399,
		37.397346, 31.556211, 44.876617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161873, 32.507996, 44.949078>,  <36.964581, 31.870230, 45.328396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161873, 32.507996, 44.949078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290375, 32.189449, 44.744102>,  <37.367477, 31.998322, 44.621117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290375, 32.189449, 44.744102>,  <37.161873, 32.507996, 44.949078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290375, 32.189449, 44.744102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262970, 0.444819, -0.856144,
		0.909748, 0.409797, -0.066520,
		0.321256, -0.796368, -0.512438,
		37.386753, 31.950539, 44.590370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.702209, 40.964886, 30.496750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302898, 40.961670, 30.473536>,  <45.063313, 40.959740, 30.459606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.302898, 40.961670, 30.473536>,  <45.702209, 40.964886, 30.496750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302898, 40.961670, 30.473536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054485, -0.236811, 0.970027,
		-0.021545, 0.971522, 0.235966,
		-0.998282, -0.008043, -0.058036,
		45.003414, 40.959255, 30.456125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524113, 41.301697, 31.018744>,  <45.702209, 40.964886, 30.496750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524113, 41.301697, 31.018744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172585, 41.125816, 30.944622>,  <44.961666, 41.020290, 30.900148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172585, 41.125816, 30.944622>,  <45.524113, 41.301697, 31.018744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172585, 41.125816, 30.944622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115334, -0.181093, 0.976680,
		-0.463000, 0.879700, 0.108437,
		-0.878822, -0.439697, -0.185305,
		44.908939, 40.993908, 30.889030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075489, 41.504406, 31.533646>,  <45.524113, 41.301697, 31.018744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075489, 41.504406, 31.533646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938526, 41.155365, 31.394323>,  <44.856346, 40.945938, 31.310730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938526, 41.155365, 31.394323>,  <45.075489, 41.504406, 31.533646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938526, 41.155365, 31.394323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191578, -0.298081, 0.935118,
		-0.919811, 0.386922, -0.065106,
		-0.342411, -0.872605, -0.348303,
		44.835804, 40.893585, 31.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636948, 41.295700, 32.028511>,  <45.075489, 41.504406, 31.533646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636948, 41.295700, 32.028511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666508, 40.959362, 31.814028>,  <44.684246, 40.757557, 31.685339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666508, 40.959362, 31.814028>,  <44.636948, 41.295700, 32.028511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666508, 40.959362, 31.814028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194778, -0.539490, 0.819154,
		-0.978059, 0.043902, -0.203649,
		0.073904, -0.840847, -0.536204,
		44.688679, 40.707108, 31.653166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093266, 40.943974, 32.302052>,  <44.636948, 41.295700, 32.028511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093266, 40.943974, 32.302052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.325829, 40.669502, 32.127178>,  <44.465366, 40.504818, 32.022255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.325829, 40.669502, 32.127178>,  <44.093266, 40.943974, 32.302052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325829, 40.669502, 32.127178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084441, -0.585321, 0.806393,
		-0.809219, -0.431927, -0.398251,
		0.581408, -0.686177, -0.437180,
		44.500252, 40.463650, 31.996025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759605, 40.261353, 32.452782>,  <44.093266, 40.943974, 32.302052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759605, 40.261353, 32.452782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142433, 40.169556, 32.381962>,  <44.372131, 40.114475, 32.339470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142433, 40.169556, 32.381962>,  <43.759605, 40.261353, 32.452782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142433, 40.169556, 32.381962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042338, -0.714966, 0.697876,
		-0.286746, -0.660421, -0.693989,
		0.957071, -0.229496, -0.177053,
		44.429554, 40.100708, 32.328846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936241, 39.622540, 32.274128>,  <43.759605, 40.261353, 32.452782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936241, 39.622540, 32.274128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268375, 39.757118, 32.451824>,  <44.467655, 39.837864, 32.558441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268375, 39.757118, 32.451824>,  <43.936241, 39.622540, 32.274128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268375, 39.757118, 32.451824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007509, -0.790356, 0.612602,
		0.557216, -0.512000, -0.653732,
		0.830333, 0.336443, 0.444243,
		44.517475, 39.858051, 32.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090736, 38.934982, 32.450592>,  <43.936241, 39.622540, 32.274128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090736, 38.934982, 32.450592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379341, 39.163864, 32.606541>,  <44.552505, 39.301193, 32.700111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379341, 39.163864, 32.606541>,  <44.090736, 38.934982, 32.450592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379341, 39.163864, 32.606541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224514, -0.725998, 0.650016,
		0.654988, -0.381464, -0.652285,
		0.721515, 0.572200, 0.389876,
		44.595795, 39.335526, 32.723503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546173, 38.478249, 32.667789>,  <44.090736, 38.934982, 32.450592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546173, 38.478249, 32.667789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667046, 38.791466, 32.885239>,  <44.739571, 38.979397, 33.015709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667046, 38.791466, 32.885239>,  <44.546173, 38.478249, 32.667789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667046, 38.791466, 32.885239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336725, -0.621203, 0.707618,
		0.891797, -0.030779, -0.451389,
		0.302184, 0.783045, 0.543622,
		44.757702, 39.026379, 33.048325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262924, 38.381214, 32.816460>,  <44.546173, 38.478249, 32.667789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262924, 38.381214, 32.816460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114830, 38.626678, 33.095413>,  <45.025974, 38.773956, 33.262787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114830, 38.626678, 33.095413>,  <45.262924, 38.381214, 32.816460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114830, 38.626678, 33.095413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245882, -0.659220, 0.710613,
		0.895804, 0.434571, 0.093182,
		-0.370239, 0.613659, 0.697385,
		45.003757, 38.810776, 33.304630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624954, 38.305386, 33.340687>,  <45.262924, 38.381214, 32.816460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624954, 38.305386, 33.340687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285915, 38.452679, 33.493523>,  <45.082493, 38.541054, 33.585224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285915, 38.452679, 33.493523>,  <45.624954, 38.305386, 33.340687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285915, 38.452679, 33.493523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009533, -0.730489, 0.682858,
		0.530560, 0.575144, 0.622668,
		-0.847593, 0.368233, 0.382086,
		45.031639, 38.563148, 33.608147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719967, 38.334637, 34.041676>,  <45.624954, 38.305386, 33.340687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719967, 38.334637, 34.041676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322029, 38.341541, 34.001698>,  <45.083267, 38.345684, 33.977711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322029, 38.341541, 34.001698>,  <45.719967, 38.334637, 34.041676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322029, 38.341541, 34.001698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085658, -0.670626, 0.736833,
		-0.054303, 0.741595, 0.668647,
		-0.994844, 0.017262, -0.099940,
		45.023575, 38.346722, 33.971714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484810, 38.402969, 34.709885>,  <45.719967, 38.334637, 34.041676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484810, 38.402969, 34.709885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190899, 38.247387, 34.487598>,  <45.014553, 38.154037, 34.354229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.190899, 38.247387, 34.487598>,  <45.484810, 38.402969, 34.709885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190899, 38.247387, 34.487598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083741, -0.760980, 0.643348,
		-0.673117, 0.519255, 0.526582,
		-0.734780, -0.388952, -0.555712,
		44.970467, 38.130703, 34.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054676, 38.172855, 35.232170>,  <45.484810, 38.402969, 34.709885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054676, 38.172855, 35.232170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938301, 37.980793, 34.901157>,  <44.868477, 37.865555, 34.702549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938301, 37.980793, 34.901157>,  <45.054676, 38.172855, 35.232170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938301, 37.980793, 34.901157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130162, -0.837041, 0.531431,
		-0.947848, 0.262324, 0.181026,
		-0.290933, -0.480153, -0.827533,
		44.851021, 37.836746, 34.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355202, 37.803955, 35.360001>,  <45.054676, 38.172855, 35.232170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355202, 37.803955, 35.360001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461861, 37.590111, 35.039230>,  <44.525856, 37.461803, 34.846767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461861, 37.590111, 35.039230>,  <44.355202, 37.803955, 35.360001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461861, 37.590111, 35.039230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191865, -0.844843, 0.499428,
		-0.944503, 0.020689, -0.327851,
		0.266650, -0.534614, -0.801926,
		44.541855, 37.429726, 34.798653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880825, 37.309612, 35.342209>,  <44.355202, 37.803955, 35.360001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880825, 37.309612, 35.342209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182480, 37.167027, 35.121590>,  <44.363472, 37.081474, 34.989220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182480, 37.167027, 35.121590>,  <43.880825, 37.309612, 35.342209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182480, 37.167027, 35.121590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154759, -0.912673, 0.378256,
		-0.638219, -0.199901, -0.743448,
		0.754139, -0.356466, -0.551549,
		44.408722, 37.060085, 34.956123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610889, 36.677628, 34.960285>,  <43.880825, 37.309612, 35.342209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610889, 36.677628, 34.960285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010368, 36.657814, 34.965195>,  <44.250057, 36.645927, 34.968140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.010368, 36.657814, 34.965195>,  <43.610889, 36.677628, 34.960285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010368, 36.657814, 34.965195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049827, -0.894726, 0.443828,
		-0.011001, -0.443861, -0.896028,
		0.998697, -0.049529, 0.012274,
		44.309978, 36.642956, 34.968876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828232, 35.926319, 34.784981>,  <43.610889, 36.677628, 34.960285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828232, 35.926319, 34.784981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161652, 36.067345, 34.955109>,  <44.361702, 36.151958, 35.057186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161652, 36.067345, 34.955109>,  <43.828232, 35.926319, 34.784981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161652, 36.067345, 34.955109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209918, -0.914272, 0.346470,
		0.511008, -0.199518, -0.836100,
		0.833550, 0.352561, 0.425318,
		44.411716, 36.173115, 35.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331806, 35.451389, 34.652130>,  <43.828232, 35.926319, 34.784981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331806, 35.451389, 34.652130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.483955, 35.654102, 34.961578>,  <44.575245, 35.775730, 35.147247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.483955, 35.654102, 34.961578>,  <44.331806, 35.451389, 34.652130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483955, 35.654102, 34.961578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098519, -0.853942, 0.510957,
		0.919571, -0.118137, -0.374743,
		0.380372, 0.506780, 0.773622,
		44.598068, 35.806137, 35.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876968, 34.995014, 34.889294>,  <44.331806, 35.451389, 34.652130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876968, 34.995014, 34.889294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760506, 35.233547, 35.188522>,  <44.690628, 35.376667, 35.368061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760506, 35.233547, 35.188522>,  <44.876968, 34.995014, 34.889294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760506, 35.233547, 35.188522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048309, -0.790121, 0.611045,
		0.955454, 0.141772, 0.258859,
		-0.291159, 0.596331, 0.748075,
		44.673157, 35.412445, 35.412945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233082, 34.730480, 35.550613>,  <44.876968, 34.995014, 34.889294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233082, 34.730480, 35.550613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910629, 34.939960, 35.660805>,  <44.717155, 35.065647, 35.726921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910629, 34.939960, 35.660805>,  <45.233082, 34.730480, 35.550613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910629, 34.939960, 35.660805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037056, -0.509313, 0.859783,
		0.590573, 0.682892, 0.429980,
		-0.806133, 0.523698, 0.275481,
		44.668789, 35.097069, 35.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855034, 35.005035, 35.148403>,  <45.233082, 34.730480, 35.550613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855034, 35.005035, 35.148403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134972, 34.851101, 34.907696>,  <46.302933, 34.758739, 34.763271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134972, 34.851101, 34.907696>,  <45.855034, 35.005035, 35.148403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134972, 34.851101, 34.907696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236220, 0.670370, -0.703423,
		0.674110, 0.634433, 0.378246,
		0.699840, -0.384835, -0.601769,
		46.344925, 34.735649, 34.727165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136925, 35.605999, 34.892292>,  <45.855034, 35.005035, 35.148403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136925, 35.605999, 34.892292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260159, 35.322834, 34.638065>,  <46.334099, 35.152935, 34.485531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260159, 35.322834, 34.638065>,  <46.136925, 35.605999, 34.892292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260159, 35.322834, 34.638065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018941, 0.663368, -0.748054,
		0.951169, 0.242506, 0.190967,
		0.308089, -0.707909, -0.635568,
		46.352585, 35.110462, 34.447395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.736897, 35.886669, 34.539829>,  <46.136925, 35.605999, 34.892292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.736897, 35.886669, 34.539829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597961, 35.610138, 34.286400>,  <46.514599, 35.444218, 34.134342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.597961, 35.610138, 34.286400>,  <46.736897, 35.886669, 34.539829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597961, 35.610138, 34.286400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009189, 0.678119, -0.734895,
		0.937695, -0.249435, -0.241890,
		-0.347338, -0.691330, -0.633576,
		46.493759, 35.402740, 34.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.140770, 36.018063, 33.926159>,  <46.736897, 35.886669, 34.539829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.140770, 36.018063, 33.926159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829174, 35.799145, 33.803761>,  <46.642216, 35.667793, 33.730320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829174, 35.799145, 33.803761>,  <47.140770, 36.018063, 33.926159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829174, 35.799145, 33.803761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029071, 0.519006, -0.854276,
		0.626359, -0.656579, -0.420212,
		-0.778992, -0.547300, -0.305997,
		46.595474, 35.634956, 33.711964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245716, 35.963722, 33.274395>,  <47.140770, 36.018063, 33.926159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245716, 35.963722, 33.274395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.859749, 35.860352, 33.292942>,  <46.628170, 35.798328, 33.304070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.859749, 35.860352, 33.292942>,  <47.245716, 35.963722, 33.274395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.859749, 35.860352, 33.292942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170084, 0.480715, -0.860224,
		0.200012, -0.837932, -0.507804,
		-0.964918, -0.258425, 0.046370,
		46.570274, 35.782825, 33.306854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094276, 35.763931, 32.590763>,  <47.245716, 35.963722, 33.274395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094276, 35.763931, 32.590763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.760048, 35.877609, 32.778824>,  <46.559509, 35.945816, 32.891663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.760048, 35.877609, 32.778824>,  <47.094276, 35.763931, 32.590763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760048, 35.877609, 32.778824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272896, 0.528035, -0.804181,
		-0.476805, -0.800257, -0.363657,
		-0.835575, 0.284197, 0.470156,
		46.509377, 35.962868, 32.919872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597965, 35.696869, 31.994453>,  <47.094276, 35.763931, 32.590763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597965, 35.696869, 31.994453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442036, 35.941563, 32.269791>,  <46.348480, 36.088379, 32.434994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442036, 35.941563, 32.269791>,  <46.597965, 35.696869, 31.994453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442036, 35.941563, 32.269791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372198, 0.579040, -0.725384,
		-0.842323, -0.538970, 0.001965,
		-0.389822, 0.611739, 0.688341,
		46.325089, 36.125084, 32.476292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990162, 36.004517, 31.706411>,  <46.597965, 35.696869, 31.994453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990162, 36.004517, 31.706411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059738, 36.270157, 31.997261>,  <46.101482, 36.429543, 32.171772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059738, 36.270157, 31.997261>,  <45.990162, 36.004517, 31.706411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059738, 36.270157, 31.997261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265541, 0.742660, -0.614771,
		-0.948279, -0.086149, 0.305525,
		0.173939, 0.664104, 0.727125,
		46.111919, 36.469387, 32.215397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423588, 36.412445, 31.735909>,  <45.990162, 36.004517, 31.706411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423588, 36.412445, 31.735909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724892, 36.625309, 31.890522>,  <45.905674, 36.753029, 31.983290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724892, 36.625309, 31.890522>,  <45.423588, 36.412445, 31.735909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724892, 36.625309, 31.890522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169232, 0.724705, -0.667954,
		-0.635584, 0.437726, 0.635947,
		0.753255, 0.532164, 0.386534,
		45.950867, 36.784958, 32.006481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155884, 37.041401, 31.678844>,  <45.423588, 36.412445, 31.735909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155884, 37.041401, 31.678844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536076, 37.128365, 31.767679>,  <45.764191, 37.180542, 31.820980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536076, 37.128365, 31.767679>,  <45.155884, 37.041401, 31.678844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536076, 37.128365, 31.767679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004484, 0.724104, -0.689676,
		-0.310758, 0.654527, 0.689220,
		0.950478, 0.217413, 0.222086,
		45.821220, 37.193588, 31.834305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228226, 37.809162, 31.918066>,  <45.155884, 37.041401, 31.678844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228226, 37.809162, 31.918066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574688, 37.687031, 31.759804>,  <45.782566, 37.613750, 31.664846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574688, 37.687031, 31.759804>,  <45.228226, 37.809162, 31.918066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574688, 37.687031, 31.759804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003112, 0.788365, -0.615200,
		0.499759, 0.534092, 0.681899,
		0.866159, -0.305330, -0.395654,
		45.834538, 37.595432, 31.641108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463913, 38.381100, 31.583162>,  <45.228226, 37.809162, 31.918066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463913, 38.381100, 31.583162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.756748, 38.140129, 31.455956>,  <45.932449, 37.995548, 31.379631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.756748, 38.140129, 31.455956>,  <45.463913, 38.381100, 31.583162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756748, 38.140129, 31.455956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250689, 0.672326, -0.696515,
		0.633409, 0.430185, 0.643221,
		0.732085, -0.602427, -0.318015,
		45.976372, 37.959400, 31.360552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100941, 38.828934, 31.648127>,  <45.463913, 38.381100, 31.583162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100941, 38.828934, 31.648127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076874, 38.539783, 31.372786>,  <46.062435, 38.366291, 31.207581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.076874, 38.539783, 31.372786>,  <46.100941, 38.828934, 31.648127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076874, 38.539783, 31.372786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148641, 0.675425, -0.722293,
		0.987059, -0.145773, 0.066814,
		-0.060163, -0.722877, -0.688352,
		46.058826, 38.322922, 31.166281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555325, 38.993073, 31.150524>,  <46.100941, 38.828934, 31.648127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555325, 38.993073, 31.150524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.364052, 38.713352, 30.937992>,  <46.249287, 38.545521, 30.810472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.364052, 38.713352, 30.937992>,  <46.555325, 38.993073, 31.150524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364052, 38.713352, 30.937992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129399, 0.542283, -0.830172,
		0.868675, -0.465728, -0.168822,
		-0.478184, -0.699304, -0.531332,
		46.220596, 38.503559, 30.778593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946735, 38.932598, 30.608509>,  <46.555325, 38.993073, 31.150524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946735, 38.932598, 30.608509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594742, 38.783592, 30.490623>,  <46.383545, 38.694191, 30.419891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594742, 38.783592, 30.490623>,  <46.946735, 38.932598, 30.608509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594742, 38.783592, 30.490623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059172, 0.529652, -0.846149,
		0.471298, -0.762038, -0.444044,
		-0.879987, -0.372513, -0.294715,
		46.330746, 38.671837, 30.402208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047585, 38.706688, 29.986771>,  <46.946735, 38.932598, 30.608509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047585, 38.706688, 29.986771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.649002, 38.738865, 29.996534>,  <46.409851, 38.758171, 30.002394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.649002, 38.738865, 29.996534>,  <47.047585, 38.706688, 29.986771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649002, 38.738865, 29.996534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009657, 0.398015, -0.917328,
		-0.083504, -0.913846, -0.397383,
		-0.996460, 0.080438, 0.024411,
		46.350063, 38.762997, 30.003859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915001, 38.690163, 29.341396>,  <47.047585, 38.706688, 29.986771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915001, 38.690163, 29.341396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596561, 38.858425, 29.515417>,  <46.405499, 38.959381, 29.619829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596561, 38.858425, 29.515417>,  <46.915001, 38.690163, 29.341396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596561, 38.858425, 29.515417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008699, 0.710871, -0.703268,
		-0.605098, -0.563659, -0.562268,
		-0.796103, 0.420655, 0.435050,
		46.357731, 38.984623, 29.645933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.241760, 38.688026, 28.846102>,  <46.915001, 38.690163, 29.341396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.241760, 38.688026, 28.846102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.217079, 38.970329, 29.128405>,  <46.202271, 39.139713, 29.297787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.217079, 38.970329, 29.128405>,  <46.241760, 38.688026, 28.846102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217079, 38.970329, 29.128405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162372, 0.690587, -0.704787,
		-0.984798, -0.158086, 0.071982,
		-0.061707, 0.705761, 0.705757,
		46.198566, 39.182056, 29.340132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741806, 39.119537, 28.506958>,  <46.241760, 38.688026, 28.846102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741806, 39.119537, 28.506958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909306, 39.334759, 28.799574>,  <46.009804, 39.463894, 28.975143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.909306, 39.334759, 28.799574>,  <45.741806, 39.119537, 28.506958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909306, 39.334759, 28.799574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089168, 0.826035, -0.556520,
		-0.903715, 0.167811, 0.393876,
		0.418746, 0.538057, 0.731537,
		46.034931, 39.496178, 29.019035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288902, 39.663208, 28.558722>,  <45.741806, 39.119537, 28.506958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288902, 39.663208, 28.558722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621185, 39.782154, 28.746975>,  <45.820557, 39.853523, 28.859926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621185, 39.782154, 28.746975>,  <45.288902, 39.663208, 28.558722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621185, 39.782154, 28.746975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105878, 0.745568, -0.657966,
		-0.546545, 0.596408, 0.587866,
		0.830709, 0.297366, 0.470633,
		45.870399, 39.871365, 28.888165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194248, 40.339054, 28.705585>,  <45.288902, 39.663208, 28.558722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194248, 40.339054, 28.705585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589291, 40.279228, 28.686541>,  <45.826317, 40.243332, 28.675114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589291, 40.279228, 28.686541>,  <45.194248, 40.339054, 28.705585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589291, 40.279228, 28.686541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079365, 0.737540, -0.670624,
		0.135421, 0.658532, 0.740268,
		0.987604, -0.149568, -0.047614,
		45.885571, 40.234356, 28.672256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.600204, 36.013924, 40.707474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355156, 35.697899, 40.716385>,  <39.208126, 35.508282, 40.721733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355156, 35.697899, 40.716385>,  <39.600204, 36.013924, 40.707474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355156, 35.697899, 40.716385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350057, 0.245947, -0.903864,
		0.708631, -0.561524, -0.427239,
		-0.612619, -0.790064, 0.022279,
		39.171371, 35.460880, 40.723068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593155, 35.733646, 39.933578>,  <39.600204, 36.013924, 40.707474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593155, 35.733646, 39.933578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282734, 35.575825, 40.130383>,  <39.096481, 35.481133, 40.248463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282734, 35.575825, 40.130383>,  <39.593155, 35.733646, 39.933578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282734, 35.575825, 40.130383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579895, 0.139751, -0.802615,
		0.247916, -0.908183, -0.337254,
		-0.776054, -0.394553, 0.492005,
		39.049919, 35.457458, 40.277985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403854, 35.053272, 39.621246>,  <39.593155, 35.733646, 39.933578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403854, 35.053272, 39.621246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076603, 35.201653, 39.797001>,  <38.880253, 35.290680, 39.902454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076603, 35.201653, 39.797001>,  <39.403854, 35.053272, 39.621246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076603, 35.201653, 39.797001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471878, 0.003578, -0.881657,
		-0.328621, -0.928647, 0.172115,
		-0.818132, 0.370948, 0.439384,
		38.831161, 35.312939, 39.928818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886051, 34.574837, 39.346992>,  <39.403854, 35.053272, 39.621246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886051, 34.574837, 39.346992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678169, 34.886402, 39.487389>,  <38.553440, 35.073341, 39.571629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678169, 34.886402, 39.487389>,  <38.886051, 34.574837, 39.346992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678169, 34.886402, 39.487389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648023, -0.091669, -0.756084,
		-0.556750, -0.620393, 0.552396,
		-0.519708, 0.778915, 0.350992,
		38.522259, 35.120075, 39.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320599, 34.376366, 39.138577>,  <38.886051, 34.574837, 39.346992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320599, 34.376366, 39.138577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306957, 34.772751, 39.190460>,  <38.298775, 35.010582, 39.221592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306957, 34.772751, 39.190460>,  <38.320599, 34.376366, 39.138577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306957, 34.772751, 39.190460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591749, 0.084573, -0.801674,
		-0.805401, -0.104094, 0.583519,
		-0.034099, 0.990965, 0.129712,
		38.296726, 35.070042, 39.229374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628391, 34.547256, 39.026752>,  <38.320599, 34.376366, 39.138577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628391, 34.547256, 39.026752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811764, 34.901661, 38.998981>,  <37.921787, 35.114304, 38.982319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811764, 34.901661, 38.998981>,  <37.628391, 34.547256, 39.026752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811764, 34.901661, 38.998981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559157, 0.226826, -0.797429,
		-0.690783, 0.404391, 0.599405,
		0.458434, 0.886012, -0.069431,
		37.949295, 35.167465, 38.978153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105232, 35.110477, 38.884171>,  <37.628391, 34.547256, 39.026752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105232, 35.110477, 38.884171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446369, 35.256840, 38.735157>,  <37.651051, 35.344658, 38.645748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446369, 35.256840, 38.735157>,  <37.105232, 35.110477, 38.884171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446369, 35.256840, 38.735157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493900, 0.333689, -0.802941,
		-0.169488, 0.868774, 0.465302,
		0.852840, 0.365901, -0.372531,
		37.702221, 35.366611, 38.623398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851856, 35.692219, 38.562748>,  <37.105232, 35.110477, 38.884171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851856, 35.692219, 38.562748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228531, 35.661121, 38.431793>,  <37.454536, 35.642464, 38.353222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228531, 35.661121, 38.431793>,  <36.851856, 35.692219, 38.562748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228531, 35.661121, 38.431793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287015, 0.322276, -0.902087,
		0.175639, 0.943448, 0.281170,
		0.941686, -0.077741, -0.327388,
		37.511036, 35.637798, 38.333576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108238, 36.340912, 38.195206>,  <36.851856, 35.692219, 38.562748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108238, 36.340912, 38.195206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352818, 36.050041, 38.070412>,  <37.499565, 35.875519, 37.995537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352818, 36.050041, 38.070412>,  <37.108238, 36.340912, 38.195206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352818, 36.050041, 38.070412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227761, 0.215852, -0.949491,
		0.757795, 0.651625, -0.033641,
		0.611450, -0.727181, -0.311986,
		37.536251, 35.831886, 37.976814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537937, 36.662949, 37.603958>,  <37.108238, 36.340912, 38.195206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537937, 36.662949, 37.603958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548950, 36.265697, 37.558456>,  <37.555557, 36.027348, 37.531155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548950, 36.265697, 37.558456>,  <37.537937, 36.662949, 37.603958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548950, 36.265697, 37.558456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349476, 0.097055, -0.931905,
		0.936541, 0.065408, -0.344402,
		0.027528, -0.993127, -0.113754,
		37.557209, 35.967758, 37.524330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978577, 36.513638, 37.073742>,  <37.537937, 36.662949, 37.603958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978577, 36.513638, 37.073742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721378, 36.209568, 37.111023>,  <37.567059, 36.027126, 37.133392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721378, 36.209568, 37.111023>,  <37.978577, 36.513638, 37.073742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721378, 36.209568, 37.111023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308733, 0.145908, -0.939891,
		0.700886, -0.633119, -0.328510,
		-0.642995, -0.760178, 0.093200,
		37.528481, 35.981514, 37.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000351, 36.151215, 36.317986>,  <37.978577, 36.513638, 37.073742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000351, 36.151215, 36.317986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668488, 36.074978, 36.527878>,  <37.469368, 36.029236, 36.653812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668488, 36.074978, 36.527878>,  <38.000351, 36.151215, 36.317986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668488, 36.074978, 36.527878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546240, 0.083029, -0.833503,
		0.115290, -0.978152, -0.172994,
		-0.829657, -0.190591, 0.524734,
		37.419590, 36.017803, 36.685299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045559, 35.723488, 35.714367>,  <38.000351, 36.151215, 36.317986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045559, 35.723488, 35.714367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325562, 35.827503, 35.980408>,  <38.493565, 35.889912, 36.140034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325562, 35.827503, 35.980408>,  <38.045559, 35.723488, 35.714367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325562, 35.827503, 35.980408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711883, -0.327961, -0.621019,
		0.056641, 0.908198, -0.414692,
		0.700011, 0.260037, 0.665106,
		38.535564, 35.905514, 36.179939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650921, 36.164650, 35.365273>,  <38.045559, 35.723488, 35.714367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650921, 36.164650, 35.365273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729870, 35.905540, 35.659599>,  <38.777241, 35.750076, 35.836197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729870, 35.905540, 35.659599>,  <38.650921, 36.164650, 35.365273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729870, 35.905540, 35.659599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645259, -0.479226, -0.594965,
		0.738027, 0.592227, 0.323394,
		0.197375, -0.647773, 0.735821,
		38.789082, 35.711208, 35.880344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745895, 35.866867, 34.716080>,  <38.650921, 36.164650, 35.365273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745895, 35.866867, 34.716080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801758, 35.516991, 34.530430>,  <38.835274, 35.307064, 34.419041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801758, 35.516991, 34.530430>,  <38.745895, 35.866867, 34.716080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801758, 35.516991, 34.530430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036989, -0.463780, 0.885178,
		-0.989509, -0.140786, -0.032415,
		0.139654, -0.874693, -0.464122,
		38.843655, 35.254581, 34.391193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 35.348339, 34.894035>,  <38.745895, 35.866867, 34.716080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309475, 35.348339, 34.894035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676609, 35.222656, 34.797005>,  <38.896889, 35.147247, 34.738785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676609, 35.222656, 34.797005>,  <38.309475, 35.348339, 34.894035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676609, 35.222656, 34.797005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000004, -0.611115, 0.791542,
		-0.396951, -0.726508, -0.560907,
		0.917840, -0.314206, -0.242580,
		38.951962, 35.128395, 34.724232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311802, 34.674686, 34.881725>,  <38.309475, 35.348339, 34.894035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311802, 34.674686, 34.881725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700260, 34.753090, 34.936073>,  <38.933334, 34.800133, 34.968681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700260, 34.753090, 34.936073>,  <38.311802, 34.674686, 34.881725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700260, 34.753090, 34.936073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002210, -0.562284, 0.826941,
		0.238483, -0.803380, -0.545626,
		0.971144, 0.196005, 0.135871,
		38.991604, 34.811890, 34.976833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450672, 34.077621, 35.169872>,  <38.311802, 34.674686, 34.881725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450672, 34.077621, 35.169872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763313, 34.314556, 35.248081>,  <38.950897, 34.456718, 35.295006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763313, 34.314556, 35.248081>,  <38.450672, 34.077621, 35.169872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763313, 34.314556, 35.248081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286318, -0.619167, 0.731200,
		0.554181, -0.515527, -0.653541,
		0.781605, 0.592338, 0.195526,
		38.997795, 34.492256, 35.306740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007072, 33.644409, 35.412502>,  <38.450672, 34.077621, 35.169872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007072, 33.644409, 35.412502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124760, 34.010960, 35.521088>,  <39.195374, 34.230888, 35.586239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124760, 34.010960, 35.521088>,  <39.007072, 33.644409, 35.412502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124760, 34.010960, 35.521088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323470, -0.362750, 0.873945,
		0.899334, -0.169322, -0.403148,
		0.294221, 0.916375, 0.271463,
		39.213024, 34.285873, 35.602528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798752, 33.630329, 35.594898>,  <39.007072, 33.644409, 35.412502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798752, 33.630329, 35.594898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615559, 33.937912, 35.773315>,  <39.505642, 34.122463, 35.880367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615559, 33.937912, 35.773315>,  <39.798752, 33.630329, 35.594898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615559, 33.937912, 35.773315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300889, -0.338051, 0.891732,
		0.836489, 0.542610, -0.076548,
		-0.457986, 0.768957, 0.446042,
		39.478165, 34.168598, 35.907127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331997, 33.850861, 36.044697>,  <39.798752, 33.630329, 35.594898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331997, 33.850861, 36.044697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975979, 33.958797, 36.191666>,  <39.762367, 34.023560, 36.279846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975979, 33.958797, 36.191666>,  <40.331997, 33.850861, 36.044697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975979, 33.958797, 36.191666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279484, -0.313739, 0.907445,
		0.360140, 0.910359, 0.203827,
		-0.890049, 0.269841, 0.367421,
		39.708965, 34.039749, 36.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450226, 34.013237, 36.767380>,  <40.331997, 33.850861, 36.044697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450226, 34.013237, 36.767380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051060, 33.991940, 36.752754>,  <39.811562, 33.979160, 36.743980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051060, 33.991940, 36.752754>,  <40.450226, 34.013237, 36.767380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051060, 33.991940, 36.752754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014469, -0.367352, 0.929969,
		-0.062949, 0.928556, 0.365815,
		-0.997912, -0.053248, -0.036560,
		39.751686, 33.975964, 36.741787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154930, 34.312496, 37.390289>,  <40.450226, 34.013237, 36.767380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154930, 34.312496, 37.390289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871201, 34.067802, 37.250210>,  <39.700962, 33.920986, 37.166161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871201, 34.067802, 37.250210>,  <40.154930, 34.312496, 37.390289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871201, 34.067802, 37.250210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168431, -0.335335, 0.926920,
		-0.684460, 0.716475, 0.134829,
		-0.709328, -0.611730, -0.350200,
		39.658401, 33.884285, 37.145149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746914, 34.326641, 37.883301>,  <40.154930, 34.312496, 37.390289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746914, 34.326641, 37.883301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653862, 33.993816, 37.681885>,  <39.598030, 33.794121, 37.561035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653862, 33.993816, 37.681885>,  <39.746914, 34.326641, 37.883301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653862, 33.993816, 37.681885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120676, -0.489049, 0.863868,
		-0.965049, 0.261730, 0.013359,
		-0.232634, -0.832062, -0.503541,
		39.584072, 33.744198, 37.530823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177361, 34.003109, 38.203548>,  <39.746914, 34.326641, 37.883301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177361, 34.003109, 38.203548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390774, 33.725719, 38.009872>,  <39.518822, 33.559288, 37.893665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390774, 33.725719, 38.009872>,  <39.177361, 34.003109, 38.203548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390774, 33.725719, 38.009872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091503, -0.521792, 0.848151,
		-0.840815, -0.496821, -0.214939,
		0.533533, -0.693470, -0.484191,
		39.550835, 33.517677, 37.864616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093178, 33.436077, 38.618645>,  <39.177361, 34.003109, 38.203548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093178, 33.436077, 38.618645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341774, 33.251095, 38.365700>,  <39.490932, 33.140106, 38.213932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341774, 33.251095, 38.365700>,  <39.093178, 33.436077, 38.618645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341774, 33.251095, 38.365700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227431, -0.665909, 0.710521,
		-0.749682, -0.585401, -0.308679,
		0.621492, -0.462461, -0.632358,
		39.528221, 33.112358, 38.175991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813065, 32.682396, 38.547947>,  <39.093178, 33.436077, 38.618645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813065, 32.682396, 38.547947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194702, 32.695160, 38.428829>,  <39.423687, 32.702820, 38.357357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194702, 32.695160, 38.428829>,  <38.813065, 32.682396, 38.547947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194702, 32.695160, 38.428829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257106, -0.597232, 0.759744,
		-0.153607, -0.801434, -0.578022,
		0.954097, 0.031911, -0.297793,
		39.480930, 32.704735, 38.339493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067139, 31.987711, 38.564701>,  <38.813065, 32.682396, 38.547947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067139, 31.987711, 38.564701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395763, 32.214741, 38.586205>,  <39.592937, 32.350960, 38.599106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395763, 32.214741, 38.586205>,  <39.067139, 31.987711, 38.564701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395763, 32.214741, 38.586205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204572, -0.381499, 0.901448,
		0.532150, -0.729600, -0.429536,
		0.821564, 0.567577, 0.053758,
		39.642231, 32.385014, 38.602333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018169, 31.482254, 37.959496>,  <39.067139, 31.987711, 38.564701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018169, 31.482254, 37.959496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805359, 31.154438, 37.874359>,  <38.677673, 30.957748, 37.823277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805359, 31.154438, 37.874359>,  <39.018169, 31.482254, 37.959496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805359, 31.154438, 37.874359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715137, 0.569503, -0.405272,
		0.453347, -0.063410, -0.889076,
		-0.532030, -0.819540, -0.212835,
		38.645748, 30.908577, 37.810509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831589, 31.488043, 37.170586>,  <39.018169, 31.482254, 37.959496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831589, 31.488043, 37.170586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578476, 31.247902, 37.366207>,  <38.426609, 31.103817, 37.483582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578476, 31.247902, 37.366207>,  <38.831589, 31.488043, 37.170586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578476, 31.247902, 37.366207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769605, 0.417906, -0.482767,
		0.085451, -0.681861, -0.726473,
		-0.632777, -0.600350, 0.489053,
		38.388641, 31.067797, 37.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409321, 31.126867, 36.675823>,  <38.831589, 31.488043, 37.170586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409321, 31.126867, 36.675823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201771, 31.110168, 37.017353>,  <38.077240, 31.100149, 37.222271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201771, 31.110168, 37.017353>,  <38.409321, 31.126867, 36.675823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201771, 31.110168, 37.017353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783264, 0.423325, -0.455296,
		-0.342440, -0.905016, -0.252352,
		-0.518877, -0.041747, 0.853829,
		38.046108, 31.097645, 37.273502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772697, 30.829016, 36.529598>,  <38.409321, 31.126867, 36.675823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772697, 30.829016, 36.529598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708679, 31.021257, 36.874481>,  <37.670269, 31.136602, 37.081413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708679, 31.021257, 36.874481>,  <37.772697, 30.829016, 36.529598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708679, 31.021257, 36.874481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811206, 0.433644, -0.392297,
		-0.562431, -0.762216, 0.320465,
		-0.160047, 0.480603, 0.862210,
		37.660664, 31.165438, 37.133144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066612, 30.927755, 36.394634>,  <37.772697, 30.829016, 36.529598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066612, 30.927755, 36.394634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167522, 31.186453, 36.682545>,  <37.228069, 31.341671, 36.855289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167522, 31.186453, 36.682545>,  <37.066612, 30.927755, 36.394634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167522, 31.186453, 36.682545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578855, 0.696934, -0.423333,
		-0.775424, -0.309848, 0.550193,
		0.252279, 0.646744, 0.719776,
		37.243206, 31.380476, 36.898476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452030, 31.125616, 36.746975>,  <37.066612, 30.927755, 36.394634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452030, 31.125616, 36.746975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 31.418392, 36.837811>,  <36.863174, 31.594057, 36.892311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 31.418392, 36.837811>,  <36.452030, 31.125616, 36.746975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708996, 31.418392, 36.837811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699590, 0.681076, -0.216124,
		-0.312856, -0.020030, 0.949589,
		0.642413, 0.731939, 0.227092,
		36.901718, 31.637974, 36.905937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991154, 31.528681, 36.858131>,  <36.452030, 31.125616, 36.746975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991154, 31.528681, 36.858131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327282, 31.744740, 36.839771>,  <36.528957, 31.874374, 36.828754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327282, 31.744740, 36.839771>,  <35.991154, 31.528681, 36.858131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327282, 31.744740, 36.839771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531324, 0.803873, -0.267364,
		-0.107518, 0.249058, 0.962502,
		0.840319, 0.540147, -0.045900,
		36.579376, 31.906784, 36.826000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825573, 32.130260, 37.109623>,  <35.991154, 31.528681, 36.858131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825573, 32.130260, 37.109623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163219, 32.224800, 36.917126>,  <36.365807, 32.281525, 36.801628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163219, 32.224800, 36.917126>,  <35.825573, 32.130260, 37.109623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163219, 32.224800, 36.917126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429405, 0.835500, -0.342857,
		0.321048, 0.496063, 0.806752,
		0.844120, 0.236350, -0.481248,
		36.416454, 32.295704, 36.772751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102173, 32.810295, 37.357979>,  <35.825573, 32.130260, 37.109623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102173, 32.810295, 37.357979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245007, 32.744122, 36.990257>,  <36.330708, 32.704418, 36.769623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245007, 32.744122, 36.990257>,  <36.102173, 32.810295, 37.357979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245007, 32.744122, 36.990257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489495, 0.805084, -0.335014,
		0.795541, 0.569623, 0.206502,
		0.357083, -0.165436, -0.919305,
		36.352131, 32.694492, 36.714466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139484, 33.489269, 37.043091>,  <36.102173, 32.810295, 37.357979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139484, 33.489269, 37.043091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179054, 33.256985, 36.719860>,  <36.202797, 33.117615, 36.525921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179054, 33.256985, 36.719860>,  <36.139484, 33.489269, 37.043091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179054, 33.256985, 36.719860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335770, 0.744958, -0.576452,
		0.936735, 0.328353, -0.121291,
		0.098923, -0.580708, -0.808080,
		36.208733, 33.082771, 36.477436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419827, 33.968170, 36.533592>,  <36.139484, 33.489269, 37.043091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419827, 33.968170, 36.533592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231209, 33.654190, 36.372841>,  <36.118038, 33.465801, 36.276390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231209, 33.654190, 36.372841>,  <36.419827, 33.968170, 36.533592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231209, 33.654190, 36.372841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475762, 0.610155, -0.633531,
		0.742496, -0.107539, -0.661162,
		-0.471541, -0.784950, -0.401875,
		36.089745, 33.418705, 36.252277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427677, 34.082516, 35.826782>,  <36.419827, 33.968170, 36.533592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427677, 34.082516, 35.826782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140194, 33.806458, 35.860622>,  <35.967705, 33.640823, 35.880928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140194, 33.806458, 35.860622>,  <36.427677, 34.082516, 35.826782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140194, 33.806458, 35.860622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523750, 0.457323, -0.718708,
		0.457323, -0.560851, -0.690146,
		0.718708, 0.690146, -0.084601,
		35.924583, 33.599415, 35.886002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.545887, 28.682856, 38.724285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244141, 28.573309, 38.962925>,  <41.063095, 28.507582, 39.106110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244141, 28.573309, 38.962925>,  <41.545887, 28.682856, 38.724285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244141, 28.573309, 38.962925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653492, 0.227009, -0.722091,
		0.062322, -0.934593, -0.350216,
		-0.754363, -0.273866, 0.596602,
		41.017830, 28.491148, 39.141907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138004, 28.418158, 38.250195>,  <41.545887, 28.682856, 38.724285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138004, 28.418158, 38.250195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890797, 28.478567, 38.558804>,  <40.742470, 28.514812, 38.743969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890797, 28.478567, 38.558804>,  <41.138004, 28.418158, 38.250195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890797, 28.478567, 38.558804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745532, 0.198815, -0.636124,
		-0.249460, -0.968330, -0.010278,
		-0.618022, 0.151025, 0.771518,
		40.705391, 28.523874, 38.790260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510864, 28.129826, 38.014893>,  <41.138004, 28.418158, 38.250195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510864, 28.129826, 38.014893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426701, 28.384731, 38.311440>,  <40.376202, 28.537676, 38.489368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426701, 28.384731, 38.311440>,  <40.510864, 28.129826, 38.014893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426701, 28.384731, 38.311440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786222, 0.340395, -0.515739,
		-0.581019, -0.691393, 0.429410,
		-0.210410, 0.637266, 0.741364,
		40.363579, 28.575911, 38.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726665, 28.387131, 37.867393>,  <40.510864, 28.129826, 38.014893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726665, 28.387131, 37.867393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859566, 28.603176, 38.176685>,  <39.939308, 28.732803, 38.362259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859566, 28.603176, 38.176685>,  <39.726665, 28.387131, 37.867393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859566, 28.603176, 38.176685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746478, 0.651685, -0.134455,
		-0.576523, -0.532524, 0.619709,
		0.332254, 0.540116, 0.773228,
		39.959244, 28.765211, 38.408653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165436, 28.494495, 38.287846>,  <39.726665, 28.387131, 37.867393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165436, 28.494495, 38.287846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429081, 28.789845, 38.344944>,  <39.587269, 28.967054, 38.379204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.429081, 28.789845, 38.344944>,  <39.165436, 28.494495, 38.287846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429081, 28.789845, 38.344944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691342, 0.669606, -0.271429,
		-0.295998, 0.080218, 0.951814,
		0.659114, 0.738372, 0.142744,
		39.626816, 29.011356, 38.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788937, 29.064535, 38.617405>,  <39.165436, 28.494495, 38.287846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788937, 29.064535, 38.617405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118126, 29.253246, 38.490822>,  <39.315639, 29.366472, 38.414871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.118126, 29.253246, 38.490822>,  <38.788937, 29.064535, 38.617405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118126, 29.253246, 38.490822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537031, 0.827749, -0.162570,
		0.185254, 0.303739, 0.934572,
		0.822969, 0.471777, -0.316461,
		39.365017, 29.394779, 38.395885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813980, 29.632769, 39.017563>,  <38.788937, 29.064535, 38.617405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813980, 29.632769, 39.017563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038887, 29.723991, 38.699608>,  <39.173832, 29.778725, 38.508835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038887, 29.723991, 38.699608>,  <38.813980, 29.632769, 39.017563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038887, 29.723991, 38.699608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433756, 0.899714, -0.048687,
		0.704067, 0.372161, 0.604803,
		0.562269, 0.228058, -0.794886,
		39.207569, 29.792408, 38.461143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009289, 30.413748, 39.059155>,  <38.813980, 29.632769, 39.017563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009289, 30.413748, 39.059155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009117, 30.280521, 38.681992>,  <39.009014, 30.200586, 38.455696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009117, 30.280521, 38.681992>,  <39.009289, 30.413748, 39.059155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009117, 30.280521, 38.681992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638851, 0.725496, -0.255979,
		0.769330, 0.602266, -0.213090,
		-0.000428, -0.333065, -0.942904,
		39.008987, 30.180601, 38.399120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085594, 31.092604, 38.681587>,  <39.009289, 30.413748, 39.059155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085594, 31.092604, 38.681587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948765, 30.835499, 38.407410>,  <38.866665, 30.681236, 38.242901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948765, 30.835499, 38.407410>,  <39.085594, 31.092604, 38.681587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948765, 30.835499, 38.407410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558673, 0.725646, -0.401649,
		0.755559, 0.245548, -0.607319,
		-0.342074, -0.642762, -0.685450,
		38.846142, 30.642670, 38.201775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684540, 31.464052, 38.721329>,  <39.085594, 31.092604, 38.681587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684540, 31.464052, 38.721329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819717, 31.823360, 38.833691>,  <39.900826, 32.038944, 38.901108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819717, 31.823360, 38.833691>,  <39.684540, 31.464052, 38.721329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819717, 31.823360, 38.833691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357648, -0.398640, 0.844497,
		0.870565, -0.184927, -0.455981,
		0.337943, 0.898269, 0.280903,
		39.921101, 32.092842, 38.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248833, 31.367809, 39.111217>,  <39.684540, 31.464052, 38.721329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248833, 31.367809, 39.111217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202530, 31.752079, 39.212181>,  <40.174747, 31.982641, 39.272758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.202530, 31.752079, 39.212181>,  <40.248833, 31.367809, 39.111217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202530, 31.752079, 39.212181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441897, -0.177776, 0.879274,
		0.889566, 0.213319, -0.403940,
		-0.115755, 0.960672, 0.252409,
		40.167805, 32.040279, 39.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906078, 31.652142, 39.269348>,  <40.248833, 31.367809, 39.111217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906078, 31.652142, 39.269348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634151, 31.875179, 39.459900>,  <40.470993, 32.009003, 39.574230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634151, 31.875179, 39.459900>,  <40.906078, 31.652142, 39.269348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634151, 31.875179, 39.459900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516718, -0.096780, 0.850668,
		0.520431, 0.824453, -0.222326,
		-0.679819, 0.557594, 0.476377,
		40.430206, 32.042458, 39.602814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318886, 32.142189, 39.570255>,  <40.906078, 31.652142, 39.269348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318886, 32.142189, 39.570255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.973446, 32.126560, 39.771320>,  <40.766182, 32.117184, 39.891960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.973446, 32.126560, 39.771320>,  <41.318886, 32.142189, 39.570255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973446, 32.126560, 39.771320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503041, 0.000290, 0.864262,
		-0.033918, 0.999236, 0.019407,
		-0.863597, -0.039077, 0.502667,
		40.714367, 32.114838, 39.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420456, 32.705715, 40.055038>,  <41.318886, 32.142189, 39.570255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420456, 32.705715, 40.055038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123619, 32.476429, 40.194019>,  <40.945515, 32.338860, 40.277409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123619, 32.476429, 40.194019>,  <41.420456, 32.705715, 40.055038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123619, 32.476429, 40.194019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364725, 0.089588, 0.926795,
		-0.562378, 0.814495, 0.142582,
		-0.742096, -0.573212, 0.347449,
		40.900990, 32.304466, 40.298256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082756, 33.087254, 40.624176>,  <41.420456, 32.705715, 40.055038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082756, 33.087254, 40.624176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.024765, 32.693878, 40.667690>,  <40.989971, 32.457855, 40.693798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.024765, 32.693878, 40.667690>,  <41.082756, 33.087254, 40.624176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024765, 32.693878, 40.667690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380431, 0.046086, 0.923660,
		-0.913374, 0.175299, 0.367448,
		-0.144982, -0.983436, 0.108783,
		40.981270, 32.398846, 40.700325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739967, 33.000450, 41.249756>,  <41.082756, 33.087254, 40.624176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739967, 33.000450, 41.249756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854511, 32.626911, 41.164032>,  <40.923237, 32.402790, 41.112598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854511, 32.626911, 41.164032>,  <40.739967, 33.000450, 41.249756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854511, 32.626911, 41.164032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189121, -0.164188, 0.968130,
		-0.939271, -0.317767, 0.129593,
		0.286362, -0.933845, -0.214314,
		40.940418, 32.346756, 41.099739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413288, 32.637924, 41.715130>,  <40.739967, 33.000450, 41.249756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413288, 32.637924, 41.715130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726589, 32.421764, 41.592178>,  <40.914570, 32.292068, 41.518406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726589, 32.421764, 41.592178>,  <40.413288, 32.637924, 41.715130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726589, 32.421764, 41.592178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231356, -0.205555, 0.950906,
		-0.577056, -0.815912, -0.035976,
		0.783250, -0.540402, -0.307383,
		40.961563, 32.259644, 41.499962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533947, 32.253159, 42.293312>,  <40.413288, 32.637924, 41.715130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533947, 32.253159, 42.293312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853657, 32.210094, 42.056812>,  <41.045483, 32.184258, 41.914913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853657, 32.210094, 42.056812>,  <40.533947, 32.253159, 42.293312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853657, 32.210094, 42.056812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589412, -0.051592, 0.806183,
		-0.117300, -0.992848, 0.022222,
		0.799271, -0.107663, -0.591249,
		41.093437, 32.177795, 41.879436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843624, 31.599380, 42.524372>,  <40.533947, 32.253159, 42.293312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843624, 31.599380, 42.524372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131577, 31.815113, 42.349609>,  <41.304348, 31.944553, 42.244751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.131577, 31.815113, 42.349609>,  <40.843624, 31.599380, 42.524372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131577, 31.815113, 42.349609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566916, -0.093690, 0.818430,
		0.400472, -0.836864, -0.373202,
		0.719881, 0.539333, -0.436911,
		41.347542, 31.976913, 42.218536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444519, 31.332584, 42.747677>,  <40.843624, 31.599380, 42.524372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444519, 31.332584, 42.747677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577587, 31.677334, 42.594574>,  <41.657429, 31.884184, 42.502712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.577587, 31.677334, 42.594574>,  <41.444519, 31.332584, 42.747677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577587, 31.677334, 42.594574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710679, 0.037670, 0.702507,
		0.619892, -0.505719, -0.599986,
		0.332669, 0.861876, -0.382755,
		41.677387, 31.935896, 42.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163998, 31.260277, 42.589962>,  <41.444519, 31.332584, 42.747677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163998, 31.260277, 42.589962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089718, 31.651241, 42.630329>,  <42.045151, 31.885820, 42.654549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.089718, 31.651241, 42.630329>,  <42.163998, 31.260277, 42.589962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089718, 31.651241, 42.630329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713505, 0.063518, 0.697765,
		0.675593, 0.201578, -0.709182,
		-0.185700, 0.977411, 0.100915,
		42.034008, 31.944464, 42.660603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743385, 31.546446, 42.751114>,  <42.163998, 31.260277, 42.589962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743385, 31.546446, 42.751114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476810, 31.815613, 42.879517>,  <42.316868, 31.977112, 42.956558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476810, 31.815613, 42.879517>,  <42.743385, 31.546446, 42.751114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476810, 31.815613, 42.879517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511960, 0.100032, 0.853165,
		0.541997, 0.732924, -0.411171,
		-0.666435, 0.672916, 0.321011,
		42.276878, 32.017487, 42.975819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132374, 31.978640, 42.973614>,  <42.743385, 31.546446, 42.751114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132374, 31.978640, 42.973614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.779148, 32.019318, 43.156857>,  <42.567215, 32.043724, 43.266800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.779148, 32.019318, 43.156857>,  <43.132374, 31.978640, 42.973614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779148, 32.019318, 43.156857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466044, 0.076031, 0.881489,
		0.054815, 0.991906, -0.114535,
		-0.883062, 0.101697, 0.458104,
		42.514229, 32.049828, 43.294289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.105347, 29.324888, 44.682209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371784, 29.123373, 44.462204>,  <37.531647, 29.002464, 44.330200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371784, 29.123373, 44.462204>,  <37.105347, 29.324888, 44.682209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371784, 29.123373, 44.462204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434439, 0.337364, -0.835134,
		0.606287, 0.795224, 0.005850,
		0.666092, -0.503790, -0.550016,
		37.571613, 28.972237, 44.297199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381756, 29.779224, 44.201565>,  <37.105347, 29.324888, 44.682209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381756, 29.779224, 44.201565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449169, 29.417049, 44.045731>,  <37.489616, 29.199745, 43.952229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449169, 29.417049, 44.045731>,  <37.381756, 29.779224, 44.201565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449169, 29.417049, 44.045731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450911, 0.280639, -0.847302,
		0.876513, 0.318471, -0.360973,
		0.168538, -0.905438, -0.389585,
		37.499729, 29.145418, 43.928856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570911, 29.968443, 43.510376>,  <37.381756, 29.779224, 44.201565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570911, 29.968443, 43.510376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455048, 29.586212, 43.488579>,  <37.385529, 29.356874, 43.475502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455048, 29.586212, 43.488579>,  <37.570911, 29.968443, 43.510376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455048, 29.586212, 43.488579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403091, 0.173431, -0.898577,
		0.868109, -0.238319, -0.435420,
		-0.289663, -0.955576, -0.054493,
		37.368149, 29.299540, 43.472233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715740, 29.753441, 42.914577>,  <37.570911, 29.968443, 43.510376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715740, 29.753441, 42.914577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431870, 29.489466, 43.013245>,  <37.261547, 29.331079, 43.072445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.431870, 29.489466, 43.013245>,  <37.715740, 29.753441, 42.914577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431870, 29.489466, 43.013245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517126, 0.250149, -0.818539,
		0.478484, -0.708452, -0.518796,
		-0.709672, -0.659941, 0.246667,
		37.218967, 29.291483, 43.087246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419987, 29.461737, 42.348633>,  <37.715740, 29.753441, 42.914577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419987, 29.461737, 42.348633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134422, 29.353548, 42.606987>,  <36.963081, 29.288635, 42.762001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134422, 29.353548, 42.606987>,  <37.419987, 29.461737, 42.348633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134422, 29.353548, 42.606987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697459, 0.192617, -0.690254,
		0.062282, -0.943263, -0.326152,
		-0.713913, -0.270468, 0.645891,
		36.920250, 29.272408, 42.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968609, 28.911274, 41.952938>,  <37.419987, 29.461737, 42.348633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968609, 28.911274, 41.952938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.764778, 29.092550, 42.245499>,  <36.642479, 29.201317, 42.421036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.764778, 29.092550, 42.245499>,  <36.968609, 28.911274, 41.952938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764778, 29.092550, 42.245499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747883, 0.187021, -0.636942,
		-0.425445, -0.871573, 0.243634,
		-0.509576, 0.453193, 0.731401,
		36.611904, 29.228508, 42.464920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249252, 28.895260, 41.748379>,  <36.968609, 28.911274, 41.952938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249252, 28.895260, 41.748379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208843, 29.152657, 42.051884>,  <36.184597, 29.307095, 42.233986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.208843, 29.152657, 42.051884>,  <36.249252, 28.895260, 41.748379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208843, 29.152657, 42.051884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830908, 0.364874, -0.420071,
		-0.547163, -0.672895, 0.497821,
		-0.101021, 0.643490, 0.758759,
		36.178535, 29.345703, 42.279510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520187, 29.024918, 41.718639>,  <36.249252, 28.895260, 41.748379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520187, 29.024918, 41.718639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662441, 29.339893, 41.920021>,  <35.747791, 29.528879, 42.040852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662441, 29.339893, 41.920021>,  <35.520187, 29.024918, 41.718639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662441, 29.339893, 41.920021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766026, 0.554193, -0.325690,
		-0.535471, -0.269832, 0.800288,
		0.355632, 0.787440, 0.503453,
		35.769131, 29.576126, 42.071056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929306, 29.318310, 42.065773>,  <35.520187, 29.024918, 41.718639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929306, 29.318310, 42.065773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199753, 29.609945, 42.023254>,  <35.362019, 29.784927, 41.997742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.199753, 29.609945, 42.023254>,  <34.929306, 29.318310, 42.065773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199753, 29.609945, 42.023254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688974, 0.574484, -0.441908,
		-0.261126, 0.372015, 0.890740,
		0.676112, 0.729090, -0.106296,
		35.402588, 29.828672, 41.991367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662758, 29.786070, 42.395409>,  <34.929306, 29.318310, 42.065773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662758, 29.786070, 42.395409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917915, 29.976580, 42.153332>,  <35.071011, 30.090885, 42.008087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917915, 29.976580, 42.153332>,  <34.662758, 29.786070, 42.395409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917915, 29.976580, 42.153332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702139, 0.682501, -0.202962,
		0.316379, 0.554397, 0.769772,
		0.637891, 0.476274, -0.605192,
		35.109283, 30.119461, 41.971775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488297, 30.384571, 42.492439>,  <34.662758, 29.786070, 42.395409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488297, 30.384571, 42.492439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708054, 30.412327, 42.159367>,  <34.839909, 30.428980, 41.959522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708054, 30.412327, 42.159367>,  <34.488297, 30.384571, 42.492439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708054, 30.412327, 42.159367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482869, 0.839658, -0.248621,
		0.681913, 0.538665, 0.494807,
		0.549392, 0.069389, -0.832679,
		34.872871, 30.433144, 41.909561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582550, 31.077116, 42.361458>,  <34.488297, 30.384571, 42.492439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582550, 31.077116, 42.361458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.658165, 30.928267, 41.997967>,  <34.703533, 30.838957, 41.779873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.658165, 30.928267, 41.997967>,  <34.582550, 31.077116, 42.361458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658165, 30.928267, 41.997967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460121, 0.783971, -0.416748,
		0.867499, 0.496905, -0.023024,
		0.189033, -0.372122, -0.908731,
		34.714874, 30.816629, 41.725349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816765, 31.622690, 41.992424>,  <34.582550, 31.077116, 42.361458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816765, 31.622690, 41.992424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644665, 31.356287, 41.748680>,  <34.541405, 31.196445, 41.602432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644665, 31.356287, 41.748680>,  <34.816765, 31.622690, 41.992424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644665, 31.356287, 41.748680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496174, 0.738398, -0.456707,
		0.754124, 0.105856, -0.648145,
		-0.430243, -0.666006, -0.609366,
		34.515591, 31.156485, 41.565872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818573, 31.898518, 41.301765>,  <34.816765, 31.622690, 41.992424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818573, 31.898518, 41.301765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540905, 31.613911, 41.258198>,  <34.374302, 31.443146, 41.232056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540905, 31.613911, 41.258198>,  <34.818573, 31.898518, 41.301765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540905, 31.613911, 41.258198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615176, 0.665005, -0.423470,
		0.373738, -0.226957, -0.899339,
		-0.694174, -0.711519, -0.108919,
		34.332653, 31.400455, 41.225521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358376, 32.235378, 40.872505>,  <34.818573, 31.898518, 41.301765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358376, 32.235378, 40.872505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453777, 32.572933, 41.064743>,  <35.511017, 32.775467, 41.180084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453777, 32.572933, 41.064743>,  <35.358376, 32.235378, 40.872505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453777, 32.572933, 41.064743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655996, -0.504900, 0.561022,
		0.716091, 0.181459, -0.674008,
		0.238504, 0.843889, 0.480590,
		35.525330, 32.826099, 41.208920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070827, 32.504238, 40.722378>,  <35.358376, 32.235378, 40.872505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070827, 32.504238, 40.722378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961990, 32.649593, 41.078785>,  <35.896690, 32.736805, 41.292629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961990, 32.649593, 41.078785>,  <36.070827, 32.504238, 40.722378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961990, 32.649593, 41.078785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829353, -0.381022, 0.408653,
		0.487998, 0.850159, -0.197706,
		-0.272090, 0.363389, 0.891019,
		35.880363, 32.758610, 41.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685940, 32.643322, 41.068275>,  <36.070827, 32.504238, 40.722378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685940, 32.643322, 41.068275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410431, 32.641754, 41.358265>,  <36.245125, 32.640812, 41.532257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410431, 32.641754, 41.358265>,  <36.685940, 32.643322, 41.068275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410431, 32.641754, 41.358265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680950, -0.346686, 0.645071,
		0.248810, 0.937973, 0.241455,
		-0.688768, -0.003919, 0.724971,
		36.203800, 32.640579, 41.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071499, 32.904526, 41.636074>,  <36.685940, 32.643322, 41.068275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071499, 32.904526, 41.636074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742451, 32.753242, 41.805897>,  <36.545021, 32.662472, 41.907791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742451, 32.753242, 41.805897>,  <37.071499, 32.904526, 41.636074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742451, 32.753242, 41.805897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552503, -0.355373, 0.753957,
		-0.134279, 0.854790, 0.501301,
		-0.822624, -0.378211, 0.424555,
		36.495663, 32.639778, 41.933262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928703, 33.259716, 42.412693>,  <37.071499, 32.904526, 41.636074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928703, 33.259716, 42.412693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761509, 32.897564, 42.382824>,  <36.661190, 32.680275, 42.364902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761509, 32.897564, 42.382824>,  <36.928703, 33.259716, 42.412693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761509, 32.897564, 42.382824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353086, -0.237640, 0.904907,
		-0.837027, 0.351878, 0.419007,
		-0.417990, -0.905378, -0.074668,
		36.636112, 32.625950, 42.360424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804626, 33.214870, 43.020649>,  <36.928703, 33.259716, 42.412693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804626, 33.214870, 43.020649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724953, 32.845322, 42.889935>,  <36.677151, 32.623592, 42.811504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724953, 32.845322, 42.889935>,  <36.804626, 33.214870, 43.020649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724953, 32.845322, 42.889935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269664, -0.372266, 0.888088,
		-0.942129, 0.088769, 0.323283,
		-0.199182, -0.923871, -0.326785,
		36.665199, 32.568161, 42.791901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349178, 32.872841, 43.508869>,  <36.804626, 33.214870, 43.020649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349178, 32.872841, 43.508869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548847, 32.584988, 43.315807>,  <36.668648, 32.412277, 43.199970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548847, 32.584988, 43.315807>,  <36.349178, 32.872841, 43.508869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548847, 32.584988, 43.315807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209156, -0.440473, 0.873062,
		-0.840880, -0.536759, -0.069357,
		0.499174, -0.719634, -0.482651,
		36.698601, 32.369099, 43.171013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199024, 32.175934, 43.849701>,  <36.349178, 32.872841, 43.508869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199024, 32.175934, 43.849701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533432, 32.116886, 43.638317>,  <36.734077, 32.081459, 43.511486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533432, 32.116886, 43.638317>,  <36.199024, 32.175934, 43.849701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533432, 32.116886, 43.638317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387928, -0.522114, 0.759545,
		-0.388042, -0.840003, -0.379234,
		0.836024, -0.147620, -0.528463,
		36.784241, 32.072601, 43.479778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419037, 31.418854, 43.805027>,  <36.199024, 32.175934, 43.849701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419037, 31.418854, 43.805027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738178, 31.655476, 43.758556>,  <36.929665, 31.797449, 43.730675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738178, 31.655476, 43.758556>,  <36.419037, 31.418854, 43.805027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738178, 31.655476, 43.758556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461525, -0.475386, 0.749001,
		0.387847, -0.651210, -0.652304,
		0.797853, 0.591552, -0.116173,
		36.977535, 31.832941, 43.723705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938164, 31.048250, 43.864082>,  <36.419037, 31.418854, 43.805027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938164, 31.048250, 43.864082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.108017, 31.404877, 43.927071>,  <37.209930, 31.618853, 43.964863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.108017, 31.404877, 43.927071>,  <36.938164, 31.048250, 43.864082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108017, 31.404877, 43.927071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534125, -0.387131, 0.751559,
		0.731024, -0.235030, -0.640597,
		0.424634, 0.891566, 0.157467,
		37.235409, 31.672346, 43.974312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653252, 30.917608, 43.872341>,  <36.938164, 31.048250, 43.864082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653252, 30.917608, 43.872341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580269, 31.254692, 44.074944>,  <37.536480, 31.456944, 44.196507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580269, 31.254692, 44.074944>,  <37.653252, 30.917608, 43.872341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580269, 31.254692, 44.074944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467241, -0.378952, 0.798800,
		0.865099, 0.382404, -0.324609,
		-0.182453, 0.842711, 0.506506,
		37.525532, 31.507505, 44.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350502, 31.129305, 44.157990>,  <37.653252, 30.917608, 43.872341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350502, 31.129305, 44.157990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054859, 31.280897, 44.380733>,  <37.877472, 31.371853, 44.514381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054859, 31.280897, 44.380733>,  <38.350502, 31.129305, 44.157990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054859, 31.280897, 44.380733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528650, -0.185956, 0.828221,
		0.417432, 0.906528, -0.062907,
		-0.739107, 0.378981, 0.556860,
		37.833126, 31.394592, 44.547791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689438, 31.467108, 44.551552>,  <38.350502, 31.129305, 44.157990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689438, 31.467108, 44.551552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339268, 31.392006, 44.729713>,  <38.129166, 31.346945, 44.836609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339268, 31.392006, 44.729713>,  <38.689438, 31.467108, 44.551552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339268, 31.392006, 44.729713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459751, -0.038994, 0.887191,
		-0.149205, 0.981442, 0.120456,
		-0.875424, -0.187754, 0.445401,
		38.076641, 31.335680, 44.863335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791027, 31.820837, 45.113956>,  <38.689438, 31.467108, 44.551552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791027, 31.820837, 45.113956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480335, 31.583950, 45.199722>,  <38.293922, 31.441818, 45.251183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480335, 31.583950, 45.199722>,  <38.791027, 31.820837, 45.113956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480335, 31.583950, 45.199722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498111, -0.369253, 0.784562,
		-0.385459, 0.716192, 0.581799,
		-0.776728, -0.592217, 0.214412,
		38.247318, 31.406284, 45.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047897, 32.351055, 45.490696>,  <38.791027, 31.820837, 45.113956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047897, 32.351055, 45.490696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.446667, 32.338135, 45.462151>,  <39.685928, 32.330383, 45.445023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.446667, 32.338135, 45.462151>,  <39.047897, 32.351055, 45.490696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446667, 32.338135, 45.462151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027297, 0.710689, -0.702976,
		0.073427, 0.702764, 0.707624,
		0.996927, -0.032302, -0.071367,
		39.745747, 32.328445, 45.440739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311352, 33.058769, 45.528656>,  <39.047897, 32.351055, 45.490696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311352, 33.058769, 45.528656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586441, 32.837528, 45.340565>,  <39.751495, 32.704784, 45.227711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586441, 32.837528, 45.340565>,  <39.311352, 33.058769, 45.528656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586441, 32.837528, 45.340565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058320, 0.603539, -0.795198,
		0.723628, 0.574299, 0.382810,
		0.687721, -0.553102, -0.470231,
		39.792759, 32.671597, 45.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861191, 33.547718, 45.305355>,  <39.311352, 33.058769, 45.528656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861191, 33.547718, 45.305355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871468, 33.220070, 45.076138>,  <39.877632, 33.023479, 44.938606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871468, 33.220070, 45.076138>,  <39.861191, 33.547718, 45.305355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871468, 33.220070, 45.076138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051391, 0.571395, -0.819065,
		0.998348, 0.050490, -0.027417,
		0.025689, -0.819121, -0.573046,
		39.879173, 32.974335, 44.904224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233559, 33.752911, 44.756981>,  <39.861191, 33.547718, 45.305355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233559, 33.752911, 44.756981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076962, 33.408024, 44.628410>,  <39.983002, 33.201092, 44.551266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076962, 33.408024, 44.628410>,  <40.233559, 33.752911, 44.756981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076962, 33.408024, 44.628410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042979, 0.366065, -0.929596,
		0.919177, -0.350116, -0.180369,
		-0.391494, -0.862215, -0.321431,
		39.959515, 33.149361, 44.531982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584785, 33.560177, 44.112949>,  <40.233559, 33.752911, 44.756981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584785, 33.560177, 44.112949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262596, 33.328815, 44.061302>,  <40.069283, 33.189999, 44.030315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262596, 33.328815, 44.061302>,  <40.584785, 33.560177, 44.112949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262596, 33.328815, 44.061302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096221, 0.342614, -0.934536,
		0.584775, -0.740316, -0.331619,
		-0.805469, -0.578402, -0.129118,
		40.020954, 33.155296, 44.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650364, 33.126038, 43.527908>,  <40.584785, 33.560177, 44.112949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650364, 33.126038, 43.527908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256207, 33.170414, 43.579578>,  <40.019711, 33.197041, 43.610580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256207, 33.170414, 43.579578>,  <40.650364, 33.126038, 43.527908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256207, 33.170414, 43.579578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086265, 0.328778, -0.940459,
		-0.146804, -0.937869, -0.314406,
		-0.985397, 0.110940, 0.129171,
		39.960587, 33.203697, 43.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447712, 33.126411, 42.858330>,  <40.650364, 33.126038, 43.527908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447712, 33.126411, 42.858330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.125908, 33.276711, 43.042320>,  <39.932827, 33.366890, 43.152714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.125908, 33.276711, 43.042320>,  <40.447712, 33.126411, 42.858330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125908, 33.276711, 43.042320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257632, 0.477028, -0.840280,
		-0.535154, -0.794518, -0.286969,
		-0.804510, 0.375746, 0.459977,
		39.884556, 33.389435, 43.180313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961948, 33.091568, 42.381336>,  <40.447712, 33.126411, 42.858330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961948, 33.091568, 42.381336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.832874, 33.363392, 42.644871>,  <39.755432, 33.526485, 42.802994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.832874, 33.363392, 42.644871>,  <39.961948, 33.091568, 42.381336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832874, 33.363392, 42.644871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426246, 0.517164, -0.742197,
		-0.845098, -0.520321, 0.122782,
		-0.322682, 0.679564, 0.658839,
		39.736069, 33.567261, 42.842522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288887, 33.241669, 42.193264>,  <39.961948, 33.091568, 42.381336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288887, 33.241669, 42.193264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425468, 33.551899, 42.405640>,  <39.507416, 33.738037, 42.533066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.425468, 33.551899, 42.405640>,  <39.288887, 33.241669, 42.193264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425468, 33.551899, 42.405640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535292, 0.624793, -0.568414,
		-0.772576, -0.090125, 0.628493,
		0.341451, 0.775571, 0.530943,
		39.527905, 33.784569, 42.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709778, 33.572079, 42.399731>,  <39.288887, 33.241669, 42.193264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709778, 33.572079, 42.399731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000095, 33.845837, 42.427555>,  <39.174286, 34.010090, 42.444248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.000095, 33.845837, 42.427555>,  <38.709778, 33.572079, 42.399731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000095, 33.845837, 42.427555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359114, 0.463187, -0.810244,
		-0.586743, 0.563087, 0.581950,
		0.725789, 0.684391, 0.069559,
		39.217831, 34.051155, 42.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434937, 34.278927, 42.375122>,  <38.709778, 33.572079, 42.399731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434937, 34.278927, 42.375122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821766, 34.315334, 42.280052>,  <39.053864, 34.337181, 42.223011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821766, 34.315334, 42.280052>,  <38.434937, 34.278927, 42.375122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821766, 34.315334, 42.280052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214863, 0.792526, -0.570733,
		0.136419, 0.603007, 0.785985,
		0.967070, 0.091020, -0.237679,
		39.111885, 34.342640, 42.208748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644684, 35.006001, 42.584511>,  <38.434937, 34.278927, 42.375122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644684, 35.006001, 42.584511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887127, 34.879917, 42.292408>,  <39.032593, 34.804268, 42.117146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.887127, 34.879917, 42.292408>,  <38.644684, 35.006001, 42.584511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887127, 34.879917, 42.292408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306763, 0.754444, -0.580267,
		0.733843, 0.575721, 0.360581,
		0.606111, -0.315212, -0.730254,
		39.068958, 34.785355, 42.073330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768173, 35.574314, 42.196278>,  <38.644684, 35.006001, 42.584511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768173, 35.574314, 42.196278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893124, 35.290737, 41.943352>,  <38.968094, 35.120590, 41.791595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893124, 35.290737, 41.943352>,  <38.768173, 35.574314, 42.196278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893124, 35.290737, 41.943352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303097, 0.556450, -0.773625,
		0.900306, 0.433317, -0.041054,
		0.312380, -0.708943, -0.632312,
		38.986839, 35.078053, 41.753658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081852, 35.947285, 41.712273>,  <38.768173, 35.574314, 42.196278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081852, 35.947285, 41.712273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018929, 35.602341, 41.519779>,  <38.981174, 35.395374, 41.404282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018929, 35.602341, 41.519779>,  <39.081852, 35.947285, 41.712273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018929, 35.602341, 41.519779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259400, 0.506275, -0.822434,
		0.952873, -0.004540, -0.303337,
		-0.157305, -0.862360, -0.481238,
		38.971737, 35.343632, 41.375408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.291838, 36.399815, 29.584278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065231, 36.173996, 29.344164>,  <27.929268, 36.038506, 29.200094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065231, 36.173996, 29.344164>,  <28.291838, 36.399815, 29.584278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065231, 36.173996, 29.344164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601129, -0.215146, 0.769647,
		-0.563651, 0.796868, -0.217482,
		-0.566517, -0.564547, -0.600287,
		27.895277, 36.004631, 29.164078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555182, 36.651344, 29.477037>,  <28.291838, 36.399815, 29.584278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555182, 36.651344, 29.477037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541574, 36.255932, 29.418177>,  <27.533409, 36.018684, 29.382860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541574, 36.255932, 29.418177>,  <27.555182, 36.651344, 29.477037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541574, 36.255932, 29.418177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549283, -0.104512, 0.829075,
		-0.834944, 0.109032, -0.539427,
		-0.034019, -0.988529, -0.147151,
		27.531368, 35.959373, 29.374031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870405, 36.381973, 29.625317>,  <27.555182, 36.651344, 29.477037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870405, 36.381973, 29.625317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053164, 36.026398, 29.638157>,  <27.162819, 35.813053, 29.645861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053164, 36.026398, 29.638157>,  <26.870405, 36.381973, 29.625317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053164, 36.026398, 29.638157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595298, -0.278757, 0.753601,
		-0.660958, -0.363429, -0.656548,
		0.456897, -0.888940, 0.032102,
		27.190233, 35.759716, 29.647787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348246, 35.873009, 29.644497>,  <26.870405, 36.381973, 29.625317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348246, 35.873009, 29.644497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691174, 35.739307, 29.801100>,  <26.896931, 35.659088, 29.895061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691174, 35.739307, 29.801100>,  <26.348246, 35.873009, 29.644497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691174, 35.739307, 29.801100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510562, -0.454881, 0.729664,
		-0.065804, -0.825444, -0.560635,
		0.857319, -0.334254, 0.391508,
		26.948370, 35.639030, 29.918552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177631, 35.194729, 29.837568>,  <26.348246, 35.873009, 29.644497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177631, 35.194729, 29.837568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508158, 35.270267, 30.049810>,  <26.706472, 35.315590, 30.177155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508158, 35.270267, 30.049810>,  <26.177631, 35.194729, 29.837568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508158, 35.270267, 30.049810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393918, -0.479551, 0.784130,
		0.402533, -0.856952, -0.321869,
		0.826315, 0.188848, 0.530604,
		26.756052, 35.326923, 30.208992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148342, 34.687634, 30.410383>,  <26.177631, 35.194729, 29.837568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148342, 34.687634, 30.410383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436745, 34.932842, 30.539597>,  <26.609787, 35.079967, 30.617125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436745, 34.932842, 30.539597>,  <26.148342, 34.687634, 30.410383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436745, 34.932842, 30.539597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215661, -0.244505, 0.945361,
		0.658511, -0.751279, -0.044085,
		0.721009, 0.613023, 0.323031,
		26.653048, 35.116749, 30.636505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619051, 34.180355, 30.813259>,  <26.148342, 34.687634, 30.410383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619051, 34.180355, 30.813259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717134, 34.547184, 30.939024>,  <26.775986, 34.767281, 31.014482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717134, 34.547184, 30.939024>,  <26.619051, 34.180355, 30.813259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717134, 34.547184, 30.939024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135269, -0.353506, 0.925600,
		0.959987, -0.184436, -0.210734,
		0.245210, 0.917070, 0.314413,
		26.790697, 34.822304, 31.033348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141769, 34.089275, 31.155191>,  <26.619051, 34.180355, 30.813259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141769, 34.089275, 31.155191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976770, 34.428535, 31.288149>,  <26.877771, 34.632092, 31.367924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976770, 34.428535, 31.288149>,  <27.141769, 34.089275, 31.155191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976770, 34.428535, 31.288149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046823, -0.344660, 0.937559,
		0.909754, 0.402307, 0.102459,
		-0.412500, 0.848150, 0.332393,
		26.853020, 34.682980, 31.387867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600554, 34.233818, 31.711805>,  <27.141769, 34.089275, 31.155191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600554, 34.233818, 31.711805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247839, 34.415585, 31.762339>,  <27.036211, 34.524643, 31.792660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247839, 34.415585, 31.762339>,  <27.600554, 34.233818, 31.711805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247839, 34.415585, 31.762339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012973, -0.291125, 0.956597,
		0.471472, 0.841875, 0.262605,
		-0.881786, 0.454415, 0.126336,
		26.983303, 34.551910, 31.800240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710825, 34.830994, 32.239578>,  <27.600554, 34.233818, 31.711805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710825, 34.830994, 32.239578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331398, 34.708797, 32.206367>,  <27.103743, 34.635479, 32.186440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331398, 34.708797, 32.206367>,  <27.710825, 34.830994, 32.239578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331398, 34.708797, 32.206367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037426, -0.152214, 0.987639,
		-0.314354, 0.939950, 0.132952,
		-0.948568, -0.305492, -0.083028,
		27.046827, 34.617149, 32.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425209, 34.980316, 32.885017>,  <27.710825, 34.830994, 32.239578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425209, 34.980316, 32.885017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131027, 34.751190, 32.740250>,  <26.954517, 34.613716, 32.653389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131027, 34.751190, 32.740250>,  <27.425209, 34.980316, 32.885017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131027, 34.751190, 32.740250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133699, -0.400958, 0.906288,
		-0.664251, 0.714923, 0.218302,
		-0.735456, -0.572816, -0.361921,
		26.910391, 34.579346, 32.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902117, 35.002361, 33.340153>,  <27.425209, 34.980316, 32.885017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902117, 35.002361, 33.340153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859396, 34.652493, 33.151031>,  <26.833763, 34.442570, 33.037560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859396, 34.652493, 33.151031>,  <26.902117, 35.002361, 33.340153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859396, 34.652493, 33.151031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070728, -0.481002, 0.873862,
		-0.991762, 0.059889, 0.113235,
		-0.106801, -0.874672, -0.472804,
		26.827356, 34.390091, 33.009190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284962, 34.649445, 33.601665>,  <26.902117, 35.002361, 33.340153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284962, 34.649445, 33.601665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540918, 34.377666, 33.458057>,  <26.694492, 34.214600, 33.371895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540918, 34.377666, 33.458057>,  <26.284962, 34.649445, 33.601665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540918, 34.377666, 33.458057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034213, -0.491912, 0.869973,
		-0.767703, -0.544405, -0.338016,
		0.639892, -0.679446, -0.359017,
		26.732885, 34.173832, 33.350353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864052, 34.060589, 33.709633>,  <26.284962, 34.649445, 33.601665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864052, 34.060589, 33.709633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230972, 33.911644, 33.653198>,  <26.451124, 33.822277, 33.619339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230972, 33.911644, 33.653198>,  <25.864052, 34.060589, 33.709633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230972, 33.911644, 33.653198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123207, -0.602339, 0.788674,
		-0.378651, -0.706070, -0.598405,
		0.917302, -0.372360, -0.141083,
		26.506163, 33.799934, 33.610874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809431, 33.378468, 33.829247>,  <25.864052, 34.060589, 33.709633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809431, 33.378468, 33.829247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.207945, 33.407822, 33.847279>,  <26.447054, 33.425434, 33.858097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.207945, 33.407822, 33.847279>,  <25.809431, 33.378468, 33.829247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207945, 33.407822, 33.847279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014390, -0.657915, 0.752955,
		0.084920, -0.749508, -0.656526,
		0.996284, 0.073389, 0.045085,
		26.506830, 33.429836, 33.860806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096497, 32.671131, 33.926582>,  <25.809431, 33.378468, 33.829247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096497, 32.671131, 33.926582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400719, 32.899563, 34.050144>,  <26.583252, 33.036621, 34.124283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400719, 32.899563, 34.050144>,  <26.096497, 32.671131, 33.926582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400719, 32.899563, 34.050144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278307, -0.716592, 0.639563,
		0.586602, -0.400452, -0.703943,
		0.760555, 0.571082, 0.308906,
		26.628885, 33.070889, 34.142815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779274, 32.266922, 33.991520>,  <26.096497, 32.671131, 33.926582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779274, 32.266922, 33.991520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.849125, 32.582279, 34.227463>,  <26.891035, 32.771496, 34.369030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.849125, 32.582279, 34.227463>,  <26.779274, 32.266922, 33.991520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849125, 32.582279, 34.227463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479314, -0.591359, 0.648501,
		0.860095, 0.169483, -0.481156,
		0.174626, 0.788397, 0.589861,
		26.901512, 32.818798, 34.404423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468628, 32.365757, 34.170532>,  <26.779274, 32.266922, 33.991520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468628, 32.365757, 34.170532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.276119, 32.535343, 34.477421>,  <27.160614, 32.637096, 34.661556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.276119, 32.535343, 34.477421>,  <27.468628, 32.365757, 34.170532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276119, 32.535343, 34.477421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621205, -0.452561, 0.639760,
		0.618452, 0.784501, -0.045566,
		-0.481271, 0.423966, 0.767223,
		27.131739, 32.662533, 34.707588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957216, 32.653030, 34.823269>,  <27.468628, 32.365757, 34.170532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957216, 32.653030, 34.823269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598989, 32.598885, 34.992802>,  <27.384052, 32.566395, 35.094521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598989, 32.598885, 34.992802>,  <27.957216, 32.653030, 34.823269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598989, 32.598885, 34.992802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411574, -0.613903, 0.673595,
		0.169007, 0.777688, 0.605507,
		-0.895569, -0.135369, 0.423830,
		27.330318, 32.558273, 35.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052284, 32.825649, 35.554832>,  <27.957216, 32.653030, 34.823269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052284, 32.825649, 35.554832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747608, 32.575958, 35.485348>,  <27.564802, 32.426144, 35.443657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747608, 32.575958, 35.485348>,  <28.052284, 32.825649, 35.554832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747608, 32.575958, 35.485348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387891, -0.654039, 0.649441,
		-0.519009, 0.427292, 0.740305,
		-0.761689, -0.624224, -0.173709,
		27.519102, 32.388691, 35.433235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552019, 33.169788, 35.223976>,  <28.052284, 32.825649, 35.554832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552019, 33.169788, 35.223976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793028, 33.379280, 35.464867>,  <28.937634, 33.504974, 35.609402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.793028, 33.379280, 35.464867>,  <28.552019, 33.169788, 35.223976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793028, 33.379280, 35.464867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119786, 0.805365, -0.580550,
		-0.789062, 0.277657, 0.547986,
		0.602522, 0.523731, 0.602223,
		28.973785, 33.536400, 35.645535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236612, 33.760170, 35.341927>,  <28.552019, 33.169788, 35.223976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236612, 33.760170, 35.341927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624336, 33.841034, 35.397881>,  <28.856972, 33.889553, 35.431454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624336, 33.841034, 35.397881>,  <28.236612, 33.760170, 35.341927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624336, 33.841034, 35.397881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089906, 0.821105, -0.563652,
		-0.228804, 0.533778, 0.814082,
		0.969312, 0.202157, 0.139882,
		28.915131, 33.901680, 35.439846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298161, 34.563412, 35.537663>,  <28.236612, 33.760170, 35.341927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298161, 34.563412, 35.537663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655643, 34.435638, 35.411644>,  <28.870132, 34.358974, 35.336033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655643, 34.435638, 35.411644>,  <28.298161, 34.563412, 35.537663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655643, 34.435638, 35.411644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132541, 0.858833, -0.494813,
		0.428630, 0.400460, 0.809881,
		0.893705, -0.319434, -0.315044,
		28.923756, 34.339809, 35.317131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863770, 35.132359, 35.599194>,  <28.298161, 34.563412, 35.537663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863770, 35.132359, 35.599194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990273, 34.871216, 35.323872>,  <29.066174, 34.714531, 35.158680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990273, 34.871216, 35.323872>,  <28.863770, 35.132359, 35.599194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990273, 34.871216, 35.323872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, 0.754668, -0.555058,
		0.881813, -0.065255, 0.467063,
		0.316257, -0.652854, -0.688305,
		29.085150, 34.675358, 35.117382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590048, 35.376671, 35.406879>,  <28.863770, 35.132359, 35.599194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590048, 35.376671, 35.406879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423550, 35.161304, 35.113800>,  <29.323650, 35.032085, 34.937954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423550, 35.161304, 35.113800>,  <29.590048, 35.376671, 35.406879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423550, 35.161304, 35.113800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272713, 0.694798, -0.665495,
		0.867391, -0.476826, -0.142375,
		-0.416247, -0.538416, -0.732698,
		29.298676, 34.999779, 34.893990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066471, 35.367638, 34.880539>,  <29.590048, 35.376671, 35.406879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066471, 35.367638, 34.880539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727993, 35.261929, 34.695450>,  <29.524906, 35.198502, 34.584396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727993, 35.261929, 34.695450>,  <30.066471, 35.367638, 34.880539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727993, 35.261929, 34.695450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197863, 0.650447, -0.733327,
		0.494775, -0.712094, -0.498116,
		-0.846196, -0.264273, -0.462722,
		29.474134, 35.182648, 34.556633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178255, 35.360901, 34.199059>,  <30.066471, 35.367638, 34.880539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178255, 35.360901, 34.199059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778435, 35.362095, 34.187103>,  <29.538544, 35.362812, 34.179932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778435, 35.362095, 34.187103>,  <30.178255, 35.360901, 34.199059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778435, 35.362095, 34.187103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021414, 0.768503, -0.639487,
		0.021060, -0.639839, -0.768221,
		-0.999549, 0.002983, -0.029887,
		29.478571, 35.362991, 34.178139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066835, 35.328964, 33.426548>,  <30.178255, 35.360901, 34.199059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066835, 35.328964, 33.426548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751534, 35.476776, 33.623363>,  <29.562351, 35.565464, 33.741451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.751534, 35.476776, 33.623363>,  <30.066835, 35.328964, 33.426548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751534, 35.476776, 33.623363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051045, 0.757586, -0.650736,
		-0.613227, -0.538062, -0.578309,
		-0.788255, 0.369530, 0.492038,
		29.515057, 35.587635, 33.770973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562128, 35.568157, 32.973480>,  <30.066835, 35.328964, 33.426548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562128, 35.568157, 32.973480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436378, 35.781704, 33.287464>,  <29.360929, 35.909832, 33.475853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436378, 35.781704, 33.287464>,  <29.562128, 35.568157, 32.973480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436378, 35.781704, 33.287464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182567, 0.845446, -0.501887,
		-0.931579, -0.014473, -0.363252,
		-0.314373, 0.533865, 0.784957,
		29.342066, 35.941864, 33.522953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888126, 35.835411, 32.765457>,  <29.562128, 35.568157, 32.973480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888126, 35.835411, 32.765457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034260, 36.065819, 33.057961>,  <29.121941, 36.204063, 33.233463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.034260, 36.065819, 33.057961>,  <28.888126, 35.835411, 32.765457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034260, 36.065819, 33.057961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137952, 0.810383, -0.569429,
		-0.920597, 0.107155, 0.375525,
		0.365336, 0.576019, 0.731254,
		29.143860, 36.238625, 33.277336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446665, 36.427750, 32.721886>,  <28.888126, 35.835411, 32.765457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446665, 36.427750, 32.721886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753248, 36.549488, 32.948128>,  <28.937199, 36.622532, 33.083874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753248, 36.549488, 32.948128>,  <28.446665, 36.427750, 32.721886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753248, 36.549488, 32.948128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135469, 0.937399, -0.320829,
		-0.627845, 0.169279, 0.759707,
		0.766458, 0.304348, 0.565609,
		28.983185, 36.640793, 33.117809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197554, 37.027496, 33.075745>,  <28.446665, 36.427750, 32.721886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197554, 37.027496, 33.075745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596920, 37.043308, 33.059719>,  <28.836540, 37.052795, 33.050102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.596920, 37.043308, 33.059719>,  <28.197554, 37.027496, 33.075745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596920, 37.043308, 33.059719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053823, 0.878588, -0.474538,
		0.016442, 0.475943, 0.879323,
		0.998415, 0.039526, -0.040063,
		28.896444, 37.055164, 33.047699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370296, 37.797615, 33.267872>,  <28.197554, 37.027496, 33.075745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370296, 37.797615, 33.267872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708557, 37.664303, 33.101112>,  <28.911512, 37.584316, 33.001057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.708557, 37.664303, 33.101112>,  <28.370296, 37.797615, 33.267872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708557, 37.664303, 33.101112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047186, 0.824713, -0.563580,
		0.531647, 0.456920, 0.713144,
		0.845651, -0.333276, -0.416896,
		28.962252, 37.564320, 32.976044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726906, 38.388561, 33.194363>,  <28.370296, 37.797615, 33.267872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726906, 38.388561, 33.194363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900730, 38.134556, 32.938892>,  <29.005026, 37.982151, 32.785610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900730, 38.134556, 32.938892>,  <28.726906, 38.388561, 33.194363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900730, 38.134556, 32.938892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087155, 0.676157, -0.731585,
		0.896415, 0.373583, 0.238487,
		0.434562, -0.635018, -0.638677,
		29.031099, 37.944050, 32.747288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336329, 38.685741, 32.716785>,  <28.726906, 38.388561, 33.194363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336329, 38.685741, 32.716785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262791, 38.337757, 32.533756>,  <29.218668, 38.128967, 32.423939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262791, 38.337757, 32.533756>,  <29.336329, 38.685741, 32.716785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262791, 38.337757, 32.533756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155433, 0.433919, -0.887443,
		0.970589, -0.234271, 0.055448,
		-0.183842, -0.869961, -0.457570,
		29.207638, 38.076767, 32.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955280, 38.349411, 32.256145>,  <29.336329, 38.685741, 32.716785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955280, 38.349411, 32.256145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605949, 38.203228, 32.127312>,  <29.396351, 38.115520, 32.050011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605949, 38.203228, 32.127312>,  <29.955280, 38.349411, 32.256145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605949, 38.203228, 32.127312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281140, 0.161826, -0.945924,
		0.397816, -0.916654, -0.038583,
		-0.873329, -0.365456, -0.322085,
		29.343950, 38.093590, 32.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116550, 37.949947, 31.718971>,  <29.955280, 38.349411, 32.256145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116550, 37.949947, 31.718971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733999, 38.055546, 31.668930>,  <29.504469, 38.118904, 31.638905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733999, 38.055546, 31.668930>,  <30.116550, 37.949947, 31.718971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733999, 38.055546, 31.668930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161899, 0.122500, -0.979174,
		-0.243171, -0.956714, -0.159896,
		-0.956377, 0.263994, -0.125103,
		29.447086, 38.134743, 31.631399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852301, 37.624882, 31.021683>,  <30.116550, 37.949947, 31.718971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852301, 37.624882, 31.021683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624672, 37.936375, 31.127308>,  <29.488094, 38.123272, 31.190683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624672, 37.936375, 31.127308>,  <29.852301, 37.624882, 31.021683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624672, 37.936375, 31.127308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036956, 0.345029, -0.937864,
		-0.821458, -0.523952, -0.225125,
		-0.569071, 0.778736, 0.264063,
		29.453951, 38.169994, 31.206526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418631, 37.628475, 30.449472>,  <29.852301, 37.624882, 31.021683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418631, 37.628475, 30.449472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338476, 37.971970, 30.638113>,  <29.290382, 38.178066, 30.751297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338476, 37.971970, 30.638113>,  <29.418631, 37.628475, 30.449472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338476, 37.971970, 30.638113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060336, 0.469636, -0.880796,
		-0.977857, -0.204955, -0.042296,
		-0.200387, 0.858741, 0.471603,
		29.278360, 38.229591, 30.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781225, 37.951134, 30.120518>,  <29.418631, 37.628475, 30.449472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781225, 37.951134, 30.120518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978710, 38.250965, 30.296871>,  <29.097202, 38.430862, 30.402683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.978710, 38.250965, 30.296871>,  <28.781225, 37.951134, 30.120518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978710, 38.250965, 30.296871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072164, 0.540546, -0.838214,
		-0.866625, 0.382022, 0.320967,
		0.493713, 0.749579, 0.440883,
		29.126823, 38.475838, 30.429136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384377, 38.550446, 30.135820>,  <28.781225, 37.951134, 30.120518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384377, 38.550446, 30.135820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772331, 38.646961, 30.149109>,  <29.005104, 38.704872, 30.157082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772331, 38.646961, 30.149109>,  <28.384377, 38.550446, 30.135820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772331, 38.646961, 30.149109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068424, 0.400829, -0.913594,
		-0.233756, 0.883808, 0.405268,
		0.969885, 0.241288, 0.033223,
		29.063297, 38.719349, 30.159075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436083, 39.307175, 30.008902>,  <28.384377, 38.550446, 30.135820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436083, 39.307175, 30.008902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779823, 39.140831, 29.889853>,  <28.986067, 39.041027, 29.818424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779823, 39.140831, 29.889853>,  <28.436083, 39.307175, 30.008902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779823, 39.140831, 29.889853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150402, 0.350721, -0.924323,
		0.488768, 0.839082, 0.238847,
		0.859352, -0.415856, -0.297621,
		29.037628, 39.016075, 29.800566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.369267, 32.758465, 43.693428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038208, 32.601757, 43.854183>,  <42.839573, 32.507732, 43.950638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.038208, 32.601757, 43.854183>,  <43.369267, 32.758465, 43.693428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038208, 32.601757, 43.854183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545614, -0.393803, 0.739746,
		-0.131542, 0.831528, 0.539684,
		-0.827648, -0.391766, 0.401892,
		42.789913, 32.484226, 43.974751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376076, 32.903618, 44.378994>,  <43.369267, 32.758465, 43.693428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376076, 32.903618, 44.378994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.176495, 32.564827, 44.305588>,  <43.056747, 32.361553, 44.261543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.176495, 32.564827, 44.305588>,  <43.376076, 32.903618, 44.378994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176495, 32.564827, 44.305588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515578, -0.460309, 0.722700,
		-0.696583, 0.265976, 0.666355,
		-0.498950, -0.846978, -0.183512,
		43.026810, 32.310734, 44.250534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198650, 32.696827, 45.020866>,  <43.376076, 32.903618, 44.378994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198650, 32.696827, 45.020866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140472, 32.362309, 44.809414>,  <43.105568, 32.161598, 44.682545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140472, 32.362309, 44.809414>,  <43.198650, 32.696827, 45.020866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140472, 32.362309, 44.809414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310890, -0.545878, 0.778052,
		-0.939252, -0.051183, 0.339392,
		-0.145443, -0.836300, -0.528629,
		43.096840, 32.111420, 44.650826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814754, 32.254776, 45.489140>,  <43.198650, 32.696827, 45.020866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814754, 32.254776, 45.489140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.936512, 31.984375, 45.220703>,  <43.009567, 31.822134, 45.059643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.936512, 31.984375, 45.220703>,  <42.814754, 32.254776, 45.489140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936512, 31.984375, 45.220703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007337, -0.706164, 0.708010,
		-0.952518, -0.210589, -0.219911,
		0.304392, -0.676007, -0.671089,
		43.027828, 31.781572, 45.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371967, 31.665089, 45.573166>,  <42.814754, 32.254776, 45.489140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371967, 31.665089, 45.573166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.675793, 31.531782, 45.349743>,  <42.858089, 31.451797, 45.215687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.675793, 31.531782, 45.349743>,  <42.371967, 31.665089, 45.573166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675793, 31.531782, 45.349743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010899, -0.852118, 0.523237,
		-0.650337, -0.403521, -0.643609,
		0.759567, -0.333265, -0.558561,
		42.903664, 31.431803, 45.182175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229015, 30.942989, 45.372196>,  <42.371967, 31.665089, 45.573166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229015, 30.942989, 45.372196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.626385, 30.973816, 45.338310>,  <42.864807, 30.992311, 45.317978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.626385, 30.973816, 45.338310>,  <42.229015, 30.942989, 45.372196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626385, 30.973816, 45.338310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106293, -0.895816, 0.431527,
		-0.042628, -0.437692, -0.898114,
		0.993421, 0.077068, -0.084710,
		42.924412, 30.996937, 45.312897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452778, 30.337320, 44.995220>,  <42.229015, 30.942989, 45.372196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452778, 30.337320, 44.995220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.742561, 30.484560, 45.228344>,  <42.916431, 30.572903, 45.368217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.742561, 30.484560, 45.228344>,  <42.452778, 30.337320, 44.995220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742561, 30.484560, 45.228344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090803, -0.889076, 0.448664,
		0.683311, -0.272118, -0.677523,
		0.724459, 0.368098, 0.582806,
		42.959900, 30.594990, 45.403187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967480, 29.782375, 45.058720>,  <42.452778, 30.337320, 44.995220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967480, 29.782375, 45.058720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100250, 30.019535, 45.352196>,  <43.179913, 30.161831, 45.528282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100250, 30.019535, 45.352196>,  <42.967480, 29.782375, 45.058720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100250, 30.019535, 45.352196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529129, -0.760922, 0.375526,
		0.780928, 0.263571, -0.566287,
		0.331923, 0.592898, 0.733689,
		43.199825, 30.197405, 45.572304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646816, 29.562475, 45.103466>,  <42.967480, 29.782375, 45.058720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646816, 29.562475, 45.103466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.556480, 29.749514, 45.445309>,  <43.502277, 29.861736, 45.650414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.556480, 29.749514, 45.445309>,  <43.646816, 29.562475, 45.103466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556480, 29.749514, 45.445309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449729, -0.728145, 0.517252,
		0.864141, 0.501156, -0.045847,
		-0.225840, 0.467597, 0.854604,
		43.488728, 29.889793, 45.701691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277691, 29.451727, 45.523029>,  <43.646816, 29.562475, 45.103466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277691, 29.451727, 45.523029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.951344, 29.539244, 45.737125>,  <43.755535, 29.591753, 45.865585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.951344, 29.539244, 45.737125>,  <44.277691, 29.451727, 45.523029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951344, 29.539244, 45.737125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233750, -0.721853, 0.651375,
		0.528881, 0.656551, 0.537797,
		-0.815871, 0.218790, 0.535243,
		43.706581, 29.604881, 45.897697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463772, 29.533062, 46.313004>,  <44.277691, 29.451727, 45.523029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463772, 29.533062, 46.313004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.076241, 29.441082, 46.276154>,  <43.843719, 29.385895, 46.254044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.076241, 29.441082, 46.276154>,  <44.463772, 29.533062, 46.313004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076241, 29.441082, 46.276154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110199, -0.733152, 0.671077,
		-0.221857, 0.640008, 0.735642,
		-0.968832, -0.229950, -0.092127,
		43.785591, 29.372097, 46.248516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151260, 29.472490, 46.939766>,  <44.463772, 29.533062, 46.313004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151260, 29.472490, 46.939766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.899441, 29.268650, 46.705170>,  <43.748348, 29.146345, 46.564411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.899441, 29.268650, 46.705170>,  <44.151260, 29.472490, 46.939766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899441, 29.268650, 46.705170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024608, -0.767554, 0.640512,
		-0.776569, 0.388803, 0.495754,
		-0.629551, -0.509601, -0.586491,
		43.710575, 29.115770, 46.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664043, 29.062487, 47.368256>,  <44.151260, 29.472490, 46.939766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664043, 29.062487, 47.368256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.673428, 28.873270, 47.015965>,  <43.679058, 28.759739, 46.804588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.673428, 28.873270, 47.015965>,  <43.664043, 29.062487, 47.368256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673428, 28.873270, 47.015965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158955, -0.871527, 0.463868,
		-0.987007, 0.129112, -0.095641,
		0.023463, -0.473044, -0.880727,
		43.680466, 28.731358, 46.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170742, 28.563387, 47.402340>,  <43.664043, 29.062487, 47.368256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170742, 28.563387, 47.402340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.446434, 28.445433, 47.137615>,  <43.611851, 28.374660, 46.978779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.446434, 28.445433, 47.137615>,  <43.170742, 28.563387, 47.402340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446434, 28.445433, 47.137615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137438, -0.843633, 0.519032,
		-0.711384, -0.448692, -0.540932,
		0.689234, -0.294887, -0.661815,
		43.653202, 28.356966, 46.939072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179768, 28.973223, 48.063259>,  <43.170742, 28.563387, 47.402340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179768, 28.973223, 48.063259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.796295, 28.913860, 48.160347>,  <42.566212, 28.878242, 48.218597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.796295, 28.913860, 48.160347>,  <43.179768, 28.973223, 48.063259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796295, 28.913860, 48.160347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189263, 0.304269, 0.933595,
		-0.212403, 0.940955, -0.263608,
		-0.958679, -0.148407, 0.242715,
		42.508690, 28.869339, 48.233162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118782, 29.574484, 48.388699>,  <43.179768, 28.973223, 48.063259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118782, 29.574484, 48.388699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.121960, 29.887327, 48.637936>,  <43.123867, 30.075033, 48.787479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.121960, 29.887327, 48.637936>,  <43.118782, 29.574484, 48.388699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121960, 29.887327, 48.637936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899489, 0.277819, -0.337248,
		-0.436872, -0.557786, 0.705704,
		0.007945, 0.782107, 0.623094,
		43.124344, 30.121960, 48.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442421, 29.599056, 48.791992>,  <43.118782, 29.574484, 48.388699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442421, 29.599056, 48.791992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.593853, 29.968760, 48.772308>,  <42.684711, 30.190582, 48.760498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.593853, 29.968760, 48.772308>,  <42.442421, 29.599056, 48.791992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593853, 29.968760, 48.772308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888661, 0.348110, -0.298497,
		-0.258759, 0.156735, 0.953141,
		0.378583, 0.924259, -0.049208,
		42.707428, 30.246037, 48.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852688, 30.093588, 48.947781>,  <42.442421, 29.599056, 48.791992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852688, 30.093588, 48.947781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124794, 30.327560, 48.771107>,  <42.288059, 30.467945, 48.665100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124794, 30.327560, 48.771107>,  <41.852688, 30.093588, 48.947781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124794, 30.327560, 48.771107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732757, 0.557008, -0.390908,
		0.017369, 0.589572, 0.807529,
		0.680268, 0.584933, -0.441689,
		42.328873, 30.503040, 48.638599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671104, 30.765081, 49.113289>,  <41.852688, 30.093588, 48.947781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671104, 30.765081, 49.113289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900455, 30.796497, 48.787083>,  <42.038067, 30.815348, 48.591358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900455, 30.796497, 48.787083>,  <41.671104, 30.765081, 49.113289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900455, 30.796497, 48.787083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636103, 0.670003, -0.382712,
		0.516340, 0.738192, 0.434127,
		0.573382, 0.078540, -0.815515,
		42.072472, 30.820059, 48.542427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686531, 31.566845, 48.876598>,  <41.671104, 30.765081, 49.113289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686531, 31.566845, 48.876598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.814125, 31.356808, 48.560997>,  <41.890682, 31.230785, 48.371635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.814125, 31.356808, 48.560997>,  <41.686531, 31.566845, 48.876598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814125, 31.356808, 48.560997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517431, 0.600990, -0.609160,
		0.794047, 0.602570, -0.079989,
		0.318989, -0.525091, -0.789003,
		41.909821, 31.199280, 48.324295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742531, 32.118568, 48.390491>,  <41.686531, 31.566845, 48.876598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742531, 32.118568, 48.390491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.739216, 31.780382, 48.176903>,  <41.737228, 31.577471, 48.048752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.739216, 31.780382, 48.176903>,  <41.742531, 32.118568, 48.390491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739216, 31.780382, 48.176903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503039, 0.465025, -0.728494,
		0.864224, 0.262570, -0.429154,
		-0.008287, -0.845464, -0.533969,
		41.736729, 31.526743, 48.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771221, 32.406803, 47.681770>,  <41.742531, 32.118568, 48.390491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771221, 32.406803, 47.681770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653790, 32.026970, 47.637764>,  <41.583332, 31.799070, 47.611362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653790, 32.026970, 47.637764>,  <41.771221, 32.406803, 47.681770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653790, 32.026970, 47.637764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514772, 0.254014, -0.818833,
		0.805495, -0.183758, -0.563391,
		-0.293576, -0.949584, -0.110013,
		41.565716, 31.742094, 47.604759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755173, 32.200756, 46.974209>,  <41.771221, 32.406803, 47.681770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755173, 32.200756, 46.974209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539070, 31.895555, 47.116165>,  <41.409409, 31.712435, 47.201340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.539070, 31.895555, 47.116165>,  <41.755173, 32.200756, 46.974209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539070, 31.895555, 47.116165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697900, 0.170636, -0.695571,
		0.470165, -0.623467, -0.624687,
		-0.540259, -0.763002, 0.354891,
		41.376991, 31.666655, 47.222633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654156, 31.795759, 46.417789>,  <41.755173, 32.200756, 46.974209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654156, 31.795759, 46.417789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364140, 31.737690, 46.687080>,  <41.190128, 31.702848, 46.848656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364140, 31.737690, 46.687080>,  <41.654156, 31.795759, 46.417789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364140, 31.737690, 46.687080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684503, 0.044111, -0.727674,
		0.075942, -0.988422, -0.131354,
		-0.725043, -0.145173, 0.673229,
		41.146626, 31.694138, 46.889050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323994, 31.265652, 46.081654>,  <41.654156, 31.795759, 46.417789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323994, 31.265652, 46.081654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065018, 31.418985, 46.345127>,  <40.909630, 31.510986, 46.503212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065018, 31.418985, 46.345127>,  <41.323994, 31.265652, 46.081654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065018, 31.418985, 46.345127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663705, 0.141195, -0.734548,
		-0.374582, -0.912753, 0.163006,
		-0.647445, 0.383336, 0.658687,
		40.870785, 31.533987, 46.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665638, 30.985931, 45.869446>,  <41.323994, 31.265652, 46.081654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665638, 30.985931, 45.869446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.570293, 31.292879, 46.107548>,  <40.513084, 31.477049, 46.250408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.570293, 31.292879, 46.107548>,  <40.665638, 30.985931, 45.869446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570293, 31.292879, 46.107548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552096, 0.397175, -0.733105,
		-0.798982, -0.503383, 0.328990,
		-0.238366, 0.767371, 0.595251,
		40.498783, 31.523090, 46.286121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907005, 31.131548, 45.805561>,  <40.665638, 30.985931, 45.869446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907005, 31.131548, 45.805561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072109, 31.477600, 45.919525>,  <40.171173, 31.685232, 45.987904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072109, 31.477600, 45.919525>,  <39.907005, 31.131548, 45.805561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072109, 31.477600, 45.919525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596515, 0.493142, -0.633231,
		-0.688329, 0.091422, 0.719615,
		0.412763, 0.865132, 0.284909,
		40.195938, 31.737141, 46.004997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300308, 31.622576, 45.743744>,  <39.907005, 31.131548, 45.805561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300308, 31.622576, 45.743744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635609, 31.839176, 45.769390>,  <39.836788, 31.969137, 45.784779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635609, 31.839176, 45.769390>,  <39.300308, 31.622576, 45.743744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635609, 31.839176, 45.769390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301013, 0.557570, -0.773632,
		-0.454673, 0.629198, 0.630383,
		0.838250, 0.541503, 0.064116,
		39.887085, 32.001629, 45.788624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613598, 31.875851, 45.894993>,  <39.300308, 31.622576, 45.743744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613598, 31.875851, 45.894993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493195, 31.510363, 45.785809>,  <38.420952, 31.291069, 45.720299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493195, 31.510363, 45.785809>,  <38.613598, 31.875851, 45.894993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493195, 31.510363, 45.785809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625178, -0.405222, 0.667043,
		-0.720101, 0.030139, 0.693215,
		-0.301010, -0.913721, -0.272959,
		38.402893, 31.236246, 45.703922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477928, 31.453936, 46.522087>,  <38.613598, 31.875851, 45.894993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477928, 31.453936, 46.522087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535305, 31.180084, 46.236233>,  <38.569729, 31.015774, 46.064720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535305, 31.180084, 46.236233>,  <38.477928, 31.453936, 46.522087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535305, 31.180084, 46.236233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425037, -0.609502, 0.669217,
		-0.893739, -0.399740, 0.203566,
		0.143438, -0.684628, -0.714640,
		38.578335, 30.974695, 46.021839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306252, 30.908066, 46.887112>,  <38.477928, 31.453936, 46.522087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306252, 30.908066, 46.887112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506470, 30.756565, 46.575726>,  <38.626602, 30.665665, 46.388893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506470, 30.756565, 46.575726>,  <38.306252, 30.908066, 46.887112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506470, 30.756565, 46.575726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382832, -0.709673, 0.591442,
		-0.776463, -0.594063, -0.210224,
		0.500544, -0.378753, -0.778461,
		38.656631, 30.642939, 46.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193062, 30.273205, 46.983929>,  <38.306252, 30.908066, 46.887112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193062, 30.273205, 46.983929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526947, 30.304306, 46.765862>,  <38.727280, 30.322968, 46.635021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526947, 30.304306, 46.765862>,  <38.193062, 30.273205, 46.983929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526947, 30.304306, 46.765862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451598, -0.663180, 0.596868,
		-0.315133, -0.744410, -0.588680,
		0.834715, 0.077754, -0.545164,
		38.777363, 30.327633, 46.602314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448204, 29.611788, 46.813873>,  <38.193062, 30.273205, 46.983929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448204, 29.611788, 46.813873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773140, 29.843124, 46.783882>,  <38.968102, 29.981926, 46.765888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773140, 29.843124, 46.783882>,  <38.448204, 29.611788, 46.813873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773140, 29.843124, 46.783882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545771, -0.708620, 0.447204,
		0.205505, -0.404204, -0.891284,
		0.812343, 0.578339, -0.074977,
		39.016842, 30.016626, 46.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954708, 29.021843, 46.610222>,  <38.448204, 29.611788, 46.813873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954708, 29.021843, 46.610222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184513, 29.342005, 46.678673>,  <39.322395, 29.534101, 46.719746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184513, 29.342005, 46.678673>,  <38.954708, 29.021843, 46.610222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184513, 29.342005, 46.678673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632152, -0.566725, 0.528400,
		0.519917, -0.195394, -0.831569,
		0.574517, 0.800403, 0.171131,
		39.356869, 29.582125, 46.730011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702324, 28.839701, 46.477886>,  <38.954708, 29.021843, 46.610222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702324, 28.839701, 46.477886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702427, 29.164307, 46.711617>,  <39.702488, 29.359070, 46.851856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702427, 29.164307, 46.711617>,  <39.702324, 28.839701, 46.477886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702427, 29.164307, 46.711617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439927, -0.524839, 0.728703,
		0.898033, 0.256875, -0.357143,
		0.000257, 0.811516, 0.584330,
		39.702503, 29.407761, 46.886917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969788, 28.528439, 45.877258>,  <39.702324, 28.839701, 46.477886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969788, 28.528439, 45.877258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735363, 28.205729, 45.907318>,  <39.594707, 28.012102, 45.925354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735363, 28.205729, 45.907318>,  <39.969788, 28.528439, 45.877258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735363, 28.205729, 45.907318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613777, 0.381481, -0.691194,
		0.528973, -0.451202, -0.718751,
		-0.586058, -0.806777, 0.075144,
		39.559544, 27.963696, 45.929863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883652, 28.153877, 45.104328>,  <39.969788, 28.528439, 45.877258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883652, 28.153877, 45.104328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.586063, 28.109886, 45.367966>,  <39.407509, 28.083492, 45.526150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.586063, 28.109886, 45.367966>,  <39.883652, 28.153877, 45.104328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586063, 28.109886, 45.367966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668209, 0.123617, -0.733631,
		-0.000796, -0.986217, -0.165453,
		-0.743973, -0.109974, 0.659098,
		39.362873, 28.076893, 45.565697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445183, 27.761553, 44.712608>,  <39.883652, 28.153877, 45.104328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445183, 27.761553, 44.712608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221600, 27.903200, 45.012520>,  <39.087448, 27.988188, 45.192467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221600, 27.903200, 45.012520>,  <39.445183, 27.761553, 44.712608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221600, 27.903200, 45.012520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711965, 0.258557, -0.652882,
		-0.425057, -0.898749, 0.107596,
		-0.558957, 0.354117, 0.749779,
		39.053913, 28.009436, 45.237453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752766, 27.504181, 44.516518>,  <39.445183, 27.761553, 44.712608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752766, 27.504181, 44.516518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.718258, 27.801176, 44.782230>,  <38.697556, 27.979374, 44.941658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.718258, 27.801176, 44.782230>,  <38.752766, 27.504181, 44.516518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718258, 27.801176, 44.782230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721907, 0.412921, -0.555289,
		-0.686592, -0.527451, 0.500387,
		-0.086268, 0.742490, 0.664279,
		38.692379, 28.023924, 44.981514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009418, 27.512175, 44.846218>,  <38.752766, 27.504181, 44.516518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009418, 27.512175, 44.846218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175243, 27.872061, 44.900841>,  <38.274738, 28.087994, 44.933613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175243, 27.872061, 44.900841>,  <38.009418, 27.512175, 44.846218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175243, 27.872061, 44.900841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854211, 0.436472, -0.282517,
		-0.313788, 0.000475, 0.949493,
		0.414561, 0.899718, 0.136554,
		38.299610, 28.141975, 44.941807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461967, 27.979727, 45.118404>,  <38.009418, 27.512175, 44.846218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461967, 27.979727, 45.118404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745125, 28.218243, 44.966969>,  <37.915020, 28.361351, 44.876106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.745125, 28.218243, 44.966969>,  <37.461967, 27.979727, 45.118404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745125, 28.218243, 44.966969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696319, 0.499258, -0.515637,
		-0.118454, 0.628634, 0.768627,
		0.707891, 0.596289, -0.378590,
		37.957493, 28.397129, 44.853390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264153, 28.738256, 45.181915>,  <37.461967, 27.979727, 45.118404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264153, 28.738256, 45.181915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531200, 28.731373, 44.884193>,  <37.691429, 28.727243, 44.705559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531200, 28.731373, 44.884193>,  <37.264153, 28.738256, 45.181915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531200, 28.731373, 44.884193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637136, 0.503983, -0.583146,
		0.385151, 0.863542, 0.325505,
		0.667620, -0.017208, -0.744303,
		37.731487, 28.726210, 44.660904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.398727, 26.206802, 45.379536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.409386, 26.592081, 45.486523>,  <42.415779, 26.823250, 45.550713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.409386, 26.592081, 45.486523>,  <42.398727, 26.206802, 45.379536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409386, 26.592081, 45.486523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164467, 0.268138, -0.949238,
		-0.986023, -0.018696, 0.165559,
		0.026646, 0.963199, 0.267465,
		42.417377, 26.881041, 45.566761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769112, 26.597980, 45.209755>,  <42.398727, 26.206802, 45.379536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769112, 26.597980, 45.209755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.078285, 26.850420, 45.235947>,  <42.263790, 27.001884, 45.251659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.078285, 26.850420, 45.235947>,  <41.769112, 26.597980, 45.209755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078285, 26.850420, 45.235947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176803, 0.313341, -0.933037,
		-0.609355, 0.709599, 0.353772,
		0.772934, 0.631099, 0.065477,
		42.310165, 27.039749, 45.255589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500706, 27.177866, 44.919270>,  <41.769112, 26.597980, 45.209755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500706, 27.177866, 44.919270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.893459, 27.249594, 44.894798>,  <42.129112, 27.292629, 44.880116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.893459, 27.249594, 44.894798>,  <41.500706, 27.177866, 44.919270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893459, 27.249594, 44.894798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147548, 0.521112, -0.840638,
		-0.118860, 0.834438, 0.538131,
		0.981887, 0.179319, -0.061180,
		42.188026, 27.303389, 44.876446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578617, 27.903374, 44.745640>,  <41.500706, 27.177866, 44.919270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578617, 27.903374, 44.745640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.903275, 27.707712, 44.617908>,  <42.098068, 27.590315, 44.541271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.903275, 27.707712, 44.617908>,  <41.578617, 27.903374, 44.745640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903275, 27.707712, 44.617908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045291, 0.597693, -0.800445,
		0.582398, 0.635211, 0.507266,
		0.811641, -0.489152, -0.319326,
		42.146767, 27.560966, 44.522110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977821, 28.428154, 44.388668>,  <41.578617, 27.903374, 44.745640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977821, 28.428154, 44.388668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.134697, 28.088291, 44.247662>,  <42.228825, 27.884373, 44.163059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.134697, 28.088291, 44.247662>,  <41.977821, 28.428154, 44.388668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134697, 28.088291, 44.247662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191456, 0.450222, -0.872149,
		0.899739, 0.274558, 0.339245,
		0.392191, -0.849658, -0.352516,
		42.252354, 27.833393, 44.141907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486778, 28.558247, 43.821499>,  <41.977821, 28.428154, 44.388668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486778, 28.558247, 43.821499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.434601, 28.165768, 43.764603>,  <42.403294, 27.930281, 43.730465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.434601, 28.165768, 43.764603>,  <42.486778, 28.558247, 43.821499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434601, 28.165768, 43.764603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045121, 0.149196, -0.987778,
		0.990428, -0.122432, -0.063735,
		-0.130445, -0.981199, -0.142243,
		42.395466, 27.871408, 43.721931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884243, 28.440424, 43.257488>,  <42.486778, 28.558247, 43.821499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884243, 28.440424, 43.257488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.599281, 28.159845, 43.266071>,  <42.428307, 27.991499, 43.271221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.599281, 28.159845, 43.266071>,  <42.884243, 28.440424, 43.257488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599281, 28.159845, 43.266071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083501, 0.054360, -0.995024,
		0.696789, -0.710647, -0.097297,
		-0.712399, -0.701446, 0.021462,
		42.385563, 27.949411, 43.272511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040737, 27.987278, 42.707375>,  <42.884243, 28.440424, 43.257488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040737, 27.987278, 42.707375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.656448, 27.955118, 42.813622>,  <42.425877, 27.935823, 42.877369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.656448, 27.955118, 42.813622>,  <43.040737, 27.987278, 42.707375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656448, 27.955118, 42.813622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265578, -0.011374, -0.964022,
		0.080528, -0.996698, -0.010425,
		-0.960720, -0.080400, 0.265617,
		42.368233, 27.931000, 42.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782932, 27.562426, 42.256771>,  <43.040737, 27.987278, 42.707375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782932, 27.562426, 42.256771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.444244, 27.728142, 42.390297>,  <42.241032, 27.827572, 42.470413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.444244, 27.728142, 42.390297>,  <42.782932, 27.562426, 42.256771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444244, 27.728142, 42.390297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347471, 0.044549, -0.936632,
		-0.402912, -0.909053, 0.106234,
		-0.846715, 0.414293, 0.333819,
		42.190231, 27.852430, 42.490444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240658, 27.228382, 41.932365>,  <42.782932, 27.562426, 42.256771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240658, 27.228382, 41.932365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.051987, 27.552389, 42.071728>,  <41.938782, 27.746794, 42.155346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.051987, 27.552389, 42.071728>,  <42.240658, 27.228382, 41.932365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051987, 27.552389, 42.071728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522192, 0.061783, -0.850587,
		-0.710516, -0.583142, 0.393843,
		-0.471680, 0.810017, 0.348410,
		41.910484, 27.795395, 42.176250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556118, 27.111546, 41.867630>,  <42.240658, 27.228382, 41.932365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556118, 27.111546, 41.867630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.545464, 27.509975, 41.901390>,  <41.539070, 27.749033, 41.921646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.545464, 27.509975, 41.901390>,  <41.556118, 27.111546, 41.867630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545464, 27.509975, 41.901390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369303, 0.068654, -0.926770,
		-0.928927, -0.055858, 0.366024,
		-0.026638, 0.996076, 0.084403,
		41.537472, 27.808798, 41.926712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846230, 27.367556, 41.635918>,  <41.556118, 27.111546, 41.867630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846230, 27.367556, 41.635918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096848, 27.675400, 41.586693>,  <41.247219, 27.860106, 41.557159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096848, 27.675400, 41.586693>,  <40.846230, 27.367556, 41.635918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096848, 27.675400, 41.586693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139055, -0.044978, -0.989263,
		-0.766881, 0.636929, 0.078838,
		0.626544, 0.769609, -0.123061,
		41.284809, 27.906282, 41.549774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137653, 27.449890, 42.004009>,  <40.846230, 27.367556, 41.635918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137653, 27.449890, 42.004009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.834019, 27.189762, 41.992180>,  <39.651836, 27.033686, 41.985081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.834019, 27.189762, 41.992180>,  <40.137653, 27.449890, 42.004009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834019, 27.189762, 41.992180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158232, -0.228381, 0.960627,
		-0.631468, 0.724519, 0.276262,
		-0.759086, -0.650319, -0.029573,
		39.606293, 26.994667, 41.983307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945923, 27.344435, 42.729473>,  <40.137653, 27.449890, 42.004009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945923, 27.344435, 42.729473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.740967, 27.032698, 42.585209>,  <39.617992, 26.845655, 42.498650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.740967, 27.032698, 42.585209>,  <39.945923, 27.344435, 42.729473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740967, 27.032698, 42.585209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306335, -0.558235, 0.771059,
		-0.802253, 0.284603, 0.524776,
		-0.512395, -0.779343, -0.360662,
		39.587250, 26.798895, 42.477009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536728, 27.006577, 43.281788>,  <39.945923, 27.344435, 42.729473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536728, 27.006577, 43.281788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650818, 26.732870, 43.013332>,  <39.719273, 26.568647, 42.852261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650818, 26.732870, 43.013332>,  <39.536728, 27.006577, 43.281788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650818, 26.732870, 43.013332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316954, -0.593492, 0.739802,
		-0.904536, -0.423732, 0.047600,
		0.285227, -0.684265, -0.671139,
		39.736385, 26.527590, 42.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280334, 26.434139, 43.456619>,  <39.536728, 27.006577, 43.281788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280334, 26.434139, 43.456619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598831, 26.345211, 43.231564>,  <39.789928, 26.291855, 43.096531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598831, 26.345211, 43.231564>,  <39.280334, 26.434139, 43.456619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598831, 26.345211, 43.231564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376784, -0.545391, 0.748721,
		-0.473315, -0.808160, -0.350499,
		0.796245, -0.222319, -0.562643,
		39.837704, 26.278515, 43.062771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384560, 25.735807, 43.495945>,  <39.280334, 26.434139, 43.456619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384560, 25.735807, 43.495945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.750416, 25.835201, 43.368393>,  <39.969929, 25.894838, 43.291862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.750416, 25.835201, 43.368393>,  <39.384560, 25.735807, 43.495945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750416, 25.835201, 43.368393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404168, -0.545195, 0.734446,
		0.008649, -0.800635, -0.599089,
		0.914644, 0.248485, -0.318876,
		40.024811, 25.909746, 43.272732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664799, 25.147182, 43.519852>,  <39.384560, 25.735807, 43.495945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664799, 25.147182, 43.519852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.985359, 25.383579, 43.483017>,  <40.177696, 25.525417, 43.460915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.985359, 25.383579, 43.483017>,  <39.664799, 25.147182, 43.519852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985359, 25.383579, 43.483017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472250, -0.530722, 0.703786,
		0.367059, -0.607505, -0.704418,
		0.801403, 0.590992, -0.092088,
		40.225780, 25.560877, 43.455391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277195, 24.708632, 43.344402>,  <39.664799, 25.147182, 43.519852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277195, 24.708632, 43.344402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.382973, 25.044619, 43.533936>,  <40.446438, 25.246212, 43.647655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.382973, 25.044619, 43.533936>,  <40.277195, 24.708632, 43.344402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382973, 25.044619, 43.533936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218981, -0.530792, 0.818723,
		0.939211, -0.112744, -0.324301,
		0.264442, 0.839970, 0.473837,
		40.462307, 25.296610, 43.676086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900440, 24.541656, 43.606930>,  <40.277195, 24.708632, 43.344402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900440, 24.541656, 43.606930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.795719, 24.874275, 43.802887>,  <40.732887, 25.073847, 43.920460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.795719, 24.874275, 43.802887>,  <40.900440, 24.541656, 43.606930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795719, 24.874275, 43.802887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150739, -0.466136, 0.871777,
		0.953278, 0.302077, -0.003312,
		-0.261800, 0.831545, 0.489892,
		40.717178, 25.123739, 43.949856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508274, 24.600498, 44.051804>,  <40.900440, 24.541656, 43.606930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508274, 24.600498, 44.051804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.218590, 24.823732, 44.213821>,  <41.044781, 24.957672, 44.311031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.218590, 24.823732, 44.213821>,  <41.508274, 24.600498, 44.051804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218590, 24.823732, 44.213821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233122, -0.354658, 0.905468,
		0.648982, 0.750172, 0.126744,
		-0.724207, 0.558086, 0.405048,
		41.001328, 24.991158, 44.335335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827854, 25.120871, 44.553551>,  <41.508274, 24.600498, 44.051804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827854, 25.120871, 44.553551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.447365, 25.100264, 44.675220>,  <41.219070, 25.087900, 44.748222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.447365, 25.100264, 44.675220>,  <41.827854, 25.120871, 44.553551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447365, 25.100264, 44.675220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306807, -0.261251, 0.915214,
		0.032317, 0.963895, 0.264313,
		-0.951223, -0.051516, 0.304173,
		41.161999, 25.084808, 44.766472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885216, 25.437984, 45.137600>,  <41.827854, 25.120871, 44.553551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885216, 25.437984, 45.137600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.535866, 25.243542, 45.149754>,  <41.326256, 25.126877, 45.157047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.535866, 25.243542, 45.149754>,  <41.885216, 25.437984, 45.137600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535866, 25.243542, 45.149754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038159, -0.006102, 0.999253,
		-0.485558, 0.873878, 0.023879,
		-0.873371, -0.486107, 0.030384,
		41.273853, 25.097710, 45.158867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494465, 25.811428, 45.575161>,  <41.885216, 25.437984, 45.137600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494465, 25.811428, 45.575161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.368790, 25.431898, 45.562428>,  <41.293385, 25.204180, 45.554787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.368790, 25.431898, 45.562428>,  <41.494465, 25.811428, 45.575161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368790, 25.431898, 45.562428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022854, -0.025963, 0.999402,
		-0.949086, 0.314728, -0.013527,
		-0.314188, -0.948827, -0.031833,
		41.274532, 25.147249, 45.552879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036209, 25.784664, 46.113773>,  <41.494465, 25.811428, 45.575161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036209, 25.784664, 46.113773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.128788, 25.405363, 46.026825>,  <41.184338, 25.177782, 45.974655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.128788, 25.405363, 46.026825>,  <41.036209, 25.784664, 46.113773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128788, 25.405363, 46.026825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057618, -0.236406, 0.969945,
		-0.971139, -0.211970, -0.109353,
		0.231450, -0.948251, -0.217369,
		41.198223, 25.120888, 45.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504013, 25.502359, 46.470047>,  <41.036209, 25.784664, 46.113773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504013, 25.502359, 46.470047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.774429, 25.213406, 46.411903>,  <40.936680, 25.040033, 46.377018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.774429, 25.213406, 46.411903>,  <40.504013, 25.502359, 46.470047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774429, 25.213406, 46.411903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039766, -0.161209, 0.986119,
		-0.735790, -0.672437, -0.080258,
		0.676041, -0.722385, -0.145356,
		40.977242, 24.996691, 46.368298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389832, 25.212616, 47.098091>,  <40.504013, 25.502359, 46.470047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389832, 25.212616, 47.098091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.334927, 25.435129, 47.425922>,  <40.301983, 25.568636, 47.622620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.334927, 25.435129, 47.425922>,  <40.389832, 25.212616, 47.098091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334927, 25.435129, 47.425922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263065, 0.777225, -0.571592,
		-0.954964, -0.294060, 0.039655,
		-0.137262, 0.556282, 0.819579,
		40.293747, 25.602015, 47.671795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632607, 25.380875, 47.194786>,  <40.389832, 25.212616, 47.098091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632607, 25.380875, 47.194786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.846970, 25.666590, 47.374825>,  <39.975590, 25.838018, 47.482849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.846970, 25.666590, 47.374825>,  <39.632607, 25.380875, 47.194786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846970, 25.666590, 47.374825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413871, 0.686931, -0.597357,
		-0.735874, 0.133847, 0.663758,
		0.535911, 0.714290, 0.450099,
		40.007744, 25.880877, 47.509853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169117, 25.945076, 47.318123>,  <39.632607, 25.380875, 47.194786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169117, 25.945076, 47.318123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.529919, 26.117207, 47.332073>,  <39.746399, 26.220486, 47.340443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.529919, 26.117207, 47.332073>,  <39.169117, 25.945076, 47.318123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529919, 26.117207, 47.332073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308329, 0.698610, -0.645660,
		-0.302208, 0.571632, 0.762828,
		0.902000, 0.430326, 0.034875,
		39.800518, 26.246304, 47.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029228, 26.676949, 47.548893>,  <39.169117, 25.945076, 47.318123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029228, 26.676949, 47.548893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369640, 26.667059, 47.339077>,  <39.573887, 26.661125, 47.213188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.369640, 26.667059, 47.339077>,  <39.029228, 26.676949, 47.548893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369640, 26.667059, 47.339077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269674, 0.836532, -0.476960,
		0.450585, 0.547360, 0.705245,
		0.851028, -0.024724, -0.524537,
		39.624950, 26.659641, 47.181717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114079, 27.387709, 47.463005>,  <39.029228, 26.676949, 47.548893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114079, 27.387709, 47.463005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348366, 27.224585, 47.182823>,  <39.488937, 27.126711, 47.014713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348366, 27.224585, 47.182823>,  <39.114079, 27.387709, 47.463005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348366, 27.224585, 47.182823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003399, 0.865430, -0.501019,
		0.810510, 0.291073, 0.508281,
		0.585714, -0.407808, -0.700451,
		39.524078, 27.102242, 46.972687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569786, 27.879868, 47.288952>,  <39.114079, 27.387709, 47.463005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569786, 27.879868, 47.288952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.606129, 27.640795, 46.970325>,  <39.627934, 27.497351, 46.779148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.606129, 27.640795, 46.970325>,  <39.569786, 27.879868, 47.288952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606129, 27.640795, 46.970325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174521, 0.797055, -0.578140,
		0.980453, -0.086489, 0.176726,
		0.090858, -0.597682, -0.796569,
		39.633385, 27.461491, 46.731354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013813, 28.205915, 46.800587>,  <39.569786, 27.879868, 47.288952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013813, 28.205915, 46.800587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.843277, 27.923870, 46.573944>,  <39.740955, 27.754642, 46.437958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.843277, 27.923870, 46.573944>,  <40.013813, 28.205915, 46.800587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843277, 27.923870, 46.573944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230477, 0.690394, -0.685738,
		0.874707, -0.161770, -0.456858,
		-0.426344, -0.705114, -0.566608,
		39.715374, 27.712336, 46.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418873, 28.834543, 46.911152>,  <40.013813, 28.205915, 46.800587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418873, 28.834543, 46.911152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.218098, 29.107706, 47.123451>,  <40.097633, 29.271605, 47.250832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.218098, 29.107706, 47.123451>,  <40.418873, 28.834543, 46.911152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218098, 29.107706, 47.123451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597545, -0.169840, 0.783642,
		0.625297, 0.710487, -0.322818,
		-0.501940, 0.682907, 0.530748,
		40.067516, 29.312578, 47.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895840, 29.202614, 47.230896>,  <40.418873, 28.834543, 46.911152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895840, 29.202614, 47.230896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573689, 29.283175, 47.453892>,  <40.380398, 29.331511, 47.587688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573689, 29.283175, 47.453892>,  <40.895840, 29.202614, 47.230896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573689, 29.283175, 47.453892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546499, -0.111945, 0.829944,
		0.229560, 0.973091, -0.019907,
		-0.805382, 0.201401, 0.557492,
		40.332073, 29.343596, 47.621140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154221, 29.670815, 47.769318>,  <40.895840, 29.202614, 47.230896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154221, 29.670815, 47.769318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.804806, 29.514875, 47.885906>,  <40.595158, 29.421312, 47.955860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.804806, 29.514875, 47.885906>,  <41.154221, 29.670815, 47.769318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804806, 29.514875, 47.885906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345678, -0.075252, 0.935331,
		-0.342705, 0.917799, 0.200497,
		-0.873533, -0.389850, 0.291473,
		40.542747, 29.397921, 47.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081917, 29.904482, 48.439209>,  <41.154221, 29.670815, 47.769318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081917, 29.904482, 48.439209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.829891, 29.594435, 48.420414>,  <40.678677, 29.408405, 48.409138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.829891, 29.594435, 48.420414>,  <41.081917, 29.904482, 48.439209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829891, 29.594435, 48.420414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268440, -0.274185, 0.923451,
		-0.728669, 0.569220, 0.380827,
		-0.630064, -0.775120, -0.046988,
		40.640873, 29.361898, 48.406319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832031, 29.828802, 49.135246>,  <41.081917, 29.904482, 48.439209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832031, 29.828802, 49.135246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.745117, 29.480425, 48.958950>,  <40.692970, 29.271399, 48.853172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.745117, 29.480425, 48.958950>,  <40.832031, 29.828802, 49.135246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745117, 29.480425, 48.958950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380127, -0.491379, 0.783613,
		-0.899051, 0.002727, 0.437836,
		-0.217280, -0.870941, -0.440738,
		40.679932, 29.219143, 48.826729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589096, 29.488884, 49.666382>,  <40.832031, 29.828802, 49.135246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589096, 29.488884, 49.666382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.696720, 29.238131, 49.373909>,  <40.761295, 29.087679, 49.198425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.696720, 29.238131, 49.373909>,  <40.589096, 29.488884, 49.666382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696720, 29.238131, 49.373909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501980, -0.556633, 0.661949,
		-0.821965, -0.545139, 0.164917,
		0.269056, -0.626884, -0.731181,
		40.777435, 29.050066, 49.154556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477859, 28.911386, 49.955509>,  <40.589096, 29.488884, 49.666382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477859, 28.911386, 49.955509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.728569, 28.843002, 49.651424>,  <40.878994, 28.801971, 49.468971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.728569, 28.843002, 49.651424>,  <40.477859, 28.911386, 49.955509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728569, 28.843002, 49.651424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477737, -0.686433, 0.548248,
		-0.615564, -0.706811, -0.348567,
		0.626776, -0.170959, -0.760214,
		40.916603, 28.791716, 49.423359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511242, 28.089083, 49.917278>,  <40.477859, 28.911386, 49.955509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511242, 28.089083, 49.917278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.839424, 28.260885, 49.766346>,  <41.036335, 28.363968, 49.675789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.839424, 28.260885, 49.766346>,  <40.511242, 28.089083, 49.917278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839424, 28.260885, 49.766346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571496, -0.598072, 0.561874,
		0.015660, -0.676634, -0.736153,
		0.820455, 0.429508, -0.377328,
		41.085560, 28.389738, 49.653149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926701, 27.453215, 49.689835>,  <40.511242, 28.089083, 49.917278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926701, 27.453215, 49.689835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.171982, 27.764910, 49.741627>,  <41.319153, 27.951927, 49.772701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.171982, 27.764910, 49.741627>,  <40.926701, 27.453215, 49.689835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171982, 27.764910, 49.741627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718276, -0.618259, 0.319117,
		0.328723, -0.102679, -0.938828,
		0.613205, 0.779239, 0.129484,
		41.355942, 27.998682, 49.780472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.769352, 34.911469, 37.405304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145321, 35.035007, 37.347115>,  <34.370903, 35.109131, 37.312202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145321, 35.035007, 37.347115>,  <33.769352, 34.911469, 37.405304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145321, 35.035007, 37.347115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318062, -0.637389, 0.701835,
		0.124039, -0.705938, -0.697328,
		0.939921, 0.308849, -0.145470,
		34.427296, 35.127663, 37.303474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206165, 34.400532, 37.026375>,  <33.769352, 34.911469, 37.405304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206165, 34.400532, 37.026375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419518, 34.648548, 37.256523>,  <34.547527, 34.797359, 37.394611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419518, 34.648548, 37.256523>,  <34.206165, 34.400532, 37.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419518, 34.648548, 37.256523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123375, -0.729960, 0.672263,
		0.836831, -0.287584, -0.465842,
		0.533378, 0.620044, 0.575372,
		34.579533, 34.834560, 37.429134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699608, 33.971668, 37.385818>,  <34.206165, 34.400532, 37.026375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699608, 33.971668, 37.385818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738785, 34.301044, 37.609371>,  <34.762291, 34.498672, 37.743504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738785, 34.301044, 37.609371>,  <34.699608, 33.971668, 37.385818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738785, 34.301044, 37.609371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069438, -0.565868, 0.821566,
		0.992766, -0.041660, -0.112601,
		0.097944, 0.823442, 0.558882,
		34.768169, 34.548077, 37.777035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317158, 33.998631, 37.762775>,  <34.699608, 33.971668, 37.385818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317158, 33.998631, 37.762775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098637, 34.241314, 37.993759>,  <34.967525, 34.386925, 38.132351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098637, 34.241314, 37.993759>,  <35.317158, 33.998631, 37.762775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098637, 34.241314, 37.993759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227156, -0.556277, 0.799348,
		0.806199, 0.567857, 0.166077,
		-0.546300, 0.606708, 0.577462,
		34.934746, 34.423325, 38.166996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683140, 34.100632, 38.433762>,  <35.317158, 33.998631, 37.762775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683140, 34.100632, 38.433762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315296, 34.235077, 38.515099>,  <35.094589, 34.315746, 38.563900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315296, 34.235077, 38.515099>,  <35.683140, 34.100632, 38.433762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315296, 34.235077, 38.515099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027150, -0.462009, 0.886460,
		0.391899, 0.820716, 0.415741,
		-0.919608, 0.336115, 0.203343,
		35.039413, 34.335911, 38.576103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691242, 34.606670, 38.999840>,  <35.683140, 34.100632, 38.433762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691242, 34.606670, 38.999840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318958, 34.460388, 38.997265>,  <35.095589, 34.372620, 38.995720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318958, 34.460388, 38.997265>,  <35.691242, 34.606670, 38.999840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318958, 34.460388, 38.997265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126569, -0.338534, 0.932403,
		-0.343161, 0.866982, 0.361363,
		-0.930710, -0.365702, -0.006439,
		35.039745, 34.350677, 38.995335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313835, 34.852024, 39.576725>,  <35.691242, 34.606670, 38.999840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313835, 34.852024, 39.576725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147621, 34.505917, 39.464558>,  <35.047894, 34.298252, 39.397259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147621, 34.505917, 39.464558>,  <35.313835, 34.852024, 39.576725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147621, 34.505917, 39.464558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201653, -0.388259, 0.899217,
		-0.886942, 0.317109, 0.335820,
		-0.415535, -0.865273, -0.280418,
		35.022961, 34.246334, 39.380432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978142, 34.692673, 40.175243>,  <35.313835, 34.852024, 39.576725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978142, 34.692673, 40.175243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928509, 34.353123, 39.969711>,  <34.898727, 34.149395, 39.846394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928509, 34.353123, 39.969711>,  <34.978142, 34.692673, 40.175243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928509, 34.353123, 39.969711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126044, -0.527118, 0.840393,
		-0.984234, 0.039516, 0.172403,
		-0.124086, -0.848873, -0.513826,
		34.891281, 34.098461, 39.815563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367443, 34.320778, 40.437717>,  <34.978142, 34.692673, 40.175243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367443, 34.320778, 40.437717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627708, 34.062611, 40.277679>,  <34.783867, 33.907711, 40.181656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627708, 34.062611, 40.277679>,  <34.367443, 34.320778, 40.437717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627708, 34.062611, 40.277679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085836, -0.460991, 0.883244,
		-0.754499, -0.609037, -0.244550,
		0.650664, -0.645416, -0.400095,
		34.822906, 33.868984, 40.157650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170696, 33.690231, 40.651321>,  <34.367443, 34.320778, 40.437717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170696, 33.690231, 40.651321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553101, 33.640835, 40.544899>,  <34.782543, 33.611198, 40.481045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553101, 33.640835, 40.544899>,  <34.170696, 33.690231, 40.651321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553101, 33.640835, 40.544899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213610, -0.328505, 0.920030,
		-0.201016, -0.936395, -0.287676,
		0.956015, -0.123491, -0.266058,
		34.839905, 33.603786, 40.465080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286144, 33.208984, 41.049255>,  <34.170696, 33.690231, 40.651321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286144, 33.208984, 41.049255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659111, 33.297253, 40.934780>,  <34.882893, 33.350212, 40.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659111, 33.297253, 40.934780>,  <34.286144, 33.208984, 41.049255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659111, 33.297253, 40.934780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357850, -0.453245, 0.816402,
		0.050442, -0.863639, -0.501580,
		0.932416, 0.220671, -0.286191,
		34.938835, 33.363453, 40.848923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704437, 32.504356, 40.932041>,  <34.286144, 33.208984, 41.049255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704437, 32.504356, 40.932041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958923, 32.806530, 40.994705>,  <35.111614, 32.987835, 41.032303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958923, 32.806530, 40.994705>,  <34.704437, 32.504356, 40.932041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958923, 32.806530, 40.994705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392942, -0.492031, 0.776854,
		0.663947, -0.432689, -0.609882,
		0.636217, 0.755438, 0.156661,
		35.149788, 33.033161, 41.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499607, 31.968834, 40.458870>,  <34.704437, 32.504356, 40.932041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499607, 31.968834, 40.458870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256401, 31.760839, 40.698845>,  <34.110477, 31.636044, 40.842831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256401, 31.760839, 40.698845>,  <34.499607, 31.968834, 40.458870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256401, 31.760839, 40.698845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783657, 0.271947, -0.558504,
		0.127260, -0.809730, -0.572837,
		-0.608019, -0.519982, 0.599943,
		34.073994, 31.604843, 40.878826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069363, 31.512594, 40.004940>,  <34.499607, 31.968834, 40.458870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069363, 31.512594, 40.004940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861130, 31.570404, 40.341537>,  <33.736191, 31.605089, 40.543495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861130, 31.570404, 40.341537>,  <34.069363, 31.512594, 40.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861130, 31.570404, 40.341537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810756, 0.225339, -0.540274,
		-0.267703, -0.963501, -0.000134,
		-0.520585, 0.144524, 0.841489,
		33.704956, 31.613762, 40.593983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542191, 31.157898, 39.968330>,  <34.069363, 31.512594, 40.004940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542191, 31.157898, 39.968330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398529, 31.369154, 40.276115>,  <33.312332, 31.495907, 40.460789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398529, 31.369154, 40.276115>,  <33.542191, 31.157898, 39.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398529, 31.369154, 40.276115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894634, 0.039967, -0.445009,
		-0.265780, -0.848217, 0.458136,
		-0.359154, 0.528138, 0.769466,
		33.290783, 31.527596, 40.506954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879665, 30.817421, 40.028992>,  <33.542191, 31.157898, 39.968330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879665, 30.817421, 40.028992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873264, 31.177731, 40.202587>,  <32.869423, 31.393917, 40.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873264, 31.177731, 40.202587>,  <32.879665, 30.817421, 40.028992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873264, 31.177731, 40.202587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900078, 0.176046, -0.398582,
		-0.435435, -0.397004, 0.807951,
		-0.016002, 0.900775, 0.433991,
		32.868465, 31.447964, 40.332783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221275, 30.981945, 40.386974>,  <32.879665, 30.817421, 40.028992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221275, 30.981945, 40.386974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364388, 31.347876, 40.312054>,  <32.450256, 31.567434, 40.267101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364388, 31.347876, 40.312054>,  <32.221275, 30.981945, 40.386974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364388, 31.347876, 40.312054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929125, 0.328694, -0.169370,
		-0.093379, 0.234626, 0.967590,
		0.357780, 0.914828, -0.187304,
		32.471722, 31.622324, 40.255863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769178, 31.527138, 40.627350>,  <32.221275, 30.981945, 40.386974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769178, 31.527138, 40.627350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954514, 31.723900, 40.332500>,  <32.065716, 31.841957, 40.155590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954514, 31.723900, 40.332500>,  <31.769178, 31.527138, 40.627350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954514, 31.723900, 40.332500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875840, 0.380894, -0.296349,
		0.134990, 0.782911, 0.607312,
		0.463337, 0.491904, -0.737122,
		32.093513, 31.871471, 40.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481218, 32.114223, 40.512527>,  <31.769178, 31.527138, 40.627350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481218, 32.114223, 40.512527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682674, 32.114254, 40.166962>,  <31.803549, 32.114273, 39.959621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682674, 32.114254, 40.166962>,  <31.481218, 32.114223, 40.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682674, 32.114254, 40.166962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792280, 0.398740, -0.461842,
		0.344439, 0.917064, 0.200885,
		0.503640, 0.000081, -0.863914,
		31.833767, 32.114277, 39.907787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236773, 32.672989, 40.137589>,  <31.481218, 32.114223, 40.512527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236773, 32.672989, 40.137589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444212, 32.484894, 39.851952>,  <31.568676, 32.372036, 39.680569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444212, 32.484894, 39.851952>,  <31.236773, 32.672989, 40.137589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444212, 32.484894, 39.851952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578603, 0.421888, -0.698018,
		0.629501, 0.775170, -0.053289,
		0.518601, -0.470236, -0.714095,
		31.599792, 32.343822, 39.637722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503906, 33.188618, 39.656715>,  <31.236773, 32.672989, 40.137589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503906, 33.188618, 39.656715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484632, 32.844173, 39.454262>,  <31.473068, 32.637508, 39.332790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484632, 32.844173, 39.454262>,  <31.503906, 33.188618, 39.656715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484632, 32.844173, 39.454262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594228, 0.432007, -0.678427,
		0.802852, 0.268065, -0.532513,
		-0.048187, -0.861111, -0.506129,
		31.470177, 32.585842, 39.302422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704401, 33.286903, 38.953075>,  <31.503906, 33.188618, 39.656715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704401, 33.286903, 38.953075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442764, 32.986427, 38.988571>,  <31.285782, 32.806141, 39.009869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442764, 32.986427, 38.988571>,  <31.704401, 33.286903, 38.953075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442764, 32.986427, 38.988571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680695, 0.533382, -0.502154,
		0.329881, -0.388861, -0.860213,
		-0.654090, -0.751193, 0.088743,
		31.246538, 32.761070, 39.015194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367418, 33.333122, 38.382969>,  <31.704401, 33.286903, 38.953075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367418, 33.333122, 38.382969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132442, 33.086945, 38.593163>,  <30.991457, 32.939236, 38.719280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132442, 33.086945, 38.593163>,  <31.367418, 33.333122, 38.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132442, 33.086945, 38.593163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773786, 0.236998, -0.587441,
		0.236998, -0.751703, -0.615447,
		0.587441, 0.615447, -0.525489,
		30.956211, 32.902309, 38.750809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851780, 32.938725, 37.853397>,  <31.367418, 33.333122, 38.382969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851780, 32.938725, 37.853397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666161, 32.909222, 38.206490>,  <30.554789, 32.891518, 38.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666161, 32.909222, 38.206490>,  <30.851780, 32.938725, 37.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666161, 32.909222, 38.206490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871788, 0.214643, -0.440357,
		-0.156992, -0.973903, -0.163907,
		-0.464046, -0.073760, 0.882735,
		30.526947, 32.887093, 38.471310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500097, 32.991318, 37.450245>,  <30.851780, 32.938725, 37.853397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500097, 32.991318, 37.450245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584175, 33.326878, 37.249424>,  <31.634623, 33.528214, 37.128929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584175, 33.326878, 37.249424>,  <31.500097, 32.991318, 37.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584175, 33.326878, 37.249424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137318, 0.483105, 0.864727,
		0.967968, -0.250702, -0.013650,
		0.210194, 0.838903, -0.502056,
		31.647234, 33.578548, 37.098808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243744, 33.268120, 37.528595>,  <31.500097, 32.991318, 37.450245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243744, 33.268120, 37.528595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933554, 33.519733, 37.506847>,  <31.747440, 33.670704, 37.493801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933554, 33.519733, 37.506847>,  <32.243744, 33.268120, 37.528595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933554, 33.519733, 37.506847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210440, 0.338686, 0.917064,
		0.595281, 0.699716, -0.395016,
		-0.775471, 0.629039, -0.054365,
		31.700912, 33.708447, 37.490540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511532, 33.883511, 37.489449>,  <32.243744, 33.268120, 37.528595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511532, 33.883511, 37.489449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149956, 33.906822, 37.658913>,  <31.933010, 33.920811, 37.760590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149956, 33.906822, 37.658913>,  <32.511532, 33.883511, 37.489449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149956, 33.906822, 37.658913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422113, 0.280510, 0.862053,
		-0.068602, 0.958080, -0.278165,
		-0.903944, 0.058279, 0.423662,
		31.878773, 33.924305, 37.786011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705555, 33.230721, 36.992569>,  <32.511532, 33.883511, 37.489449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705555, 33.230721, 36.992569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 33.141178, 36.654175>,  <33.015270, 33.087452, 36.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 33.141178, 36.654175>,  <32.705555, 33.230721, 36.992569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899128, 33.141178, 36.654175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325128, -0.851537, 0.411310,
		-0.812467, -0.474101, -0.339303,
		0.483931, -0.223859, -0.845989,
		33.044308, 33.074020, 36.400379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612400, 32.543301, 36.994648>,  <32.705555, 33.230721, 36.992569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612400, 32.543301, 36.994648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942215, 32.659519, 36.800442>,  <33.140102, 32.729248, 36.683918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942215, 32.659519, 36.800442>,  <32.612400, 32.543301, 36.994648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942215, 32.659519, 36.800442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533138, -0.686316, 0.494706,
		-0.189481, -0.666749, -0.720793,
		0.824537, 0.290545, -0.485513,
		33.189575, 32.746681, 36.654789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893547, 31.958353, 36.721844>,  <32.612400, 32.543301, 36.994648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893547, 31.958353, 36.721844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203609, 32.208103, 36.760403>,  <33.389648, 32.357952, 36.783539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203609, 32.208103, 36.760403>,  <32.893547, 31.958353, 36.721844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203609, 32.208103, 36.760403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530061, -0.725768, 0.438515,
		0.343760, -0.288821, -0.893539,
		0.775155, 0.624374, 0.096398,
		33.436157, 32.395416, 36.789322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560589, 31.660545, 36.342106>,  <32.893547, 31.958353, 36.721844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560589, 31.660545, 36.342106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660526, 31.904778, 36.642712>,  <33.720490, 32.051315, 36.823074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660526, 31.904778, 36.642712>,  <33.560589, 31.660545, 36.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660526, 31.904778, 36.642712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524616, -0.737700, 0.424944,
		0.813851, 0.288084, -0.504633,
		0.249848, 0.610579, 0.751511,
		33.735481, 32.087952, 36.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227673, 31.551695, 36.340645>,  <33.560589, 31.660545, 36.342106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227673, 31.551695, 36.340645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174721, 31.731916, 36.693798>,  <34.142948, 31.840050, 36.905689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174721, 31.731916, 36.693798>,  <34.227673, 31.551695, 36.340645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174721, 31.731916, 36.693798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644779, -0.637359, 0.421940,
		0.752818, 0.625118, -0.206135,
		-0.132380, 0.450556, 0.882879,
		34.135006, 31.867083, 36.958660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897060, 31.645470, 36.604527>,  <34.227673, 31.551695, 36.340645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897060, 31.645470, 36.604527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637703, 31.640064, 36.909000>,  <34.482086, 31.636822, 37.091686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637703, 31.640064, 36.909000>,  <34.897060, 31.645470, 36.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637703, 31.640064, 36.909000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607939, -0.611023, 0.507011,
		0.458251, 0.791497, 0.404399,
		-0.648395, -0.013512, 0.761184,
		34.443184, 31.636011, 37.137356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333534, 31.636391, 37.280533>,  <34.897060, 31.645470, 36.604527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333534, 31.636391, 37.280533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970711, 31.498850, 37.377697>,  <34.753017, 31.416325, 37.435997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970711, 31.498850, 37.377697>,  <35.333534, 31.636391, 37.280533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970711, 31.498850, 37.377697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417981, -0.666553, 0.617251,
		-0.050328, 0.661417, 0.748328,
		-0.907061, -0.343852, 0.242913,
		34.698593, 31.395695, 37.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447353, 31.536343, 38.038391>,  <35.333534, 31.636391, 37.280533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447353, 31.536343, 38.038391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133633, 31.324902, 37.908497>,  <34.945400, 31.198038, 37.830559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133633, 31.324902, 37.908497>,  <35.447353, 31.536343, 38.038391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133633, 31.324902, 37.908497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305131, -0.784441, 0.539951,
		-0.540158, 0.324395, 0.776529,
		-0.784299, -0.528602, -0.324739,
		34.898342, 31.166321, 37.811073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176716, 31.234238, 38.642193>,  <35.447353, 31.536343, 38.038391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176716, 31.234238, 38.642193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018101, 31.024052, 38.341091>,  <34.922932, 30.897940, 38.160431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018101, 31.024052, 38.341091>,  <35.176716, 31.234238, 38.642193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018101, 31.024052, 38.341091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224374, -0.850588, 0.475559,
		-0.890177, 0.019677, 0.455190,
		-0.396537, -0.525464, -0.752758,
		34.899139, 30.866413, 38.115265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873768, 30.689718, 38.968269>,  <35.176716, 31.234238, 38.642193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873768, 30.689718, 38.968269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883167, 30.540281, 38.597351>,  <34.888805, 30.450619, 38.374802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883167, 30.540281, 38.597351>,  <34.873768, 30.689718, 38.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883167, 30.540281, 38.597351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038656, -0.926519, 0.374258,
		-0.998976, -0.044639, -0.007329,
		0.023497, -0.373592, -0.927296,
		34.890217, 30.428204, 38.319164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358524, 30.135273, 38.973892>,  <34.873768, 30.689718, 38.968269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358524, 30.135273, 38.973892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640133, 30.104340, 38.691509>,  <34.809097, 30.085779, 38.522079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640133, 30.104340, 38.691509>,  <34.358524, 30.135273, 38.973892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640133, 30.104340, 38.691509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338310, -0.837493, 0.429130,
		-0.624418, -0.540948, -0.563452,
		0.704023, -0.077335, -0.705954,
		34.851341, 30.081139, 38.479725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357494, 29.397594, 38.826828>,  <34.358524, 30.135273, 38.973892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357494, 29.397594, 38.826828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703915, 29.553326, 38.701363>,  <34.911766, 29.646765, 38.626083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703915, 29.553326, 38.701363>,  <34.357494, 29.397594, 38.826828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703915, 29.553326, 38.701363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499465, -0.645755, 0.577526,
		0.022294, -0.656830, -0.753709,
		0.866047, 0.389326, -0.313667,
		34.963730, 29.670124, 38.607262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846241, 28.805002, 38.769817>,  <34.357494, 29.397594, 38.826828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846241, 28.805002, 38.769817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082027, 29.126734, 38.739922>,  <35.223499, 29.319773, 38.721985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082027, 29.126734, 38.739922>,  <34.846241, 28.805002, 38.769817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082027, 29.126734, 38.739922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772564, -0.534316, 0.343005,
		0.235952, -0.259933, -0.936355,
		0.589467, 0.804327, -0.074741,
		35.258869, 29.368032, 38.717499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402676, 28.502434, 38.450066>,  <34.846241, 28.805002, 38.769817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402676, 28.502434, 38.450066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515724, 28.842205, 38.628323>,  <35.583553, 29.046068, 38.735275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515724, 28.842205, 38.628323>,  <35.402676, 28.502434, 38.450066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515724, 28.842205, 38.628323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826095, -0.451659, 0.337003,
		0.487537, 0.272895, -0.829359,
		0.282621, 0.849431, 0.445638,
		35.600510, 29.097034, 38.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088936, 28.571110, 38.225883>,  <35.402676, 28.502434, 38.450066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088936, 28.571110, 38.225883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065704, 28.775528, 38.568920>,  <36.051765, 28.898178, 38.774742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065704, 28.775528, 38.568920>,  <36.088936, 28.571110, 38.225883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065704, 28.775528, 38.568920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867741, -0.398908, 0.296475,
		0.493612, 0.761384, -0.420288,
		-0.058075, 0.511044, 0.857590,
		36.048283, 28.928841, 38.826199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790066, 28.675123, 38.384171>,  <36.088936, 28.571110, 38.225883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790066, 28.675123, 38.384171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584496, 28.762373, 38.716026>,  <36.461155, 28.814722, 38.915138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584496, 28.762373, 38.716026>,  <36.790066, 28.675123, 38.384171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584496, 28.762373, 38.716026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822766, -0.148362, 0.548675,
		0.242766, 0.964578, -0.103218,
		-0.513926, 0.218124, 0.829640,
		36.430317, 28.827810, 38.964920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279449, 29.154573, 38.825386>,  <36.790066, 28.675123, 38.384171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279449, 29.154573, 38.825386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010033, 28.982225, 39.065617>,  <36.848381, 28.878817, 39.209755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010033, 28.982225, 39.065617>,  <37.279449, 29.154573, 38.825386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010033, 28.982225, 39.065617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733839, -0.292598, 0.613080,
		-0.088430, 0.853661, 0.513266,
		-0.673543, -0.430869, 0.600575,
		36.807968, 28.852964, 39.245789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401600, 29.415773, 39.523613>,  <37.279449, 29.154573, 38.825386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401600, 29.415773, 39.523613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207462, 29.067066, 39.550316>,  <37.090981, 28.857841, 39.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207462, 29.067066, 39.550316>,  <37.401600, 29.415773, 39.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207462, 29.067066, 39.550316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754495, -0.379027, 0.535795,
		-0.441786, 0.310415, 0.841705,
		-0.485347, -0.871769, 0.066758,
		37.061859, 28.805536, 39.570343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330788, 29.314693, 40.257610>,  <37.401600, 29.415773, 39.523613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330788, 29.314693, 40.257610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293388, 28.965122, 40.066818>,  <37.270947, 28.755379, 39.952343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293388, 28.965122, 40.066818>,  <37.330788, 29.314693, 40.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293388, 28.965122, 40.066818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706497, -0.395795, 0.586692,
		-0.701512, -0.282125, 0.654436,
		-0.093502, -0.873929, -0.476976,
		37.265339, 28.702944, 39.923725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298641, 28.843742, 40.756416>,  <37.330788, 29.314693, 40.257610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298641, 28.843742, 40.756416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392227, 28.611712, 40.444321>,  <37.448380, 28.472492, 40.257065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392227, 28.611712, 40.444321>,  <37.298641, 28.843742, 40.756416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392227, 28.611712, 40.444321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719314, -0.436629, 0.540317,
		-0.654099, -0.687652, 0.315101,
		0.233968, -0.580077, -0.780237,
		37.462418, 28.437689, 40.210251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223988, 28.131281, 40.960491>,  <37.298641, 28.843742, 40.756416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223988, 28.131281, 40.960491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443527, 28.129347, 40.626125>,  <37.575249, 28.128185, 40.425507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443527, 28.129347, 40.626125>,  <37.223988, 28.131281, 40.960491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443527, 28.129347, 40.626125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723238, -0.498678, 0.477752,
		-0.419161, -0.866774, -0.270199,
		0.548845, -0.004837, -0.835910,
		37.608181, 28.127895, 40.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309013, 27.350752, 40.598259>,  <37.223988, 28.131281, 40.960491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309013, 27.350752, 40.598259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625092, 27.575867, 40.501213>,  <37.814739, 27.710936, 40.442986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625092, 27.575867, 40.501213>,  <37.309013, 27.350752, 40.598259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625092, 27.575867, 40.501213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587769, -0.583836, 0.560056,
		0.173543, -0.585157, -0.792132,
		0.790196, 0.562785, -0.242616,
		37.862152, 27.744701, 40.428429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687969, 26.857800, 40.679321>,  <37.309013, 27.350752, 40.598259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687969, 26.857800, 40.679321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923592, 27.181036, 40.678459>,  <38.064964, 27.374977, 40.677944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923592, 27.181036, 40.678459>,  <37.687969, 26.857800, 40.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923592, 27.181036, 40.678459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533279, -0.386728, 0.752366,
		0.607149, -0.444330, -0.658742,
		0.589053, 0.808091, -0.002151,
		38.100307, 27.423464, 40.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395493, 26.562944, 40.504627>,  <37.687969, 26.857800, 40.679321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395493, 26.562944, 40.504627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448708, 26.926731, 40.662193>,  <38.480637, 27.145002, 40.756733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448708, 26.926731, 40.662193>,  <38.395493, 26.562944, 40.504627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448708, 26.926731, 40.662193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720966, -0.361524, 0.591192,
		0.680081, 0.205354, -0.703790,
		0.133033, 0.909467, 0.393919,
		38.488617, 27.199572, 40.780369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144108, 26.604198, 40.500160>,  <38.395493, 26.562944, 40.504627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144108, 26.604198, 40.500160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999653, 26.876053, 40.755558>,  <38.912979, 27.039165, 40.908798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999653, 26.876053, 40.755558>,  <39.144108, 26.604198, 40.500160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999653, 26.876053, 40.755558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640782, -0.316578, 0.699412,
		0.677478, 0.661720, -0.321169,
		-0.361140, 0.679636, 0.638493,
		38.891312, 27.079943, 40.947105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736523, 27.084648, 40.728020>,  <39.144108, 26.604198, 40.500160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736523, 27.084648, 40.728020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450432, 27.084515, 41.007576>,  <39.278778, 27.084435, 41.175312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450432, 27.084515, 41.007576>,  <39.736523, 27.084648, 40.728020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450432, 27.084515, 41.007576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695055, -0.105007, 0.711247,
		0.073151, 0.994471, 0.075336,
		-0.715226, -0.000334, 0.698894,
		39.235863, 27.084414, 41.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024731, 27.338478, 41.270096>,  <39.736523, 27.084648, 40.728020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024731, 27.338478, 41.270096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706947, 27.149319, 41.422516>,  <39.516277, 27.035822, 41.513969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706947, 27.149319, 41.422516>,  <40.024731, 27.338478, 41.270096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706947, 27.149319, 41.422516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525009, -0.219375, 0.822339,
		-0.305291, 0.853370, 0.422561,
		-0.794458, -0.472901, 0.381053,
		39.468609, 27.007448, 41.536831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403622, 27.932749, 41.162174>,  <40.024731, 27.338478, 41.270096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403622, 27.932749, 41.162174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796391, 28.004530, 41.138058>,  <41.032051, 28.047598, 41.123589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796391, 28.004530, 41.138058>,  <40.403622, 27.932749, 41.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796391, 28.004530, 41.138058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095375, 0.193811, -0.976392,
		-0.163529, 0.964487, 0.207421,
		0.981918, 0.179451, -0.060294,
		41.090965, 28.058365, 41.119968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385586, 28.496836, 40.662663>,  <40.403622, 27.932749, 41.162174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385586, 28.496836, 40.662663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764278, 28.369514, 40.682220>,  <40.991493, 28.293121, 40.693954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764278, 28.369514, 40.682220>,  <40.385586, 28.496836, 40.662663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764278, 28.369514, 40.682220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079644, 0.084303, -0.993252,
		0.312032, 0.944234, 0.105163,
		0.946728, -0.318302, 0.048897,
		41.048298, 28.274023, 40.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703075, 28.986885, 40.456745>,  <40.385586, 28.496836, 40.662663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703075, 28.986885, 40.456745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928066, 28.661146, 40.399536>,  <41.063061, 28.465702, 40.365211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928066, 28.661146, 40.399536>,  <40.703075, 28.986885, 40.456745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928066, 28.661146, 40.399536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031577, 0.194012, -0.980491,
		0.826208, 0.546989, 0.134842,
		0.562479, -0.814348, -0.143021,
		41.096809, 28.416842, 40.356628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302605, 29.153374, 40.081741>,  <40.703075, 28.986885, 40.456745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302605, 29.153374, 40.081741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249733, 28.764570, 40.004051>,  <41.218010, 28.531288, 39.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249733, 28.764570, 40.004051>,  <41.302605, 29.153374, 40.081741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249733, 28.764570, 40.004051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104791, 0.208552, -0.972381,
		0.985671, -0.108177, -0.129424,
		-0.132181, -0.972010, -0.194227,
		41.210079, 28.472967, 39.945782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625053, 29.050713, 39.436214>,  <41.302605, 29.153374, 40.081741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625053, 29.050713, 39.436214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377052, 28.744701, 39.505871>,  <41.228252, 28.561094, 39.547665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377052, 28.744701, 39.505871>,  <41.625053, 29.050713, 39.436214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377052, 28.744701, 39.505871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419980, 0.136120, -0.897267,
		0.662728, -0.629449, -0.405691,
		-0.620007, -0.765026, 0.174145,
		41.191051, 28.515194, 39.558113>
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
