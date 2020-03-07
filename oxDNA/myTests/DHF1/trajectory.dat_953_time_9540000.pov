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
	<5.008691, -0.673452, 2.239501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.645645, -0.510635, 2.198408>,  <4.427818, -0.412945, 2.173752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.645645, -0.510635, 2.198408>,  <5.008691, -0.673452, 2.239501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.645645, -0.510635, 2.198408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302317, 0.463940, -0.832685,
		-0.291276, -0.786814, -0.544134,
		-0.907614, 0.407042, -0.102733,
		4.373361, -0.388523, 2.167588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.177774, -0.368478, 1.669372>,  <5.008691, -0.673452, 2.239501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.177774, -0.368478, 1.669372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.782761, -0.313498, 1.700060>,  <4.545753, -0.280510, 1.718473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.782761, -0.313498, 1.700060>,  <5.177774, -0.368478, 1.669372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.782761, -0.313498, 1.700060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033922, 0.290110, -0.956392,
		-0.153714, -0.947071, -0.281830,
		-0.987533, 0.137451, 0.076720,
		4.486501, -0.272263, 1.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.948023, -0.469521, 1.018638>,  <5.177774, -0.368478, 1.669372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.948023, -0.469521, 1.018638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665260, -0.231007, 1.170809>,  <4.495603, -0.087898, 1.262111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.665260, -0.231007, 1.170809>,  <4.948023, -0.469521, 1.018638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.665260, -0.231007, 1.170809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081374, 0.465719, -0.881183,
		-0.702610, -0.653871, -0.280698,
		-0.706907, 0.596287, 0.380427,
		4.453188, -0.052121, 1.284937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.673085, -0.060546, 0.482956>,  <4.948023, -0.469521, 1.018638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.673085, -0.060546, 0.482956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810257, 0.314224, 0.455912>,  <4.892560, 0.539086, 0.439685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810257, 0.314224, 0.455912>,  <4.673085, -0.060546, 0.482956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810257, 0.314224, 0.455912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092849, -0.105431, -0.990082,
		-0.934761, 0.333252, -0.123148,
		0.342930, 0.936924, -0.067611,
		4.913136, 0.595302, 0.435628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.210572, 0.221634, -0.018131>,  <4.673085, -0.060546, 0.482956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.210572, 0.221634, -0.018131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.548882, 0.433308, 0.009089>,  <4.751867, 0.560312, 0.025420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.548882, 0.433308, 0.009089>,  <4.210572, 0.221634, -0.018131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.548882, 0.433308, 0.009089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233165, -0.251879, -0.939250,
		-0.479896, 0.810260, -0.336419,
		0.845774, 0.529184, 0.068048,
		4.802614, 0.592063, 0.029503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.103158, 0.732221, -0.548324>,  <4.210572, 0.221634, -0.018131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.103158, 0.732221, -0.548324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491684, 0.668907, -0.477339>,  <4.724800, 0.630919, -0.434748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491684, 0.668907, -0.477339>,  <4.103158, 0.732221, -0.548324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.491684, 0.668907, -0.477339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151094, -0.165469, -0.974572,
		0.183624, 0.973430, -0.136807,
		0.971315, -0.158285, 0.177463,
		4.783079, 0.621422, -0.424100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.453597, 0.838756, -1.136144>,  <4.103158, 0.732221, -0.548324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.453597, 0.838756, -1.136144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.749680, 0.639469, -0.955534>,  <4.927329, 0.519897, -0.847168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.749680, 0.639469, -0.955534>,  <4.453597, 0.838756, -1.136144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.749680, 0.639469, -0.955534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269907, -0.394883, -0.878190,
		0.615829, 0.771911, -0.157822,
		0.740206, -0.498217, 0.451524,
		4.971741, 0.490004, -0.820077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.030312, 0.850682, -1.591474>,  <4.453597, 0.838756, -1.136144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.030312, 0.850682, -1.591474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.089249, 0.541891, -1.344139>,  <5.124611, 0.356617, -1.195738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.089249, 0.541891, -1.344139>,  <5.030312, 0.850682, -1.591474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.089249, 0.541891, -1.344139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360421, -0.540271, -0.760397,
		0.921079, 0.334901, 0.198632,
		0.147342, -0.771977, 0.618338,
		5.133451, 0.310298, -1.158638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.773738, -0.193859, 3.377437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.443275, -0.417973, 3.353613>,  <-0.244998, -0.552441, 3.339319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.443275, -0.417973, 3.353613>,  <-0.773738, -0.193859, 3.377437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.443275, -0.417973, 3.353613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356886, 0.438560, 0.824802,
		-0.436003, -0.702671, 0.562276,
		0.826156, -0.560284, -0.059560,
		-0.195429, -0.586058, 3.335745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.650893, -0.446547, 4.059402>,  <-0.773738, -0.193859, 3.377437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.650893, -0.446547, 4.059402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.306290, -0.482262, 3.859470>,  <-0.099527, -0.503691, 3.739511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.306290, -0.482262, 3.859470>,  <-0.650893, -0.446547, 4.059402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.306290, -0.482262, 3.859470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488024, 0.417290, 0.766617,
		0.140124, -0.904376, 0.403074,
		0.861509, -0.089288, -0.499829,
		-0.047837, -0.509048, 3.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.234233, -0.803701, 4.509950>,  <-0.650893, -0.446547, 4.059402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.234233, -0.803701, 4.509950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061836, -0.568905, 4.235815>,  <0.041602, -0.428027, 4.071334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061836, -0.568905, 4.235815>,  <-0.234233, -0.803701, 4.509950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.061836, -0.568905, 4.235815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256599, 0.648416, 0.716738,
		0.865103, -0.484765, 0.128841,
		0.430992, 0.586992, -0.685337,
		0.067462, -0.392807, 4.030214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.401363, -0.582286, 4.772173>,  <-0.234233, -0.803701, 4.509950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.401363, -0.582286, 4.772173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334427, -0.314159, 4.482988>,  <0.294265, -0.153284, 4.309478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334427, -0.314159, 4.482988>,  <0.401363, -0.582286, 4.772173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.334427, -0.314159, 4.482988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194664, 0.741330, 0.642289,
		0.966490, -0.033253, -0.254541,
		-0.167341, 0.670316, -0.722962,
		0.284225, -0.113065, 4.266100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.987522, -0.087831, 4.773783>,  <0.401363, -0.582286, 4.772173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.987522, -0.087831, 4.773783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669876, 0.074345, 4.592674>,  <0.479289, 0.171650, 4.484009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669876, 0.074345, 4.592674>,  <0.987522, -0.087831, 4.773783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669876, 0.074345, 4.592674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006819, 0.738983, 0.673689,
		0.607731, 0.538074, -0.584072,
		-0.794114, 0.405439, -0.452772,
		0.431642, 0.195976, 4.456842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.073879, 0.645229, 4.800631>,  <0.987522, -0.087831, 4.773783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.073879, 0.645229, 4.800631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.677078, 0.631477, 4.752050>,  <0.438998, 0.623226, 4.722902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.677078, 0.631477, 4.752050>,  <1.073879, 0.645229, 4.800631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.677078, 0.631477, 4.752050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114767, 0.646219, 0.754473,
		0.052546, 0.762377, -0.644996,
		-0.992002, -0.034379, -0.121452,
		0.379478, 0.621164, 4.715615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.895516, 1.300785, 4.990782>,  <1.073879, 0.645229, 4.800631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.895516, 1.300785, 4.990782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562660, 1.079884, 5.011028>,  <0.362947, 0.947343, 5.023176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.562660, 1.079884, 5.011028>,  <0.895516, 1.300785, 4.990782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.562660, 1.079884, 5.011028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219855, 0.412311, 0.884117,
		-0.509125, 0.724581, -0.464515,
		-0.832139, -0.552253, 0.050615,
		0.313019, 0.914208, 5.026213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.586347, 1.657645, 5.437057>,  <0.895516, 1.300785, 4.990782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.586347, 1.657645, 5.437057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367645, 1.322788, 5.430710>,  <0.236424, 1.121874, 5.426902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.367645, 1.322788, 5.430710>,  <0.586347, 1.657645, 5.437057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.367645, 1.322788, 5.430710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357239, 0.216096, 0.908671,
		-0.757258, 0.502488, -0.417211,
		-0.546754, -0.837143, -0.015867,
		0.203619, 1.071645, 5.425950>
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
