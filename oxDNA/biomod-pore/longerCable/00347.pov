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
	<24.511522, 35.390514, 34.772499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244867, 35.132195, 34.921379>,  <24.084875, 34.977203, 35.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244867, 35.132195, 34.921379>,  <24.511522, 35.390514, 34.772499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244867, 35.132195, 34.921379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566743, -0.763490, -0.309653,
		0.484148, 0.004517, 0.874975,
		-0.666636, -0.645804, 0.372202,
		24.044876, 34.938454, 35.033039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851553, 34.756897, 35.104427>,  <24.511522, 35.390514, 34.772499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851553, 34.756897, 35.104427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165827, 34.512146, 35.067974>,  <25.354391, 34.365295, 35.046101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165827, 34.512146, 35.067974>,  <24.851553, 34.756897, 35.104427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165827, 34.512146, 35.067974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539852, 0.606213, 0.584008,
		-0.302093, -0.508046, 0.806616,
		0.785684, -0.611878, -0.091137,
		25.401531, 34.328583, 35.040634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418705, 35.233921, 35.377079>,  <24.851553, 34.756897, 35.104427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418705, 35.233921, 35.377079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615057, 34.982445, 35.135822>,  <25.732868, 34.831558, 34.991066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615057, 34.982445, 35.135822>,  <25.418705, 35.233921, 35.377079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615057, 34.982445, 35.135822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643882, -0.204570, 0.737270,
		-0.586901, -0.750265, 0.304384,
		0.490880, -0.628692, -0.603144,
		25.762321, 34.793839, 34.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556419, 34.695473, 35.814499>,  <25.418705, 35.233921, 35.377079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556419, 34.695473, 35.814499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822653, 34.652168, 35.519127>,  <25.982393, 34.626186, 35.341904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822653, 34.652168, 35.519127>,  <25.556419, 34.695473, 35.814499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822653, 34.652168, 35.519127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671604, -0.344636, 0.655877,
		-0.325491, -0.932474, -0.156680,
		0.665585, -0.108255, -0.738429,
		26.022327, 34.619690, 35.297600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843391, 34.104782, 35.871548>,  <25.556419, 34.695473, 35.814499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843391, 34.104782, 35.871548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124834, 34.256363, 35.631104>,  <26.293699, 34.347309, 35.486835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124834, 34.256363, 35.631104>,  <25.843391, 34.104782, 35.871548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124834, 34.256363, 35.631104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709588, -0.329764, 0.622688,
		0.037741, -0.864670, -0.500921,
		0.703606, 0.378948, -0.601114,
		26.335917, 34.370049, 35.450771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387642, 33.529747, 35.695175>,  <25.843391, 34.104782, 35.871548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387642, 33.529747, 35.695175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578182, 33.878880, 35.652737>,  <26.692507, 34.088360, 35.627274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578182, 33.878880, 35.652737>,  <26.387642, 33.529747, 35.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578182, 33.878880, 35.652737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742401, -0.334616, 0.580408,
		0.471097, -0.355243, -0.807385,
		0.476349, 0.872831, -0.106096,
		26.721087, 34.140728, 35.620907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020899, 33.392658, 35.248501>,  <26.387642, 33.529747, 35.695175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020899, 33.392658, 35.248501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029634, 33.694309, 35.511047>,  <27.034876, 33.875301, 35.668575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029634, 33.694309, 35.511047>,  <27.020899, 33.392658, 35.248501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029634, 33.694309, 35.511047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829684, -0.379970, 0.408958,
		0.557806, 0.535646, -0.633984,
		0.021839, 0.754126, 0.656367,
		27.036186, 33.920547, 35.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622313, 33.752605, 35.281200>,  <27.020899, 33.392658, 35.248501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622313, 33.752605, 35.281200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475965, 33.812000, 35.648697>,  <27.388157, 33.847637, 35.869194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475965, 33.812000, 35.648697>,  <27.622313, 33.752605, 35.281200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475965, 33.812000, 35.648697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828099, -0.398582, 0.394187,
		0.424728, 0.905032, 0.022865,
		-0.365866, 0.148488, 0.918746,
		27.366205, 33.856548, 35.924320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113543, 34.118008, 35.627678>,  <27.622313, 33.752605, 35.281200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113543, 34.118008, 35.627678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880316, 33.958576, 35.910851>,  <27.740379, 33.862919, 36.080753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880316, 33.958576, 35.910851>,  <28.113543, 34.118008, 35.627678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880316, 33.958576, 35.910851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810432, -0.346316, 0.472509,
		0.056837, 0.849236, 0.524946,
		-0.583068, -0.398577, 0.707932,
		27.705395, 33.839005, 36.123230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384800, 34.289852, 36.325829>,  <28.113543, 34.118008, 35.627678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384800, 34.289852, 36.325829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169882, 33.960072, 36.396923>,  <28.040932, 33.762203, 36.439579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169882, 33.960072, 36.396923>,  <28.384800, 34.289852, 36.325829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169882, 33.960072, 36.396923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803710, -0.436634, 0.404229,
		-0.255664, 0.360036, 0.897223,
		-0.537295, -0.824454, 0.177733,
		28.008694, 33.712734, 36.450245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607744, 34.115795, 37.036930>,  <28.384800, 34.289852, 36.325829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607744, 34.115795, 37.036930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467794, 33.800690, 36.834145>,  <28.383823, 33.611626, 36.712475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467794, 33.800690, 36.834145>,  <28.607744, 34.115795, 37.036930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467794, 33.800690, 36.834145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770828, -0.549626, 0.322081,
		-0.532364, -0.278091, 0.799534,
		-0.349877, -0.787767, -0.506961,
		28.362831, 33.564358, 36.682056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908224, 33.452621, 37.278008>,  <28.607744, 34.115795, 37.036930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908224, 33.452621, 37.278008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763599, 33.348072, 36.920021>,  <28.676825, 33.285343, 36.705231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763599, 33.348072, 36.920021>,  <28.908224, 33.452621, 37.278008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763599, 33.348072, 36.920021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681922, -0.728736, -0.062663,
		-0.635812, -0.632950, 0.441720,
		-0.361560, -0.261377, -0.894962,
		28.655132, 33.269661, 36.651531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561918, 32.778641, 37.176376>,  <28.908224, 33.452621, 37.278008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561918, 32.778641, 37.176376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736742, 32.851719, 36.824104>,  <28.841637, 32.895565, 36.612740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736742, 32.851719, 36.824104>,  <28.561918, 32.778641, 37.176376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736742, 32.851719, 36.824104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555756, -0.824724, 0.104718,
		-0.707189, -0.535213, -0.461987,
		0.437058, 0.182696, -0.880683,
		28.867859, 32.906528, 36.559898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528154, 32.175529, 36.621395>,  <28.561918, 32.778641, 37.176376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528154, 32.175529, 36.621395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873835, 32.368805, 36.565273>,  <29.081242, 32.484772, 36.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873835, 32.368805, 36.565273>,  <28.528154, 32.175529, 36.621395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873835, 32.368805, 36.565273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478817, -0.875452, -0.065712,
		-0.154583, -0.010393, -0.987925,
		0.864198, 0.483193, -0.140306,
		29.133095, 32.513763, 36.523182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985176, 31.928041, 35.961140>,  <28.528154, 32.175529, 36.621395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985176, 31.928041, 35.961140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215319, 32.049377, 36.264969>,  <29.353405, 32.122181, 36.447266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215319, 32.049377, 36.264969>,  <28.985176, 31.928041, 35.961140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215319, 32.049377, 36.264969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620033, -0.767418, -0.163185,
		0.533408, 0.564849, -0.629621,
		0.575357, 0.303341, 0.759571,
		29.387926, 32.140381, 36.492840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463488, 32.491192, 35.760902>,  <28.985176, 31.928041, 35.961140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463488, 32.491192, 35.760902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443434, 32.651157, 36.126972>,  <28.431402, 32.747139, 36.346615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443434, 32.651157, 36.126972>,  <28.463488, 32.491192, 35.760902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443434, 32.651157, 36.126972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604106, 0.717556, -0.346653,
		-0.795325, -0.570245, 0.205618,
		-0.050135, 0.399917, 0.915179,
		28.428392, 32.771133, 36.401527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854548, 32.504028, 36.088253>,  <28.463488, 32.491192, 35.760902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854548, 32.504028, 36.088253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015581, 32.821251, 36.271114>,  <28.112202, 33.011585, 36.380833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015581, 32.821251, 36.271114>,  <27.854548, 32.504028, 36.088253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015581, 32.821251, 36.271114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841334, 0.517344, -0.156566,
		-0.360672, -0.321590, 0.875497,
		0.402584, 0.793054, 0.457156,
		28.136356, 33.059166, 36.408260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347382, 32.678501, 36.758591>,  <27.854548, 32.504028, 36.088253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347382, 32.678501, 36.758591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567389, 32.981556, 36.618038>,  <27.699392, 33.163387, 36.533707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567389, 32.981556, 36.618038>,  <27.347382, 32.678501, 36.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567389, 32.981556, 36.618038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832004, 0.460587, -0.309239,
		-0.072450, 0.462435, 0.883688,
		0.550018, 0.757637, -0.351378,
		27.732393, 33.208847, 36.512623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946030, 33.149418, 36.950550>,  <27.347382, 32.678501, 36.758591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946030, 33.149418, 36.950550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198456, 33.352818, 36.716221>,  <27.349911, 33.474857, 36.575623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198456, 33.352818, 36.716221>,  <26.946030, 33.149418, 36.950550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198456, 33.352818, 36.716221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753108, 0.582656, -0.305517,
		0.185975, 0.633986, 0.750650,
		0.631064, 0.508502, -0.585819,
		27.387775, 33.505367, 36.540474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711359, 33.816357, 37.095421>,  <26.946030, 33.149418, 36.950550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711359, 33.816357, 37.095421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919874, 33.831909, 36.754425>,  <27.044983, 33.841240, 36.549828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919874, 33.831909, 36.754425>,  <26.711359, 33.816357, 37.095421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919874, 33.831909, 36.754425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654400, 0.659393, -0.370083,
		0.547738, 0.750793, 0.369180,
		0.521290, 0.038883, -0.852493,
		27.076262, 33.843575, 36.498676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993395, 34.471546, 36.923977>,  <26.711359, 33.816357, 37.095421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993395, 34.471546, 36.923977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916592, 34.266521, 36.589214>,  <26.870510, 34.143505, 36.388355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916592, 34.266521, 36.589214>,  <26.993395, 34.471546, 36.923977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916592, 34.266521, 36.589214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724328, 0.649410, -0.231550,
		0.662179, 0.561735, -0.495956,
		-0.192009, -0.512562, -0.836906,
		26.858988, 34.112751, 36.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548815, 35.029850, 36.576286>,  <26.993395, 34.471546, 36.923977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548815, 35.029850, 36.576286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594028, 34.706337, 36.345428>,  <27.621157, 34.512230, 36.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594028, 34.706337, 36.345428>,  <27.548815, 35.029850, 36.576286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594028, 34.706337, 36.345428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596268, 0.409430, -0.690530,
		0.794788, 0.422186, -0.435971,
		0.113032, -0.808781, -0.577146,
		27.627937, 34.463703, 36.172283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183205, 35.258980, 36.031097>,  <27.548815, 35.029850, 36.576286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183205, 35.258980, 36.031097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219032, 34.874191, 35.927879>,  <27.240528, 34.643318, 35.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219032, 34.874191, 35.927879>,  <27.183205, 35.258980, 36.031097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219032, 34.874191, 35.927879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697997, 0.124190, -0.705250,
		0.710477, 0.243283, -0.660330,
		0.089569, -0.961972, -0.258045,
		27.245903, 34.585598, 35.850464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898664, 35.350750, 35.390194>,  <27.183205, 35.258980, 36.031097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898664, 35.350750, 35.390194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936098, 34.957989, 35.456051>,  <26.958559, 34.722332, 35.495567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936098, 34.957989, 35.456051>,  <26.898664, 35.350750, 35.390194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936098, 34.957989, 35.456051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730874, -0.180049, -0.658335,
		0.676065, -0.058723, -0.734498,
		0.093586, -0.981903, 0.164644,
		26.964174, 34.663418, 35.505444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134541, 35.059418, 34.782112>,  <26.898664, 35.350750, 35.390194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134541, 35.059418, 34.782112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885044, 34.823627, 34.987431>,  <26.735346, 34.682156, 35.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885044, 34.823627, 34.987431>,  <27.134541, 35.059418, 34.782112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885044, 34.823627, 34.987431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666105, 0.057276, -0.743655,
		0.408966, -0.805754, -0.428377,
		-0.623739, -0.589474, 0.513293,
		26.697922, 34.646786, 35.141418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947117, 34.405834, 34.415829>,  <27.134541, 35.059418, 34.782112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947117, 34.405834, 34.415829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658327, 34.446632, 34.689571>,  <26.485054, 34.471111, 34.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658327, 34.446632, 34.689571>,  <26.947117, 34.405834, 34.415829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658327, 34.446632, 34.689571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691742, -0.128826, -0.710562,
		0.015692, -0.986408, 0.163562,
		-0.721975, 0.101993, 0.684361,
		26.441734, 34.477230, 34.894878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429214, 34.059914, 34.111515>,  <26.947117, 34.405834, 34.415829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429214, 34.059914, 34.111515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228498, 34.278576, 34.379654>,  <26.108068, 34.409775, 34.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228498, 34.278576, 34.379654>,  <26.429214, 34.059914, 34.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228498, 34.278576, 34.379654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810885, -0.027506, -0.584558,
		-0.301114, -0.836905, 0.457078,
		-0.501792, 0.546657, 0.670351,
		26.077961, 34.442574, 34.580761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760450, 33.730717, 34.374058>,  <26.429214, 34.059914, 34.111515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760450, 33.730717, 34.374058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759657, 34.129860, 34.400219>,  <25.759180, 34.369347, 34.415916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759657, 34.129860, 34.400219>,  <25.760450, 33.730717, 34.374058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759657, 34.129860, 34.400219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770546, 0.040161, -0.636118,
		-0.637382, -0.051656, 0.768815,
		-0.001983, 0.997857, 0.065401,
		25.759062, 34.429218, 34.419838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131527, 33.910713, 34.148315>,  <25.760450, 33.730717, 34.374058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131527, 33.910713, 34.148315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318718, 34.261509, 34.104694>,  <25.431032, 34.471985, 34.078522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318718, 34.261509, 34.104694>,  <25.131527, 33.910713, 34.148315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318718, 34.261509, 34.104694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718035, 0.305389, -0.625431,
		-0.515191, 0.370991, 0.772622,
		0.467979, 0.876986, -0.109051,
		25.459112, 34.524605, 34.071980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635067, 34.425003, 34.277138>,  <25.131527, 33.910713, 34.148315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635067, 34.425003, 34.277138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912279, 34.511368, 34.002014>,  <25.078608, 34.563187, 33.836941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912279, 34.511368, 34.002014>,  <24.635067, 34.425003, 34.277138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912279, 34.511368, 34.002014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720871, 0.217078, -0.658197,
		0.007195, 0.951976, 0.306088,
		0.693032, 0.215915, -0.687813,
		25.120190, 34.576141, 33.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580753, 35.127552, 34.035191>,  <24.635067, 34.425003, 34.277138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580753, 35.127552, 34.035191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721180, 34.901512, 33.736549>,  <24.805435, 34.765888, 33.557365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721180, 34.901512, 33.736549>,  <24.580753, 35.127552, 34.035191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.721180, 34.901512, 33.736549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683099, 0.390778, -0.616982,
		0.640412, 0.726606, -0.248828,
		0.351067, -0.565097, -0.746604,
		24.826500, 34.731983, 33.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845814, 35.498383, 33.417721>,  <24.580753, 35.127552, 34.035191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845814, 35.498383, 33.417721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696503, 35.136448, 33.335804>,  <24.606916, 34.919289, 33.286655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696503, 35.136448, 33.335804>,  <24.845814, 35.498383, 33.417721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696503, 35.136448, 33.335804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507616, 0.383976, -0.771290,
		0.776523, -0.183953, -0.602638,
		-0.373279, -0.904833, -0.204789,
		24.584518, 34.864998, 33.274368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687397, 35.342606, 32.636356>,  <24.845814, 35.498383, 33.417721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687397, 35.342606, 32.636356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475319, 35.058495, 32.821571>,  <24.348072, 34.888027, 32.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475319, 35.058495, 32.821571>,  <24.687397, 35.342606, 32.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475319, 35.058495, 32.821571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627061, -0.039099, -0.777988,
		0.570692, -0.702834, -0.424658,
		-0.530193, -0.710279, 0.463034,
		24.316261, 34.845409, 32.960480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439896, 35.669838, 32.559814>,  <24.687397, 35.342606, 32.636356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439896, 35.669838, 32.559814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177887, 35.464314, 32.338203>,  <25.020681, 35.341000, 32.205238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177887, 35.464314, 32.338203>,  <25.439896, 35.669838, 32.559814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177887, 35.464314, 32.338203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283079, 0.512954, -0.810398,
		0.700583, -0.687660, -0.190545,
		-0.655019, -0.513812, -0.554028,
		24.981380, 35.310169, 32.171993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688295, 35.368584, 31.930775>,  <25.439896, 35.669838, 32.559814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688295, 35.368584, 31.930775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299158, 35.403191, 31.844900>,  <25.065676, 35.423954, 31.793375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299158, 35.403191, 31.844900>,  <25.688295, 35.368584, 31.930775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299158, 35.403191, 31.844900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231445, 0.376189, -0.897170,
		0.003139, -0.922494, -0.385998,
		-0.972843, 0.086522, -0.214688,
		25.007305, 35.429146, 31.780495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115217, 34.740036, 31.720982>,  <25.688295, 35.368584, 31.930775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115217, 34.740036, 31.720982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452400, 34.532051, 31.665754>,  <26.654711, 34.407261, 31.632618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452400, 34.532051, 31.665754>,  <26.115217, 34.740036, 31.720982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452400, 34.532051, 31.665754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463868, -0.572498, -0.676072,
		0.272489, 0.633944, -0.723785,
		0.842957, -0.519963, -0.138067,
		26.705288, 34.376060, 31.624334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390533, 34.748672, 30.916986>,  <26.115217, 34.740036, 31.720982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390533, 34.748672, 30.916986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455462, 34.453758, 31.179304>,  <26.494419, 34.276810, 31.336695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455462, 34.453758, 31.179304>,  <26.390533, 34.748672, 30.916986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455462, 34.453758, 31.179304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492017, -0.636570, -0.593884,
		0.855319, -0.226262, -0.466084,
		0.162322, -0.737282, 0.655795,
		26.504158, 34.232574, 31.376043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679558, 34.338463, 30.461535>,  <26.390533, 34.748672, 30.916986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679558, 34.338463, 30.461535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575552, 34.110733, 30.773499>,  <26.513149, 33.974094, 30.960676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575552, 34.110733, 30.773499>,  <26.679558, 34.338463, 30.461535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575552, 34.110733, 30.773499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477417, -0.626263, -0.616334,
		0.839325, -0.532597, -0.108971,
		-0.260013, -0.569329, 0.779908,
		26.497547, 33.939934, 31.007471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939180, 33.746696, 30.193903>,  <26.679558, 34.338463, 30.461535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939180, 33.746696, 30.193903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673672, 33.654388, 30.478479>,  <26.514366, 33.599003, 30.649225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673672, 33.654388, 30.478479>,  <26.939180, 33.746696, 30.193903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673672, 33.654388, 30.478479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385283, -0.709792, -0.589705,
		0.641064, -0.665537, 0.382227,
		-0.663773, -0.230773, 0.711442,
		26.474541, 33.585155, 30.691912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683237, 33.009903, 30.093084>,  <26.939180, 33.746696, 30.193903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683237, 33.009903, 30.093084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411102, 33.189507, 30.324783>,  <26.247822, 33.297268, 30.463802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411102, 33.189507, 30.324783>,  <26.683237, 33.009903, 30.093084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411102, 33.189507, 30.324783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727994, -0.505308, -0.463345,
		0.084651, -0.736920, 0.670659,
		-0.680338, 0.449013, 0.579248,
		26.207001, 33.324211, 30.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064899, 33.320400, 30.029266>,  <26.683237, 33.009903, 30.093084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064899, 33.320400, 30.029266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767878, 33.081482, 30.150494>,  <25.589664, 32.938129, 30.223230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767878, 33.081482, 30.150494>,  <26.064899, 33.320400, 30.029266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767878, 33.081482, 30.150494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203021, 0.230479, 0.951663,
		-0.638276, 0.768190, -0.049879,
		-0.742554, -0.597297, 0.303068,
		25.545111, 32.902294, 30.241413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415657, 33.580307, 30.443409>,  <26.064899, 33.320400, 30.029266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415657, 33.580307, 30.443409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515923, 33.215961, 30.574558>,  <25.576082, 32.997356, 30.653248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515923, 33.215961, 30.574558>,  <25.415657, 33.580307, 30.443409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515923, 33.215961, 30.574558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315279, 0.397031, 0.861955,
		-0.915296, -0.112691, 0.386697,
		0.250665, -0.910861, 0.327872,
		25.591122, 32.942703, 30.672920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220564, 33.371727, 31.118746>,  <25.415657, 33.580307, 30.443409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220564, 33.371727, 31.118746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578341, 33.236866, 31.001240>,  <25.793007, 33.155949, 30.930737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578341, 33.236866, 31.001240>,  <25.220564, 33.371727, 31.118746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578341, 33.236866, 31.001240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440232, 0.548520, 0.710860,
		-0.078535, -0.765148, 0.639047,
		0.894443, -0.337157, -0.293765,
		25.846674, 33.135719, 30.913111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664040, 33.127224, 31.663647>,  <25.220564, 33.371727, 31.118746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664040, 33.127224, 31.663647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923082, 33.264603, 31.391575>,  <26.078508, 33.347031, 31.228331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923082, 33.264603, 31.391575>,  <25.664040, 33.127224, 31.663647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923082, 33.264603, 31.391575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411088, 0.594122, 0.691394,
		0.641570, -0.727366, 0.243569,
		0.647606, 0.343450, -0.680183,
		26.117365, 33.367638, 31.187521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199263, 33.215504, 32.069969>,  <25.664040, 33.127224, 31.663647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199263, 33.215504, 32.069969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300230, 33.428680, 31.746918>,  <26.360811, 33.556587, 31.553087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300230, 33.428680, 31.746918>,  <26.199263, 33.215504, 32.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300230, 33.428680, 31.746918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558737, 0.601163, 0.571328,
		0.789998, -0.595465, -0.146029,
		0.252419, 0.532940, -0.807626,
		26.375956, 33.588562, 31.504629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935135, 33.200497, 32.055496>,  <26.199263, 33.215504, 32.069969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935135, 33.200497, 32.055496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809149, 33.520126, 31.850643>,  <26.733557, 33.711903, 31.727730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809149, 33.520126, 31.850643>,  <26.935135, 33.200497, 32.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809149, 33.520126, 31.850643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639134, 0.577483, 0.507958,
		0.701644, -0.167335, -0.692600,
		-0.314966, 0.799070, -0.512137,
		26.714659, 33.759846, 31.697002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551323, 33.675274, 32.028797>,  <26.935135, 33.200497, 32.055496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551323, 33.675274, 32.028797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232025, 33.905167, 31.956699>,  <27.040447, 34.043102, 31.913441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232025, 33.905167, 31.956699>,  <27.551323, 33.675274, 32.028797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232025, 33.905167, 31.956699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476557, 0.785628, 0.394566,
		0.368374, 0.229065, -0.901016,
		-0.798245, 0.574733, -0.180242,
		26.992552, 34.077587, 31.902626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798347, 34.224323, 31.652727>,  <27.551323, 33.675274, 32.028797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798347, 34.224323, 31.652727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465307, 34.296913, 31.862049>,  <27.265484, 34.340466, 31.987642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465307, 34.296913, 31.862049>,  <27.798347, 34.224323, 31.652727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465307, 34.296913, 31.862049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436480, 0.796610, 0.418209,
		-0.340977, 0.576612, -0.742464,
		-0.832598, 0.181471, 0.523305,
		27.215528, 34.351353, 32.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499851, 34.873150, 31.462168>,  <27.798347, 34.224323, 31.652727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499851, 34.873150, 31.462168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429754, 34.790901, 31.847294>,  <27.387695, 34.741550, 32.078369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429754, 34.790901, 31.847294>,  <27.499851, 34.873150, 31.462168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429754, 34.790901, 31.847294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401784, 0.877868, 0.260612,
		-0.898810, 0.432513, -0.071223,
		-0.175242, -0.205624, 0.962813,
		27.377182, 34.729214, 32.136139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208925, 34.843449, 31.700169>,  <27.499851, 34.873150, 31.462168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208925, 34.843449, 31.700169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092089, 35.180279, 31.881538>,  <28.021986, 35.382378, 31.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092089, 35.180279, 31.881538>,  <28.208925, 34.843449, 31.700169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092089, 35.180279, 31.881538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466080, -0.288659, 0.836329,
		0.835135, 0.455617, -0.308158,
		-0.292093, 0.842074, 0.453423,
		28.004461, 35.432899, 32.017567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705219, 35.077869, 31.983603>,  <28.208925, 34.843449, 31.700169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705219, 35.077869, 31.983603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442345, 35.304035, 32.182968>,  <28.284620, 35.439735, 32.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442345, 35.304035, 32.182968>,  <28.705219, 35.077869, 31.983603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442345, 35.304035, 32.182968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490911, -0.180687, 0.852267,
		0.571940, 0.804773, -0.158823,
		-0.657185, 0.565413, 0.498414,
		28.245190, 35.473660, 32.332493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144588, 35.380318, 32.486927>,  <28.705219, 35.077869, 31.983603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144588, 35.380318, 32.486927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763840, 35.410763, 32.605686>,  <28.535391, 35.429031, 32.676941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763840, 35.410763, 32.605686>,  <29.144588, 35.380318, 32.486927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763840, 35.410763, 32.605686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298720, 0.013538, 0.954245,
		0.068610, 0.997007, -0.035623,
		-0.951871, 0.076112, 0.296897,
		28.478279, 35.433598, 32.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705650, 35.182884, 32.158386>,  <29.144588, 35.380318, 32.486927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705650, 35.182884, 32.158386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758627, 34.791714, 32.223034>,  <29.790413, 34.557011, 32.261822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758627, 34.791714, 32.223034>,  <29.705650, 35.182884, 32.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758627, 34.791714, 32.223034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989567, 0.121126, -0.078009,
		0.056711, 0.170264, 0.983765,
		0.132442, -0.977926, 0.161618,
		29.798359, 34.498337, 32.271519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454113, 35.164314, 32.259998>,  <29.705650, 35.182884, 32.158386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454113, 35.164314, 32.259998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341406, 34.780739, 32.272900>,  <30.273783, 34.550594, 32.280640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341406, 34.780739, 32.272900>,  <30.454113, 35.164314, 32.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341406, 34.780739, 32.272900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948672, -0.273401, 0.158976,
		-0.143630, 0.075395, 0.986755,
		-0.281766, -0.958941, 0.032257,
		30.256876, 34.493057, 32.282578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747019, 34.849560, 32.798935>,  <30.454113, 35.164314, 32.259998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747019, 34.849560, 32.798935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738686, 34.535557, 32.551277>,  <30.733686, 34.347157, 32.402683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738686, 34.535557, 32.551277>,  <30.747019, 34.849560, 32.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738686, 34.535557, 32.551277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965624, -0.176291, 0.191028,
		-0.259106, -0.593877, 0.761692,
		-0.020833, -0.785004, -0.619140,
		30.732435, 34.300056, 32.365536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264135, 34.553875, 33.229885>,  <30.747019, 34.849560, 32.798935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264135, 34.553875, 33.229885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281549, 34.418159, 32.854015>,  <31.291998, 34.336731, 32.628494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281549, 34.418159, 32.854015>,  <31.264135, 34.553875, 33.229885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281549, 34.418159, 32.854015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944496, -0.292584, 0.149403,
		-0.325624, -0.894024, 0.307718,
		0.043537, -0.339288, -0.939675,
		31.294611, 34.316372, 32.572113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544050, 34.766708, 33.946812>,  <31.264135, 34.553875, 33.229885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544050, 34.766708, 33.946812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841742, 34.620506, 34.170429>,  <32.020355, 34.532787, 34.304600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841742, 34.620506, 34.170429>,  <31.544050, 34.766708, 33.946812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841742, 34.620506, 34.170429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219189, -0.656989, -0.721333,
		0.630934, 0.659374, -0.408837,
		0.744230, -0.365501, 0.559045,
		32.065010, 34.510857, 34.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280724, 34.815517, 33.578625>,  <31.544050, 34.766708, 33.946812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280724, 34.815517, 33.578625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289349, 34.491432, 33.812916>,  <32.294525, 34.296982, 33.953491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289349, 34.491432, 33.812916>,  <32.280724, 34.815517, 33.578625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289349, 34.491432, 33.812916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050718, -0.584227, -0.810004,
		0.998480, 0.047176, 0.028493,
		0.021566, -0.810218, 0.585732,
		32.295818, 34.248367, 33.988636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774601, 34.208344, 33.365223>,  <32.280724, 34.815517, 33.578625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774601, 34.208344, 33.365223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472721, 34.066113, 33.585766>,  <32.291592, 33.980774, 33.718094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472721, 34.066113, 33.585766>,  <32.774601, 34.208344, 33.365223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472721, 34.066113, 33.585766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143837, -0.730274, -0.667841,
		0.640111, -0.583324, 0.499991,
		-0.754698, -0.355575, 0.551359,
		32.246311, 33.959438, 33.751175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918877, 33.519188, 33.754383>,  <32.774601, 34.208344, 33.365223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918877, 33.519188, 33.754383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533642, 33.542114, 33.649181>,  <32.302502, 33.555870, 33.586060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533642, 33.542114, 33.649181>,  <32.918877, 33.519188, 33.754383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533642, 33.542114, 33.649181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151059, -0.693613, -0.704330,
		-0.222794, -0.718063, 0.659354,
		-0.963091, 0.057319, -0.263003,
		32.244713, 33.559311, 33.570282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683670, 32.901821, 33.817928>,  <32.918877, 33.519188, 33.754383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683670, 32.901821, 33.817928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470947, 33.081966, 33.531052>,  <32.343315, 33.190052, 33.358925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470947, 33.081966, 33.531052>,  <32.683670, 32.901821, 33.817928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470947, 33.081966, 33.531052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197867, -0.757356, -0.622303,
		-0.823428, -0.472851, 0.313654,
		-0.531804, 0.450360, -0.717190,
		32.311405, 33.217075, 33.315895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054455, 32.522053, 33.558590>,  <32.683670, 32.901821, 33.817928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054455, 32.522053, 33.558590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292591, 32.723339, 33.308041>,  <32.435474, 32.844112, 33.157711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292591, 32.723339, 33.308041>,  <32.054455, 32.522053, 33.558590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292591, 32.723339, 33.308041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151042, -0.835773, -0.527892,
		-0.789148, 0.219667, -0.573577,
		0.595341, 0.503219, -0.626370,
		32.471195, 32.874306, 33.120129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913292, 32.249168, 32.867496>,  <32.054455, 32.522053, 33.558590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913292, 32.249168, 32.867496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266098, 32.437386, 32.857410>,  <32.477783, 32.550316, 32.851357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266098, 32.437386, 32.857410>,  <31.913292, 32.249168, 32.867496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266098, 32.437386, 32.857410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359003, -0.705672, -0.610856,
		-0.305231, 0.529730, -0.791340,
		0.882015, 0.470546, -0.025218,
		32.530701, 32.578548, 32.849846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148579, 32.251282, 32.108868>,  <31.913292, 32.249168, 32.867496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148579, 32.251282, 32.108868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468758, 32.285530, 32.346169>,  <32.660866, 32.306080, 32.488548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468758, 32.285530, 32.346169>,  <32.148579, 32.251282, 32.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468758, 32.285530, 32.346169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580729, -0.355888, -0.732186,
		0.148440, 0.930598, -0.334594,
		0.800449, 0.085623, 0.593253,
		32.708893, 32.311218, 32.524143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167889, 32.100296, 31.378052>,  <32.148579, 32.251282, 32.108868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167889, 32.100296, 31.378052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959728, 31.939693, 31.076595>,  <31.834833, 31.843330, 30.895721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959728, 31.939693, 31.076595>,  <32.167889, 32.100296, 31.378052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959728, 31.939693, 31.076595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799021, 0.082397, -0.595631,
		0.301249, -0.912141, 0.277935,
		-0.520399, -0.401509, -0.753642,
		31.803608, 31.819241, 30.850502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671455, 31.597717, 31.130968>,  <32.167889, 32.100296, 31.378052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671455, 31.597717, 31.130968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401562, 31.714203, 30.859695>,  <32.239628, 31.784094, 30.696932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401562, 31.714203, 30.859695>,  <32.671455, 31.597717, 31.130968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401562, 31.714203, 30.859695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737881, 0.245660, -0.628636,
		-0.016466, -0.924579, -0.380636,
		-0.674730, 0.291215, -0.678184,
		32.199142, 31.801567, 30.656240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688747, 31.223845, 30.408684>,  <32.671455, 31.597717, 31.130968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688747, 31.223845, 30.408684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536922, 31.589380, 30.350960>,  <32.445827, 31.808702, 30.316324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536922, 31.589380, 30.350960>,  <32.688747, 31.223845, 30.408684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536922, 31.589380, 30.350960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638587, 0.145917, -0.755590,
		-0.669430, -0.378952, -0.638951,
		-0.379566, 0.913840, -0.144312,
		32.423054, 31.863533, 30.307667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671623, 31.381422, 29.690210>,  <32.688747, 31.223845, 30.408684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671623, 31.381422, 29.690210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660042, 31.739870, 29.867357>,  <32.653095, 31.954939, 29.973644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660042, 31.739870, 29.867357>,  <32.671623, 31.381422, 29.690210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660042, 31.739870, 29.867357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608149, 0.367409, -0.703680,
		-0.793295, 0.248957, -0.555611,
		-0.028951, 0.896120, 0.442866,
		32.651356, 32.008705, 30.000217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502373, 31.872993, 29.160580>,  <32.671623, 31.381422, 29.690210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502373, 31.872993, 29.160580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655991, 32.104176, 29.448601>,  <32.748161, 32.242886, 29.621414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655991, 32.104176, 29.448601>,  <32.502373, 31.872993, 29.160580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655991, 32.104176, 29.448601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535890, 0.495536, -0.683568,
		-0.751883, 0.648393, -0.119410,
		0.384049, 0.577954, 0.720053,
		32.771206, 32.277561, 29.664616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571213, 32.464710, 28.805212>,  <32.502373, 31.872993, 29.160580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571213, 32.464710, 28.805212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796463, 32.501942, 29.133657>,  <32.931614, 32.524281, 29.330725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796463, 32.501942, 29.133657>,  <32.571213, 32.464710, 28.805212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796463, 32.501942, 29.133657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625251, 0.601700, -0.497009,
		-0.540327, 0.793280, 0.280631,
		0.563123, 0.093083, 0.821114,
		32.965401, 32.529865, 29.379992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608440, 33.232456, 28.983990>,  <32.571213, 32.464710, 28.805212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608440, 33.232456, 28.983990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921478, 33.037296, 29.138649>,  <33.109303, 32.920200, 29.231443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921478, 33.037296, 29.138649>,  <32.608440, 33.232456, 28.983990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921478, 33.037296, 29.138649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622460, 0.622748, -0.474056,
		-0.009490, 0.611666, 0.791059,
		0.782594, -0.487904, 0.386647,
		33.156258, 32.890926, 29.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029392, 33.695072, 29.285639>,  <32.608440, 33.232456, 28.983990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029392, 33.695072, 29.285639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253315, 33.378983, 29.185911>,  <33.387669, 33.189331, 29.126074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253315, 33.378983, 29.185911>,  <33.029392, 33.695072, 29.285639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253315, 33.378983, 29.185911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576906, 0.587676, -0.567288,
		0.594803, 0.173740, 0.784872,
		0.559811, -0.790222, -0.249320,
		33.421257, 33.141914, 29.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620266, 34.010834, 29.233599>,  <33.029392, 33.695072, 29.285639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620266, 34.010834, 29.233599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715454, 33.668880, 29.049191>,  <33.772568, 33.463707, 28.938545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715454, 33.668880, 29.049191>,  <33.620266, 34.010834, 29.233599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715454, 33.668880, 29.049191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374533, 0.518713, -0.768545,
		0.896156, 0.010223, 0.443620,
		0.237969, -0.854887, -0.461020,
		33.786846, 33.412415, 28.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217548, 34.136719, 28.957623>,  <33.620266, 34.010834, 29.233599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217548, 34.136719, 28.957623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091320, 33.828857, 28.735617>,  <34.015583, 33.644138, 28.602413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091320, 33.828857, 28.735617>,  <34.217548, 34.136719, 28.957623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091320, 33.828857, 28.735617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480769, 0.374589, -0.792808,
		0.818093, -0.517022, 0.251817,
		-0.315572, -0.769656, -0.555017,
		33.996647, 33.597961, 28.569111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793732, 33.797054, 28.736382>,  <34.217548, 34.136719, 28.957623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793732, 33.797054, 28.736382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512367, 33.673702, 28.480221>,  <34.343548, 33.599689, 28.326525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512367, 33.673702, 28.480221>,  <34.793732, 33.797054, 28.736382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512367, 33.673702, 28.480221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495272, 0.433593, -0.752797,
		0.509822, -0.846698, -0.152261,
		-0.703411, -0.308382, -0.640401,
		34.301346, 33.581188, 28.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117836, 33.801090, 28.087244>,  <34.793732, 33.797054, 28.736382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117836, 33.801090, 28.087244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742367, 33.766022, 27.953857>,  <34.517086, 33.744980, 27.873825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742367, 33.766022, 27.953857>,  <35.117836, 33.801090, 28.087244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742367, 33.766022, 27.953857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238519, 0.533287, -0.811611,
		0.248989, -0.841379, -0.479673,
		-0.938676, -0.087671, -0.333468,
		34.460762, 33.739719, 27.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093784, 33.379868, 27.461449>,  <35.117836, 33.801090, 28.087244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093784, 33.379868, 27.461449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781555, 33.629887, 27.459253>,  <34.594219, 33.779896, 27.457937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781555, 33.629887, 27.459253>,  <35.093784, 33.379868, 27.461449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781555, 33.629887, 27.459253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269600, 0.328738, -0.905123,
		-0.563938, -0.707990, -0.425115,
		-0.780570, 0.625044, -0.005486,
		34.547382, 33.817402, 27.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866264, 33.405876, 26.778744>,  <35.093784, 33.379868, 27.461449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866264, 33.405876, 26.778744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711929, 33.723991, 26.965784>,  <34.619328, 33.914860, 27.078009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711929, 33.723991, 26.965784>,  <34.866264, 33.405876, 26.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711929, 33.723991, 26.965784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059755, 0.484242, -0.872891,
		-0.920629, -0.364736, -0.139317,
		-0.385838, 0.795284, 0.467602,
		34.596176, 33.962578, 27.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412643, 33.702259, 26.303310>,  <34.866264, 33.405876, 26.778744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412643, 33.702259, 26.303310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491581, 34.014427, 26.540627>,  <34.538944, 34.201729, 26.683016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491581, 34.014427, 26.540627>,  <34.412643, 33.702259, 26.303310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491581, 34.014427, 26.540627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051909, 0.596026, -0.801286,
		-0.978960, 0.188924, 0.077109,
		0.197341, 0.780424, 0.593292,
		34.550785, 34.248554, 26.718615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947681, 34.292400, 26.136112>,  <34.412643, 33.702259, 26.303310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947681, 34.292400, 26.136112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263691, 34.465931, 26.309387>,  <34.453297, 34.570049, 26.413353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263691, 34.465931, 26.309387>,  <33.947681, 34.292400, 26.136112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263691, 34.465931, 26.309387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005490, 0.701550, -0.712599,
		-0.613049, 0.565350, 0.551861,
		0.790026, 0.433828, 0.433189,
		34.500698, 34.596081, 26.439344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822567, 35.014210, 25.962374>,  <33.947681, 34.292400, 26.136112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822567, 35.014210, 25.962374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201397, 35.016747, 26.090755>,  <34.428696, 35.018269, 26.167786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201397, 35.016747, 26.090755>,  <33.822567, 35.014210, 25.962374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201397, 35.016747, 26.090755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219484, 0.716815, -0.661818,
		-0.234264, 0.697235, 0.677484,
		0.947073, 0.006343, 0.320956,
		34.485519, 35.018650, 26.187042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037697, 35.698254, 26.074848>,  <33.822567, 35.014210, 25.962374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037697, 35.698254, 26.074848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383541, 35.499485, 26.045115>,  <34.591045, 35.380222, 26.027275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383541, 35.499485, 26.045115>,  <34.037697, 35.698254, 26.074848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383541, 35.499485, 26.045115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303295, 0.634111, -0.711277,
		0.400585, 0.592429, 0.698970,
		0.864606, -0.496921, -0.074335,
		34.642921, 35.350410, 26.022814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456013, 36.214699, 26.005718>,  <34.037697, 35.698254, 26.074848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456013, 36.214699, 26.005718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662861, 35.898190, 25.875202>,  <34.786972, 35.708282, 25.796892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662861, 35.898190, 25.875202>,  <34.456013, 36.214699, 26.005718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662861, 35.898190, 25.875202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164554, 0.466020, -0.869337,
		0.839943, 0.395863, 0.371198,
		0.517124, -0.791276, -0.326289,
		34.817997, 35.660809, 25.777315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045937, 36.465557, 25.775692>,  <34.456013, 36.214699, 26.005718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045937, 36.465557, 25.775692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004238, 36.111172, 25.594936>,  <34.979221, 35.898540, 25.486483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004238, 36.111172, 25.594936>,  <35.045937, 36.465557, 25.775692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004238, 36.111172, 25.594936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379572, 0.384533, -0.841462,
		0.919270, -0.259242, 0.296201,
		-0.104243, -0.885961, -0.451891,
		34.972965, 35.845383, 25.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741970, 36.183186, 25.519579>,  <35.045937, 36.465557, 25.775692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741970, 36.183186, 25.519579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457077, 36.011124, 25.297701>,  <35.286140, 35.907887, 25.164574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457077, 36.011124, 25.297701>,  <35.741970, 36.183186, 25.519579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457077, 36.011124, 25.297701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494698, 0.253024, -0.831416,
		0.497991, -0.866570, 0.032587,
		-0.712234, -0.430159, -0.554694,
		35.243408, 35.882076, 25.131292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054268, 35.980984, 24.886356>,  <35.741970, 36.183186, 25.519579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054268, 35.980984, 24.886356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673283, 35.928284, 24.776482>,  <35.444691, 35.896664, 24.710556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673283, 35.928284, 24.776482>,  <36.054268, 35.980984, 24.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673283, 35.928284, 24.776482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254222, 0.153129, -0.954947,
		0.167886, -0.979383, -0.112353,
		-0.952463, -0.131759, -0.274689,
		35.387543, 35.888760, 24.694075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001442, 35.568966, 24.213757>,  <36.054268, 35.980984, 24.886356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001442, 35.568966, 24.213757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663059, 35.780510, 24.241064>,  <35.460030, 35.907436, 24.257448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663059, 35.780510, 24.241064>,  <36.001442, 35.568966, 24.213757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663059, 35.780510, 24.241064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149285, 0.357783, -0.921795,
		-0.511928, -0.769607, -0.381620,
		-0.845957, 0.528863, 0.068269,
		35.409271, 35.939167, 24.261545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730713, 35.347801, 23.700340>,  <36.001442, 35.568966, 24.213757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730713, 35.347801, 23.700340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533688, 35.686127, 23.782291>,  <35.415474, 35.889122, 23.831461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533688, 35.686127, 23.782291>,  <35.730713, 35.347801, 23.700340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533688, 35.686127, 23.782291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246436, 0.361338, -0.899280,
		-0.834656, -0.392463, -0.386422,
		-0.492563, 0.845818, 0.204876,
		35.385918, 35.939873, 23.843754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192814, 35.486320, 23.174850>,  <35.730713, 35.347801, 23.700340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192814, 35.486320, 23.174850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249004, 35.843288, 23.346363>,  <35.282719, 36.057468, 23.449270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249004, 35.843288, 23.346363>,  <35.192814, 35.486320, 23.174850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249004, 35.843288, 23.346363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171103, 0.404677, -0.898310,
		-0.975187, 0.199556, -0.095848,
		0.140476, 0.892420, 0.428780,
		35.291145, 36.111015, 23.474997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958942, 35.965977, 22.648249>,  <35.192814, 35.486320, 23.174850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958942, 35.965977, 22.648249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175571, 36.191257, 22.897890>,  <35.305550, 36.326427, 23.047676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175571, 36.191257, 22.897890>,  <34.958942, 35.965977, 22.648249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175571, 36.191257, 22.897890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035966, 0.726198, -0.686543,
		-0.839886, 0.394258, 0.373031,
		0.541569, 0.563202, 0.624104,
		35.338043, 36.360218, 23.085121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747108, 36.671196, 22.450830>,  <34.958942, 35.965977, 22.648249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747108, 36.671196, 22.450830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079510, 36.730061, 22.665411>,  <35.278950, 36.765381, 22.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079510, 36.730061, 22.665411>,  <34.747108, 36.671196, 22.450830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079510, 36.730061, 22.665411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120094, 0.894168, -0.431325,
		-0.543153, 0.422856, 0.725381,
		0.831001, 0.147161, 0.536452,
		35.328812, 36.774208, 22.826347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718353, 37.381996, 22.743979>,  <34.747108, 36.671196, 22.450830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718353, 37.381996, 22.743979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098644, 37.259289, 22.761915>,  <35.326820, 37.185665, 22.772676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098644, 37.259289, 22.761915>,  <34.718353, 37.381996, 22.743979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098644, 37.259289, 22.761915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307872, 0.917128, -0.253162,
		0.036537, 0.254493, 0.966384,
		0.950726, -0.306772, 0.044842,
		35.383862, 37.167255, 22.775368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026928, 37.900288, 22.917614>,  <34.718353, 37.381996, 22.743979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026928, 37.900288, 22.917614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320709, 37.688667, 22.747587>,  <35.496979, 37.561695, 22.645571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320709, 37.688667, 22.747587>,  <35.026928, 37.900288, 22.917614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320709, 37.688667, 22.747587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354766, 0.833238, -0.424094,
		0.578549, 0.160679, 0.799665,
		0.734454, -0.529053, -0.425065,
		35.541046, 37.529953, 22.620068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641457, 38.022793, 23.257299>,  <35.026928, 37.900288, 22.917614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641457, 38.022793, 23.257299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688210, 37.925507, 22.872137>,  <35.716259, 37.867134, 22.641039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688210, 37.925507, 22.872137>,  <35.641457, 38.022793, 23.257299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688210, 37.925507, 22.872137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337250, 0.921658, -0.191857,
		0.934132, -0.302316, 0.189745,
		0.116879, -0.243211, -0.962906,
		35.723274, 37.852543, 22.583265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138195, 38.405910, 23.038464>,  <35.641457, 38.022793, 23.257299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138195, 38.405910, 23.038464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998520, 38.303764, 22.677830>,  <35.914715, 38.242477, 22.461449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998520, 38.303764, 22.677830>,  <36.138195, 38.405910, 23.038464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998520, 38.303764, 22.677830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250196, 0.901810, -0.352337,
		0.903050, -0.348592, -0.250966,
		-0.349146, -0.255387, -0.901596,
		35.893764, 38.227154, 22.407354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685192, 38.632740, 22.503229>,  <36.138195, 38.405910, 23.038464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685192, 38.632740, 22.503229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329430, 38.575298, 22.329638>,  <36.115971, 38.540833, 22.225483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329430, 38.575298, 22.329638>,  <36.685192, 38.632740, 22.503229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329430, 38.575298, 22.329638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020038, 0.936215, -0.350856,
		0.456680, -0.320749, -0.829797,
		-0.889405, -0.143602, -0.433978,
		36.062607, 38.532219, 22.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735920, 38.838070, 21.717802>,  <36.685192, 38.632740, 22.503229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735920, 38.838070, 21.717802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353085, 38.863693, 21.830849>,  <36.123383, 38.879066, 21.898676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353085, 38.863693, 21.830849>,  <36.735920, 38.838070, 21.717802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353085, 38.863693, 21.830849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072642, 0.891082, -0.447992,
		-0.280531, -0.449299, -0.848194,
		-0.957092, 0.064061, 0.282614,
		36.065956, 38.882912, 21.915632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395233, 39.068626, 21.146578>,  <36.735920, 38.838070, 21.717802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395233, 39.068626, 21.146578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157940, 39.162075, 21.454733>,  <36.015564, 39.218143, 21.639626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157940, 39.162075, 21.454733>,  <36.395233, 39.068626, 21.146578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157940, 39.162075, 21.454733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216695, 0.875305, -0.432302,
		-0.775320, -0.423394, -0.468632,
		-0.593230, 0.233623, 0.770388,
		35.979969, 39.232162, 21.685850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860268, 39.200760, 20.814089>,  <36.395233, 39.068626, 21.146578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860268, 39.200760, 20.814089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810562, 39.379047, 21.168692>,  <35.780739, 39.486019, 21.381453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810562, 39.379047, 21.168692>,  <35.860268, 39.200760, 20.814089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810562, 39.379047, 21.168692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295847, 0.836152, -0.461870,
		-0.947118, -0.319663, 0.027963,
		-0.124261, 0.445718, 0.886507,
		35.773285, 39.512764, 21.434643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221195, 39.581348, 20.848618>,  <35.860268, 39.200760, 20.814089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221195, 39.581348, 20.848618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461575, 39.761261, 21.112907>,  <35.605804, 39.869209, 21.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461575, 39.761261, 21.112907>,  <35.221195, 39.581348, 20.848618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461575, 39.761261, 21.112907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169629, 0.879581, -0.444482,
		-0.781078, 0.155035, 0.604881,
		0.600952, 0.449780, 0.660723,
		35.641861, 39.896194, 21.311125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887356, 40.158646, 20.984634>,  <35.221195, 39.581348, 20.848618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887356, 40.158646, 20.984634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258286, 40.234852, 21.113487>,  <35.480843, 40.280575, 21.190800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258286, 40.234852, 21.113487>,  <34.887356, 40.158646, 20.984634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258286, 40.234852, 21.113487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122867, 0.968003, -0.218802,
		-0.353513, 0.163320, 0.921062,
		0.927326, 0.190517, 0.322134,
		35.536484, 40.292007, 21.210127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848160, 40.831081, 21.371027>,  <34.887356, 40.158646, 20.984634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848160, 40.831081, 21.371027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231216, 40.787323, 21.264471>,  <35.461048, 40.761066, 21.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231216, 40.787323, 21.264471>,  <34.848160, 40.831081, 21.371027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231216, 40.787323, 21.264471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081996, 0.990329, -0.111921,
		0.276055, 0.085337, 0.957346,
		0.957638, -0.109395, -0.266388,
		35.518509, 40.754505, 21.184555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092365, 41.429005, 21.575258>,  <34.848160, 40.831081, 21.371027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092365, 41.429005, 21.575258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396198, 41.308792, 21.344530>,  <35.578499, 41.236664, 21.206093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396198, 41.308792, 21.344530>,  <35.092365, 41.429005, 21.575258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396198, 41.308792, 21.344530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201643, 0.951963, -0.230448,
		0.618369, 0.058731, 0.783691,
		0.759579, -0.300527, -0.576821,
		35.624073, 41.218636, 21.171484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677662, 41.794189, 21.811171>,  <35.092365, 41.429005, 21.575258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677662, 41.794189, 21.811171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727779, 41.703941, 21.424721>,  <35.757851, 41.649792, 21.192850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727779, 41.703941, 21.424721>,  <35.677662, 41.794189, 21.811171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727779, 41.703941, 21.424721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111182, 0.970858, -0.212306,
		0.985871, -0.080816, 0.146723,
		0.125289, -0.225619, -0.966125,
		35.765366, 41.636257, 21.134884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246151, 42.199032, 21.608452>,  <35.677662, 41.794189, 21.811171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246151, 42.199032, 21.608452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036251, 42.123634, 21.276403>,  <35.910309, 42.078396, 21.077173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036251, 42.123634, 21.276403>,  <36.246151, 42.199032, 21.608452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036251, 42.123634, 21.276403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053714, 0.965900, -0.253284,
		0.849558, -0.177500, -0.496734,
		-0.524753, -0.188498, -0.830122,
		35.878826, 42.067085, 21.027367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585342, 42.562729, 21.124657>,  <36.246151, 42.199032, 21.608452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585342, 42.562729, 21.124657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239315, 42.476940, 20.943256>,  <36.031700, 42.425465, 20.834415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239315, 42.476940, 20.943256>,  <36.585342, 42.562729, 21.124657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239315, 42.476940, 20.943256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120137, 0.966266, -0.227810,
		0.487063, -0.142588, -0.861649,
		-0.865065, -0.214473, -0.453502,
		35.979797, 42.412598, 20.807205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528076, 42.976322, 20.576521>,  <36.585342, 42.562729, 21.124657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528076, 42.976322, 20.576521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139835, 42.890949, 20.621017>,  <35.906891, 42.839725, 20.647717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139835, 42.890949, 20.621017>,  <36.528076, 42.976322, 20.576521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139835, 42.890949, 20.621017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235503, 0.937554, -0.255991,
		-0.049660, -0.274664, -0.960257,
		-0.970604, -0.213431, 0.111243,
		35.848656, 42.826920, 20.654390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180126, 43.038937, 19.854071>,  <36.528076, 42.976322, 20.576521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180126, 43.038937, 19.854071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901672, 43.077263, 20.138666>,  <35.734600, 43.100258, 20.309423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901672, 43.077263, 20.138666>,  <36.180126, 43.038937, 19.854071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901672, 43.077263, 20.138666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270048, 0.883317, -0.383178,
		-0.665183, -0.458879, -0.589034,
		-0.696137, 0.095816, 0.711487,
		35.692833, 43.106007, 20.352112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608112, 43.415962, 19.471792>,  <36.180126, 43.038937, 19.854071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608112, 43.415962, 19.471792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492710, 43.446198, 19.853588>,  <35.423470, 43.464340, 20.082666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492710, 43.446198, 19.853588>,  <35.608112, 43.415962, 19.471792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492710, 43.446198, 19.853588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414606, 0.888708, -0.195701,
		-0.863057, -0.452198, -0.225054,
		-0.288503, 0.075592, 0.954490,
		35.406158, 43.468876, 20.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813919, 43.549458, 19.514902>,  <35.608112, 43.415962, 19.471792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813919, 43.549458, 19.514902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986176, 43.699425, 19.843288>,  <35.089531, 43.789406, 20.040319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986176, 43.699425, 19.843288>,  <34.813919, 43.549458, 19.514902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986176, 43.699425, 19.843288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311192, 0.915534, -0.254868,
		-0.847175, -0.145719, 0.510941,
		0.430645, 0.374919, 0.820964,
		35.115368, 43.811901, 20.089577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370770, 44.007938, 19.864805>,  <34.813919, 43.549458, 19.514902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370770, 44.007938, 19.864805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740864, 44.110783, 19.976404>,  <34.962921, 44.172489, 20.043364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740864, 44.110783, 19.976404>,  <34.370770, 44.007938, 19.864805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740864, 44.110783, 19.976404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253457, 0.966066, -0.049763,
		-0.282323, -0.024671, 0.959002,
		0.925232, 0.257115, 0.278995,
		35.018433, 44.187916, 20.060102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306042, 44.625557, 20.295202>,  <34.370770, 44.007938, 19.864805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306042, 44.625557, 20.295202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657825, 44.628845, 20.104839>,  <34.868896, 44.630817, 19.990622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657825, 44.628845, 20.104839>,  <34.306042, 44.625557, 20.295202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657825, 44.628845, 20.104839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151859, 0.952446, -0.264168,
		0.451106, 0.304595, 0.838884,
		0.879456, 0.008224, -0.475909,
		34.921661, 44.631313, 19.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735458, 45.118671, 20.620823>,  <34.306042, 44.625557, 20.295202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735458, 45.118671, 20.620823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778553, 45.053963, 20.228451>,  <34.804409, 45.015137, 19.993027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778553, 45.053963, 20.228451>,  <34.735458, 45.118671, 20.620823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778553, 45.053963, 20.228451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160005, 0.970989, -0.177705,
		0.981219, 0.176098, 0.078726,
		0.107736, -0.161771, -0.980930,
		34.810875, 45.005432, 19.934172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260098, 45.398819, 20.106815>,  <34.735458, 45.118671, 20.620823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260098, 45.398819, 20.106815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573860, 45.244770, 20.301294>,  <35.762119, 45.152340, 20.417982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573860, 45.244770, 20.301294>,  <35.260098, 45.398819, 20.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573860, 45.244770, 20.301294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594754, 0.244602, -0.765792,
		0.176000, 0.889859, 0.420921,
		0.784405, -0.385124, 0.486198,
		35.809181, 45.129234, 20.447153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644779, 45.913254, 20.094124>,  <35.260098, 45.398819, 20.106815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644779, 45.913254, 20.094124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864052, 45.581825, 20.139683>,  <35.995617, 45.382969, 20.167017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864052, 45.581825, 20.139683>,  <35.644779, 45.913254, 20.094124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864052, 45.581825, 20.139683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606646, 0.300170, -0.736124,
		0.575740, 0.472625, 0.667195,
		0.548182, -0.828567, 0.113896,
		36.028507, 45.333256, 20.173851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013275, 46.487976, 20.379339>,  <35.644779, 45.913254, 20.094124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013275, 46.487976, 20.379339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687725, 46.711136, 20.444263>,  <35.492393, 46.845032, 20.483219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687725, 46.711136, 20.444263>,  <36.013275, 46.487976, 20.379339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687725, 46.711136, 20.444263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391323, -0.732813, 0.556644,
		0.429498, 0.389524, 0.814741,
		-0.813878, 0.557904, 0.162312,
		35.443562, 46.878506, 20.492956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988510, 46.212467, 21.018072>,  <36.013275, 46.487976, 20.379339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988510, 46.212467, 21.018072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635536, 46.392838, 20.964449>,  <35.423752, 46.501060, 20.932274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635536, 46.392838, 20.964449>,  <35.988510, 46.212467, 21.018072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635536, 46.392838, 20.964449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451930, -0.733451, 0.507748,
		0.130630, 0.508641, 0.851011,
		-0.882437, 0.450925, -0.134059,
		35.370804, 46.528114, 20.924231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762764, 46.439224, 21.636454>,  <35.988510, 46.212467, 21.018072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762764, 46.439224, 21.636454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443386, 46.386314, 21.401512>,  <35.251759, 46.354568, 21.260548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443386, 46.386314, 21.401512>,  <35.762764, 46.439224, 21.636454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443386, 46.386314, 21.401512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314369, -0.740420, 0.594096,
		-0.513471, 0.659001, 0.549605,
		-0.798449, -0.132273, -0.587353,
		35.203850, 46.346634, 21.225306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293755, 46.291981, 22.078190>,  <35.762764, 46.439224, 21.636454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293755, 46.291981, 22.078190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148697, 46.170406, 21.725800>,  <35.061661, 46.097462, 21.514366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148697, 46.170406, 21.725800>,  <35.293755, 46.291981, 22.078190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148697, 46.170406, 21.725800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547678, -0.695348, 0.465338,
		-0.754016, 0.651241, 0.085706,
		-0.362643, -0.303933, -0.880974,
		35.039906, 46.079227, 21.461508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624180, 46.319752, 22.192566>,  <35.293755, 46.291981, 22.078190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624180, 46.319752, 22.192566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720116, 46.036873, 21.926527>,  <34.777679, 45.867146, 21.766905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720116, 46.036873, 21.926527>,  <34.624180, 46.319752, 22.192566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720116, 46.036873, 21.926527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647516, -0.626975, 0.433156,
		-0.723325, 0.326772, -0.608294,
		0.239842, -0.707193, -0.665097,
		34.792068, 45.824715, 21.726997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985252, 46.051479, 21.993231>,  <34.624180, 46.319752, 22.192566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985252, 46.051479, 21.993231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253273, 45.764240, 21.918009>,  <34.414085, 45.591896, 21.872875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253273, 45.764240, 21.918009>,  <33.985252, 46.051479, 21.993231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253273, 45.764240, 21.918009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593342, -0.670342, 0.445630,
		-0.446068, -0.187014, -0.875242,
		0.670051, -0.718099, -0.188055,
		34.454288, 45.548809, 21.861591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542511, 45.446968, 21.779751>,  <33.985252, 46.051479, 21.993231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542511, 45.446968, 21.779751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911598, 45.345032, 21.895443>,  <34.133049, 45.283871, 21.964859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911598, 45.345032, 21.895443>,  <33.542511, 45.446968, 21.779751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911598, 45.345032, 21.895443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369266, -0.799697, 0.473420,
		0.110647, -0.543634, -0.831997,
		0.922713, -0.254845, 0.289230,
		34.188412, 45.268578, 21.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656147, 44.757423, 21.569054>,  <33.542511, 45.446968, 21.779751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656147, 44.757423, 21.569054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930550, 44.794662, 21.857698>,  <34.095192, 44.817005, 22.030886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930550, 44.794662, 21.857698>,  <33.656147, 44.757423, 21.569054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930550, 44.794662, 21.857698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318071, -0.853624, 0.412501,
		0.654387, -0.512504, -0.555984,
		0.686009, 0.093094, 0.721613,
		34.136353, 44.822590, 22.074183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986191, 44.152550, 21.582182>,  <33.656147, 44.757423, 21.569054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986191, 44.152550, 21.582182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067108, 44.312424, 21.939802>,  <34.115658, 44.408348, 22.154375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067108, 44.312424, 21.939802>,  <33.986191, 44.152550, 21.582182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067108, 44.312424, 21.939802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137331, -0.892329, 0.429988,
		0.969647, -0.209767, -0.125627,
		0.202298, 0.399684, 0.894052,
		34.127796, 44.432327, 22.208017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395302, 43.647705, 21.876923>,  <33.986191, 44.152550, 21.582182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395302, 43.647705, 21.876923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287750, 43.870617, 22.191156>,  <34.223221, 44.004364, 22.379698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287750, 43.870617, 22.191156>,  <34.395302, 43.647705, 21.876923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287750, 43.870617, 22.191156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019043, -0.818539, 0.574135,
		0.962985, 0.139414, 0.230701,
		-0.268880, 0.557276, 0.785587,
		34.207085, 44.037800, 22.426832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855106, 43.613091, 22.436266>,  <34.395302, 43.647705, 21.876923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855106, 43.613091, 22.436266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514622, 43.702099, 22.626390>,  <34.310329, 43.755505, 22.740465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514622, 43.702099, 22.626390>,  <34.855106, 43.613091, 22.436266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514622, 43.702099, 22.626390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178301, -0.729182, 0.660684,
		0.493606, 0.647131, 0.581012,
		-0.851212, 0.222522, 0.475313,
		34.259258, 43.768856, 22.768984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074718, 43.631893, 23.141314>,  <34.855106, 43.613091, 22.436266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074718, 43.631893, 23.141314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675751, 43.604252, 23.149050>,  <34.436371, 43.587666, 23.153692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675751, 43.604252, 23.149050>,  <35.074718, 43.631893, 23.141314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675751, 43.604252, 23.149050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056437, -0.588936, 0.806206,
		-0.044320, 0.805220, 0.591318,
		-0.997422, -0.069103, 0.019342,
		34.376526, 43.583523, 23.154852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040115, 43.453094, 23.799248>,  <35.074718, 43.631893, 23.141314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040115, 43.453094, 23.799248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689449, 43.356689, 23.632698>,  <34.479050, 43.298847, 23.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689449, 43.356689, 23.632698>,  <35.040115, 43.453094, 23.799248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689449, 43.356689, 23.632698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045054, -0.820539, 0.569811,
		-0.478983, 0.518294, 0.708481,
		-0.876667, -0.241011, -0.416376,
		34.426449, 43.284386, 23.507786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582947, 43.331253, 24.397871>,  <35.040115, 43.453094, 23.799248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582947, 43.331253, 24.397871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388069, 43.147972, 24.100498>,  <34.271141, 43.038002, 23.922075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388069, 43.147972, 24.100498>,  <34.582947, 43.331253, 24.397871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388069, 43.147972, 24.100498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178189, -0.781228, 0.598274,
		-0.854922, 0.423946, 0.298963,
		-0.487194, -0.458205, -0.743431,
		34.241913, 43.010509, 23.877468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865250, 43.078495, 24.688944>,  <34.582947, 43.331253, 24.397871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865250, 43.078495, 24.688944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980045, 42.860832, 24.373594>,  <34.048923, 42.730236, 24.184385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980045, 42.860832, 24.373594>,  <33.865250, 43.078495, 24.688944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980045, 42.860832, 24.373594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289358, -0.833794, 0.470169,
		-0.913186, 0.093188, -0.396747,
		0.286991, -0.544153, -0.788374,
		34.066143, 42.697586, 24.137083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353634, 42.552155, 24.588831>,  <33.865250, 43.078495, 24.688944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353634, 42.552155, 24.588831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681850, 42.408104, 24.411285>,  <33.878780, 42.321674, 24.304758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681850, 42.408104, 24.411285>,  <33.353634, 42.552155, 24.588831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681850, 42.408104, 24.411285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115192, -0.864813, 0.488701,
		-0.559853, -0.349872, -0.751102,
		0.820546, -0.360122, -0.443866,
		33.928013, 42.300068, 24.278126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191521, 41.871552, 24.468212>,  <33.353634, 42.552155, 24.588831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191521, 41.871552, 24.468212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591293, 41.881134, 24.458803>,  <33.831158, 41.886883, 24.453157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591293, 41.881134, 24.458803>,  <33.191521, 41.871552, 24.468212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591293, 41.881134, 24.458803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031988, -0.892302, 0.450304,
		-0.010200, -0.450803, -0.892565,
		0.999436, 0.023958, -0.023522,
		33.891125, 41.888321, 24.451746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365345, 41.249352, 24.050533>,  <33.191521, 41.871552, 24.468212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365345, 41.249352, 24.050533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683907, 41.364464, 24.263298>,  <33.875042, 41.433533, 24.390957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683907, 41.364464, 24.263298>,  <33.365345, 41.249352, 24.050533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683907, 41.364464, 24.263298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048560, -0.907113, 0.418077,
		0.602818, -0.307127, -0.736399,
		0.796400, 0.287783, 0.531910,
		33.922825, 41.450798, 24.422871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930134, 40.700089, 23.922909>,  <33.365345, 41.249352, 24.050533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930134, 40.700089, 23.922909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008400, 40.904480, 24.257719>,  <34.055359, 41.027115, 24.458605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008400, 40.904480, 24.257719>,  <33.930134, 40.700089, 23.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008400, 40.904480, 24.257719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107073, -0.859552, 0.499706,
		0.974808, -0.008153, -0.222899,
		0.195667, 0.510983, 0.837025,
		34.067101, 41.057774, 24.508827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530350, 40.379292, 24.248077>,  <33.930134, 40.700089, 23.922909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530350, 40.379292, 24.248077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363655, 40.590572, 24.544004>,  <34.263638, 40.717342, 24.721561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363655, 40.590572, 24.544004>,  <34.530350, 40.379292, 24.248077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363655, 40.590572, 24.544004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155229, -0.760554, 0.630446,
		0.895674, 0.377574, 0.234961,
		-0.416741, 0.528201, 0.739818,
		34.238632, 40.749031, 24.765949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908512, 40.282845, 24.873556>,  <34.530350, 40.379292, 24.248077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908512, 40.282845, 24.873556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556107, 40.405930, 25.017294>,  <34.344666, 40.479782, 25.103537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556107, 40.405930, 25.017294>,  <34.908512, 40.282845, 24.873556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556107, 40.405930, 25.017294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071422, -0.664346, 0.744004,
		0.467672, 0.681142, 0.563319,
		-0.881012, 0.307716, 0.359345,
		34.291801, 40.498245, 25.125097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904556, 40.130085, 25.550032>,  <34.908512, 40.282845, 24.873556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904556, 40.130085, 25.550032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517147, 40.229591, 25.553402>,  <34.284702, 40.289295, 25.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517147, 40.229591, 25.553402>,  <34.904556, 40.130085, 25.550032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517147, 40.229591, 25.553402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148983, -0.606492, 0.781007,
		0.199395, 0.755171, 0.624466,
		-0.968528, 0.248764, 0.008424,
		34.226589, 40.304222, 25.555929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632381, 40.250965, 26.261915>,  <34.904556, 40.130085, 25.550032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632381, 40.250965, 26.261915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322269, 40.152534, 26.029234>,  <34.136200, 40.093475, 25.889626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322269, 40.152534, 26.029234>,  <34.632381, 40.250965, 26.261915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322269, 40.152534, 26.029234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236313, -0.741080, 0.628455,
		-0.585740, 0.624695, 0.516396,
		-0.775284, -0.246080, -0.581704,
		34.089684, 40.078709, 25.854723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126122, 40.267933, 26.714457>,  <34.632381, 40.250965, 26.261915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126122, 40.267933, 26.714457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002533, 40.053375, 26.400307>,  <33.928379, 39.924641, 26.211817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002533, 40.053375, 26.400307>,  <34.126122, 40.267933, 26.714457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002533, 40.053375, 26.400307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543264, -0.578265, 0.608666,
		-0.780641, 0.614728, -0.112736,
		-0.308973, -0.536395, -0.785376,
		33.909840, 39.892456, 26.164694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318546, 40.297367, 26.709373>,  <34.126122, 40.267933, 26.714457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318546, 40.297367, 26.709373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419094, 39.964172, 26.512217>,  <33.479424, 39.764256, 26.393923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419094, 39.964172, 26.512217>,  <33.318546, 40.297367, 26.709373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419094, 39.964172, 26.512217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583397, -0.536735, 0.609560,
		-0.772310, 0.134329, -0.620881,
		0.251367, -0.832989, -0.492893,
		33.494503, 39.714275, 26.364349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700512, 39.929787, 26.637184>,  <33.318546, 40.297367, 26.709373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700512, 39.929787, 26.637184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985676, 39.655945, 26.576412>,  <33.156773, 39.491642, 26.539949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985676, 39.655945, 26.576412>,  <32.700512, 39.929787, 26.637184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985676, 39.655945, 26.576412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539846, -0.674058, 0.504194,
		-0.447581, -0.277426, -0.850121,
		0.712908, -0.684602, -0.151928,
		33.199547, 39.450565, 26.530834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355358, 39.346558, 26.426365>,  <32.700512, 39.929787, 26.637184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355358, 39.346558, 26.426365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709846, 39.212990, 26.554811>,  <32.922539, 39.132847, 26.631880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709846, 39.212990, 26.554811>,  <32.355358, 39.346558, 26.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709846, 39.212990, 26.554811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436102, -0.835201, 0.335044,
		0.156317, -0.436961, -0.885794,
		0.886217, -0.333924, 0.321115,
		32.975712, 39.112812, 26.651146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292896, 38.573269, 26.358561>,  <32.355358, 39.346558, 26.426365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292896, 38.573269, 26.358561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623428, 38.610519, 26.580732>,  <32.821747, 38.632870, 26.714035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623428, 38.610519, 26.580732>,  <32.292896, 38.573269, 26.358561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623428, 38.610519, 26.580732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257061, -0.815138, 0.519105,
		0.501092, -0.571733, -0.649637,
		0.826333, 0.093123, 0.555429,
		32.871326, 38.638454, 26.747360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618404, 37.927639, 26.352753>,  <32.292896, 38.573269, 26.358561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618404, 37.927639, 26.352753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720284, 38.117813, 26.689583>,  <32.781410, 38.231918, 26.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720284, 38.117813, 26.689583>,  <32.618404, 37.927639, 26.352753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720284, 38.117813, 26.689583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362840, -0.760187, 0.538946,
		0.896369, -0.442805, -0.021107,
		0.254694, 0.475436, 0.842076,
		32.796692, 38.260445, 26.942205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675224, 37.353321, 26.785166>,  <32.618404, 37.927639, 26.352753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675224, 37.353321, 26.785166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681648, 37.664280, 27.036686>,  <32.685501, 37.850857, 27.187597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681648, 37.664280, 27.036686>,  <32.675224, 37.353321, 26.785166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681648, 37.664280, 27.036686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298084, -0.596563, 0.745157,
		0.954404, -0.199399, 0.222153,
		0.016055, 0.777401, 0.628800,
		32.686466, 37.897499, 27.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008785, 37.225121, 27.421862>,  <32.675224, 37.353321, 26.785166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008785, 37.225121, 27.421862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782257, 37.529922, 27.547480>,  <32.646339, 37.712803, 27.622850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782257, 37.529922, 27.547480>,  <33.008785, 37.225121, 27.421862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782257, 37.529922, 27.547480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256332, -0.524984, 0.811594,
		0.783312, 0.379122, 0.492636,
		-0.566319, 0.762009, 0.314045,
		32.612362, 37.758526, 27.641693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034565, 37.144127, 28.156902>,  <33.008785, 37.225121, 27.421862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034565, 37.144127, 28.156902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728420, 37.392345, 28.088604>,  <32.544735, 37.541275, 28.047625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728420, 37.392345, 28.088604>,  <33.034565, 37.144127, 28.156902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728420, 37.392345, 28.088604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504721, -0.414082, 0.757491,
		0.399354, 0.665930, 0.630122,
		-0.765358, 0.620543, -0.170744,
		32.498814, 37.578506, 28.037380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936920, 37.458988, 28.734909>,  <33.034565, 37.144127, 28.156902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936920, 37.458988, 28.734909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591591, 37.456829, 28.533060>,  <32.384392, 37.455532, 28.411951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591591, 37.456829, 28.533060>,  <32.936920, 37.458988, 28.734909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591591, 37.456829, 28.533060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433678, -0.503397, 0.747339,
		-0.258060, 0.864039, 0.432252,
		-0.863324, -0.005400, -0.504621,
		32.332592, 37.455208, 28.381674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457508, 37.585106, 29.268036>,  <32.936920, 37.458988, 28.734909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457508, 37.585106, 29.268036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231339, 37.423714, 28.980286>,  <32.095638, 37.326878, 28.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231339, 37.423714, 28.980286>,  <32.457508, 37.585106, 29.268036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231339, 37.423714, 28.980286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328570, -0.689801, 0.645149,
		-0.756531, 0.601146, 0.257456,
		-0.565422, -0.403483, -0.719374,
		32.061710, 37.302670, 28.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761696, 37.439034, 29.558517>,  <32.457508, 37.585106, 29.268036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761696, 37.439034, 29.558517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752884, 37.198997, 29.238667>,  <31.747597, 37.054977, 29.046755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752884, 37.198997, 29.238667>,  <31.761696, 37.439034, 29.558517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752884, 37.198997, 29.238667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443693, -0.710873, 0.545707,
		-0.895908, 0.366813, -0.250594,
		-0.022032, -0.600090, -0.799629,
		31.746275, 37.018970, 28.998777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125641, 37.186382, 29.452223>,  <31.761696, 37.439034, 29.558517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125641, 37.186382, 29.452223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349497, 36.921040, 29.253521>,  <31.483810, 36.761833, 29.134300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349497, 36.921040, 29.253521>,  <31.125641, 37.186382, 29.452223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349497, 36.921040, 29.253521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394472, -0.740378, 0.544272,
		-0.728824, -0.108648, -0.676026,
		0.559649, -0.663352, -0.496747,
		31.517389, 36.722034, 29.104494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823284, 36.456139, 29.696564>,  <31.125641, 37.186382, 29.452223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823284, 36.456139, 29.696564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166609, 36.357327, 29.516663>,  <31.372602, 36.298038, 29.408722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166609, 36.357327, 29.516663>,  <30.823284, 36.456139, 29.696564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166609, 36.357327, 29.516663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015184, -0.863876, 0.503475,
		-0.512906, -0.438967, -0.737723,
		0.858310, -0.247034, -0.449753,
		31.424103, 36.283215, 29.381737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670784, 35.701012, 29.437983>,  <30.823284, 36.456139, 29.696564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670784, 35.701012, 29.437983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065434, 35.763702, 29.455931>,  <31.302223, 35.801315, 29.466700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065434, 35.763702, 29.455931>,  <30.670784, 35.701012, 29.437983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065434, 35.763702, 29.455931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103449, -0.814624, 0.570690,
		0.125992, -0.558414, -0.819939,
		0.986623, 0.156724, 0.044869,
		31.361420, 35.810719, 29.469391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914669, 35.069115, 29.326204>,  <30.670784, 35.701012, 29.437983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914669, 35.069115, 29.326204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219612, 35.254833, 29.506535>,  <31.402578, 35.366264, 29.614733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219612, 35.254833, 29.506535>,  <30.914669, 35.069115, 29.326204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219612, 35.254833, 29.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218713, -0.840481, 0.495738,
		0.609077, -0.279328, -0.742294,
		0.762358, 0.464292, 0.450825,
		31.448320, 35.394119, 29.641783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454155, 34.591415, 29.344635>,  <30.914669, 35.069115, 29.326204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454155, 34.591415, 29.344635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561752, 34.863998, 29.616886>,  <31.626310, 35.027550, 29.780237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561752, 34.863998, 29.616886>,  <31.454155, 34.591415, 29.344635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561752, 34.863998, 29.616886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426430, -0.717901, 0.550250,
		0.863597, 0.142227, -0.483705,
		0.268992, 0.681461, 0.680628,
		31.642450, 35.068436, 29.821074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083652, 34.310402, 29.532988>,  <31.454155, 34.591415, 29.344635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083652, 34.310402, 29.532988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958595, 34.535175, 29.839315>,  <31.883560, 34.670040, 30.023111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958595, 34.535175, 29.839315>,  <32.083652, 34.310402, 29.532988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958595, 34.535175, 29.839315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520635, -0.572961, 0.632974,
		0.794476, 0.596609, -0.113430,
		-0.312646, 0.561938, 0.765819,
		31.864801, 34.703758, 30.069061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741806, 34.382881, 29.853325>,  <32.083652, 34.310402, 29.532988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741806, 34.382881, 29.853325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459812, 34.496273, 30.113367>,  <32.290615, 34.564308, 30.269392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459812, 34.496273, 30.113367>,  <32.741806, 34.382881, 29.853325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459812, 34.496273, 30.113367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467389, -0.503738, 0.726496,
		0.533429, 0.816020, 0.222632,
		-0.704983, 0.283478, 0.650107,
		32.248318, 34.581318, 30.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115582, 34.593376, 30.466040>,  <32.741806, 34.382881, 29.853325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115582, 34.593376, 30.466040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738194, 34.526722, 30.580656>,  <32.511761, 34.486729, 30.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738194, 34.526722, 30.580656>,  <33.115582, 34.593376, 30.466040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738194, 34.526722, 30.580656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327767, -0.340134, 0.881407,
		-0.049413, 0.925495, 0.375523,
		-0.943465, -0.166637, 0.286540,
		32.455154, 34.476730, 30.666618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018658, 34.913078, 31.149965>,  <33.115582, 34.593376, 30.466040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018658, 34.913078, 31.149965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743687, 34.624081, 31.120422>,  <32.578705, 34.450684, 31.102697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743687, 34.624081, 31.120422>,  <33.018658, 34.913078, 31.149965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743687, 34.624081, 31.120422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250689, -0.331499, 0.909540,
		-0.681619, 0.606724, 0.409002,
		-0.687423, -0.722492, -0.073857,
		32.537460, 34.407333, 31.098265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653835, 35.116150, 30.871347>,  <33.018658, 34.913078, 31.149965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653835, 35.116150, 30.871347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828732, 35.121376, 31.231047>,  <33.933670, 35.124512, 31.446867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828732, 35.121376, 31.231047>,  <33.653835, 35.116150, 30.871347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828732, 35.121376, 31.231047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429490, 0.875472, -0.221556,
		-0.790161, 0.483092, 0.377183,
		0.437245, 0.013068, 0.899247,
		33.959904, 35.125298, 31.500820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460663, 35.748310, 31.130430>,  <33.653835, 35.116150, 30.871347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460663, 35.748310, 31.130430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801983, 35.672066, 31.324564>,  <34.006775, 35.626320, 31.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801983, 35.672066, 31.324564>,  <33.460663, 35.748310, 31.130430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801983, 35.672066, 31.324564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341082, 0.908071, -0.243045,
		-0.394389, 0.372929, 0.839870,
		0.853300, -0.190610, 0.485332,
		34.057972, 35.614883, 31.470163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686497, 36.373325, 31.476099>,  <33.460663, 35.748310, 31.130430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686497, 36.373325, 31.476099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031029, 36.170231, 31.483292>,  <34.237747, 36.048374, 31.487606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031029, 36.170231, 31.483292>,  <33.686497, 36.373325, 31.476099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031029, 36.170231, 31.483292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501368, 0.843746, -0.191632,
		0.082127, 0.174073, 0.981302,
		0.861327, -0.507732, 0.017980,
		34.289429, 36.017910, 31.488686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168999, 36.742592, 31.903204>,  <33.686497, 36.373325, 31.476099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168999, 36.742592, 31.903204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398846, 36.505779, 31.677174>,  <34.536755, 36.363693, 31.541555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398846, 36.505779, 31.677174>,  <34.168999, 36.742592, 31.903204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398846, 36.505779, 31.677174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611515, 0.769463, -0.184327,
		0.543933, -0.239636, 0.804183,
		0.574618, -0.592032, -0.565078,
		34.571232, 36.328171, 31.507650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891270, 36.851631, 32.032486>,  <34.168999, 36.742592, 31.903204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891270, 36.851631, 32.032486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934475, 36.669060, 31.679213>,  <34.960396, 36.559517, 31.467249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934475, 36.669060, 31.679213>,  <34.891270, 36.851631, 32.032486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934475, 36.669060, 31.679213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624496, 0.722377, -0.296946,
		0.773524, -0.519470, 0.363059,
		0.108011, -0.456424, -0.883182,
		34.966877, 36.532131, 31.414257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643730, 36.723579, 31.869354>,  <34.891270, 36.851631, 32.032486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643730, 36.723579, 31.869354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460335, 36.736656, 31.514114>,  <35.350300, 36.744503, 31.300970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460335, 36.736656, 31.514114>,  <35.643730, 36.723579, 31.869354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460335, 36.736656, 31.514114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633661, 0.712696, -0.300896,
		0.623109, -0.700711, -0.347474,
		-0.458484, 0.032690, -0.888101,
		35.322788, 36.746464, 31.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166935, 37.057388, 31.361042>,  <35.643730, 36.723579, 31.869354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166935, 37.057388, 31.361042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824436, 37.055355, 31.154427>,  <35.618935, 37.054134, 31.030457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824436, 37.055355, 31.154427>,  <36.166935, 37.057388, 31.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824436, 37.055355, 31.154427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386520, 0.657080, -0.647184,
		0.342695, -0.753803, -0.560661,
		-0.856249, -0.005080, -0.516539,
		35.567562, 37.053833, 30.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403019, 36.909561, 30.734358>,  <36.166935, 37.057388, 31.361042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403019, 36.909561, 30.734358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042290, 37.079479, 30.702711>,  <35.825851, 37.181431, 30.683723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042290, 37.079479, 30.702711>,  <36.403019, 36.909561, 30.734358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042290, 37.079479, 30.702711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414743, 0.799598, -0.434317,
		-0.121232, -0.424492, -0.897279,
		-0.901827, 0.424793, -0.079118,
		35.771740, 37.206917, 30.678976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288216, 37.110527, 29.966091>,  <36.403019, 36.909561, 30.734358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288216, 37.110527, 29.966091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021873, 37.330910, 30.167318>,  <35.862068, 37.463139, 30.288054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021873, 37.330910, 30.167318>,  <36.288216, 37.110527, 29.966091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021873, 37.330910, 30.167318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303567, 0.816014, -0.491903,
		-0.681529, -0.174823, -0.710602,
		-0.665857, 0.550961, 0.503067,
		35.822117, 37.496197, 30.318239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107994, 37.689205, 29.509935>,  <36.288216, 37.110527, 29.966091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107994, 37.689205, 29.509935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987087, 37.818039, 29.868799>,  <35.914543, 37.895340, 30.084118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987087, 37.818039, 29.868799>,  <36.107994, 37.689205, 29.509935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987087, 37.818039, 29.868799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361438, 0.909628, -0.204790,
		-0.882040, 0.262365, -0.391369,
		-0.302270, 0.322089, 0.897158,
		35.896404, 37.914665, 30.137947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814518, 38.266979, 29.310514>,  <36.107994, 37.689205, 29.509935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814518, 38.266979, 29.310514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869781, 38.323406, 29.702639>,  <35.902939, 38.357262, 29.937914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869781, 38.323406, 29.702639>,  <35.814518, 38.266979, 29.310514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869781, 38.323406, 29.702639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165643, 0.972572, -0.163296,
		-0.976460, 0.184942, 0.111002,
		0.138158, 0.141065, 0.980313,
		35.911228, 38.365726, 29.996733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187904, 38.652699, 29.622980>,  <35.814518, 38.266979, 29.310514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187904, 38.652699, 29.622980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519310, 38.714848, 29.838169>,  <35.718155, 38.752136, 29.967283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519310, 38.714848, 29.838169>,  <35.187904, 38.652699, 29.622980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519310, 38.714848, 29.838169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138801, 0.987735, -0.071511,
		-0.542487, -0.015424, 0.839922,
		0.828518, 0.155376, 0.537975,
		35.767864, 38.761459, 29.999561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023991, 39.157494, 30.112867>,  <35.187904, 38.652699, 29.622980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023991, 39.157494, 30.112867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410347, 39.134403, 30.011900>,  <35.642162, 39.120548, 29.951319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410347, 39.134403, 30.011900>,  <35.023991, 39.157494, 30.112867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410347, 39.134403, 30.011900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014803, 0.960926, -0.276410,
		0.258512, 0.270719, 0.927299,
		0.965895, -0.057729, -0.252418,
		35.700115, 39.117085, 29.936174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299862, 39.750629, 30.472422>,  <35.023991, 39.157494, 30.112867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299862, 39.750629, 30.472422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540668, 39.677216, 30.161581>,  <35.685154, 39.633167, 29.975077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540668, 39.677216, 30.161581>,  <35.299862, 39.750629, 30.472422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540668, 39.677216, 30.161581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226718, 0.893878, -0.386757,
		0.765620, 0.409017, 0.496519,
		0.602017, -0.183539, -0.777103,
		35.721275, 39.622154, 29.928450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727398, 40.318241, 30.390810>,  <35.299862, 39.750629, 30.472422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727398, 40.318241, 30.390810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759636, 40.134563, 30.036942>,  <35.778980, 40.024357, 29.824621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759636, 40.134563, 30.036942>,  <35.727398, 40.318241, 30.390810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759636, 40.134563, 30.036942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023925, 0.888194, -0.458846,
		0.996459, 0.015817, 0.082573,
		0.080599, -0.459197, -0.884670,
		35.783817, 39.996803, 29.771540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151936, 40.810249, 30.110151>,  <35.727398, 40.318241, 30.390810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151936, 40.810249, 30.110151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980762, 40.615417, 29.805620>,  <35.878059, 40.498520, 29.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980762, 40.615417, 29.805620>,  <36.151936, 40.810249, 30.110151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980762, 40.615417, 29.805620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102803, 0.863123, -0.494420,
		0.897944, -0.133312, -0.419433,
		-0.427934, -0.487080, -0.761331,
		35.852383, 40.469292, 29.577221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439541, 41.008141, 29.553411>,  <36.151936, 40.810249, 30.110151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439541, 41.008141, 29.553411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145748, 40.827099, 29.351149>,  <35.969475, 40.718475, 29.229790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145748, 40.827099, 29.351149>,  <36.439541, 41.008141, 29.553411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145748, 40.827099, 29.351149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046284, 0.776790, -0.628057,
		0.677049, -0.437892, -0.591486,
		-0.734481, -0.452602, -0.505658,
		35.925404, 40.691319, 29.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669922, 40.957108, 28.814224>,  <36.439541, 41.008141, 29.553411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669922, 40.957108, 28.814224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270775, 40.942734, 28.836033>,  <36.031288, 40.934109, 28.849117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270775, 40.942734, 28.836033>,  <36.669922, 40.957108, 28.814224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270775, 40.942734, 28.836033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063938, 0.707352, -0.703964,
		-0.013266, -0.705948, -0.708140,
		-0.997866, -0.035938, 0.054521,
		35.971416, 40.931953, 28.852388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398956, 40.859097, 28.081402>,  <36.669922, 40.957108, 28.814224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398956, 40.859097, 28.081402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095387, 41.017029, 28.288530>,  <35.913242, 41.111786, 28.412807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095387, 41.017029, 28.288530>,  <36.398956, 40.859097, 28.081402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095387, 41.017029, 28.288530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173248, 0.644120, -0.745046,
		-0.627703, -0.655149, -0.420438,
		-0.758929, 0.394828, 0.517820,
		35.867706, 41.135479, 28.443876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881588, 40.837032, 27.592066>,  <36.398956, 40.859097, 28.081402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881588, 40.837032, 27.592066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766026, 41.089237, 27.880230>,  <35.696690, 41.240559, 28.053129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766026, 41.089237, 27.880230>,  <35.881588, 40.837032, 27.592066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766026, 41.089237, 27.880230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403168, 0.602389, -0.688899,
		-0.868326, -0.489473, 0.080169,
		-0.288904, 0.630511, 0.720410,
		35.679356, 41.278389, 28.096354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041351, 40.911743, 27.561596>,  <35.881588, 40.837032, 27.592066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041351, 40.911743, 27.561596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237263, 41.229946, 27.704306>,  <35.354809, 41.420868, 27.789930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237263, 41.229946, 27.704306>,  <35.041351, 40.911743, 27.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237263, 41.229946, 27.704306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348340, 0.553687, -0.756366,
		-0.799234, 0.246174, 0.548291,
		0.489780, 0.795505, 0.356773,
		35.384197, 41.468597, 27.811338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711006, 41.575397, 27.322426>,  <35.041351, 40.911743, 27.561596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711006, 41.575397, 27.322426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078892, 41.675381, 27.443523>,  <35.299622, 41.735371, 27.516182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078892, 41.675381, 27.443523>,  <34.711006, 41.575397, 27.322426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078892, 41.675381, 27.443523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104600, 0.587251, -0.802618,
		-0.378408, 0.769843, 0.513955,
		0.919710, 0.249957, 0.302746,
		35.354805, 41.750366, 27.534348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767246, 42.359207, 27.333920>,  <34.711006, 41.575397, 27.322426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767246, 42.359207, 27.333920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112885, 42.173496, 27.256176>,  <35.320267, 42.062069, 27.209530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112885, 42.173496, 27.256176>,  <34.767246, 42.359207, 27.333920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112885, 42.173496, 27.256176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161697, 0.621753, -0.766340,
		0.476642, 0.630765, 0.612329,
		0.864098, -0.464282, -0.194361,
		35.372112, 42.034210, 27.197868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172897, 42.874645, 27.101864>,  <34.767246, 42.359207, 27.333920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172897, 42.874645, 27.101864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398258, 42.564419, 26.987968>,  <35.533474, 42.378284, 26.919630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398258, 42.564419, 26.987968>,  <35.172897, 42.874645, 27.101864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398258, 42.564419, 26.987968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314539, 0.520047, -0.794113,
		0.763963, 0.357845, 0.536942,
		0.563405, -0.775563, -0.284741,
		35.567280, 42.331749, 26.902546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889900, 43.133778, 26.908684>,  <35.172897, 42.874645, 27.101864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889900, 43.133778, 26.908684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819614, 42.796959, 26.704695>,  <35.777443, 42.594868, 26.582300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819614, 42.796959, 26.704695>,  <35.889900, 43.133778, 26.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819614, 42.796959, 26.704695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356158, 0.428567, -0.830351,
		0.917756, -0.327538, 0.224597,
		-0.175716, -0.842051, -0.509974,
		35.766899, 42.544342, 26.551702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372417, 43.210735, 26.413105>,  <35.889900, 43.133778, 26.908684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372417, 43.210735, 26.413105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166340, 42.896606, 26.275797>,  <36.042694, 42.708130, 26.193413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166340, 42.896606, 26.275797>,  <36.372417, 43.210735, 26.413105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166340, 42.896606, 26.275797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334519, 0.184497, -0.924153,
		0.789094, -0.590951, 0.167654,
		-0.515197, -0.785327, -0.343270,
		36.011780, 42.661007, 26.172815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840466, 42.761921, 26.127680>,  <36.372417, 43.210735, 26.413105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840466, 42.761921, 26.127680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494904, 42.721455, 25.930325>,  <36.287567, 42.697174, 25.811911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494904, 42.721455, 25.930325>,  <36.840466, 42.761921, 26.127680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494904, 42.721455, 25.930325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456187, 0.257987, -0.851667,
		0.213450, -0.960837, -0.176725,
		-0.863905, -0.101169, -0.493389,
		36.235733, 42.691105, 25.782309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992439, 42.429966, 25.492973>,  <36.840466, 42.761921, 26.127680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992439, 42.429966, 25.492973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653870, 42.637642, 25.445637>,  <36.450726, 42.762245, 25.417234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653870, 42.637642, 25.445637>,  <36.992439, 42.429966, 25.492973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653870, 42.637642, 25.445637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295760, 0.273552, -0.915257,
		-0.442817, -0.809699, -0.385097,
		-0.846427, 0.519188, -0.118343,
		36.399940, 42.793400, 25.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906101, 42.441505, 24.800577>,  <36.992439, 42.429966, 25.492973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906101, 42.441505, 24.800577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634327, 42.720268, 24.892385>,  <36.471260, 42.887527, 24.947470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634327, 42.720268, 24.892385>,  <36.906101, 42.441505, 24.800577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634327, 42.720268, 24.892385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189042, 0.468519, -0.862991,
		-0.708962, -0.542960, -0.450075,
		-0.679438, 0.696911, 0.229519,
		36.430496, 42.929340, 24.961241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481693, 42.504986, 24.250877>,  <36.906101, 42.441505, 24.800577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481693, 42.504986, 24.250877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445461, 42.848068, 24.453318>,  <36.423721, 43.053917, 24.574781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445461, 42.848068, 24.453318>,  <36.481693, 42.504986, 24.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445461, 42.848068, 24.453318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276398, 0.509876, -0.814636,
		-0.956765, 0.066097, -0.283251,
		-0.090578, 0.857705, 0.506100,
		36.418289, 43.105381, 24.605148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216694, 42.879913, 23.783354>,  <36.481693, 42.504986, 24.250877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216694, 42.879913, 23.783354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369438, 43.146965, 24.038994>,  <36.461086, 43.307198, 24.192377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369438, 43.146965, 24.038994>,  <36.216694, 42.879913, 23.783354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369438, 43.146965, 24.038994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157505, 0.634377, -0.756808,
		-0.910698, 0.389660, 0.137091,
		0.381865, 0.667632, 0.639099,
		36.483997, 43.347256, 24.230724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868996, 43.519279, 23.553526>,  <36.216694, 42.879913, 23.783354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868996, 43.519279, 23.553526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185207, 43.608852, 23.781530>,  <36.374935, 43.662594, 23.918333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185207, 43.608852, 23.781530>,  <35.868996, 43.519279, 23.553526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185207, 43.608852, 23.781530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391450, 0.531041, -0.751507,
		-0.470985, 0.817222, 0.332148,
		0.790532, 0.223929, 0.570013,
		36.422367, 43.676033, 23.952534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841896, 44.184193, 23.749117>,  <35.868996, 43.519279, 23.553526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841896, 44.184193, 23.749117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219116, 44.051376, 23.741138>,  <36.445450, 43.971687, 23.736351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219116, 44.051376, 23.741138>,  <35.841896, 44.184193, 23.749117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219116, 44.051376, 23.741138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179896, 0.559531, -0.809051,
		0.279798, 0.759390, 0.587401,
		0.943054, -0.332041, -0.019945,
		36.502033, 43.951763, 23.735155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196407, 44.762833, 23.603279>,  <35.841896, 44.184193, 23.749117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196407, 44.762833, 23.603279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456631, 44.464283, 23.547140>,  <36.612762, 44.285152, 23.513456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456631, 44.464283, 23.547140>,  <36.196407, 44.762833, 23.603279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456631, 44.464283, 23.547140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452703, 0.529489, -0.717427,
		0.609784, 0.403191, 0.682350,
		0.650556, -0.746377, -0.140348,
		36.651798, 44.240368, 23.505035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755222, 45.060867, 23.209703>,  <36.196407, 44.762833, 23.603279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755222, 45.060867, 23.209703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895161, 44.689560, 23.159224>,  <36.979126, 44.466778, 23.128937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895161, 44.689560, 23.159224>,  <36.755222, 45.060867, 23.209703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895161, 44.689560, 23.159224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623769, 0.331330, -0.707908,
		0.698940, 0.168944, 0.694939,
		0.349851, -0.928267, -0.126198,
		37.000114, 44.411079, 23.121365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510571, 45.121338, 23.257767>,  <36.755222, 45.060867, 23.209703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510571, 45.121338, 23.257767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431026, 44.788727, 23.050299>,  <37.383301, 44.589161, 22.925817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431026, 44.788727, 23.050299>,  <37.510571, 45.121338, 23.257767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431026, 44.788727, 23.050299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522559, 0.357764, -0.773910,
		0.829088, -0.424934, 0.363378,
		-0.198857, -0.831526, -0.518671,
		37.371368, 44.539268, 22.894697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085926, 44.866337, 23.043289>,  <37.510571, 45.121338, 23.257767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085926, 44.866337, 23.043289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822571, 44.688595, 22.800282>,  <37.664558, 44.581951, 22.654478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822571, 44.688595, 22.800282>,  <38.085926, 44.866337, 23.043289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822571, 44.688595, 22.800282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626704, 0.123389, -0.769427,
		0.416860, -0.887313, 0.197242,
		-0.658385, -0.444355, -0.607518,
		37.625057, 44.555286, 22.618027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366798, 44.281208, 22.755333>,  <38.085926, 44.866337, 23.043289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366798, 44.281208, 22.755333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094189, 44.421398, 22.498369>,  <37.930622, 44.505512, 22.344191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094189, 44.421398, 22.498369>,  <38.366798, 44.281208, 22.755333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094189, 44.421398, 22.498369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717598, 0.148004, -0.680549,
		-0.143435, -0.924805, -0.352367,
		-0.681527, 0.350472, -0.642410,
		37.889732, 44.526539, 22.305647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950485, 44.564602, 22.209070>,  <38.366798, 44.281208, 22.755333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950485, 44.564602, 22.209070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340878, 44.487370, 22.168713>,  <39.575111, 44.441029, 22.144499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340878, 44.487370, 22.168713>,  <38.950485, 44.564602, 22.209070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340878, 44.487370, 22.168713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023618, -0.366611, 0.930075,
		-0.216569, -0.910118, -0.353245,
		0.975981, -0.193083, -0.100892,
		39.633671, 44.429443, 22.138445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964207, 43.872711, 22.307411>,  <38.950485, 44.564602, 22.209070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964207, 43.872711, 22.307411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349380, 43.967628, 22.358711>,  <39.580486, 44.024578, 22.389490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349380, 43.967628, 22.358711>,  <38.964207, 43.872711, 22.307411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349380, 43.967628, 22.358711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046287, -0.613782, 0.788117,
		0.265732, -0.752970, -0.602016,
		0.962935, 0.237293, 0.128248,
		39.638260, 44.038818, 22.397186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258606, 43.268578, 22.441975>,  <38.964207, 43.872711, 22.307411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258606, 43.268578, 22.441975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514076, 43.536530, 22.593426>,  <39.667358, 43.697300, 22.684296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514076, 43.536530, 22.593426>,  <39.258606, 43.268578, 22.441975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514076, 43.536530, 22.593426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018813, -0.505504, 0.862619,
		0.769248, -0.543809, -0.335455,
		0.638674, 0.669879, 0.378627,
		39.705677, 43.737492, 22.707014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750801, 42.886459, 22.721397>,  <39.258606, 43.268578, 22.441975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750801, 42.886459, 22.721397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785110, 43.246323, 22.892633>,  <39.805698, 43.462242, 22.995375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785110, 43.246323, 22.892633>,  <39.750801, 42.886459, 22.721397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785110, 43.246323, 22.892633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094264, -0.435072, 0.895448,
		0.991845, -0.036454, -0.122124,
		0.085775, 0.899658, 0.428088,
		39.810844, 43.516220, 23.021059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299633, 42.856552, 23.204485>,  <39.750801, 42.886459, 22.721397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299633, 42.856552, 23.204485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098339, 43.179283, 23.328279>,  <39.977562, 43.372921, 23.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098339, 43.179283, 23.328279>,  <40.299633, 42.856552, 23.204485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098339, 43.179283, 23.328279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014293, -0.350322, 0.936520,
		0.864030, 0.475716, 0.164764,
		-0.503238, 0.806826, 0.309488,
		39.947369, 43.421329, 23.421125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643307, 43.101357, 23.767576>,  <40.299633, 42.856552, 23.204485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643307, 43.101357, 23.767576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279701, 43.266396, 23.791082>,  <40.061539, 43.365417, 23.805185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279701, 43.266396, 23.791082>,  <40.643307, 43.101357, 23.767576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279701, 43.266396, 23.791082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103228, -0.359517, 0.927411,
		0.403774, 0.836966, 0.369398,
		-0.909016, 0.412596, 0.058765,
		40.006996, 43.390175, 23.808712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685345, 43.443516, 24.319571>,  <40.643307, 43.101357, 23.767576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685345, 43.443516, 24.319571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287296, 43.447208, 24.280285>,  <40.048466, 43.449425, 24.256714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287296, 43.447208, 24.280285>,  <40.685345, 43.443516, 24.319571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287296, 43.447208, 24.280285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098646, -0.086433, 0.991362,
		0.000659, 0.996215, 0.086922,
		-0.995122, 0.009228, -0.098216,
		39.988758, 43.449978, 24.250820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513935, 43.811821, 24.871687>,  <40.685345, 43.443516, 24.319571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513935, 43.811821, 24.871687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197662, 43.591480, 24.764812>,  <40.007900, 43.459278, 24.700687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197662, 43.591480, 24.764812>,  <40.513935, 43.811821, 24.871687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197662, 43.591480, 24.764812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274046, -0.071807, 0.959032,
		-0.547468, 0.831510, -0.094182,
		-0.790682, -0.550850, -0.267184,
		39.960457, 43.426224, 24.684658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021526, 44.031094, 25.283585>,  <40.513935, 43.811821, 24.871687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021526, 44.031094, 25.283585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901016, 43.666977, 25.170021>,  <39.828709, 43.448509, 25.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901016, 43.666977, 25.170021>,  <40.021526, 44.031094, 25.283585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901016, 43.666977, 25.170021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075068, -0.274176, 0.958745,
		-0.950576, 0.310163, 0.014271,
		-0.301280, -0.910289, -0.283909,
		39.810631, 43.393890, 25.084848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467896, 43.950993, 25.738279>,  <40.021526, 44.031094, 25.283585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467896, 43.950993, 25.738279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533215, 43.582096, 25.598101>,  <39.572407, 43.360760, 25.513994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533215, 43.582096, 25.598101>,  <39.467896, 43.950993, 25.738279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533215, 43.582096, 25.598101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113739, -0.370444, 0.921865,
		-0.979999, -0.110675, -0.165385,
		0.163293, -0.922237, -0.350447,
		39.582203, 43.305424, 25.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928818, 43.477589, 26.047777>,  <39.467896, 43.950993, 25.738279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928818, 43.477589, 26.047777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260159, 43.279179, 25.943634>,  <39.458965, 43.160133, 25.881149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260159, 43.279179, 25.943634>,  <38.928818, 43.477589, 26.047777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260159, 43.279179, 25.943634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016762, -0.442600, 0.896562,
		-0.559951, -0.747037, -0.358316,
		0.828356, -0.496025, -0.260356,
		39.508667, 43.130371, 25.865528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816422, 42.740597, 26.072565>,  <38.928818, 43.477589, 26.047777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816422, 42.740597, 26.072565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207275, 42.793770, 26.138939>,  <39.441788, 42.825676, 26.178762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207275, 42.793770, 26.138939>,  <38.816422, 42.740597, 26.072565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207275, 42.793770, 26.138939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066797, -0.548987, 0.833158,
		0.201853, -0.825192, -0.527554,
		0.977135, 0.132936, 0.165935,
		39.500416, 42.833652, 26.188719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277073, 42.147793, 25.946712>,  <38.816422, 42.740597, 26.072565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277073, 42.147793, 25.946712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318996, 42.427090, 26.229971>,  <39.344151, 42.594669, 26.399925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318996, 42.427090, 26.229971>,  <39.277073, 42.147793, 25.946712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318996, 42.427090, 26.229971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072551, -0.704801, 0.705685,
		0.991842, -0.125341, -0.023213,
		0.104812, 0.698244, 0.708145,
		39.350441, 42.636562, 26.442415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764187, 41.895954, 26.378029>,  <39.277073, 42.147793, 25.946712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764187, 41.895954, 26.378029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555782, 42.171413, 26.579746>,  <39.430740, 42.336689, 26.700777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555782, 42.171413, 26.579746>,  <39.764187, 41.895954, 26.378029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555782, 42.171413, 26.579746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009431, -0.586141, 0.810154,
		0.853497, 0.426856, 0.298892,
		-0.521012, 0.688645, 0.504295,
		39.399479, 42.378006, 26.731035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104805, 41.966713, 27.000484>,  <39.764187, 41.895954, 26.378029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104805, 41.966713, 27.000484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745689, 42.109364, 27.103861>,  <39.530220, 42.194954, 27.165886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745689, 42.109364, 27.103861>,  <40.104805, 41.966713, 27.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745689, 42.109364, 27.103861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023419, -0.547307, 0.836604,
		0.439805, 0.757145, 0.483014,
		-0.897788, 0.356631, 0.258440,
		39.476353, 42.216354, 27.181393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080158, 42.262619, 27.668736>,  <40.104805, 41.966713, 27.000484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080158, 42.262619, 27.668736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707882, 42.143223, 27.584156>,  <39.484516, 42.071587, 27.533407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707882, 42.143223, 27.584156>,  <40.080158, 42.262619, 27.668736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707882, 42.143223, 27.584156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027168, -0.632863, 0.773787,
		-0.364786, 0.714415, 0.597111,
		-0.930695, -0.298489, -0.211451,
		39.428673, 42.053677, 27.520721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797344, 42.046169, 28.296167>,  <40.080158, 42.262619, 27.668736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797344, 42.046169, 28.296167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494114, 41.906170, 28.076054>,  <39.312176, 41.822170, 27.943985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494114, 41.906170, 28.076054>,  <39.797344, 42.046169, 28.296167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494114, 41.906170, 28.076054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111688, -0.761646, 0.638295,
		-0.642527, 0.545339, 0.538298,
		-0.758080, -0.350001, -0.550286,
		39.266689, 41.801170, 27.910967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285717, 42.002254, 28.716831>,  <39.797344, 42.046169, 28.296167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285717, 42.002254, 28.716831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215618, 41.746353, 28.417496>,  <39.173561, 41.592812, 28.237894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215618, 41.746353, 28.417496>,  <39.285717, 42.002254, 28.716831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215618, 41.746353, 28.417496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130115, -0.738385, 0.661709,
		-0.975889, 0.213330, 0.046156,
		-0.175243, -0.639749, -0.748339,
		39.163044, 41.554428, 28.192993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696674, 41.696121, 28.957470>,  <39.285717, 42.002254, 28.716831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696674, 41.696121, 28.957470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821320, 41.446072, 28.671219>,  <38.896107, 41.296043, 28.499468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821320, 41.446072, 28.671219>,  <38.696674, 41.696121, 28.957470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821320, 41.446072, 28.671219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409767, -0.767903, 0.492359,
		-0.857316, 0.139816, -0.495440,
		0.311610, -0.625122, -0.715627,
		38.914803, 41.258533, 28.456532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115040, 41.358315, 28.883442>,  <38.696674, 41.696121, 28.957470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115040, 41.358315, 28.883442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396255, 41.130703, 28.712822>,  <38.564983, 40.994137, 28.610449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396255, 41.130703, 28.712822>,  <38.115040, 41.358315, 28.883442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396255, 41.130703, 28.712822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482527, -0.822293, 0.301666,
		-0.522408, -0.006259, -0.852673,
		0.703035, -0.569030, -0.426552,
		38.607166, 40.959995, 28.584856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732273, 40.704720, 28.606560>,  <38.115040, 41.358315, 28.883442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732273, 40.704720, 28.606560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112370, 40.630013, 28.706285>,  <38.340427, 40.585190, 28.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112370, 40.630013, 28.706285>,  <37.732273, 40.704720, 28.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112370, 40.630013, 28.706285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293123, -0.806982, 0.512697,
		0.105438, -0.560266, -0.821574,
		0.950243, -0.186765, 0.249313,
		38.397442, 40.573982, 28.781080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834305, 39.901749, 28.576515>,  <37.732273, 40.704720, 28.606560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834305, 39.901749, 28.576515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131283, 40.054855, 28.796431>,  <38.309467, 40.146721, 28.928379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131283, 40.054855, 28.796431>,  <37.834305, 39.901749, 28.576515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131283, 40.054855, 28.796431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192797, -0.663881, 0.722559,
		0.641567, -0.642456, -0.419097,
		0.742443, 0.382769, 0.549788,
		38.354015, 40.169685, 28.961367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261234, 39.283932, 28.754103>,  <37.834305, 39.901749, 28.576515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261234, 39.283932, 28.754103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388809, 39.553844, 29.020321>,  <38.465355, 39.715794, 29.180052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388809, 39.553844, 29.020321>,  <38.261234, 39.283932, 28.754103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388809, 39.553844, 29.020321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103440, -0.673239, 0.732154,
		0.942114, -0.302356, -0.144922,
		0.318938, 0.674781, 0.665544,
		38.484489, 39.756279, 29.219984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877956, 39.054203, 29.071184>,  <38.261234, 39.283932, 28.754103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877956, 39.054203, 29.071184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731747, 39.320999, 29.330883>,  <38.644020, 39.481075, 29.486702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731747, 39.320999, 29.330883>,  <38.877956, 39.054203, 29.071184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731747, 39.320999, 29.330883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038461, -0.686093, 0.726497,
		0.930009, 0.290519, 0.225128,
		-0.365520, 0.666990, 0.649246,
		38.622089, 39.521095, 29.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083141, 38.837894, 29.684322>,  <38.877956, 39.054203, 29.071184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083141, 38.837894, 29.684322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816750, 39.103157, 29.820967>,  <38.656914, 39.262314, 29.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816750, 39.103157, 29.820967>,  <39.083141, 38.837894, 29.684322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816750, 39.103157, 29.820967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149639, -0.567395, 0.809735,
		0.730807, 0.488149, 0.477108,
		-0.665980, 0.663154, 0.341610,
		38.616955, 39.302105, 29.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386288, 39.091335, 30.405844>,  <39.083141, 38.837894, 29.684322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386288, 39.091335, 30.405844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987747, 39.118587, 30.385296>,  <38.748623, 39.134937, 30.372967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987747, 39.118587, 30.385296>,  <39.386288, 39.091335, 30.405844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987747, 39.118587, 30.385296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082963, -0.632947, 0.769737,
		0.019926, 0.771192, 0.636291,
		-0.996353, 0.068126, -0.051369,
		38.688843, 39.139027, 30.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183243, 39.080982, 31.106222>,  <39.386288, 39.091335, 30.405844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183243, 39.080982, 31.106222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850658, 38.979652, 30.908432>,  <38.651108, 38.918854, 30.789757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850658, 38.979652, 30.908432>,  <39.183243, 39.080982, 31.106222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850658, 38.979652, 30.908432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229269, -0.654248, 0.720691,
		-0.506079, 0.712591, 0.485899,
		-0.831456, -0.253325, -0.494476,
		38.601223, 38.903656, 30.760090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550564, 39.118710, 31.653149>,  <39.183243, 39.080982, 31.106222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550564, 39.118710, 31.653149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434719, 38.904625, 31.335741>,  <38.365211, 38.776176, 31.145296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434719, 38.904625, 31.335741>,  <38.550564, 39.118710, 31.653149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434719, 38.904625, 31.335741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227036, -0.766978, 0.600167,
		-0.929826, 0.353976, 0.100618,
		-0.289616, -0.535207, -0.793521,
		38.347836, 38.744064, 31.097685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886921, 38.885960, 31.813179>,  <38.550564, 39.118710, 31.653149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886921, 38.885960, 31.813179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008629, 38.630779, 31.530212>,  <38.081654, 38.477673, 31.360432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008629, 38.630779, 31.530212>,  <37.886921, 38.885960, 31.813179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008629, 38.630779, 31.530212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191690, -0.768441, 0.610535,
		-0.933099, -0.050164, -0.356103,
		0.304271, -0.637951, -0.707416,
		38.099911, 38.439396, 31.317987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378590, 38.440155, 31.825373>,  <37.886921, 38.885960, 31.813179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378590, 38.440155, 31.825373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671902, 38.246452, 31.634460>,  <37.847889, 38.130230, 31.519913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671902, 38.246452, 31.634460>,  <37.378590, 38.440155, 31.825373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671902, 38.246452, 31.634460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101868, -0.772284, 0.627057,
		-0.672248, -0.411191, -0.615633,
		0.733284, -0.484251, -0.477279,
		37.891888, 38.101177, 31.491276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216988, 37.709961, 31.905891>,  <37.378590, 38.440155, 31.825373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216988, 37.709961, 31.905891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605270, 37.706593, 31.809851>,  <37.838242, 37.704571, 31.752226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605270, 37.706593, 31.809851>,  <37.216988, 37.709961, 31.905891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605270, 37.706593, 31.809851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154918, -0.741924, 0.652342,
		-0.183633, -0.670431, -0.718889,
		0.970711, -0.008423, -0.240103,
		37.896484, 37.704067, 31.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338310, 37.029713, 31.638575>,  <37.216988, 37.709961, 31.905891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338310, 37.029713, 31.638575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674953, 37.198048, 31.773981>,  <37.876938, 37.299049, 31.855225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674953, 37.198048, 31.773981>,  <37.338310, 37.029713, 31.638575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674953, 37.198048, 31.773981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103564, -0.740897, 0.663586,
		0.530067, -0.523420, -0.667128,
		0.841607, 0.420835, 0.338518,
		37.927437, 37.324299, 31.875536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796566, 36.485859, 31.727261>,  <37.338310, 37.029713, 31.638575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796566, 36.485859, 31.727261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963562, 36.756687, 31.969671>,  <38.063759, 36.919186, 32.115116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963562, 36.756687, 31.969671>,  <37.796566, 36.485859, 31.727261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963562, 36.756687, 31.969671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224567, -0.723123, 0.653194,
		0.880494, -0.136609, -0.453947,
		0.417492, 0.677075, 0.606028,
		38.088810, 36.959808, 32.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537773, 36.290031, 31.874695>,  <37.796566, 36.485859, 31.727261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537773, 36.290031, 31.874695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420914, 36.533962, 32.169384>,  <38.350800, 36.680321, 32.346199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420914, 36.533962, 32.169384>,  <38.537773, 36.290031, 31.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420914, 36.533962, 32.169384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434292, -0.601731, 0.670306,
		0.852081, 0.515779, -0.089051,
		-0.292145, 0.609829, 0.736723,
		38.333271, 36.716911, 32.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090977, 36.320095, 32.354366>,  <38.537773, 36.290031, 31.874695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090977, 36.320095, 32.354366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785309, 36.448689, 32.578041>,  <38.601906, 36.525845, 32.712246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785309, 36.448689, 32.578041>,  <39.090977, 36.320095, 32.354366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785309, 36.448689, 32.578041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327036, -0.554132, 0.765497,
		0.555955, 0.767846, 0.318317,
		-0.764174, 0.321481, 0.559186,
		38.556057, 36.545132, 32.745796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302769, 36.519901, 32.904469>,  <39.090977, 36.320095, 32.354366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302769, 36.519901, 32.904469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926941, 36.439430, 33.015278>,  <38.701447, 36.391148, 33.081764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926941, 36.439430, 33.015278>,  <39.302769, 36.519901, 32.904469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926941, 36.439430, 33.015278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336956, -0.686702, 0.644128,
		0.060647, 0.698546, 0.712990,
		-0.939565, -0.201182, 0.277026,
		38.645073, 36.379074, 33.098385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425930, 36.340942, 33.559574>,  <39.302769, 36.519901, 32.904469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425930, 36.340942, 33.559574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045494, 36.233685, 33.498230>,  <38.817230, 36.169331, 33.461422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045494, 36.233685, 33.498230>,  <39.425930, 36.340942, 33.559574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045494, 36.233685, 33.498230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079145, -0.691421, 0.718104,
		-0.298593, 0.670846, 0.678828,
		-0.951093, -0.268146, -0.153360,
		38.760166, 36.153240, 33.452221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118874, 36.289982, 34.225071>,  <39.425930, 36.340942, 33.559574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118874, 36.289982, 34.225071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902752, 36.066692, 33.973209>,  <38.773079, 35.932720, 33.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902752, 36.066692, 33.973209>,  <39.118874, 36.289982, 34.225071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902752, 36.066692, 33.973209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052031, -0.769008, 0.637118,
		-0.839859, 0.311476, 0.444544,
		-0.540305, -0.558219, -0.629652,
		38.740662, 35.899227, 33.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719875, 35.864723, 34.627560>,  <39.118874, 36.289982, 34.225071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719875, 35.864723, 34.627560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660789, 35.673786, 34.281075>,  <38.625336, 35.559223, 34.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660789, 35.673786, 34.281075>,  <38.719875, 35.864723, 34.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660789, 35.673786, 34.281075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071847, -0.868327, 0.490761,
		-0.986417, 0.134728, 0.093971,
		-0.147717, -0.477343, -0.866212,
		38.616474, 35.530582, 34.021210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229763, 35.323112, 34.799183>,  <38.719875, 35.864723, 34.627560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229763, 35.323112, 34.799183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395916, 35.179604, 34.464821>,  <38.495605, 35.093498, 34.264202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395916, 35.179604, 34.464821>,  <38.229763, 35.323112, 34.799183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395916, 35.179604, 34.464821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028016, -0.923546, 0.382462,
		-0.909218, -0.135447, -0.393671,
		0.415377, -0.358770, -0.835910,
		38.520531, 35.071972, 34.214046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794903, 34.660645, 34.536655>,  <38.229763, 35.323112, 34.799183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794903, 34.660645, 34.536655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163113, 34.647316, 34.380947>,  <38.384037, 34.639320, 34.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163113, 34.647316, 34.380947>,  <37.794903, 34.660645, 34.536655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163113, 34.647316, 34.380947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170238, -0.862589, 0.476402,
		-0.351652, -0.504807, -0.788360,
		0.920521, -0.033319, -0.389268,
		38.439270, 34.637321, 34.264168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848495, 33.990932, 34.195847>,  <37.794903, 34.660645, 34.536655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848495, 33.990932, 34.195847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228008, 34.108067, 34.243286>,  <38.455715, 34.178349, 34.271748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228008, 34.108067, 34.243286>,  <37.848495, 33.990932, 34.195847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228008, 34.108067, 34.243286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195862, -0.839705, 0.506491,
		0.247905, -0.457320, -0.854050,
		0.948779, 0.292838, 0.118596,
		38.512642, 34.195919, 34.278866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262325, 33.412914, 34.058018>,  <37.848495, 33.990932, 34.195847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262325, 33.412914, 34.058018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502384, 33.653648, 34.268776>,  <38.646420, 33.798088, 34.395229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502384, 33.653648, 34.268776>,  <38.262325, 33.412914, 34.058018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502384, 33.653648, 34.268776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187953, -0.746365, 0.638445,
		0.777498, -0.284127, -0.561043,
		0.600143, 0.601839, 0.526895,
		38.682426, 33.834202, 34.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801586, 32.979038, 34.045105>,  <38.262325, 33.412914, 34.058018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801586, 32.979038, 34.045105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850807, 33.239281, 34.344856>,  <38.880341, 33.395428, 34.524708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850807, 33.239281, 34.344856>,  <38.801586, 32.979038, 34.045105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850807, 33.239281, 34.344856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346151, -0.735831, 0.582007,
		0.930074, 0.187778, -0.315757,
		0.123056, 0.650609, 0.749377,
		38.887722, 33.434464, 34.569668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555847, 32.891701, 34.308155>,  <38.801586, 32.979038, 34.045105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555847, 32.891701, 34.308155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357178, 33.058834, 34.612453>,  <39.237976, 33.159115, 34.795033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357178, 33.058834, 34.612453>,  <39.555847, 32.891701, 34.308155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357178, 33.058834, 34.612453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278400, -0.753489, 0.595607,
		0.822078, 0.507612, 0.257911,
		-0.496671, 0.417833, 0.760745,
		39.208176, 33.184185, 34.840675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982342, 32.773960, 34.869995>,  <39.555847, 32.891701, 34.308155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982342, 32.773960, 34.869995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627789, 32.880177, 35.021683>,  <39.415054, 32.943905, 35.112698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627789, 32.880177, 35.021683>,  <39.982342, 32.773960, 34.869995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627789, 32.880177, 35.021683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060522, -0.745646, 0.663589,
		0.458975, 0.611147, 0.644858,
		-0.886385, 0.265542, 0.379221,
		39.361874, 32.959839, 35.135448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171711, 32.847271, 35.566807>,  <39.982342, 32.773960, 34.869995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171711, 32.847271, 35.566807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779297, 32.769787, 35.569775>,  <39.543850, 32.723297, 35.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779297, 32.769787, 35.569775>,  <40.171711, 32.847271, 35.566807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779297, 32.769787, 35.569775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145780, -0.711963, 0.686918,
		-0.127778, 0.674970, 0.726697,
		-0.981031, -0.193711, 0.007424,
		39.484989, 32.711674, 35.572002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067249, 32.676571, 36.208225>,  <40.171711, 32.847271, 35.566807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067249, 32.676571, 36.208225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725086, 32.533382, 36.058491>,  <39.519787, 32.447468, 35.968651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725086, 32.533382, 36.058491>,  <40.067249, 32.676571, 36.208225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725086, 32.533382, 36.058491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070510, -0.796479, 0.600541,
		-0.513128, 0.487315, 0.706557,
		-0.855411, -0.357974, -0.374335,
		39.468464, 32.425991, 35.946190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761547, 32.275097, 36.734276>,  <40.067249, 32.676571, 36.208225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761547, 32.275097, 36.734276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513889, 32.200611, 36.429123>,  <39.365295, 32.155922, 36.246033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513889, 32.200611, 36.429123>,  <39.761547, 32.275097, 36.734276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513889, 32.200611, 36.429123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385204, -0.774552, 0.501684,
		-0.684312, 0.604478, 0.407827,
		-0.619140, -0.186212, -0.762883,
		39.328148, 32.144749, 36.200256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192741, 32.314697, 37.036274>,  <39.761547, 32.275097, 36.734276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192741, 32.314697, 37.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197071, 32.077785, 36.714008>,  <39.199669, 31.935638, 36.520649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197071, 32.077785, 36.714008>,  <39.192741, 32.314697, 37.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197071, 32.077785, 36.714008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376582, -0.748802, 0.545419,
		-0.926320, 0.297494, -0.231146,
		0.010824, -0.592278, -0.805661,
		39.200317, 31.900103, 36.472309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536419, 31.887926, 37.047382>,  <39.192741, 32.314697, 37.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536419, 31.887926, 37.047382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784119, 31.677044, 36.814632>,  <38.932739, 31.550514, 36.674980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784119, 31.677044, 36.814632>,  <38.536419, 31.887926, 37.047382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784119, 31.677044, 36.814632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219524, -0.827758, 0.516358,
		-0.753880, -0.192020, -0.628326,
		0.619253, -0.527204, -0.581878,
		38.969894, 31.518883, 36.640068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268574, 31.266567, 36.718475>,  <38.536419, 31.887926, 37.047382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268574, 31.266567, 36.718475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654747, 31.163841, 36.736294>,  <38.886452, 31.102205, 36.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654747, 31.163841, 36.736294>,  <38.268574, 31.266567, 36.718475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654747, 31.163841, 36.736294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251627, -0.873732, 0.416265,
		-0.067984, -0.413084, -0.908152,
		0.965434, -0.256815, 0.044543,
		38.944378, 31.086798, 36.749657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300499, 30.640762, 36.440994>,  <38.268574, 31.266567, 36.718475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300499, 30.640762, 36.440994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613857, 30.695042, 36.683605>,  <38.801872, 30.727610, 36.829170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613857, 30.695042, 36.683605>,  <38.300499, 30.640762, 36.440994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613857, 30.695042, 36.683605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167576, -0.893617, 0.416373,
		0.598504, -0.427825, -0.677317,
		0.783397, 0.135699, 0.606527,
		38.848877, 30.735752, 36.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808517, 30.117102, 36.329376>,  <38.300499, 30.640762, 36.440994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808517, 30.117102, 36.329376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802532, 30.259426, 36.703152>,  <38.798943, 30.344820, 36.927418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802532, 30.259426, 36.703152>,  <38.808517, 30.117102, 36.329376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802532, 30.259426, 36.703152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280767, -0.898439, 0.337606,
		0.959659, -0.257309, 0.113340,
		-0.014961, 0.355809, 0.934439,
		38.798042, 30.366169, 36.983482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179592, 29.619457, 36.667538>,  <38.808517, 30.117102, 36.329376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179592, 29.619457, 36.667538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959358, 29.809404, 36.942158>,  <38.827217, 29.923372, 37.106930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959358, 29.809404, 36.942158>,  <39.179592, 29.619457, 36.667538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959358, 29.809404, 36.942158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400728, -0.871830, 0.281655,
		0.732306, -0.120045, 0.670312,
		-0.550587, 0.474870, 0.686552,
		38.794182, 29.951866, 37.148125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318817, 29.244528, 37.350563>,  <39.179592, 29.619457, 36.667538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318817, 29.244528, 37.350563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977188, 29.436161, 37.431595>,  <38.772209, 29.551142, 37.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977188, 29.436161, 37.431595>,  <39.318817, 29.244528, 37.350563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977188, 29.436161, 37.431595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359955, -0.825508, 0.434706,
		0.375489, 0.298352, 0.877493,
		-0.854073, 0.479085, 0.202576,
		38.720966, 29.579887, 37.492367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079369, 28.953926, 38.041985>,  <39.318817, 29.244528, 37.350563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079369, 28.953926, 38.041985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776146, 29.143885, 37.863174>,  <38.594212, 29.257860, 37.755890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776146, 29.143885, 37.863174>,  <39.079369, 28.953926, 38.041985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776146, 29.143885, 37.863174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637228, -0.685300, 0.352568,
		-0.138914, 0.552122, 0.822110,
		-0.758052, 0.474895, -0.447025,
		38.548729, 29.286352, 37.729065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645992, 29.149166, 38.533848>,  <39.079369, 28.953926, 38.041985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645992, 29.149166, 38.533848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417389, 29.142076, 38.205688>,  <38.280228, 29.137823, 38.008793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417389, 29.142076, 38.205688>,  <38.645992, 29.149166, 38.533848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417389, 29.142076, 38.205688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587956, -0.688578, 0.424462,
		-0.572435, 0.724946, 0.383108,
		-0.571512, -0.017726, -0.820402,
		38.245934, 29.136759, 37.959568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978352, 29.195080, 38.758698>,  <38.645992, 29.149166, 38.533848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978352, 29.195080, 38.758698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962795, 29.030130, 38.394623>,  <37.953461, 28.931162, 38.176178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962795, 29.030130, 38.394623>,  <37.978352, 29.195080, 38.758698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962795, 29.030130, 38.394623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632835, -0.694757, 0.341808,
		-0.773310, 0.589289, -0.233946,
		-0.038888, -0.412372, -0.910185,
		37.951130, 28.906418, 38.121567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271858, 29.643869, 39.013073>,  <37.978352, 29.195080, 38.758698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271858, 29.643869, 39.013073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440723, 29.849396, 39.311810>,  <37.542042, 29.972712, 39.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440723, 29.849396, 39.311810>,  <37.271858, 29.643869, 39.013073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440723, 29.849396, 39.311810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718182, 0.692292, -0.070324,
		-0.553168, -0.506682, 0.661271,
		0.422161, 0.513814, 0.746844,
		37.567371, 30.003540, 39.535862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930470, 29.227711, 39.511314>,  <37.271858, 29.643869, 39.013073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930470, 29.227711, 39.511314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746460, 28.872801, 39.524750>,  <36.636055, 28.659855, 39.532810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746460, 28.872801, 39.524750>,  <36.930470, 29.227711, 39.511314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746460, 28.872801, 39.524750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831073, -0.443585, -0.335486,
		0.312569, -0.126413, 0.941446,
		-0.460021, -0.887273, 0.033592,
		36.608452, 28.606619, 39.534828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424229, 28.699087, 39.836109>,  <36.930470, 29.227711, 39.511314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424229, 28.699087, 39.836109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169846, 28.510315, 39.591866>,  <37.017216, 28.397051, 39.445320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169846, 28.510315, 39.591866>,  <37.424229, 28.699087, 39.836109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169846, 28.510315, 39.591866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769789, -0.331933, -0.545202,
		0.054617, -0.816763, 0.574382,
		-0.635958, -0.471930, -0.610606,
		36.979057, 28.368736, 39.408684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887283, 28.223421, 39.498894>,  <37.424229, 28.699087, 39.836109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887283, 28.223421, 39.498894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591965, 28.228416, 39.229149>,  <37.414776, 28.231415, 39.067303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591965, 28.228416, 39.229149>,  <37.887283, 28.223421, 39.498894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591965, 28.228416, 39.229149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661047, -0.185158, -0.727141,
		-0.133943, -0.982630, 0.128446,
		-0.738293, 0.012486, -0.674365,
		37.370476, 28.232164, 39.026840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012363, 27.854872, 38.945591>,  <37.887283, 28.223421, 39.498894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012363, 27.854872, 38.945591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758614, 28.107157, 38.766808>,  <37.606365, 28.258528, 38.659538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758614, 28.107157, 38.766808>,  <38.012363, 27.854872, 38.945591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758614, 28.107157, 38.766808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610696, 0.054412, -0.789994,
		-0.473939, -0.774107, -0.419691,
		-0.634376, 0.630713, -0.446956,
		37.568302, 28.296370, 38.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638851, 27.723843, 38.297192>,  <38.012363, 27.854872, 38.945591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638851, 27.723843, 38.297192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411739, 27.952541, 38.060303>,  <37.275471, 28.089760, 37.918167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411739, 27.952541, 38.060303>,  <37.638851, 27.723843, 38.297192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411739, 27.952541, 38.060303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727331, 0.685360, -0.035654,
		0.385502, -0.450987, -0.804984,
		-0.567783, 0.571745, -0.592224,
		37.241405, 28.124065, 37.882637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076809, 28.004496, 37.682503>,  <37.638851, 27.723843, 38.297192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076809, 28.004496, 37.682503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760868, 28.246260, 37.724113>,  <37.571304, 28.391317, 37.749081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760868, 28.246260, 37.724113>,  <38.076809, 28.004496, 37.682503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760868, 28.246260, 37.724113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587051, 0.794185, -0.156975,
		-0.177493, -0.062918, -0.982109,
		-0.789853, 0.604410, 0.104026,
		37.523911, 28.427582, 37.755322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939930, 28.323952, 36.971397>,  <38.076809, 28.004496, 37.682503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939930, 28.323952, 36.971397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897579, 28.515984, 37.319721>,  <37.872169, 28.631203, 37.528717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897579, 28.515984, 37.319721>,  <37.939930, 28.323952, 36.971397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897579, 28.515984, 37.319721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444903, 0.806062, -0.390290,
		-0.889299, 0.346106, -0.298928,
		-0.105873, 0.480078, 0.870813,
		37.865818, 28.660007, 37.580967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590462, 29.016602, 36.807594>,  <37.939930, 28.323952, 36.971397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590462, 29.016602, 36.807594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788002, 29.057825, 37.152962>,  <37.906525, 29.082560, 37.360184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788002, 29.057825, 37.152962>,  <37.590462, 29.016602, 36.807594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788002, 29.057825, 37.152962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402709, 0.852940, -0.332143,
		-0.770675, 0.511735, 0.379720,
		0.493848, 0.103058, 0.863420,
		37.936157, 29.088743, 37.411987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511581, 29.751352, 37.079041>,  <37.590462, 29.016602, 36.807594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511581, 29.751352, 37.079041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834427, 29.597830, 37.258488>,  <38.028133, 29.505716, 37.366158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834427, 29.597830, 37.258488>,  <37.511581, 29.751352, 37.079041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834427, 29.597830, 37.258488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506831, 0.840144, -0.193081,
		-0.302798, 0.383212, 0.872618,
		0.807116, -0.383806, 0.448617,
		38.076561, 29.482689, 37.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697487, 30.289366, 37.535568>,  <37.511581, 29.751352, 37.079041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697487, 30.289366, 37.535568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021854, 30.058813, 37.495186>,  <38.216476, 29.920481, 37.470955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021854, 30.058813, 37.495186>,  <37.697487, 30.289366, 37.535568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021854, 30.058813, 37.495186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579562, 0.814924, 0.002668,
		0.080734, -0.060674, 0.994887,
		0.810919, -0.576384, -0.100956,
		38.265129, 29.885899, 37.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092987, 30.556194, 38.056328>,  <37.697487, 30.289366, 37.535568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092987, 30.556194, 38.056328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314255, 30.370180, 37.779850>,  <38.447014, 30.258572, 37.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314255, 30.370180, 37.779850>,  <38.092987, 30.556194, 38.056328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314255, 30.370180, 37.779850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550291, 0.826886, -0.115927,
		0.625447, -0.316229, 0.713313,
		0.553169, -0.465037, -0.691191,
		38.480206, 30.230669, 37.572495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873901, 30.741701, 38.227272>,  <38.092987, 30.556194, 38.056328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873901, 30.741701, 38.227272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852825, 30.621824, 37.846241>,  <38.840179, 30.549898, 37.617622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852825, 30.621824, 37.846241>,  <38.873901, 30.741701, 38.227272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852825, 30.621824, 37.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655192, 0.709508, -0.259464,
		0.753622, -0.637794, 0.158970,
		-0.052694, -0.299693, -0.952579,
		38.837017, 30.531916, 37.560467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509193, 30.812477, 37.994114>,  <38.873901, 30.741701, 38.227272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509193, 30.812477, 37.994114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248566, 30.833063, 37.691380>,  <39.092190, 30.845415, 37.509739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248566, 30.833063, 37.691380>,  <39.509193, 30.812477, 37.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248566, 30.833063, 37.691380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494931, 0.784937, -0.372717,
		0.574890, -0.617435, -0.536913,
		-0.651571, 0.051464, -0.756840,
		39.053093, 30.848503, 37.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762573, 30.916656, 37.263710>,  <39.509193, 30.812477, 37.994114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762573, 30.916656, 37.263710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505241, 30.753077, 37.004826>,  <39.350842, 30.654928, 36.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505241, 30.753077, 37.004826>,  <39.762573, 30.916656, 37.263710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505241, 30.753077, 37.004826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001821, 0.846194, -0.532871,
		0.765585, -0.341634, -0.545129,
		-0.643332, -0.408951, -0.647212,
		39.312241, 30.630390, 36.810661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096466, 30.889175, 36.559227>,  <39.762573, 30.916656, 37.263710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096466, 30.889175, 36.559227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697777, 30.920645, 36.551785>,  <39.458561, 30.939528, 36.547321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697777, 30.920645, 36.551785>,  <40.096466, 30.889175, 36.559227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697777, 30.920645, 36.551785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070878, 0.739710, -0.669182,
		-0.038887, -0.668311, -0.742865,
		-0.996727, 0.078675, -0.018604,
		39.398758, 30.944248, 36.546204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864441, 30.874086, 35.884308>,  <40.096466, 30.889175, 36.559227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864441, 30.874086, 35.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572407, 31.049992, 36.093525>,  <39.397186, 31.155535, 36.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572407, 31.049992, 36.093525>,  <39.864441, 30.874086, 35.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572407, 31.049992, 36.093525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160614, 0.854401, -0.494169,
		-0.664208, -0.276779, -0.694421,
		-0.730089, 0.439765, 0.523045,
		39.353378, 31.181921, 36.250439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540047, 31.192467, 35.355614>,  <39.864441, 30.874086, 35.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540047, 31.192467, 35.355614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411961, 31.374025, 35.688225>,  <39.335110, 31.482960, 35.887791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411961, 31.374025, 35.688225>,  <39.540047, 31.192467, 35.355614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411961, 31.374025, 35.688225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223295, 0.816852, -0.531875,
		-0.920652, -0.355992, -0.160217,
		-0.320217, 0.453897, 0.831528,
		39.315895, 31.510195, 35.937683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876286, 31.504715, 35.178535>,  <39.540047, 31.192467, 35.355614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876286, 31.504715, 35.178535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988758, 31.694456, 35.512222>,  <39.056244, 31.808300, 35.712437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988758, 31.694456, 35.512222>,  <38.876286, 31.504715, 35.178535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988758, 31.694456, 35.512222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319737, 0.865933, -0.384613,
		-0.904822, -0.158585, 0.395154,
		0.281184, 0.474352, 0.834221,
		39.073112, 31.836761, 35.762489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405178, 31.900465, 35.432232>,  <38.876286, 31.504715, 35.178535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405178, 31.900465, 35.432232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732948, 32.073158, 35.583042>,  <38.929611, 32.176773, 35.673527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732948, 32.073158, 35.583042>,  <38.405178, 31.900465, 35.432232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732948, 32.073158, 35.583042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244183, 0.858033, -0.451835,
		-0.518570, 0.278183, 0.808517,
		0.819427, 0.431734, 0.377022,
		38.978775, 32.202679, 35.696148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184814, 32.508953, 35.669857>,  <38.405178, 31.900465, 35.432232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184814, 32.508953, 35.669857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578350, 32.567135, 35.628090>,  <38.814472, 32.602043, 35.603031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578350, 32.567135, 35.628090>,  <38.184814, 32.508953, 35.669857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578350, 32.567135, 35.628090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176541, 0.885362, -0.430078,
		0.029887, 0.441561, 0.896734,
		0.983840, 0.145457, -0.104414,
		38.873501, 32.610771, 35.596767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360943, 33.170815, 35.879082>,  <38.184814, 32.508953, 35.669857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360943, 33.170815, 35.879082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706264, 33.150620, 35.678223>,  <38.913460, 33.138504, 35.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706264, 33.150620, 35.678223>,  <38.360943, 33.170815, 35.879082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706264, 33.150620, 35.678223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154978, 0.920388, -0.358981,
		0.480294, 0.387733, 0.786753,
		0.863307, -0.050487, -0.502147,
		38.965256, 33.135475, 35.527580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549934, 33.829517, 35.848797>,  <38.360943, 33.170815, 35.879082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549934, 33.829517, 35.848797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780067, 33.651142, 35.574532>,  <38.918148, 33.544117, 35.409973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780067, 33.651142, 35.574532>,  <38.549934, 33.829517, 35.848797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780067, 33.651142, 35.574532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040475, 0.852792, -0.520680,
		0.816919, 0.271811, 0.508686,
		0.575330, -0.445943, -0.685661,
		38.952667, 33.517361, 35.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207127, 34.126633, 35.682671>,  <38.549934, 33.829517, 35.848797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207127, 34.126633, 35.682671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097008, 33.933495, 35.350147>,  <39.030937, 33.817612, 35.150635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097008, 33.933495, 35.350147>,  <39.207127, 34.126633, 35.682671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097008, 33.933495, 35.350147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218580, 0.810638, -0.543221,
		0.936181, -0.331254, -0.117627,
		-0.275297, -0.482842, -0.831309,
		39.014420, 33.788643, 35.100754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481781, 34.483173, 35.182495>,  <39.207127, 34.126633, 35.682671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481781, 34.483173, 35.182495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248299, 34.273300, 34.934624>,  <39.108208, 34.147377, 34.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248299, 34.273300, 34.934624>,  <39.481781, 34.483173, 35.182495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248299, 34.273300, 34.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067023, 0.791712, -0.607207,
		0.809200, -0.312892, -0.497287,
		-0.583698, -0.524681, -0.619682,
		39.073189, 34.115898, 34.748722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788940, 34.526829, 34.565075>,  <39.481781, 34.483173, 35.182495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788940, 34.526829, 34.565075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408165, 34.440681, 34.477966>,  <39.179699, 34.388992, 34.425701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408165, 34.440681, 34.477966>,  <39.788940, 34.526829, 34.565075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408165, 34.440681, 34.477966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058061, 0.825019, -0.562114,
		0.300729, -0.522455, -0.797874,
		-0.951941, -0.215369, -0.217773,
		39.122581, 34.376072, 34.412636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667728, 34.601582, 33.780720>,  <39.788940, 34.526829, 34.565075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667728, 34.601582, 33.780720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298218, 34.605686, 33.933838>,  <39.076511, 34.608150, 34.025707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298218, 34.605686, 33.933838>,  <39.667728, 34.601582, 33.780720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298218, 34.605686, 33.933838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260559, 0.715701, -0.647983,
		-0.280614, -0.698332, -0.658475,
		-0.923778, 0.010261, 0.382792,
		39.021084, 34.608765, 34.048676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994202, 33.917351, 33.780071>,  <39.667728, 34.601582, 33.780720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994202, 33.917351, 33.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263859, 33.896221, 34.074753>,  <40.425655, 33.883541, 34.251564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263859, 33.896221, 34.074753>,  <39.994202, 33.917351, 33.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263859, 33.896221, 34.074753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710988, -0.223750, -0.666657,
		0.200054, 0.973214, -0.113282,
		0.674147, -0.052826, 0.736706,
		40.466103, 33.880375, 34.295765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652344, 34.243462, 33.536076>,  <39.994202, 33.917351, 33.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652344, 34.243462, 33.536076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710186, 33.976254, 33.828056>,  <40.744892, 33.815929, 34.003246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710186, 33.976254, 33.828056>,  <40.652344, 34.243462, 33.536076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710186, 33.976254, 33.828056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693659, -0.457647, -0.556235,
		0.705639, 0.586773, 0.397203,
		0.144605, -0.668025, 0.729954,
		40.753567, 33.775845, 34.047043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329697, 34.261463, 33.675106>,  <40.652344, 34.243462, 33.536076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329697, 34.261463, 33.675106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189175, 33.897202, 33.762093>,  <41.104862, 33.678646, 33.814285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189175, 33.897202, 33.762093>,  <41.329697, 34.261463, 33.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189175, 33.897202, 33.762093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763416, -0.413083, -0.496546,
		0.542013, -0.008425, 0.840328,
		-0.351309, -0.910654, 0.217464,
		41.083782, 33.624004, 33.827332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990818, 33.946999, 33.866364>,  <41.329697, 34.261463, 33.675106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990818, 33.946999, 33.866364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720108, 33.668480, 33.770744>,  <41.557682, 33.501369, 33.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720108, 33.668480, 33.770744>,  <41.990818, 33.946999, 33.866364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720108, 33.668480, 33.770744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698046, -0.503775, -0.508864,
		0.233895, -0.511252, 0.826991,
		-0.676775, -0.696298, -0.239047,
		41.517075, 33.459591, 33.699032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523701, 33.516491, 33.453831>,  <41.990818, 33.946999, 33.866364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523701, 33.516491, 33.453831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186466, 33.302299, 33.473724>,  <41.984127, 33.173786, 33.485661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186466, 33.302299, 33.473724>,  <42.523701, 33.516491, 33.453831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186466, 33.302299, 33.473724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470696, -0.779484, -0.413340,
		0.260097, -0.325073, 0.909218,
		-0.843086, -0.535474, 0.049731,
		41.933540, 33.141659, 33.488644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684067, 32.922058, 33.878677>,  <42.523701, 33.516491, 33.453831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684067, 32.922058, 33.878677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443401, 32.892029, 33.560593>,  <42.299004, 32.874012, 33.369743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443401, 32.892029, 33.560593>,  <42.684067, 32.922058, 33.878677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443401, 32.892029, 33.560593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656277, -0.613959, -0.438583,
		-0.455302, -0.785759, 0.418667,
		-0.601665, -0.075073, -0.795213,
		42.262901, 32.869507, 33.322029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232059, 33.129795, 34.446812>,  <42.684067, 32.922058, 33.878677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232059, 33.129795, 34.446812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168568, 33.515930, 34.363930>,  <43.130474, 33.747612, 34.314201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168568, 33.515930, 34.363930>,  <43.232059, 33.129795, 34.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168568, 33.515930, 34.363930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713144, 0.257237, 0.652116,
		0.682811, -0.044259, -0.729253,
		-0.158729, 0.965334, -0.207208,
		43.120949, 33.805531, 34.301769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908810, 33.451607, 34.349392>,  <43.232059, 33.129795, 34.446812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908810, 33.451607, 34.349392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702206, 33.763645, 34.490627>,  <43.578243, 33.950867, 34.575367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702206, 33.763645, 34.490627>,  <43.908810, 33.451607, 34.349392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702206, 33.763645, 34.490627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690816, 0.135975, 0.710130,
		0.505956, 0.610708, -0.609133,
		-0.516509, 0.780093, 0.353090,
		43.547253, 33.997673, 34.596554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323196, 33.917595, 34.615204>,  <43.908810, 33.451607, 34.349392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323196, 33.917595, 34.615204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007706, 34.013729, 34.841534>,  <43.818413, 34.071411, 34.977329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007706, 34.013729, 34.841534>,  <44.323196, 33.917595, 34.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007706, 34.013729, 34.841534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553988, -0.121106, 0.823669,
		0.266483, 0.963105, -0.037625,
		-0.788723, 0.240338, 0.565821,
		43.771088, 34.085831, 35.011280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502029, 34.558472, 34.968204>,  <44.323196, 33.917595, 34.615204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502029, 34.558472, 34.968204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890068, 34.464386, 34.944237>,  <45.122890, 34.407936, 34.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890068, 34.464386, 34.944237>,  <44.502029, 34.558472, 34.968204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890068, 34.464386, 34.944237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238167, -0.874788, -0.421928,
		0.046826, 0.423581, -0.904647,
		0.970095, -0.235214, -0.059920,
		45.181095, 34.393822, 34.926262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855644, 34.351757, 34.245674>,  <44.502029, 34.558472, 34.968204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855644, 34.351757, 34.245674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017918, 34.175697, 34.566097>,  <45.115280, 34.070061, 34.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017918, 34.175697, 34.566097>,  <44.855644, 34.351757, 34.245674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017918, 34.175697, 34.566097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291237, -0.892980, -0.343172,
		0.866374, -0.094079, -0.490453,
		0.405680, -0.440154, 0.801054,
		45.139622, 34.043652, 34.806412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780113, 35.035828, 33.780834>,  <44.855644, 34.351757, 34.245674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780113, 35.035828, 33.780834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164516, 34.927113, 33.801231>,  <45.395157, 34.861885, 33.813469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164516, 34.927113, 33.801231>,  <44.780113, 35.035828, 33.780834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164516, 34.927113, 33.801231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163117, 0.408230, -0.898188,
		0.223298, 0.871482, 0.436644,
		0.961005, -0.271788, 0.050996,
		45.452820, 34.845577, 33.816532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247101, 35.668327, 33.803875>,  <44.780113, 35.035828, 33.780834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247101, 35.668327, 33.803875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342018, 35.313061, 33.646465>,  <45.398968, 35.099903, 33.552021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342018, 35.313061, 33.646465>,  <45.247101, 35.668327, 33.803875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342018, 35.313061, 33.646465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036741, 0.396598, -0.917257,
		0.970744, 0.232114, 0.061477,
		0.237290, -0.888162, -0.393524,
		45.413204, 35.046612, 33.528408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792892, 35.834614, 33.295341>,  <45.247101, 35.668327, 33.803875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792892, 35.834614, 33.295341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623886, 35.482960, 33.207165>,  <45.522484, 35.271965, 33.154259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623886, 35.482960, 33.207165>,  <45.792892, 35.834614, 33.295341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623886, 35.482960, 33.207165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077818, 0.207132, -0.975213,
		0.903009, -0.429196, -0.019103,
		-0.422515, -0.879140, -0.220441,
		45.497131, 35.219219, 33.141033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207031, 35.335777, 32.976444>,  <45.792892, 35.834614, 33.295341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207031, 35.335777, 32.976444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824451, 35.310734, 32.862408>,  <45.594902, 35.295708, 32.793983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824451, 35.310734, 32.862408>,  <46.207031, 35.335777, 32.976444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824451, 35.310734, 32.862408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266498, 0.211143, -0.940424,
		0.119070, -0.975448, -0.185264,
		-0.956452, -0.062604, -0.285096,
		45.537518, 35.291954, 32.776878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550663, 35.981415, 33.182915>,  <46.207031, 35.335777, 32.976444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550663, 35.981415, 33.182915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339516, 35.805546, 33.473579>,  <46.212826, 35.700024, 33.647980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339516, 35.805546, 33.473579>,  <46.550663, 35.981415, 33.182915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339516, 35.805546, 33.473579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835847, -0.117100, 0.536327,
		-0.150717, 0.890490, 0.429315,
		-0.527867, -0.439675, 0.726665,
		46.181156, 35.673645, 33.691578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757278, 36.336109, 33.717300>,  <46.550663, 35.981415, 33.182915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757278, 36.336109, 33.717300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631344, 35.987206, 33.866989>,  <46.555782, 35.777863, 33.956802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631344, 35.987206, 33.866989>,  <46.757278, 36.336109, 33.717300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.631344, 35.987206, 33.866989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759953, 0.004553, 0.649962,
		-0.568640, 0.489021, 0.661443,
		-0.314834, -0.872260, 0.374222,
		46.536892, 35.725529, 33.979256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622726, 36.414948, 34.397396>,  <46.757278, 36.336109, 33.717300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622726, 36.414948, 34.397396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.743088, 36.039013, 34.332695>,  <46.815304, 35.813454, 34.293873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.743088, 36.039013, 34.332695>,  <46.622726, 36.414948, 34.397396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.743088, 36.039013, 34.332695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837498, 0.179293, 0.516188,
		-0.456131, -0.290792, 0.841061,
		0.300900, -0.939837, -0.161757,
		46.833359, 35.757061, 34.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734287, 35.950592, 35.086079>,  <46.622726, 36.414948, 34.397396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734287, 35.950592, 35.086079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946671, 35.918201, 34.748669>,  <47.074100, 35.898766, 34.546223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.946671, 35.918201, 34.748669>,  <46.734287, 35.950592, 35.086079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946671, 35.918201, 34.748669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759725, 0.486431, 0.431512,
		0.375372, -0.869958, 0.319796,
		0.530956, -0.080979, -0.843521,
		47.105957, 35.893909, 34.495613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.444389, 35.653522, 35.220753>,  <46.734287, 35.950592, 35.086079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.444389, 35.653522, 35.220753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431095, 35.935051, 34.936913>,  <47.423119, 36.103970, 34.766609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431095, 35.935051, 34.936913>,  <47.444389, 35.653522, 35.220753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431095, 35.935051, 34.936913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538686, 0.610652, 0.580450,
		0.841851, -0.362956, -0.399438,
		-0.033240, 0.703824, -0.709597,
		47.421124, 36.146198, 34.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374802, 34.979935, 34.941521>,  <47.444389, 35.653522, 35.220753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374802, 34.979935, 34.941521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744064, 35.005150, 34.789837>,  <47.965622, 35.020279, 34.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744064, 35.005150, 34.789837>,  <47.374802, 34.979935, 34.941521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744064, 35.005150, 34.789837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370748, 0.114686, 0.921625,
		0.101579, -0.991400, 0.082506,
		0.923162, 0.063029, -0.379210,
		48.021011, 35.024063, 34.676075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.561352, 38.636719, 24.595877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436455, 38.355175, 24.340662>,  <38.361515, 38.186249, 24.187534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.436455, 38.355175, 24.340662>,  <38.561352, 38.636719, 24.595877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436455, 38.355175, 24.340662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149667, -0.626782, 0.764686,
		-0.938138, 0.334263, 0.090366,
		-0.312246, -0.703856, -0.638036,
		38.342781, 38.144020, 24.149252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940971, 38.441444, 25.014544>,  <38.561352, 38.636719, 24.595877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940971, 38.441444, 25.014544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997360, 38.166019, 24.730007>,  <38.031193, 38.000763, 24.559286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997360, 38.166019, 24.730007>,  <37.940971, 38.441444, 25.014544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997360, 38.166019, 24.730007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401018, -0.696644, 0.594871,
		-0.905159, 0.201402, -0.374332,
		0.140968, -0.688567, -0.711340,
		38.039650, 37.959450, 24.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354149, 38.067184, 24.867245>,  <37.940971, 38.441444, 25.014544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354149, 38.067184, 24.867245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649502, 37.814461, 24.772911>,  <37.826714, 37.662827, 24.716311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649502, 37.814461, 24.772911>,  <37.354149, 38.067184, 24.867245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649502, 37.814461, 24.772911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381158, -0.679464, 0.626935,
		-0.556343, -0.373024, -0.742519,
		0.738377, -0.631808, -0.235834,
		37.871014, 37.624920, 24.702162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010101, 37.472614, 24.627241>,  <37.354149, 38.067184, 24.867245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010101, 37.472614, 24.627241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370605, 37.340836, 24.739811>,  <37.586906, 37.261768, 24.807354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370605, 37.340836, 24.739811>,  <37.010101, 37.472614, 24.627241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370605, 37.340836, 24.739811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425276, -0.548277, 0.720092,
		-0.082933, -0.768672, -0.634245,
		0.901256, -0.329448, 0.281427,
		37.640984, 37.242001, 24.824240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913483, 36.801449, 24.848423>,  <37.010101, 37.472614, 24.627241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913483, 36.801449, 24.848423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285400, 36.852234, 24.986620>,  <37.508553, 36.882706, 25.069538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285400, 36.852234, 24.986620>,  <36.913483, 36.801449, 24.848423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285400, 36.852234, 24.986620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177427, -0.667787, 0.722897,
		0.322495, -0.733444, -0.598378,
		0.929794, 0.126962, 0.345491,
		37.564339, 36.890324, 25.090267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242397, 36.178719, 24.709801>,  <36.913483, 36.801449, 24.848423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242397, 36.178719, 24.709801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425716, 36.357784, 25.016932>,  <37.535709, 36.465225, 25.201210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425716, 36.357784, 25.016932>,  <37.242397, 36.178719, 24.709801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425716, 36.357784, 25.016932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145177, -0.814585, 0.561582,
		0.876862, -0.368843, -0.308331,
		0.458298, 0.447667, 0.767827,
		37.563206, 36.492085, 25.247280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692291, 35.621254, 24.874851>,  <37.242397, 36.178719, 24.709801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692291, 35.621254, 24.874851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651711, 35.864399, 25.189863>,  <37.627361, 36.010288, 25.378870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651711, 35.864399, 25.189863>,  <37.692291, 35.621254, 24.874851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651711, 35.864399, 25.189863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225705, -0.785038, 0.576865,
		0.968898, -0.119223, 0.216845,
		-0.101456, 0.607867, 0.787531,
		37.621273, 36.046761, 25.426123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996109, 35.264538, 25.441759>,  <37.692291, 35.621254, 24.874851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996109, 35.264538, 25.441759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776485, 35.548016, 25.618975>,  <37.644711, 35.718102, 25.725304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776485, 35.548016, 25.618975>,  <37.996109, 35.264538, 25.441759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776485, 35.548016, 25.618975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319396, -0.667775, 0.672356,
		0.772345, 0.227660, 0.593004,
		-0.549062, 0.708694, 0.443039,
		37.611767, 35.760624, 25.751886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155090, 35.186150, 26.124132>,  <37.996109, 35.264538, 25.441759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155090, 35.186150, 26.124132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803226, 35.376240, 26.131815>,  <37.592110, 35.490292, 26.136425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803226, 35.376240, 26.131815>,  <38.155090, 35.186150, 26.124132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803226, 35.376240, 26.131815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301953, -0.589212, 0.749435,
		0.367465, 0.653446, 0.661799,
		-0.879655, 0.475224, 0.019205,
		37.539330, 35.518806, 26.137577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105099, 35.541107, 26.755690>,  <38.155090, 35.186150, 26.124132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105099, 35.541107, 26.755690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733376, 35.479729, 26.621321>,  <37.510342, 35.442902, 26.540699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733376, 35.479729, 26.621321>,  <38.105099, 35.541107, 26.755690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733376, 35.479729, 26.621321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308330, -0.178297, 0.934421,
		-0.203281, 0.971938, 0.118379,
		-0.929306, -0.153450, -0.335922,
		37.454582, 35.433693, 26.520544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622330, 35.930458, 27.179749>,  <38.105099, 35.541107, 26.755690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622330, 35.930458, 27.179749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421017, 35.631016, 27.007101>,  <37.300228, 35.451351, 26.903511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421017, 35.631016, 27.007101>,  <37.622330, 35.930458, 27.179749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421017, 35.631016, 27.007101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258065, -0.346487, 0.901859,
		-0.824686, 0.565278, -0.018807,
		-0.503284, -0.748604, -0.431621,
		37.270031, 35.406433, 26.877615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905567, 36.038445, 27.594320>,  <37.622330, 35.930458, 27.179749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905567, 36.038445, 27.594320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916840, 35.666428, 27.447775>,  <36.923603, 35.443218, 27.359848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916840, 35.666428, 27.447775>,  <36.905567, 36.038445, 27.594320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916840, 35.666428, 27.447775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276705, -0.359448, 0.891197,
		-0.960542, 0.076257, -0.267479,
		0.028184, -0.930044, -0.366366,
		36.925297, 35.387413, 27.337866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363132, 35.620842, 27.933405>,  <36.905567, 36.038445, 27.594320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363132, 35.620842, 27.933405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558983, 35.319386, 27.757999>,  <36.676491, 35.138512, 27.652756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558983, 35.319386, 27.757999>,  <36.363132, 35.620842, 27.933405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558983, 35.319386, 27.757999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275467, -0.610863, 0.742270,
		-0.827278, -0.242635, -0.506695,
		0.489621, -0.753641, -0.438516,
		36.705868, 35.093292, 27.626446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987499, 35.042877, 28.002569>,  <36.363132, 35.620842, 27.933405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987499, 35.042877, 28.002569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356266, 34.893837, 27.960163>,  <36.577526, 34.804413, 27.934719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356266, 34.893837, 27.960163>,  <35.987499, 35.042877, 28.002569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356266, 34.893837, 27.960163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205887, -0.703083, 0.680650,
		-0.328151, -0.605674, -0.724898,
		0.921915, -0.372603, -0.106017,
		36.632839, 34.782055, 27.928358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866280, 34.293324, 28.030712>,  <35.987499, 35.042877, 28.002569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866280, 34.293324, 28.030712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252464, 34.361790, 28.109278>,  <36.484177, 34.402870, 28.156416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252464, 34.361790, 28.109278>,  <35.866280, 34.293324, 28.030712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252464, 34.361790, 28.109278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012255, -0.723232, 0.690496,
		0.260239, -0.669058, -0.696159,
		0.965466, 0.171163, 0.196413,
		36.542103, 34.413139, 28.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208111, 33.513374, 28.056543>,  <35.866280, 34.293324, 28.030712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208111, 33.513374, 28.056543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476189, 33.742340, 28.245510>,  <36.637035, 33.879719, 28.358891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476189, 33.742340, 28.245510>,  <36.208111, 33.513374, 28.056543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476189, 33.742340, 28.245510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235756, -0.767751, 0.595800,
		0.703741, -0.287929, -0.649496,
		0.670199, 0.572412, 0.472417,
		36.677250, 33.914062, 28.387236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705288, 33.036579, 28.170467>,  <36.208111, 33.513374, 28.056543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705288, 33.036579, 28.170467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808533, 33.347843, 28.399496>,  <36.870480, 33.534603, 28.536913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808533, 33.347843, 28.399496>,  <36.705288, 33.036579, 28.170467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808533, 33.347843, 28.399496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315289, -0.628054, 0.711436,
		0.913219, -0.003108, -0.407457,
		0.258116, 0.778163, 0.572571,
		36.885967, 33.581291, 28.571268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423092, 32.963818, 28.342501>,  <36.705288, 33.036579, 28.170467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423092, 32.963818, 28.342501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258755, 33.200134, 28.620256>,  <37.160152, 33.341923, 28.786911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258755, 33.200134, 28.620256>,  <37.423092, 32.963818, 28.342501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258755, 33.200134, 28.620256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363025, -0.592650, 0.719013,
		0.836316, 0.547480, 0.029012,
		-0.410839, 0.590790, 0.694391,
		37.135502, 33.377373, 28.828573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955879, 32.938126, 28.845554>,  <37.423092, 32.963818, 28.342501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955879, 32.938126, 28.845554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646965, 33.077496, 29.058037>,  <37.461617, 33.161118, 29.185526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646965, 33.077496, 29.058037>,  <37.955879, 32.938126, 28.845554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646965, 33.077496, 29.058037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334440, -0.487943, 0.806264,
		0.540119, 0.800321, 0.260304,
		-0.772283, 0.348422, 0.531207,
		37.415279, 33.182022, 29.217400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202900, 33.151630, 29.443434>,  <37.955879, 32.938126, 28.845554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202900, 33.151630, 29.443434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819267, 33.108627, 29.548204>,  <37.589088, 33.082825, 29.611067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819267, 33.108627, 29.548204>,  <38.202900, 33.151630, 29.443434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819267, 33.108627, 29.548204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281654, -0.267948, 0.921344,
		-0.028871, 0.957416, 0.287265,
		-0.959082, -0.107509, 0.261925,
		37.531544, 33.076374, 29.626781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117767, 33.594395, 30.020903>,  <38.202900, 33.151630, 29.443434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117767, 33.594395, 30.020903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845116, 33.301804, 30.028168>,  <37.681526, 33.126251, 30.032526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.845116, 33.301804, 30.028168>,  <38.117767, 33.594395, 30.020903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845116, 33.301804, 30.028168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321026, -0.276659, 0.905761,
		-0.657516, 0.623221, 0.423400,
		-0.681626, -0.731475, 0.018163,
		37.640629, 33.082359, 30.033617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866943, 33.575283, 30.633297>,  <38.117767, 33.594395, 30.020903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866943, 33.575283, 30.633297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726200, 33.219921, 30.515366>,  <37.641754, 33.006702, 30.444607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726200, 33.219921, 30.515366>,  <37.866943, 33.575283, 30.633297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726200, 33.219921, 30.515366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378624, -0.423133, 0.823166,
		-0.856059, 0.178011, 0.485257,
		-0.351861, -0.888409, -0.294828,
		37.620644, 32.953400, 30.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670982, 33.867607, 30.779158>,  <37.866943, 33.575283, 30.633297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670982, 33.867607, 30.779158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929394, 34.086861, 30.991648>,  <39.084438, 34.218414, 31.119143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929394, 34.086861, 30.991648>,  <38.670982, 33.867607, 30.779158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929394, 34.086861, 30.991648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121849, 0.761072, -0.637120,
		-0.753529, 0.346866, 0.558461,
		0.646024, 0.548136, 0.531224,
		39.123199, 34.251301, 31.151014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400322, 34.551334, 30.764835>,  <38.670982, 33.867607, 30.779158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400322, 34.551334, 30.764835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787930, 34.584923, 30.857744>,  <39.020493, 34.605076, 30.913488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787930, 34.584923, 30.857744>,  <38.400322, 34.551334, 30.764835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787930, 34.584923, 30.857744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123712, 0.648921, -0.750730,
		-0.213768, 0.756207, 0.618429,
		0.969019, 0.083975, 0.232271,
		39.078636, 34.610115, 30.927425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645489, 35.298168, 30.721048>,  <38.400322, 34.551334, 30.764835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645489, 35.298168, 30.721048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994926, 35.103714, 30.712038>,  <39.204590, 34.987041, 30.706631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.994926, 35.103714, 30.712038>,  <38.645489, 35.298168, 30.721048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994926, 35.103714, 30.712038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268858, 0.520697, -0.810302,
		0.405643, 0.701820, 0.585579,
		0.873595, -0.486131, -0.022528,
		39.257004, 34.957874, 30.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182201, 35.674637, 30.939604>,  <38.645489, 35.298168, 30.721048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182201, 35.674637, 30.939604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324219, 35.398975, 30.686935>,  <39.409428, 35.233578, 30.535336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324219, 35.398975, 30.686935>,  <39.182201, 35.674637, 30.939604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324219, 35.398975, 30.686935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548354, 0.700765, -0.456330,
		0.757136, -0.184363, 0.626703,
		0.355041, -0.689158, -0.631670,
		39.430733, 35.192226, 30.497435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818775, 35.866077, 30.924517>,  <39.182201, 35.674637, 30.939604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818775, 35.866077, 30.924517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817036, 35.624081, 30.606030>,  <39.815994, 35.478882, 30.414938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817036, 35.624081, 30.606030>,  <39.818775, 35.866077, 30.924517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817036, 35.624081, 30.606030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469822, 0.701640, -0.535694,
		0.882750, -0.376409, 0.281190,
		-0.004346, -0.604994, -0.796218,
		39.815731, 35.442581, 30.367165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480595, 35.896671, 30.577475>,  <39.818775, 35.866077, 30.924517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480595, 35.896671, 30.577475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223904, 35.761116, 30.302275>,  <40.069889, 35.679783, 30.137156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223904, 35.761116, 30.302275>,  <40.480595, 35.896671, 30.577475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223904, 35.761116, 30.302275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371740, 0.647207, -0.665531,
		0.670822, -0.682844, -0.289348,
		-0.641722, -0.338891, -0.688002,
		40.031387, 35.659451, 30.095875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887733, 35.833099, 30.022615>,  <40.480595, 35.896671, 30.577475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887733, 35.833099, 30.022615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508427, 35.865700, 29.899879>,  <40.280842, 35.885262, 29.826237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508427, 35.865700, 29.899879>,  <40.887733, 35.833099, 30.022615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508427, 35.865700, 29.899879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269569, 0.717243, -0.642570,
		0.167709, -0.692041, -0.702106,
		-0.948265, 0.081501, -0.306841,
		40.223946, 35.890148, 29.807827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847198, 35.804607, 29.252007>,  <40.887733, 35.833099, 30.022615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847198, 35.804607, 29.252007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490181, 35.967304, 29.329912>,  <40.275970, 36.064922, 29.376656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490181, 35.967304, 29.329912>,  <40.847198, 35.804607, 29.252007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490181, 35.967304, 29.329912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200139, 0.744285, -0.637170,
		-0.404123, -0.529720, -0.745709,
		-0.892541, 0.406740, 0.194765,
		40.222420, 36.089325, 29.388342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631855, 35.998253, 28.615446>,  <40.847198, 35.804607, 29.252007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631855, 35.998253, 28.615446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.399502, 36.209770, 28.862980>,  <40.260090, 36.336681, 29.011499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.399502, 36.209770, 28.862980>,  <40.631855, 35.998253, 28.615446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399502, 36.209770, 28.862980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028786, 0.746430, -0.664841,
		-0.813478, -0.404008, -0.418367,
		-0.580883, 0.528790, 0.618834,
		40.225239, 36.368408, 29.048630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123520, 36.287361, 28.225580>,  <40.631855, 35.998253, 28.615446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123520, 36.287361, 28.225580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136539, 36.515938, 28.553577>,  <40.144352, 36.653084, 28.750376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.136539, 36.515938, 28.553577>,  <40.123520, 36.287361, 28.225580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136539, 36.515938, 28.553577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194649, 0.808344, -0.555601,
		-0.980333, -0.141526, 0.137544,
		0.032551, 0.571446, 0.819994,
		40.146305, 36.687370, 28.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592049, 36.701775, 28.098148>,  <40.123520, 36.287361, 28.225580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592049, 36.701775, 28.098148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.796265, 36.872700, 28.396610>,  <39.918793, 36.975254, 28.575687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.796265, 36.872700, 28.396610>,  <39.592049, 36.701775, 28.098148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796265, 36.872700, 28.396610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185723, 0.902089, -0.389542,
		-0.839557, 0.060299, 0.539915,
		0.510540, 0.427317, 0.746156,
		39.949425, 37.000896, 28.620457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265129, 37.265709, 28.137514>,  <39.592049, 36.701775, 28.098148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265129, 37.265709, 28.137514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622715, 37.331028, 28.304443>,  <39.837265, 37.370220, 28.404602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622715, 37.331028, 28.304443>,  <39.265129, 37.265709, 28.137514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622715, 37.331028, 28.304443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098357, 0.837040, -0.538229,
		-0.437210, 0.522205, 0.732223,
		0.893965, 0.163299, 0.417325,
		39.890903, 37.380016, 28.429642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270138, 37.886765, 28.437975>,  <39.265129, 37.265709, 28.137514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270138, 37.886765, 28.437975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661041, 37.814255, 28.393948>,  <39.895584, 37.770748, 28.367531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661041, 37.814255, 28.393948>,  <39.270138, 37.886765, 28.437975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661041, 37.814255, 28.393948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072774, 0.774149, -0.628807,
		0.199195, 0.606494, 0.769732,
		0.977254, -0.181271, -0.110070,
		39.954216, 37.759872, 28.360928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471077, 38.530190, 28.504902>,  <39.270138, 37.886765, 28.437975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471077, 38.530190, 28.504902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768120, 38.343502, 28.312775>,  <39.946346, 38.231487, 28.197498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.768120, 38.343502, 28.312775>,  <39.471077, 38.530190, 28.504902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768120, 38.343502, 28.312775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061407, 0.761615, -0.645113,
		0.666907, 0.449570, 0.594240,
		0.742606, -0.466721, -0.480320,
		39.990902, 38.203487, 28.168678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923409, 39.041218, 28.256983>,  <39.471077, 38.530190, 28.504902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923409, 39.041218, 28.256983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020256, 38.734547, 28.019131>,  <40.078365, 38.550545, 27.876419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020256, 38.734547, 28.019131>,  <39.923409, 39.041218, 28.256983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020256, 38.734547, 28.019131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047162, 0.621442, -0.782039,
		0.969100, 0.161302, 0.186622,
		0.242119, -0.766675, -0.594632,
		40.092892, 38.504543, 27.840740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430397, 39.271587, 27.852997>,  <39.923409, 39.041218, 28.256983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430397, 39.271587, 27.852997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319599, 38.935158, 27.667154>,  <40.253120, 38.733299, 27.555649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319599, 38.935158, 27.667154>,  <40.430397, 39.271587, 27.852997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319599, 38.935158, 27.667154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069601, 0.464695, -0.882731,
		0.958347, -0.276851, -0.070179,
		-0.276997, -0.841078, -0.464607,
		40.236500, 38.682835, 27.527773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955418, 39.065304, 27.245094>,  <40.430397, 39.271587, 27.852997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955418, 39.065304, 27.245094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.605618, 38.891434, 27.159023>,  <40.395737, 38.787113, 27.107380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.605618, 38.891434, 27.159023>,  <40.955418, 39.065304, 27.245094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605618, 38.891434, 27.159023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088373, 0.579025, -0.810506,
		0.476897, -0.689776, -0.544774,
		-0.874505, -0.434671, -0.215178,
		40.343266, 38.761032, 27.094469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952927, 38.974453, 26.510677>,  <40.955418, 39.065304, 27.245094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952927, 38.974453, 26.510677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564491, 38.948315, 26.602518>,  <40.331429, 38.932632, 26.657623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564491, 38.948315, 26.602518>,  <40.952927, 38.974453, 26.510677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564491, 38.948315, 26.602518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233821, 0.454206, -0.859666,
		-0.048113, -0.888497, -0.456353,
		-0.971089, -0.065344, 0.229603,
		40.273163, 38.928711, 26.671398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.081547, 38.335243, 25.611555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895939, 38.552982, 25.891088>,  <39.784573, 38.683624, 26.058809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895939, 38.552982, 25.891088>,  <40.081547, 38.335243, 25.611555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895939, 38.552982, 25.891088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220299, 0.693210, -0.686242,
		-0.857992, -0.472386, -0.201747,
		-0.464024, 0.544346, 0.698834,
		39.756733, 38.716286, 26.100739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390690, 38.507111, 25.310358>,  <40.081547, 38.335243, 25.611555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390690, 38.507111, 25.310358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447216, 38.767368, 25.608805>,  <39.481133, 38.923523, 25.787872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447216, 38.767368, 25.608805>,  <39.390690, 38.507111, 25.310358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447216, 38.767368, 25.608805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325028, 0.742396, -0.585837,
		-0.935086, -0.159720, 0.316391,
		0.141318, 0.650645, 0.746117,
		39.489613, 38.962563, 25.832640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785526, 38.953228, 25.402803>,  <39.390690, 38.507111, 25.310358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785526, 38.953228, 25.402803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088634, 39.164051, 25.556681>,  <39.270500, 39.290546, 25.649008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088634, 39.164051, 25.556681>,  <38.785526, 38.953228, 25.402803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088634, 39.164051, 25.556681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239920, 0.773306, -0.586887,
		-0.606808, 0.352433, 0.712443,
		0.757775, 0.527057, 0.384693,
		39.315968, 39.322166, 25.672089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618267, 39.666435, 25.368038>,  <38.785526, 38.953228, 25.402803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618267, 39.666435, 25.368038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017128, 39.672092, 25.397657>,  <39.256447, 39.675488, 25.415428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017128, 39.672092, 25.397657>,  <38.618267, 39.666435, 25.368038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017128, 39.672092, 25.397657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046051, 0.663356, -0.746885,
		-0.059685, 0.748170, 0.660817,
		0.997154, 0.014147, 0.074047,
		39.316273, 39.676338, 25.419872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876289, 40.435009, 25.463604>,  <38.618267, 39.666435, 25.368038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876289, 40.435009, 25.463604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183865, 40.219765, 25.325521>,  <39.368408, 40.090618, 25.242672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.183865, 40.219765, 25.325521>,  <38.876289, 40.435009, 25.463604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183865, 40.219765, 25.325521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185215, 0.704300, -0.685315,
		0.611907, 0.463027, 0.641229,
		0.768937, -0.538115, -0.345207,
		39.414547, 40.058331, 25.221960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399143, 41.035866, 25.276907>,  <38.876289, 40.435009, 25.463604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399143, 41.035866, 25.276907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482277, 40.694675, 25.085392>,  <39.532158, 40.489960, 24.970484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482277, 40.694675, 25.085392>,  <39.399143, 41.035866, 25.276907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482277, 40.694675, 25.085392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163748, 0.512906, -0.842682,
		0.964362, 0.096734, 0.246271,
		0.207830, -0.852977, -0.478787,
		39.544624, 40.438782, 24.941755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967548, 41.267822, 24.695799>,  <39.399143, 41.035866, 25.276907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967548, 41.267822, 24.695799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842487, 40.906326, 24.578840>,  <39.767452, 40.689426, 24.508665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842487, 40.906326, 24.578840>,  <39.967548, 41.267822, 24.695799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842487, 40.906326, 24.578840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289789, 0.202400, -0.935445,
		0.904583, -0.377202, 0.198614,
		-0.312652, -0.903744, -0.292397,
		39.748692, 40.635204, 24.491121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508373, 40.905853, 24.372704>,  <39.967548, 41.267822, 24.695799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508373, 40.905853, 24.372704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170166, 40.754303, 24.222206>,  <39.967243, 40.663372, 24.131907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170166, 40.754303, 24.222206>,  <40.508373, 40.905853, 24.372704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170166, 40.754303, 24.222206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318304, 0.208104, -0.924865,
		0.428703, -0.901748, -0.055359,
		-0.845515, -0.378872, -0.376245,
		39.916512, 40.640640, 24.109333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756310, 40.515827, 23.901506>,  <40.508373, 40.905853, 24.372704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756310, 40.515827, 23.901506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374168, 40.569519, 23.796215>,  <40.144886, 40.601734, 23.733040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374168, 40.569519, 23.796215>,  <40.756310, 40.515827, 23.901506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374168, 40.569519, 23.796215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293424, 0.326172, -0.898618,
		-0.034764, -0.935732, -0.350995,
		-0.955350, 0.134230, -0.263227,
		40.087563, 40.609787, 23.717247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781414, 40.156353, 23.291187>,  <40.756310, 40.515827, 23.901506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781414, 40.156353, 23.291187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480595, 40.419773, 23.302059>,  <40.300102, 40.577824, 23.308582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480595, 40.419773, 23.302059>,  <40.781414, 40.156353, 23.291187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480595, 40.419773, 23.302059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240789, 0.312896, -0.918758,
		-0.613550, -0.684407, -0.393884,
		-0.752049, 0.658547, 0.027179,
		40.254978, 40.617336, 23.310213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642555, 40.226547, 22.562576>,  <40.781414, 40.156353, 23.291187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642555, 40.226547, 22.562576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448215, 40.530994, 22.734461>,  <40.331612, 40.713661, 22.837591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448215, 40.530994, 22.734461>,  <40.642555, 40.226547, 22.562576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448215, 40.530994, 22.734461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174134, 0.566071, -0.805755,
		-0.856522, -0.316646, -0.407560,
		-0.485847, 0.761117, 0.429714,
		40.302460, 40.759331, 22.863375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207317, 40.475887, 22.071703>,  <40.642555, 40.226547, 22.562576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207317, 40.475887, 22.071703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.211021, 40.795734, 22.311880>,  <40.213245, 40.987640, 22.455986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.211021, 40.795734, 22.311880>,  <40.207317, 40.475887, 22.071703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211021, 40.795734, 22.311880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029181, 0.599996, -0.799470,
		-0.999531, 0.024926, -0.017776,
		0.009262, 0.799614, 0.600442,
		40.213799, 41.035618, 22.492012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646549, 40.907280, 21.914095>,  <40.207317, 40.475887, 22.071703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646549, 40.907280, 21.914095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937008, 41.122486, 22.085325>,  <40.111282, 41.251610, 22.188063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937008, 41.122486, 22.085325>,  <39.646549, 40.907280, 21.914095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937008, 41.122486, 22.085325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174100, 0.458437, -0.871507,
		-0.665132, 0.707369, 0.239223,
		0.726146, 0.538019, 0.428075,
		40.154850, 41.283894, 22.213747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500175, 41.567055, 21.543121>,  <39.646549, 40.907280, 21.914095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500175, 41.567055, 21.543121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856037, 41.579556, 21.725349>,  <40.069553, 41.587055, 21.834686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856037, 41.579556, 21.725349>,  <39.500175, 41.567055, 21.543121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856037, 41.579556, 21.725349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376773, 0.513429, -0.770995,
		-0.258001, 0.857563, 0.444996,
		0.889650, 0.031255, 0.455572,
		40.122932, 41.588932, 21.862020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699486, 42.250824, 21.413160>,  <39.500175, 41.567055, 21.543121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699486, 42.250824, 21.413160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037086, 42.069977, 21.528572>,  <40.239647, 41.961468, 21.597820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037086, 42.069977, 21.528572>,  <39.699486, 42.250824, 21.413160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037086, 42.069977, 21.528572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513985, 0.528106, -0.675961,
		0.153241, 0.718812, 0.678105,
		0.844000, -0.452121, 0.288531,
		40.290287, 41.934341, 21.615131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130085, 42.677822, 21.855095>,  <39.699486, 42.250824, 21.413160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130085, 42.677822, 21.855095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.361229, 42.428345, 21.644539>,  <40.499916, 42.278660, 21.518206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.361229, 42.428345, 21.644539>,  <40.130085, 42.677822, 21.855095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361229, 42.428345, 21.644539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331135, 0.768677, -0.547253,
		0.745944, 0.141927, 0.650711,
		0.577856, -0.623693, -0.526392,
		40.534584, 42.241238, 21.486622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777439, 43.088913, 21.749245>,  <40.130085, 42.677822, 21.855095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777439, 43.088913, 21.749245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751022, 42.790989, 21.483643>,  <40.735172, 42.612236, 21.324282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751022, 42.790989, 21.483643>,  <40.777439, 43.088913, 21.749245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751022, 42.790989, 21.483643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073247, 0.660043, -0.747649,
		0.995125, -0.098016, 0.010962,
		-0.066046, -0.744807, -0.664004,
		40.731209, 42.567547, 21.284441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309643, 43.225037, 21.312243>,  <40.777439, 43.088913, 21.749245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309643, 43.225037, 21.312243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078777, 42.982738, 21.093172>,  <40.940258, 42.837360, 20.961729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078777, 42.982738, 21.093172>,  <41.309643, 43.225037, 21.312243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078777, 42.982738, 21.093172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000691, 0.670295, -0.742094,
		0.816627, -0.428689, -0.386453,
		-0.577165, -0.605747, -0.547677,
		40.905628, 42.801014, 20.928869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564434, 43.211643, 20.673437>,  <41.309643, 43.225037, 21.312243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564434, 43.211643, 20.673437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211143, 43.047535, 20.582582>,  <40.999168, 42.949070, 20.528070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211143, 43.047535, 20.582582>,  <41.564434, 43.211643, 20.673437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211143, 43.047535, 20.582582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060907, 0.379885, -0.923026,
		0.464981, -0.829073, -0.310535,
		-0.883223, -0.410275, -0.227135,
		40.946175, 42.924454, 20.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576355, 43.131401, 20.065910>,  <41.564434, 43.211643, 20.673437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576355, 43.131401, 20.065910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181408, 43.079014, 20.101599>,  <40.944439, 43.047581, 20.123013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181408, 43.079014, 20.101599>,  <41.576355, 43.131401, 20.065910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181408, 43.079014, 20.101599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142610, 0.488792, -0.860666,
		0.069109, -0.862514, -0.501292,
		-0.987363, -0.130969, 0.089223,
		40.885201, 43.039722, 20.128366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337830, 42.716164, 19.478296>,  <41.576355, 43.131401, 20.065910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337830, 42.716164, 19.478296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031372, 42.934444, 19.614079>,  <40.847496, 43.065414, 19.695547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031372, 42.934444, 19.614079>,  <41.337830, 42.716164, 19.478296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031372, 42.934444, 19.614079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053678, 0.472013, -0.879956,
		-0.640422, -0.692395, -0.332338,
		-0.766145, 0.545704, 0.339453,
		40.801529, 43.098156, 19.715914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023712, 42.871597, 18.868202>,  <41.337830, 42.716164, 19.478296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023712, 42.871597, 18.868202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828793, 43.115833, 19.117912>,  <40.711842, 43.262375, 19.267738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828793, 43.115833, 19.117912>,  <41.023712, 42.871597, 18.868202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828793, 43.115833, 19.117912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083637, 0.678979, -0.729378,
		-0.869218, -0.407641, -0.279801,
		-0.487303, 0.610587, 0.624275,
		40.682602, 43.299011, 19.305195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379414, 43.149948, 18.638309>,  <41.023712, 42.871597, 18.868202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379414, 43.149948, 18.638309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579193, 43.386242, 18.891788>,  <40.699062, 43.528019, 19.043877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579193, 43.386242, 18.891788>,  <40.379414, 43.149948, 18.638309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579193, 43.386242, 18.891788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263314, 0.593351, -0.760658,
		-0.825356, 0.546774, 0.140800,
		0.499452, 0.590739, 0.633699,
		40.729031, 43.563465, 19.081898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543194, 43.308296, 18.449348>,  <40.379414, 43.149948, 18.638309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543194, 43.308296, 18.449348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293179, 43.403900, 18.152107>,  <39.143169, 43.461262, 17.973763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293179, 43.403900, 18.152107>,  <39.543194, 43.308296, 18.449348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293179, 43.403900, 18.152107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774286, -0.069045, 0.629059,
		0.099041, 0.968560, 0.228214,
		-0.625038, 0.239006, -0.743104,
		39.105667, 43.475601, 17.929176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063820, 43.882038, 18.731693>,  <39.543194, 43.308296, 18.449348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063820, 43.882038, 18.731693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922226, 43.638447, 18.447769>,  <38.837269, 43.492290, 18.277414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922226, 43.638447, 18.447769>,  <39.063820, 43.882038, 18.731693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922226, 43.638447, 18.447769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687112, -0.345540, 0.639124,
		-0.634483, 0.713963, -0.296122,
		-0.353989, -0.608982, -0.709812,
		38.816029, 43.455753, 18.234825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371849, 43.945183, 18.807987>,  <39.063820, 43.882038, 18.731693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371849, 43.945183, 18.807987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452007, 43.595055, 18.631964>,  <38.500103, 43.384975, 18.526350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452007, 43.595055, 18.631964>,  <38.371849, 43.945183, 18.807987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452007, 43.595055, 18.631964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668205, -0.450598, 0.591999,
		-0.716480, 0.175417, -0.675192,
		0.200393, -0.875323, -0.440059,
		38.512127, 43.332458, 18.499947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744453, 43.585243, 18.859598>,  <38.371849, 43.945183, 18.807987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744453, 43.585243, 18.859598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993690, 43.279812, 18.791830>,  <38.143234, 43.096554, 18.751169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993690, 43.279812, 18.791830>,  <37.744453, 43.585243, 18.859598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993690, 43.279812, 18.791830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425391, -0.512608, 0.745839,
		-0.656355, -0.392655, -0.644221,
		0.623090, -0.763580, -0.169420,
		38.180618, 43.050739, 18.741005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405277, 42.859905, 18.910929>,  <37.744453, 43.585243, 18.859598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405277, 42.859905, 18.910929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783813, 42.768990, 19.002825>,  <38.010937, 42.714439, 19.057962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783813, 42.768990, 19.002825>,  <37.405277, 42.859905, 18.910929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783813, 42.768990, 19.002825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323170, -0.669359, 0.668969,
		0.001726, -0.707317, -0.706894,
		0.946339, -0.227292, 0.229739,
		38.067715, 42.700802, 19.071747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366886, 42.131573, 18.834217>,  <37.405277, 42.859905, 18.910929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366886, 42.131573, 18.834217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697453, 42.219009, 19.041777>,  <37.895794, 42.271473, 19.166311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697453, 42.219009, 19.041777>,  <37.366886, 42.131573, 18.834217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697453, 42.219009, 19.041777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291008, -0.623125, 0.725968,
		0.482029, -0.750955, -0.451348,
		0.826415, 0.218591, 0.518898,
		37.945377, 42.284588, 19.197447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562153, 41.460052, 19.020187>,  <37.366886, 42.131573, 18.834217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562153, 41.460052, 19.020187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756893, 41.712189, 19.262060>,  <37.873737, 41.863472, 19.407185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756893, 41.712189, 19.262060>,  <37.562153, 41.460052, 19.020187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756893, 41.712189, 19.262060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126482, -0.735842, 0.665235,
		0.864277, -0.247391, -0.437975,
		0.486854, 0.630344, 0.604681,
		37.902950, 41.901291, 19.443464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210339, 41.076752, 19.223072>,  <37.562153, 41.460052, 19.020187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210339, 41.076752, 19.223072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167362, 41.358227, 19.504007>,  <38.141579, 41.527111, 19.672567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167362, 41.358227, 19.504007>,  <38.210339, 41.076752, 19.223072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167362, 41.358227, 19.504007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108421, -0.693919, 0.711843,
		0.988282, 0.152627, -0.001742,
		-0.107438, 0.703691, 0.702336,
		38.135132, 41.569336, 19.714708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742119, 41.076244, 19.592569>,  <38.210339, 41.076752, 19.223072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742119, 41.076244, 19.592569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498428, 41.265541, 19.847092>,  <38.352215, 41.379120, 19.999805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.498428, 41.265541, 19.847092>,  <38.742119, 41.076244, 19.592569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498428, 41.265541, 19.847092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038671, -0.783726, 0.619902,
		0.792051, 0.402269, 0.459168,
		-0.609230, 0.473238, 0.636306,
		38.315659, 41.407513, 20.037983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066605, 41.029568, 20.269814>,  <38.742119, 41.076244, 19.592569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066605, 41.029568, 20.269814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698540, 41.150097, 20.369818>,  <38.477699, 41.222416, 20.429821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698540, 41.150097, 20.369818>,  <39.066605, 41.029568, 20.269814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698540, 41.150097, 20.369818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008249, -0.653318, 0.757039,
		0.391450, 0.694537, 0.603644,
		-0.920163, 0.301322, 0.250012,
		38.422489, 41.240494, 20.444820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081402, 41.129524, 20.993088>,  <39.066605, 41.029568, 20.269814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081402, 41.129524, 20.993088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695110, 41.066998, 20.910208>,  <38.463337, 41.029480, 20.860479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695110, 41.066998, 20.910208>,  <39.081402, 41.129524, 20.993088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695110, 41.066998, 20.910208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074209, -0.598682, 0.797542,
		-0.248714, 0.785586, 0.566565,
		-0.965730, -0.156316, -0.207198,
		38.405392, 41.020103, 20.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749092, 41.086285, 21.727837>,  <39.081402, 41.129524, 20.993088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749092, 41.086285, 21.727837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503574, 40.910290, 21.465641>,  <38.356262, 40.804695, 21.308323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503574, 40.910290, 21.465641>,  <38.749092, 41.086285, 21.727837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503574, 40.910290, 21.465641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188889, -0.724334, 0.663069,
		-0.766533, 0.530806, 0.361487,
		-0.613798, -0.439984, -0.655489,
		38.319435, 40.778294, 21.268993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093102, 41.001545, 22.030998>,  <38.749092, 41.086285, 21.727837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093102, 41.001545, 22.030998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122524, 40.720585, 21.747808>,  <38.140179, 40.552010, 21.577894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122524, 40.720585, 21.747808>,  <38.093102, 41.001545, 22.030998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122524, 40.720585, 21.747808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150571, -0.709582, 0.688346,
		-0.985859, 0.055966, -0.157957,
		0.073560, -0.702396, -0.707975,
		38.144592, 40.509865, 21.535416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486198, 40.447762, 22.083963>,  <38.093102, 41.001545, 22.030998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486198, 40.447762, 22.083963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782333, 40.262630, 21.888947>,  <37.960014, 40.151550, 21.771936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782333, 40.262630, 21.888947>,  <37.486198, 40.447762, 22.083963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782333, 40.262630, 21.888947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013625, -0.735432, 0.677462,
		-0.672102, -0.494905, -0.550770,
		0.740333, -0.462828, -0.487542,
		38.004433, 40.123783, 21.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368176, 39.789204, 22.197828>,  <37.486198, 40.447762, 22.083963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368176, 39.789204, 22.197828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740879, 39.744854, 22.059532>,  <37.964500, 39.718243, 21.976555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740879, 39.744854, 22.059532>,  <37.368176, 39.789204, 22.197828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740879, 39.744854, 22.059532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138065, -0.772510, 0.619812,
		-0.335811, -0.625248, -0.704483,
		0.931756, -0.110876, -0.345742,
		38.020405, 39.711590, 21.955809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449398, 39.039558, 21.885105>,  <37.368176, 39.789204, 22.197828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449398, 39.039558, 21.885105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809769, 39.183189, 21.982584>,  <38.025993, 39.269367, 22.041071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809769, 39.183189, 21.982584>,  <37.449398, 39.039558, 21.885105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809769, 39.183189, 21.982584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098918, -0.716700, 0.690330,
		0.422539, -0.597833, -0.681217,
		0.900931, 0.359076, 0.243697,
		38.080048, 39.290913, 22.055693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903149, 38.474251, 21.882233>,  <37.449398, 39.039558, 21.885105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903149, 38.474251, 21.882233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112442, 38.748863, 22.084183>,  <38.238018, 38.913631, 22.205353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112442, 38.748863, 22.084183>,  <37.903149, 38.474251, 21.882233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112442, 38.748863, 22.084183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187741, -0.670754, 0.717525,
		0.831252, -0.280647, -0.479851,
		0.523233, 0.686532, 0.504876,
		38.269413, 38.954823, 22.235645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440994, 38.136909, 22.128603>,  <37.903149, 38.474251, 21.882233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440994, 38.136909, 22.128603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408081, 38.459171, 22.363262>,  <38.388332, 38.652527, 22.504057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408081, 38.459171, 22.363262>,  <38.440994, 38.136909, 22.128603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408081, 38.459171, 22.363262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175869, -0.567668, 0.804253,
		0.980969, 0.169346, -0.094982,
		-0.082278, 0.805652, 0.586647,
		38.383396, 38.700867, 22.539257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045094, 38.117798, 22.550802>,  <38.440994, 38.136909, 22.128603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045094, 38.117798, 22.550802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773239, 38.329815, 22.753641>,  <38.610126, 38.457024, 22.875343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773239, 38.329815, 22.753641>,  <39.045094, 38.117798, 22.550802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773239, 38.329815, 22.753641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227510, -0.504893, 0.832660,
		0.697374, 0.681277, 0.222555,
		-0.679639, 0.530042, 0.507096,
		38.569347, 38.488827, 22.905769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242588, 38.181511, 23.235880>,  <39.045094, 38.117798, 22.550802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242588, 38.181511, 23.235880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858219, 38.285728, 23.273273>,  <38.627598, 38.348259, 23.295710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858219, 38.285728, 23.273273>,  <39.242588, 38.181511, 23.235880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858219, 38.285728, 23.273273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052728, -0.503828, 0.862193,
		0.271736, 0.823575, 0.497879,
		-0.960926, 0.260541, 0.093483,
		38.569942, 38.363892, 23.301319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238716, 38.430885, 23.872843>,  <39.242588, 38.181511, 23.235880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238716, 38.430885, 23.872843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852596, 38.353451, 23.802729>,  <38.620926, 38.306992, 23.760660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852596, 38.353451, 23.802729>,  <39.238716, 38.430885, 23.872843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852596, 38.353451, 23.802729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076743, -0.431295, 0.898941,
		-0.249621, 0.881198, 0.401472,
		-0.965298, -0.193584, -0.175286,
		38.563007, 38.295376, 23.750143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.080288, 37.711128, 28.994854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735176, 37.597610, 28.827486>,  <40.528111, 37.529499, 28.727066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735176, 37.597610, 28.827486>,  <41.080288, 37.711128, 28.994854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735176, 37.597610, 28.827486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072865, -0.749160, 0.658369,
		-0.500304, 0.598515, 0.625681,
		-0.862779, -0.283794, -0.418419,
		40.476341, 37.512474, 28.701960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674404, 37.609253, 29.533386>,  <41.080288, 37.711128, 28.994854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674404, 37.609253, 29.533386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467102, 37.427723, 29.243433>,  <40.342720, 37.318806, 29.069460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467102, 37.427723, 29.243433>,  <40.674404, 37.609253, 29.533386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467102, 37.427723, 29.243433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102151, -0.808676, 0.579318,
		-0.849106, 0.374279, 0.372738,
		-0.518251, -0.453827, -0.724884,
		40.311626, 37.291576, 29.025969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197422, 37.357620, 29.900938>,  <40.674404, 37.609253, 29.533386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197422, 37.357620, 29.900938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196423, 37.150501, 29.558737>,  <40.195824, 37.026230, 29.353416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196423, 37.150501, 29.558737>,  <40.197422, 37.357620, 29.900938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196423, 37.150501, 29.558737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256510, -0.826549, 0.501018,
		-0.966538, 0.220695, -0.130757,
		-0.002495, -0.517794, -0.855502,
		40.195675, 36.995163, 29.302086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491947, 37.061584, 29.836224>,  <40.197422, 37.357620, 29.900938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491947, 37.061584, 29.836224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716225, 36.840034, 29.590023>,  <39.850792, 36.707104, 29.442303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716225, 36.840034, 29.590023>,  <39.491947, 37.061584, 29.836224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716225, 36.840034, 29.590023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374680, -0.832596, 0.407920,
		-0.738400, 0.001896, -0.674360,
		0.560696, -0.553878, -0.615499,
		39.884434, 36.673870, 29.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084328, 36.558685, 29.658133>,  <39.491947, 37.061584, 29.836224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084328, 36.558685, 29.658133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441711, 36.408707, 29.559221>,  <39.656143, 36.318722, 29.499874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441711, 36.408707, 29.559221>,  <39.084328, 36.558685, 29.658133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441711, 36.408707, 29.559221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275146, -0.892068, 0.358481,
		-0.355001, -0.252250, -0.900191,
		0.893459, -0.374945, -0.247279,
		39.709747, 36.296223, 29.485037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985886, 35.834713, 29.334803>,  <39.084328, 36.558685, 29.658133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985886, 35.834713, 29.334803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363209, 35.839836, 29.467468>,  <39.589603, 35.842911, 29.547068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363209, 35.839836, 29.467468>,  <38.985886, 35.834713, 29.334803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363209, 35.839836, 29.467468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131041, -0.903704, 0.407612,
		0.304950, -0.427966, -0.850794,
		0.943310, 0.012812, 0.331666,
		39.646202, 35.843681, 29.566969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182297, 35.203682, 29.151394>,  <38.985886, 35.834713, 29.334803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182297, 35.203682, 29.151394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399071, 35.356232, 29.450956>,  <39.529137, 35.447762, 29.630693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399071, 35.356232, 29.450956>,  <39.182297, 35.203682, 29.151394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399071, 35.356232, 29.450956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128871, -0.842860, 0.522474,
		0.830481, -0.379659, -0.407627,
		0.541934, 0.381373, 0.748907,
		39.561649, 35.470642, 29.675629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685802, 34.670074, 29.271727>,  <39.182297, 35.203682, 29.151394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685802, 34.670074, 29.271727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681160, 34.928642, 29.576883>,  <39.678375, 35.083782, 29.759977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.681160, 34.928642, 29.576883>,  <39.685802, 34.670074, 29.271727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681160, 34.928642, 29.576883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074960, -0.761360, 0.643982,
		0.997119, -0.049715, 0.057289,
		-0.011602, 0.646421, 0.762893,
		39.677681, 35.122570, 29.805752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978485, 34.257553, 29.885015>,  <39.685802, 34.670074, 29.271727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978485, 34.257553, 29.885015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813324, 34.563957, 30.082094>,  <39.714230, 34.747799, 30.200340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813324, 34.563957, 30.082094>,  <39.978485, 34.257553, 29.885015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813324, 34.563957, 30.082094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095286, -0.574324, 0.813064,
		0.905778, 0.288767, 0.310128,
		-0.412900, 0.766006, 0.492695,
		39.689453, 34.793758, 30.229902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344410, 34.267151, 30.612406>,  <39.978485, 34.257553, 29.885015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344410, 34.267151, 30.612406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016369, 34.491451, 30.657986>,  <39.819542, 34.626030, 30.685333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.016369, 34.491451, 30.657986>,  <40.344410, 34.267151, 30.612406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016369, 34.491451, 30.657986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255969, -0.537618, 0.803397,
		0.511768, 0.629703, 0.584438,
		-0.820106, 0.560751, 0.113951,
		39.770336, 34.659676, 30.692171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366650, 34.543034, 31.303961>,  <40.344410, 34.267151, 30.612406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366650, 34.543034, 31.303961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987514, 34.544056, 31.176464>,  <39.760033, 34.544670, 31.099966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987514, 34.544056, 31.176464>,  <40.366650, 34.543034, 31.303961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987514, 34.544056, 31.176464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282316, -0.471000, 0.835737,
		-0.147993, 0.882130, 0.447153,
		-0.947837, 0.002555, -0.318744,
		39.703163, 34.544823, 31.080841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011005, 34.884151, 31.826685>,  <40.366650, 34.543034, 31.303961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011005, 34.884151, 31.826685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.764267, 34.654819, 31.610981>,  <39.616226, 34.517220, 31.481558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.764267, 34.654819, 31.610981>,  <40.011005, 34.884151, 31.826685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764267, 34.654819, 31.610981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249034, -0.507772, 0.824712,
		-0.746650, 0.643013, 0.170438,
		-0.616844, -0.573326, -0.539259,
		39.579212, 34.482822, 31.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374687, 34.803215, 32.107956>,  <40.011005, 34.884151, 31.826685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374687, 34.803215, 32.107956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511986, 34.497810, 31.889145>,  <39.594364, 34.314568, 31.757860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.511986, 34.497810, 31.889145>,  <39.374687, 34.803215, 32.107956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511986, 34.497810, 31.889145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015870, -0.577609, 0.816159,
		-0.939112, -0.288822, -0.186144,
		0.343244, -0.763511, -0.547023,
		39.614960, 34.268757, 31.725039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298412, 34.201122, 32.523727>,  <39.374687, 34.803215, 32.107956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298412, 34.201122, 32.523727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467506, 34.050900, 32.193817>,  <39.568962, 33.960766, 31.995871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467506, 34.050900, 32.193817>,  <39.298412, 34.201122, 32.523727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467506, 34.050900, 32.193817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045433, -0.900165, 0.433173,
		-0.905113, -0.220590, -0.363470,
		0.422736, -0.375557, -0.824773,
		39.594326, 33.938232, 31.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206272, 34.641659, 33.198536>,  <39.298412, 34.201122, 32.523727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206272, 34.641659, 33.198536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991329, 34.770340, 33.510368>,  <38.862362, 34.847549, 33.697468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991329, 34.770340, 33.510368>,  <39.206272, 34.641659, 33.198536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991329, 34.770340, 33.510368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359615, 0.748731, -0.556847,
		-0.762838, -0.579578, -0.286650,
		-0.537360, 0.321700, 0.779585,
		38.830120, 34.866852, 33.744244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582809, 34.777008, 32.944141>,  <39.206272, 34.641659, 33.198536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582809, 34.777008, 32.944141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610882, 35.012775, 33.266052>,  <38.627724, 35.154236, 33.459198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.610882, 35.012775, 33.266052>,  <38.582809, 34.777008, 32.944141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610882, 35.012775, 33.266052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373287, 0.763666, -0.526755,
		-0.925058, -0.263445, 0.273616,
		0.070180, 0.589416, 0.804776,
		38.631935, 35.189602, 33.507484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982548, 35.141003, 33.033722>,  <38.582809, 34.777008, 32.944141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982548, 35.141003, 33.033722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224728, 35.381561, 33.242241>,  <38.370037, 35.525898, 33.367352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224728, 35.381561, 33.242241>,  <37.982548, 35.141003, 33.033722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224728, 35.381561, 33.242241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405805, 0.796724, -0.447831,
		-0.684651, 0.059598, 0.726430,
		0.605454, 0.601397, 0.521293,
		38.406364, 35.561981, 33.398628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562992, 35.698502, 33.191753>,  <37.982548, 35.141003, 33.033722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562992, 35.698502, 33.191753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925858, 35.838402, 33.285328>,  <38.143578, 35.922340, 33.341473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925858, 35.838402, 33.285328>,  <37.562992, 35.698502, 33.191753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925858, 35.838402, 33.285328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179697, 0.824741, -0.536201,
		-0.380473, 0.444385, 0.811025,
		0.907166, 0.349749, 0.233937,
		38.198006, 35.943325, 33.355511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468750, 36.294453, 33.614307>,  <37.562992, 35.698502, 33.191753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468750, 36.294453, 33.614307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823994, 36.320656, 33.432327>,  <38.037140, 36.336376, 33.323139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823994, 36.320656, 33.432327>,  <37.468750, 36.294453, 33.614307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823994, 36.320656, 33.432327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336525, 0.766860, -0.546513,
		0.313083, 0.638463, 0.703097,
		0.888105, 0.065506, -0.454949,
		38.090424, 36.340309, 33.295841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545856, 37.011696, 33.403530>,  <37.468750, 36.294453, 33.614307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545856, 37.011696, 33.403530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853859, 36.858891, 33.199116>,  <38.038658, 36.767208, 33.076466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853859, 36.858891, 33.199116>,  <37.545856, 37.011696, 33.403530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853859, 36.858891, 33.199116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098177, 0.720474, -0.686497,
		0.630443, 0.578776, 0.517261,
		0.770002, -0.382014, -0.511040,
		38.084858, 36.744286, 33.045803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085712, 37.585018, 33.312729>,  <37.545856, 37.011696, 33.403530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085712, 37.585018, 33.312729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148235, 37.311516, 33.027618>,  <38.185749, 37.147415, 32.856552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148235, 37.311516, 33.027618>,  <38.085712, 37.585018, 33.312729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148235, 37.311516, 33.027618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104090, 0.729029, -0.676522,
		0.982208, 0.031554, 0.185126,
		0.156309, -0.683755, -0.712774,
		38.195129, 37.106388, 32.813786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620049, 37.831112, 32.889565>,  <38.085712, 37.585018, 33.312729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620049, 37.831112, 32.889565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431404, 37.567390, 32.655334>,  <38.318218, 37.409157, 32.514797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.431404, 37.567390, 32.655334>,  <38.620049, 37.831112, 32.889565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431404, 37.567390, 32.655334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312648, 0.495905, -0.810142,
		0.824521, -0.565151, -0.027743,
		-0.471610, -0.659305, -0.585578,
		38.289921, 37.369598, 32.479660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054733, 37.827675, 32.385143>,  <38.620049, 37.831112, 32.889565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054733, 37.827675, 32.385143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723541, 37.663437, 32.232372>,  <38.524826, 37.564896, 32.140709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723541, 37.663437, 32.232372>,  <39.054733, 37.827675, 32.385143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723541, 37.663437, 32.232372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064747, 0.606532, -0.792418,
		0.557009, -0.680834, -0.475611,
		-0.827979, -0.410590, -0.381925,
		38.475147, 37.540260, 32.117794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178574, 37.747608, 31.636986>,  <39.054733, 37.827675, 32.385143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178574, 37.747608, 31.636986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779305, 37.739967, 31.659912>,  <38.539742, 37.735382, 31.673668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779305, 37.739967, 31.659912>,  <39.178574, 37.747608, 31.636986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779305, 37.739967, 31.659912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060371, 0.350588, -0.934582,
		-0.002244, -0.936335, -0.351100,
		-0.998174, -0.019099, 0.057314,
		38.479851, 37.734238, 31.677107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897720, 37.444675, 30.916517>,  <39.178574, 37.747608, 31.636986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897720, 37.444675, 30.916517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.607544, 37.654732, 31.094492>,  <38.433437, 37.780766, 31.201277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.607544, 37.654732, 31.094492>,  <38.897720, 37.444675, 30.916517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607544, 37.654732, 31.094492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016785, 0.632753, -0.774171,
		-0.688082, -0.569082, -0.450210,
		-0.725439, 0.525137, 0.444938,
		38.389912, 37.812271, 31.227974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474995, 37.629692, 30.383595>,  <38.897720, 37.444675, 30.916517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474995, 37.629692, 30.383595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.367687, 37.881020, 30.675690>,  <38.303303, 38.031815, 30.850946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.367687, 37.881020, 30.675690>,  <38.474995, 37.629692, 30.383595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367687, 37.881020, 30.675690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003509, 0.757380, -0.652964,
		-0.963338, -0.177733, -0.200977,
		-0.268269, 0.628320, 0.730237,
		38.287205, 38.069515, 30.894760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043179, 38.057278, 30.064491>,  <38.474995, 37.629692, 30.383595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043179, 38.057278, 30.064491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119064, 38.275867, 30.390774>,  <38.164597, 38.407021, 30.586544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119064, 38.275867, 30.390774>,  <38.043179, 38.057278, 30.064491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119064, 38.275867, 30.390774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129525, 0.809604, -0.572508,
		-0.973258, 0.214270, 0.082815,
		0.189719, 0.546471, 0.815706,
		38.175980, 38.439808, 30.635485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496178, 38.504162, 30.100452>,  <38.043179, 38.057278, 30.064491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496178, 38.504162, 30.100452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815952, 38.634148, 30.302559>,  <38.007816, 38.712139, 30.423822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815952, 38.634148, 30.302559>,  <37.496178, 38.504162, 30.100452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815952, 38.634148, 30.302559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085263, 0.771174, -0.630889,
		-0.594663, 0.547439, 0.588800,
		0.799441, 0.324964, 0.505265,
		38.055786, 38.731636, 30.454138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846970, 38.661560, 30.638569>,  <37.496178, 38.504162, 30.100452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846970, 38.661560, 30.638569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.480316, 38.749329, 30.504923>,  <36.260323, 38.801991, 30.424736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.480316, 38.749329, 30.504923>,  <36.846970, 38.661560, 30.638569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480316, 38.749329, 30.504923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341749, -0.863739, 0.370355,
		-0.207324, 0.453664, 0.866721,
		-0.916638, 0.219418, -0.334113,
		36.205326, 38.815155, 30.404690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406624, 38.631344, 31.191475>,  <36.846970, 38.661560, 30.638569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406624, 38.631344, 31.191475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234310, 38.541283, 30.841908>,  <36.130920, 38.487247, 30.632168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234310, 38.541283, 30.841908>,  <36.406624, 38.631344, 31.191475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234310, 38.541283, 30.841908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286873, -0.883985, 0.369153,
		-0.855644, 0.409729, 0.316219,
		-0.430786, -0.225149, -0.873917,
		36.105076, 38.473740, 30.579733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741222, 38.282852, 31.410776>,  <36.406624, 38.631344, 31.191475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741222, 38.282852, 31.410776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794861, 38.175381, 31.029236>,  <35.827045, 38.110897, 30.800312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794861, 38.175381, 31.029236>,  <35.741222, 38.282852, 31.410776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794861, 38.175381, 31.029236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589374, -0.795426, 0.141197,
		-0.796654, 0.543241, -0.265012,
		0.134093, -0.268677, -0.953851,
		35.835091, 38.094776, 30.743082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082962, 38.324181, 31.020510>,  <35.741222, 38.282852, 31.410776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082962, 38.324181, 31.020510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317459, 38.061874, 30.830233>,  <35.458157, 37.904491, 30.716066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.317459, 38.061874, 30.830233>,  <35.082962, 38.324181, 31.020510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317459, 38.061874, 30.830233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657213, -0.728297, 0.194048,
		-0.473695, 0.198871, -0.857942,
		0.586246, -0.655770, -0.475691,
		35.493332, 37.865143, 30.687525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679466, 37.876904, 30.654318>,  <35.082962, 38.324181, 31.020510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679466, 37.876904, 30.654318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.018421, 37.665070, 30.669661>,  <35.221794, 37.537971, 30.678865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.018421, 37.665070, 30.669661>,  <34.679466, 37.876904, 30.654318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018421, 37.665070, 30.669661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519181, -0.811276, 0.268852,
		-0.111261, -0.247737, -0.962417,
		0.847391, -0.529582, 0.038357,
		35.272640, 37.506195, 30.681168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398804, 37.196537, 30.425276>,  <34.679466, 37.876904, 30.654318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398804, 37.196537, 30.425276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.758266, 37.166679, 30.598181>,  <34.973942, 37.148766, 30.701923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.758266, 37.166679, 30.598181>,  <34.398804, 37.196537, 30.425276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758266, 37.166679, 30.598181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185948, -0.957320, 0.221273,
		0.397299, -0.279226, -0.874178,
		0.898653, -0.074641, 0.432263,
		35.027863, 37.144287, 30.727859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630089, 36.602478, 30.166286>,  <34.398804, 37.196537, 30.425276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630089, 36.602478, 30.166286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867203, 36.638294, 30.486433>,  <35.009472, 36.659782, 30.678522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.867203, 36.638294, 30.486433>,  <34.630089, 36.602478, 30.166286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867203, 36.638294, 30.486433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247237, -0.925580, 0.286663,
		0.766473, -0.367810, -0.526532,
		0.592785, 0.089541, 0.800368,
		35.045036, 36.665157, 30.726543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032166, 35.954910, 30.292463>,  <34.630089, 36.602478, 30.166286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032166, 35.954910, 30.292463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015324, 36.141819, 30.645708>,  <35.005219, 36.253963, 30.857655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.015324, 36.141819, 30.645708>,  <35.032166, 35.954910, 30.292463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015324, 36.141819, 30.645708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397222, -0.818863, 0.414340,
		0.916756, -0.333346, 0.220086,
		-0.042102, 0.467272, 0.883110,
		35.002693, 36.282001, 30.910641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265221, 35.487617, 30.785887>,  <35.032166, 35.954910, 30.292463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265221, 35.487617, 30.785887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043064, 35.749004, 30.991617>,  <34.909771, 35.905834, 31.115055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043064, 35.749004, 30.991617>,  <35.265221, 35.487617, 30.785887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043064, 35.749004, 30.991617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418419, -0.754079, 0.506251,
		0.718658, 0.065962, 0.692228,
		-0.555388, 0.653463, 0.514325,
		34.876450, 35.945042, 31.145914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386356, 35.292553, 31.427694>,  <35.265221, 35.487617, 30.785887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386356, 35.292553, 31.427694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.058262, 35.517010, 31.472107>,  <34.861404, 35.651684, 31.498755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.058262, 35.517010, 31.472107>,  <35.386356, 35.292553, 31.427694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058262, 35.517010, 31.472107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401915, -0.703473, 0.586165,
		0.407031, 0.436169, 0.802547,
		-0.820238, 0.561143, 0.111032,
		34.812191, 35.685352, 31.505417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185055, 35.437038, 32.090504>,  <35.386356, 35.292553, 31.427694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185055, 35.437038, 32.090504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.830276, 35.493382, 31.914551>,  <34.617409, 35.527187, 31.808981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.830276, 35.493382, 31.914551>,  <35.185055, 35.437038, 32.090504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830276, 35.493382, 31.914551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363613, -0.800211, 0.476915,
		-0.284817, 0.582941, 0.760960,
		-0.886941, 0.140861, -0.439878,
		34.564194, 35.535641, 31.782587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553768, 35.534370, 32.593643>,  <35.185055, 35.437038, 32.090504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553768, 35.534370, 32.593643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441963, 35.376640, 32.243469>,  <34.374882, 35.282001, 32.033363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441963, 35.376640, 32.243469>,  <34.553768, 35.534370, 32.593643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441963, 35.376640, 32.243469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397996, -0.782168, 0.479386,
		-0.873769, 0.482413, 0.061686,
		-0.279511, -0.394322, -0.875433,
		34.358109, 35.258343, 31.980839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.764275, 42.489597, 28.510201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612431, 42.172054, 28.320177>,  <35.521324, 41.981529, 28.206163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612431, 42.172054, 28.320177>,  <35.764275, 42.489597, 28.510201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612431, 42.172054, 28.320177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242384, -0.580902, 0.777047,
		-0.892830, 0.179829, 0.412936,
		-0.379611, -0.793860, -0.475060,
		35.498547, 41.933895, 28.177660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320293, 42.165295, 29.016945>,  <35.764275, 42.489597, 28.510201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320293, 42.165295, 29.016945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408382, 41.895866, 28.734724>,  <35.461235, 41.734211, 28.565392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408382, 41.895866, 28.734724>,  <35.320293, 42.165295, 29.016945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408382, 41.895866, 28.734724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070497, -0.710427, 0.700231,
		-0.972898, -0.203948, -0.108969,
		0.220226, -0.673572, -0.705551,
		35.474449, 41.693794, 28.523058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887306, 41.616199, 29.122032>,  <35.320293, 42.165295, 29.016945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887306, 41.616199, 29.122032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184338, 41.456551, 28.906895>,  <35.362556, 41.360760, 28.777811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184338, 41.456551, 28.906895>,  <34.887306, 41.616199, 29.122032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184338, 41.456551, 28.906895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012036, -0.794962, 0.606540,
		-0.669651, -0.456878, -0.585518,
		0.742579, -0.399123, -0.537845,
		35.407112, 41.336815, 28.745541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662174, 40.940178, 28.995165>,  <34.887306, 41.616199, 29.122032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662174, 40.940178, 28.995165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058971, 40.954655, 28.946777>,  <35.297050, 40.963341, 28.917746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058971, 40.954655, 28.946777>,  <34.662174, 40.940178, 28.995165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058971, 40.954655, 28.946777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096061, -0.838108, 0.536979,
		-0.081949, -0.544302, -0.834877,
		0.991997, 0.036194, -0.120968,
		35.356571, 40.965511, 28.910486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762131, 40.235996, 28.852833>,  <34.662174, 40.940178, 28.995165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762131, 40.235996, 28.852833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116703, 40.387600, 28.959106>,  <35.329449, 40.478561, 29.022871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116703, 40.387600, 28.959106>,  <34.762131, 40.235996, 28.852833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116703, 40.387600, 28.959106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260960, -0.883320, 0.389418,
		0.382277, -0.275860, -0.881910,
		0.886433, 0.379009, 0.265684,
		35.382633, 40.501301, 29.038813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284847, 39.749268, 28.574619>,  <34.762131, 40.235996, 28.852833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284847, 39.749268, 28.574619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432789, 39.961445, 28.879732>,  <35.521553, 40.088753, 29.062799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432789, 39.961445, 28.879732>,  <35.284847, 39.749268, 28.574619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432789, 39.961445, 28.879732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349065, -0.840187, 0.415018,
		0.861023, 0.112764, -0.495906,
		0.369855, 0.530444, 0.762782,
		35.543747, 40.120579, 29.108566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937996, 39.411747, 28.628111>,  <35.284847, 39.749268, 28.574619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937996, 39.411747, 28.628111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894081, 39.605640, 28.975208>,  <35.867733, 39.721977, 29.183468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894081, 39.605640, 28.975208>,  <35.937996, 39.411747, 28.628111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894081, 39.605640, 28.975208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199446, -0.844522, 0.496995,
		0.973739, 0.227632, -0.003960,
		-0.109788, 0.484733, 0.867744,
		35.861145, 39.751060, 29.235531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462360, 39.131123, 28.951332>,  <35.937996, 39.411747, 28.628111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462360, 39.131123, 28.951332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230988, 39.287132, 29.237913>,  <36.092163, 39.380737, 29.409863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230988, 39.287132, 29.237913>,  <36.462360, 39.131123, 28.951332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230988, 39.287132, 29.237913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294042, -0.719560, 0.629105,
		0.760895, 0.574559, 0.301531,
		-0.578428, 0.390020, 0.716454,
		36.057461, 39.404137, 29.452848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899609, 39.135754, 29.649364>,  <36.462360, 39.131123, 28.951332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899609, 39.135754, 29.649364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506531, 39.134785, 29.723455>,  <36.270683, 39.134201, 29.767910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506531, 39.134785, 29.723455>,  <36.899609, 39.135754, 29.649364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506531, 39.134785, 29.723455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128429, -0.729521, 0.671793,
		0.133498, 0.683954, 0.717206,
		-0.982692, -0.002427, 0.185229,
		36.211723, 39.134056, 29.779024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402905, 39.354324, 30.255543>,  <36.899609, 39.135754, 29.649364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402905, 39.354324, 30.255543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795898, 39.288403, 30.290348>,  <38.031693, 39.248848, 30.311232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795898, 39.288403, 30.290348>,  <37.402905, 39.354324, 30.255543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795898, 39.288403, 30.290348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184244, 0.788686, -0.586540,
		0.028040, 0.592295, 0.805233,
		0.982480, -0.164806, 0.087012,
		38.090641, 39.238960, 30.316452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666336, 39.921215, 30.521723>,  <37.402905, 39.354324, 30.255543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666336, 39.921215, 30.521723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971519, 39.752048, 30.326157>,  <38.154629, 39.650547, 30.208817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971519, 39.752048, 30.326157>,  <37.666336, 39.921215, 30.521723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971519, 39.752048, 30.326157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031731, 0.779896, -0.625105,
		0.645673, 0.461413, 0.608444,
		0.762954, -0.422920, -0.488917,
		38.200405, 39.625172, 30.179482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148174, 40.418655, 30.328497>,  <37.666336, 39.921215, 30.521723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148174, 40.418655, 30.328497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293121, 40.126694, 30.096659>,  <38.380089, 39.951515, 29.957556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293121, 40.126694, 30.096659>,  <38.148174, 40.418655, 30.328497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293121, 40.126694, 30.096659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362611, 0.683272, -0.633761,
		0.858606, 0.019485, 0.512266,
		0.362366, -0.729904, -0.579596,
		38.401833, 39.907722, 29.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863914, 40.678680, 30.025854>,  <38.148174, 40.418655, 30.328497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863914, 40.678680, 30.025854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749882, 40.385868, 29.778351>,  <38.681461, 40.210182, 29.629848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749882, 40.385868, 29.778351>,  <38.863914, 40.678680, 30.025854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749882, 40.385868, 29.778351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391109, 0.500523, -0.772341,
		0.875079, -0.462182, 0.143614,
		-0.285080, -0.732028, -0.618760,
		38.664356, 40.166260, 29.592722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417847, 40.524765, 29.656382>,  <38.863914, 40.678680, 30.025854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417847, 40.524765, 29.656382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105827, 40.412830, 29.432516>,  <38.918617, 40.345669, 29.298197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105827, 40.412830, 29.432516>,  <39.417847, 40.524765, 29.656382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105827, 40.412830, 29.432516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348522, 0.548535, -0.760027,
		0.519670, -0.787913, -0.330359,
		-0.780048, -0.279826, -0.559662,
		38.871815, 40.328880, 29.264616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639011, 40.169060, 29.004925>,  <39.417847, 40.524765, 29.656382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639011, 40.169060, 29.004925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273117, 40.311810, 28.929132>,  <39.053581, 40.397457, 28.883657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273117, 40.311810, 28.929132>,  <39.639011, 40.169060, 29.004925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273117, 40.311810, 28.929132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385317, 0.629307, -0.674910,
		-0.121615, -0.690374, -0.713157,
		-0.914735, 0.356871, -0.189480,
		38.998695, 40.418869, 28.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531216, 40.202606, 28.163662>,  <39.639011, 40.169060, 29.004925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531216, 40.202606, 28.163662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227757, 40.439995, 28.271173>,  <39.045681, 40.582428, 28.335680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227757, 40.439995, 28.271173>,  <39.531216, 40.202606, 28.163662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227757, 40.439995, 28.271173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361137, 0.726445, -0.584686,
		-0.542248, -0.346506, -0.765442,
		-0.758648, 0.593475, 0.268777,
		39.000160, 40.618038, 28.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316494, 40.478001, 27.507389>,  <39.531216, 40.202606, 28.163662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316494, 40.478001, 27.507389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182384, 40.715069, 27.800329>,  <39.101917, 40.857311, 27.976093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182384, 40.715069, 27.800329>,  <39.316494, 40.478001, 27.507389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182384, 40.715069, 27.800329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086825, 0.793470, -0.602384,
		-0.938111, -0.138378, -0.317488,
		-0.335274, 0.592670, 0.732349,
		39.081802, 40.892868, 28.020033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701065, 40.805908, 27.236742>,  <39.316494, 40.478001, 27.507389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701065, 40.805908, 27.236742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839340, 41.024811, 27.541637>,  <38.922306, 41.156155, 27.724575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839340, 41.024811, 27.541637>,  <38.701065, 40.805908, 27.236742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839340, 41.024811, 27.541637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148974, 0.834024, -0.531236,
		-0.926450, 0.070086, 0.369836,
		0.345685, 0.547259, 0.762240,
		38.943047, 41.188988, 27.770309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489933, 41.351196, 27.009623>,  <38.701065, 40.805908, 27.236742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489933, 41.351196, 27.009623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704517, 41.487286, 27.318544>,  <38.833267, 41.568939, 27.503899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704517, 41.487286, 27.318544>,  <38.489933, 41.351196, 27.009623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704517, 41.487286, 27.318544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132491, 0.869836, -0.475217,
		-0.833459, 0.357259, 0.421558,
		0.536462, 0.340221, 0.772307,
		38.865456, 41.589352, 27.550236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139149, 41.872360, 27.379000>,  <38.489933, 41.351196, 27.009623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139149, 41.872360, 27.379000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531933, 41.917053, 27.440018>,  <38.767605, 41.943871, 27.476629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531933, 41.917053, 27.440018>,  <38.139149, 41.872360, 27.379000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531933, 41.917053, 27.440018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012646, 0.766133, -0.642557,
		-0.188665, 0.632895, 0.750899,
		0.981960, 0.111732, 0.152546,
		38.826519, 41.950573, 27.485781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299599, 42.673542, 27.555777>,  <38.139149, 41.872360, 27.379000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299599, 42.673542, 27.555777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655228, 42.529774, 27.442385>,  <38.868607, 42.443512, 27.374350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655228, 42.529774, 27.442385>,  <38.299599, 42.673542, 27.555777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655228, 42.529774, 27.442385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104950, 0.762833, -0.638021,
		0.445564, 0.537499, 0.715938,
		0.889077, -0.359417, -0.283480,
		38.921951, 42.421947, 27.357340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750202, 43.238766, 27.543993>,  <38.299599, 42.673542, 27.555777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750202, 43.238766, 27.543993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949890, 42.985256, 27.307652>,  <39.069702, 42.833149, 27.165848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949890, 42.985256, 27.307652>,  <38.750202, 43.238766, 27.543993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949890, 42.985256, 27.307652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198038, 0.747311, -0.634277,
		0.843540, 0.199633, 0.498585,
		0.499221, -0.633777, -0.590852,
		39.099655, 42.795124, 27.130396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343422, 43.710670, 27.305708>,  <38.750202, 43.238766, 27.543993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343422, 43.710670, 27.305708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339676, 43.389111, 27.067829>,  <39.337429, 43.196175, 26.925102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339676, 43.389111, 27.067829>,  <39.343422, 43.710670, 27.305708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339676, 43.389111, 27.067829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304765, 0.564131, -0.767381,
		0.952381, -0.188430, 0.239716,
		-0.009367, -0.803897, -0.594695,
		39.336864, 43.147942, 26.889421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.315186, 37.863350, 21.356804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494907, 37.991821, 21.690262>,  <35.602741, 38.068905, 21.890337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.494907, 37.991821, 21.690262>,  <35.315186, 37.863350, 21.356804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494907, 37.991821, 21.690262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161911, -0.946962, 0.277575,
		0.878582, 0.010260, -0.477481,
		0.449308, 0.321182, 0.833645,
		35.629700, 38.088177, 21.940355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986290, 37.381863, 21.428762>,  <35.315186, 37.863350, 21.356804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986290, 37.381863, 21.428762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874950, 37.550774, 21.773830>,  <35.808147, 37.652122, 21.980871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874950, 37.550774, 21.773830>,  <35.986290, 37.381863, 21.428762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874950, 37.550774, 21.773830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071748, -0.886515, 0.457103,
		0.957795, 0.189131, 0.216466,
		-0.278352, 0.422281, 0.862670,
		35.791443, 37.677456, 22.032631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429459, 36.888649, 21.915058>,  <35.986290, 37.381863, 21.428762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429459, 36.888649, 21.915058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151432, 37.075520, 22.133646>,  <35.984615, 37.187641, 22.264799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151432, 37.075520, 22.133646>,  <36.429459, 36.888649, 21.915058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151432, 37.075520, 22.133646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053549, -0.724348, 0.687351,
		0.716949, 0.507017, 0.478453,
		-0.695066, 0.467175, 0.546471,
		35.942913, 37.215672, 22.297586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662609, 36.953060, 22.523361>,  <36.429459, 36.888649, 21.915058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662609, 36.953060, 22.523361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267990, 36.975842, 22.584654>,  <36.031219, 36.989510, 22.621429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267990, 36.975842, 22.584654>,  <36.662609, 36.953060, 22.523361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267990, 36.975842, 22.584654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085485, -0.619226, 0.780546,
		0.139340, 0.783145, 0.606027,
		-0.986548, 0.056955, 0.153230,
		35.972027, 36.992928, 22.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560268, 36.865578, 23.219576>,  <36.662609, 36.953060, 22.523361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560268, 36.865578, 23.219576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181694, 36.813324, 23.101463>,  <35.954548, 36.781971, 23.030596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181694, 36.813324, 23.101463>,  <36.560268, 36.865578, 23.219576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181694, 36.813324, 23.101463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195202, -0.496973, 0.845526,
		-0.257206, 0.857876, 0.444853,
		-0.946436, -0.130639, -0.295283,
		35.897762, 36.774132, 23.012878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204605, 37.008614, 23.798061>,  <36.560268, 36.865578, 23.219576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204605, 37.008614, 23.798061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954659, 36.789806, 23.575237>,  <35.804691, 36.658524, 23.441544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954659, 36.789806, 23.575237>,  <36.204605, 37.008614, 23.798061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954659, 36.789806, 23.575237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362728, -0.428422, 0.827577,
		-0.691353, 0.719187, 0.069289,
		-0.624867, -0.547015, -0.557060,
		35.767197, 36.625702, 23.408119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472485, 37.257301, 24.036091>,  <36.204605, 37.008614, 23.798061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472485, 37.257301, 24.036091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403664, 36.905472, 23.858669>,  <35.362370, 36.694374, 23.752216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403664, 36.905472, 23.858669>,  <35.472485, 37.257301, 24.036091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403664, 36.905472, 23.858669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439335, -0.334495, 0.833725,
		-0.881692, 0.338317, -0.328877,
		-0.172055, -0.879577, -0.443556,
		35.352047, 36.641598, 23.725603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775364, 37.062344, 24.153187>,  <35.472485, 37.257301, 24.036091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775364, 37.062344, 24.153187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972424, 36.722660, 24.077154>,  <35.090660, 36.518848, 24.031534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972424, 36.722660, 24.077154>,  <34.775364, 37.062344, 24.153187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972424, 36.722660, 24.077154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324495, -0.381942, 0.865346,
		-0.807464, -0.364633, -0.463730,
		0.492652, -0.849213, -0.190083,
		35.120220, 36.467896, 24.020130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284122, 36.500477, 24.189514>,  <34.775364, 37.062344, 24.153187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284122, 36.500477, 24.189514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653435, 36.353550, 24.234463>,  <34.875023, 36.265392, 24.261433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653435, 36.353550, 24.234463>,  <34.284122, 36.500477, 24.189514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653435, 36.353550, 24.234463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302967, -0.516510, 0.800893,
		-0.236143, -0.773494, -0.588170,
		0.923281, -0.367321, 0.112373,
		34.930420, 36.243355, 24.268175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193489, 35.757706, 24.216667>,  <34.284122, 36.500477, 24.189514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193489, 35.757706, 24.216667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553356, 35.793819, 24.387520>,  <34.769276, 35.815487, 24.490030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553356, 35.793819, 24.387520>,  <34.193489, 35.757706, 24.216667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553356, 35.793819, 24.387520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294870, -0.595814, 0.747032,
		0.321935, -0.798032, -0.509415,
		0.899672, 0.090285, 0.427129,
		34.823257, 35.820904, 24.515659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307922, 35.183895, 24.607101>,  <34.193489, 35.757706, 24.216667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307922, 35.183895, 24.607101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608181, 35.408779, 24.745926>,  <34.788334, 35.543709, 24.829222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608181, 35.408779, 24.745926>,  <34.307922, 35.183895, 24.607101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608181, 35.408779, 24.745926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127965, -0.391633, 0.911180,
		0.648197, -0.728383, -0.222033,
		0.750643, 0.562212, 0.347063,
		34.833374, 35.577442, 24.850044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900692, 34.757294, 24.819475>,  <34.307922, 35.183895, 24.607101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900692, 34.757294, 24.819475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938427, 35.090603, 25.037374>,  <34.961067, 35.290588, 25.168114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938427, 35.090603, 25.037374>,  <34.900692, 34.757294, 24.819475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938427, 35.090603, 25.037374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093435, -0.552183, 0.828470,
		0.991146, -0.027253, -0.129946,
		0.094333, 0.833277, 0.544748,
		34.966728, 35.340588, 25.200798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370022, 34.608173, 25.271530>,  <34.900692, 34.757294, 24.819475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370022, 34.608173, 25.271530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199902, 34.930271, 25.436794>,  <35.097828, 35.123528, 25.535952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.199902, 34.930271, 25.436794>,  <35.370022, 34.608173, 25.271530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199902, 34.930271, 25.436794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175274, -0.521144, 0.835277,
		0.887916, 0.282831, 0.362783,
		-0.425305, 0.805243, 0.413159,
		35.072311, 35.171844, 25.560741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797009, 34.826988, 25.900480>,  <35.370022, 34.608173, 25.271530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797009, 34.826988, 25.900480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423443, 34.967400, 25.927591>,  <35.199303, 35.051647, 25.943857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423443, 34.967400, 25.927591>,  <35.797009, 34.826988, 25.900480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423443, 34.967400, 25.927591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106185, -0.453383, 0.884968,
		0.341375, 0.819284, 0.460692,
		-0.933910, 0.351024, 0.067778,
		35.143269, 35.072708, 25.947926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237728, 35.390526, 26.098209>,  <35.797009, 34.826988, 25.900480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237728, 35.390526, 26.098209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.614223, 35.403084, 26.232721>,  <36.840122, 35.410618, 26.313429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.614223, 35.403084, 26.232721>,  <36.237728, 35.390526, 26.098209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614223, 35.403084, 26.232721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221002, 0.695663, -0.683528,
		-0.255399, 0.717682, 0.647846,
		0.941238, 0.031397, 0.336280,
		36.896595, 35.412502, 26.333605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424488, 36.156548, 26.072094>,  <36.237728, 35.390526, 26.098209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424488, 36.156548, 26.072094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771450, 35.959328, 26.098965>,  <36.979626, 35.840996, 26.115088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771450, 35.959328, 26.098965>,  <36.424488, 36.156548, 26.072094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771450, 35.959328, 26.098965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457303, 0.736639, -0.498233,
		0.196166, 0.462891, 0.864437,
		0.867406, -0.493046, 0.067178,
		37.031673, 35.811413, 26.119118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818069, 36.632805, 26.285631>,  <36.424488, 36.156548, 26.072094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818069, 36.632805, 26.285631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078697, 36.366459, 26.140255>,  <37.235073, 36.206654, 26.053030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078697, 36.366459, 26.140255>,  <36.818069, 36.632805, 26.285631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078697, 36.366459, 26.140255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523348, 0.741388, -0.420061,
		0.549154, 0.083491, 0.831540,
		0.651565, -0.665863, -0.363441,
		37.274166, 36.166698, 26.031223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579769, 36.837727, 26.508760>,  <36.818069, 36.632805, 26.285631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579769, 36.837727, 26.508760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581902, 36.608952, 26.180649>,  <37.583179, 36.471687, 25.983782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581902, 36.608952, 26.180649>,  <37.579769, 36.837727, 26.508760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581902, 36.608952, 26.180649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485244, 0.718722, -0.497974,
		0.874363, -0.395382, 0.281359,
		0.005329, -0.571937, -0.820280,
		37.583500, 36.437370, 25.934565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228073, 37.028847, 26.202690>,  <37.579769, 36.837727, 26.508760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228073, 37.028847, 26.202690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027218, 36.855785, 25.903179>,  <37.906704, 36.751949, 25.723473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027218, 36.855785, 25.903179>,  <38.228073, 37.028847, 26.202690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027218, 36.855785, 25.903179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432108, 0.624489, -0.650612,
		0.749093, -0.650250, -0.126627,
		-0.502137, -0.432652, -0.748779,
		37.876575, 36.725990, 25.678545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689426, 37.032436, 25.643538>,  <38.228073, 37.028847, 26.202690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689426, 37.032436, 25.643538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342617, 36.964733, 25.456083>,  <38.134529, 36.924110, 25.343611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342617, 36.964733, 25.456083>,  <38.689426, 37.032436, 25.643538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342617, 36.964733, 25.456083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228505, 0.700725, -0.675848,
		0.442778, -0.693062, -0.568869,
		-0.867025, -0.169261, -0.468634,
		38.082508, 36.913956, 25.315493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871277, 36.818886, 25.008743>,  <38.689426, 37.032436, 25.643538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871277, 36.818886, 25.008743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501930, 36.968693, 24.974955>,  <38.280323, 37.058575, 24.954681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501930, 36.968693, 24.974955>,  <38.871277, 36.818886, 25.008743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501930, 36.968693, 24.974955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267877, 0.470864, -0.840553,
		-0.275025, -0.798766, -0.535103,
		-0.923365, 0.374515, -0.084472,
		38.224922, 37.081047, 24.949614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826954, 36.846214, 24.279226>,  <38.871277, 36.818886, 25.008743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826954, 36.846214, 24.279226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520149, 37.069172, 24.406357>,  <38.336067, 37.202946, 24.482635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520149, 37.069172, 24.406357>,  <38.826954, 36.846214, 24.279226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520149, 37.069172, 24.406357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094355, 0.587931, -0.803389,
		-0.634662, -0.586218, -0.503540,
		-0.767008, 0.557392, 0.317825,
		38.290047, 37.236389, 24.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440231, 36.962551, 23.644346>,  <38.826954, 36.846214, 24.279226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440231, 36.962551, 23.644346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343643, 37.250118, 23.905067>,  <38.285690, 37.422657, 24.061501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343643, 37.250118, 23.905067>,  <38.440231, 36.962551, 23.644346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343643, 37.250118, 23.905067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058528, 0.659670, -0.749273,
		-0.968641, -0.219079, -0.117216,
		-0.241474, 0.718916, 0.651805,
		38.271202, 37.465794, 24.100609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855633, 37.268818, 23.361847>,  <38.440231, 36.962551, 23.644346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855633, 37.268818, 23.361847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031158, 37.529160, 23.609665>,  <38.136475, 37.685364, 23.758356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031158, 37.529160, 23.609665>,  <37.855633, 37.268818, 23.361847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031158, 37.529160, 23.609665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036184, 0.701712, -0.711541,
		-0.897848, 0.289817, 0.331473,
		0.438815, 0.650850, 0.619545,
		38.162804, 37.724415, 23.795528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382362, 37.877796, 23.391016>,  <37.855633, 37.268818, 23.361847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382362, 37.877796, 23.391016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744900, 37.993057, 23.514633>,  <37.962421, 38.062214, 23.588804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744900, 37.993057, 23.514633>,  <37.382362, 37.877796, 23.391016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744900, 37.993057, 23.514633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045601, 0.793830, -0.606427,
		-0.420069, 0.535540, 0.732624,
		0.906346, 0.288150, 0.309043,
		38.016804, 38.079502, 23.607346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283245, 38.624916, 23.412033>,  <37.382362, 37.877796, 23.391016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283245, 38.624916, 23.412033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679802, 38.574165, 23.399101>,  <37.917736, 38.543716, 23.391342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679802, 38.574165, 23.399101>,  <37.283245, 38.624916, 23.412033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679802, 38.574165, 23.399101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065586, 0.694935, -0.716075,
		0.113319, 0.707791, 0.697274,
		0.991392, -0.126877, -0.032328,
		37.977219, 38.536102, 23.389402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742462, 39.294807, 23.556417>,  <37.283245, 38.624916, 23.412033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742462, 39.294807, 23.556417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988113, 39.051731, 23.355003>,  <38.135506, 38.905884, 23.234154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988113, 39.051731, 23.355003>,  <37.742462, 39.294807, 23.556417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988113, 39.051731, 23.355003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000671, 0.637629, -0.770343,
		0.789204, 0.473430, 0.391180,
		0.614131, -0.607695, -0.503537,
		38.172352, 38.869423, 23.203941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322983, 39.684784, 23.324879>,  <37.742462, 39.294807, 23.556417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322983, 39.684784, 23.324879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332153, 39.377827, 23.068573>,  <38.337654, 39.193653, 22.914789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332153, 39.377827, 23.068573>,  <38.322983, 39.684784, 23.324879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332153, 39.377827, 23.068573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072001, 0.640536, -0.764546,
		0.997141, -0.028609, 0.069937,
		0.022924, -0.767396, -0.640764,
		38.339031, 39.147610, 22.876345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867432, 40.104088, 23.598770>,  <38.322983, 39.684784, 23.324879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867432, 40.104088, 23.598770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204422, 40.249271, 23.758013>,  <39.406616, 40.336384, 23.853558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204422, 40.249271, 23.758013>,  <38.867432, 40.104088, 23.598770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204422, 40.249271, 23.758013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226584, -0.431703, 0.873093,
		0.488763, -0.825767, -0.281459,
		0.842479, 0.362961, 0.398106,
		39.457165, 40.358158, 23.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164768, 39.596691, 24.016951>,  <38.867432, 40.104088, 23.598770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164768, 39.596691, 24.016951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357044, 39.907185, 24.180117>,  <39.472412, 40.093479, 24.278017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357044, 39.907185, 24.180117>,  <39.164768, 39.596691, 24.016951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357044, 39.907185, 24.180117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113206, -0.406358, 0.906674,
		0.869551, -0.482010, -0.107459,
		0.480693, 0.776234, 0.407915,
		39.501251, 40.140057, 24.302490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863846, 39.337196, 24.292690>,  <39.164768, 39.596691, 24.016951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863846, 39.337196, 24.292690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768513, 39.674713, 24.485025>,  <39.711311, 39.877224, 24.600428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768513, 39.674713, 24.485025>,  <39.863846, 39.337196, 24.292690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768513, 39.674713, 24.485025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222611, -0.434461, 0.872748,
		0.945325, 0.315048, -0.084290,
		-0.238337, 0.843794, 0.480840,
		39.697010, 39.927853, 24.629278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421154, 39.344246, 24.752506>,  <39.863846, 39.337196, 24.292690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421154, 39.344246, 24.752506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101261, 39.539001, 24.893000>,  <39.909325, 39.655853, 24.977295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101261, 39.539001, 24.893000>,  <40.421154, 39.344246, 24.752506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101261, 39.539001, 24.893000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145897, -0.409885, 0.900393,
		0.582354, 0.771321, 0.256765,
		-0.799736, 0.486886, 0.351231,
		39.861340, 39.685066, 24.998369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600483, 39.616100, 25.437853>,  <40.421154, 39.344246, 24.752506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600483, 39.616100, 25.437853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201149, 39.638988, 25.440941>,  <39.961548, 39.652721, 25.442795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201149, 39.638988, 25.440941>,  <40.600483, 39.616100, 25.437853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201149, 39.638988, 25.440941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017566, -0.428389, 0.903424,
		0.055002, 0.901781, 0.428679,
		-0.998332, 0.057220, 0.007721,
		39.901649, 39.656155, 25.443256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364101, 39.982193, 26.109474>,  <40.600483, 39.616100, 25.437853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364101, 39.982193, 26.109474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046894, 39.779301, 25.974518>,  <39.856571, 39.657566, 25.893543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046894, 39.779301, 25.974518>,  <40.364101, 39.982193, 26.109474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046894, 39.779301, 25.974518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078611, -0.463994, 0.882344,
		-0.604103, 0.726238, 0.328082,
		-0.793020, -0.507235, -0.337390,
		39.808987, 39.627129, 25.873301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817829, 39.980591, 26.665455>,  <40.364101, 39.982193, 26.109474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817829, 39.980591, 26.665455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740593, 39.666252, 26.430452>,  <39.694252, 39.477650, 26.289450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740593, 39.666252, 26.430452>,  <39.817829, 39.980591, 26.665455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740593, 39.666252, 26.430452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059089, -0.607002, 0.792500,
		-0.979400, 0.118310, 0.163642,
		-0.193092, -0.785844, -0.587507,
		39.682667, 39.430500, 26.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301414, 39.542339, 26.970697>,  <39.817829, 39.980591, 26.665455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301414, 39.542339, 26.970697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482269, 39.303226, 26.705902>,  <39.590782, 39.159760, 26.547026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482269, 39.303226, 26.705902>,  <39.301414, 39.542339, 26.970697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482269, 39.303226, 26.705902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205159, -0.652584, 0.729414,
		-0.868035, -0.465606, -0.172414,
		0.452134, -0.597784, -0.661989,
		39.617908, 39.123890, 26.507305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002602, 38.864079, 26.975550>,  <39.301414, 39.542339, 26.970697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002602, 38.864079, 26.975550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387020, 38.865242, 26.864994>,  <39.617672, 38.865940, 26.798660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.387020, 38.865242, 26.864994>,  <39.002602, 38.864079, 26.975550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387020, 38.865242, 26.864994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166155, -0.805185, 0.569272,
		-0.220888, -0.593017, -0.774299,
		0.961041, 0.002909, -0.276388,
		39.675331, 38.866116, 26.782078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205154, 38.230061, 26.801220>,  <39.002602, 38.864079, 26.975550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205154, 38.230061, 26.801220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552338, 38.407475, 26.890587>,  <39.760647, 38.513924, 26.944208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552338, 38.407475, 26.890587>,  <39.205154, 38.230061, 26.801220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552338, 38.407475, 26.890587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272252, -0.801196, 0.532882,
		0.415356, -0.401695, -0.816162,
		0.867962, 0.443537, 0.223419,
		39.812725, 38.540535, 26.957613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740299, 37.646282, 26.957499>,  <39.205154, 38.230061, 26.801220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740299, 37.646282, 26.957499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926716, 37.963913, 27.113569>,  <40.038567, 38.154491, 27.207212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926716, 37.963913, 27.113569>,  <39.740299, 37.646282, 26.957499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926716, 37.963913, 27.113569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220007, -0.531156, 0.818212,
		0.856972, -0.295481, -0.422245,
		0.466044, 0.794081, 0.390178,
		40.066528, 38.202137, 27.230623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401546, 37.487511, 27.085905>,  <39.740299, 37.646282, 26.957499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401546, 37.487511, 27.085905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288269, 37.782078, 27.331667>,  <40.220303, 37.958817, 27.479124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288269, 37.782078, 27.331667>,  <40.401546, 37.487511, 27.085905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288269, 37.782078, 27.331667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104675, -0.613070, 0.783064,
		0.953334, 0.286070, 0.096532,
		-0.283192, 0.736417, 0.614404,
		40.203312, 38.003002, 27.515987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922157, 37.385082, 27.566523>,  <40.401546, 37.487511, 27.085905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922157, 37.385082, 27.566523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.639565, 37.625172, 27.716518>,  <40.470009, 37.769226, 27.806517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.639565, 37.625172, 27.716518>,  <40.922157, 37.385082, 27.566523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639565, 37.625172, 27.716518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128575, -0.412182, 0.901984,
		0.695955, 0.685449, 0.214025,
		-0.706481, 0.600222, 0.374992,
		40.427620, 37.805237, 27.829016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212181, 37.724583, 28.180946>,  <40.922157, 37.385082, 27.566523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212181, 37.724583, 28.180946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814499, 37.716644, 28.223198>,  <40.575890, 37.711880, 28.248549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.814499, 37.716644, 28.223198>,  <41.212181, 37.724583, 28.180946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814499, 37.716644, 28.223198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103368, -0.445784, 0.889152,
		0.029441, 0.894921, 0.445253,
		-0.994207, -0.019847, 0.105631,
		40.516235, 37.710690, 28.254887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.811508, 42.794971, 26.002945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414574, 42.822250, 26.044151>,  <40.176411, 42.838615, 26.068874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414574, 42.822250, 26.044151>,  <40.811508, 42.794971, 26.002945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414574, 42.822250, 26.044151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095770, 0.102144, -0.990149,
		-0.078045, -0.992429, -0.094831,
		-0.992339, 0.068194, 0.103017,
		40.116871, 42.842709, 26.075056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505169, 42.340096, 25.486122>,  <40.811508, 42.794971, 26.002945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505169, 42.340096, 25.486122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.211430, 42.582703, 25.608023>,  <40.035187, 42.728268, 25.681164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.211430, 42.582703, 25.608023>,  <40.505169, 42.340096, 25.486122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211430, 42.582703, 25.608023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273997, 0.145896, -0.950600,
		-0.621020, -0.781568, 0.059047,
		-0.734344, 0.606520, 0.304751,
		39.991127, 42.764660, 25.699448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932735, 42.076668, 25.149385>,  <40.505169, 42.340096, 25.486122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932735, 42.076668, 25.149385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828339, 42.448410, 25.253836>,  <39.765701, 42.671455, 25.316505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828339, 42.448410, 25.253836>,  <39.932735, 42.076668, 25.149385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828339, 42.448410, 25.253836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297074, 0.180051, -0.937725,
		-0.918492, -0.322316, 0.229094,
		-0.260995, 0.929351, 0.261127,
		39.750042, 42.727215, 25.332174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297661, 42.283512, 24.777708>,  <39.932735, 42.076668, 25.149385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297661, 42.283512, 24.777708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420628, 42.653736, 24.866102>,  <39.494408, 42.875870, 24.919140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420628, 42.653736, 24.866102>,  <39.297661, 42.283512, 24.777708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420628, 42.653736, 24.866102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207539, 0.291858, -0.933674,
		-0.928666, 0.241165, 0.281812,
		0.307418, 0.925558, 0.220987,
		39.512852, 42.931404, 24.932398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770287, 42.758373, 24.531843>,  <39.297661, 42.283512, 24.777708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770287, 42.758373, 24.531843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122066, 42.948463, 24.542553>,  <39.333134, 43.062519, 24.548979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122066, 42.948463, 24.542553>,  <38.770287, 42.758373, 24.531843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122066, 42.948463, 24.542553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192875, 0.407229, -0.892729,
		-0.435155, 0.779950, 0.449799,
		0.879454, 0.475230, 0.026775,
		39.385902, 43.091034, 24.550585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705494, 43.261829, 24.071512>,  <38.770287, 42.758373, 24.531843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705494, 43.261829, 24.071512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.095097, 43.322300, 24.138983>,  <39.328857, 43.358582, 24.179464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.095097, 43.322300, 24.138983>,  <38.705494, 43.261829, 24.071512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095097, 43.322300, 24.138983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079840, 0.467755, -0.880245,
		-0.211969, 0.870834, 0.443528,
		0.974010, 0.151173, 0.168677,
		39.387299, 43.367653, 24.189587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826344, 43.984665, 23.881498>,  <38.705494, 43.261829, 24.071512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826344, 43.984665, 23.881498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183182, 43.805252, 23.859625>,  <39.397285, 43.697605, 23.846500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183182, 43.805252, 23.859625>,  <38.826344, 43.984665, 23.881498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183182, 43.805252, 23.859625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226189, 0.548052, -0.805281,
		0.391159, 0.706019, 0.590366,
		0.892095, -0.448527, -0.054682,
		39.450809, 43.670692, 23.843220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320457, 44.467091, 23.815983>,  <38.826344, 43.984665, 23.881498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320457, 44.467091, 23.815983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.484375, 44.134361, 23.666243>,  <39.582726, 43.934723, 23.576399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.484375, 44.134361, 23.666243>,  <39.320457, 44.467091, 23.815983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484375, 44.134361, 23.666243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346454, 0.521574, -0.779699,
		0.843822, 0.189824, 0.501928,
		0.409798, -0.831822, -0.374350,
		39.607315, 43.884815, 23.553938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954113, 44.691429, 23.577826>,  <39.320457, 44.467091, 23.815983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954113, 44.691429, 23.577826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.911568, 44.330170, 23.411451>,  <39.886040, 44.113415, 23.311626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.911568, 44.330170, 23.411451>,  <39.954113, 44.691429, 23.577826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911568, 44.330170, 23.411451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342622, 0.359403, -0.868009,
		0.933433, -0.234832, 0.271213,
		-0.106361, -0.903152, -0.415937,
		39.879658, 44.059223, 23.286671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495850, 44.632534, 23.172644>,  <39.954113, 44.691429, 23.577826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495850, 44.632534, 23.172644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246716, 44.357208, 23.023890>,  <40.097237, 44.192013, 22.934637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246716, 44.357208, 23.023890>,  <40.495850, 44.632534, 23.172644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246716, 44.357208, 23.023890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306286, 0.222873, -0.925481,
		0.719908, -0.690324, 0.072010,
		-0.622833, -0.688317, -0.371885,
		40.059864, 44.150715, 22.912325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812069, 44.434700, 22.608942>,  <40.495850, 44.632534, 23.172644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812069, 44.434700, 22.608942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441750, 44.293701, 22.554314>,  <40.219559, 44.209103, 22.521538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441750, 44.293701, 22.554314>,  <40.812069, 44.434700, 22.608942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441750, 44.293701, 22.554314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000135, 0.361574, -0.932343,
		0.378035, -0.863137, -0.334789,
		-0.925791, -0.352504, -0.136571,
		40.164013, 44.187950, 22.513344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871147, 44.066944, 22.000668>,  <40.812069, 44.434700, 22.608942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871147, 44.066944, 22.000668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493725, 44.188934, 22.052355>,  <40.267273, 44.262127, 22.083366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493725, 44.188934, 22.052355>,  <40.871147, 44.066944, 22.000668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493725, 44.188934, 22.052355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056103, 0.237326, -0.969809,
		-0.326434, -0.922316, -0.206820,
		-0.943553, 0.304976, 0.129216,
		40.210659, 44.280426, 22.091120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487038, 43.801811, 21.317469>,  <40.871147, 44.066944, 22.000668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487038, 43.801811, 21.317469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.318172, 44.125072, 21.481741>,  <40.216850, 44.319031, 21.580303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.318172, 44.125072, 21.481741>,  <40.487038, 43.801811, 21.317469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318172, 44.125072, 21.481741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026094, 0.442008, -0.896631,
		-0.906142, -0.389245, -0.165514,
		-0.422168, 0.808156, 0.410680,
		40.191521, 44.367519, 21.604944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080425, 43.944042, 20.811090>,  <40.487038, 43.801811, 21.317469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080425, 43.944042, 20.811090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145050, 44.250984, 21.059303>,  <40.183823, 44.435150, 21.208231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145050, 44.250984, 21.059303>,  <40.080425, 43.944042, 20.811090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145050, 44.250984, 21.059303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035776, 0.632934, -0.773379,
		-0.986215, 0.102745, 0.129708,
		0.161558, 0.767358, 0.620533,
		40.193516, 44.481190, 21.245462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311218, 44.211700, 20.197392>,  <40.080425, 43.944042, 20.811090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311218, 44.211700, 20.197392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.395302, 43.922695, 19.933941>,  <40.445751, 43.749290, 19.775871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.395302, 43.922695, 19.933941>,  <40.311218, 44.211700, 20.197392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395302, 43.922695, 19.933941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026138, -0.677590, 0.734975,
		-0.977307, -0.137283, -0.161321,
		0.210209, -0.722512, -0.658626,
		40.458366, 43.705940, 19.736353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737278, 43.778175, 20.149668>,  <40.311218, 44.211700, 20.197392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737278, 43.778175, 20.149668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061394, 43.578644, 20.026638>,  <40.255863, 43.458923, 19.952820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061394, 43.578644, 20.026638>,  <39.737278, 43.778175, 20.149668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061394, 43.578644, 20.026638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212038, -0.738833, 0.639660,
		-0.546328, -0.453091, -0.704439,
		0.810287, -0.498832, -0.307573,
		40.304482, 43.428993, 19.934366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602554, 43.040279, 20.076723>,  <39.737278, 43.778175, 20.149668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602554, 43.040279, 20.076723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001926, 43.029678, 20.096432>,  <40.241550, 43.023319, 20.108257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001926, 43.029678, 20.096432>,  <39.602554, 43.040279, 20.076723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001926, 43.029678, 20.096432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051528, -0.778687, 0.625293,
		0.021794, -0.626852, -0.778833,
		0.998434, -0.026504, 0.049271,
		40.301456, 43.021729, 20.111214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801777, 42.466045, 20.150890>,  <39.602554, 43.040279, 20.076723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801777, 42.466045, 20.150890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165012, 42.591736, 20.261621>,  <40.382954, 42.667152, 20.328060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165012, 42.591736, 20.261621>,  <39.801777, 42.466045, 20.150890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165012, 42.591736, 20.261621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042401, -0.726634, 0.685716,
		0.416627, -0.610952, -0.673171,
		0.908088, 0.314231, 0.276830,
		40.437439, 42.686005, 20.344671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165874, 41.874249, 20.271954>,  <39.801777, 42.466045, 20.150890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165874, 41.874249, 20.271954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357071, 42.153522, 20.485146>,  <40.471790, 42.321087, 20.613060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.357071, 42.153522, 20.485146>,  <40.165874, 41.874249, 20.271954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357071, 42.153522, 20.485146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254116, -0.690756, 0.676965,
		0.840802, -0.188146, -0.507595,
		0.477992, 0.698182, 0.532978,
		40.500469, 42.362976, 20.645039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716003, 41.572113, 20.476824>,  <40.165874, 41.874249, 20.271954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716003, 41.572113, 20.476824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.713406, 41.887032, 20.723440>,  <40.711849, 42.075981, 20.871410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.713406, 41.887032, 20.723440>,  <40.716003, 41.572113, 20.476824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713406, 41.887032, 20.723440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144507, -0.609346, 0.779625,
		0.989483, 0.094156, -0.109813,
		-0.006493, 0.787294, 0.616543,
		40.711456, 42.123219, 20.908403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318890, 41.448681, 20.873749>,  <40.716003, 41.572113, 20.476824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318890, 41.448681, 20.873749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050957, 41.683430, 21.055698>,  <40.890198, 41.824280, 21.164867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.050957, 41.683430, 21.055698>,  <41.318890, 41.448681, 20.873749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050957, 41.683430, 21.055698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027563, -0.592537, 0.805072,
		0.742004, 0.551798, 0.380722,
		-0.669829, 0.586873, 0.454874,
		40.850010, 41.859493, 21.192160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358582, 41.213730, 21.609819>,  <41.318890, 41.448681, 20.873749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358582, 41.213730, 21.609819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.023319, 41.431168, 21.627708>,  <40.822163, 41.561630, 21.638441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.023319, 41.431168, 21.627708>,  <41.358582, 41.213730, 21.609819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023319, 41.431168, 21.627708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194253, -0.374120, 0.906807,
		0.509664, 0.751360, 0.419166,
		-0.838158, 0.543591, 0.044721,
		40.771873, 41.594246, 21.641125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357777, 41.706295, 22.305622>,  <41.358582, 41.213730, 21.609819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357777, 41.706295, 22.305622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987732, 41.645046, 22.166641>,  <40.765705, 41.608295, 22.083252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987732, 41.645046, 22.166641>,  <41.357777, 41.706295, 22.305622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987732, 41.645046, 22.166641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310448, -0.221835, 0.924344,
		-0.218617, 0.962986, 0.157684,
		-0.925110, -0.153124, -0.347454,
		40.710197, 41.599110, 22.062405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017578, 42.001591, 22.848734>,  <41.357777, 41.706295, 22.305622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017578, 42.001591, 22.848734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.750645, 41.772324, 22.658514>,  <40.590485, 41.634766, 22.544382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.750645, 41.772324, 22.658514>,  <41.017578, 42.001591, 22.848734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750645, 41.772324, 22.658514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343158, -0.330069, 0.879373,
		-0.660989, 0.750025, 0.023580,
		-0.667335, -0.573164, -0.475549,
		40.550446, 41.600376, 22.515850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465714, 41.977402, 23.318937>,  <41.017578, 42.001591, 22.848734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465714, 41.977402, 23.318937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.370262, 41.699551, 23.047483>,  <40.312992, 41.532841, 22.884611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.370262, 41.699551, 23.047483>,  <40.465714, 41.977402, 23.318937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370262, 41.699551, 23.047483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555565, -0.475516, 0.682079,
		-0.796494, 0.539791, -0.272439,
		-0.238631, -0.694630, -0.678635,
		40.298672, 41.491161, 22.843893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686359, 41.782764, 23.394005>,  <40.465714, 41.977402, 23.318937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686359, 41.782764, 23.394005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866219, 41.458931, 23.243063>,  <39.974133, 41.264633, 23.152498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866219, 41.458931, 23.243063>,  <39.686359, 41.782764, 23.394005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866219, 41.458931, 23.243063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498739, -0.578042, 0.645853,
		-0.740999, -0.102201, -0.663683,
		0.449644, -0.809581, -0.377357,
		40.001110, 41.216057, 23.129856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156918, 41.316494, 23.173815>,  <39.686359, 41.782764, 23.394005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156918, 41.316494, 23.173815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491516, 41.102379, 23.220707>,  <39.692276, 40.973911, 23.248842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491516, 41.102379, 23.220707>,  <39.156918, 41.316494, 23.173815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491516, 41.102379, 23.220707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490740, -0.636594, 0.594913,
		-0.243819, -0.555173, -0.795195,
		0.836496, -0.535285, 0.117232,
		39.742466, 40.941792, 23.255877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933998, 40.624821, 23.129005>,  <39.156918, 41.316494, 23.173815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933998, 40.624821, 23.129005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276218, 40.643368, 23.335262>,  <39.481548, 40.654495, 23.459017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276218, 40.643368, 23.335262>,  <38.933998, 40.624821, 23.129005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276218, 40.643368, 23.335262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482677, -0.288778, 0.826820,
		0.187242, -0.956273, -0.224684,
		0.855549, 0.046365, 0.515642,
		39.532883, 40.657276, 23.489954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004566, 39.867889, 22.846384>,  <38.933998, 40.624821, 23.129005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004566, 39.867889, 22.846384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782497, 39.590008, 22.663445>,  <38.649258, 39.423279, 22.553680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782497, 39.590008, 22.663445>,  <39.004566, 39.867889, 22.846384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782497, 39.590008, 22.663445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093878, 0.494019, -0.864368,
		0.826421, -0.522807, -0.209047,
		-0.555171, -0.694707, -0.457349,
		38.615948, 39.381596, 22.526239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233456, 39.886322, 22.212204>,  <39.004566, 39.867889, 22.846384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233456, 39.886322, 22.212204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.898735, 39.673046, 22.162443>,  <38.697903, 39.545082, 22.132587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.898735, 39.673046, 22.162443>,  <39.233456, 39.886322, 22.212204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898735, 39.673046, 22.162443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241554, 0.563430, -0.790062,
		0.491344, -0.631074, -0.600272,
		-0.836799, -0.533190, -0.124400,
		38.647694, 39.513088, 22.125124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226315, 39.689056, 21.529606>,  <39.233456, 39.886322, 22.212204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226315, 39.689056, 21.529606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850651, 39.697502, 21.666737>,  <38.625252, 39.702572, 21.749016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850651, 39.697502, 21.666737>,  <39.226315, 39.689056, 21.529606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850651, 39.697502, 21.666737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266178, 0.586088, -0.765278,
		-0.217088, -0.809973, -0.544810,
		-0.939160, 0.021116, 0.342829,
		38.568901, 39.703838, 21.769585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817245, 39.410328, 21.004313>,  <39.226315, 39.689056, 21.529606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817245, 39.410328, 21.004313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582859, 39.645393, 21.227488>,  <38.442226, 39.786434, 21.361393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.582859, 39.645393, 21.227488>,  <38.817245, 39.410328, 21.004313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582859, 39.645393, 21.227488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178229, 0.578200, -0.796191,
		-0.790495, -0.565979, -0.234064,
		-0.585962, 0.587668, 0.557938,
		38.407070, 39.821693, 21.394869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206779, 39.621887, 20.665051>,  <38.817245, 39.410328, 21.004313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206779, 39.621887, 20.665051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218769, 39.904556, 20.947815>,  <38.225964, 40.074158, 21.117474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218769, 39.904556, 20.947815>,  <38.206779, 39.621887, 20.665051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218769, 39.904556, 20.947815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152160, 0.702210, -0.695520,
		-0.987901, -0.086716, 0.128574,
		0.029973, 0.706669, 0.706909,
		38.227760, 40.116558, 21.159887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719658, 39.999474, 20.390671>,  <38.206779, 39.621887, 20.665051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719658, 39.999474, 20.390671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889999, 40.246597, 20.655079>,  <37.992207, 40.394871, 20.813725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889999, 40.246597, 20.655079>,  <37.719658, 39.999474, 20.390671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889999, 40.246597, 20.655079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147104, 0.768138, -0.623157,
		-0.892751, 0.168138, 0.418001,
		0.425859, 0.617814, 0.661023,
		38.017757, 40.431942, 20.853386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279030, 40.531410, 20.593470>,  <37.719658, 39.999474, 20.390671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279030, 40.531410, 20.593470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627766, 40.708481, 20.677303>,  <37.837009, 40.814724, 20.727604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627766, 40.708481, 20.677303>,  <37.279030, 40.531410, 20.593470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627766, 40.708481, 20.677303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219479, 0.735652, -0.640815,
		-0.437857, 0.512691, 0.738532,
		0.871843, 0.442677, 0.209586,
		37.889320, 40.841286, 20.740179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814167, 40.613003, 21.116602>,  <37.279030, 40.531410, 20.593470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814167, 40.613003, 21.116602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418495, 40.669071, 21.133959>,  <36.181091, 40.702713, 21.144373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418495, 40.669071, 21.133959>,  <36.814167, 40.613003, 21.116602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418495, 40.669071, 21.133959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095759, -0.840719, 0.532937,
		0.111185, 0.523013, 0.845042,
		-0.989175, 0.140175, 0.043392,
		36.121742, 40.711124, 21.146976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646893, 40.570164, 21.794323>,  <36.814167, 40.613003, 21.116602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646893, 40.570164, 21.794323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309464, 40.474983, 21.601755>,  <36.107006, 40.417873, 21.486216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309464, 40.474983, 21.601755>,  <36.646893, 40.570164, 21.794323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309464, 40.474983, 21.601755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080741, -0.830079, 0.551770,
		-0.530910, 0.504329, 0.681019,
		-0.843573, -0.237954, -0.481417,
		36.056393, 40.403599, 21.457331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304749, 40.389103, 22.338549>,  <36.646893, 40.570164, 21.794323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304749, 40.389103, 22.338549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111992, 40.245411, 22.018866>,  <35.996338, 40.159195, 21.827055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111992, 40.245411, 22.018866>,  <36.304749, 40.389103, 22.338549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111992, 40.245411, 22.018866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222604, -0.831985, 0.508181,
		-0.847484, 0.422795, 0.320960,
		-0.481890, -0.359229, -0.799210,
		35.967426, 40.137642, 21.779102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717693, 40.136154, 22.608358>,  <36.304749, 40.389103, 22.338549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717693, 40.136154, 22.608358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715641, 39.944824, 22.257092>,  <35.714409, 39.830025, 22.046331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715641, 39.944824, 22.257092>,  <35.717693, 40.136154, 22.608358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715641, 39.944824, 22.257092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076756, -0.875400, 0.477267,
		-0.997037, 0.069852, -0.032226,
		-0.005127, -0.478326, -0.878167,
		35.714104, 39.801327, 21.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263222, 39.529064, 22.740404>,  <35.717693, 40.136154, 22.608358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263222, 39.529064, 22.740404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454487, 39.449730, 22.398172>,  <35.569248, 39.402130, 22.192833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454487, 39.449730, 22.398172>,  <35.263222, 39.529064, 22.740404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454487, 39.449730, 22.398172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115854, -0.979899, 0.162404,
		-0.870594, 0.021466, -0.491534,
		0.478168, -0.198334, -0.855581,
		35.597939, 39.390228, 22.141499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836239, 38.982746, 22.277822>,  <35.263222, 39.529064, 22.740404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836239, 38.982746, 22.277822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225754, 38.972084, 22.187471>,  <35.459465, 38.965687, 22.133261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.225754, 38.972084, 22.187471>,  <34.836239, 38.982746, 22.277822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225754, 38.972084, 22.187471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004176, -0.990846, 0.134930,
		-0.227409, -0.132337, -0.964765,
		0.973790, -0.026655, -0.225880,
		35.517891, 38.964088, 22.119707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901176, 38.464085, 21.639868>,  <34.836239, 38.982746, 22.277822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901176, 38.464085, 21.639868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260147, 38.488083, 21.814695>,  <35.475529, 38.502483, 21.919592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260147, 38.488083, 21.814695>,  <34.901176, 38.464085, 21.639868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260147, 38.488083, 21.814695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020358, -0.995286, 0.094818,
		0.440695, -0.076194, -0.894417,
		0.897426, 0.059994, 0.437067,
		35.529373, 38.506081, 21.945816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.595821, 44.779015, 22.334080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.958237, 44.701382, 22.183655>,  <37.175686, 44.654804, 22.093401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.958237, 44.701382, 22.183655>,  <36.595821, 44.779015, 22.334080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958237, 44.701382, 22.183655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095576, -0.771833, 0.628601,
		-0.412253, -0.605482, -0.680764,
		0.906042, -0.194078, -0.376060,
		37.230049, 44.643158, 22.070837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648907, 44.129276, 21.982166>,  <36.595821, 44.779015, 22.334080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648907, 44.129276, 21.982166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992912, 44.222198, 22.163895>,  <37.199318, 44.277954, 22.272932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992912, 44.222198, 22.163895>,  <36.648907, 44.129276, 21.982166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992912, 44.222198, 22.163895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228692, -0.620447, 0.750164,
		0.456151, -0.749052, -0.480466,
		0.860015, 0.232309, 0.454319,
		37.250916, 44.291889, 22.300190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923119, 43.479717, 22.286100>,  <36.648907, 44.129276, 21.982166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923119, 43.479717, 22.286100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.081848, 43.801163, 22.463516>,  <37.177086, 43.994030, 22.569965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.081848, 43.801163, 22.463516>,  <36.923119, 43.479717, 22.286100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081848, 43.801163, 22.463516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227018, -0.382278, 0.895727,
		0.889377, -0.456139, 0.030738,
		0.396825, 0.803617, 0.443541,
		37.200897, 44.042248, 22.596579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232212, 43.181763, 22.871939>,  <36.923119, 43.479717, 22.286100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232212, 43.181763, 22.871939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.176064, 43.567379, 22.962206>,  <37.142376, 43.798748, 23.016367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.176064, 43.567379, 22.962206>,  <37.232212, 43.181763, 22.871939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176064, 43.567379, 22.962206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294305, -0.258249, 0.920159,
		0.945347, 0.062745, 0.319971,
		-0.140368, 0.964039, 0.225669,
		37.133953, 43.856590, 23.029907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594837, 43.349594, 23.404264>,  <37.232212, 43.181763, 22.871939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594837, 43.349594, 23.404264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313580, 43.630470, 23.449030>,  <37.144825, 43.798996, 23.475889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313580, 43.630470, 23.449030>,  <37.594837, 43.349594, 23.404264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313580, 43.630470, 23.449030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089289, -0.068953, 0.993616,
		0.705422, 0.708645, -0.014214,
		-0.703141, 0.702188, 0.111915,
		37.102638, 43.841125, 23.482605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768787, 43.706501, 23.963434>,  <37.594837, 43.349594, 23.404264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768787, 43.706501, 23.963434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381084, 43.779846, 23.897799>,  <37.148464, 43.823853, 23.858418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381084, 43.779846, 23.897799>,  <37.768787, 43.706501, 23.963434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381084, 43.779846, 23.897799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200424, -0.201449, 0.958775,
		0.142749, 0.962183, 0.232005,
		-0.969254, 0.183364, -0.164087,
		37.090309, 43.834854, 23.848572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493725, 43.950779, 24.600981>,  <37.768787, 43.706501, 23.963434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493725, 43.950779, 24.600981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147739, 43.858921, 24.422501>,  <36.940147, 43.803806, 24.315413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.147739, 43.858921, 24.422501>,  <37.493725, 43.950779, 24.600981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147739, 43.858921, 24.422501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333010, -0.402504, 0.852698,
		-0.375413, 0.886146, 0.271680,
		-0.864968, -0.229641, -0.446201,
		36.888248, 43.790028, 24.288641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022877, 44.216293, 25.091921>,  <37.493725, 43.950779, 24.600981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022877, 44.216293, 25.091921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830860, 43.973698, 24.838390>,  <36.715649, 43.828140, 24.686272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830860, 43.973698, 24.838390>,  <37.022877, 44.216293, 25.091921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830860, 43.973698, 24.838390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499075, -0.405387, 0.765889,
		-0.721444, 0.683987, -0.108077,
		-0.480045, -0.606484, -0.633824,
		36.686848, 43.791752, 24.648243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215977, 44.190208, 25.226139>,  <37.022877, 44.216293, 25.091921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215977, 44.190208, 25.226139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.289837, 43.840858, 25.045860>,  <36.334152, 43.631248, 24.937693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.289837, 43.840858, 25.045860>,  <36.215977, 44.190208, 25.226139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289837, 43.840858, 25.045860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477557, -0.480538, 0.735543,
		-0.858979, 0.079418, -0.505814,
		0.184647, -0.873371, -0.450699,
		36.345230, 43.578846, 24.910650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586571, 43.897587, 25.318705>,  <36.215977, 44.190208, 25.226139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586571, 43.897587, 25.318705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.838207, 43.606342, 25.209820>,  <35.989189, 43.431595, 25.144489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.838207, 43.606342, 25.209820>,  <35.586571, 43.897587, 25.318705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838207, 43.606342, 25.209820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425377, -0.615560, 0.663430,
		-0.650611, -0.301568, -0.696966,
		0.629094, -0.728109, -0.272210,
		36.026936, 43.387909, 25.128157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142193, 43.237988, 25.266745>,  <35.586571, 43.897587, 25.318705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142193, 43.237988, 25.266745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519798, 43.114395, 25.313005>,  <35.746361, 43.040241, 25.340763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519798, 43.114395, 25.313005>,  <35.142193, 43.237988, 25.266745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519798, 43.114395, 25.313005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317187, -0.753559, 0.575796,
		-0.090757, -0.580242, -0.809372,
		0.944010, -0.308980, 0.115654,
		35.803001, 43.021702, 25.347702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036980, 42.534370, 25.157127>,  <35.142193, 43.237988, 25.266745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036980, 42.534370, 25.157127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379238, 42.586998, 25.357347>,  <35.584595, 42.618576, 25.477480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.379238, 42.586998, 25.357347>,  <35.036980, 42.534370, 25.157127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379238, 42.586998, 25.357347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329067, -0.608187, 0.722373,
		0.399473, -0.782814, -0.477099,
		0.855649, 0.131571, 0.500553,
		35.635933, 42.626469, 25.507513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029572, 41.729172, 25.092585>,  <35.036980, 42.534370, 25.157127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029572, 41.729172, 25.092585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.693863, 41.635757, 24.896185>,  <34.492439, 41.579708, 24.778345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.693863, 41.635757, 24.896185>,  <35.029572, 41.729172, 25.092585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693863, 41.635757, 24.896185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087736, 0.833049, -0.546198,
		0.536585, -0.501487, -0.678666,
		-0.839273, -0.233538, -0.491000,
		34.442081, 41.565697, 24.748884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237202, 41.821304, 24.335129>,  <35.029572, 41.729172, 25.092585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237202, 41.821304, 24.335129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840168, 41.853729, 24.371378>,  <34.601948, 41.873184, 24.393127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840168, 41.853729, 24.371378>,  <35.237202, 41.821304, 24.335129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840168, 41.853729, 24.371378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014389, 0.818388, -0.574487,
		-0.120735, -0.568920, -0.813482,
		-0.992581, 0.081066, 0.090622,
		34.542393, 41.878048, 24.398565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003384, 41.936523, 23.636652>,  <35.237202, 41.821304, 24.335129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003384, 41.936523, 23.636652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682938, 42.053112, 23.845751>,  <34.490669, 42.123066, 23.971210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682938, 42.053112, 23.845751>,  <35.003384, 41.936523, 23.636652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682938, 42.053112, 23.845751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122881, 0.774707, -0.620266,
		-0.585764, -0.561138, -0.584811,
		-0.801112, 0.291467, 0.522749,
		34.442604, 42.140553, 24.002575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381878, 41.996281, 23.053425>,  <35.003384, 41.936523, 23.636652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381878, 41.996281, 23.053425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.294853, 42.214703, 23.377026>,  <34.242638, 42.345757, 23.571186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.294853, 42.214703, 23.377026>,  <34.381878, 41.996281, 23.053425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294853, 42.214703, 23.377026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092380, 0.813618, -0.574014,
		-0.971664, -0.199621, -0.126570,
		-0.217565, 0.546057, 0.809004,
		34.229584, 42.378521, 23.619726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800037, 42.299030, 22.885206>,  <34.381878, 41.996281, 23.053425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800037, 42.299030, 22.885206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935520, 42.524570, 23.186499>,  <34.016808, 42.659893, 23.367273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935520, 42.524570, 23.186499>,  <33.800037, 42.299030, 22.885206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935520, 42.524570, 23.186499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204953, 0.825539, -0.525813,
		-0.918300, 0.023717, 0.395174,
		0.338702, 0.563846, 0.753231,
		34.037132, 42.693726, 23.412468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341225, 42.808773, 22.983650>,  <33.800037, 42.299030, 22.885206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341225, 42.808773, 22.983650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.674416, 42.947277, 23.156277>,  <33.874332, 43.030380, 23.259853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.674416, 42.947277, 23.156277>,  <33.341225, 42.808773, 22.983650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674416, 42.947277, 23.156277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176137, 0.905349, -0.386418,
		-0.524519, 0.245864, 0.815126,
		0.832980, 0.346257, 0.431567,
		33.924309, 43.051155, 23.285748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090958, 43.480907, 23.200068>,  <33.341225, 42.808773, 22.983650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090958, 43.480907, 23.200068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490025, 43.506920, 23.208323>,  <33.729465, 43.522526, 23.213276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490025, 43.506920, 23.208323>,  <33.090958, 43.480907, 23.200068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490025, 43.506920, 23.208323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052752, 0.927114, -0.371049,
		-0.043264, 0.369096, 0.928384,
		0.997670, 0.065027, 0.020640,
		33.789326, 43.526428, 23.214514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177357, 44.148766, 23.353483>,  <33.090958, 43.480907, 23.200068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177357, 44.148766, 23.353483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.522430, 44.030293, 23.189508>,  <33.729473, 43.959209, 23.091124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.522430, 44.030293, 23.189508>,  <33.177357, 44.148766, 23.353483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522430, 44.030293, 23.189508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072137, 0.874342, -0.479919,
		0.500570, 0.384448, 0.775648,
		0.862685, -0.296186, -0.409936,
		33.781235, 43.941437, 23.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773209, 44.754227, 23.450333>,  <33.177357, 44.148766, 23.353483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773209, 44.754227, 23.450333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.889652, 44.536884, 23.135366>,  <33.959518, 44.406479, 22.946386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.889652, 44.536884, 23.135366>,  <33.773209, 44.754227, 23.450333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889652, 44.536884, 23.135366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341603, 0.827839, -0.444959,
		0.893623, -0.139450, 0.426605,
		0.291111, -0.543355, -0.787413,
		33.976986, 44.373878, 22.899143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498943, 44.931252, 23.346344>,  <33.773209, 44.754227, 23.450333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498943, 44.931252, 23.346344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.378548, 44.766758, 23.002184>,  <34.306309, 44.668064, 22.795687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.378548, 44.766758, 23.002184>,  <34.498943, 44.931252, 23.346344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378548, 44.766758, 23.002184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312930, 0.809689, -0.496466,
		0.900821, -0.418678, -0.115023,
		-0.300993, -0.411232, -0.860402,
		34.288250, 44.643387, 22.744062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044281, 45.028862, 23.001513>,  <34.498943, 44.931252, 23.346344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044281, 45.028862, 23.001513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.753109, 44.974506, 22.732691>,  <34.578407, 44.941895, 22.571398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.753109, 44.974506, 22.732691>,  <35.044281, 45.028862, 23.001513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753109, 44.974506, 22.732691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410765, 0.698379, -0.586122,
		0.548995, -0.702710, -0.452552,
		-0.727927, -0.135885, -0.672055,
		34.534733, 44.933743, 22.531075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322868, 44.943462, 22.387758>,  <35.044281, 45.028862, 23.001513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322868, 44.943462, 22.387758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.960121, 45.046951, 22.254704>,  <34.742470, 45.109043, 22.174871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.960121, 45.046951, 22.254704>,  <35.322868, 44.943462, 22.387758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960121, 45.046951, 22.254704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420457, 0.502608, -0.755381,
		-0.028245, -0.824894, -0.564581,
		-0.906873, 0.258718, -0.332636,
		34.688061, 45.124565, 22.154913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297733, 44.649998, 21.750528>,  <35.322868, 44.943462, 22.387758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297733, 44.649998, 21.750528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.012047, 44.929970, 21.751024>,  <34.840637, 45.097954, 21.751322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.012047, 44.929970, 21.751024>,  <35.297733, 44.649998, 21.750528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012047, 44.929970, 21.751024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530828, 0.542811, -0.650828,
		-0.456205, -0.464172, -0.759224,
		-0.714211, 0.699929, 0.001238,
		34.797783, 45.139950, 21.751396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667957, 44.192928, 21.269377>,  <35.297733, 44.649998, 21.750528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667957, 44.192928, 21.269377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.464462, 44.085922, 20.942055>,  <35.342365, 44.021717, 20.745663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.464462, 44.085922, 20.942055>,  <35.667957, 44.192928, 21.269377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464462, 44.085922, 20.942055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122844, -0.963327, 0.238559,
		-0.852112, 0.020840, 0.522944,
		-0.508737, -0.267520, -0.818303,
		35.311840, 44.005665, 20.696564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114532, 43.764236, 21.356728>,  <35.667957, 44.192928, 21.269377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114532, 43.764236, 21.356728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226448, 43.682190, 20.981569>,  <35.293598, 43.632961, 20.756475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.226448, 43.682190, 20.981569>,  <35.114532, 43.764236, 21.356728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226448, 43.682190, 20.981569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264900, -0.922494, 0.280771,
		-0.922803, -0.326998, -0.203735,
		0.279756, -0.205127, -0.937902,
		35.310387, 43.620655, 20.700201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710556, 43.181622, 21.210201>,  <35.114532, 43.764236, 21.356728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710556, 43.181622, 21.210201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.040428, 43.181438, 20.983963>,  <35.238354, 43.181328, 20.848221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.040428, 43.181438, 20.983963>,  <34.710556, 43.181622, 21.210201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040428, 43.181438, 20.983963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095654, -0.985481, 0.140274,
		-0.557449, -0.169783, -0.812665,
		0.824682, -0.000461, -0.565596,
		35.287834, 43.181301, 20.814283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592800, 42.593464, 20.782934>,  <34.710556, 43.181622, 21.210201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592800, 42.593464, 20.782934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.985104, 42.663757, 20.748919>,  <35.220486, 42.705933, 20.728508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.985104, 42.663757, 20.748919>,  <34.592800, 42.593464, 20.782934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985104, 42.663757, 20.748919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169389, -0.982544, -0.076910,
		-0.097073, 0.061025, -0.993405,
		0.980757, 0.175738, -0.085041,
		35.279331, 42.716480, 20.723406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828197, 42.104919, 20.279535>,  <34.592800, 42.593464, 20.782934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828197, 42.104919, 20.279535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.185482, 42.206505, 20.427954>,  <35.399853, 42.267456, 20.517004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.185482, 42.206505, 20.427954>,  <34.828197, 42.104919, 20.279535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185482, 42.206505, 20.427954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298859, -0.951876, -0.067933,
		0.335937, 0.171569, -0.926127,
		0.893213, 0.253960, 0.371045,
		35.453445, 42.282692, 20.539267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343105, 41.755146, 19.909424>,  <34.828197, 42.104919, 20.279535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343105, 41.755146, 19.909424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530560, 41.849403, 20.249977>,  <35.643032, 41.905960, 20.454309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.530560, 41.849403, 20.249977>,  <35.343105, 41.755146, 19.909424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530560, 41.849403, 20.249977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312870, -0.945570, 0.089500,
		0.826133, 0.224430, -0.516852,
		0.468633, 0.235647, 0.851383,
		35.671150, 41.920097, 20.505392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907501, 41.324287, 19.907608>,  <35.343105, 41.755146, 19.909424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907501, 41.324287, 19.907608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.858051, 41.425808, 20.291336>,  <35.828381, 41.486721, 20.521574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.858051, 41.425808, 20.291336>,  <35.907501, 41.324287, 19.907608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858051, 41.425808, 20.291336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126276, -0.954856, 0.268895,
		0.984261, 0.154382, 0.085999,
		-0.123629, 0.253803, 0.959323,
		35.820961, 41.501949, 20.579132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560184, 40.899742, 20.334398>,  <35.907501, 41.324287, 19.907608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560184, 40.899742, 20.334398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.262054, 40.984306, 20.587315>,  <36.083176, 41.035046, 20.739065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.262054, 40.984306, 20.587315>,  <36.560184, 40.899742, 20.334398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262054, 40.984306, 20.587315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125168, -0.887158, 0.444166,
		0.654844, 0.410191, 0.634762,
		-0.745327, 0.211407, 0.632293,
		36.038456, 41.047729, 20.777002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143200, 41.344482, 20.534700>,  <36.560184, 40.899742, 20.334398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143200, 41.344482, 20.534700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.541920, 41.312519, 20.534975>,  <37.781151, 41.293343, 20.535139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.541920, 41.312519, 20.534975>,  <37.143200, 41.344482, 20.534700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541920, 41.312519, 20.534975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064741, 0.802509, -0.593117,
		0.046845, 0.591264, 0.805116,
		0.996802, -0.079908, 0.000685,
		37.840961, 41.288548, 20.535181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339954, 41.997375, 20.719179>,  <37.143200, 41.344482, 20.534700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339954, 41.997375, 20.719179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 41.805286, 20.509878>,  <37.790504, 41.690033, 20.384298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621548, 41.805286, 20.509878>,  <37.339954, 41.997375, 20.719179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621548, 41.805286, 20.509878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076085, 0.783505, -0.616709,
		0.706127, 0.394343, 0.588114,
		0.703985, -0.480222, -0.523251,
		37.832745, 41.661221, 20.352903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879871, 42.460842, 20.652918>,  <37.339954, 41.997375, 20.719179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879871, 42.460842, 20.652918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948071, 42.184746, 20.371635>,  <37.988991, 42.019089, 20.202866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.948071, 42.184746, 20.371635>,  <37.879871, 42.460842, 20.652918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948071, 42.184746, 20.371635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177062, 0.723501, -0.667229,
		0.969319, -0.010749, 0.245573,
		0.170500, -0.690239, -0.703207,
		37.999222, 41.977673, 20.160673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553375, 42.575226, 20.343515>,  <37.879871, 42.460842, 20.652918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553375, 42.575226, 20.343515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350483, 42.383411, 20.057087>,  <38.228748, 42.268322, 19.885229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350483, 42.383411, 20.057087>,  <38.553375, 42.575226, 20.343515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350483, 42.383411, 20.057087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347080, 0.646863, -0.679046,
		0.788828, -0.592969, -0.161673,
		-0.507233, -0.479537, -0.716072,
		38.198315, 42.239552, 19.842266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003571, 42.708771, 19.777475>,  <38.553375, 42.575226, 20.343515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003571, 42.708771, 19.777475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677216, 42.559818, 19.600540>,  <38.481403, 42.470448, 19.494379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677216, 42.559818, 19.600540>,  <39.003571, 42.708771, 19.777475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677216, 42.559818, 19.600540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233897, 0.487069, -0.841461,
		0.528800, -0.789994, -0.310290,
		-0.815882, -0.372388, -0.442339,
		38.432449, 42.448101, 19.467838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260052, 42.407417, 19.125719>,  <39.003571, 42.708771, 19.777475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260052, 42.407417, 19.125719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868610, 42.480392, 19.087677>,  <38.633743, 42.524178, 19.064852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868610, 42.480392, 19.087677>,  <39.260052, 42.407417, 19.125719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868610, 42.480392, 19.087677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156439, 0.359602, -0.919899,
		-0.133625, -0.915097, -0.380449,
		-0.978607, 0.182439, -0.095105,
		38.575027, 42.535126, 19.059145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991829, 42.096027, 18.519695>,  <39.260052, 42.407417, 19.125719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991829, 42.096027, 18.519695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739407, 42.395645, 18.600388>,  <38.587952, 42.575417, 18.648804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739407, 42.395645, 18.600388>,  <38.991829, 42.096027, 18.519695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739407, 42.395645, 18.600388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176020, 0.391534, -0.903171,
		-0.755504, -0.534442, -0.378927,
		-0.631055, 0.749048, 0.201733,
		38.550091, 42.620361, 18.660908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729538, 42.202682, 17.878174>,  <38.991829, 42.096027, 18.519695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729538, 42.202682, 17.878174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628834, 42.543713, 18.061359>,  <38.568413, 42.748329, 18.171270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628834, 42.543713, 18.061359>,  <38.729538, 42.202682, 17.878174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628834, 42.543713, 18.061359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246056, 0.514046, -0.821714,
		-0.935988, -0.094190, -0.339198,
		-0.251761, 0.852576, 0.457964,
		38.553307, 42.799484, 18.198750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273438, 42.494865, 17.499075>,  <38.729538, 42.202682, 17.878174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273438, 42.494865, 17.499075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461849, 42.788662, 17.694485>,  <38.574898, 42.964939, 17.811731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461849, 42.788662, 17.694485>,  <38.273438, 42.494865, 17.499075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461849, 42.788662, 17.694485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116195, 0.497324, -0.859749,
		-0.874430, 0.461733, 0.148911,
		0.471031, 0.734488, 0.488526,
		38.603157, 43.009007, 17.841042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.111683, 31.753309, 30.293854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254440, 32.123650, 30.343548>,  <37.340096, 32.345852, 30.373363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254440, 32.123650, 30.343548>,  <37.111683, 31.753309, 30.293854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254440, 32.123650, 30.343548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433546, 0.281966, -0.855881,
		-0.827446, 0.251594, 0.502029,
		0.356890, 0.925849, 0.124234,
		37.361507, 32.401405, 30.380817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757839, 32.073215, 29.752773>,  <37.111683, 31.753309, 30.293854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757839, 32.073215, 29.752773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982300, 32.381119, 29.874487>,  <37.116974, 32.565861, 29.947515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982300, 32.381119, 29.874487>,  <36.757839, 32.073215, 29.752773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982300, 32.381119, 29.874487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457452, 0.594787, -0.661035,
		-0.689820, 0.231743, 0.685889,
		0.561148, 0.769756, 0.304285,
		37.150642, 32.612045, 29.965773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297386, 32.708012, 29.885443>,  <36.757839, 32.073215, 29.752773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297386, 32.708012, 29.885443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672977, 32.820824, 29.806664>,  <36.898331, 32.888512, 29.759396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672977, 32.820824, 29.806664>,  <36.297386, 32.708012, 29.885443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672977, 32.820824, 29.806664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342624, 0.715828, -0.608440,
		-0.030614, 0.638789, 0.768773,
		0.938974, 0.282027, -0.196950,
		36.954670, 32.905430, 29.747578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331608, 33.463261, 29.873133>,  <36.297386, 32.708012, 29.885443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331608, 33.463261, 29.873133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652752, 33.359859, 29.658251>,  <36.845440, 33.297817, 29.529322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.652752, 33.359859, 29.658251>,  <36.331608, 33.463261, 29.873133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652752, 33.359859, 29.658251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178821, 0.755185, -0.630649,
		0.568712, 0.602388, 0.560085,
		0.802863, -0.258503, -0.537203,
		36.893612, 33.282307, 29.497089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563034, 34.070892, 29.739592>,  <36.331608, 33.463261, 29.873133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563034, 34.070892, 29.739592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760147, 33.858055, 29.464188>,  <36.878414, 33.730354, 29.298946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760147, 33.858055, 29.464188>,  <36.563034, 34.070892, 29.739592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760147, 33.858055, 29.464188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155133, 0.724853, -0.671210,
		0.856211, 0.437572, 0.274651,
		0.492784, -0.532090, -0.688509,
		36.907982, 33.698429, 29.257635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244579, 34.487961, 29.411745>,  <36.563034, 34.070892, 29.739592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244579, 34.487961, 29.411745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090725, 34.224186, 29.153383>,  <36.998413, 34.065922, 28.998365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090725, 34.224186, 29.153383>,  <37.244579, 34.487961, 29.411745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090725, 34.224186, 29.153383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048767, 0.713278, -0.699183,
		0.921781, -0.237429, -0.306509,
		-0.384632, -0.659441, -0.645907,
		36.975334, 34.026352, 28.959612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580933, 34.624432, 28.927317>,  <37.244579, 34.487961, 29.411745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580933, 34.624432, 28.927317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274509, 34.415867, 28.776960>,  <37.090656, 34.290730, 28.686747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274509, 34.415867, 28.776960>,  <37.580933, 34.624432, 28.927317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274509, 34.415867, 28.776960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018940, 0.602848, -0.797632,
		0.642497, -0.603909, -0.471689,
		-0.766054, -0.521410, -0.375890,
		37.044693, 34.259445, 28.664194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828930, 34.359905, 28.276306>,  <37.580933, 34.624432, 28.927317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828930, 34.359905, 28.276306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430515, 34.374599, 28.243912>,  <37.191467, 34.383415, 28.224474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.430515, 34.374599, 28.243912>,  <37.828930, 34.359905, 28.276306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430515, 34.374599, 28.243912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088446, 0.504145, -0.859078,
		0.009270, -0.862837, -0.505397,
		-0.996038, 0.036737, -0.080987,
		37.131702, 34.385620, 28.219616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714203, 34.128532, 27.643288>,  <37.828930, 34.359905, 28.276306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714203, 34.128532, 27.643288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384285, 34.342331, 27.717079>,  <37.186333, 34.470608, 27.761354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384285, 34.342331, 27.717079>,  <37.714203, 34.128532, 27.643288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384285, 34.342331, 27.717079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053803, 0.398967, -0.915386,
		-0.562868, -0.745079, -0.357823,
		-0.824794, 0.534493, 0.184478,
		37.136848, 34.502678, 27.772423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407757, 34.166924, 27.055367>,  <37.714203, 34.128532, 27.643288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407757, 34.166924, 27.055367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202896, 34.450706, 27.249016>,  <37.079979, 34.620975, 27.365206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202896, 34.450706, 27.249016>,  <37.407757, 34.166924, 27.055367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202896, 34.450706, 27.249016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087240, 0.517775, -0.851057,
		-0.854452, -0.478106, -0.203287,
		-0.512153, 0.709453, 0.484124,
		37.049252, 34.663544, 27.394253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727093, 34.237740, 26.609810>,  <37.407757, 34.166924, 27.055367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727093, 34.237740, 26.609810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802422, 34.568352, 26.821993>,  <36.847618, 34.766720, 26.949303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802422, 34.568352, 26.821993>,  <36.727093, 34.237740, 26.609810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802422, 34.568352, 26.821993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079532, 0.525515, -0.847059,
		-0.978882, 0.201709, 0.033231,
		0.188323, 0.826528, 0.530459,
		36.858917, 34.816311, 26.981131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417347, 34.698589, 26.269419>,  <36.727093, 34.237740, 26.609810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417347, 34.698589, 26.269419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681438, 34.916840, 26.475872>,  <36.839893, 35.047791, 26.599745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681438, 34.916840, 26.475872>,  <36.417347, 34.698589, 26.269419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681438, 34.916840, 26.475872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042504, 0.658957, -0.750979,
		-0.749865, 0.517753, 0.411868,
		0.660225, 0.545626, 0.516135,
		36.879505, 35.080528, 26.630713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708031, 34.975906, 26.627380>,  <36.417347, 34.698589, 26.269419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708031, 34.975906, 26.627380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332546, 34.967484, 26.489759>,  <35.107254, 34.962429, 26.407187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332546, 34.967484, 26.489759>,  <35.708031, 34.975906, 26.627380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332546, 34.967484, 26.489759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283858, -0.519044, 0.806237,
		-0.195554, 0.854488, 0.481258,
		-0.938714, -0.021054, -0.344054,
		35.050934, 34.961166, 26.386543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306862, 35.353275, 27.170633>,  <35.708031, 34.975906, 26.627380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306862, 35.353275, 27.170633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071339, 35.101490, 26.967825>,  <34.930023, 34.950417, 26.846140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071339, 35.101490, 26.967825>,  <35.306862, 35.353275, 27.170633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071339, 35.101490, 26.967825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339956, -0.376243, 0.861899,
		-0.733300, 0.679863, 0.007546,
		-0.588813, -0.629466, -0.507023,
		34.894695, 34.912651, 26.815718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742474, 35.288994, 27.549557>,  <35.306862, 35.353275, 27.170633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742474, 35.288994, 27.549557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664165, 34.992165, 27.293118>,  <34.617180, 34.814068, 27.139254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664165, 34.992165, 27.293118>,  <34.742474, 35.288994, 27.549557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664165, 34.992165, 27.293118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466637, -0.504500, 0.726450,
		-0.862511, 0.441377, -0.247511,
		-0.195769, -0.742069, -0.641099,
		34.605434, 34.769543, 27.100788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025517, 35.020565, 27.709896>,  <34.742474, 35.288994, 27.549557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025517, 35.020565, 27.709896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186882, 34.708427, 27.518764>,  <34.283699, 34.521145, 27.404085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186882, 34.708427, 27.518764>,  <34.025517, 35.020565, 27.709896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186882, 34.708427, 27.518764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471712, -0.624823, 0.622160,
		-0.784058, -0.025590, -0.620160,
		0.403412, -0.780347, -0.477827,
		34.307907, 34.474323, 27.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423111, 34.512424, 27.497499>,  <34.025517, 35.020565, 27.709896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423111, 34.512424, 27.497499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767952, 34.309814, 27.503399>,  <33.974857, 34.188248, 27.506939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767952, 34.309814, 27.503399>,  <33.423111, 34.512424, 27.497499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767952, 34.309814, 27.503399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412319, -0.684258, 0.601484,
		-0.294573, -0.524621, -0.798749,
		0.862102, -0.506521, 0.014747,
		34.026581, 34.157860, 27.507822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251602, 33.800869, 27.350334>,  <33.423111, 34.512424, 27.497499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251602, 33.800869, 27.350334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609756, 33.784855, 27.527731>,  <33.824650, 33.775246, 27.634169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609756, 33.784855, 27.527731>,  <33.251602, 33.800869, 27.350334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609756, 33.784855, 27.527731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347784, -0.684852, 0.640332,
		0.278093, -0.727582, -0.627127,
		0.895383, -0.040033, 0.443494,
		33.878372, 33.772846, 27.660780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378090, 33.170956, 27.499018>,  <33.251602, 33.800869, 27.350334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378090, 33.170956, 27.499018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661160, 33.306557, 27.746977>,  <33.831001, 33.387917, 27.895752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661160, 33.306557, 27.746977>,  <33.378090, 33.170956, 27.499018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661160, 33.306557, 27.746977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354786, -0.588232, 0.726712,
		0.610998, -0.734208, -0.296006,
		0.707678, 0.339001, 0.619896,
		33.873463, 33.408257, 27.932945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652206, 32.593914, 27.869801>,  <33.378090, 33.170956, 27.499018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652206, 32.593914, 27.869801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781662, 32.889069, 28.106707>,  <33.859333, 33.066162, 28.248850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781662, 32.889069, 28.106707>,  <33.652206, 32.593914, 27.869801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781662, 32.889069, 28.106707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191283, -0.562004, 0.804713,
		0.926645, -0.373724, -0.040739,
		0.323636, 0.737890, 0.592265,
		33.878754, 33.110435, 28.284386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948727, 32.240047, 28.382690>,  <33.652206, 32.593914, 27.869801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948727, 32.240047, 28.382690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890636, 32.599720, 28.547802>,  <33.855782, 32.815521, 28.646870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890636, 32.599720, 28.547802>,  <33.948727, 32.240047, 28.382690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890636, 32.599720, 28.547802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308166, -0.437560, 0.844733,
		0.940182, -0.004525, 0.340643,
		-0.145230, 0.899178, 0.412781,
		33.847069, 32.869473, 28.671637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233711, 32.172562, 28.971298>,  <33.948727, 32.240047, 28.382690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233711, 32.172562, 28.971298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964954, 32.465034, 29.018501>,  <33.803699, 32.640518, 29.046824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964954, 32.465034, 29.018501>,  <34.233711, 32.172562, 28.971298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964954, 32.465034, 29.018501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392530, -0.486654, 0.780441,
		0.628075, 0.478053, 0.613993,
		-0.671894, 0.731186, 0.118005,
		33.763386, 32.684391, 29.053904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211605, 32.294525, 29.687582>,  <34.233711, 32.172562, 28.971298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211605, 32.294525, 29.687582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887325, 32.477573, 29.541519>,  <33.692757, 32.587402, 29.453882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887325, 32.477573, 29.541519>,  <34.211605, 32.294525, 29.687582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887325, 32.477573, 29.541519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528514, -0.303743, 0.792726,
		0.251858, 0.835656, 0.488107,
		-0.810704, 0.457625, -0.365156,
		33.644115, 32.614861, 29.431973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924660, 32.642082, 30.233389>,  <34.211605, 32.294525, 29.687582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924660, 32.642082, 30.233389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618252, 32.601456, 29.979492>,  <33.434406, 32.577080, 29.827154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618252, 32.601456, 29.979492>,  <33.924660, 32.642082, 30.233389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618252, 32.601456, 29.979492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573931, -0.336656, 0.746502,
		-0.289508, 0.936134, 0.199594,
		-0.766021, -0.101565, -0.634741,
		33.388447, 32.570988, 29.789070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367130, 32.949741, 30.641390>,  <33.924660, 32.642082, 30.233389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367130, 32.949741, 30.641390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195827, 32.745342, 30.343267>,  <33.093044, 32.622704, 30.164394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195827, 32.745342, 30.343267>,  <33.367130, 32.949741, 30.641390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195827, 32.745342, 30.343267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738580, -0.277282, 0.614504,
		-0.520667, 0.813633, -0.258662,
		-0.428258, -0.510995, -0.745305,
		33.067348, 32.592045, 30.119677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626137, 33.221493, 30.575138>,  <33.367130, 32.949741, 30.641390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626137, 33.221493, 30.575138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651028, 32.862850, 30.399765>,  <32.665962, 32.647663, 30.294542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651028, 32.862850, 30.399765>,  <32.626137, 33.221493, 30.575138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651028, 32.862850, 30.399765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649030, -0.370071, 0.664686,
		-0.758213, 0.243191, -0.604955,
		0.062231, -0.896608, -0.438431,
		32.669697, 32.593868, 30.268236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846344, 33.094845, 31.224384>,  <32.626137, 33.221493, 30.575138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846344, 33.094845, 31.224384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664181, 33.319492, 31.500702>,  <32.554882, 33.454281, 31.666492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664181, 33.319492, 31.500702>,  <32.846344, 33.094845, 31.224384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664181, 33.319492, 31.500702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317508, 0.622448, -0.715365,
		-0.831743, -0.545113, -0.105149,
		-0.455404, 0.561614, 0.690794,
		32.527561, 33.487976, 31.707939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130905, 33.088314, 31.124487>,  <32.846344, 33.094845, 31.224384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130905, 33.088314, 31.124487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203514, 33.443066, 31.294426>,  <32.247082, 33.655918, 31.396389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203514, 33.443066, 31.294426>,  <32.130905, 33.088314, 31.124487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203514, 33.443066, 31.294426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520160, 0.453235, -0.723886,
		-0.834554, -0.089585, 0.543593,
		0.181526, 0.886878, 0.424848,
		32.257973, 33.709129, 31.421881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591351, 33.530682, 30.971762>,  <32.130905, 33.088314, 31.124487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591351, 33.530682, 30.971762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882673, 33.798210, 31.031427>,  <32.057468, 33.958725, 31.067226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.882673, 33.798210, 31.031427>,  <31.591351, 33.530682, 30.971762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882673, 33.798210, 31.031427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386020, 0.580292, -0.717112,
		-0.566178, 0.464697, 0.680808,
		0.728307, 0.668818, 0.149166,
		32.101166, 33.998856, 31.076178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290033, 34.122021, 31.106438>,  <31.591351, 33.530682, 30.971762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290033, 34.122021, 31.106438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650156, 34.218452, 30.961479>,  <31.866230, 34.276310, 30.874504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.650156, 34.218452, 30.961479>,  <31.290033, 34.122021, 31.106438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650156, 34.218452, 30.961479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432173, 0.594070, -0.678459,
		0.051729, 0.767439, 0.639031,
		0.900306, 0.241077, -0.362397,
		31.920248, 34.290775, 30.852760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298159, 34.860294, 31.203989>,  <31.290033, 34.122021, 31.106438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298159, 34.860294, 31.203989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.580944, 34.788273, 30.930410>,  <31.750616, 34.745060, 30.766264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.580944, 34.788273, 30.930410>,  <31.298159, 34.860294, 31.203989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580944, 34.788273, 30.930410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409585, 0.684145, -0.603477,
		0.576576, 0.706771, 0.409920,
		0.706965, -0.180054, -0.683945,
		31.793034, 34.734257, 30.725227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672077, 35.484406, 31.084221>,  <31.298159, 34.860294, 31.203989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672077, 35.484406, 31.084221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731945, 35.242424, 30.771395>,  <31.767866, 35.097233, 30.583698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731945, 35.242424, 30.771395>,  <31.672077, 35.484406, 31.084221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731945, 35.242424, 30.771395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203701, 0.755141, -0.623112,
		0.967525, 0.252570, -0.010207,
		0.149672, -0.604955, -0.782066,
		31.776846, 35.060936, 30.536776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000965, 35.885693, 30.722628>,  <31.672077, 35.484406, 31.084221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000965, 35.885693, 30.722628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892092, 35.618690, 30.445398>,  <31.826767, 35.458488, 30.279060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892092, 35.618690, 30.445398>,  <32.000965, 35.885693, 30.722628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892092, 35.618690, 30.445398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055399, 0.729944, -0.681258,
		0.960648, -0.147035, -0.235661,
		-0.272188, -0.667505, -0.693074,
		31.810436, 35.418438, 30.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392071, 36.094421, 30.184549>,  <32.000965, 35.885693, 30.722628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392071, 36.094421, 30.184549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097630, 35.880177, 30.019012>,  <31.920963, 35.751629, 29.919691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097630, 35.880177, 30.019012>,  <32.392071, 36.094421, 30.184549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097630, 35.880177, 30.019012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109999, 0.697942, -0.707657,
		0.667866, -0.475391, -0.572678,
		-0.736109, -0.535613, -0.413839,
		31.876799, 35.719490, 29.894859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699245, 35.873493, 29.573322>,  <32.392071, 36.094421, 30.184549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699245, 35.873493, 29.573322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299919, 35.890442, 29.557480>,  <32.060322, 35.900612, 29.547974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299919, 35.890442, 29.557480>,  <32.699245, 35.873493, 29.573322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299919, 35.890442, 29.557480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057264, 0.611439, -0.789217,
		-0.009225, -0.790156, -0.612836,
		-0.998316, 0.042374, -0.039607,
		32.000423, 35.903152, 29.545597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516281, 35.840752, 28.864531>,  <32.699245, 35.873493, 29.573322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516281, 35.840752, 28.864531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185390, 35.975517, 29.044390>,  <31.986856, 36.056377, 29.152306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185390, 35.975517, 29.044390>,  <32.516281, 35.840752, 28.864531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185390, 35.975517, 29.044390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134629, 0.658106, -0.740791,
		-0.545501, -0.673338, -0.499044,
		-0.827227, 0.336917, 0.449648,
		31.937222, 36.076591, 29.179283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077045, 35.840908, 28.370377>,  <32.516281, 35.840752, 28.864531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077045, 35.840908, 28.370377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941898, 36.118023, 28.625216>,  <31.860809, 36.284290, 28.778120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.941898, 36.118023, 28.625216>,  <32.077045, 35.840908, 28.370377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941898, 36.118023, 28.625216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005606, 0.678375, -0.734695,
		-0.941177, -0.244659, -0.233086,
		-0.337869, 0.692784, 0.637099,
		31.840538, 36.325859, 28.816345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754753, 36.225254, 27.970577>,  <32.077045, 35.840908, 28.370377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754753, 36.225254, 27.970577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758905, 36.473141, 28.284479>,  <31.761396, 36.621872, 28.472820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758905, 36.473141, 28.284479>,  <31.754753, 36.225254, 27.970577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758905, 36.473141, 28.284479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018588, 0.784781, -0.619495,
		-0.999773, -0.008155, 0.019668,
		0.010383, 0.619720, 0.784754,
		31.762020, 36.659058, 28.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349834, 36.795185, 27.758841>,  <31.754753, 36.225254, 27.970577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349834, 36.795185, 27.758841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570585, 36.931286, 28.063381>,  <31.703035, 37.012947, 28.246105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570585, 36.931286, 28.063381>,  <31.349834, 36.795185, 27.758841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570585, 36.931286, 28.063381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019535, 0.917999, -0.396102,
		-0.833698, 0.203726, 0.513268,
		0.551875, 0.340256, 0.761354,
		31.736149, 37.033363, 28.291788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209095, 37.451885, 27.720604>,  <31.349834, 36.795185, 27.758841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209095, 37.451885, 27.720604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554758, 37.435810, 27.921251>,  <31.762156, 37.426163, 28.041639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554758, 37.435810, 27.921251>,  <31.209095, 37.451885, 27.720604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554758, 37.435810, 27.921251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342616, 0.777081, -0.527977,
		-0.368576, 0.628116, 0.685289,
		0.864156, -0.040191, 0.501617,
		31.814005, 37.423752, 28.071735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412537, 38.192226, 27.752956>,  <31.209095, 37.451885, 27.720604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412537, 38.192226, 27.752956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755293, 37.993443, 27.807758>,  <31.960947, 37.874172, 27.840639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755293, 37.993443, 27.807758>,  <31.412537, 38.192226, 27.752956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755293, 37.993443, 27.807758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487460, 0.694699, -0.528938,
		0.167683, 0.520027, 0.837529,
		0.856893, -0.496956, 0.137003,
		32.012360, 37.844357, 27.848860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816626, 38.731178, 27.824610>,  <31.412537, 38.192226, 27.752956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816626, 38.731178, 27.824610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055595, 38.417450, 27.757757>,  <32.198978, 38.229214, 27.717646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.055595, 38.417450, 27.757757>,  <31.816626, 38.731178, 27.824610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055595, 38.417450, 27.757757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580108, 0.566577, -0.585206,
		0.553678, 0.252663, 0.793474,
		0.597424, -0.784316, -0.167130,
		32.234821, 38.182156, 27.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459251, 38.838284, 28.075840>,  <31.816626, 38.731178, 27.824610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459251, 38.838284, 28.075840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525162, 38.541435, 27.815960>,  <32.564709, 38.363327, 27.660032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525162, 38.541435, 27.815960>,  <32.459251, 38.838284, 28.075840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525162, 38.541435, 27.815960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653905, 0.575331, -0.491327,
		0.738416, -0.343883, 0.580075,
		0.164776, -0.742117, -0.649700,
		32.574596, 38.318802, 27.621050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181992, 38.845482, 28.084339>,  <32.459251, 38.838284, 28.075840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181992, 38.845482, 28.084339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062305, 38.666088, 27.747452>,  <32.990494, 38.558453, 27.545319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062305, 38.666088, 27.747452>,  <33.181992, 38.845482, 28.084339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062305, 38.666088, 27.747452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605436, 0.592985, -0.530863,
		0.737506, -0.668754, 0.094095,
		-0.299220, -0.448483, -0.842218,
		32.972538, 38.531544, 27.494787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782372, 38.826401, 27.682129>,  <33.181992, 38.845482, 28.084339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782372, 38.826401, 27.682129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501888, 38.774799, 27.401653>,  <33.333599, 38.743839, 27.233368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501888, 38.774799, 27.401653>,  <33.782372, 38.826401, 27.682129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501888, 38.774799, 27.401653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568968, 0.491401, -0.659394,
		0.429627, -0.861327, -0.271177,
		-0.701210, -0.129002, -0.701187,
		33.291527, 38.736099, 27.191298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174046, 38.747559, 26.996340>,  <33.782372, 38.826401, 27.682129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174046, 38.747559, 26.996340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797771, 38.833698, 26.891470>,  <33.572006, 38.885380, 26.828548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797771, 38.833698, 26.891470>,  <34.174046, 38.747559, 26.996340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797771, 38.833698, 26.891470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338248, 0.535118, -0.774104,
		-0.026407, -0.816869, -0.576219,
		-0.940686, 0.215347, -0.262174,
		33.515564, 38.898304, 26.812819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045872, 38.499161, 26.351252>,  <34.174046, 38.747559, 26.996340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045872, 38.499161, 26.351252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783962, 38.798058, 26.396683>,  <33.626816, 38.977398, 26.423943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783962, 38.798058, 26.396683>,  <34.045872, 38.499161, 26.351252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783962, 38.798058, 26.396683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434356, 0.494986, -0.752545,
		-0.618557, -0.443409, -0.648673,
		-0.654769, 0.747247, 0.113579,
		33.587532, 39.022232, 26.430756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924107, 38.746201, 25.650137>,  <34.045872, 38.499161, 26.351252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924107, 38.746201, 25.650137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800171, 39.041752, 25.889486>,  <33.725807, 39.219082, 26.033096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800171, 39.041752, 25.889486>,  <33.924107, 38.746201, 25.650137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800171, 39.041752, 25.889486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235185, 0.669348, -0.704741,
		-0.921241, -0.077630, -0.381166,
		-0.309842, 0.738882, 0.598374,
		33.707218, 39.263416, 26.068998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428513, 39.134689, 25.224072>,  <33.924107, 38.746201, 25.650137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428513, 39.134689, 25.224072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575504, 39.364452, 25.516651>,  <33.663700, 39.502312, 25.692200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575504, 39.364452, 25.516651>,  <33.428513, 39.134689, 25.224072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575504, 39.364452, 25.516651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215695, 0.712396, -0.667809,
		-0.904674, 0.403175, 0.137894,
		0.367479, 0.574406, 0.731449,
		33.685749, 39.536774, 25.736086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143166, 39.750809, 25.029293>,  <33.428513, 39.134689, 25.224072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143166, 39.750809, 25.029293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434467, 39.853897, 25.283293>,  <33.609249, 39.915749, 25.435694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.434467, 39.853897, 25.283293>,  <33.143166, 39.750809, 25.029293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434467, 39.853897, 25.283293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103742, 0.874457, -0.473880,
		-0.677409, 0.410982, 0.610091,
		0.728255, 0.257719, 0.635001,
		33.652943, 39.931213, 25.473793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944000, 40.447742, 25.285345>,  <33.143166, 39.750809, 25.029293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944000, 40.447742, 25.285345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335350, 40.389889, 25.344479>,  <33.570160, 40.355175, 25.379959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335350, 40.389889, 25.344479>,  <32.944000, 40.447742, 25.285345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335350, 40.389889, 25.344479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193383, 0.893212, -0.405925,
		-0.073333, 0.425737, 0.901870,
		0.978379, -0.144639, 0.147832,
		33.628864, 40.346497, 25.388828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220890, 40.999290, 25.615755>,  <32.944000, 40.447742, 25.285345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220890, 40.999290, 25.615755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563286, 40.845474, 25.477530>,  <33.768723, 40.753185, 25.394594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563286, 40.845474, 25.477530>,  <33.220890, 40.999290, 25.615755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563286, 40.845474, 25.477530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246741, 0.891235, -0.380550,
		0.454315, 0.240482, 0.857769,
		0.855989, -0.384536, -0.345564,
		33.820084, 40.730114, 25.373859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768482, 41.452988, 25.700075>,  <33.220890, 40.999290, 25.615755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768482, 41.452988, 25.700075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910027, 41.220413, 25.407030>,  <33.994953, 41.080868, 25.231203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910027, 41.220413, 25.407030>,  <33.768482, 41.452988, 25.700075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910027, 41.220413, 25.407030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256926, 0.813586, -0.521601,
		0.899318, -0.003654, 0.437280,
		0.353859, -0.581433, -0.732611,
		34.016186, 41.045982, 25.187246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466068, 41.618553, 25.607727>,  <33.768482, 41.452988, 25.700075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466068, 41.618553, 25.607727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322338, 41.452042, 25.273640>,  <34.236099, 41.352135, 25.073187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322338, 41.452042, 25.273640>,  <34.466068, 41.618553, 25.607727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322338, 41.452042, 25.273640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113076, 0.868979, -0.481756,
		0.926335, -0.267552, -0.265178,
		-0.359329, -0.416282, -0.835220,
		34.214539, 41.327156, 25.023073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144272, 41.762558, 25.811972>,  <34.466068, 41.618553, 25.607727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144272, 41.762558, 25.811972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431679, 42.023712, 25.907869>,  <35.604122, 42.180405, 25.965408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431679, 42.023712, 25.907869>,  <35.144272, 41.762558, 25.811972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431679, 42.023712, 25.907869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049448, -0.391781, 0.918729,
		0.693749, -0.648268, -0.313785,
		0.718517, 0.652883, 0.239742,
		35.647236, 42.219578, 25.979792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713573, 41.370644, 25.982901>,  <35.144272, 41.762558, 25.811972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713573, 41.370644, 25.982901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730042, 41.724297, 26.169067>,  <35.739922, 41.936489, 26.280767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730042, 41.724297, 26.169067>,  <35.713573, 41.370644, 25.982901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730042, 41.724297, 26.169067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166299, -0.465378, 0.869349,
		0.985216, 0.041610, -0.166188,
		0.041167, 0.884134, 0.465418,
		35.742390, 41.989536, 26.308693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122726, 41.221661, 26.540564>,  <35.713573, 41.370644, 25.982901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122726, 41.221661, 26.540564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961430, 41.573654, 26.640978>,  <35.864651, 41.784851, 26.701227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961430, 41.573654, 26.640978>,  <36.122726, 41.221661, 26.540564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961430, 41.573654, 26.640978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049058, -0.253145, 0.966184,
		0.913778, 0.401921, 0.058908,
		-0.403242, 0.879987, 0.251036,
		35.840458, 41.837650, 26.716288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559418, 41.660526, 26.990013>,  <36.122726, 41.221661, 26.540564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559418, 41.660526, 26.990013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.171642, 41.735790, 27.052988>,  <35.938976, 41.780949, 27.090773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.171642, 41.735790, 27.052988>,  <36.559418, 41.660526, 26.990013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171642, 41.735790, 27.052988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072134, -0.394752, 0.915952,
		0.234493, 0.899315, 0.369115,
		-0.969438, 0.188158, 0.157438,
		35.880810, 41.792236, 27.100220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572983, 42.017834, 27.566084>,  <36.559418, 41.660526, 26.990013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572983, 42.017834, 27.566084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209412, 41.851849, 27.549841>,  <35.991268, 41.752258, 27.540094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209412, 41.851849, 27.549841>,  <36.572983, 42.017834, 27.566084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209412, 41.851849, 27.549841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116822, -0.346951, 0.930579,
		-0.400243, 0.841090, 0.363831,
		-0.908932, -0.414962, -0.040607,
		35.936733, 41.727360, 27.537659>
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
