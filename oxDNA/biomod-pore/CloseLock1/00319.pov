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
	<23.871401, 35.250385, 34.827332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243963, 35.143242, 34.925911>,  <24.467501, 35.078957, 34.985058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243963, 35.143242, 34.925911>,  <23.871401, 35.250385, 34.827332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243963, 35.143242, 34.925911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315374, -0.931929, 0.179020,
		0.181722, -0.244464, -0.952478,
		0.931406, -0.267855, 0.246450,
		24.523384, 35.062885, 34.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068317, 34.697166, 34.356499>,  <23.871401, 35.250385, 34.827332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068317, 34.697166, 34.356499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273188, 34.695312, 34.700047>,  <24.396111, 34.694199, 34.906174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273188, 34.695312, 34.700047>,  <24.068317, 34.697166, 34.356499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273188, 34.695312, 34.700047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312658, -0.932381, 0.181414,
		0.799950, -0.361448, -0.478994,
		0.512176, -0.004639, 0.858868,
		24.426840, 34.693920, 34.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627899, 34.182220, 34.344532>,  <24.068317, 34.697166, 34.356499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627899, 34.182220, 34.344532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427185, 34.311863, 34.665321>,  <24.306757, 34.389648, 34.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427185, 34.311863, 34.665321>,  <24.627899, 34.182220, 34.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427185, 34.311863, 34.665321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475305, -0.877946, 0.057422,
		0.722703, -0.352370, 0.594589,
		-0.501783, 0.324110, 0.801976,
		24.276649, 34.409096, 34.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294975, 34.665092, 34.444374>,  <24.627899, 34.182220, 34.344532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294975, 34.665092, 34.444374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642620, 34.488659, 34.533894>,  <25.851208, 34.382797, 34.587605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642620, 34.488659, 34.533894>,  <25.294975, 34.665092, 34.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642620, 34.488659, 34.533894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471932, 0.604066, -0.642172,
		0.148061, 0.663739, 0.733164,
		0.869114, -0.441084, 0.223801,
		25.903355, 34.356335, 34.601032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787897, 35.233292, 34.700039>,  <25.294975, 34.665092, 34.444374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787897, 35.233292, 34.700039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950533, 34.903221, 34.543182>,  <26.048115, 34.705177, 34.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950533, 34.903221, 34.543182>,  <25.787897, 35.233292, 34.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950533, 34.903221, 34.543182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709279, 0.555637, -0.433809,
		0.575854, -0.101753, 0.811195,
		0.406589, -0.825175, -0.392137,
		26.072510, 34.655670, 34.425541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976336, 34.856125, 33.915836>,  <25.787897, 35.233292, 34.700039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976336, 34.856125, 33.915836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357561, 34.751938, 33.854092>,  <26.586296, 34.689426, 33.817047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357561, 34.751938, 33.854092>,  <25.976336, 34.856125, 33.915836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357561, 34.751938, 33.854092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168916, 0.880535, -0.442860,
		0.251267, 0.396000, 0.883204,
		0.953065, -0.260463, -0.154359,
		26.643480, 34.673798, 33.807785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366447, 35.334305, 34.255417>,  <25.976336, 34.856125, 33.915836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366447, 35.334305, 34.255417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602160, 35.178375, 33.972351>,  <26.743587, 35.084816, 33.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602160, 35.178375, 33.972351>,  <26.366447, 35.334305, 34.255417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602160, 35.178375, 33.972351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139471, 0.911830, -0.386153,
		0.795800, 0.128854, 0.591692,
		0.589280, -0.389824, -0.707662,
		26.778944, 35.061428, 33.760052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009899, 35.670425, 34.360798>,  <26.366447, 35.334305, 34.255417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009899, 35.670425, 34.360798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986017, 35.538925, 33.983788>,  <26.971687, 35.460026, 33.757580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986017, 35.538925, 33.983788>,  <27.009899, 35.670425, 34.360798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986017, 35.538925, 33.983788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302093, 0.893984, -0.330955,
		0.951407, -0.304490, 0.045938,
		-0.059705, -0.328751, -0.942527,
		26.968105, 35.440300, 33.701031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595430, 35.936646, 34.146362>,  <27.009899, 35.670425, 34.360798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595430, 35.936646, 34.146362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371181, 35.866783, 33.822586>,  <27.236633, 35.824863, 33.628319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371181, 35.866783, 33.822586>,  <27.595430, 35.936646, 34.146362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371181, 35.866783, 33.822586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203793, 0.918336, -0.339303,
		0.802604, -0.355179, -0.479243,
		-0.560620, -0.174660, -0.809444,
		27.202995, 35.814384, 33.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995651, 36.262276, 33.514214>,  <27.595430, 35.936646, 34.146362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995651, 36.262276, 33.514214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607998, 36.225468, 33.422722>,  <27.375406, 36.203381, 33.367828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607998, 36.225468, 33.422722>,  <27.995651, 36.262276, 33.514214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607998, 36.225468, 33.422722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050805, 0.982360, -0.179965,
		0.241251, -0.162789, -0.956712,
		-0.969132, -0.092023, -0.228725,
		27.317259, 36.197861, 33.354103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973295, 36.768055, 33.062233>,  <27.995651, 36.262276, 33.514214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973295, 36.768055, 33.062233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582092, 36.694004, 33.100658>,  <27.347370, 36.649574, 33.123714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582092, 36.694004, 33.100658>,  <27.973295, 36.768055, 33.062233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582092, 36.694004, 33.100658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193776, 0.976888, -0.090226,
		-0.077140, -0.106856, -0.991278,
		-0.978009, -0.185126, 0.096063,
		27.288691, 36.638466, 33.129478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582890, 37.016273, 32.420456>,  <27.973295, 36.768055, 33.062233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582890, 37.016273, 32.420456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333776, 37.008957, 32.733326>,  <27.184309, 37.004566, 32.921051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333776, 37.008957, 32.733326>,  <27.582890, 37.016273, 32.420456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333776, 37.008957, 32.733326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018639, 0.999096, 0.038210,
		-0.782172, 0.038375, -0.621880,
		-0.622784, -0.018295, 0.782180,
		27.146942, 37.003468, 32.967979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190990, 37.635593, 32.345036>,  <27.582890, 37.016273, 32.420456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190990, 37.635593, 32.345036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049238, 37.536182, 32.705624>,  <26.964188, 37.476536, 32.921978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049238, 37.536182, 32.705624>,  <27.190990, 37.635593, 32.345036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049238, 37.536182, 32.705624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225242, 0.958337, 0.175658,
		-0.907569, -0.140800, -0.395593,
		-0.354379, -0.248526, 0.901471,
		26.942924, 37.461624, 32.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558792, 37.926842, 32.423542>,  <27.190990, 37.635593, 32.345036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558792, 37.926842, 32.423542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679842, 37.873619, 32.801052>,  <26.752472, 37.841686, 33.027557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679842, 37.873619, 32.801052>,  <26.558792, 37.926842, 32.423542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679842, 37.873619, 32.801052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284161, 0.932580, 0.222594,
		-0.909763, -0.335547, 0.244414,
		0.302626, -0.133054, 0.943776,
		26.770630, 37.833702, 33.084187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019789, 38.231407, 32.887959>,  <26.558792, 37.926842, 32.423542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019789, 38.231407, 32.887959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352768, 38.193981, 33.106419>,  <26.552555, 38.171528, 33.237495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352768, 38.193981, 33.106419>,  <26.019789, 38.231407, 32.887959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352768, 38.193981, 33.106419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115253, 0.934847, 0.335824,
		-0.541985, -0.342501, 0.767428,
		0.832447, -0.093563, 0.546148,
		26.602503, 38.165913, 33.270264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847031, 38.405201, 33.624180>,  <26.019789, 38.231407, 32.887959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847031, 38.405201, 33.624180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235874, 38.476662, 33.563396>,  <26.469179, 38.519539, 33.526924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235874, 38.476662, 33.563396>,  <25.847031, 38.405201, 33.624180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235874, 38.476662, 33.563396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094676, 0.891690, 0.442634,
		0.214580, -0.415900, 0.883732,
		0.972107, 0.178649, -0.151963,
		26.527506, 38.530258, 33.517807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971922, 38.826603, 34.283356>,  <25.847031, 38.405201, 33.624180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971922, 38.826603, 34.283356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284019, 38.870598, 34.037064>,  <26.471279, 38.896996, 33.889290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284019, 38.870598, 34.037064>,  <25.971922, 38.826603, 34.283356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284019, 38.870598, 34.037064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107959, 0.945959, 0.305788,
		0.616086, -0.305063, 0.726206,
		0.780246, 0.109991, -0.615726,
		26.518093, 38.903595, 33.852345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455570, 39.021362, 34.715588>,  <25.971922, 38.826603, 34.283356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455570, 39.021362, 34.715588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508411, 39.146992, 34.339523>,  <26.540117, 39.222370, 34.113884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508411, 39.146992, 34.339523>,  <26.455570, 39.021362, 34.715588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508411, 39.146992, 34.339523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171434, 0.941422, 0.290403,
		0.976299, 0.122813, 0.178208,
		0.132104, 0.314071, -0.940164,
		26.548042, 39.241215, 34.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699671, 39.597870, 34.915127>,  <26.455570, 39.021362, 34.715588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699671, 39.597870, 34.915127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625244, 39.645069, 34.524956>,  <26.580587, 39.673389, 34.290855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625244, 39.645069, 34.524956>,  <26.699671, 39.597870, 34.915127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625244, 39.645069, 34.524956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386766, 0.903814, 0.183116,
		0.903211, 0.411333, -0.122531,
		-0.186067, 0.118002, -0.975425,
		26.569424, 39.680470, 34.232327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133099, 40.113823, 34.714214>,  <26.699671, 39.597870, 34.915127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133099, 40.113823, 34.714214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807459, 40.091030, 34.483044>,  <26.612076, 40.077354, 34.344341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807459, 40.091030, 34.483044>,  <27.133099, 40.113823, 34.714214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807459, 40.091030, 34.483044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213971, 0.954592, 0.207295,
		0.539871, 0.292417, -0.789323,
		-0.814098, -0.056980, -0.577925,
		26.563229, 40.073936, 34.309666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124184, 40.816391, 34.521866>,  <27.133099, 40.113823, 34.714214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124184, 40.816391, 34.521866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768061, 40.656017, 34.435516>,  <26.554386, 40.559792, 34.383705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768061, 40.656017, 34.435516>,  <27.124184, 40.816391, 34.521866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768061, 40.656017, 34.435516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451684, 0.837688, 0.307017,
		0.057743, 0.370848, -0.926897,
		-0.890307, -0.400936, -0.215877,
		26.500969, 40.535736, 34.370754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838022, 41.390289, 34.259575>,  <27.124184, 40.816391, 34.521866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838022, 41.390289, 34.259575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545753, 41.133057, 34.351280>,  <26.370392, 40.978718, 34.406303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545753, 41.133057, 34.351280>,  <26.838022, 41.390289, 34.259575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545753, 41.133057, 34.351280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598563, 0.764916, 0.237961,
		-0.328394, 0.036644, -0.943830,
		-0.730671, -0.643086, 0.229260,
		26.326551, 40.940132, 34.420059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234829, 41.719807, 34.037640>,  <26.838022, 41.390289, 34.259575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234829, 41.719807, 34.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143856, 41.466656, 34.333679>,  <26.089272, 41.314766, 34.511303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143856, 41.466656, 34.333679>,  <26.234829, 41.719807, 34.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143856, 41.466656, 34.333679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663355, 0.657090, 0.358041,
		-0.712905, -0.409516, -0.569265,
		-0.227435, -0.632874, 0.740098,
		26.075626, 41.276794, 34.555710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498878, 41.957600, 34.260490>,  <26.234829, 41.719807, 34.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498878, 41.957600, 34.260490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648359, 41.763229, 34.576523>,  <25.738049, 41.646606, 34.766140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648359, 41.763229, 34.576523>,  <25.498878, 41.957600, 34.260490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648359, 41.763229, 34.576523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631471, 0.490630, 0.600438,
		-0.679405, -0.723296, -0.123500,
		0.373702, -0.485927, 0.790077,
		25.760469, 41.617451, 34.813545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938625, 42.077354, 34.679821>,  <25.498878, 41.957600, 34.260490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938625, 42.077354, 34.679821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215424, 41.933807, 34.930378>,  <25.381502, 41.847679, 35.080711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215424, 41.933807, 34.930378>,  <24.938625, 42.077354, 34.679821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215424, 41.933807, 34.930378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475654, 0.426057, 0.769564,
		-0.543046, -0.830477, 0.124133,
		0.691993, -0.358865, 0.626388,
		25.423021, 41.826149, 35.118294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567144, 41.737988, 35.255188>,  <24.938625, 42.077354, 34.679821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567144, 41.737988, 35.255188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915863, 41.895855, 35.371262>,  <25.125093, 41.990574, 35.440907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915863, 41.895855, 35.371262>,  <24.567144, 41.737988, 35.255188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915863, 41.895855, 35.371262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484825, 0.610352, 0.626431,
		0.070117, -0.686810, 0.723447,
		0.871796, 0.394669, 0.290187,
		25.177402, 42.014256, 35.458317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668650, 41.661304, 35.935047>,  <24.567144, 41.737988, 35.255188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668650, 41.661304, 35.935047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849144, 42.002254, 35.829338>,  <24.957441, 42.206825, 35.765911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849144, 42.002254, 35.829338>,  <24.668650, 41.661304, 35.935047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849144, 42.002254, 35.829338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536538, 0.495764, 0.682894,
		0.713100, -0.166353, 0.681039,
		0.451237, 0.852376, -0.264275,
		24.984514, 42.257969, 35.750057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902586, 42.013298, 36.605083>,  <24.668650, 41.661304, 35.935047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902586, 42.013298, 36.605083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844067, 42.274734, 36.308052>,  <24.808954, 42.431595, 36.129833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844067, 42.274734, 36.308052>,  <24.902586, 42.013298, 36.605083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844067, 42.274734, 36.308052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538928, 0.576816, 0.613872,
		0.829550, 0.490003, 0.267851,
		-0.146299, 0.653590, -0.742574,
		24.800177, 42.470810, 36.085281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.769388, 41.863689, 37.256069>,  <24.902586, 42.013298, 36.605083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.769388, 41.863689, 37.256069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615120, 42.031693, 37.584667>,  <24.522558, 42.132492, 37.781826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615120, 42.031693, 37.584667>,  <24.769388, 41.863689, 37.256069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615120, 42.031693, 37.584667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560966, -0.600156, 0.570201,
		0.732512, 0.680741, -0.004146,
		-0.385671, 0.420005, 0.821495,
		24.499418, 42.157696, 37.831116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298120, 42.230236, 37.657742>,  <24.769388, 41.863689, 37.256069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298120, 42.230236, 37.657742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010096, 42.097408, 37.901463>,  <24.837280, 42.017712, 38.047695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010096, 42.097408, 37.901463>,  <25.298120, 42.230236, 37.657742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010096, 42.097408, 37.901463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684919, -0.481022, 0.547270,
		0.111356, 0.811387, 0.573804,
		-0.720060, -0.332067, 0.609299,
		24.794077, 41.997787, 38.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295925, 42.413437, 38.525787>,  <25.298120, 42.230236, 37.657742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295925, 42.413437, 38.525787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203392, 42.075287, 38.333195>,  <25.147871, 41.872398, 38.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203392, 42.075287, 38.333195>,  <25.295925, 42.413437, 38.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203392, 42.075287, 38.333195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860948, -0.408358, 0.303334,
		-0.453048, -0.344360, 0.822292,
		-0.231334, -0.845376, -0.481482,
		25.133991, 41.821674, 38.188751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237677, 41.815762, 39.001488>,  <25.295925, 42.413437, 38.525787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237677, 41.815762, 39.001488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337547, 41.696011, 38.633133>,  <25.397469, 41.624161, 38.412121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337547, 41.696011, 38.633133>,  <25.237677, 41.815762, 39.001488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337547, 41.696011, 38.633133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913690, -0.242102, 0.326430,
		-0.320675, -0.922908, 0.213091,
		0.249675, -0.299378, -0.920888,
		25.412451, 41.606197, 38.356865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861006, 41.714573, 38.664375>,  <25.237677, 41.815762, 39.001488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861006, 41.714573, 38.664375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231869, 41.712669, 38.814232>,  <26.454386, 41.711525, 38.904148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231869, 41.712669, 38.814232>,  <25.861006, 41.714573, 38.664375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231869, 41.712669, 38.814232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159600, -0.899643, -0.406411,
		0.338982, 0.436600, -0.833350,
		0.927156, -0.004763, 0.374644,
		26.510015, 41.711239, 38.926624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466684, 41.692528, 38.137680>,  <25.861006, 41.714573, 38.664375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466684, 41.692528, 38.137680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591322, 41.517548, 38.475094>,  <26.666103, 41.412560, 38.677544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591322, 41.517548, 38.475094>,  <26.466684, 41.692528, 38.137680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591322, 41.517548, 38.475094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052179, -0.878512, -0.474863,
		0.948782, 0.191978, -0.250912,
		0.311592, -0.437449, 0.843534,
		26.684799, 41.386314, 38.728153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237610, 41.376495, 38.098049>,  <26.466684, 41.692528, 38.137680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237610, 41.376495, 38.098049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967247, 41.173931, 38.312225>,  <26.805029, 41.052391, 38.440731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967247, 41.173931, 38.312225>,  <27.237610, 41.376495, 38.098049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967247, 41.173931, 38.312225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165805, -0.812389, -0.559046,
		0.718092, -0.289086, 0.633066,
		-0.675908, -0.506412, 0.535438,
		26.764475, 41.022007, 38.472858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468534, 40.797901, 38.485767>,  <27.237610, 41.376495, 38.098049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468534, 40.797901, 38.485767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091324, 40.739952, 38.365959>,  <26.864998, 40.705181, 38.294075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091324, 40.739952, 38.365959>,  <27.468534, 40.797901, 38.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091324, 40.739952, 38.365959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238275, -0.922376, -0.304051,
		-0.232222, -0.358096, 0.904345,
		-0.943026, -0.144876, -0.299522,
		26.808416, 40.696491, 38.276104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324362, 40.184830, 38.786083>,  <27.468534, 40.797901, 38.485767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324362, 40.184830, 38.786083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080696, 40.232040, 38.472397>,  <26.934496, 40.260368, 38.284187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080696, 40.232040, 38.472397>,  <27.324362, 40.184830, 38.786083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080696, 40.232040, 38.472397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159328, -0.950486, -0.266816,
		-0.776874, -0.287482, 0.560198,
		-0.609165, 0.118028, -0.784211,
		26.897947, 40.267448, 38.237133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737469, 39.664356, 38.798496>,  <27.324362, 40.184830, 38.786083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737469, 39.664356, 38.798496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796564, 39.785046, 38.421745>,  <26.832022, 39.857460, 38.195694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796564, 39.785046, 38.421745>,  <26.737469, 39.664356, 38.798496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796564, 39.785046, 38.421745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182533, -0.944289, -0.273862,
		-0.972037, -0.131464, -0.194583,
		0.147740, 0.301721, -0.941880,
		26.840885, 39.875561, 38.139183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557861, 39.129807, 38.476994>,  <26.737469, 39.664356, 38.798496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557861, 39.129807, 38.476994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739843, 39.323074, 38.177776>,  <26.849031, 39.439037, 37.998245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739843, 39.323074, 38.177776>,  <26.557861, 39.129807, 38.476994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739843, 39.323074, 38.177776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211431, -0.874595, -0.436326,
		-0.865052, 0.040349, -0.500057,
		0.454953, 0.483172, -0.748039,
		26.876329, 39.468025, 37.953365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201387, 39.011173, 37.821808>,  <26.557861, 39.129807, 38.476994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201387, 39.011173, 37.821808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585011, 39.102226, 37.754410>,  <26.815186, 39.156857, 37.713970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585011, 39.102226, 37.754410>,  <26.201387, 39.011173, 37.821808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585011, 39.102226, 37.754410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083282, -0.795331, -0.600428,
		-0.270683, 0.561813, -0.781727,
		0.959059, 0.227629, -0.168494,
		26.872728, 39.170513, 37.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298803, 38.822304, 37.117901>,  <26.201387, 39.011173, 37.821808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298803, 38.822304, 37.117901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683073, 38.866646, 37.219738>,  <26.913635, 38.893250, 37.280838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683073, 38.866646, 37.219738>,  <26.298803, 38.822304, 37.117901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683073, 38.866646, 37.219738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257170, -0.700999, -0.665180,
		0.104728, 0.704494, -0.701940,
		0.960675, 0.110855, 0.254589,
		26.971275, 38.899902, 37.296116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675783, 38.793736, 36.439663>,  <26.298803, 38.822304, 37.117901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675783, 38.793736, 36.439663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923960, 38.689495, 36.735538>,  <27.072866, 38.626949, 36.913063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923960, 38.689495, 36.735538>,  <26.675783, 38.793736, 36.439663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923960, 38.689495, 36.735538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357550, -0.745456, -0.562542,
		0.698005, 0.613500, -0.369334,
		0.620441, -0.260601, 0.739689,
		27.110092, 38.611313, 36.957447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232756, 38.530926, 36.093887>,  <26.675783, 38.793736, 36.439663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232756, 38.530926, 36.093887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301689, 38.391861, 36.462547>,  <27.343048, 38.308422, 36.683743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301689, 38.391861, 36.462547>,  <27.232756, 38.530926, 36.093887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301689, 38.391861, 36.462547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441716, -0.809024, -0.387773,
		0.880448, 0.473932, 0.014147,
		0.172332, -0.347663, 0.921647,
		27.353390, 38.287563, 36.739040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879601, 38.301662, 36.063965>,  <27.232756, 38.530926, 36.093887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879601, 38.301662, 36.063965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709108, 38.121777, 36.377930>,  <27.606813, 38.013844, 36.566307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709108, 38.121777, 36.377930>,  <27.879601, 38.301662, 36.063965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709108, 38.121777, 36.377930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425052, -0.865489, -0.265066,
		0.798536, 0.220649, 0.560048,
		-0.426229, -0.449714, 0.784912,
		27.581240, 37.986862, 36.613403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391724, 37.824661, 36.268707>,  <27.879601, 38.301662, 36.063965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391724, 37.824661, 36.268707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043367, 37.692089, 36.413872>,  <27.834354, 37.612545, 36.500973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043367, 37.692089, 36.413872>,  <28.391724, 37.824661, 36.268707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043367, 37.692089, 36.413872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302194, -0.943437, -0.136401,
		0.387593, -0.009121, 0.921786,
		-0.870891, -0.331426, 0.362913,
		27.782101, 37.592663, 36.522747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562983, 37.494255, 36.819012>,  <28.391724, 37.824661, 36.268707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562983, 37.494255, 36.819012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219376, 37.325756, 36.702637>,  <28.013212, 37.224659, 36.632812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219376, 37.325756, 36.702637>,  <28.562983, 37.494255, 36.819012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219376, 37.325756, 36.702637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502017, -0.804503, -0.317417,
		-0.100347, -0.418720, 0.902554,
		-0.859017, -0.421245, -0.290934,
		27.961670, 37.199383, 36.615356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573641, 36.689606, 37.085766>,  <28.562983, 37.494255, 36.819012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573641, 36.689606, 37.085766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309437, 36.730701, 36.788265>,  <28.150913, 36.755360, 36.609764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309437, 36.730701, 36.788265>,  <28.573641, 36.689606, 37.085766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309437, 36.730701, 36.788265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374661, -0.813346, -0.445081,
		-0.650656, -0.572637, 0.498733,
		-0.660512, 0.102739, -0.743753,
		28.111282, 36.761524, 36.565140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536106, 36.034809, 36.848747>,  <28.573641, 36.689606, 37.085766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536106, 36.034809, 36.848747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360773, 36.221012, 36.541199>,  <28.255573, 36.332733, 36.356670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360773, 36.221012, 36.541199>,  <28.536106, 36.034809, 36.848747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360773, 36.221012, 36.541199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479921, -0.602067, -0.638115,
		-0.759961, -0.648706, 0.040499,
		-0.438332, 0.465506, -0.768875,
		28.229273, 36.360664, 36.310535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090416, 35.590332, 36.473690>,  <28.536106, 36.034809, 36.848747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090416, 35.590332, 36.473690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235294, 35.878124, 36.236656>,  <28.322222, 36.050800, 36.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235294, 35.878124, 36.236656>,  <28.090416, 35.590332, 36.473690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235294, 35.878124, 36.236656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399947, -0.694214, -0.598422,
		-0.841936, -0.020257, -0.539196,
		0.362196, 0.719483, -0.592586,
		28.343952, 36.093967, 36.058880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204018, 35.296452, 35.833622>,  <28.090416, 35.590332, 36.473690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204018, 35.296452, 35.833622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394726, 35.635025, 35.738766>,  <28.509151, 35.838169, 35.681854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394726, 35.635025, 35.738766>,  <28.204018, 35.296452, 35.833622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394726, 35.635025, 35.738766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358832, -0.433679, -0.826536,
		-0.802452, 0.308975, -0.510495,
		0.476770, 0.846437, -0.237137,
		28.537756, 35.888958, 35.667625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121387, 35.390709, 35.109158>,  <28.204018, 35.296452, 35.833622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121387, 35.390709, 35.109158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434155, 35.615742, 35.216564>,  <28.621815, 35.750763, 35.281010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434155, 35.615742, 35.216564>,  <28.121387, 35.390709, 35.109158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434155, 35.615742, 35.216564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564708, -0.456804, -0.687339,
		-0.264027, 0.689077, -0.674880,
		0.781917, 0.562586, 0.268519,
		28.668730, 35.784519, 35.297119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307636, 35.621815, 34.504253>,  <28.121387, 35.390709, 35.109158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307636, 35.621815, 34.504253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615398, 35.668999, 34.755363>,  <28.800056, 35.697311, 34.906029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615398, 35.668999, 34.755363>,  <28.307636, 35.621815, 34.504253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615398, 35.668999, 34.755363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596536, -0.484087, -0.640160,
		0.228380, 0.867032, -0.442830,
		0.769407, 0.117964, 0.627771,
		28.846220, 35.704388, 34.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770153, 35.844025, 34.076221>,  <28.307636, 35.621815, 34.504253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770153, 35.844025, 34.076221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945854, 35.664013, 34.387226>,  <29.051275, 35.556004, 34.573830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945854, 35.664013, 34.387226>,  <28.770153, 35.844025, 34.076221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945854, 35.664013, 34.387226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473738, -0.619324, -0.626107,
		0.763302, 0.643357, -0.058841,
		0.439252, -0.450034, 0.777514,
		29.077629, 35.529003, 34.620480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399361, 35.685070, 33.898159>,  <28.770153, 35.844025, 34.076221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399361, 35.685070, 33.898159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379450, 35.424725, 34.201183>,  <29.367504, 35.268517, 34.382999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379450, 35.424725, 34.201183>,  <29.399361, 35.685070, 33.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379450, 35.424725, 34.201183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320255, -0.728851, -0.605155,
		0.946023, 0.212490, 0.244722,
		-0.049777, -0.650864, 0.757560,
		29.364517, 35.229465, 34.428452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952364, 35.235588, 33.816826>,  <29.399361, 35.685070, 33.898159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952364, 35.235588, 33.816826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686724, 35.044758, 34.047085>,  <29.527340, 34.930260, 34.185242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686724, 35.044758, 34.047085>,  <29.952364, 35.235588, 33.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686724, 35.044758, 34.047085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184819, -0.850812, -0.491896,
		0.724441, -0.220277, 0.653195,
		-0.664099, -0.477072, 0.575651,
		29.487494, 34.901638, 34.219780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220469, 34.603748, 33.819096>,  <29.952364, 35.235588, 33.816826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220469, 34.603748, 33.819096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873278, 34.515217, 33.996918>,  <29.664963, 34.462097, 34.103611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873278, 34.515217, 33.996918>,  <30.220469, 34.603748, 33.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873278, 34.515217, 33.996918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099420, -0.799626, -0.592211,
		0.486550, -0.558224, 0.672053,
		-0.867977, -0.221325, 0.444557,
		29.612885, 34.448818, 34.130283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349499, 33.973980, 34.081493>,  <30.220469, 34.603748, 33.819096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349499, 33.973980, 34.081493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955023, 34.019051, 34.032948>,  <29.718336, 34.046093, 34.003819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955023, 34.019051, 34.032948>,  <30.349499, 33.973980, 34.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955023, 34.019051, 34.032948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032607, -0.850612, -0.524782,
		-0.162365, -0.513579, 0.842541,
		-0.986192, 0.112679, -0.121363,
		29.659164, 34.052853, 33.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960390, 33.315647, 34.314857>,  <30.349499, 33.973980, 34.081493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960390, 33.315647, 34.314857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810541, 33.516651, 34.003178>,  <29.720633, 33.637253, 33.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810541, 33.516651, 34.003178>,  <29.960390, 33.315647, 34.314857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810541, 33.516651, 34.003178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043924, -0.849070, -0.526451,
		-0.926137, -0.162994, 0.340152,
		-0.374621, 0.502507, -0.779196,
		29.698154, 33.667404, 33.769421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422918, 33.088680, 34.919155>,  <29.960390, 33.315647, 34.314857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422918, 33.088680, 34.919155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676514, 33.245327, 34.652416>,  <30.828671, 33.339317, 34.492371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676514, 33.245327, 34.652416>,  <30.422918, 33.088680, 34.919155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676514, 33.245327, 34.652416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458036, 0.504627, 0.731816,
		0.623106, -0.769405, 0.140551,
		0.633989, 0.391622, -0.666851,
		30.866711, 33.362812, 34.452362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189142, 33.025379, 35.133179>,  <30.422918, 33.088680, 34.919155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189142, 33.025379, 35.133179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147148, 33.359180, 34.916813>,  <31.121952, 33.559460, 34.786995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147148, 33.359180, 34.916813>,  <31.189142, 33.025379, 35.133179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147148, 33.359180, 34.916813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398833, 0.533590, 0.745798,
		0.910994, -0.137435, -0.388846,
		-0.104986, 0.834502, -0.540911,
		31.115652, 33.609531, 34.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820114, 33.384598, 35.015945>,  <31.189142, 33.025379, 35.133179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820114, 33.384598, 35.015945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524128, 33.653625, 35.020050>,  <31.346537, 33.815041, 35.022514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524128, 33.653625, 35.020050>,  <31.820114, 33.384598, 35.015945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524128, 33.653625, 35.020050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427162, 0.458071, 0.779553,
		0.519601, 0.581226, -0.626252,
		-0.739965, 0.672567, 0.010263,
		31.302139, 33.855396, 35.023129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119198, 34.075687, 35.091541>,  <31.820114, 33.384598, 35.015945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119198, 34.075687, 35.091541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757942, 34.000195, 35.245800>,  <31.541189, 33.954899, 35.338356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757942, 34.000195, 35.245800>,  <32.119198, 34.075687, 35.091541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757942, 34.000195, 35.245800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341692, 0.227955, 0.911747,
		-0.259985, 0.955206, -0.141386,
		-0.903136, -0.188730, 0.385651,
		31.487001, 33.943577, 35.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771019, 34.647125, 35.479858>,  <32.119198, 34.075687, 35.091541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771019, 34.647125, 35.479858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682438, 34.277077, 35.603214>,  <31.629290, 34.055046, 35.677227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682438, 34.277077, 35.603214>,  <31.771019, 34.647125, 35.479858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682438, 34.277077, 35.603214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574019, 0.131986, 0.808135,
		-0.788328, 0.355985, 0.501810,
		-0.221452, -0.925124, 0.308391,
		31.616003, 33.999538, 35.695732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580887, 34.631111, 36.242596>,  <31.771019, 34.647125, 35.479858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580887, 34.631111, 36.242596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692505, 34.250912, 36.187908>,  <31.759476, 34.022793, 36.155094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692505, 34.250912, 36.187908>,  <31.580887, 34.631111, 36.242596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692505, 34.250912, 36.187908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376568, -0.022664, 0.926112,
		-0.883364, -0.309910, 0.351602,
		0.279043, -0.950496, -0.136723,
		31.776218, 33.965763, 36.146893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293739, 34.156475, 36.888103>,  <31.580887, 34.631111, 36.242596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293739, 34.156475, 36.888103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594032, 33.975361, 36.695694>,  <31.774208, 33.866692, 36.580246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594032, 33.975361, 36.695694>,  <31.293739, 34.156475, 36.888103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594032, 33.975361, 36.695694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467222, -0.150846, 0.871177,
		-0.467016, -0.878767, 0.098306,
		0.750733, -0.452784, -0.481027,
		31.819252, 33.839527, 36.551388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340544, 33.628918, 37.272343>,  <31.293739, 34.156475, 36.888103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340544, 33.628918, 37.272343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706245, 33.631836, 37.110313>,  <31.925667, 33.633587, 37.013096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706245, 33.631836, 37.110313>,  <31.340544, 33.628918, 37.272343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706245, 33.631836, 37.110313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401756, -0.145255, 0.904153,
		-0.052242, -0.989367, -0.135732,
		0.914255, 0.007297, -0.405073,
		31.980522, 33.634026, 36.988792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773867, 32.970348, 37.564213>,  <31.340544, 33.628918, 37.272343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773867, 32.970348, 37.564213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034588, 33.250694, 37.448322>,  <32.191021, 33.418903, 37.378788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034588, 33.250694, 37.448322>,  <31.773867, 32.970348, 37.564213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034588, 33.250694, 37.448322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568153, -0.198212, 0.798695,
		0.502352, -0.685199, -0.527394,
		0.651801, 0.700867, -0.289726,
		32.230129, 33.460953, 37.361404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422836, 32.776684, 37.662144>,  <31.773867, 32.970348, 37.564213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422836, 32.776684, 37.662144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466015, 33.172318, 37.622036>,  <32.491920, 33.409698, 37.597973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466015, 33.172318, 37.622036>,  <32.422836, 32.776684, 37.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466015, 33.172318, 37.622036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578376, 0.019551, 0.815536,
		0.808597, -0.146025, -0.569955,
		0.107945, 0.989088, -0.100266,
		32.498398, 33.469044, 37.591957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093235, 32.797585, 37.831089>,  <32.422836, 32.776684, 37.662144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093235, 32.797585, 37.831089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916172, 33.152321, 37.884109>,  <32.809933, 33.365162, 37.915920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916172, 33.152321, 37.884109>,  <33.093235, 32.797585, 37.831089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916172, 33.152321, 37.884109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463729, 0.099889, 0.880328,
		0.767470, 0.451151, -0.455470,
		-0.442657, 0.886840, 0.132550,
		32.783375, 33.418373, 37.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647575, 33.215572, 37.964199>,  <33.093235, 32.797585, 37.831089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647575, 33.215572, 37.964199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320953, 33.413826, 38.082577>,  <33.124981, 33.532780, 38.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320953, 33.413826, 38.082577>,  <33.647575, 33.215572, 37.964199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320953, 33.413826, 38.082577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504318, 0.363043, 0.783494,
		0.280886, 0.789017, -0.546403,
		-0.816558, 0.495633, 0.295941,
		33.075985, 33.562515, 38.171360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885498, 33.803337, 38.389362>,  <33.647575, 33.215572, 37.964199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885498, 33.803337, 38.389362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506756, 33.787685, 38.517071>,  <33.279510, 33.778294, 38.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506756, 33.787685, 38.517071>,  <33.885498, 33.803337, 38.389362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506756, 33.787685, 38.517071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319262, 0.006708, 0.947643,
		-0.039221, 0.999212, 0.006141,
		-0.946855, -0.039128, 0.319273,
		33.222698, 33.775948, 38.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954231, 34.280586, 38.972290>,  <33.885498, 33.803337, 38.389362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954231, 34.280586, 38.972290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622143, 34.060535, 39.008263>,  <33.422890, 33.928505, 39.029846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622143, 34.060535, 39.008263>,  <33.954231, 34.280586, 38.972290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622143, 34.060535, 39.008263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105006, 0.004097, 0.994463,
		-0.547452, 0.835070, 0.054366,
		-0.830223, -0.550129, 0.089930,
		33.373077, 33.895496, 39.035240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644680, 34.554684, 39.572384>,  <33.954231, 34.280586, 38.972290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644680, 34.554684, 39.572384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474239, 34.195850, 39.525600>,  <33.371975, 33.980549, 39.497528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474239, 34.195850, 39.525600>,  <33.644680, 34.554684, 39.572384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474239, 34.195850, 39.525600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051776, -0.153256, 0.986829,
		-0.903192, 0.414436, 0.111750,
		-0.426104, -0.897082, -0.116961,
		33.346409, 33.926727, 39.490513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173569, 34.438366, 40.094746>,  <33.644680, 34.554684, 39.572384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173569, 34.438366, 40.094746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282127, 34.078236, 39.958649>,  <33.347263, 33.862160, 39.876991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282127, 34.078236, 39.958649>,  <33.173569, 34.438366, 40.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282127, 34.078236, 39.958649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008384, -0.355708, 0.934560,
		-0.962431, -0.250786, -0.104087,
		0.271399, -0.900321, -0.340242,
		33.363548, 33.808140, 39.856575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744862, 34.063625, 40.434994>,  <33.173569, 34.438366, 40.094746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744862, 34.063625, 40.434994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047626, 33.820030, 40.340145>,  <33.229286, 33.673874, 40.283237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047626, 33.820030, 40.340145>,  <32.744862, 34.063625, 40.434994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047626, 33.820030, 40.340145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037293, -0.402492, 0.914663,
		-0.652454, -0.683475, -0.327362,
		0.756910, -0.608984, -0.237119,
		33.274700, 33.637337, 40.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580460, 33.479465, 40.735542>,  <32.744862, 34.063625, 40.434994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580460, 33.479465, 40.735542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975853, 33.462128, 40.677547>,  <33.213089, 33.451725, 40.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975853, 33.462128, 40.677547>,  <32.580460, 33.479465, 40.735542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975853, 33.462128, 40.677547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110786, -0.445345, 0.888479,
		-0.103079, -0.894309, -0.435414,
		0.988484, -0.043345, -0.144983,
		33.272400, 33.449123, 40.634052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766930, 32.867485, 41.078979>,  <32.580460, 33.479465, 40.735542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766930, 32.867485, 41.078979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118267, 33.057438, 41.057079>,  <33.329071, 33.171410, 41.043938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118267, 33.057438, 41.057079>,  <32.766930, 32.867485, 41.078979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118267, 33.057438, 41.057079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314187, -0.487169, 0.814833,
		0.360275, -0.732907, -0.577105,
		0.878344, 0.474883, -0.054755,
		33.381771, 33.199902, 41.040653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146740, 32.370598, 41.247692>,  <32.766930, 32.867485, 41.078979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146740, 32.370598, 41.247692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355900, 32.706490, 41.306252>,  <33.481396, 32.908024, 41.341389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355900, 32.706490, 41.306252>,  <33.146740, 32.370598, 41.247692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355900, 32.706490, 41.306252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381396, -0.384093, 0.840839,
		0.762305, -0.383841, -0.521111,
		0.522903, 0.839726, 0.146401,
		33.512772, 32.958408, 41.350170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790756, 32.265263, 41.031708>,  <33.146740, 32.370598, 41.247692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790756, 32.265263, 41.031708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810352, 32.564137, 41.296833>,  <33.822109, 32.743462, 41.455906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810352, 32.564137, 41.296833>,  <33.790756, 32.265263, 41.031708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810352, 32.564137, 41.296833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406093, -0.621183, 0.670239,
		0.912518, 0.236324, -0.333860,
		0.048994, 0.747183, 0.662810,
		33.825050, 32.788292, 41.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503178, 32.241276, 41.401154>,  <33.790756, 32.265263, 41.031708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503178, 32.241276, 41.401154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257442, 32.462151, 41.626606>,  <34.110001, 32.594677, 41.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257442, 32.462151, 41.626606>,  <34.503178, 32.241276, 41.401154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257442, 32.462151, 41.626606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331590, -0.467506, 0.819443,
		0.715984, 0.690310, 0.104109,
		-0.614341, 0.552187, 0.563627,
		34.073139, 32.627808, 41.795692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983685, 32.562675, 41.985294>,  <34.503178, 32.241276, 41.401154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983685, 32.562675, 41.985294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602646, 32.565483, 42.106964>,  <34.374023, 32.567169, 42.179966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602646, 32.565483, 42.106964>,  <34.983685, 32.562675, 41.985294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602646, 32.565483, 42.106964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256588, -0.518695, 0.815547,
		0.163497, 0.854930, 0.492304,
		-0.952592, 0.007020, 0.304170,
		34.316868, 32.567589, 42.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071911, 32.743828, 42.573147>,  <34.983685, 32.562675, 41.985294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071911, 32.743828, 42.573147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710514, 32.572399, 42.570873>,  <34.493675, 32.469540, 42.569508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710514, 32.572399, 42.570873>,  <35.071911, 32.743828, 42.573147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710514, 32.572399, 42.570873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179044, -0.389427, 0.903488,
		-0.389427, 0.815273, 0.428576,
		-0.903488, -0.428576, -0.005684,
		34.439468, 32.443825, 42.569168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917252, 32.839165, 43.228123>,  <35.071911, 32.743828, 42.573147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917252, 32.839165, 43.228123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646194, 32.568680, 43.112507>,  <34.483562, 32.406391, 43.043137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646194, 32.568680, 43.112507>,  <34.917252, 32.839165, 43.228123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646194, 32.568680, 43.112507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061072, -0.443434, 0.894224,
		-0.732855, 0.588308, 0.341785,
		-0.677638, -0.676210, -0.289043,
		34.442902, 32.365818, 43.025795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422825, 32.840019, 43.749477>,  <34.917252, 32.839165, 43.228123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422825, 32.840019, 43.749477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386497, 32.489807, 43.559658>,  <34.364700, 32.279678, 43.445766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386497, 32.489807, 43.559658>,  <34.422825, 32.840019, 43.749477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386497, 32.489807, 43.559658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013378, -0.475404, 0.879666,
		-0.995778, 0.086236, 0.031461,
		-0.090816, -0.875531, -0.474550,
		34.359253, 32.227146, 43.417294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812542, 32.575100, 43.930099>,  <34.422825, 32.840019, 43.749477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812542, 32.575100, 43.930099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054787, 32.276428, 43.820045>,  <34.200134, 32.097225, 43.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054787, 32.276428, 43.820045>,  <33.812542, 32.575100, 43.930099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054787, 32.276428, 43.820045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276743, -0.521794, 0.806935,
		-0.746087, -0.412549, -0.522645,
		0.605613, -0.746682, -0.275134,
		34.236469, 32.052425, 43.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370110, 31.934332, 44.188568>,  <33.812542, 32.575100, 43.930099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370110, 31.934332, 44.188568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750507, 31.847221, 44.100765>,  <33.978745, 31.794954, 44.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750507, 31.847221, 44.100765>,  <33.370110, 31.934332, 44.188568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750507, 31.847221, 44.100765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025152, -0.653073, 0.756877,
		-0.308187, -0.725306, -0.615590,
		0.950993, -0.217776, -0.219511,
		34.035805, 31.781889, 44.034912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375496, 31.252314, 44.123165>,  <33.370110, 31.934332, 44.188568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375496, 31.252314, 44.123165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753540, 31.329233, 44.228832>,  <33.980366, 31.375385, 44.292233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753540, 31.329233, 44.228832>,  <33.375496, 31.252314, 44.123165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753540, 31.329233, 44.228832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009481, -0.792000, 0.610448,
		0.326612, -0.579445, -0.746705,
		0.945111, 0.192300, 0.264171,
		34.037075, 31.386923, 44.308083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665241, 30.608591, 44.350315>,  <33.375496, 31.252314, 44.123165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665241, 30.608591, 44.350315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904156, 30.886909, 44.509872>,  <34.047504, 31.053900, 44.605606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904156, 30.886909, 44.509872>,  <33.665241, 30.608591, 44.350315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904156, 30.886909, 44.509872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018096, -0.485537, 0.874029,
		0.801821, -0.529267, -0.277416,
		0.597290, 0.695795, 0.398891,
		34.083344, 31.095648, 44.629539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137688, 30.222746, 44.688324>,  <33.665241, 30.608591, 44.350315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137688, 30.222746, 44.688324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180626, 30.584078, 44.854443>,  <34.206390, 30.800877, 44.954113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180626, 30.584078, 44.854443>,  <34.137688, 30.222746, 44.688324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180626, 30.584078, 44.854443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068209, -0.423419, 0.903363,
		0.991879, -0.068647, -0.107068,
		0.107348, 0.903330, 0.415298,
		34.212830, 30.855076, 44.979031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606319, 30.090572, 45.203568>,  <34.137688, 30.222746, 44.688324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606319, 30.090572, 45.203568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421768, 30.435041, 45.288898>,  <34.311039, 30.641724, 45.340096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421768, 30.435041, 45.288898>,  <34.606319, 30.090572, 45.203568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421768, 30.435041, 45.288898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134167, -0.169957, 0.976275,
		0.877000, 0.479054, -0.037127,
		-0.461379, 0.861175, 0.213325,
		34.283356, 30.693394, 45.352898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986023, 30.404112, 45.762478>,  <34.606319, 30.090572, 45.203568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986023, 30.404112, 45.762478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647789, 30.616465, 45.784924>,  <34.444847, 30.743877, 45.798389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647789, 30.616465, 45.784924>,  <34.986023, 30.404112, 45.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647789, 30.616465, 45.784924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053600, -0.189008, 0.980512,
		0.531143, 0.826099, 0.188277,
		-0.845585, 0.530884, 0.056112,
		34.394112, 30.775730, 45.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130856, 30.840990, 46.228828>,  <34.986023, 30.404112, 45.762478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130856, 30.840990, 46.228828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743496, 30.750486, 46.186852>,  <34.511082, 30.696184, 46.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743496, 30.750486, 46.186852>,  <35.130856, 30.840990, 46.228828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743496, 30.750486, 46.186852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016602, -0.361348, 0.932283,
		-0.248858, 0.904563, 0.346172,
		-0.968398, -0.226260, -0.104942,
		34.452976, 30.682608, 46.155369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923027, 30.909870, 46.830971>,  <35.130856, 30.840990, 46.228828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923027, 30.909870, 46.830971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594410, 30.741573, 46.677063>,  <34.397240, 30.640594, 46.584721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594410, 30.741573, 46.677063>,  <34.923027, 30.909870, 46.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594410, 30.741573, 46.677063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178709, -0.450815, 0.874545,
		-0.541417, 0.787236, 0.295173,
		-0.821542, -0.420744, -0.384765,
		34.347946, 30.615351, 46.561634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292126, 31.177057, 47.143528>,  <34.923027, 30.909870, 46.830971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292126, 31.177057, 47.143528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233322, 30.807875, 47.001240>,  <34.198040, 30.586365, 46.915867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233322, 30.807875, 47.001240>,  <34.292126, 31.177057, 47.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233322, 30.807875, 47.001240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055282, -0.351399, 0.934593,
		-0.987589, 0.157058, 0.000635,
		-0.147009, -0.922958, -0.355720,
		34.189220, 30.530987, 46.894524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703957, 30.871464, 47.586014>,  <34.292126, 31.177057, 47.143528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703957, 30.871464, 47.586014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918465, 30.578201, 47.418732>,  <34.047169, 30.402243, 47.318363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918465, 30.578201, 47.418732>,  <33.703957, 30.871464, 47.586014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918465, 30.578201, 47.418732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074046, -0.452700, 0.888583,
		-0.840793, -0.507485, -0.188482,
		0.536269, -0.733158, -0.418204,
		34.079346, 30.358253, 47.293270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443966, 30.282721, 47.834564>,  <33.703957, 30.871464, 47.586014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443966, 30.282721, 47.834564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804604, 30.156403, 47.716309>,  <34.020985, 30.080612, 47.645355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804604, 30.156403, 47.716309>,  <33.443966, 30.282721, 47.834564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804604, 30.156403, 47.716309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184331, -0.337807, 0.922989,
		-0.391343, -0.886657, -0.246354,
		0.901595, -0.315795, -0.295636,
		34.075081, 30.061665, 47.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581837, 29.638128, 48.208931>,  <33.443966, 30.282721, 47.834564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581837, 29.638128, 48.208931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936192, 29.776463, 48.085258>,  <34.148804, 29.859463, 48.011055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936192, 29.776463, 48.085258>,  <33.581837, 29.638128, 48.208931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936192, 29.776463, 48.085258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426161, -0.343418, 0.836929,
		0.183260, -0.873191, -0.451613,
		0.885891, 0.345836, -0.309185,
		34.201958, 29.880213, 47.992504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874500, 29.102554, 48.016205>,  <33.581837, 29.638128, 48.208931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874500, 29.102554, 48.016205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114273, 29.394295, 48.148098>,  <34.258137, 29.569340, 48.227234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114273, 29.394295, 48.148098>,  <33.874500, 29.102554, 48.016205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114273, 29.394295, 48.148098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134995, -0.498168, 0.856508,
		0.788959, -0.468907, -0.397077,
		0.599433, 0.729353, 0.329734,
		34.294102, 29.613100, 48.247017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517330, 28.875957, 48.179031>,  <33.874500, 29.102554, 48.016205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517330, 28.875957, 48.179031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466393, 29.160898, 48.455101>,  <34.435829, 29.331861, 48.620743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466393, 29.160898, 48.455101>,  <34.517330, 28.875957, 48.179031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466393, 29.160898, 48.455101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044004, -0.699212, 0.713559,
		0.990882, 0.060498, 0.120389,
		-0.127346, 0.712350, 0.690174,
		34.428188, 29.374603, 48.662151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660583, 28.560606, 48.928932>,  <34.517330, 28.875957, 48.179031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660583, 28.560606, 48.928932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495094, 28.911533, 49.026211>,  <34.395802, 29.122089, 49.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495094, 28.911533, 49.026211>,  <34.660583, 28.560606, 48.928932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495094, 28.911533, 49.026211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302364, -0.384381, 0.872254,
		0.858727, 0.287335, 0.424296,
		-0.413720, 0.877320, 0.243199,
		34.370979, 29.174728, 49.099171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746765, 28.677073, 49.679169>,  <34.660583, 28.560606, 48.928932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746765, 28.677073, 49.679169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434635, 28.904541, 49.575085>,  <34.247356, 29.041021, 49.512634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434635, 28.904541, 49.575085>,  <34.746765, 28.677073, 49.679169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434635, 28.904541, 49.575085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516704, -0.351873, 0.780514,
		0.352296, 0.743504, 0.568410,
		-0.780324, 0.568671, -0.260208,
		34.200539, 29.075142, 49.497021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457653, 28.980968, 50.380436>,  <34.746765, 28.677073, 49.679169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457653, 28.980968, 50.380436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161217, 29.066864, 50.125984>,  <33.983353, 29.118402, 49.973312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161217, 29.066864, 50.125984>,  <34.457653, 28.980968, 50.380436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161217, 29.066864, 50.125984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663168, -0.086198, 0.743491,
		0.104824, 0.972860, 0.206290,
		-0.741094, 0.214740, -0.636134,
		33.938889, 29.131287, 49.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008255, 29.379040, 50.731396>,  <34.457653, 28.980968, 50.380436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008255, 29.379040, 50.731396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785999, 29.238676, 50.429901>,  <33.652645, 29.154459, 50.249004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785999, 29.238676, 50.429901>,  <34.008255, 29.379040, 50.731396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785999, 29.238676, 50.429901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736543, -0.212810, 0.642041,
		-0.385700, 0.911908, -0.140212,
		-0.555644, -0.350908, -0.753740,
		33.619305, 29.133404, 50.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357479, 29.564972, 50.849800>,  <34.008255, 29.379040, 50.731396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357479, 29.564972, 50.849800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272114, 29.268126, 50.595646>,  <33.220894, 29.090017, 50.443153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272114, 29.268126, 50.595646>,  <33.357479, 29.564972, 50.849800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272114, 29.268126, 50.595646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591744, -0.419307, 0.688491,
		-0.777363, 0.522923, -0.349656,
		-0.213415, -0.742114, -0.635390,
		33.208088, 29.045492, 50.405029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618469, 29.460299, 50.912418>,  <33.357479, 29.564972, 50.849800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618469, 29.460299, 50.912418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784378, 29.118681, 50.786835>,  <32.883923, 28.913710, 50.711483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784378, 29.118681, 50.786835>,  <32.618469, 29.460299, 50.912418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784378, 29.118681, 50.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513577, -0.504557, 0.694018,
		-0.751132, -0.126619, -0.647895,
		0.414776, -0.854043, -0.313960,
		32.908810, 28.862469, 50.692646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105202, 28.903032, 50.688339>,  <32.618469, 29.460299, 50.912418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105202, 28.903032, 50.688339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416996, 28.669235, 50.778465>,  <32.604073, 28.528957, 50.832542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416996, 28.669235, 50.778465>,  <32.105202, 28.903032, 50.688339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416996, 28.669235, 50.778465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590744, -0.566251, 0.574788,
		-0.208371, -0.581146, -0.786670,
		0.779489, -0.584490, 0.225318,
		32.650845, 28.493889, 50.846062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823036, 28.216032, 50.765789>,  <32.105202, 28.903032, 50.688339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823036, 28.216032, 50.765789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178452, 28.214674, 50.949306>,  <32.391701, 28.213860, 51.059418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178452, 28.214674, 50.949306>,  <31.823036, 28.216032, 50.765789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178452, 28.214674, 50.949306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368292, -0.601615, 0.708816,
		0.273610, -0.798779, -0.535807,
		0.888537, -0.003394, 0.458792,
		32.445011, 28.213655, 51.086945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125488, 27.537962, 50.853832>,  <31.823036, 28.216032, 50.765789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125488, 27.537962, 50.853832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212841, 27.766905, 51.169991>,  <32.265251, 27.904270, 51.359684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212841, 27.766905, 51.169991>,  <32.125488, 27.537962, 50.853832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212841, 27.766905, 51.169991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279838, -0.739196, 0.612601,
		0.934880, -0.354962, -0.001259,
		0.218381, 0.572356, 0.790392,
		32.278355, 27.938612, 51.407108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541767, 27.114883, 51.343243>,  <32.125488, 27.537962, 50.853832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541767, 27.114883, 51.343243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329224, 27.408033, 51.513206>,  <32.201698, 27.583923, 51.615185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329224, 27.408033, 51.513206>,  <32.541767, 27.114883, 51.343243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329224, 27.408033, 51.513206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469889, -0.672323, 0.572002,
		0.704885, 0.104277, 0.701615,
		-0.531359, 0.732876, 0.424912,
		32.169815, 27.627895, 51.640678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614788, 27.179146, 52.052559>,  <32.541767, 27.114883, 51.343243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614788, 27.179146, 52.052559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235725, 27.262260, 51.955585>,  <32.008289, 27.312130, 51.897400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235725, 27.262260, 51.955585>,  <32.614788, 27.179146, 52.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235725, 27.262260, 51.955585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306582, -0.804278, 0.509063,
		-0.089211, 0.556743, 0.825881,
		-0.947654, 0.207786, -0.242437,
		31.951429, 27.324596, 51.882854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995655, 26.547108, 51.999790>,  <32.614788, 27.179146, 52.052559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995655, 26.547108, 51.999790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305771, 26.317083, 52.104271>,  <33.491840, 26.179070, 52.166958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305771, 26.317083, 52.104271>,  <32.995655, 26.547108, 51.999790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305771, 26.317083, 52.104271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442840, 0.200051, -0.873998,
		0.450349, 0.793274, 0.409758,
		0.775293, -0.575061, 0.261201,
		33.538361, 26.144566, 52.182632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650448, 26.922470, 51.810230>,  <32.995655, 26.547108, 51.999790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650448, 26.922470, 51.810230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698860, 26.525473, 51.803185>,  <33.727909, 26.287275, 51.798958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698860, 26.525473, 51.803185>,  <33.650448, 26.922470, 51.810230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698860, 26.525473, 51.803185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395416, 0.064478, -0.916236,
		0.910493, 0.103930, 0.400252,
		0.121032, -0.992492, -0.017611,
		33.735168, 26.227724, 51.797901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381531, 26.694691, 51.780357>,  <33.650448, 26.922470, 51.810230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381531, 26.694691, 51.780357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133724, 26.435814, 51.602665>,  <33.985039, 26.280489, 51.496052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133724, 26.435814, 51.602665>,  <34.381531, 26.694691, 51.780357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133724, 26.435814, 51.602665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435653, 0.187283, -0.880415,
		0.652993, -0.738965, 0.165925,
		-0.619520, -0.647191, -0.444227,
		33.947868, 26.241657, 51.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808182, 26.257576, 51.238098>,  <34.381531, 26.694691, 51.780357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808182, 26.257576, 51.238098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420048, 26.229979, 51.145405>,  <34.187168, 26.213421, 51.089790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420048, 26.229979, 51.145405>,  <34.808182, 26.257576, 51.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420048, 26.229979, 51.145405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216398, 0.179673, -0.959630,
		0.107842, -0.981304, -0.159412,
		-0.970331, -0.068992, -0.231728,
		34.128948, 26.209280, 51.075886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687492, 25.623535, 50.747284>,  <34.808182, 26.257576, 51.238098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687492, 25.623535, 50.747284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438015, 25.934853, 50.718266>,  <34.288330, 26.121643, 50.700855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438015, 25.934853, 50.718266>,  <34.687492, 25.623535, 50.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438015, 25.934853, 50.718266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050571, -0.052443, -0.997343,
		-0.780031, -0.625705, -0.006651,
		-0.623694, 0.778295, -0.072550,
		34.250908, 26.168341, 50.696499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477608, 25.598679, 50.015835>,  <34.687492, 25.623535, 50.747284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477608, 25.598679, 50.015835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325577, 25.930632, 50.179218>,  <34.234360, 26.129805, 50.277248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325577, 25.930632, 50.179218>,  <34.477608, 25.598679, 50.015835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325577, 25.930632, 50.179218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152853, 0.379169, -0.912615,
		-0.912239, -0.409295, -0.017262,
		-0.380074, 0.829885, 0.408454,
		34.211555, 26.179598, 50.301754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913036, 25.700695, 49.748001>,  <34.477608, 25.598679, 50.015835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913036, 25.700695, 49.748001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067688, 26.042742, 49.886158>,  <34.160477, 26.247969, 49.969051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067688, 26.042742, 49.886158>,  <33.913036, 25.700695, 49.748001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067688, 26.042742, 49.886158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127693, 0.321276, -0.938337,
		-0.913354, 0.406890, 0.015021,
		0.386626, 0.855115, 0.345396,
		34.183678, 26.299276, 49.989777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587261, 26.268894, 49.385311>,  <33.913036, 25.700695, 49.748001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587261, 26.268894, 49.385311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 26.400656, 49.529663>,  <34.145660, 26.479713, 49.616276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 26.400656, 49.529663>,  <33.587261, 26.268894, 49.385311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936260, 26.400656, 49.529663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219670, 0.395287, -0.891904,
		-0.436448, 0.857463, 0.272528,
		0.872501, 0.329403, 0.360881,
		34.198009, 26.499477, 49.637928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778145, 26.956812, 49.068619>,  <33.587261, 26.268894, 49.385311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778145, 26.956812, 49.068619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131832, 26.817028, 49.192581>,  <34.344044, 26.733158, 49.266960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131832, 26.817028, 49.192581>,  <33.778145, 26.956812, 49.068619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131832, 26.817028, 49.192581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431217, 0.355803, -0.829129,
		0.179481, 0.866766, 0.465299,
		0.884216, -0.349458, 0.309905,
		34.397099, 26.712191, 49.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183975, 27.462187, 48.848362>,  <33.778145, 26.956812, 49.068619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183975, 27.462187, 48.848362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442863, 27.164268, 48.913334>,  <34.598198, 26.985518, 48.952316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442863, 27.164268, 48.913334>,  <34.183975, 27.462187, 48.848362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442863, 27.164268, 48.913334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593110, 0.358149, -0.721075,
		0.478880, 0.563035, 0.673548,
		0.647220, -0.744796, 0.162432,
		34.637028, 26.940830, 48.962063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747925, 27.824381, 48.740364>,  <34.183975, 27.462187, 48.848362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747925, 27.824381, 48.740364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854137, 27.439686, 48.713360>,  <34.917866, 27.208870, 48.697155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854137, 27.439686, 48.713360>,  <34.747925, 27.824381, 48.740364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854137, 27.439686, 48.713360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472290, 0.190807, -0.860543,
		0.840498, 0.196611, 0.504883,
		0.265528, -0.961736, -0.067515,
		34.933796, 27.151165, 48.693104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468201, 27.828363, 48.430279>,  <34.747925, 27.824381, 48.740364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468201, 27.828363, 48.430279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299877, 27.468651, 48.382591>,  <35.198883, 27.252823, 48.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299877, 27.468651, 48.382591>,  <35.468201, 27.828363, 48.430279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299877, 27.468651, 48.382591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402149, -0.067130, -0.913110,
		0.813141, -0.432185, 0.389894,
		-0.420806, -0.899283, -0.119217,
		35.173634, 27.198866, 48.346825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041317, 27.274773, 48.360771>,  <35.468201, 27.828363, 48.430279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041317, 27.274773, 48.360771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692757, 27.195129, 48.181435>,  <35.483620, 27.147345, 48.073833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692757, 27.195129, 48.181435>,  <36.041317, 27.274773, 48.360771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692757, 27.195129, 48.181435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481220, -0.169373, -0.860081,
		0.095311, -0.965230, 0.243406,
		-0.871403, -0.199107, -0.448345,
		35.431335, 27.135397, 48.046932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320995, 26.795855, 47.906513>,  <36.041317, 27.274773, 48.360771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320995, 26.795855, 47.906513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946445, 26.885735, 47.798656>,  <35.721714, 26.939663, 47.733940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946445, 26.885735, 47.798656>,  <36.320995, 26.795855, 47.906513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946445, 26.885735, 47.798656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283578, 0.031597, -0.958428,
		-0.206839, -0.973916, -0.093307,
		-0.936377, 0.224700, -0.269646,
		35.665531, 26.953144, 47.717762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279881, 26.560038, 47.279205>,  <36.320995, 26.795855, 47.906513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279881, 26.560038, 47.279205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946693, 26.781361, 47.280464>,  <35.746780, 26.914154, 47.281219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946693, 26.781361, 47.280464>,  <36.279881, 26.560038, 47.279205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946693, 26.781361, 47.280464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151451, 0.233465, -0.960498,
		-0.532187, -0.799590, -0.278269,
		-0.832970, 0.553309, 0.003148,
		35.696804, 26.947353, 47.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935291, 26.332558, 46.673973>,  <36.279881, 26.560038, 47.279205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935291, 26.332558, 46.673973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815922, 26.700375, 46.776257>,  <35.744301, 26.921064, 46.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815922, 26.700375, 46.776257>,  <35.935291, 26.332558, 46.673973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815922, 26.700375, 46.776257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085911, 0.292709, -0.952334,
		-0.950558, -0.262234, -0.166351,
		-0.298427, 0.919541, 0.255708,
		35.726395, 26.976236, 46.852970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571922, 26.564819, 46.128460>,  <35.935291, 26.332558, 46.673973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571922, 26.564819, 46.128460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621429, 26.911619, 46.321537>,  <35.651134, 27.119699, 46.437382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621429, 26.911619, 46.321537>,  <35.571922, 26.564819, 46.128460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621429, 26.911619, 46.321537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044233, 0.490769, -0.870166,
		-0.991324, 0.086350, 0.099093,
		0.123771, 0.867000, 0.482692,
		35.658562, 27.171719, 46.466343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070992, 27.037704, 45.915489>,  <35.571922, 26.564819, 46.128460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070992, 27.037704, 45.915489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367462, 27.271330, 46.047871>,  <35.545345, 27.411505, 46.127300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367462, 27.271330, 46.047871>,  <35.070992, 27.037704, 45.915489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367462, 27.271330, 46.047871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069251, 0.556890, -0.827694,
		-0.667731, 0.590547, 0.453200,
		0.741175, 0.584061, 0.330957,
		35.589813, 27.446548, 46.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874977, 27.682310, 45.685997>,  <35.070992, 27.037704, 45.915489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874977, 27.682310, 45.685997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263397, 27.730934, 45.768257>,  <35.496449, 27.760109, 45.817612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263397, 27.730934, 45.768257>,  <34.874977, 27.682310, 45.685997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263397, 27.730934, 45.768257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050354, 0.737362, -0.673618,
		-0.233522, 0.664470, 0.709892,
		0.971047, 0.121559, 0.205649,
		35.554710, 27.767403, 45.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009239, 28.388189, 45.719543>,  <34.874977, 27.682310, 45.685997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009239, 28.388189, 45.719543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336422, 28.192619, 45.598282>,  <35.532730, 28.075277, 45.525524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336422, 28.192619, 45.598282>,  <35.009239, 28.388189, 45.719543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336422, 28.192619, 45.598282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123849, 0.664267, -0.737164,
		0.561795, 0.565421, 0.603893,
		0.817954, -0.488926, -0.303155,
		35.581806, 28.045942, 45.507336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418266, 28.869362, 45.425285>,  <35.009239, 28.388189, 45.719543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418266, 28.869362, 45.425285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553253, 28.534332, 45.253433>,  <35.634247, 28.333315, 45.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553253, 28.534332, 45.253433>,  <35.418266, 28.869362, 45.425285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553253, 28.534332, 45.253433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059017, 0.474336, -0.878364,
		0.939484, 0.271066, 0.209505,
		0.337470, -0.837573, -0.429634,
		35.654495, 28.283060, 45.124542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816387, 29.063311, 44.947239>,  <35.418266, 28.869362, 45.425285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816387, 29.063311, 44.947239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801842, 28.683475, 44.822685>,  <35.793114, 28.455574, 44.747952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801842, 28.683475, 44.822685>,  <35.816387, 29.063311, 44.947239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801842, 28.683475, 44.822685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003559, 0.311467, -0.950250,
		0.999332, -0.035666, -0.007947,
		-0.036367, -0.949587, -0.311386,
		35.790932, 28.398600, 44.729271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367062, 28.975525, 44.531998>,  <35.816387, 29.063311, 44.947239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367062, 28.975525, 44.531998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069935, 28.726480, 44.433548>,  <35.891659, 28.577055, 44.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069935, 28.726480, 44.433548>,  <36.367062, 28.975525, 44.531998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069935, 28.726480, 44.433548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052207, 0.312635, -0.948438,
		0.667452, -0.717368, -0.199727,
		-0.742820, -0.622610, -0.246121,
		35.847088, 28.539698, 44.359711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574104, 28.856211, 43.850426>,  <36.367062, 28.975525, 44.531998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574104, 28.856211, 43.850426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209229, 28.694954, 43.879780>,  <35.990303, 28.598200, 43.897392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209229, 28.694954, 43.879780>,  <36.574104, 28.856211, 43.850426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209229, 28.694954, 43.879780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204696, 0.293160, -0.933894,
		0.354981, -0.866909, -0.349939,
		-0.912189, -0.403146, 0.073386,
		35.935570, 28.574011, 43.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355656, 28.490381, 43.181572>,  <36.574104, 28.856211, 43.850426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355656, 28.490381, 43.181572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010128, 28.560541, 43.370483>,  <35.802811, 28.602636, 43.483829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010128, 28.560541, 43.370483>,  <36.355656, 28.490381, 43.181572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010128, 28.560541, 43.370483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388362, 0.365319, -0.846001,
		-0.320921, -0.914209, -0.247452,
		-0.863820, 0.175398, 0.472282,
		35.750980, 28.613161, 43.512169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866409, 28.243792, 42.750633>,  <36.355656, 28.490381, 43.181572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866409, 28.243792, 42.750633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668663, 28.504728, 42.980434>,  <35.550014, 28.661289, 43.118317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668663, 28.504728, 42.980434>,  <35.866409, 28.243792, 42.750633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668663, 28.504728, 42.980434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446543, 0.376458, -0.811713,
		-0.745791, -0.657823, 0.105191,
		-0.494363, 0.652341, 0.574506,
		35.520355, 28.700430, 43.152786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083736, 28.238802, 42.560070>,  <35.866409, 28.243792, 42.750633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083736, 28.238802, 42.560070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162895, 28.598921, 42.715145>,  <35.210388, 28.814991, 42.808189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162895, 28.598921, 42.715145>,  <35.083736, 28.238802, 42.560070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162895, 28.598921, 42.715145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449761, 0.434820, -0.780158,
		-0.870949, -0.019979, 0.490967,
		0.197895, 0.900296, 0.387692,
		35.222263, 28.869009, 42.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509995, 28.635620, 42.402817>,  <35.083736, 28.238802, 42.560070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509995, 28.635620, 42.402817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760162, 28.931227, 42.502979>,  <34.910263, 29.108591, 42.563076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760162, 28.931227, 42.502979>,  <34.509995, 28.635620, 42.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760162, 28.931227, 42.502979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219583, 0.474644, -0.852347,
		-0.748754, 0.478089, 0.459127,
		0.625420, 0.739015, 0.250411,
		34.947788, 29.152931, 42.578102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143406, 29.260004, 42.210922>,  <34.509995, 28.635620, 42.402817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143406, 29.260004, 42.210922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515083, 29.400866, 42.255806>,  <34.738091, 29.485382, 42.282738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515083, 29.400866, 42.255806>,  <34.143406, 29.260004, 42.210922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515083, 29.400866, 42.255806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139828, 0.615977, -0.775255,
		-0.342129, 0.704670, 0.621601,
		0.929191, 0.352154, 0.112211,
		34.793842, 29.506512, 42.289471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099442, 29.994377, 42.251324>,  <34.143406, 29.260004, 42.210922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099442, 29.994377, 42.251324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471985, 29.913671, 42.130089>,  <34.695511, 29.865248, 42.057346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471985, 29.913671, 42.130089>,  <34.099442, 29.994377, 42.251324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471985, 29.913671, 42.130089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181606, 0.464067, -0.866984,
		0.315579, 0.862516, 0.395571,
		0.931359, -0.201764, -0.303088,
		34.751392, 29.853142, 42.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274738, 30.508720, 41.831871>,  <34.099442, 29.994377, 42.251324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274738, 30.508720, 41.831871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549568, 30.235176, 41.733673>,  <34.714466, 30.071049, 41.674755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549568, 30.235176, 41.733673>,  <34.274738, 30.508720, 41.831871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549568, 30.235176, 41.733673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012916, 0.326329, -0.945168,
		0.726476, 0.652567, 0.215378,
		0.687070, -0.683861, -0.245499,
		34.755688, 30.030018, 41.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791023, 30.835361, 41.437759>,  <34.274738, 30.508720, 41.831871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791023, 30.835361, 41.437759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784592, 30.445045, 41.350517>,  <34.780731, 30.210855, 41.298172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784592, 30.445045, 41.350517>,  <34.791023, 30.835361, 41.437759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784592, 30.445045, 41.350517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039697, 0.217342, -0.975288,
		0.999082, -0.024344, 0.035240,
		-0.016083, -0.975792, -0.218108,
		34.779766, 30.152308, 41.285084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158951, 30.807478, 40.886456>,  <34.791023, 30.835361, 41.437759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158951, 30.807478, 40.886456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954018, 30.464066, 40.894855>,  <34.831059, 30.258018, 40.899895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954018, 30.464066, 40.894855>,  <35.158951, 30.807478, 40.886456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954018, 30.464066, 40.894855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143450, 0.061445, -0.987748,
		0.846722, -0.509068, -0.154636,
		-0.512333, -0.858530, 0.020999,
		34.800316, 30.206507, 40.901154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348221, 30.575912, 40.138111>,  <35.158951, 30.807478, 40.886456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348221, 30.575912, 40.138111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024059, 30.395687, 40.287903>,  <34.829563, 30.287552, 40.377777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024059, 30.395687, 40.287903>,  <35.348221, 30.575912, 40.138111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024059, 30.395687, 40.287903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349645, -0.140921, -0.926223,
		0.470094, -0.881552, -0.043334,
		-0.810407, -0.450564, 0.374477,
		34.780937, 30.260517, 40.400246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234081, 30.048952, 39.694965>,  <35.348221, 30.575912, 40.138111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234081, 30.048952, 39.694965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873066, 30.067291, 39.866230>,  <34.656456, 30.078295, 39.968990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873066, 30.067291, 39.866230>,  <35.234081, 30.048952, 39.694965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873066, 30.067291, 39.866230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429310, -0.173085, -0.886417,
		0.033470, -0.983839, 0.175898,
		-0.902537, 0.045847, 0.428166,
		34.602306, 30.081045, 39.994678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823250, 29.472197, 39.489223>,  <35.234081, 30.048952, 39.694965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823250, 29.472197, 39.489223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564732, 29.758785, 39.594276>,  <34.409622, 29.930738, 39.657307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564732, 29.758785, 39.594276>,  <34.823250, 29.472197, 39.489223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564732, 29.758785, 39.594276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421694, -0.048490, -0.905441,
		-0.635986, -0.695931, 0.333470,
		-0.646294, 0.716470, 0.262631,
		34.370842, 29.973726, 39.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172108, 29.180901, 39.213501>,  <34.823250, 29.472197, 39.489223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172108, 29.180901, 39.213501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124641, 29.573101, 39.276157>,  <34.096161, 29.808422, 39.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124641, 29.573101, 39.276157>,  <34.172108, 29.180901, 39.213501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124641, 29.573101, 39.276157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376731, 0.101504, -0.920744,
		-0.918691, -0.168272, 0.357341,
		-0.118664, 0.980501, 0.156644,
		34.089043, 29.867250, 39.323151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389801, 29.388948, 39.032124>,  <34.172108, 29.180901, 39.213501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389801, 29.388948, 39.032124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611034, 29.720278, 38.996387>,  <33.743774, 29.919075, 38.974945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611034, 29.720278, 38.996387>,  <33.389801, 29.388948, 39.032124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611034, 29.720278, 38.996387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401558, 0.171090, -0.899711,
		-0.729968, 0.533486, 0.427247,
		0.553081, 0.828324, -0.089336,
		33.776958, 29.968775, 38.969585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917320, 29.962561, 38.836632>,  <33.389801, 29.388948, 39.032124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917320, 29.962561, 38.836632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290939, 30.051313, 38.724689>,  <33.515110, 30.104565, 38.657524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290939, 30.051313, 38.724689>,  <32.917320, 29.962561, 38.836632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290939, 30.051313, 38.724689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344148, 0.349739, -0.871346,
		-0.095459, 0.910193, 0.403034,
		0.934050, 0.221881, -0.279856,
		33.571156, 30.117878, 38.640732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784290, 30.628899, 38.639057>,  <32.917320, 29.962561, 38.836632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784290, 30.628899, 38.639057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136841, 30.515484, 38.487907>,  <33.348370, 30.447435, 38.397217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136841, 30.515484, 38.487907>,  <32.784290, 30.628899, 38.639057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136841, 30.515484, 38.487907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229431, 0.442299, -0.867025,
		0.412967, 0.850869, 0.324778,
		0.881374, -0.283538, -0.377871,
		33.401253, 30.430422, 38.374546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071228, 31.236942, 38.318157>,  <32.784290, 30.628899, 38.639057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071228, 31.236942, 38.318157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249699, 30.923056, 38.146046>,  <33.356781, 30.734724, 38.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249699, 30.923056, 38.146046>,  <33.071228, 31.236942, 38.318157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249699, 30.923056, 38.146046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141613, 0.412825, -0.899734,
		0.883668, 0.462377, 0.073068,
		0.446181, -0.784718, -0.430279,
		33.383553, 30.687639, 38.016964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295090, 31.504179, 37.673302>,  <33.071228, 31.236942, 38.318157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295090, 31.504179, 37.673302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322010, 31.105537, 37.654339>,  <33.338161, 30.866352, 37.642960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322010, 31.105537, 37.654339>,  <33.295090, 31.504179, 37.673302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322010, 31.105537, 37.654339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232011, 0.030582, -0.972232,
		0.970383, 0.076428, -0.229166,
		0.067297, -0.996606, -0.047408,
		33.342197, 30.806555, 37.640118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818516, 31.367073, 37.143471>,  <33.295090, 31.504179, 37.673302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818516, 31.367073, 37.143471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558624, 31.065065, 37.178791>,  <33.402691, 30.883860, 37.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558624, 31.065065, 37.178791>,  <33.818516, 31.367073, 37.143471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558624, 31.065065, 37.178791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230340, 0.084850, -0.969404,
		0.724429, -0.650186, -0.229041,
		-0.649728, -0.755022, 0.088296,
		33.363705, 30.838558, 37.205280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930630, 30.885071, 36.520153>,  <33.818516, 31.367073, 37.143471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930630, 30.885071, 36.520153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556278, 30.828043, 36.649025>,  <33.331665, 30.793827, 36.726349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556278, 30.828043, 36.649025>,  <33.930630, 30.885071, 36.520153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556278, 30.828043, 36.649025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323061, -0.017572, -0.946215,
		0.140565, -0.989628, -0.029615,
		-0.935881, -0.142572, 0.322180,
		33.275513, 30.785273, 36.745678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557484, 30.438581, 36.495937>,  <33.930630, 30.885071, 36.520153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557484, 30.438581, 36.495937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348804, 30.643934, 36.768486>,  <34.223598, 30.767145, 36.932014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348804, 30.643934, 36.768486>,  <34.557484, 30.438581, 36.495937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348804, 30.643934, 36.768486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533285, -0.819648, 0.209249,
		0.665911, -0.254202, 0.701387,
		-0.521699, 0.513380, 0.681374,
		34.192295, 30.797949, 36.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131744, 29.958668, 36.583805>,  <34.557484, 30.438581, 36.495937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131744, 29.958668, 36.583805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439674, 30.183226, 36.462341>,  <35.624432, 30.317961, 36.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439674, 30.183226, 36.462341>,  <35.131744, 29.958668, 36.583805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439674, 30.183226, 36.462341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603955, -0.486839, 0.631052,
		0.206434, -0.669196, -0.713836,
		0.769820, 0.561396, -0.303664,
		35.670620, 30.351645, 36.371243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634773, 29.497591, 36.324123>,  <35.131744, 29.958668, 36.583805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634773, 29.497591, 36.324123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779129, 29.844315, 36.461761>,  <35.865742, 30.052349, 36.544342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779129, 29.844315, 36.461761>,  <35.634773, 29.497591, 36.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779129, 29.844315, 36.461761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671593, -0.497551, 0.549005,
		0.647086, 0.032958, -0.761705,
		0.360893, 0.866808, 0.344093,
		35.887398, 30.104357, 36.564991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393791, 29.523849, 36.213268>,  <35.634773, 29.497591, 36.324123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393791, 29.523849, 36.213268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337685, 29.811205, 36.485809>,  <36.304020, 29.983618, 36.649334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337685, 29.811205, 36.485809>,  <36.393791, 29.523849, 36.213268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337685, 29.811205, 36.485809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899467, -0.195199, 0.390970,
		0.413868, 0.667694, -0.618788,
		-0.140262, 0.718389, 0.681355,
		36.295605, 30.026722, 36.690216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060101, 29.816521, 36.363106>,  <36.393791, 29.523849, 36.213268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060101, 29.816521, 36.363106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823231, 29.893209, 36.676174>,  <36.681110, 29.939222, 36.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823231, 29.893209, 36.676174>,  <37.060101, 29.816521, 36.363106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823231, 29.893209, 36.676174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637816, -0.482073, 0.600663,
		0.492464, 0.854897, 0.163189,
		-0.592174, 0.191720, 0.782671,
		36.645580, 29.950726, 36.910976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585220, 29.979391, 36.835533>,  <37.060101, 29.816521, 36.363106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585220, 29.979391, 36.835533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258324, 29.939760, 37.062618>,  <37.062183, 29.915981, 37.198868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258324, 29.939760, 37.062618>,  <37.585220, 29.979391, 36.835533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258324, 29.939760, 37.062618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575143, -0.202383, 0.792623,
		0.036364, 0.974282, 0.222380,
		-0.817244, -0.099077, 0.567711,
		37.013149, 29.910038, 37.232933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832336, 30.296186, 37.505581>,  <37.585220, 29.979391, 36.835533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832336, 30.296186, 37.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503307, 30.080441, 37.577648>,  <37.305889, 29.950993, 37.620888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503307, 30.080441, 37.577648>,  <37.832336, 30.296186, 37.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503307, 30.080441, 37.577648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363199, -0.254511, 0.896276,
		-0.437565, 0.802689, 0.405251,
		-0.822571, -0.539365, 0.180170,
		37.256535, 29.918631, 37.631699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608383, 30.510633, 38.099033>,  <37.832336, 30.296186, 37.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608383, 30.510633, 38.099033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463810, 30.140249, 38.055275>,  <37.377068, 29.918018, 38.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463810, 30.140249, 38.055275>,  <37.608383, 30.510633, 38.099033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463810, 30.140249, 38.055275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414350, -0.264613, 0.870801,
		-0.835274, 0.269406, 0.479310,
		-0.361431, -0.925959, -0.109396,
		37.355381, 29.862461, 38.022457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335140, 30.474468, 38.711983>,  <37.608383, 30.510633, 38.099033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335140, 30.474468, 38.711983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366879, 30.106817, 38.557629>,  <37.385921, 29.886227, 38.465015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366879, 30.106817, 38.557629>,  <37.335140, 30.474468, 38.711983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366879, 30.106817, 38.557629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253987, -0.355689, 0.899431,
		-0.963948, -0.169376, 0.205224,
		0.079346, -0.919128, -0.385885,
		37.390682, 29.831079, 38.441864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867325, 30.042839, 39.176620>,  <37.335140, 30.474468, 38.711983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867325, 30.042839, 39.176620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162903, 29.844458, 38.994198>,  <37.340248, 29.725430, 38.884743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162903, 29.844458, 38.994198>,  <36.867325, 30.042839, 39.176620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162903, 29.844458, 38.994198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367575, -0.270530, 0.889776,
		-0.564665, -0.825132, -0.017606,
		0.738946, -0.495954, -0.456057,
		37.384586, 29.695671, 38.857380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719837, 29.401703, 39.420200>,  <36.867325, 30.042839, 39.176620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719837, 29.401703, 39.420200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103291, 29.410246, 39.306664>,  <37.333363, 29.415371, 39.238541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103291, 29.410246, 39.306664>,  <36.719837, 29.401703, 39.420200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103291, 29.410246, 39.306664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269472, -0.389277, 0.880823,
		-0.091679, -0.920873, -0.378929,
		0.958634, 0.021358, -0.283838,
		37.390881, 29.416653, 39.221512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027290, 28.800474, 39.615772>,  <36.719837, 29.401703, 39.420200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027290, 28.800474, 39.615772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371571, 28.995798, 39.558163>,  <37.578140, 29.112991, 39.523598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371571, 28.995798, 39.558163>,  <37.027290, 28.800474, 39.615772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371571, 28.995798, 39.558163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277677, -0.213163, 0.936727,
		0.426712, -0.846237, -0.319062,
		0.860705, 0.488308, -0.144021,
		37.629784, 29.142290, 39.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539059, 28.441551, 39.928440>,  <37.027290, 28.800474, 39.615772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539059, 28.441551, 39.928440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715996, 28.799360, 39.902618>,  <37.822159, 29.014046, 39.887123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715996, 28.799360, 39.902618>,  <37.539059, 28.441551, 39.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715996, 28.799360, 39.902618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470505, -0.170179, 0.865831,
		0.763518, -0.413367, -0.496154,
		0.442341, 0.894520, -0.064557,
		37.848698, 29.067717, 39.883251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239067, 28.348261, 40.145603>,  <37.539059, 28.441551, 39.928440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239067, 28.348261, 40.145603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186802, 28.742065, 40.192371>,  <38.155445, 28.978348, 40.220432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186802, 28.742065, 40.192371>,  <38.239067, 28.348261, 40.145603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186802, 28.742065, 40.192371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441741, -0.047764, 0.895870,
		0.887577, 0.168701, -0.428657,
		-0.130660, 0.984509, 0.116916,
		38.147602, 29.037418, 40.227448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864605, 28.485338, 40.459675>,  <38.239067, 28.348261, 40.145603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864605, 28.485338, 40.459675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623219, 28.798197, 40.521740>,  <38.478386, 28.985912, 40.558979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623219, 28.798197, 40.521740>,  <38.864605, 28.485338, 40.459675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623219, 28.798197, 40.521740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318074, 0.057679, 0.946310,
		0.731204, 0.620418, -0.283588,
		-0.603465, 0.782147, 0.155163,
		38.442181, 29.032841, 40.568291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209213, 28.872805, 40.861900>,  <38.864605, 28.485338, 40.459675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209213, 28.872805, 40.861900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834538, 29.008688, 40.895859>,  <38.609730, 29.090218, 40.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834538, 29.008688, 40.895859>,  <39.209213, 28.872805, 40.861900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834538, 29.008688, 40.895859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185259, 0.275055, 0.943411,
		0.297132, 0.899413, -0.320576,
		-0.936692, 0.339707, 0.084897,
		38.553532, 29.110600, 40.921329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161324, 29.525333, 41.308838>,  <39.209213, 28.872805, 40.861900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161324, 29.525333, 41.308838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815201, 29.326904, 41.337532>,  <38.607525, 29.207846, 41.354748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815201, 29.326904, 41.337532>,  <39.161324, 29.525333, 41.308838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815201, 29.326904, 41.337532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039083, 0.075912, 0.996348,
		-0.499709, 0.864955, -0.046299,
		-0.865311, -0.496074, 0.071739,
		38.555607, 29.178082, 41.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985130, 29.734245, 41.953362>,  <39.161324, 29.525333, 41.308838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985130, 29.734245, 41.953362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731461, 29.429295, 41.901814>,  <38.579258, 29.246325, 41.870884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731461, 29.429295, 41.901814>,  <38.985130, 29.734245, 41.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731461, 29.429295, 41.901814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080922, -0.100313, 0.991660,
		-0.768944, 0.639313, 0.001923,
		-0.634174, -0.762375, -0.128869,
		38.541210, 29.200583, 41.863152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466339, 29.855154, 42.518620>,  <38.985130, 29.734245, 41.953362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466339, 29.855154, 42.518620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438530, 29.481699, 42.378056>,  <38.421844, 29.257626, 42.293716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438530, 29.481699, 42.378056>,  <38.466339, 29.855154, 42.518620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438530, 29.481699, 42.378056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288199, -0.318447, 0.903068,
		-0.955044, 0.164056, -0.246935,
		-0.069518, -0.933636, -0.351412,
		38.417675, 29.201609, 42.272633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829548, 29.566221, 42.750969>,  <38.466339, 29.855154, 42.518620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829548, 29.566221, 42.750969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089611, 29.269144, 42.686836>,  <38.245647, 29.090899, 42.648357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089611, 29.269144, 42.686836>,  <37.829548, 29.566221, 42.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089611, 29.269144, 42.686836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178689, -0.354562, 0.917800,
		-0.738492, -0.568061, -0.363231,
		0.650154, -0.742693, -0.160335,
		38.284657, 29.046337, 42.638737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493217, 28.966406, 42.841232>,  <37.829548, 29.566221, 42.750969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493217, 28.966406, 42.841232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880028, 28.890285, 42.908943>,  <38.112114, 28.844614, 42.949570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880028, 28.890285, 42.908943>,  <37.493217, 28.966406, 42.841232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880028, 28.890285, 42.908943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224633, -0.324015, 0.918996,
		-0.120037, -0.926715, -0.356077,
		0.967022, -0.190300, 0.169277,
		38.170135, 28.833195, 42.959724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405441, 28.380600, 43.263039>,  <37.493217, 28.966406, 42.841232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405441, 28.380600, 43.263039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787563, 28.490488, 43.306709>,  <38.016838, 28.556421, 43.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787563, 28.490488, 43.306709>,  <37.405441, 28.380600, 43.263039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787563, 28.490488, 43.306709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081531, -0.110136, 0.990567,
		0.284154, -0.955195, -0.082815,
		0.955306, 0.274722, 0.109174,
		38.074154, 28.572905, 43.339462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876408, 27.786688, 43.389870>,  <37.405441, 28.380600, 43.263039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876408, 27.786688, 43.389870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969875, 28.151497, 43.524696>,  <38.025955, 28.370382, 43.605591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969875, 28.151497, 43.524696>,  <37.876408, 27.786688, 43.389870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969875, 28.151497, 43.524696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210185, -0.291084, 0.933323,
		0.949327, -0.288935, 0.123676,
		0.233669, 0.912023, 0.337064,
		38.039978, 28.425104, 43.625816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241718, 27.648739, 43.961388>,  <37.876408, 27.786688, 43.389870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241718, 27.648739, 43.961388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148537, 28.031935, 44.028313>,  <38.092628, 28.261852, 44.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148537, 28.031935, 44.028313>,  <38.241718, 27.648739, 43.961388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148537, 28.031935, 44.028313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003866, -0.171135, 0.985240,
		0.972481, 0.230158, 0.036163,
		-0.232950, 0.957987, 0.167315,
		38.078651, 28.319330, 44.078506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698845, 27.839834, 44.489849>,  <38.241718, 27.648739, 43.961388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698845, 27.839834, 44.489849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412090, 28.118660, 44.484642>,  <38.240036, 28.285955, 44.481518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412090, 28.118660, 44.484642>,  <38.698845, 27.839834, 44.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412090, 28.118660, 44.484642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029999, 0.049494, 0.998324,
		0.696541, 0.715297, -0.056393,
		-0.716890, 0.697065, -0.013016,
		38.197025, 28.327780, 44.480736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938995, 28.442003, 44.831966>,  <38.698845, 27.839834, 44.489849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938995, 28.442003, 44.831966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542984, 28.491402, 44.859100>,  <38.305378, 28.521040, 44.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542984, 28.491402, 44.859100>,  <38.938995, 28.442003, 44.831966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542984, 28.491402, 44.859100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071442, 0.025050, 0.997130,
		0.121441, 0.992029, -0.033622,
		-0.990024, 0.123494, 0.067830,
		38.245975, 28.528450, 44.879448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897163, 28.933462, 45.349533>,  <38.938995, 28.442003, 44.831966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897163, 28.933462, 45.349533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533653, 28.768024, 45.327370>,  <38.315548, 28.668762, 45.314072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533653, 28.768024, 45.327370>,  <38.897163, 28.933462, 45.349533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533653, 28.768024, 45.327370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078608, 0.039280, 0.996131,
		-0.409820, 0.909613, -0.068208,
		-0.908773, -0.413596, -0.055405,
		38.261021, 28.643946, 45.310749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416470, 29.345173, 45.738525>,  <38.897163, 28.933462, 45.349533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416470, 29.345173, 45.738525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244560, 28.983999, 45.737556>,  <38.141415, 28.767296, 45.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244560, 28.983999, 45.737556>,  <38.416470, 29.345173, 45.738525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244560, 28.983999, 45.737556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096190, 0.043117, 0.994429,
		-0.897799, 0.427610, -0.105383,
		-0.429772, -0.902934, -0.002421,
		38.115627, 28.713120, 45.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744930, 29.429031, 46.114140>,  <38.416470, 29.345173, 45.738525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744930, 29.429031, 46.114140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835915, 29.039522, 46.112011>,  <37.890503, 28.805817, 46.110733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835915, 29.039522, 46.112011>,  <37.744930, 29.429031, 46.114140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835915, 29.039522, 46.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173450, -0.045887, 0.983773,
		-0.958216, -0.222846, -0.179338,
		0.227459, -0.973773, -0.005317,
		37.904152, 28.747391, 46.110416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214558, 29.134850, 46.530701>,  <37.744930, 29.429031, 46.114140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214558, 29.134850, 46.530701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534916, 28.895342, 46.528141>,  <37.727131, 28.751637, 46.526604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534916, 28.895342, 46.528141>,  <37.214558, 29.134850, 46.530701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534916, 28.895342, 46.528141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081368, -0.119409, 0.989505,
		-0.593251, -0.791969, -0.144355,
		0.800895, -0.598770, -0.006398,
		37.775185, 28.715712, 46.526222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115780, 28.688614, 47.016392>,  <37.214558, 29.134850, 46.530701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115780, 28.688614, 47.016392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500351, 28.606714, 46.942917>,  <37.731094, 28.557575, 46.898834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500351, 28.606714, 46.942917>,  <37.115780, 28.688614, 47.016392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500351, 28.606714, 46.942917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167427, -0.094227, 0.981371,
		-0.218245, -0.974268, -0.056312,
		0.961424, -0.204751, -0.183683,
		37.788780, 28.545290, 46.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323467, 28.104378, 47.348652>,  <37.115780, 28.688614, 47.016392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323467, 28.104378, 47.348652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669121, 28.295641, 47.285870>,  <37.876514, 28.410398, 47.248199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669121, 28.295641, 47.285870>,  <37.323467, 28.104378, 47.348652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669121, 28.295641, 47.285870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246321, -0.129885, 0.960446,
		0.438858, -0.868617, -0.230018,
		0.864135, 0.478157, -0.156958,
		37.928360, 28.439089, 47.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807686, 27.642994, 47.727116>,  <37.323467, 28.104378, 47.348652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807686, 27.642994, 47.727116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989655, 27.994558, 47.669750>,  <38.098835, 28.205496, 47.635330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989655, 27.994558, 47.669750>,  <37.807686, 27.642994, 47.727116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989655, 27.994558, 47.669750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436245, -0.079545, 0.896305,
		0.776363, -0.470310, -0.419606,
		0.454918, 0.878909, -0.143415,
		38.126129, 28.258230, 47.626724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456112, 27.543640, 48.016369>,  <37.807686, 27.642994, 47.727116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456112, 27.543640, 48.016369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408764, 27.940826, 48.017231>,  <38.380356, 28.179138, 48.017750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408764, 27.940826, 48.017231>,  <38.456112, 27.543640, 48.016369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408764, 27.940826, 48.017231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220986, 0.024224, 0.974976,
		0.968067, 0.115889, -0.222299,
		-0.118375, 0.992967, 0.002159,
		38.373253, 28.238716, 48.017879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113613, 27.877335, 48.195961>,  <38.456112, 27.543640, 48.016369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113613, 27.877335, 48.195961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826511, 28.139231, 48.290741>,  <38.654251, 28.296368, 48.347610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826511, 28.139231, 48.290741>,  <39.113613, 27.877335, 48.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826511, 28.139231, 48.290741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421396, 0.137549, 0.896385,
		0.554307, 0.743232, -0.374631,
		-0.717753, 0.654741, 0.236951,
		38.611187, 28.335653, 48.361828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532825, 28.391815, 48.446823>,  <39.113613, 27.877335, 48.195961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532825, 28.391815, 48.446823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153755, 28.419235, 48.571537>,  <38.926311, 28.435688, 48.646366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153755, 28.419235, 48.571537>,  <39.532825, 28.391815, 48.446823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153755, 28.419235, 48.571537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317640, 0.105079, 0.942371,
		0.031839, 0.992098, -0.121355,
		-0.947677, 0.068551, 0.311784,
		38.869453, 28.439800, 48.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461910, 29.052435, 48.836655>,  <39.532825, 28.391815, 48.446823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461910, 29.052435, 48.836655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184078, 28.791460, 48.957905>,  <39.017380, 28.634874, 49.030655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184078, 28.791460, 48.957905>,  <39.461910, 29.052435, 48.836655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184078, 28.791460, 48.957905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227306, 0.200741, 0.952909,
		-0.682564, 0.730771, 0.008873,
		-0.694577, -0.652439, 0.303127,
		38.975704, 28.595728, 49.048843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719910, 29.306515, 49.186558>,  <39.461910, 29.052435, 48.836655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719910, 29.306515, 49.186558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904293, 28.979643, 49.324970>,  <39.014923, 28.783520, 49.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904293, 28.979643, 49.324970>,  <38.719910, 29.306515, 49.186558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904293, 28.979643, 49.324970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104063, 0.337459, 0.935571,
		-0.881298, -0.467270, 0.070517,
		0.460960, -0.817178, 0.346027,
		39.042580, 28.734489, 49.428780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812172, 29.392750, 49.841526>,  <38.719910, 29.306515, 49.186558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812172, 29.392750, 49.841526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465565, 29.256525, 49.695557>,  <38.257603, 29.174789, 49.607975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465565, 29.256525, 49.695557>,  <38.812172, 29.392750, 49.841526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465565, 29.256525, 49.695557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439424, 0.867248, 0.234067,
		0.236765, 0.363178, -0.901135,
		-0.866515, -0.340561, -0.364924,
		38.205608, 29.154356, 49.586079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846756, 30.139721, 50.259617>,  <38.812172, 29.392750, 49.841526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846756, 30.139721, 50.259617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967304, 30.513863, 50.333687>,  <39.039635, 30.738348, 50.378128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967304, 30.513863, 50.333687>,  <38.846756, 30.139721, 50.259617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967304, 30.513863, 50.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018007, 0.188590, -0.981891,
		-0.953337, 0.299248, 0.039993,
		0.301371, 0.935353, 0.185178,
		39.057716, 30.794468, 50.389240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468513, 30.403606, 49.767387>,  <38.846756, 30.139721, 50.259617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468513, 30.403606, 49.767387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726200, 30.689829, 49.875431>,  <38.880814, 30.861563, 49.940258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726200, 30.689829, 49.875431>,  <38.468513, 30.403606, 49.767387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726200, 30.689829, 49.875431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066112, 0.403935, -0.912396,
		-0.761979, 0.569924, 0.307528,
		0.644218, 0.715558, 0.270111,
		38.919464, 30.904497, 49.956463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153484, 31.038647, 49.507595>,  <38.468513, 30.403606, 49.767387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153484, 31.038647, 49.507595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550823, 31.071201, 49.540169>,  <38.789227, 31.090734, 49.559711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550823, 31.071201, 49.540169>,  <38.153484, 31.038647, 49.507595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550823, 31.071201, 49.540169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051205, 0.321185, -0.945631,
		-0.103118, 0.943513, 0.314882,
		0.993350, 0.081388, 0.081432,
		38.848827, 31.095617, 49.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269005, 31.629372, 49.204926>,  <38.153484, 31.038647, 49.507595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269005, 31.629372, 49.204926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624588, 31.446180, 49.204571>,  <38.837940, 31.336266, 49.204357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624588, 31.446180, 49.204571>,  <38.269005, 31.629372, 49.204926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624588, 31.446180, 49.204571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179684, 0.350563, -0.919141,
		0.421260, 0.816921, 0.393929,
		0.888962, -0.457980, -0.000890,
		38.891277, 31.308786, 49.204304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795280, 32.106934, 48.952717>,  <38.269005, 31.629372, 49.204926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795280, 32.106934, 48.952717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945755, 31.741215, 48.892658>,  <39.036037, 31.521784, 48.856625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945755, 31.741215, 48.892658>,  <38.795280, 32.106934, 48.952717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945755, 31.741215, 48.892658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303466, 0.274694, -0.912388,
		0.875440, 0.297660, 0.380794,
		0.376184, -0.914298, -0.150148,
		39.058609, 31.466925, 48.847614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470730, 32.157932, 48.527809>,  <38.795280, 32.106934, 48.952717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470730, 32.157932, 48.527809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375866, 31.771757, 48.484581>,  <39.318947, 31.540051, 48.458645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375866, 31.771757, 48.484581>,  <39.470730, 32.157932, 48.527809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375866, 31.771757, 48.484581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121474, 0.080902, -0.989292,
		0.963846, -0.247749, 0.098089,
		-0.237161, -0.965440, -0.108072,
		39.304718, 31.482124, 48.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010845, 31.834896, 48.029430>,  <39.470730, 32.157932, 48.527809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010845, 31.834896, 48.029430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683437, 31.606634, 48.002968>,  <39.486992, 31.469677, 47.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683437, 31.606634, 48.002968>,  <40.010845, 31.834896, 48.029430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683437, 31.606634, 48.002968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020583, 0.144211, -0.989333,
		0.574106, -0.808429, -0.129786,
		-0.818522, -0.570653, -0.066153,
		39.437881, 31.435438, 47.983124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148022, 31.528763, 47.460182>,  <40.010845, 31.834896, 48.029430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148022, 31.528763, 47.460182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758827, 31.463633, 47.525650>,  <39.525311, 31.424555, 47.564930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758827, 31.463633, 47.525650>,  <40.148022, 31.528763, 47.460182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758827, 31.463633, 47.525650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167705, 0.011289, -0.985773,
		0.158664, -0.986590, -0.038291,
		-0.972985, -0.162829, 0.163665,
		39.466930, 31.414785, 47.574749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915596, 30.967651, 46.938259>,  <40.148022, 31.528763, 47.460182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915596, 30.967651, 46.938259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565796, 31.116854, 47.062271>,  <39.355915, 31.206375, 47.136677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565796, 31.116854, 47.062271>,  <39.915596, 30.967651, 46.938259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565796, 31.116854, 47.062271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316602, 0.045247, -0.947479,
		-0.367442, -0.926726, 0.078526,
		-0.874500, 0.373005, 0.310029,
		39.303448, 31.228756, 47.155281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530403, 30.830261, 46.397423>,  <39.915596, 30.967651, 46.938259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530403, 30.830261, 46.397423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283863, 31.084026, 46.584026>,  <39.135937, 31.236286, 46.695988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283863, 31.084026, 46.584026>,  <39.530403, 30.830261, 46.397423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283863, 31.084026, 46.584026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394408, 0.264046, -0.880183,
		-0.681580, -0.726497, 0.087472,
		-0.616353, 0.634415, 0.466504,
		39.098957, 31.274351, 46.723976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791840, 30.607985, 46.287495>,  <39.530403, 30.830261, 46.397423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791840, 30.607985, 46.287495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817677, 30.997566, 46.374432>,  <38.833179, 31.231316, 46.426594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817677, 30.997566, 46.374432>,  <38.791840, 30.607985, 46.287495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817677, 30.997566, 46.374432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498656, 0.220159, -0.838375,
		-0.864390, -0.054226, 0.499890,
		0.064594, 0.973955, 0.217344,
		38.837055, 31.289753, 46.439636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089573, 30.885073, 46.172661>,  <38.791840, 30.607985, 46.287495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089573, 30.885073, 46.172661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353043, 31.185177, 46.149837>,  <38.511124, 31.365240, 46.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353043, 31.185177, 46.149837>,  <38.089573, 30.885073, 46.172661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353043, 31.185177, 46.149837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451230, 0.333189, -0.827875,
		-0.602110, 0.571047, 0.558004,
		0.658677, 0.750260, -0.057057,
		38.550644, 31.410255, 46.132721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709343, 31.430340, 45.974865>,  <38.089573, 30.885073, 46.172661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709343, 31.430340, 45.974865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086910, 31.507280, 45.867516>,  <38.313450, 31.553446, 45.803108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086910, 31.507280, 45.867516>,  <37.709343, 31.430340, 45.974865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086910, 31.507280, 45.867516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283497, 0.055452, -0.957369,
		-0.169270, 0.979758, 0.106873,
		0.943916, 0.192352, -0.268372,
		38.370087, 31.564985, 45.787003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711143, 32.063099, 45.525635>,  <37.709343, 31.430340, 45.974865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711143, 32.063099, 45.525635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071526, 31.912186, 45.439903>,  <38.287754, 31.821638, 45.388466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071526, 31.912186, 45.439903>,  <37.711143, 32.063099, 45.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071526, 31.912186, 45.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220037, 0.028476, -0.975076,
		0.373983, 0.925660, -0.057361,
		0.900955, -0.377284, -0.214329,
		38.341812, 31.799000, 45.375603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072086, 32.609657, 45.136768>,  <37.711143, 32.063099, 45.525635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072086, 32.609657, 45.136768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242229, 32.253082, 45.074276>,  <38.344315, 32.039135, 45.036781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242229, 32.253082, 45.074276>,  <38.072086, 32.609657, 45.136768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242229, 32.253082, 45.074276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160749, 0.095466, -0.982368,
		0.890637, 0.442969, -0.102692,
		0.425354, -0.891440, -0.156232,
		38.369835, 31.985651, 45.027405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334721, 32.595078, 44.455242>,  <38.072086, 32.609657, 45.136768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334721, 32.595078, 44.455242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369175, 32.200146, 44.508553>,  <38.389847, 31.963186, 44.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369175, 32.200146, 44.508553>,  <38.334721, 32.595078, 44.455242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369175, 32.200146, 44.508553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093943, -0.141225, -0.985510,
		0.991844, 0.072369, -0.104917,
		0.086137, -0.987329, 0.133275,
		38.395016, 31.903948, 44.548534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807774, 32.359695, 44.013962>,  <38.334721, 32.595078, 44.455242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807774, 32.359695, 44.013962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607479, 32.028175, 44.113846>,  <38.487301, 31.829264, 44.173775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607479, 32.028175, 44.113846>,  <38.807774, 32.359695, 44.013962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607479, 32.028175, 44.113846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249517, -0.138029, -0.958483,
		0.828856, -0.542256, -0.137682,
		-0.500739, -0.828798, 0.249708,
		38.457256, 31.779535, 44.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244926, 31.776110, 43.806995>,  <38.807774, 32.359695, 44.013962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244926, 31.776110, 43.806995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858288, 31.674536, 43.820847>,  <38.626305, 31.613590, 43.829159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858288, 31.674536, 43.820847>,  <39.244926, 31.776110, 43.806995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858288, 31.674536, 43.820847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000203, -0.135881, -0.990725,
		0.256287, -0.957629, 0.131394,
		-0.966601, -0.253937, 0.034630,
		38.568306, 31.598354, 43.831234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095207, 31.186691, 43.237732>,  <39.244926, 31.776110, 43.806995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095207, 31.186691, 43.237732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728714, 31.327591, 43.314095>,  <38.508820, 31.412130, 43.359913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728714, 31.327591, 43.314095>,  <39.095207, 31.186691, 43.237732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728714, 31.327591, 43.314095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277532, -0.214332, -0.936503,
		-0.288970, -0.911032, 0.294139,
		-0.916228, 0.352254, 0.190905,
		38.453846, 31.433266, 43.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588356, 30.693193, 43.028088>,  <39.095207, 31.186691, 43.237732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588356, 30.693193, 43.028088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395519, 31.043516, 43.037464>,  <38.279816, 31.253710, 43.043091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395519, 31.043516, 43.037464>,  <38.588356, 30.693193, 43.028088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395519, 31.043516, 43.037464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243223, -0.108089, -0.963929,
		-0.841682, -0.470405, 0.265125,
		-0.482094, 0.875806, 0.023437,
		38.250893, 31.306257, 43.044495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017616, 30.495512, 42.667187>,  <38.588356, 30.693193, 43.028088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017616, 30.495512, 42.667187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999386, 30.895092, 42.665333>,  <37.988449, 31.134840, 42.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999386, 30.895092, 42.665333>,  <38.017616, 30.495512, 42.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999386, 30.895092, 42.665333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371505, -0.021256, -0.928187,
		-0.927312, -0.040579, 0.372084,
		-0.045574, 0.998950, -0.004636,
		37.985714, 31.194777, 42.663940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410534, 30.652723, 42.320866>,  <38.017616, 30.495512, 42.667187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410534, 30.652723, 42.320866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673637, 30.953411, 42.301811>,  <37.831501, 31.133823, 42.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673637, 30.953411, 42.301811>,  <37.410534, 30.652723, 42.320866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673637, 30.953411, 42.301811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134475, 0.054964, -0.989391,
		-0.741128, 0.657186, 0.137241,
		0.657758, 0.751721, -0.047640,
		37.870964, 31.178928, 42.287518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130478, 31.056013, 41.846355>,  <37.410534, 30.652723, 42.320866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130478, 31.056013, 41.846355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509155, 31.183767, 41.863113>,  <37.736362, 31.260420, 41.873169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509155, 31.183767, 41.863113>,  <37.130478, 31.056013, 41.846355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509155, 31.183767, 41.863113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018019, 0.182368, -0.983065,
		-0.321620, 0.929910, 0.178402,
		0.946697, 0.319388, 0.041897,
		37.793163, 31.279583, 41.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142445, 31.689108, 41.429417>,  <37.130478, 31.056013, 41.846355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142445, 31.689108, 41.429417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517521, 31.550117, 41.430241>,  <37.742565, 31.466724, 41.430733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517521, 31.550117, 41.430241>,  <37.142445, 31.689108, 41.429417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517521, 31.550117, 41.430241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072553, 0.189991, -0.979101,
		0.339821, 0.918240, 0.203363,
		0.937687, -0.347474, 0.002058,
		37.798828, 31.445875, 41.430859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297161, 32.141674, 40.930538>,  <37.142445, 31.689108, 41.429417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297161, 32.141674, 40.930538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590321, 31.874929, 40.984428>,  <37.766216, 31.714882, 41.016762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590321, 31.874929, 40.984428>,  <37.297161, 32.141674, 40.930538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590321, 31.874929, 40.984428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337113, 0.183966, -0.923316,
		0.590939, 0.722116, 0.359637,
		0.732902, -0.666861, 0.134722,
		37.810192, 31.674871, 41.024845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831448, 32.478821, 41.053963>,  <37.297161, 32.141674, 40.930538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831448, 32.478821, 41.053963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977608, 32.138870, 40.902069>,  <38.065304, 31.934900, 40.810932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977608, 32.138870, 40.902069>,  <37.831448, 32.478821, 41.053963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977608, 32.138870, 40.902069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320059, 0.497780, -0.806088,
		0.874097, 0.173006, 0.453898,
		0.365399, -0.849873, -0.379736,
		38.087227, 31.883909, 40.788147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453850, 32.610943, 40.890945>,  <37.831448, 32.478821, 41.053963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453850, 32.610943, 40.890945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384686, 32.291744, 40.660015>,  <38.343189, 32.100224, 40.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384686, 32.291744, 40.660015>,  <38.453850, 32.610943, 40.890945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384686, 32.291744, 40.660015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299737, 0.515718, -0.802616,
		0.938222, -0.311823, 0.150019,
		-0.172907, -0.797998, -0.577323,
		38.332813, 32.052345, 40.486816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070225, 32.535988, 40.472637>,  <38.453850, 32.610943, 40.890945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070225, 32.535988, 40.472637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762821, 32.356457, 40.290234>,  <38.578377, 32.248737, 40.180790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762821, 32.356457, 40.290234>,  <39.070225, 32.535988, 40.472637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762821, 32.356457, 40.290234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151122, 0.565211, -0.810987,
		0.621737, -0.692164, -0.366541,
		-0.768509, -0.448828, -0.456014,
		38.532269, 32.221809, 40.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366402, 32.225677, 39.833218>,  <39.070225, 32.535988, 40.472637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366402, 32.225677, 39.833218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972054, 32.285576, 39.803181>,  <38.735447, 32.321514, 39.785160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972054, 32.285576, 39.803181>,  <39.366402, 32.225677, 39.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972054, 32.285576, 39.803181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156102, 0.658513, -0.736202,
		-0.060796, -0.737521, -0.672583,
		-0.985868, 0.149749, -0.075094,
		38.676292, 32.330502, 39.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305408, 32.352161, 39.151836>,  <39.366402, 32.225677, 39.833218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305408, 32.352161, 39.151836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932053, 32.448044, 39.258663>,  <38.708038, 32.505573, 39.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932053, 32.448044, 39.258663>,  <39.305408, 32.352161, 39.151836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932053, 32.448044, 39.258663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057505, 0.634665, -0.770645,
		-0.354227, -0.734670, -0.578605,
		-0.933390, 0.239711, 0.267062,
		38.652035, 32.519958, 39.338783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944344, 32.265903, 38.630936>,  <39.305408, 32.352161, 39.151836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944344, 32.265903, 38.630936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721474, 32.522240, 38.842171>,  <38.587749, 32.676041, 38.968910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721474, 32.522240, 38.842171>,  <38.944344, 32.265903, 38.630936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721474, 32.522240, 38.842171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014782, 0.628190, -0.777920,
		-0.830261, -0.441246, -0.340541,
		-0.557179, 0.640843, 0.528084,
		38.554321, 32.714493, 39.000595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454319, 32.503326, 38.220901>,  <38.944344, 32.265903, 38.630936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454319, 32.503326, 38.220901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444065, 32.789417, 38.500271>,  <38.437912, 32.961071, 38.667892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444065, 32.789417, 38.500271>,  <38.454319, 32.503326, 38.220901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444065, 32.789417, 38.500271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030455, 0.697767, -0.715677,
		-0.999207, -0.039617, 0.003895,
		-0.025635, 0.715229, 0.698420,
		38.436375, 33.003986, 38.709797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936440, 33.003044, 38.019444>,  <38.454319, 32.503326, 38.220901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936440, 33.003044, 38.019444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164734, 33.183651, 38.293785>,  <38.301708, 33.292015, 38.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164734, 33.183651, 38.293785>,  <37.936440, 33.003044, 38.019444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164734, 33.183651, 38.293785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056993, 0.811456, -0.581628,
		-0.819156, 0.371043, 0.437391,
		0.570733, 0.451515, 0.685856,
		38.335953, 33.319107, 38.499542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666122, 33.694611, 38.120174>,  <37.936440, 33.003044, 38.019444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666122, 33.694611, 38.120174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046265, 33.698368, 38.244587>,  <38.274349, 33.700623, 38.319233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046265, 33.698368, 38.244587>,  <37.666122, 33.694611, 38.120174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046265, 33.698368, 38.244587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128946, 0.897800, -0.421104,
		-0.283196, 0.440304, 0.852017,
		0.950354, 0.009391, 0.311029,
		38.331371, 33.701187, 38.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748871, 34.417152, 38.377151>,  <37.666122, 33.694611, 38.120174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748871, 34.417152, 38.377151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106422, 34.269787, 38.274979>,  <38.320953, 34.181366, 38.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106422, 34.269787, 38.274979>,  <37.748871, 34.417152, 38.377151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106422, 34.269787, 38.274979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175342, 0.811704, -0.557128,
		0.412592, 0.453217, 0.790166,
		0.893881, -0.368416, -0.255435,
		38.374588, 34.159264, 38.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262905, 35.070152, 38.374672>,  <37.748871, 34.417152, 38.377151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262905, 35.070152, 38.374672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495346, 34.776802, 38.233547>,  <38.634811, 34.600792, 38.148872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495346, 34.776802, 38.233547>,  <38.262905, 35.070152, 38.374672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495346, 34.776802, 38.233547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478225, 0.658495, -0.581107,
		0.658495, 0.168961, 0.733374,
		0.581107, -0.733374, -0.352814,
		38.669678, 34.556789, 38.127705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951717, 35.358681, 38.364902>,  <38.262905, 35.070152, 38.374672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951717, 35.358681, 38.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949783, 35.051285, 38.108967>,  <38.948624, 34.866848, 37.955406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949783, 35.051285, 38.108967>,  <38.951717, 35.358681, 38.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949783, 35.051285, 38.108967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522893, 0.543462, -0.656683,
		0.852385, -0.337741, 0.399213,
		-0.004831, -0.768492, -0.639841,
		38.948334, 34.820736, 37.917015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684689, 35.171352, 38.079601>,  <38.951717, 35.358681, 38.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684689, 35.171352, 38.079601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435928, 35.031017, 37.799561>,  <39.286671, 34.946815, 37.631535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435928, 35.031017, 37.799561>,  <39.684689, 35.171352, 38.079601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435928, 35.031017, 37.799561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568414, 0.412709, -0.711742,
		0.538646, -0.840585, -0.057244,
		-0.621904, -0.350839, -0.700105,
		39.249355, 34.925766, 37.589531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096420, 34.897064, 37.564308>,  <39.684689, 35.171352, 38.079601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096420, 34.897064, 37.564308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746532, 34.948902, 37.377514>,  <39.536602, 34.980007, 37.265438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746532, 34.948902, 37.377514>,  <40.096420, 34.897064, 37.564308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746532, 34.948902, 37.377514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473651, 0.432585, -0.767154,
		0.102586, -0.892230, -0.439774,
		-0.874718, 0.129600, -0.466983,
		39.484116, 34.987782, 37.237419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273357, 34.727962, 36.879585>,  <40.096420, 34.897064, 37.564308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273357, 34.727962, 36.879585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906227, 34.865932, 36.800980>,  <39.685947, 34.948715, 36.753819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906227, 34.865932, 36.800980>,  <40.273357, 34.727962, 36.879585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906227, 34.865932, 36.800980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300349, 0.279684, -0.911903,
		-0.259575, -0.895994, -0.360299,
		-0.917829, 0.344923, -0.196512,
		39.630878, 34.969410, 36.742027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039047, 34.385731, 36.317856>,  <40.273357, 34.727962, 36.879585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039047, 34.385731, 36.317856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890190, 34.756363, 36.339626>,  <39.800877, 34.978741, 36.352688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890190, 34.756363, 36.339626>,  <40.039047, 34.385731, 36.317856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890190, 34.756363, 36.339626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335640, 0.189004, -0.922835,
		-0.865366, -0.325156, -0.381333,
		-0.372139, 0.926580, 0.054422,
		39.778549, 35.034336, 36.355953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701138, 34.634319, 35.749443>,  <40.039047, 34.385731, 36.317856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701138, 34.634319, 35.749443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803333, 34.975208, 35.932060>,  <39.864651, 35.179741, 36.041630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803333, 34.975208, 35.932060>,  <39.701138, 34.634319, 35.749443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803333, 34.975208, 35.932060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622028, 0.216610, -0.752437,
		-0.740139, 0.476226, -0.474766,
		0.255491, 0.852226, 0.456547,
		39.879982, 35.230877, 36.069023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546272, 35.202320, 35.339375>,  <39.701138, 34.634319, 35.749443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546272, 35.202320, 35.339375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861328, 35.294670, 35.567875>,  <40.050362, 35.350082, 35.704975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861328, 35.294670, 35.567875>,  <39.546272, 35.202320, 35.339375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861328, 35.294670, 35.567875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555621, 0.134571, -0.820473,
		-0.266302, 0.963632, -0.022287,
		0.787635, 0.230877, 0.571250,
		40.097618, 35.363934, 35.739250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906998, 35.892879, 35.298450>,  <39.546272, 35.202320, 35.339375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906998, 35.892879, 35.298450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187279, 35.622948, 35.391075>,  <40.355450, 35.460991, 35.446651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187279, 35.622948, 35.391075>,  <39.906998, 35.892879, 35.298450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187279, 35.622948, 35.391075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561582, 0.321501, -0.762406,
		0.440042, 0.664266, 0.604247,
		0.700706, -0.674825, 0.231566,
		40.397491, 35.420502, 35.460545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584053, 36.156597, 35.316006>,  <39.906998, 35.892879, 35.298450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584053, 36.156597, 35.316006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595509, 35.767902, 35.222279>,  <40.602383, 35.534683, 35.166042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595509, 35.767902, 35.222279>,  <40.584053, 36.156597, 35.316006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595509, 35.767902, 35.222279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300418, 0.231941, -0.925177,
		0.953377, -0.043895, 0.298571,
		0.028640, -0.971739, -0.234314,
		40.604099, 35.476379, 35.151985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288837, 35.992664, 35.022263>,  <40.584053, 36.156597, 35.316006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288837, 35.992664, 35.022263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010384, 35.753788, 34.862881>,  <40.843311, 35.610462, 34.767254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010384, 35.753788, 34.862881>,  <41.288837, 35.992664, 35.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010384, 35.753788, 34.862881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359463, 0.190487, -0.913510,
		0.621437, -0.779155, 0.082062,
		-0.696134, -0.597187, -0.398453,
		40.801544, 35.574631, 34.743343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493679, 35.356472, 34.658680>,  <41.288837, 35.992664, 35.022263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493679, 35.356472, 34.658680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152569, 35.443119, 34.468582>,  <40.947903, 35.495106, 34.354523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152569, 35.443119, 34.468582>,  <41.493679, 35.356472, 34.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152569, 35.443119, 34.468582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518556, 0.242706, -0.819874,
		-0.062254, -0.945606, -0.319301,
		-0.852774, 0.216616, -0.475241,
		40.896736, 35.508102, 34.326012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840309, 34.772003, 34.914867>,  <41.493679, 35.356472, 34.658680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840309, 34.772003, 34.914867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226860, 34.741596, 34.816612>,  <42.458790, 34.723354, 34.757660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226860, 34.741596, 34.816612>,  <41.840309, 34.772003, 34.914867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226860, 34.741596, 34.816612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105615, 0.988343, 0.109648,
		0.234443, -0.131904, 0.963139,
		0.966376, -0.076016, -0.245641,
		42.516773, 34.718792, 34.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273170, 35.250851, 35.384277>,  <41.840309, 34.772003, 34.914867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273170, 35.250851, 35.384277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474133, 35.177921, 35.046200>,  <42.594711, 35.134163, 34.843353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474133, 35.177921, 35.046200>,  <42.273170, 35.250851, 35.384277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474133, 35.177921, 35.046200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189891, 0.976916, -0.097863,
		0.843523, -0.111327, 0.525429,
		0.502405, -0.182324, -0.845191,
		42.624855, 35.123222, 34.792641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770878, 35.663395, 35.484180>,  <42.273170, 35.250851, 35.384277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770878, 35.663395, 35.484180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815357, 35.629822, 35.088081>,  <42.842045, 35.609676, 34.850422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815357, 35.629822, 35.088081>,  <42.770878, 35.663395, 35.484180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815357, 35.629822, 35.088081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055481, 0.995397, -0.078142,
		0.992249, -0.046250, 0.115341,
		0.111196, -0.083935, -0.990248,
		42.848717, 35.604641, 34.791008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183315, 36.236462, 35.286148>,  <42.770878, 35.663395, 35.484180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183315, 36.236462, 35.286148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057316, 36.108276, 34.928806>,  <42.981716, 36.031364, 34.714401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057316, 36.108276, 34.928806>,  <43.183315, 36.236462, 35.286148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057316, 36.108276, 34.928806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036429, 0.944659, -0.326024,
		0.948397, -0.070149, -0.309229,
		-0.314987, -0.320465, -0.893357,
		42.962818, 36.012138, 34.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584499, 36.562744, 34.850346>,  <43.183315, 36.236462, 35.286148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584499, 36.562744, 34.850346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279285, 36.467903, 34.609825>,  <43.096157, 36.410999, 34.465515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279285, 36.467903, 34.609825>,  <43.584499, 36.562744, 34.850346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279285, 36.467903, 34.609825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032850, 0.914860, -0.402434,
		0.645522, -0.326824, -0.690281,
		-0.763035, -0.237104, -0.601298,
		43.050373, 36.396770, 34.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727348, 36.920547, 34.233276>,  <43.584499, 36.562744, 34.850346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727348, 36.920547, 34.233276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331402, 36.863811, 34.230354>,  <43.093834, 36.829769, 34.228603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331402, 36.863811, 34.230354>,  <43.727348, 36.920547, 34.233276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331402, 36.863811, 34.230354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126116, 0.901427, -0.414155,
		0.065328, -0.409036, -0.910177,
		-0.989862, -0.141843, -0.007303,
		43.034443, 36.821259, 34.228165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474091, 37.107006, 33.525352>,  <43.727348, 36.920547, 34.233276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474091, 37.107006, 33.525352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174915, 37.148239, 33.787636>,  <42.995411, 37.172981, 33.945007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174915, 37.148239, 33.787636>,  <43.474091, 37.107006, 33.525352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174915, 37.148239, 33.787636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228243, 0.887684, -0.399903,
		-0.623288, -0.448765, -0.640408,
		-0.747942, 0.103086, 0.655710,
		42.950531, 37.179165, 33.984348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928848, 37.473091, 33.172367>,  <43.474091, 37.107006, 33.525352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928848, 37.473091, 33.172367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817307, 37.523861, 33.553131>,  <42.750381, 37.554325, 33.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817307, 37.523861, 33.553131>,  <42.928848, 37.473091, 33.172367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817307, 37.523861, 33.553131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397259, 0.887194, -0.234673,
		-0.874314, -0.443594, -0.196976,
		-0.278855, 0.126927, 0.951908,
		42.733650, 37.561939, 33.838703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345352, 37.889122, 33.128193>,  <42.928848, 37.473091, 33.172367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345352, 37.889122, 33.128193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478481, 37.926559, 33.503525>,  <42.558361, 37.949020, 33.728725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478481, 37.926559, 33.503525>,  <42.345352, 37.889122, 33.128193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478481, 37.926559, 33.503525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102840, 0.992730, -0.062540,
		-0.937364, -0.075683, 0.340032,
		0.332826, 0.093591, 0.938332,
		42.578331, 37.954636, 33.785023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854523, 38.367046, 33.309361>,  <42.345352, 37.889122, 33.128193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854523, 38.367046, 33.309361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176327, 38.366795, 33.546936>,  <42.369408, 38.366642, 33.689480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176327, 38.366795, 33.546936>,  <41.854523, 38.367046, 33.309361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176327, 38.366795, 33.546936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027098, 0.998997, -0.035640,
		-0.593320, 0.044767, 0.803721,
		0.804511, -0.000633, 0.593938,
		42.417679, 38.366604, 33.725117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681210, 38.811993, 33.870815>,  <41.854523, 38.367046, 33.309361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681210, 38.811993, 33.870815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080105, 38.784172, 33.860424>,  <42.319443, 38.767479, 33.854187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080105, 38.784172, 33.860424>,  <41.681210, 38.811993, 33.870815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080105, 38.784172, 33.860424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070338, 0.997056, 0.030510,
		0.023783, -0.032253, 0.999196,
		0.997239, -0.069556, -0.025981,
		42.379276, 38.763306, 33.852631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926403, 39.290485, 34.416985>,  <41.681210, 38.811993, 33.870815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926403, 39.290485, 34.416985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229855, 39.217628, 34.166763>,  <42.411926, 39.173912, 34.016632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229855, 39.217628, 34.166763>,  <41.926403, 39.290485, 34.416985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229855, 39.217628, 34.166763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019661, 0.966089, -0.257460,
		0.651231, 0.183017, 0.736480,
		0.758625, -0.182145, -0.625549,
		42.457443, 39.162987, 33.979099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551888, 39.660896, 34.735184>,  <41.926403, 39.290485, 34.416985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551888, 39.660896, 34.735184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594273, 39.598198, 34.342407>,  <42.619705, 39.560581, 34.106743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594273, 39.598198, 34.342407>,  <42.551888, 39.660896, 34.735184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594273, 39.598198, 34.342407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066207, 0.986419, -0.150314,
		0.992163, -0.049083, 0.114903,
		0.105965, -0.156743, -0.981938,
		42.626060, 39.551174, 34.047825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908459, 40.335377, 34.629738>,  <42.551888, 39.660896, 34.735184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908459, 40.335377, 34.629738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865036, 40.183105, 34.262413>,  <42.838982, 40.091743, 34.042019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865036, 40.183105, 34.262413>,  <42.908459, 40.335377, 34.629738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865036, 40.183105, 34.262413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008165, 0.923402, -0.383748,
		0.994057, -0.049157, -0.097134,
		-0.108558, -0.380674, -0.918315,
		42.832470, 40.068905, 33.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361744, 40.631161, 34.140095>,  <42.908459, 40.335377, 34.629738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361744, 40.631161, 34.140095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061939, 40.498856, 33.910721>,  <42.882057, 40.419472, 33.773094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061939, 40.498856, 33.910721>,  <43.361744, 40.631161, 34.140095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061939, 40.498856, 33.910721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080136, 0.905191, -0.417382,
		0.657125, -0.266878, -0.704955,
		-0.749509, -0.330765, -0.573437,
		42.837086, 40.399628, 33.738689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422230, 41.054432, 33.598118>,  <43.361744, 40.631161, 34.140095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422230, 41.054432, 33.598118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058357, 40.901154, 33.534073>,  <42.840034, 40.809189, 33.495647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058357, 40.901154, 33.534073>,  <43.422230, 41.054432, 33.598118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058357, 40.901154, 33.534073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279408, 0.849943, -0.446686,
		0.307250, -0.361608, -0.880248,
		-0.909686, -0.383193, -0.160109,
		42.785450, 40.786194, 33.486042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306171, 41.099186, 32.894302>,  <43.422230, 41.054432, 33.598118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306171, 41.099186, 32.894302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948151, 41.101627, 33.072670>,  <42.733337, 41.103092, 33.179691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948151, 41.101627, 33.072670>,  <43.306171, 41.099186, 32.894302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948151, 41.101627, 33.072670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193983, 0.895027, -0.401618,
		-0.401563, -0.445970, -0.799911,
		-0.895051, 0.006106, 0.445921,
		42.679634, 41.103458, 33.206448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789185, 41.346462, 32.392872>,  <43.306171, 41.099186, 32.894302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789185, 41.346462, 32.392872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576721, 41.410332, 32.725708>,  <42.449242, 41.448654, 32.925411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576721, 41.410332, 32.725708>,  <42.789185, 41.346462, 32.392872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576721, 41.410332, 32.725708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318845, 0.872220, -0.370906,
		-0.784990, -0.462317, -0.412375,
		-0.531158, 0.159674, 0.832091,
		42.417374, 41.458233, 32.975334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037575, 41.514950, 32.159687>,  <42.789185, 41.346462, 32.392872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037575, 41.514950, 32.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035316, 41.626102, 32.543926>,  <42.033962, 41.692795, 32.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035316, 41.626102, 32.543926>,  <42.037575, 41.514950, 32.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035316, 41.626102, 32.543926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591856, 0.773360, -0.227199,
		-0.806023, -0.569820, 0.160098,
		-0.005650, 0.277883, 0.960598,
		42.033623, 41.709469, 32.832108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310143, 41.583878, 32.418217>,  <42.037575, 41.514950, 32.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310143, 41.583878, 32.418217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542007, 41.804913, 32.657761>,  <41.681126, 41.937534, 32.801487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542007, 41.804913, 32.657761>,  <41.310143, 41.583878, 32.418217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542007, 41.804913, 32.657761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607139, 0.783064, -0.134884,
		-0.543479, -0.285402, 0.789416,
		0.579667, 0.552591, 0.598857,
		41.715908, 41.970692, 32.837418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905476, 41.856796, 33.044117>,  <41.310143, 41.583878, 32.418217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905476, 41.856796, 33.044117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201996, 42.112202, 32.961388>,  <41.379910, 42.265446, 32.911751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201996, 42.112202, 32.961388>,  <40.905476, 41.856796, 33.044117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201996, 42.112202, 32.961388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655890, 0.754554, -0.021387,
		0.142400, 0.151505, 0.978145,
		0.741303, 0.638510, -0.206819,
		41.424385, 42.303753, 32.899342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725842, 42.513134, 33.418713>,  <40.905476, 41.856796, 33.044117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725842, 42.513134, 33.418713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964890, 42.583889, 33.105904>,  <41.108318, 42.626343, 32.918217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964890, 42.583889, 33.105904>,  <40.725842, 42.513134, 33.418713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964890, 42.583889, 33.105904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621945, 0.717820, -0.312920,
		0.505999, 0.673382, 0.539000,
		0.597620, 0.176891, -0.782023,
		41.144176, 42.636955, 32.871296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970661, 43.290039, 33.339561>,  <40.725842, 42.513134, 33.418713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970661, 43.290039, 33.339561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934494, 43.091026, 32.994473>,  <40.912792, 42.971619, 32.787418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934494, 43.091026, 32.994473>,  <40.970661, 43.290039, 33.339561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934494, 43.091026, 32.994473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715563, 0.634963, -0.291190,
		0.692671, 0.590999, -0.413432,
		-0.090421, -0.497536, -0.862718,
		40.907368, 42.941765, 32.735657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112446, 43.688854, 32.747005>,  <40.970661, 43.290039, 33.339561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112446, 43.688854, 32.747005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840618, 43.401443, 32.687801>,  <40.677521, 43.228996, 32.652279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840618, 43.401443, 32.687801>,  <41.112446, 43.688854, 32.747005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840618, 43.401443, 32.687801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686204, 0.693936, -0.218121,
		0.259434, -0.046664, -0.964633,
		-0.679572, -0.718523, -0.148010,
		40.636745, 43.185886, 32.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809147, 44.010529, 32.456661>,  <41.112446, 43.688854, 32.747005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809147, 44.010529, 32.456661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610569, 43.863010, 32.142326>,  <41.491421, 43.774502, 31.953726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610569, 43.863010, 32.142326>,  <41.809147, 44.010529, 32.456661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610569, 43.863010, 32.142326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123734, 0.865960, -0.484564,
		0.859203, -0.337795, -0.384272,
		-0.496448, -0.368792, -0.785833,
		41.461636, 43.752373, 31.906576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598621, 44.057159, 32.382366>,  <41.809147, 44.010529, 32.456661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598621, 44.057159, 32.382366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785130, 44.273663, 32.102470>,  <42.897034, 44.403564, 31.934532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785130, 44.273663, 32.102470>,  <42.598621, 44.057159, 32.382366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785130, 44.273663, 32.102470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871245, -0.418101, 0.257147,
		-0.153379, -0.729543, -0.666515,
		0.466270, 0.541256, -0.699738,
		42.925011, 44.436039, 31.892550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954762, 43.513798, 31.903069>,  <42.598621, 44.057159, 32.382366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954762, 43.513798, 31.903069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131084, 43.864735, 31.978914>,  <43.236877, 44.075298, 32.024422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131084, 43.864735, 31.978914>,  <42.954762, 43.513798, 31.903069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131084, 43.864735, 31.978914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862820, -0.472404, 0.179936,
		0.247441, 0.084287, -0.965230,
		0.440812, 0.877343, 0.189617,
		43.263329, 44.127937, 32.035801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463596, 43.003120, 31.647253>,  <42.954762, 43.513798, 31.903069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463596, 43.003120, 31.647253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823402, 43.123745, 31.520802>,  <44.039284, 43.196121, 31.444931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823402, 43.123745, 31.520802>,  <43.463596, 43.003120, 31.647253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823402, 43.123745, 31.520802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385534, -0.888280, 0.249643,
		-0.205527, -0.346436, -0.915282,
		0.899512, 0.301564, -0.316129,
		44.093258, 43.214214, 31.425962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822094, 42.567703, 31.132114>,  <43.463596, 43.003120, 31.647253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822094, 42.567703, 31.132114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129242, 42.744343, 31.317743>,  <44.313530, 42.850327, 31.429121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129242, 42.744343, 31.317743>,  <43.822094, 42.567703, 31.132114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129242, 42.744343, 31.317743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491655, -0.870661, 0.014980,
		0.410666, 0.216661, -0.885670,
		0.767873, 0.441596, 0.464074,
		44.359604, 42.876823, 31.456964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524223, 42.443569, 30.752369>,  <43.822094, 42.567703, 31.132114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524223, 42.443569, 30.752369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577232, 42.491085, 31.145983>,  <44.609035, 42.519592, 31.382151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577232, 42.491085, 31.145983>,  <44.524223, 42.443569, 30.752369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577232, 42.491085, 31.145983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386512, -0.920392, 0.059053,
		0.912714, 0.372516, -0.167882,
		0.132519, 0.118787, 0.984037,
		44.616989, 42.526722, 31.441195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243580, 42.327995, 31.029196>,  <44.524223, 42.443569, 30.752369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243580, 42.327995, 31.029196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020473, 42.264839, 31.355131>,  <44.886608, 42.226948, 31.550694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020473, 42.264839, 31.355131>,  <45.243580, 42.327995, 31.029196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020473, 42.264839, 31.355131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467870, -0.870707, 0.151550,
		0.685559, 0.465769, 0.559524,
		-0.557769, -0.157888, 0.814841,
		44.853142, 42.217472, 31.599583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653156, 42.245415, 31.638126>,  <45.243580, 42.327995, 31.029196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653156, 42.245415, 31.638126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295219, 42.070560, 31.674295>,  <45.080456, 41.965649, 31.695997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295219, 42.070560, 31.674295>,  <45.653156, 42.245415, 31.638126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295219, 42.070560, 31.674295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429011, -0.786217, 0.444761,
		-0.123328, 0.436781, 0.891073,
		-0.894841, -0.437132, 0.090421,
		45.026768, 41.939423, 31.701422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691067, 41.940979, 32.256359>,  <45.653156, 42.245415, 31.638126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691067, 41.940979, 32.256359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349808, 41.775566, 32.129158>,  <45.145050, 41.676319, 32.052837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349808, 41.775566, 32.129158>,  <45.691067, 41.940979, 32.256359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349808, 41.775566, 32.129158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214015, -0.833389, 0.509568,
		-0.475743, 0.366681, 0.799508,
		-0.853151, -0.413530, -0.318004,
		45.093864, 41.651508, 32.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325260, 41.611923, 32.842743>,  <45.691067, 41.940979, 32.256359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325260, 41.611923, 32.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167545, 41.404259, 32.539425>,  <45.072918, 41.279659, 32.357433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167545, 41.404259, 32.539425>,  <45.325260, 41.611923, 32.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167545, 41.404259, 32.539425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236082, -0.854671, 0.462388,
		-0.888147, 0.003293, 0.459548,
		-0.394285, -0.519160, -0.758296,
		45.049259, 41.248512, 32.311935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987339, 41.067638, 33.099495>,  <45.325260, 41.611923, 32.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987339, 41.067638, 33.099495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030735, 40.937016, 32.723923>,  <45.056774, 40.858643, 32.498581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030735, 40.937016, 32.723923>,  <44.987339, 41.067638, 33.099495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030735, 40.937016, 32.723923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119108, -0.941972, 0.313852,
		-0.986936, 0.077785, -0.141089,
		0.108489, -0.326557, -0.938931,
		45.063282, 40.839050, 32.442242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540512, 40.616760, 33.047047>,  <44.987339, 41.067638, 33.099495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540512, 40.616760, 33.047047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792645, 40.512405, 32.754578>,  <44.943924, 40.449795, 32.579094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792645, 40.512405, 32.754578>,  <44.540512, 40.616760, 33.047047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792645, 40.512405, 32.754578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050446, -0.953618, 0.296762,
		-0.774684, -0.150174, -0.614258,
		0.630334, -0.260883, -0.731177,
		44.981743, 40.434139, 32.535225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200413, 39.983891, 32.718529>,  <44.540512, 40.616760, 33.047047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200413, 39.983891, 32.718529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589581, 39.971123, 32.626961>,  <44.823082, 39.963463, 32.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589581, 39.971123, 32.626961>,  <44.200413, 39.983891, 32.718529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589581, 39.971123, 32.626961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031603, -0.999488, 0.005067,
		-0.228967, 0.002305, -0.973431,
		0.972921, -0.031924, -0.228923,
		44.881458, 39.961544, 32.558285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374760, 39.269161, 32.333656>,  <44.200413, 39.983891, 32.718529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374760, 39.269161, 32.333656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749249, 39.378170, 32.422401>,  <44.973942, 39.443573, 32.475647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749249, 39.378170, 32.422401>,  <44.374760, 39.269161, 32.333656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749249, 39.378170, 32.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231051, -0.953062, 0.195674,
		0.264772, -0.131933, -0.955243,
		0.936222, 0.272518, 0.221861,
		45.030113, 39.459927, 32.488960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833195, 38.889393, 31.934244>,  <44.374760, 39.269161, 32.333656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833195, 38.889393, 31.934244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062256, 39.012951, 32.237995>,  <45.199692, 39.087086, 32.420246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062256, 39.012951, 32.237995>,  <44.833195, 38.889393, 31.934244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062256, 39.012951, 32.237995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339837, -0.932406, 0.123007,
		0.746043, 0.187624, -0.638919,
		0.572653, 0.308897, 0.759376,
		45.234051, 39.105621, 32.465809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553864, 38.623783, 31.854094>,  <44.833195, 38.889393, 31.934244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553864, 38.623783, 31.854094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521084, 38.689724, 32.247257>,  <45.501415, 38.729286, 32.483154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521084, 38.689724, 32.247257>,  <45.553864, 38.623783, 31.854094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521084, 38.689724, 32.247257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361536, -0.914131, 0.183457,
		0.928750, 0.370391, 0.015317,
		-0.081953, 0.164848, 0.982908,
		45.496498, 38.739178, 32.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133038, 38.390881, 32.163845>,  <45.553864, 38.623783, 31.854094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133038, 38.390881, 32.163845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849949, 38.396080, 32.446396>,  <45.680096, 38.399200, 32.615925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849949, 38.396080, 32.446396>,  <46.133038, 38.390881, 32.163845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849949, 38.396080, 32.446396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137778, -0.978094, 0.156040,
		0.692928, 0.207755, 0.690427,
		-0.707720, 0.012998, 0.706373,
		45.637634, 38.399979, 32.658306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433113, 38.025555, 32.742138>,  <46.133038, 38.390881, 32.163845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433113, 38.025555, 32.742138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043713, 38.064201, 32.825050>,  <45.810074, 38.087391, 32.874798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043713, 38.064201, 32.825050>,  <46.433113, 38.025555, 32.742138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043713, 38.064201, 32.825050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010258, -0.887015, 0.461626,
		0.228462, 0.451519, 0.862517,
		-0.973499, 0.096616, 0.207281,
		45.751663, 38.093185, 32.887234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355373, 37.923767, 33.477489>,  <46.433113, 38.025555, 32.742138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355373, 37.923767, 33.477489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003952, 37.849632, 33.301395>,  <45.793098, 37.805153, 33.195740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003952, 37.849632, 33.301395>,  <46.355373, 37.923767, 33.477489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003952, 37.849632, 33.301395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141949, -0.778713, 0.611111,
		-0.456073, 0.599381, 0.657829,
		-0.878549, -0.185333, -0.440231,
		45.740387, 37.794033, 33.169327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913818, 37.714775, 34.054871>,  <46.355373, 37.923767, 33.477489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913818, 37.714775, 34.054871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743473, 37.583096, 33.717758>,  <45.641266, 37.504089, 33.515491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.743473, 37.583096, 33.717758>,  <45.913818, 37.714775, 34.054871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743473, 37.583096, 33.717758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309376, -0.822338, 0.477542,
		-0.850252, 0.464102, 0.248358,
		-0.425862, -0.329195, -0.842776,
		45.615715, 37.484337, 33.464924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113449, 37.659115, 34.242775>,  <45.913818, 37.714775, 34.054871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113449, 37.659115, 34.242775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258762, 37.421131, 33.955986>,  <45.345951, 37.278339, 33.783913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258762, 37.421131, 33.955986>,  <45.113449, 37.659115, 34.242775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258762, 37.421131, 33.955986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320925, -0.802363, 0.503210,
		-0.874660, 0.047285, -0.482424,
		0.363285, -0.594960, -0.716970,
		45.367748, 37.242641, 33.740894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948578, 37.133762, 34.498989>,  <45.113449, 37.659115, 34.242775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948578, 37.133762, 34.498989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104610, 36.976410, 34.165981>,  <45.198231, 36.882000, 33.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104610, 36.976410, 34.165981>,  <44.948578, 37.133762, 34.498989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104610, 36.976410, 34.165981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135132, -0.918813, 0.370840,
		-0.910809, -0.032159, -0.411572,
		0.390084, -0.393382, -0.832517,
		45.221634, 36.858395, 33.916225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440559, 36.786236, 34.094360>,  <44.948578, 37.133762, 34.498989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440559, 36.786236, 34.094360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795147, 36.632141, 33.991779>,  <45.007900, 36.539684, 33.930229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795147, 36.632141, 33.991779>,  <44.440559, 36.786236, 34.094360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795147, 36.632141, 33.991779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306452, -0.903874, 0.298495,
		-0.346795, -0.186015, -0.919311,
		0.886466, -0.385241, -0.256454,
		45.061085, 36.516567, 33.914845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301292, 36.218357, 33.691849>,  <44.440559, 36.786236, 34.094360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301292, 36.218357, 33.691849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675465, 36.159309, 33.820339>,  <44.899967, 36.123878, 33.897434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675465, 36.159309, 33.820339>,  <44.301292, 36.218357, 33.691849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675465, 36.159309, 33.820339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247567, -0.922186, 0.297124,
		0.252367, -0.357463, -0.899184,
		0.935426, -0.147624, 0.321225,
		44.956093, 36.115021, 33.916706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513119, 35.547726, 33.425583>,  <44.301292, 36.218357, 33.691849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513119, 35.547726, 33.425583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749233, 35.594131, 33.745106>,  <44.890903, 35.621975, 33.936821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749233, 35.594131, 33.745106>,  <44.513119, 35.547726, 33.425583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749233, 35.594131, 33.745106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157598, -0.954009, 0.255009,
		0.791656, -0.276420, -0.544860,
		0.590291, 0.116011, 0.798810,
		44.926319, 35.628933, 33.984749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810658, 34.940800, 33.440327>,  <44.513119, 35.547726, 33.425583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810658, 34.940800, 33.440327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913860, 35.079350, 33.801094>,  <44.975784, 35.162479, 34.017555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913860, 35.079350, 33.801094>,  <44.810658, 34.940800, 33.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913860, 35.079350, 33.801094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119384, -0.914941, 0.385527,
		0.958738, -0.207145, -0.194713,
		0.258011, 0.346374, 0.901918,
		44.991264, 35.183262, 34.071671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200584, 34.475536, 33.728916>,  <44.810658, 34.940800, 33.440327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200584, 34.475536, 33.728916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063984, 34.675034, 34.047569>,  <44.982021, 34.794731, 34.238762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063984, 34.675034, 34.047569>,  <45.200584, 34.475536, 33.728916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063984, 34.675034, 34.047569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265075, -0.864295, 0.427469,
		0.901727, -0.065186, 0.427364,
		-0.341504, 0.498744, 0.796637,
		44.961533, 34.824657, 34.286560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520885, 34.237717, 34.450031>,  <45.200584, 34.475536, 33.728916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520885, 34.237717, 34.450031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147411, 34.372784, 34.497719>,  <44.923328, 34.453823, 34.526333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147411, 34.372784, 34.497719>,  <45.520885, 34.237717, 34.450031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147411, 34.372784, 34.497719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210416, -0.786729, 0.580330,
		0.289751, 0.516760, 0.805608,
		-0.933686, 0.337664, 0.119221,
		44.867306, 34.474083, 34.533485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266922, 34.478535, 34.624935>,  <45.520885, 34.237717, 34.450031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266922, 34.478535, 34.624935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445805, 34.827179, 34.705231>,  <46.553135, 35.036366, 34.753407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445805, 34.827179, 34.705231>,  <46.266922, 34.478535, 34.624935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445805, 34.827179, 34.705231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883892, -0.465013, 0.049973,
		0.136903, 0.155083, -0.978369,
		0.447204, 0.871615, 0.200738,
		46.579967, 35.088665, 34.765453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891029, 34.406319, 34.284489>,  <46.266922, 34.478535, 34.624935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891029, 34.406319, 34.284489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910099, 34.704281, 34.550674>,  <46.921539, 34.883057, 34.710384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910099, 34.704281, 34.550674>,  <46.891029, 34.406319, 34.284489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910099, 34.704281, 34.550674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939126, -0.260365, 0.224169,
		0.340248, 0.614267, -0.711974,
		0.047674, 0.744907, 0.665463,
		46.924400, 34.927753, 34.750313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.556522, 34.723274, 34.243534>,  <46.891029, 34.406319, 34.284489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.556522, 34.723274, 34.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390125, 34.756050, 34.605801>,  <47.290287, 34.775715, 34.823162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390125, 34.756050, 34.605801>,  <47.556522, 34.723274, 34.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390125, 34.756050, 34.605801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872087, -0.246301, 0.422848,
		0.257717, 0.965723, 0.030997,
		-0.415988, 0.081944, 0.905670,
		47.265327, 34.780632, 34.877502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949120, 35.231182, 34.670662>,  <47.556522, 34.723274, 34.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949120, 35.231182, 34.670662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794106, 34.920315, 34.868984>,  <47.701096, 34.733795, 34.987976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794106, 34.920315, 34.868984>,  <47.949120, 35.231182, 34.670662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794106, 34.920315, 34.868984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905469, -0.219957, 0.362966,
		-0.173031, 0.589596, 0.788947,
		-0.387538, -0.777171, 0.495801,
		47.677845, 34.687164, 35.017723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.646152, 34.703823, 45.571629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376186, 34.434422, 45.451042>,  <35.214207, 34.272781, 45.378689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.376186, 34.434422, 45.451042>,  <35.646152, 34.703823, 45.571629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376186, 34.434422, 45.451042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018319, 0.393133, -0.919299,
		0.737670, -0.625969, -0.252992,
		-0.674912, -0.673505, -0.301470,
		35.173714, 34.232368, 45.360600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929245, 34.540478, 44.822365>,  <35.646152, 34.703823, 45.571629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929245, 34.540478, 44.822365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566090, 34.374306, 44.844822>,  <35.348194, 34.274605, 44.858295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566090, 34.374306, 44.844822>,  <35.929245, 34.540478, 44.822365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566090, 34.374306, 44.844822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239646, 0.404462, -0.882599,
		0.343948, -0.814759, -0.466763,
		-0.907893, -0.415426, 0.056140,
		35.293720, 34.249680, 44.861664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876682, 34.101524, 44.299469>,  <35.929245, 34.540478, 44.822365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876682, 34.101524, 44.299469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496208, 34.203087, 44.369644>,  <35.267921, 34.264023, 44.411747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496208, 34.203087, 44.369644>,  <35.876682, 34.101524, 44.299469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496208, 34.203087, 44.369644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059231, 0.407693, -0.911196,
		-0.302878, -0.877109, -0.372754,
		-0.951187, 0.253903, 0.175434,
		35.210854, 34.279259, 44.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509499, 33.797138, 43.753254>,  <35.876682, 34.101524, 44.299469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509499, 33.797138, 43.753254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252701, 34.066032, 43.900734>,  <35.098621, 34.227371, 43.989220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252701, 34.066032, 43.900734>,  <35.509499, 33.797138, 43.753254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252701, 34.066032, 43.900734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204069, 0.313716, -0.927328,
		-0.739053, -0.670579, -0.064221,
		-0.641994, 0.672240, 0.368697,
		35.060104, 34.267704, 44.011345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778706, 33.726612, 43.318012>,  <35.509499, 33.797138, 43.753254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778706, 33.726612, 43.318012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774685, 34.088375, 43.488636>,  <34.772274, 34.305431, 43.591011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774685, 34.088375, 43.488636>,  <34.778706, 33.726612, 43.318012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774685, 34.088375, 43.488636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104542, 0.423291, -0.899942,
		-0.994470, -0.053638, 0.090294,
		-0.010050, 0.904405, 0.426557,
		34.771671, 34.359695, 43.616604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250557, 34.080025, 42.947342>,  <34.778706, 33.726612, 43.318012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250557, 34.080025, 42.947342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475903, 34.367451, 43.110455>,  <34.611111, 34.539906, 43.208321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475903, 34.367451, 43.110455>,  <34.250557, 34.080025, 42.947342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475903, 34.367451, 43.110455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126647, 0.562824, -0.816817,
		-0.816446, 0.408520, 0.408078,
		0.563362, 0.718569, 0.407778,
		34.644913, 34.583023, 43.232788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897087, 34.602924, 42.755348>,  <34.250557, 34.080025, 42.947342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897087, 34.602924, 42.755348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269257, 34.718994, 42.844894>,  <34.492558, 34.788635, 42.898621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269257, 34.718994, 42.844894>,  <33.897087, 34.602924, 42.755348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269257, 34.718994, 42.844894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037730, 0.531751, -0.846060,
		-0.364546, 0.795638, 0.483804,
		0.930421, 0.290174, 0.223867,
		34.548382, 34.806046, 42.912056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955986, 35.342827, 42.641296>,  <33.897087, 34.602924, 42.755348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955986, 35.342827, 42.641296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.326477, 35.194889, 42.612122>,  <34.548771, 35.106125, 42.594616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.326477, 35.194889, 42.612122>,  <33.955986, 35.342827, 42.641296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326477, 35.194889, 42.612122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165888, 0.573625, -0.802145,
		0.338510, 0.730867, 0.592659,
		0.926225, -0.369849, -0.072936,
		34.604343, 35.083935, 42.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422993, 35.976643, 42.480183>,  <33.955986, 35.342827, 42.641296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422993, 35.976643, 42.480183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597858, 35.637524, 42.360092>,  <34.702778, 35.434052, 42.288036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597858, 35.637524, 42.360092>,  <34.422993, 35.976643, 42.480183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597858, 35.637524, 42.360092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129290, 0.389586, -0.911870,
		0.890042, 0.359817, 0.279922,
		0.437160, -0.847794, -0.300227,
		34.729008, 35.383186, 42.270023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974026, 36.166599, 42.219349>,  <34.422993, 35.976643, 42.480183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974026, 36.166599, 42.219349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.954544, 35.801411, 42.057312>,  <34.942856, 35.582298, 41.960091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.954544, 35.801411, 42.057312>,  <34.974026, 36.166599, 42.219349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954544, 35.801411, 42.057312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203890, 0.387950, -0.898846,
		0.977782, -0.126374, 0.167251,
		-0.048706, -0.912976, -0.405097,
		34.939934, 35.527519, 41.935783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595718, 36.086376, 41.789574>,  <34.974026, 36.166599, 42.219349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595718, 36.086376, 41.789574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337826, 35.807655, 41.663849>,  <35.183090, 35.640423, 41.588413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337826, 35.807655, 41.663849>,  <35.595718, 36.086376, 41.789574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337826, 35.807655, 41.663849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154960, 0.283511, -0.946366,
		0.748541, -0.658854, -0.074811,
		-0.644727, -0.696801, -0.314316,
		35.144409, 35.598614, 41.569553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965076, 35.885212, 41.261517>,  <35.595718, 36.086376, 41.789574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965076, 35.885212, 41.261517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602310, 35.737194, 41.180939>,  <35.384651, 35.648384, 41.132591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602310, 35.737194, 41.180939>,  <35.965076, 35.885212, 41.261517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602310, 35.737194, 41.180939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120321, 0.230743, -0.965547,
		0.403775, -0.899904, -0.164740,
		-0.906912, -0.370042, -0.201446,
		35.330238, 35.626183, 41.120506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058064, 35.369747, 40.688335>,  <35.965076, 35.885212, 41.261517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058064, 35.369747, 40.688335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 35.493607, 40.678032>,  <35.449745, 35.567921, 40.671848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677864, 35.493607, 40.678032>,  <36.058064, 35.369747, 40.688335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677864, 35.493607, 40.678032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030901, 0.011701, -0.999454,
		-0.309178, -0.950779, -0.020690,
		-0.950502, 0.309648, -0.025762,
		35.392712, 35.586502, 40.670303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712589, 34.886292, 40.226517>,  <36.058064, 35.369747, 40.688335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712589, 34.886292, 40.226517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513466, 35.231277, 40.263058>,  <35.393993, 35.438271, 40.284985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513466, 35.231277, 40.263058>,  <35.712589, 34.886292, 40.226517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513466, 35.231277, 40.263058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146584, 0.020151, -0.988993,
		-0.854812, -0.505716, 0.116393,
		-0.497804, 0.862465, 0.091355,
		35.364124, 35.490017, 40.290462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275478, 34.753799, 39.669971>,  <35.712589, 34.886292, 40.226517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275478, 34.753799, 39.669971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245937, 35.140812, 39.766655>,  <35.228214, 35.373020, 39.824665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245937, 35.140812, 39.766655>,  <35.275478, 34.753799, 39.669971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245937, 35.140812, 39.766655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206324, 0.222302, -0.952897,
		-0.975693, -0.120241, 0.183208,
		-0.073850, 0.967535, 0.241708,
		35.223782, 35.431072, 39.839169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750057, 35.013062, 39.248489>,  <35.275478, 34.753799, 39.669971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750057, 35.013062, 39.248489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956200, 35.336113, 39.363132>,  <35.079884, 35.529945, 39.431919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956200, 35.336113, 39.363132>,  <34.750057, 35.013062, 39.248489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956200, 35.336113, 39.363132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023884, 0.347848, -0.937247,
		-0.856642, 0.476172, 0.198556,
		0.515358, 0.807627, 0.286608,
		35.110806, 35.578400, 39.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363220, 35.600933, 39.075287>,  <34.750057, 35.013062, 39.248489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363220, 35.600933, 39.075287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740437, 35.728111, 39.114452>,  <34.966766, 35.804417, 39.137951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740437, 35.728111, 39.114452>,  <34.363220, 35.600933, 39.075287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740437, 35.728111, 39.114452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064280, 0.462914, -0.884069,
		-0.326410, 0.827419, 0.456984,
		0.943040, 0.317944, 0.097913,
		35.023350, 35.823494, 39.143826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345970, 36.311272, 38.899578>,  <34.363220, 35.600933, 39.075287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345970, 36.311272, 38.899578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726555, 36.191814, 38.869850>,  <34.954906, 36.120140, 38.852013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726555, 36.191814, 38.869850>,  <34.345970, 36.311272, 38.899578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726555, 36.191814, 38.869850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121595, 0.586647, -0.800662,
		0.282712, 0.752766, 0.594488,
		0.951466, -0.298644, -0.074319,
		35.011993, 36.102222, 38.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802105, 36.889656, 38.651886>,  <34.345970, 36.311272, 38.899578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802105, 36.889656, 38.651886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031067, 36.581268, 38.540199>,  <35.168442, 36.396236, 38.473186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031067, 36.581268, 38.540199>,  <34.802105, 36.889656, 38.651886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031067, 36.581268, 38.540199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239976, 0.483121, -0.842024,
		0.784071, 0.414971, 0.461554,
		0.572402, -0.770969, -0.279218,
		35.202789, 36.349979, 38.456432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343540, 37.256413, 38.387711>,  <34.802105, 36.889656, 38.651886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343540, 37.256413, 38.387711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362503, 36.888992, 38.230732>,  <35.373882, 36.668541, 38.136547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362503, 36.888992, 38.230732>,  <35.343540, 37.256413, 38.387711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362503, 36.888992, 38.230732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247155, 0.391455, -0.886384,
		0.967815, -0.054970, 0.245584,
		0.047411, -0.918554, -0.392442,
		35.376728, 36.613426, 38.112999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861568, 37.265152, 37.924683>,  <35.343540, 37.256413, 38.387711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861568, 37.265152, 37.924683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650009, 36.951603, 37.794563>,  <35.523075, 36.763474, 37.716492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650009, 36.951603, 37.794563>,  <35.861568, 37.265152, 37.924683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650009, 36.951603, 37.794563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047242, 0.355504, -0.933480,
		0.847372, -0.509079, -0.150992,
		-0.528893, -0.783872, -0.325294,
		35.491341, 36.716442, 37.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283081, 37.004559, 37.494980>,  <35.861568, 37.265152, 37.924683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283081, 37.004559, 37.494980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924763, 36.855366, 37.398296>,  <35.709770, 36.765850, 37.340286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924763, 36.855366, 37.398296>,  <36.283081, 37.004559, 37.494980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924763, 36.855366, 37.398296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046768, 0.461706, -0.885799,
		0.441984, -0.804806, -0.396154,
		-0.895802, -0.372982, -0.241706,
		35.656021, 36.743469, 37.325783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818989, 36.809811, 37.993858>,  <36.283081, 37.004559, 37.494980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818989, 36.809811, 37.993858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175617, 36.863167, 37.820740>,  <37.389595, 36.895180, 37.716869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175617, 36.863167, 37.820740>,  <36.818989, 36.809811, 37.993858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175617, 36.863167, 37.820740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449270, -0.139961, 0.882365,
		0.057124, -0.981131, -0.184713,
		0.891568, 0.133391, -0.432798,
		37.443089, 36.903183, 37.690899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265373, 36.229240, 38.223225>,  <36.818989, 36.809811, 37.993858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265373, 36.229240, 38.223225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513889, 36.530964, 38.138348>,  <37.662998, 36.711998, 38.087421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513889, 36.530964, 38.138348>,  <37.265373, 36.229240, 38.223225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513889, 36.530964, 38.138348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354944, -0.029487, 0.934422,
		0.698583, -0.655861, -0.286056,
		0.621286, 0.754305, -0.212196,
		37.700275, 36.757256, 38.074688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887234, 35.991119, 38.317333>,  <37.265373, 36.229240, 38.223225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887234, 35.991119, 38.317333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884636, 36.388775, 38.360493>,  <37.883080, 36.627369, 38.386387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884636, 36.388775, 38.360493>,  <37.887234, 35.991119, 38.317333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884636, 36.388775, 38.360493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264085, -0.102364, 0.959052,
		0.964478, 0.034719, -0.261873,
		-0.006491, 0.994141, 0.107897,
		37.882690, 36.687016, 38.392860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561031, 36.284145, 38.497749>,  <37.887234, 35.991119, 38.317333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561031, 36.284145, 38.497749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327309, 36.582695, 38.625195>,  <38.187077, 36.761826, 38.701660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327309, 36.582695, 38.625195>,  <38.561031, 36.284145, 38.497749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327309, 36.582695, 38.625195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382328, -0.093126, 0.919322,
		0.715828, 0.658979, -0.230946,
		-0.584307, 0.746374, 0.318608,
		38.152016, 36.806606, 38.720776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904247, 36.586163, 39.027699>,  <38.561031, 36.284145, 38.497749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904247, 36.586163, 39.027699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573666, 36.790253, 39.122898>,  <38.375317, 36.912708, 39.180019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573666, 36.790253, 39.122898>,  <38.904247, 36.586163, 39.027699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573666, 36.790253, 39.122898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272962, -0.006595, 0.962002,
		0.492411, 0.860013, -0.133823,
		-0.826452, 0.510229, 0.237998,
		38.325729, 36.943321, 39.194298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132210, 36.953987, 39.624893>,  <38.904247, 36.586163, 39.027699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132210, 36.953987, 39.624893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733913, 36.986855, 39.608212>,  <38.494934, 37.006573, 39.598202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733913, 36.986855, 39.608212>,  <39.132210, 36.953987, 39.624893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733913, 36.986855, 39.608212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053884, -0.152054, 0.986902,
		0.074748, 0.984951, 0.155834,
		-0.995746, 0.082166, -0.041707,
		38.435188, 37.011505, 39.595699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026913, 37.412262, 40.146984>,  <39.132210, 36.953987, 39.624893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026913, 37.412262, 40.146984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683163, 37.216259, 40.088512>,  <38.476913, 37.098656, 40.053429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683163, 37.216259, 40.088512>,  <39.026913, 37.412262, 40.146984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683163, 37.216259, 40.088512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003393, -0.280394, 0.959879,
		-0.511334, 0.825392, 0.239301,
		-0.859376, -0.490006, -0.146176,
		38.425350, 37.069256, 40.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620975, 37.621826, 40.688797>,  <39.026913, 37.412262, 40.146984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620975, 37.621826, 40.688797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462563, 37.268494, 40.588486>,  <38.367516, 37.056496, 40.528297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462563, 37.268494, 40.588486>,  <38.620975, 37.621826, 40.688797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462563, 37.268494, 40.588486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006626, -0.270352, 0.962739,
		-0.918212, 0.382938, 0.101216,
		-0.396033, -0.883328, -0.250778,
		38.343754, 37.003494, 40.513252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142006, 37.416592, 41.317036>,  <38.620975, 37.621826, 40.688797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142006, 37.416592, 41.317036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201668, 37.072632, 41.121765>,  <38.237465, 36.866257, 41.004601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201668, 37.072632, 41.121765>,  <38.142006, 37.416592, 41.317036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201668, 37.072632, 41.121765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073908, -0.482626, 0.872702,
		-0.986048, -0.166249, -0.008433,
		0.149156, -0.859903, -0.488180,
		38.246414, 36.814659, 40.975311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567421, 36.955311, 41.403816>,  <38.142006, 37.416592, 41.317036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567421, 36.955311, 41.403816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887276, 36.728722, 41.324131>,  <38.079189, 36.592770, 41.276318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887276, 36.728722, 41.324131>,  <37.567421, 36.955311, 41.403816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887276, 36.728722, 41.324131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092426, -0.443921, 0.891286,
		-0.593323, -0.694296, -0.407334,
		0.799641, -0.566469, -0.199217,
		38.127167, 36.558781, 41.264366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354549, 36.332142, 41.587986>,  <37.567421, 36.955311, 41.403816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354549, 36.332142, 41.587986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754524, 36.335049, 41.584427>,  <37.994507, 36.336792, 41.582291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754524, 36.335049, 41.584427>,  <37.354549, 36.332142, 41.587986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754524, 36.335049, 41.584427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011132, -0.421689, 0.906672,
		0.002839, -0.906712, -0.421742,
		0.999934, 0.007269, -0.008896,
		38.054504, 36.337231, 41.581757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538601, 35.636433, 41.760338>,  <37.354549, 36.332142, 41.587986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538601, 35.636433, 41.760338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867073, 35.849983, 41.840984>,  <38.064156, 35.978111, 41.889374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867073, 35.849983, 41.840984>,  <37.538601, 35.636433, 41.760338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867073, 35.849983, 41.840984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076987, -0.453700, 0.887823,
		0.565458, -0.713537, -0.413669,
		0.821176, 0.533874, 0.201615,
		38.113426, 36.010147, 41.901470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101902, 35.171181, 41.950974>,  <37.538601, 35.636433, 41.760338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101902, 35.171181, 41.950974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190140, 35.531281, 42.101116>,  <38.243080, 35.747341, 42.191200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190140, 35.531281, 42.101116>,  <38.101902, 35.171181, 41.950974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190140, 35.531281, 42.101116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044403, -0.393703, 0.918164,
		0.974355, -0.185872, -0.126821,
		0.220591, 0.900250, 0.375354,
		38.256317, 35.801353, 42.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707973, 35.029125, 42.316128>,  <38.101902, 35.171181, 41.950974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707973, 35.029125, 42.316128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571655, 35.375465, 42.462639>,  <38.489864, 35.583271, 42.550545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571655, 35.375465, 42.462639>,  <38.707973, 35.029125, 42.316128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571655, 35.375465, 42.462639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295456, -0.271221, 0.916049,
		0.892506, 0.420400, -0.163392,
		-0.340792, 0.865854, 0.366276,
		38.469418, 35.635223, 42.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089977, 35.189144, 42.888809>,  <38.707973, 35.029125, 42.316128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089977, 35.189144, 42.888809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790192, 35.445934, 42.953506>,  <38.610321, 35.600010, 42.992325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.790192, 35.445934, 42.953506>,  <39.089977, 35.189144, 42.888809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790192, 35.445934, 42.953506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135601, -0.090278, 0.986642,
		0.648006, 0.761388, -0.019393,
		-0.749467, 0.641980, 0.161746,
		38.565353, 35.638527, 43.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297241, 35.593407, 43.475456>,  <39.089977, 35.189144, 42.888809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297241, 35.593407, 43.475456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898041, 35.580048, 43.453972>,  <38.658520, 35.572033, 43.441082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898041, 35.580048, 43.453972>,  <39.297241, 35.593407, 43.475456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898041, 35.580048, 43.453972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043677, -0.250242, 0.967198,
		-0.045744, 0.967607, 0.248283,
		-0.997998, -0.033399, -0.053709,
		38.598640, 35.570026, 43.437859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052910, 35.956921, 44.176121>,  <39.297241, 35.593407, 43.475456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052910, 35.956921, 44.176121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726292, 35.771275, 44.038803>,  <38.530323, 35.659885, 43.956413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726292, 35.771275, 44.038803>,  <39.052910, 35.956921, 44.176121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726292, 35.771275, 44.038803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246664, -0.257157, 0.934359,
		-0.521935, 0.847622, 0.095498,
		-0.816542, -0.464119, -0.343297,
		38.481331, 35.632038, 43.935814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417164, 36.276432, 44.509083>,  <39.052910, 35.956921, 44.176121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417164, 36.276432, 44.509083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356339, 35.901836, 44.382671>,  <38.319843, 35.677078, 44.306824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356339, 35.901836, 44.382671>,  <38.417164, 36.276432, 44.509083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356339, 35.901836, 44.382671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296801, -0.261721, 0.918375,
		-0.942755, 0.233447, -0.238151,
		-0.152063, -0.936486, -0.316026,
		38.310719, 35.620892, 44.287865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.734585, 36.011917, 44.837471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861351, 35.664764, 44.684456>,  <37.937412, 35.456470, 44.592648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861351, 35.664764, 44.684456>,  <37.734585, 36.011917, 44.837471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861351, 35.664764, 44.684456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201886, -0.455818, 0.866875,
		-0.926717, -0.197498, -0.319671,
		0.316918, -0.867885, -0.382542,
		37.956425, 35.404400, 44.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190163, 35.499195, 44.995926>,  <37.734585, 36.011917, 44.837471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190163, 35.499195, 44.995926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524635, 35.292027, 44.923763>,  <37.725319, 35.167725, 44.880463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524635, 35.292027, 44.923763>,  <37.190163, 35.499195, 44.995926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524635, 35.292027, 44.923763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208080, -0.603946, 0.769384,
		-0.507442, -0.605808, -0.612780,
		0.836185, -0.517925, -0.180410,
		37.775490, 35.136650, 44.869640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009373, 34.762009, 44.894138>,  <37.190163, 35.499195, 44.995926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009373, 34.762009, 44.894138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383717, 34.809010, 45.027020>,  <37.608322, 34.837208, 45.106750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383717, 34.809010, 45.027020>,  <37.009373, 34.762009, 44.894138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383717, 34.809010, 45.027020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180656, -0.649450, 0.738632,
		0.302538, -0.751271, -0.586568,
		0.935860, 0.117498, 0.332205,
		37.664474, 34.844257, 45.126682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173920, 34.096569, 45.174828>,  <37.009373, 34.762009, 44.894138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173920, 34.096569, 45.174828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440399, 34.349113, 45.333599>,  <37.600288, 34.500641, 45.428864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440399, 34.349113, 45.333599>,  <37.173920, 34.096569, 45.174828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440399, 34.349113, 45.333599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006149, -0.536874, 0.843640,
		0.745746, -0.559594, -0.361549,
		0.666202, 0.631365, 0.396931,
		37.640259, 34.538525, 45.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512867, 33.655018, 45.569859>,  <37.173920, 34.096569, 45.174828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512867, 33.655018, 45.569859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651844, 34.000381, 45.716179>,  <37.735229, 34.207600, 45.803970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651844, 34.000381, 45.716179>,  <37.512867, 33.655018, 45.569859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651844, 34.000381, 45.716179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037846, -0.376870, 0.925493,
		0.936937, -0.335399, -0.098264,
		0.347443, 0.863409, 0.365797,
		37.756077, 34.259403, 45.825916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119316, 33.506973, 46.041588>,  <37.512867, 33.655018, 45.569859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119316, 33.506973, 46.041588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967663, 33.862637, 46.144085>,  <37.876671, 34.076035, 46.205585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967663, 33.862637, 46.144085>,  <38.119316, 33.506973, 46.041588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967663, 33.862637, 46.144085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020957, -0.285101, 0.958268,
		0.925105, 0.357940, 0.126725,
		-0.379131, 0.889155, 0.256248,
		37.853924, 34.129383, 46.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499481, 33.769638, 46.610783>,  <38.119316, 33.506973, 46.041588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499481, 33.769638, 46.610783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156284, 33.973698, 46.634758>,  <37.950367, 34.096134, 46.649143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156284, 33.973698, 46.634758>,  <38.499481, 33.769638, 46.610783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156284, 33.973698, 46.634758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116985, -0.307701, 0.944264,
		0.500158, 0.803163, 0.323686,
		-0.857996, 0.510147, 0.059941,
		37.898884, 34.126743, 46.652740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537525, 34.062828, 47.266293>,  <38.499481, 33.769638, 46.610783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537525, 34.062828, 47.266293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151108, 34.119278, 47.179714>,  <37.919258, 34.153149, 47.127769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151108, 34.119278, 47.179714>,  <38.537525, 34.062828, 47.266293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151108, 34.119278, 47.179714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236146, -0.142213, 0.961255,
		0.104873, 0.979724, 0.170709,
		-0.966042, 0.141122, -0.216444,
		37.861294, 34.161613, 47.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276375, 34.638443, 47.606976>,  <38.537525, 34.062828, 47.266293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276375, 34.638443, 47.606976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971691, 34.390377, 47.531933>,  <37.788879, 34.241539, 47.486908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971691, 34.390377, 47.531933>,  <38.276375, 34.638443, 47.606976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971691, 34.390377, 47.531933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202444, -0.047257, 0.978153,
		-0.615480, 0.783048, -0.089553,
		-0.761709, -0.620163, -0.187609,
		37.743179, 34.204327, 47.475651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752045, 34.975594, 47.893845>,  <38.276375, 34.638443, 47.606976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752045, 34.975594, 47.893845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597454, 34.607460, 47.869751>,  <37.504700, 34.386581, 47.855293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597454, 34.607460, 47.869751>,  <37.752045, 34.975594, 47.893845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597454, 34.607460, 47.869751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137234, -0.007201, 0.990512,
		-0.912032, 0.391077, -0.123518,
		-0.386477, -0.920330, -0.060237,
		37.481510, 34.331360, 47.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213898, 35.003796, 48.254471>,  <37.752045, 34.975594, 47.893845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213898, 35.003796, 48.254471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304131, 34.614357, 48.240429>,  <37.358269, 34.380695, 48.232002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304131, 34.614357, 48.240429>,  <37.213898, 35.003796, 48.254471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304131, 34.614357, 48.240429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082028, -0.054885, 0.995118,
		-0.970765, -0.221599, -0.092243,
		0.225579, -0.973592, -0.035103,
		37.371803, 34.322281, 48.229897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780552, 34.712547, 48.761421>,  <37.213898, 35.003796, 48.254471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780552, 34.712547, 48.761421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041012, 34.411991, 48.718704>,  <37.197289, 34.231655, 48.693073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041012, 34.411991, 48.718704>,  <36.780552, 34.712547, 48.761421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041012, 34.411991, 48.718704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109970, -0.232644, 0.966324,
		-0.750936, -0.617482, -0.234118,
		0.651154, -0.751394, -0.106796,
		37.236359, 34.186573, 48.686665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464085, 34.069134, 48.961040>,  <36.780552, 34.712547, 48.761421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464085, 34.069134, 48.961040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858562, 34.007801, 48.986031>,  <37.095249, 33.971001, 49.001026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858562, 34.007801, 48.986031>,  <36.464085, 34.069134, 48.961040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858562, 34.007801, 48.986031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123193, -0.427402, 0.895629,
		-0.110626, -0.890964, -0.440392,
		0.986197, -0.153333, 0.062478,
		37.154423, 33.961800, 49.004772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542065, 33.384064, 49.137592>,  <36.464085, 34.069134, 48.961040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542065, 33.384064, 49.137592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905628, 33.533154, 49.212391>,  <37.123764, 33.622608, 49.257271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905628, 33.533154, 49.212391>,  <36.542065, 33.384064, 49.137592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905628, 33.533154, 49.212391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054512, -0.550782, 0.832867,
		0.413423, -0.746804, -0.520927,
		0.908906, 0.372723, 0.186996,
		37.178299, 33.644970, 49.268490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998192, 32.773483, 49.290218>,  <36.542065, 33.384064, 49.137592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998192, 32.773483, 49.290218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166897, 33.096355, 49.455421>,  <37.268120, 33.290077, 49.554543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166897, 33.096355, 49.455421>,  <36.998192, 32.773483, 49.290218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166897, 33.096355, 49.455421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235033, -0.537264, 0.810004,
		0.875716, -0.244556, -0.416310,
		0.421760, 0.807180, 0.413012,
		37.293427, 33.338509, 49.579327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638821, 32.581604, 49.497135>,  <36.998192, 32.773483, 49.290218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638821, 32.581604, 49.497135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538273, 32.904205, 49.711189>,  <37.477943, 33.097767, 49.839622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538273, 32.904205, 49.711189>,  <37.638821, 32.581604, 49.497135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538273, 32.904205, 49.711189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249367, -0.480263, 0.840930,
		0.935217, 0.344827, -0.080392,
		-0.251366, 0.806499, 0.535139,
		37.462864, 33.146156, 49.871731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177151, 32.591854, 50.029591>,  <37.638821, 32.581604, 49.497135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177151, 32.591854, 50.029591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926945, 32.869728, 50.171658>,  <37.776821, 33.036453, 50.256897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926945, 32.869728, 50.171658>,  <38.177151, 32.591854, 50.029591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926945, 32.869728, 50.171658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033942, -0.479015, 0.877150,
		0.779475, 0.536614, 0.323209,
		-0.625514, 0.694687, 0.355166,
		37.739292, 33.078133, 50.278206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439789, 32.869286, 50.617481>,  <38.177151, 32.591854, 50.029591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439789, 32.869286, 50.617481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045174, 32.926426, 50.649330>,  <37.808407, 32.960712, 50.668442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045174, 32.926426, 50.649330>,  <38.439789, 32.869286, 50.617481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045174, 32.926426, 50.649330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009226, -0.437489, 0.899176,
		0.163286, 0.887804, 0.430281,
		-0.986536, 0.142853, 0.079627,
		37.749214, 32.969280, 50.673218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391487, 33.096413, 51.284023>,  <38.439789, 32.869286, 50.617481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391487, 33.096413, 51.284023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032608, 32.947227, 51.189415>,  <37.817280, 32.857716, 51.132652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032608, 32.947227, 51.189415>,  <38.391487, 33.096413, 51.284023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032608, 32.947227, 51.189415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006089, -0.525054, 0.851047,
		-0.441592, 0.764996, 0.468805,
		-0.897195, -0.372961, -0.236518,
		37.763451, 32.835339, 51.118458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859451, 33.268848, 51.868755>,  <38.391487, 33.096413, 51.284023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859451, 33.268848, 51.868755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717560, 32.948914, 51.675087>,  <37.632427, 32.756950, 51.558884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717560, 32.948914, 51.675087>,  <37.859451, 33.268848, 51.868755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717560, 32.948914, 51.675087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186182, -0.447051, 0.874918,
		-0.916246, 0.400500, 0.009664,
		-0.354725, -0.799841, -0.484175,
		37.611141, 32.708961, 51.529835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251957, 33.294640, 52.116375>,  <37.859451, 33.268848, 51.868755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251957, 33.294640, 52.116375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270123, 32.921726, 51.972828>,  <37.281021, 32.697979, 51.886700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270123, 32.921726, 51.972828>,  <37.251957, 33.294640, 52.116375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270123, 32.921726, 51.972828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498333, -0.332490, 0.800696,
		-0.865795, 0.142470, -0.479688,
		0.045417, -0.932284, -0.358865,
		37.283749, 32.642040, 51.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554844, 32.819027, 52.307583>,  <37.251957, 33.294640, 52.116375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554844, 32.819027, 52.307583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842407, 32.572227, 52.179527>,  <37.014946, 32.424149, 52.102692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842407, 32.572227, 52.179527>,  <36.554844, 32.819027, 52.307583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842407, 32.572227, 52.179527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320689, -0.703019, 0.634762,
		-0.616709, -0.353670, -0.703269,
		0.718908, -0.616995, -0.320141,
		37.058079, 32.387131, 52.083485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234291, 32.250946, 51.801937>,  <36.554844, 32.819027, 52.307583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234291, 32.250946, 51.801937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545650, 32.198895, 52.047592>,  <36.732468, 32.167664, 52.194984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545650, 32.198895, 52.047592>,  <36.234291, 32.250946, 51.801937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545650, 32.198895, 52.047592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566607, -0.566819, 0.598058,
		0.270279, -0.813501, -0.514942,
		0.778399, -0.130127, 0.614134,
		36.779171, 32.159855, 52.231831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234497, 31.583750, 51.892719>,  <36.234291, 32.250946, 51.801937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234497, 31.583750, 51.892719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426514, 31.749426, 52.202042>,  <36.541725, 31.848831, 52.387634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426514, 31.749426, 52.202042>,  <36.234497, 31.583750, 51.892719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426514, 31.749426, 52.202042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541657, -0.553461, 0.632684,
		0.690048, -0.722583, -0.041336,
		0.480044, 0.414192, 0.773306,
		36.570526, 31.873684, 52.434032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622280, 31.699387, 52.299885>,  <36.234497, 31.583750, 51.892719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622280, 31.699387, 52.299885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250504, 31.566492, 52.364082>,  <35.027439, 31.486755, 52.402603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250504, 31.566492, 52.364082>,  <35.622280, 31.699387, 52.299885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250504, 31.566492, 52.364082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125322, -0.124870, -0.984227,
		0.347040, -0.934893, 0.074422,
		-0.929439, -0.332239, 0.160497,
		34.971672, 31.466820, 52.412231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598686, 31.033920, 52.059219>,  <35.622280, 31.699387, 52.299885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598686, 31.033920, 52.059219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231033, 31.191494, 52.058197>,  <35.010441, 31.286037, 52.057583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231033, 31.191494, 52.058197>,  <35.598686, 31.033920, 52.059219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231033, 31.191494, 52.058197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088780, -0.213458, -0.972910,
		-0.383809, -0.894009, 0.231170,
		-0.919135, 0.393934, -0.002556,
		34.955292, 31.309673, 52.057430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263123, 30.612278, 51.646969>,  <35.598686, 31.033920, 52.059219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263123, 30.612278, 51.646969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994129, 30.907465, 51.669456>,  <34.832733, 31.084578, 51.682949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994129, 30.907465, 51.669456>,  <35.263123, 30.612278, 51.646969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994129, 30.907465, 51.669456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216074, -0.123120, -0.968583,
		-0.707865, -0.663507, 0.242253,
		-0.672488, 0.737970, 0.056214,
		34.792381, 31.128857, 51.686321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659962, 30.352554, 51.354965>,  <35.263123, 30.612278, 51.646969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659962, 30.352554, 51.354965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667534, 30.751690, 51.329807>,  <34.672077, 30.991171, 51.314713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667534, 30.751690, 51.329807>,  <34.659962, 30.352554, 51.354965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667534, 30.751690, 51.329807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074589, -0.061325, -0.995327,
		-0.997035, 0.023533, 0.073267,
		0.018930, 0.997840, -0.062898,
		34.673214, 31.051043, 51.310936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101013, 30.570784, 50.781033>,  <34.659962, 30.352554, 51.354965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101013, 30.570784, 50.781033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 30.912359, 50.821705>,  <34.427631, 31.117304, 50.846107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305149, 30.912359, 50.821705>,  <34.101013, 30.570784, 50.781033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305149, 30.912359, 50.821705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063410, 0.080554, -0.994731,
		-0.857629, 0.514103, -0.013038,
		0.510344, 0.853937, 0.101685,
		34.458252, 31.168541, 50.852211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824883, 31.027256, 50.261955>,  <34.101013, 30.570784, 50.781033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824883, 31.027256, 50.261955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192974, 31.161161, 50.343067>,  <34.413830, 31.241505, 50.391735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192974, 31.161161, 50.343067>,  <33.824883, 31.027256, 50.261955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192974, 31.161161, 50.343067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171003, 0.122161, -0.977668,
		-0.352059, 0.934350, 0.055170,
		0.920224, 0.334762, 0.202784,
		34.469040, 31.261591, 50.403904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783485, 31.628452, 49.929657>,  <33.824883, 31.027256, 50.261955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783485, 31.628452, 49.929657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173672, 31.572531, 49.997681>,  <34.407784, 31.538977, 50.038494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173672, 31.572531, 49.997681>,  <33.783485, 31.628452, 49.929657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173672, 31.572531, 49.997681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210373, 0.364363, -0.907184,
		0.064868, 0.920703, 0.384835,
		0.975467, -0.139806, 0.170055,
		34.466312, 31.530588, 50.048698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127739, 32.197849, 49.689373>,  <33.783485, 31.628452, 49.929657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127739, 32.197849, 49.689373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429798, 31.935778, 49.680542>,  <34.611034, 31.778536, 49.675243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429798, 31.935778, 49.680542>,  <34.127739, 32.197849, 49.689373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429798, 31.935778, 49.680542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224883, 0.290539, -0.930062,
		0.615770, 0.697373, 0.366739,
		0.755153, -0.655177, -0.022078,
		34.656345, 31.739225, 49.673920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698792, 32.548943, 49.344204>,  <34.127739, 32.197849, 49.689373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698792, 32.548943, 49.344204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805500, 32.163689, 49.330318>,  <34.869526, 31.932537, 49.321987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805500, 32.163689, 49.330318>,  <34.698792, 32.548943, 49.344204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805500, 32.163689, 49.330318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521247, 0.174489, -0.835377,
		0.810638, 0.204758, 0.548580,
		0.266771, -0.963135, -0.034718,
		34.885532, 31.874748, 49.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406700, 32.498745, 49.347569>,  <34.698792, 32.548943, 49.344204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406700, 32.498745, 49.347569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245373, 32.175549, 49.175762>,  <35.148579, 31.981630, 49.072678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245373, 32.175549, 49.175762>,  <35.406700, 32.498745, 49.347569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245373, 32.175549, 49.175762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544530, 0.165312, -0.822289,
		0.735407, -0.565527, 0.373303,
		-0.403315, -0.807992, -0.429518,
		35.124378, 31.933151, 49.046906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901733, 32.132030, 49.103138>,  <35.406700, 32.498745, 49.347569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901733, 32.132030, 49.103138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583797, 32.027145, 48.884239>,  <35.393036, 31.964216, 48.752899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583797, 32.027145, 48.884239>,  <35.901733, 32.132030, 49.103138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583797, 32.027145, 48.884239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527306, 0.147845, -0.836714,
		0.300303, -0.953618, 0.020752,
		-0.794838, -0.262210, -0.547247,
		35.345345, 31.948483, 48.720066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224266, 31.934420, 48.533321>,  <35.901733, 32.132030, 49.103138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224266, 31.934420, 48.533321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849483, 31.974518, 48.399418>,  <35.624615, 31.998577, 48.319077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849483, 31.974518, 48.399418>,  <36.224266, 31.934420, 48.533321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849483, 31.974518, 48.399418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340064, 0.482032, -0.807467,
		0.080416, -0.870400, -0.485734,
		-0.936958, 0.100247, -0.334754,
		35.568398, 32.004593, 48.298992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224949, 31.742804, 47.729542>,  <36.224266, 31.934420, 48.533321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224949, 31.742804, 47.729542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888916, 31.952744, 47.784374>,  <35.687298, 32.078709, 47.817272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888916, 31.952744, 47.784374>,  <36.224949, 31.742804, 47.729542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888916, 31.952744, 47.784374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046431, 0.321345, -0.945823,
		-0.540466, -0.788206, -0.294326,
		-0.840083, 0.524852, 0.137079,
		35.636890, 32.110199, 47.825497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850090, 31.826540, 47.036877>,  <36.224949, 31.742804, 47.729542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850090, 31.826540, 47.036877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639835, 32.101322, 47.237595>,  <35.513683, 32.266193, 47.358025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.639835, 32.101322, 47.237595>,  <35.850090, 31.826540, 47.036877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639835, 32.101322, 47.237595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169113, 0.493701, -0.853030,
		-0.833729, -0.533245, -0.143336,
		-0.525639, 0.686956, 0.501792,
		35.482143, 32.307407, 47.388134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131542, 31.871429, 46.756626>,  <35.850090, 31.826540, 47.036877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131542, 31.871429, 46.756626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213909, 32.222740, 46.929241>,  <35.263329, 32.433525, 47.032810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213909, 32.222740, 46.929241>,  <35.131542, 31.871429, 46.756626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213909, 32.222740, 46.929241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247105, 0.473367, -0.845496,
		-0.946857, 0.067464, 0.314500,
		0.205915, 0.878278, 0.431540,
		35.275684, 32.486225, 47.058704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661762, 32.356403, 46.510845>,  <35.131542, 31.871429, 46.756626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661762, 32.356403, 46.510845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935291, 32.598721, 46.673519>,  <35.099411, 32.744110, 46.771122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935291, 32.598721, 46.673519>,  <34.661762, 32.356403, 46.510845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935291, 32.598721, 46.673519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180727, 0.680631, -0.709985,
		-0.706908, 0.412008, 0.574918,
		0.683827, 0.605797, 0.406683,
		35.140438, 32.780460, 46.795525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346951, 32.935497, 46.428139>,  <34.661762, 32.356403, 46.510845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346951, 32.935497, 46.428139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724079, 33.048065, 46.499565>,  <34.950356, 33.115604, 46.542419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724079, 33.048065, 46.499565>,  <34.346951, 32.935497, 46.428139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724079, 33.048065, 46.499565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043386, 0.634842, -0.771423,
		-0.330455, 0.719569, 0.610754,
		0.942824, 0.281419, 0.178567,
		35.006927, 33.132492, 46.553135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350105, 33.653671, 46.642860>,  <34.346951, 32.935497, 46.428139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350105, 33.653671, 46.642860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700909, 33.553520, 46.478828>,  <34.911392, 33.493431, 46.380409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700909, 33.553520, 46.478828>,  <34.350105, 33.653671, 46.642860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700909, 33.553520, 46.478828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163196, 0.647518, -0.744371,
		0.451907, 0.719744, 0.527019,
		0.877011, -0.250379, -0.410076,
		34.964012, 33.478405, 46.355804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635239, 34.284954, 46.507774>,  <34.350105, 33.653671, 46.642860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635239, 34.284954, 46.507774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840996, 34.023232, 46.286041>,  <34.964451, 33.866196, 46.153004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840996, 34.023232, 46.286041>,  <34.635239, 34.284954, 46.507774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840996, 34.023232, 46.286041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236147, 0.513338, -0.825056,
		0.824402, 0.555303, 0.109542,
		0.514389, -0.654310, -0.554331,
		34.995312, 33.826939, 46.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015984, 34.706337, 46.103928>,  <34.635239, 34.284954, 46.507774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015984, 34.706337, 46.103928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018902, 34.361633, 45.901024>,  <35.020653, 34.154812, 45.779282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018902, 34.361633, 45.901024>,  <35.015984, 34.706337, 46.103928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018902, 34.361633, 45.901024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018362, 0.507301, -0.861573,
		0.999805, -0.003028, 0.019524,
		0.007296, -0.861763, -0.507258,
		35.021091, 34.103104, 45.748848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.520695, 42.984837, 32.865578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175117, 42.783543, 32.873089>,  <41.967770, 42.662766, 32.877594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175117, 42.783543, 32.873089>,  <42.520695, 42.984837, 32.865578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175117, 42.783543, 32.873089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479409, -0.810478, 0.336589,
		-0.154168, 0.299794, 0.941465,
		-0.863944, -0.503238, 0.018774,
		41.915936, 42.632572, 32.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396259, 42.784538, 33.566376>,  <42.520695, 42.984837, 32.865578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396259, 42.784538, 33.566376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196049, 42.536545, 33.324684>,  <42.075920, 42.387749, 33.179668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196049, 42.536545, 33.324684>,  <42.396259, 42.784538, 33.566376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196049, 42.536545, 33.324684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358018, -0.783706, 0.507571,
		-0.788221, 0.037732, 0.614235,
		-0.500531, -0.619985, -0.604225,
		42.045891, 42.350548, 33.143417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020046, 42.239525, 33.992847>,  <42.396259, 42.784538, 33.566376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020046, 42.239525, 33.992847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046719, 42.056652, 33.638100>,  <42.062721, 41.946930, 33.425251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046719, 42.056652, 33.638100>,  <42.020046, 42.239525, 33.992847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046719, 42.056652, 33.638100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245694, -0.853957, 0.458684,
		-0.967051, -0.248486, 0.055380,
		0.066685, -0.457177, -0.886872,
		42.066723, 41.919498, 33.372040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758717, 41.608444, 34.095848>,  <42.020046, 42.239525, 33.992847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758717, 41.608444, 34.095848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953651, 41.552277, 33.751106>,  <42.070610, 41.518578, 33.544262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953651, 41.552277, 33.751106>,  <41.758717, 41.608444, 34.095848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953651, 41.552277, 33.751106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199175, -0.943093, 0.266280,
		-0.850197, -0.301426, -0.431634,
		0.487334, -0.140420, -0.861851,
		42.099850, 41.510151, 33.492550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648792, 40.940662, 34.038311>,  <41.758717, 41.608444, 34.095848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648792, 40.940662, 34.038311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947487, 41.012344, 33.782104>,  <42.126705, 41.055355, 33.628380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947487, 41.012344, 33.782104>,  <41.648792, 40.940662, 34.038311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947487, 41.012344, 33.782104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226402, -0.973996, -0.008564,
		-0.625397, -0.138619, -0.767895,
		0.746740, 0.179209, -0.640518,
		42.171509, 41.066109, 33.589951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477875, 40.611103, 33.439285>,  <41.648792, 40.940662, 34.038311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477875, 40.611103, 33.439285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872288, 40.656178, 33.488342>,  <42.108936, 40.683220, 33.517776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872288, 40.656178, 33.488342>,  <41.477875, 40.611103, 33.439285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872288, 40.656178, 33.488342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094159, -0.984558, 0.147579,
		0.137381, -0.133969, -0.981417,
		0.986033, 0.112684, 0.122645,
		42.168098, 40.689983, 33.525135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768738, 40.096138, 33.070919>,  <41.477875, 40.611103, 33.439285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768738, 40.096138, 33.070919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106129, 40.178772, 33.269257>,  <42.308563, 40.228352, 33.388260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106129, 40.178772, 33.269257>,  <41.768738, 40.096138, 33.070919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106129, 40.178772, 33.269257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170676, -0.978325, 0.117260,
		0.509321, -0.014278, -0.860458,
		0.843482, 0.206583, 0.495845,
		42.359173, 40.240746, 33.418011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233932, 39.575039, 32.874489>,  <41.768738, 40.096138, 33.070919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233932, 39.575039, 32.874489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397839, 39.727661, 33.205910>,  <42.496181, 39.819237, 33.404762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397839, 39.727661, 33.205910>,  <42.233932, 39.575039, 32.874489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397839, 39.727661, 33.205910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310451, -0.912425, 0.266646,
		0.857735, 0.147962, -0.492340,
		0.409770, 0.381559, 0.828554,
		42.520771, 39.842129, 33.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914497, 39.318024, 32.771896>,  <42.233932, 39.575039, 32.874489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914497, 39.318024, 32.771896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841148, 39.401997, 33.156044>,  <42.797138, 39.452381, 33.386532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841148, 39.401997, 33.156044>,  <42.914497, 39.318024, 32.771896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841148, 39.401997, 33.156044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307514, -0.915651, 0.258880,
		0.933707, 0.342798, 0.103350,
		-0.183376, 0.209937, 0.960365,
		42.786137, 39.464977, 33.444153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434219, 38.855083, 33.150803>,  <42.914497, 39.318024, 32.771896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434219, 38.855083, 33.150803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.142239, 38.956001, 33.404896>,  <42.967049, 39.016552, 33.557350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.142239, 38.956001, 33.404896>,  <43.434219, 38.855083, 33.150803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142239, 38.956001, 33.404896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070476, -0.896646, 0.437102,
		0.679854, 0.363833, 0.636729,
		-0.729953, 0.252292, 0.635230,
		42.923252, 39.031689, 33.595467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721546, 38.822544, 33.810925>,  <43.434219, 38.855083, 33.150803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721546, 38.822544, 33.810925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322659, 38.793125, 33.815804>,  <43.083328, 38.775475, 33.818729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322659, 38.793125, 33.815804>,  <43.721546, 38.822544, 33.810925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322659, 38.793125, 33.815804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072542, -0.919516, 0.386300,
		-0.017197, 0.386110, 0.922293,
		-0.997217, -0.073548, 0.012196,
		43.023495, 38.771061, 33.819462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544949, 38.468666, 34.424824>,  <43.721546, 38.822544, 33.810925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544949, 38.468666, 34.424824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195530, 38.424309, 34.235249>,  <42.985878, 38.397694, 34.121506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195530, 38.424309, 34.235249>,  <43.544949, 38.468666, 34.424824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195530, 38.424309, 34.235249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064404, -0.938802, 0.338382,
		-0.482458, 0.326116, 0.812947,
		-0.873548, -0.110898, -0.473936,
		42.933464, 38.391041, 34.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244701, 38.115475, 34.873943>,  <43.544949, 38.468666, 34.424824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244701, 38.115475, 34.873943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015427, 38.078804, 34.548233>,  <42.877861, 38.056801, 34.352806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.015427, 38.078804, 34.548233>,  <43.244701, 38.115475, 34.873943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015427, 38.078804, 34.548233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265667, -0.919253, 0.290507,
		-0.775163, 0.382842, 0.502548,
		-0.573188, -0.091679, -0.814279,
		42.843472, 38.051300, 34.303947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613628, 37.792759, 35.091530>,  <43.244701, 38.115475, 34.873943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613628, 37.792759, 35.091530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641727, 37.734169, 34.696842>,  <42.658588, 37.699017, 34.460030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641727, 37.734169, 34.696842>,  <42.613628, 37.792759, 35.091530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641727, 37.734169, 34.696842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164319, -0.977347, 0.133385,
		-0.983903, 0.152765, -0.092728,
		0.070251, -0.146475, -0.986717,
		42.662804, 37.690228, 34.400826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032417, 37.356964, 34.869183>,  <42.613628, 37.792759, 35.091530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032417, 37.356964, 34.869183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313293, 37.286129, 34.593338>,  <42.481819, 37.243629, 34.427830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313293, 37.286129, 34.593338>,  <42.032417, 37.356964, 34.869183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313293, 37.286129, 34.593338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028557, -0.974801, 0.221241,
		-0.711416, -0.135660, -0.689553,
		0.702191, -0.177086, -0.689615,
		42.523952, 37.233002, 34.386452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786251, 36.724476, 34.516579>,  <42.032417, 37.356964, 34.869183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786251, 36.724476, 34.516579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176167, 36.754982, 34.432705>,  <42.410118, 36.773285, 34.382381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176167, 36.754982, 34.432705>,  <41.786251, 36.724476, 34.516579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176167, 36.754982, 34.432705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092259, -0.993441, 0.067547,
		-0.203156, -0.085189, -0.975434,
		0.974790, 0.076270, -0.209683,
		42.468605, 36.777863, 34.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889774, 36.213715, 33.931309>,  <41.786251, 36.724476, 34.516579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889774, 36.213715, 33.931309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252148, 36.259396, 34.094402>,  <42.469570, 36.286804, 34.192261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252148, 36.259396, 34.094402>,  <41.889774, 36.213715, 33.931309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252148, 36.259396, 34.094402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164139, -0.982365, -0.089538,
		0.390320, 0.148040, -0.908699,
		0.905930, 0.114205, 0.407736,
		42.523926, 36.293655, 34.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320992, 35.772770, 33.572655>,  <41.889774, 36.213715, 33.931309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320992, 35.772770, 33.572655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536152, 35.832127, 33.904594>,  <42.665249, 35.867741, 34.103756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536152, 35.832127, 33.904594>,  <42.320992, 35.772770, 33.572655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536152, 35.832127, 33.904594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233846, -0.972019, 0.022240,
		0.809926, 0.182093, -0.557551,
		0.537900, 0.148394, 0.829845,
		42.697521, 35.876644, 34.153549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028194, 35.417366, 33.509369>,  <42.320992, 35.772770, 33.572655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028194, 35.417366, 33.509369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933762, 35.462986, 33.895374>,  <42.877102, 35.490360, 34.126980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933762, 35.462986, 33.895374>,  <43.028194, 35.417366, 33.509369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933762, 35.462986, 33.895374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222629, -0.960325, 0.167963,
		0.945886, 0.254494, 0.201326,
		-0.236084, 0.114053, 0.965016,
		42.862938, 35.497204, 34.184879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461807, 34.869041, 33.844421>,  <43.028194, 35.417366, 33.509369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461807, 34.869041, 33.844421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197414, 34.960590, 34.130283>,  <43.038780, 35.015518, 34.301800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197414, 34.960590, 34.130283>,  <43.461807, 34.869041, 33.844421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197414, 34.960590, 34.130283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047478, -0.963200, 0.264561,
		0.748902, 0.140939, 0.647520,
		-0.660978, 0.228873, 0.714650,
		42.999123, 35.029251, 34.344677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783424, 34.691170, 34.428040>,  <43.461807, 34.869041, 33.844421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783424, 34.691170, 34.428040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.388638, 34.694546, 34.492317>,  <43.151764, 34.696571, 34.530884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.388638, 34.694546, 34.492317>,  <43.783424, 34.691170, 34.428040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388638, 34.694546, 34.492317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027399, -0.975230, 0.219490,
		0.158569, 0.221033, 0.962289,
		-0.986968, 0.008439, 0.160698,
		43.092548, 34.697079, 34.540527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902466, 35.374916, 34.832191>,  <43.783424, 34.691170, 34.428040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902466, 35.374916, 34.832191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192505, 35.099609, 34.823059>,  <44.366531, 34.934425, 34.817581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192505, 35.099609, 34.823059>,  <43.902466, 35.374916, 34.832191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192505, 35.099609, 34.823059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672444, 0.714807, -0.192013,
		0.148475, 0.123877, 0.981127,
		0.725102, -0.688262, -0.022830,
		44.410034, 34.893131, 34.816212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513813, 35.434868, 35.309700>,  <43.902466, 35.374916, 34.832191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513813, 35.434868, 35.309700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632057, 35.257481, 34.971245>,  <44.703003, 35.151047, 34.768173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632057, 35.257481, 34.971245>,  <44.513813, 35.434868, 35.309700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632057, 35.257481, 34.971245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504631, 0.824552, -0.255856,
		0.811147, -0.351352, 0.467539,
		0.295615, -0.443471, -0.846135,
		44.720741, 35.124439, 34.717403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220352, 35.687881, 35.257874>,  <44.513813, 35.434868, 35.309700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220352, 35.687881, 35.257874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121792, 35.543777, 34.897984>,  <45.062656, 35.457314, 34.682049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121792, 35.543777, 34.897984>,  <45.220352, 35.687881, 35.257874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121792, 35.543777, 34.897984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545789, 0.715559, -0.435992,
		0.800876, -0.598485, 0.020316,
		-0.246397, -0.360264, -0.899721,
		45.047874, 35.435699, 34.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813087, 35.659321, 34.938335>,  <45.220352, 35.687881, 35.257874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813087, 35.659321, 34.938335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523975, 35.697929, 34.664616>,  <45.350506, 35.721096, 34.500385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523975, 35.697929, 34.664616>,  <45.813087, 35.659321, 34.938335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523975, 35.697929, 34.664616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517457, 0.731921, -0.443317,
		0.458061, -0.674518, -0.578969,
		-0.722785, 0.096525, -0.684299,
		45.307140, 35.726887, 34.459328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195396, 35.875336, 34.343689>,  <45.813087, 35.659321, 34.938335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195396, 35.875336, 34.343689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.822762, 35.938507, 34.212727>,  <45.599178, 35.976410, 34.134148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.822762, 35.938507, 34.212727>,  <46.195396, 35.875336, 34.343689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822762, 35.938507, 34.212727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270156, 0.903431, -0.332908,
		0.243214, -0.398586, -0.884294,
		-0.931591, 0.157929, -0.327408,
		45.543285, 35.985886, 34.114506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258598, 36.028404, 33.663662>,  <46.195396, 35.875336, 34.343689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258598, 36.028404, 33.663662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912598, 36.198311, 33.770500>,  <45.704998, 36.300255, 33.834602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912598, 36.198311, 33.770500>,  <46.258598, 36.028404, 33.663662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912598, 36.198311, 33.770500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227967, 0.806897, -0.544930,
		-0.446985, -0.410479, -0.794803,
		-0.865006, 0.424764, 0.267095,
		45.653095, 36.325741, 33.850628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029613, 36.406956, 33.053963>,  <46.258598, 36.028404, 33.663662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029613, 36.406956, 33.053963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782410, 36.550800, 33.333603>,  <45.634087, 36.637108, 33.501385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.782410, 36.550800, 33.333603>,  <46.029613, 36.406956, 33.053963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782410, 36.550800, 33.333603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176485, 0.803088, -0.569124,
		-0.766103, -0.475106, -0.432851,
		-0.618012, 0.359616, 0.699098,
		45.597008, 36.658684, 33.543331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613010, 36.635624, 32.679356>,  <46.029613, 36.406956, 33.053963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613010, 36.635624, 32.679356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537807, 36.805386, 33.033653>,  <45.492683, 36.907242, 33.246231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537807, 36.805386, 33.033653>,  <45.613010, 36.635624, 32.679356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537807, 36.805386, 33.033653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153385, 0.878070, -0.453283,
		-0.970116, -0.221081, -0.099989,
		-0.188010, 0.424400, 0.885740,
		45.481403, 36.932705, 33.299374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933121, 36.903568, 32.597980>,  <45.613010, 36.635624, 32.679356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933121, 36.903568, 32.597980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149536, 37.107265, 32.865696>,  <45.279385, 37.229485, 33.026325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149536, 37.107265, 32.865696>,  <44.933121, 36.903568, 32.597980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149536, 37.107265, 32.865696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018705, 0.788346, -0.614948,
		-0.840793, 0.345227, 0.416996,
		0.541034, 0.509244, 0.669293,
		45.311848, 37.260040, 33.066483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594391, 37.689526, 32.558361>,  <44.933121, 36.903568, 32.597980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594391, 37.689526, 32.558361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925034, 37.723461, 32.780899>,  <45.123421, 37.743820, 32.914421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925034, 37.723461, 32.780899>,  <44.594391, 37.689526, 32.558361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925034, 37.723461, 32.780899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089667, 0.956091, -0.279017,
		-0.555592, 0.280523, 0.782704,
		0.826606, 0.084837, 0.556350,
		45.173016, 37.748913, 32.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476055, 38.174973, 33.065159>,  <44.594391, 37.689526, 32.558361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476055, 38.174973, 33.065159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873878, 38.145035, 33.036152>,  <45.112572, 38.127071, 33.018745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873878, 38.145035, 33.036152>,  <44.476055, 38.174973, 33.065159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873878, 38.145035, 33.036152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078120, 0.995997, 0.043435,
		0.068981, -0.048864, 0.996421,
		0.994555, -0.074844, -0.072522,
		45.172245, 38.122581, 33.014397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855427, 38.653915, 33.573780>,  <44.476055, 38.174973, 33.065159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855427, 38.653915, 33.573780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138531, 38.557495, 33.308159>,  <45.308392, 38.499645, 33.148785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138531, 38.557495, 33.308159>,  <44.855427, 38.653915, 33.573780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138531, 38.557495, 33.308159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100035, 0.964712, -0.243565,
		0.699335, 0.105956, 0.706898,
		0.707760, -0.241048, -0.664057,
		45.350861, 38.485180, 33.108940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469971, 39.036324, 33.746754>,  <44.855427, 38.653915, 33.573780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469971, 39.036324, 33.746754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477970, 38.937466, 33.359245>,  <45.482769, 38.878151, 33.126740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477970, 38.937466, 33.359245>,  <45.469971, 39.036324, 33.746754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477970, 38.937466, 33.359245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081539, 0.966141, -0.244792,
		0.996469, -0.074098, 0.039472,
		0.019997, -0.247147, -0.968772,
		45.483971, 38.863323, 33.068615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044773, 39.515442, 33.367409>,  <45.469971, 39.036324, 33.746754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044773, 39.515442, 33.367409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764786, 39.390026, 33.110741>,  <45.596794, 39.314777, 32.956741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764786, 39.390026, 33.110741>,  <46.044773, 39.515442, 33.367409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764786, 39.390026, 33.110741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129494, 0.939303, -0.317712,
		0.702335, -0.139296, -0.698084,
		-0.699969, -0.313538, -0.641668,
		45.554794, 39.295963, 32.918240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195110, 39.891056, 32.863544>,  <46.044773, 39.515442, 33.367409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195110, 39.891056, 32.863544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833515, 39.754444, 32.760662>,  <45.616558, 39.672478, 32.698933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833515, 39.754444, 32.760662>,  <46.195110, 39.891056, 32.863544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833515, 39.754444, 32.760662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209084, 0.877877, -0.430833,
		0.372936, -0.335692, -0.865002,
		-0.903993, -0.341531, -0.257204,
		45.562317, 39.651985, 32.683502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128853, 39.912239, 32.149033>,  <46.195110, 39.891056, 32.863544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128853, 39.912239, 32.149033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752861, 39.933304, 32.283886>,  <45.527264, 39.945942, 32.364799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752861, 39.933304, 32.283886>,  <46.128853, 39.912239, 32.149033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752861, 39.933304, 32.283886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125986, 0.864648, -0.486325,
		-0.317113, -0.499611, -0.806119,
		-0.939982, 0.052661, 0.337135,
		45.470867, 39.949100, 32.385025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709812, 40.094913, 31.545977>,  <46.128853, 39.912239, 32.149033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709812, 40.094913, 31.545977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478855, 40.220657, 31.847385>,  <45.340282, 40.296104, 32.028233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478855, 40.220657, 31.847385>,  <45.709812, 40.094913, 31.545977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478855, 40.220657, 31.847385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223757, 0.826646, -0.516322,
		-0.785209, -0.466726, -0.406957,
		-0.577391, 0.314361, 0.753523,
		45.305637, 40.314964, 32.073441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093788, 40.444298, 31.204735>,  <45.709812, 40.094913, 31.545977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093788, 40.444298, 31.204735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118893, 40.564434, 31.585442>,  <45.133957, 40.636517, 31.813866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.118893, 40.564434, 31.585442>,  <45.093788, 40.444298, 31.204735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118893, 40.564434, 31.585442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237202, 0.930808, -0.278087,
		-0.969431, -0.208308, 0.129659,
		0.062760, 0.300341, 0.951765,
		45.137722, 40.654537, 31.870972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536079, 40.741714, 31.328838>,  <45.093788, 40.444298, 31.204735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536079, 40.741714, 31.328838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742199, 40.887081, 31.639294>,  <44.865871, 40.974300, 31.825567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742199, 40.887081, 31.639294>,  <44.536079, 40.741714, 31.328838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742199, 40.887081, 31.639294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403462, 0.901871, -0.154424,
		-0.756098, -0.233568, 0.611360,
		0.515300, 0.363421, 0.776139,
		44.896790, 40.996109, 31.872135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020042, 41.169666, 31.466259>,  <44.536079, 40.741714, 31.328838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020042, 41.169666, 31.466259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348549, 41.296844, 31.655752>,  <44.545654, 41.373154, 31.769447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348549, 41.296844, 31.655752>,  <44.020042, 41.169666, 31.466259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348549, 41.296844, 31.655752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323611, 0.943433, -0.072176,
		-0.469884, -0.094030, 0.877706,
		0.821270, 0.317950, 0.473733,
		44.594929, 41.392231, 31.797873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765335, 41.659069, 31.825333>,  <44.020042, 41.169666, 31.466259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765335, 41.659069, 31.825333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154610, 41.730083, 31.766834>,  <44.388176, 41.772694, 31.731735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154610, 41.730083, 31.766834>,  <43.765335, 41.659069, 31.825333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154610, 41.730083, 31.766834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216848, 0.920180, -0.325953,
		0.076705, 0.348927, 0.934006,
		0.973187, 0.177535, -0.146247,
		44.446568, 41.783344, 31.722960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.144173, 36.833324, 42.097366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843830, 36.576862, 42.033955>,  <38.663624, 36.422985, 41.995907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843830, 36.576862, 42.033955>,  <39.144173, 36.833324, 42.097366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843830, 36.576862, 42.033955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204797, 0.002178, -0.978802,
		0.627909, -0.767408, 0.129671,
		-0.750859, -0.641155, -0.158530,
		38.618572, 36.384518, 41.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360382, 36.286240, 41.466572>,  <39.144173, 36.833324, 42.097366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360382, 36.286240, 41.466572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961906, 36.281990, 41.501202>,  <38.722820, 36.279442, 41.521980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961906, 36.281990, 41.501202>,  <39.360382, 36.286240, 41.466572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961906, 36.281990, 41.501202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087170, 0.157228, -0.983708,
		-0.003168, -0.987505, -0.157554,
		-0.996189, -0.010618, 0.086579,
		38.663052, 36.278805, 41.527176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128685, 35.854115, 40.920803>,  <39.360382, 36.286240, 41.466572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128685, 35.854115, 40.920803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805145, 36.067074, 41.020653>,  <38.611023, 36.194847, 41.080563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805145, 36.067074, 41.020653>,  <39.128685, 35.854115, 40.920803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805145, 36.067074, 41.020653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122458, 0.262703, -0.957074,
		-0.575121, -0.804699, -0.147291,
		-0.808851, 0.532396, 0.249629,
		38.562489, 36.226791, 41.095543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493713, 35.634682, 40.525429>,  <39.128685, 35.854115, 40.920803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493713, 35.634682, 40.525429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421082, 36.007877, 40.649723>,  <38.377502, 36.231796, 40.724300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421082, 36.007877, 40.649723>,  <38.493713, 35.634682, 40.525429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421082, 36.007877, 40.649723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224931, 0.268210, -0.936733,
		-0.957305, -0.239991, 0.161155,
		-0.181584, 0.932989, 0.310741,
		38.366608, 36.287773, 40.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889446, 35.861130, 40.218029>,  <38.493713, 35.634682, 40.525429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889446, 35.861130, 40.218029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017696, 36.228912, 40.309071>,  <38.094646, 36.449581, 40.363697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017696, 36.228912, 40.309071>,  <37.889446, 35.861130, 40.218029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017696, 36.228912, 40.309071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249221, 0.313715, -0.916227,
		-0.913832, 0.237040, 0.329731,
		0.320624, 0.919454, 0.227607,
		38.113884, 36.504749, 40.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406612, 36.325104, 39.928699>,  <37.889446, 35.861130, 40.218029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406612, 36.325104, 39.928699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722263, 36.568542, 39.961910>,  <37.911652, 36.714607, 39.981834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722263, 36.568542, 39.961910>,  <37.406612, 36.325104, 39.928699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722263, 36.568542, 39.961910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248380, 0.439794, -0.863069,
		-0.561773, 0.660449, 0.498215,
		0.789125, 0.608596, 0.083022,
		37.959000, 36.751122, 39.986816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142937, 36.905865, 39.733402>,  <37.406612, 36.325104, 39.928699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142937, 36.905865, 39.733402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536514, 36.944065, 39.673103>,  <37.772663, 36.966988, 39.636925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536514, 36.944065, 39.673103>,  <37.142937, 36.905865, 39.733402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536514, 36.944065, 39.673103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176453, 0.394634, -0.901736,
		-0.026632, 0.913862, 0.405152,
		0.983949, 0.095505, -0.150744,
		37.831699, 36.972717, 39.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221508, 37.598904, 39.426075>,  <37.142937, 36.905865, 39.733402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221508, 37.598904, 39.426075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542431, 37.380024, 39.330677>,  <37.734985, 37.248695, 39.273438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542431, 37.380024, 39.330677>,  <37.221508, 37.598904, 39.426075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542431, 37.380024, 39.330677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049019, 0.337800, -0.939940,
		0.594900, 0.765809, 0.244195,
		0.802304, -0.547200, -0.238497,
		37.783123, 37.215862, 39.259129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533001, 37.907597, 38.940685>,  <37.221508, 37.598904, 39.426075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533001, 37.907597, 38.940685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717285, 37.556629, 38.887199>,  <37.827854, 37.346046, 38.855106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717285, 37.556629, 38.887199>,  <37.533001, 37.907597, 38.940685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717285, 37.556629, 38.887199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100355, 0.098194, -0.990094,
		0.881861, 0.469562, -0.042815,
		0.460706, -0.877422, -0.133717,
		37.855495, 37.293404, 38.847084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065083, 37.966801, 38.532009>,  <37.533001, 37.907597, 38.940685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065083, 37.966801, 38.532009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000580, 37.576965, 38.469830>,  <37.961876, 37.343063, 38.432522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000580, 37.576965, 38.469830>,  <38.065083, 37.966801, 38.532009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000580, 37.576965, 38.469830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046383, 0.164824, -0.985232,
		0.985821, -0.151668, -0.071784,
		-0.161260, -0.974592, -0.155452,
		37.952202, 37.284588, 38.423195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421173, 37.835011, 37.900040>,  <38.065083, 37.966801, 38.532009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421173, 37.835011, 37.900040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182640, 37.518291, 37.952873>,  <38.039520, 37.328259, 37.984573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182640, 37.518291, 37.952873>,  <38.421173, 37.835011, 37.900040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182640, 37.518291, 37.952873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142058, -0.057852, -0.988166,
		0.790071, -0.608035, -0.077982,
		-0.596329, -0.791799, 0.132084,
		38.003742, 37.280750, 37.992496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708481, 37.120529, 37.625484>,  <38.421173, 37.835011, 37.900040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708481, 37.120529, 37.625484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311123, 37.166412, 37.625000>,  <38.072708, 37.193943, 37.624710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311123, 37.166412, 37.625000>,  <38.708481, 37.120529, 37.625484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311123, 37.166412, 37.625000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019813, -0.181951, -0.983108,
		-0.112982, -0.976595, 0.183023,
		-0.993399, 0.114700, -0.001208,
		38.013103, 37.200825, 37.624638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061035, 36.718815, 37.036888>,  <38.708481, 37.120529, 37.625484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061035, 36.718815, 37.036888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209896, 37.068161, 36.911201>,  <39.299213, 37.277771, 36.835789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209896, 37.068161, 36.911201>,  <39.061035, 36.718815, 37.036888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209896, 37.068161, 36.911201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658566, -0.009909, 0.752458,
		0.654059, -0.486961, -0.578858,
		0.372154, 0.873368, -0.314214,
		39.321541, 37.330170, 36.816936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199574, 36.118290, 36.663521>,  <39.061035, 36.718815, 37.036888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199574, 36.118290, 36.663521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279541, 35.760242, 36.504128>,  <39.327522, 35.545414, 36.408489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279541, 35.760242, 36.504128>,  <39.199574, 36.118290, 36.663521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279541, 35.760242, 36.504128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353016, -0.445184, 0.822916,
		-0.914010, -0.023841, -0.404991,
		0.199914, -0.895122, -0.398487,
		39.339516, 35.491707, 36.384583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555363, 35.725174, 36.736221>,  <39.199574, 36.118290, 36.663521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555363, 35.725174, 36.736221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877663, 35.489155, 36.715813>,  <39.071045, 35.347542, 36.703568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877663, 35.489155, 36.715813>,  <38.555363, 35.725174, 36.736221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877663, 35.489155, 36.715813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357795, -0.553621, 0.751988,
		-0.471962, -0.587658, -0.657198,
		0.805751, -0.590052, -0.051026,
		39.119389, 35.312141, 36.700504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357285, 35.051300, 36.568550>,  <38.555363, 35.725174, 36.736221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357285, 35.051300, 36.568550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700859, 35.044147, 36.773254>,  <38.907005, 35.039856, 36.896076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700859, 35.044147, 36.773254>,  <38.357285, 35.051300, 36.568550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700859, 35.044147, 36.773254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422952, -0.588168, 0.689326,
		0.288675, -0.808541, -0.512765,
		0.858940, -0.017884, 0.511763,
		38.958542, 35.038784, 36.926785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427227, 34.359615, 36.691101>,  <38.357285, 35.051300, 36.568550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427227, 34.359615, 36.691101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653111, 34.543583, 36.965206>,  <38.788643, 34.653961, 37.129669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653111, 34.543583, 36.965206>,  <38.427227, 34.359615, 36.691101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653111, 34.543583, 36.965206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328429, -0.636507, 0.697849,
		0.757123, -0.619142, -0.208394,
		0.564712, 0.459915, 0.685258,
		38.822525, 34.681557, 37.170784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888657, 33.918461, 36.960266>,  <38.427227, 34.359615, 36.691101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888657, 33.918461, 36.960266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909733, 34.179230, 37.262848>,  <38.922379, 34.335693, 37.444397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909733, 34.179230, 37.262848>,  <38.888657, 33.918461, 36.960266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909733, 34.179230, 37.262848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192423, -0.736678, 0.648289,
		0.979896, -0.179720, 0.086626,
		0.052695, 0.651925, 0.756450,
		38.925541, 34.374805, 37.489784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370201, 33.620850, 37.520130>,  <38.888657, 33.918461, 36.960266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370201, 33.620850, 37.520130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125282, 33.891220, 37.684185>,  <38.978333, 34.053444, 37.782619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125282, 33.891220, 37.684185>,  <39.370201, 33.620850, 37.520130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125282, 33.891220, 37.684185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122371, -0.593522, 0.795460,
		0.781099, 0.436870, 0.446126,
		-0.612298, 0.675926, 0.410140,
		38.941593, 34.093998, 37.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605881, 33.593487, 38.131332>,  <39.370201, 33.620850, 37.520130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605881, 33.593487, 38.131332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243763, 33.762104, 38.152279>,  <39.026493, 33.863274, 38.164848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243763, 33.762104, 38.152279>,  <39.605881, 33.593487, 38.131332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243763, 33.762104, 38.152279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189695, -0.511504, 0.838081,
		0.380071, 0.748777, 0.543027,
		-0.905297, 0.421540, 0.052368,
		38.972176, 33.888565, 38.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538601, 33.941574, 38.829147>,  <39.605881, 33.593487, 38.131332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538601, 33.941574, 38.829147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188511, 33.853523, 38.656853>,  <38.978458, 33.800694, 38.553478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188511, 33.853523, 38.656853>,  <39.538601, 33.941574, 38.829147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188511, 33.853523, 38.656853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249903, -0.556657, 0.792264,
		-0.414168, 0.801048, 0.432188,
		-0.875222, -0.220125, -0.430734,
		38.925945, 33.787487, 38.527634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105057, 33.855747, 39.424683>,  <39.538601, 33.941574, 38.829147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105057, 33.855747, 39.424683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871033, 33.714836, 39.132488>,  <38.730618, 33.630291, 38.957172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871033, 33.714836, 39.132488>,  <39.105057, 33.855747, 39.424683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871033, 33.714836, 39.132488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529261, -0.516622, 0.673042,
		-0.614479, 0.780387, 0.115810,
		-0.585063, -0.352276, -0.730481,
		38.695515, 33.609154, 38.913345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386620, 34.003147, 39.548004>,  <39.105057, 33.855747, 39.424683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386620, 34.003147, 39.548004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420464, 33.674038, 39.323189>,  <38.440769, 33.476574, 39.188301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420464, 33.674038, 39.323189>,  <38.386620, 34.003147, 39.548004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420464, 33.674038, 39.323189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483613, -0.527076, 0.698791,
		-0.871183, 0.212687, -0.442498,
		0.084607, -0.822773, -0.562038,
		38.445847, 33.427204, 39.154579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918430, 33.548481, 39.800350>,  <38.386620, 34.003147, 39.548004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918430, 33.548481, 39.800350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109310, 33.302437, 39.549297>,  <38.223839, 33.154812, 39.398666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109310, 33.302437, 39.549297>,  <37.918430, 33.548481, 39.800350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109310, 33.302437, 39.549297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319227, -0.786741, 0.528331,
		-0.818764, -0.051762, -0.571792,
		0.477200, -0.615110, -0.627631,
		38.252472, 33.117905, 39.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478394, 32.940701, 39.706551>,  <37.918430, 33.548481, 39.800350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478394, 32.940701, 39.706551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849682, 32.826462, 39.611191>,  <38.072456, 32.757919, 39.553974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849682, 32.826462, 39.611191>,  <37.478394, 32.940701, 39.706551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849682, 32.826462, 39.611191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087228, -0.790033, 0.606827,
		-0.361654, -0.542475, -0.758239,
		0.928223, -0.285601, -0.238400,
		38.128147, 32.740780, 39.539669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430035, 32.285358, 39.513439>,  <37.478394, 32.940701, 39.706551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430035, 32.285358, 39.513439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820267, 32.288792, 39.601231>,  <38.054405, 32.290852, 39.653904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820267, 32.288792, 39.601231>,  <37.430035, 32.285358, 39.513439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820267, 32.288792, 39.601231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128833, -0.786940, 0.603431,
		0.177892, -0.616971, -0.766617,
		0.975580, 0.008580, 0.219476,
		38.112942, 32.291367, 39.667072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723381, 31.563204, 39.439201>,  <37.430035, 32.285358, 39.513439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723381, 31.563204, 39.439201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966301, 31.761448, 39.687572>,  <38.112053, 31.880394, 39.836597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966301, 31.761448, 39.687572>,  <37.723381, 31.563204, 39.439201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966301, 31.761448, 39.687572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001545, -0.782300, 0.622899,
		0.794470, -0.377328, -0.475858,
		0.607302, 0.495610, 0.620931,
		38.148491, 31.910131, 39.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189945, 31.030622, 39.731762>,  <37.723381, 31.563204, 39.439201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189945, 31.030622, 39.731762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193832, 31.349741, 39.972900>,  <38.196167, 31.541212, 40.117584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193832, 31.349741, 39.972900>,  <38.189945, 31.030622, 39.731762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193832, 31.349741, 39.972900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112348, -0.598190, 0.793440,
		0.993621, -0.075442, 0.083815,
		0.009721, 0.797795, 0.602850,
		38.196751, 31.589079, 40.153755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370083, 30.223677, 39.812542>,  <38.189945, 31.030622, 39.731762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370083, 30.223677, 39.812542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228176, 29.850084, 39.829586>,  <38.143032, 29.625929, 39.839813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228176, 29.850084, 39.829586>,  <38.370083, 30.223677, 39.812542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228176, 29.850084, 39.829586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389086, 0.106048, -0.915077,
		0.850147, -0.341220, -0.401022,
		-0.354771, -0.933982, 0.042608,
		38.121746, 29.569889, 39.842369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733376, 29.760504, 39.429558>,  <38.370083, 30.223677, 39.812542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733376, 29.760504, 39.429558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360050, 29.617786, 39.445656>,  <38.136055, 29.532156, 39.455315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360050, 29.617786, 39.445656>,  <38.733376, 29.760504, 39.429558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360050, 29.617786, 39.445656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081352, 0.100954, -0.991559,
		0.349722, -0.928711, -0.123248,
		-0.933315, -0.356797, 0.040246,
		38.080055, 29.510748, 39.457729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614498, 29.506767, 38.778278>,  <38.733376, 29.760504, 39.429558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614498, 29.506767, 38.778278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244766, 29.447786, 38.919060>,  <38.022926, 29.412397, 39.003529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244766, 29.447786, 38.919060>,  <38.614498, 29.506767, 38.778278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244766, 29.447786, 38.919060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369886, 0.119514, -0.921358,
		0.093788, -0.981823, -0.165009,
		-0.924331, -0.147446, 0.351954,
		37.967468, 29.403551, 39.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350056, 29.125998, 38.281189>,  <38.614498, 29.506767, 38.778278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350056, 29.125998, 38.281189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041004, 29.280626, 38.482628>,  <37.855576, 29.373404, 38.603493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041004, 29.280626, 38.482628>,  <38.350056, 29.125998, 38.281189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041004, 29.280626, 38.482628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501676, 0.114368, -0.857462,
		-0.389068, -0.915140, 0.105571,
		-0.772624, 0.386573, 0.503600,
		37.809216, 29.396599, 38.633709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712936, 28.721401, 37.941723>,  <38.350056, 29.125998, 38.281189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712936, 28.721401, 37.941723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588299, 29.053259, 38.127022>,  <37.513515, 29.252375, 38.238201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588299, 29.053259, 38.127022>,  <37.712936, 28.721401, 37.941723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588299, 29.053259, 38.127022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624262, 0.188810, -0.758055,
		-0.716383, -0.525394, 0.459083,
		-0.311598, 0.829646, 0.463244,
		37.494820, 29.302153, 38.265995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986843, 28.631048, 37.922836>,  <37.712936, 28.721401, 37.941723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986843, 28.631048, 37.922836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077045, 29.018696, 37.962749>,  <37.131165, 29.251284, 37.986698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077045, 29.018696, 37.962749>,  <36.986843, 28.631048, 37.922836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077045, 29.018696, 37.962749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690947, 0.231298, -0.684904,
		-0.686834, 0.085501, 0.721768,
		0.225504, 0.969119, 0.099786,
		37.144695, 29.309431, 37.992687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358414, 29.006157, 37.938709>,  <36.986843, 28.631048, 37.922836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358414, 29.006157, 37.938709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634533, 29.282131, 37.851547>,  <36.800205, 29.447716, 37.799252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634533, 29.282131, 37.851547>,  <36.358414, 29.006157, 37.938709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634533, 29.282131, 37.851547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656514, 0.470693, -0.589437,
		-0.304110, 0.549940, 0.777870,
		0.690294, 0.689937, -0.217901,
		36.841621, 29.489113, 37.786179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014851, 29.544392, 37.968060>,  <36.358414, 29.006157, 37.938709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014851, 29.544392, 37.968060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322338, 29.682411, 37.752647>,  <36.506832, 29.765223, 37.623402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322338, 29.682411, 37.752647>,  <36.014851, 29.544392, 37.968060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322338, 29.682411, 37.752647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636946, 0.489430, -0.595616,
		0.058055, 0.800874, 0.596012,
		0.768720, 0.345049, -0.538527,
		36.552956, 29.785925, 37.591087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902100, 30.240080, 37.893986>,  <36.014851, 29.544392, 37.968060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902100, 30.240080, 37.893986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131985, 30.149132, 37.579533>,  <36.269917, 30.094563, 37.390862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131985, 30.149132, 37.579533>,  <35.902100, 30.240080, 37.893986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131985, 30.149132, 37.579533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527809, 0.631136, -0.568405,
		0.625396, 0.741599, 0.242715,
		0.574715, -0.227371, -0.786133,
		36.304398, 30.080921, 37.343693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868336, 30.828968, 37.602219>,  <35.902100, 30.240080, 37.893986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868336, 30.828968, 37.602219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045902, 30.572386, 37.351948>,  <36.152443, 30.418436, 37.201786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045902, 30.572386, 37.351948>,  <35.868336, 30.828968, 37.602219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045902, 30.572386, 37.351948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441371, 0.451143, -0.775669,
		0.779826, 0.620489, -0.082849,
		0.443917, -0.641454, -0.625679,
		36.179077, 30.379950, 37.164246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281567, 31.256254, 37.063980>,  <35.868336, 30.828968, 37.602219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281567, 31.256254, 37.063980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171608, 30.899958, 36.919197>,  <36.105633, 30.686180, 36.832329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171608, 30.899958, 36.919197>,  <36.281567, 31.256254, 37.063980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171608, 30.899958, 36.919197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572126, 0.454102, -0.682981,
		0.772724, 0.019334, -0.634448,
		-0.274899, -0.890740, -0.361957,
		36.089138, 30.632736, 36.810612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165337, 31.322721, 36.381535>,  <36.281567, 31.256254, 37.063980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165337, 31.322721, 36.381535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958263, 30.996885, 36.486187>,  <35.834019, 30.801384, 36.548977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958263, 30.996885, 36.486187>,  <36.165337, 31.322721, 36.381535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958263, 30.996885, 36.486187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768304, 0.308061, -0.561077,
		0.376450, -0.491469, -0.785330,
		-0.517681, -0.814590, 0.261628,
		35.802959, 30.752508, 36.564674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.265202, 29.033220, 43.506866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892845, 28.898762, 43.449669>,  <38.669430, 28.818087, 43.415348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892845, 28.898762, 43.449669>,  <39.265202, 29.033220, 43.506866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892845, 28.898762, 43.449669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227187, -0.226203, -0.947216,
		0.286059, -0.914241, 0.286939,
		-0.930890, -0.336148, -0.142996,
		38.613579, 28.797918, 43.406769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376099, 28.446131, 43.065884>,  <39.265202, 29.033220, 43.506866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376099, 28.446131, 43.065884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992882, 28.554581, 43.028702>,  <38.762951, 28.619650, 43.006393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992882, 28.554581, 43.028702>,  <39.376099, 28.446131, 43.065884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992882, 28.554581, 43.028702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073464, -0.081212, -0.993986,
		-0.277042, -0.959112, 0.057887,
		-0.958045, 0.271124, -0.092959,
		38.705467, 28.635918, 43.000813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176704, 28.113960, 42.409031>,  <39.376099, 28.446131, 43.065884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176704, 28.113960, 42.409031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906960, 28.401371, 42.477089>,  <38.745113, 28.573818, 42.517925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906960, 28.401371, 42.477089>,  <39.176704, 28.113960, 42.409031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906960, 28.401371, 42.477089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120014, 0.120704, -0.985407,
		-0.728580, -0.684944, 0.004835,
		-0.674365, 0.718528, 0.170145,
		38.704651, 28.616930, 42.528133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628372, 27.938505, 41.942303>,  <39.176704, 28.113960, 42.409031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628372, 27.938505, 41.942303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535801, 28.313440, 42.046486>,  <38.480259, 28.538403, 42.108994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535801, 28.313440, 42.046486>,  <38.628372, 27.938505, 41.942303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535801, 28.313440, 42.046486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154542, 0.228902, -0.961104,
		-0.960499, -0.262675, 0.091885,
		-0.231426, 0.937340, 0.260455,
		38.466373, 28.594643, 42.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898636, 28.086857, 41.737473>,  <38.628372, 27.938505, 41.942303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898636, 28.086857, 41.737473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070480, 28.447083, 41.764065>,  <38.173588, 28.663218, 41.780022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070480, 28.447083, 41.764065>,  <37.898636, 28.086857, 41.737473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070480, 28.447083, 41.764065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360189, 0.238410, -0.901901,
		-0.828070, 0.363519, 0.426796,
		0.429610, 0.900564, 0.066485,
		38.199364, 28.717251, 41.784012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415012, 28.619902, 41.489651>,  <37.898636, 28.086857, 41.737473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415012, 28.619902, 41.489651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755737, 28.824438, 41.444138>,  <37.960171, 28.947161, 41.416832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755737, 28.824438, 41.444138>,  <37.415012, 28.619902, 41.489651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755737, 28.824438, 41.444138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307808, 0.312820, -0.898553,
		-0.423875, 0.800421, 0.423859,
		0.851813, 0.511341, -0.113779,
		38.011280, 28.977840, 41.410004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327553, 29.325605, 41.273136>,  <37.415012, 28.619902, 41.489651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327553, 29.325605, 41.273136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699467, 29.275120, 41.134819>,  <37.922615, 29.244829, 41.051826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699467, 29.275120, 41.134819>,  <37.327553, 29.325605, 41.273136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699467, 29.275120, 41.134819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249192, 0.475607, -0.843624,
		0.270939, 0.870557, 0.410760,
		0.929783, -0.126212, -0.345796,
		37.978401, 29.237257, 41.031078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544109, 29.966021, 40.940910>,  <37.327553, 29.325605, 41.273136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544109, 29.966021, 40.940910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798904, 29.682947, 40.818645>,  <37.951782, 29.513103, 40.745289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798904, 29.682947, 40.818645>,  <37.544109, 29.966021, 40.940910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798904, 29.682947, 40.818645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098094, 0.318873, -0.942708,
		0.764607, 0.630477, 0.133698,
		0.636988, -0.707686, -0.305659,
		37.990002, 29.470642, 40.726948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959679, 30.312233, 40.466564>,  <37.544109, 29.966021, 40.940910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959679, 30.312233, 40.466564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990673, 29.921143, 40.388538>,  <38.009270, 29.686489, 40.341724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990673, 29.921143, 40.388538>,  <37.959679, 30.312233, 40.466564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990673, 29.921143, 40.388538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206811, 0.175635, -0.962487,
		0.975308, 0.114917, -0.188595,
		0.077483, -0.977725, -0.195064,
		38.013916, 29.627825, 40.330021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500984, 30.748669, 40.341579>,  <37.959679, 30.312233, 40.466564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500984, 30.748669, 40.341579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.366917, 31.097059, 40.485279>,  <38.286476, 31.306093, 40.571499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.366917, 31.097059, 40.485279>,  <38.500984, 30.748669, 40.341579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366917, 31.097059, 40.485279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000375, -0.381184, 0.924499,
		0.942158, 0.309997, 0.127434,
		-0.335168, 0.870977, 0.359252,
		38.266365, 31.358353, 40.593056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783428, 30.750488, 40.919014>,  <38.500984, 30.748669, 40.341579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783428, 30.750488, 40.919014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511368, 31.039448, 40.968864>,  <38.348133, 31.212824, 40.998775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.511368, 31.039448, 40.968864>,  <38.783428, 30.750488, 40.919014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511368, 31.039448, 40.968864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164187, -0.315800, 0.934512,
		0.714448, 0.615149, 0.333401,
		-0.680153, 0.722400, 0.124623,
		38.307323, 31.256168, 41.006252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993221, 31.134260, 41.551994>,  <38.783428, 30.750488, 40.919014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993221, 31.134260, 41.551994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609367, 31.231491, 41.495403>,  <38.379055, 31.289829, 41.461449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609367, 31.231491, 41.495403>,  <38.993221, 31.134260, 41.551994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609367, 31.231491, 41.495403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153993, -0.033177, 0.987515,
		0.235346, 0.969440, 0.069270,
		-0.959634, 0.243075, -0.141479,
		38.321476, 31.304413, 41.452961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949787, 31.801500, 41.952385>,  <38.993221, 31.134260, 41.551994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949787, 31.801500, 41.952385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597103, 31.617931, 41.908619>,  <38.385490, 31.507790, 41.882359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597103, 31.617931, 41.908619>,  <38.949787, 31.801500, 41.952385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597103, 31.617931, 41.908619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155990, 0.064701, 0.985637,
		-0.445253, 0.886116, -0.128635,
		-0.881712, -0.458924, -0.109417,
		38.332588, 31.480253, 41.875793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496456, 32.308731, 42.244175>,  <38.949787, 31.801500, 41.952385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496456, 32.308731, 42.244175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317078, 31.951591, 42.260788>,  <38.209450, 31.737309, 42.270756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317078, 31.951591, 42.260788>,  <38.496456, 32.308731, 42.244175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317078, 31.951591, 42.260788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208323, 0.149590, 0.966553,
		-0.869194, 0.424794, -0.253083,
		-0.448445, -0.892845, 0.041528,
		38.182545, 31.683739, 42.273247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929630, 32.503571, 42.712200>,  <38.496456, 32.308731, 42.244175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929630, 32.503571, 42.712200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937664, 32.103924, 42.697487>,  <37.942486, 31.864134, 42.688660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937664, 32.103924, 42.697487>,  <37.929630, 32.503571, 42.712200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937664, 32.103924, 42.697487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154965, -0.039459, 0.987132,
		-0.987716, -0.014125, -0.155621,
		0.020084, -0.999121, -0.036786,
		37.943687, 31.804188, 42.686451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421940, 32.274658, 43.262939>,  <37.929630, 32.503571, 42.712200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421940, 32.274658, 43.262939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660057, 31.962227, 43.187531>,  <37.802929, 31.774769, 43.142284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660057, 31.962227, 43.187531>,  <37.421940, 32.274658, 43.262939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660057, 31.962227, 43.187531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055717, -0.274184, 0.960062,
		-0.801573, -0.561016, -0.206739,
		0.595295, -0.781079, -0.188520,
		37.838646, 31.727903, 43.130974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310947, 31.871946, 43.794861>,  <37.421940, 32.274658, 43.262939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310947, 31.871946, 43.794861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649391, 31.711008, 43.655018>,  <37.852455, 31.614445, 43.571114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649391, 31.711008, 43.655018>,  <37.310947, 31.871946, 43.794861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649391, 31.711008, 43.655018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214428, -0.343547, 0.914328,
		-0.487984, -0.848582, -0.204402,
		0.846105, -0.402348, -0.349605,
		37.903221, 31.590303, 43.550137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275581, 31.190409, 44.000366>,  <37.310947, 31.871946, 43.794861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275581, 31.190409, 44.000366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650425, 31.319567, 43.947346>,  <37.875332, 31.397060, 43.915535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650425, 31.319567, 43.947346>,  <37.275581, 31.190409, 44.000366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650425, 31.319567, 43.947346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232246, -0.293343, 0.927368,
		0.260559, -0.899828, -0.349885,
		0.937108, 0.322894, -0.132548,
		37.931557, 31.416435, 43.907581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747314, 30.711830, 44.448376>,  <37.275581, 31.190409, 44.000366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747314, 30.711830, 44.448376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.950062, 31.048082, 44.372032>,  <38.071709, 31.249834, 44.326225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.950062, 31.048082, 44.372032>,  <37.747314, 30.711830, 44.448376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950062, 31.048082, 44.372032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456778, -0.074145, 0.886486,
		0.731054, -0.536512, -0.421562,
		0.506867, 0.840630, -0.190863,
		38.102123, 31.300272, 44.314774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210247, 30.679676, 44.959763>,  <37.747314, 30.711830, 44.448376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210247, 30.679676, 44.959763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298553, 31.034203, 44.796932>,  <38.351536, 31.246918, 44.699234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298553, 31.034203, 44.796932>,  <38.210247, 30.679676, 44.959763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298553, 31.034203, 44.796932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537574, 0.237675, 0.809027,
		0.813804, -0.397435, -0.423991,
		0.220763, 0.886316, -0.407072,
		38.364784, 31.300097, 44.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984100, 30.788618, 45.051334>,  <38.210247, 30.679676, 44.959763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984100, 30.788618, 45.051334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824249, 31.150459, 44.992020>,  <38.728336, 31.367563, 44.956429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824249, 31.150459, 44.992020>,  <38.984100, 30.788618, 45.051334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824249, 31.150459, 44.992020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539729, 0.362955, 0.759576,
		0.740938, 0.223513, -0.633288,
		-0.399630, 0.904603, -0.148291,
		38.704361, 31.421841, 44.947533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507080, 31.361322, 45.085819>,  <38.984100, 30.788618, 45.051334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507080, 31.361322, 45.085819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141804, 31.475079, 45.202572>,  <38.922638, 31.543333, 45.272625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141804, 31.475079, 45.202572>,  <39.507080, 31.361322, 45.085819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141804, 31.475079, 45.202572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363711, 0.245696, 0.898525,
		0.183817, 0.926691, -0.327804,
		-0.913195, 0.284390, 0.291884,
		38.867844, 31.560396, 45.290138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634174, 31.917341, 45.532677>,  <39.507080, 31.361322, 45.085819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634174, 31.917341, 45.532677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247471, 31.834003, 45.591965>,  <39.015450, 31.784000, 45.627537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247471, 31.834003, 45.591965>,  <39.634174, 31.917341, 45.532677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247471, 31.834003, 45.591965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111166, 0.179525, 0.977452,
		-0.230257, 0.961438, -0.150397,
		-0.966760, -0.208346, 0.148216,
		38.957443, 31.771500, 45.636429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.204311, 31.209644, 45.804436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586536, 31.095438, 45.833755>,  <33.815872, 31.026915, 45.851349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586536, 31.095438, 45.833755>,  <33.204311, 31.209644, 45.804436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586536, 31.095438, 45.833755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203377, 0.458559, -0.865079,
		0.213380, 0.841548, 0.496251,
		0.955566, -0.285516, 0.073304,
		33.873207, 31.009783, 45.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678169, 31.810680, 45.679714>,  <33.204311, 31.209644, 45.804436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678169, 31.810680, 45.679714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896061, 31.484739, 45.600426>,  <34.026794, 31.289175, 45.552853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896061, 31.484739, 45.600426>,  <33.678169, 31.810680, 45.679714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896061, 31.484739, 45.600426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264305, 0.391133, -0.881566,
		0.795875, 0.427821, 0.428429,
		0.544725, -0.814852, -0.198217,
		34.059479, 31.240284, 45.540962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325092, 32.048168, 45.526943>,  <33.678169, 31.810680, 45.679714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325092, 32.048168, 45.526943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.287540, 31.688660, 45.355648>,  <34.265007, 31.472954, 45.252869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.287540, 31.688660, 45.355648>,  <34.325092, 32.048168, 45.526943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287540, 31.688660, 45.355648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204283, 0.403597, -0.891840,
		0.974399, -0.171211, 0.145714,
		-0.093883, -0.898775, -0.428240,
		34.259377, 31.419027, 45.227177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901520, 31.964931, 45.089897>,  <34.325092, 32.048168, 45.526943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901520, 31.964931, 45.089897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629494, 31.708481, 44.947643>,  <34.466278, 31.554611, 44.862293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.629494, 31.708481, 44.947643>,  <34.901520, 31.964931, 45.089897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629494, 31.708481, 44.947643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253033, 0.250018, -0.934594,
		0.688107, -0.725568, -0.007801,
		-0.680061, -0.641126, -0.355632,
		34.425476, 31.516144, 44.840954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288418, 31.613771, 44.420692>,  <34.901520, 31.964931, 45.089897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288418, 31.613771, 44.420692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891788, 31.567490, 44.397369>,  <34.653812, 31.539721, 44.383377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891788, 31.567490, 44.397369>,  <35.288418, 31.613771, 44.420692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891788, 31.567490, 44.397369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034177, 0.200510, -0.979095,
		0.124975, -0.972835, -0.194865,
		-0.991571, -0.115702, -0.058308,
		34.594318, 31.532780, 44.379879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176662, 31.183958, 43.800781>,  <35.288418, 31.613771, 44.420692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176662, 31.183958, 43.800781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834621, 31.374004, 43.883781>,  <34.629395, 31.488033, 43.933582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834621, 31.374004, 43.883781>,  <35.176662, 31.183958, 43.800781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834621, 31.374004, 43.883781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075075, 0.282538, -0.956314,
		-0.512988, -0.833328, -0.205930,
		-0.855106, 0.475118, 0.207501,
		34.578091, 31.516539, 43.946033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832207, 30.934147, 43.334843>,  <35.176662, 31.183958, 43.800781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832207, 30.934147, 43.334843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634560, 31.261572, 43.452011>,  <34.515972, 31.458027, 43.522312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634560, 31.261572, 43.452011>,  <34.832207, 30.934147, 43.334843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634560, 31.261572, 43.452011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136575, 0.259653, -0.955996,
		-0.858599, -0.512382, -0.016505,
		-0.494120, 0.818563, 0.292917,
		34.486324, 31.507141, 43.539886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130379, 31.080927, 42.889065>,  <34.832207, 30.934147, 43.334843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130379, 31.080927, 42.889065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208393, 31.440998, 43.044827>,  <34.255203, 31.657042, 43.138283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208393, 31.440998, 43.044827>,  <34.130379, 31.080927, 42.889065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208393, 31.440998, 43.044827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371196, 0.435244, -0.820229,
		-0.907840, 0.015433, 0.419033,
		0.195041, 0.900180, 0.389403,
		34.266907, 31.711052, 43.161648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600372, 31.436026, 42.776573>,  <34.130379, 31.080927, 42.889065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600372, 31.436026, 42.776573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876442, 31.717871, 42.842522>,  <34.042084, 31.886978, 42.882092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876442, 31.717871, 42.842522>,  <33.600372, 31.436026, 42.776573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876442, 31.717871, 42.842522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240900, 0.438553, -0.865816,
		-0.682373, 0.557843, 0.472418,
		0.690170, 0.704615, 0.164872,
		34.083492, 31.929255, 42.891983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218979, 32.033478, 42.620098>,  <33.600372, 31.436026, 42.776573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218979, 32.033478, 42.620098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600765, 32.149952, 42.594177>,  <33.829838, 32.219837, 42.578625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600765, 32.149952, 42.594177>,  <33.218979, 32.033478, 42.620098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600765, 32.149952, 42.594177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246610, 0.647977, -0.720632,
		-0.167846, 0.703802, 0.690283,
		0.954469, 0.291186, -0.064804,
		33.887108, 32.237309, 42.574738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139626, 32.733170, 42.659298>,  <33.218979, 32.033478, 42.620098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139626, 32.733170, 42.659298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500275, 32.649708, 42.507751>,  <33.716663, 32.599632, 42.416824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500275, 32.649708, 42.507751>,  <33.139626, 32.733170, 42.659298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500275, 32.649708, 42.507751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085989, 0.771986, -0.629797,
		0.423890, 0.600417, 0.678097,
		0.901622, -0.208656, -0.378867,
		33.770760, 32.587112, 42.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487900, 33.305191, 42.676529>,  <33.139626, 32.733170, 42.659298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487900, 33.305191, 42.676529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693840, 33.118668, 42.388786>,  <33.817406, 33.006752, 42.216141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693840, 33.118668, 42.388786>,  <33.487900, 33.305191, 42.676529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693840, 33.118668, 42.388786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178801, 0.762257, -0.622089,
		0.838426, 0.448906, 0.309072,
		0.514852, -0.466313, -0.719361,
		33.848297, 32.978775, 42.172977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858879, 33.790520, 42.333721>,  <33.487900, 33.305191, 42.676529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858879, 33.790520, 42.333721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843193, 33.486401, 42.074368>,  <33.833782, 33.303928, 41.918755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843193, 33.486401, 42.074368>,  <33.858879, 33.790520, 42.333721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843193, 33.486401, 42.074368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231866, 0.638097, -0.734214,
		0.971957, 0.121545, -0.201312,
		-0.039216, -0.760302, -0.648385,
		33.831429, 33.258308, 41.879852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203255, 34.058430, 41.679646>,  <33.858879, 33.790520, 42.333721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203255, 34.058430, 41.679646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989388, 33.738914, 41.569328>,  <33.861065, 33.547207, 41.503136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989388, 33.738914, 41.569328>,  <34.203255, 34.058430, 41.679646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989388, 33.738914, 41.569328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396754, 0.525439, -0.752662,
		0.746133, -0.293002, -0.597859,
		-0.534670, -0.798789, -0.275797,
		33.828987, 33.499279, 41.486588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871971, 34.296085, 41.584755>,  <34.203255, 34.058430, 41.679646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871971, 34.296085, 41.584755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.905922, 34.685089, 41.671497>,  <34.926292, 34.918491, 41.723545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.905922, 34.685089, 41.671497>,  <34.871971, 34.296085, 41.584755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905922, 34.685089, 41.671497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150892, -0.227682, 0.961973,
		0.984899, -0.048931, -0.166070,
		0.084882, 0.972506, 0.216860,
		34.931385, 34.976841, 41.736557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496353, 34.354870, 42.128819>,  <34.871971, 34.296085, 41.584755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496353, 34.354870, 42.128819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254261, 34.672089, 42.156445>,  <35.109005, 34.862419, 42.173019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254261, 34.672089, 42.156445>,  <35.496353, 34.354870, 42.128819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254261, 34.672089, 42.156445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028112, -0.065411, 0.997462,
		0.795554, 0.605636, 0.017295,
		-0.605230, 0.793049, 0.069064,
		35.072693, 34.910004, 42.177162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914337, 34.884312, 42.476372>,  <35.496353, 34.354870, 42.128819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914337, 34.884312, 42.476372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518337, 34.927994, 42.512077>,  <35.280735, 34.954205, 42.533501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518337, 34.927994, 42.512077>,  <35.914337, 34.884312, 42.476372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518337, 34.927994, 42.512077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056775, -0.270786, 0.960964,
		0.129116, 0.956425, 0.261879,
		-0.990003, 0.109207, 0.089263,
		35.221336, 34.960754, 42.538857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827499, 35.036079, 43.182610>,  <35.914337, 34.884312, 42.476372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827499, 35.036079, 43.182610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440472, 34.964706, 43.111088>,  <35.208256, 34.921883, 43.068176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440472, 34.964706, 43.111088>,  <35.827499, 35.036079, 43.182610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440472, 34.964706, 43.111088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190514, 0.050659, 0.980377,
		-0.165874, 0.982647, -0.083010,
		-0.967569, -0.178433, -0.178805,
		35.150200, 34.911175, 43.057446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500507, 35.413479, 43.709557>,  <35.827499, 35.036079, 43.182610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500507, 35.413479, 43.709557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216259, 35.166286, 43.575027>,  <35.045712, 35.017971, 43.494308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216259, 35.166286, 43.575027>,  <35.500507, 35.413479, 43.709557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216259, 35.166286, 43.575027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125709, -0.358811, 0.924907,
		-0.692254, 0.699537, 0.177292,
		-0.710621, -0.617983, -0.336326,
		35.003075, 34.980892, 43.474129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830376, 35.512642, 44.177998>,  <35.500507, 35.413479, 43.709557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830376, 35.512642, 44.177998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824780, 35.158459, 43.992195>,  <34.821423, 34.945950, 43.880714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824780, 35.158459, 43.992195>,  <34.830376, 35.512642, 44.177998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824780, 35.158459, 43.992195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183902, -0.454348, 0.871635,
		-0.982845, 0.097620, -0.156481,
		-0.013992, -0.885459, -0.464507,
		34.820583, 34.892822, 43.852844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211796, 35.205391, 44.486347>,  <34.830376, 35.512642, 44.177998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211796, 35.205391, 44.486347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.458183, 34.922104, 44.348354>,  <34.606018, 34.752132, 44.265560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.458183, 34.922104, 44.348354>,  <34.211796, 35.205391, 44.486347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458183, 34.922104, 44.348354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070930, -0.486004, 0.871073,
		-0.784568, -0.512088, -0.349599,
		0.615972, -0.708213, -0.344981,
		34.642975, 34.709641, 44.244862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923424, 34.593510, 44.666321>,  <34.211796, 35.205391, 44.486347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923424, 34.593510, 44.666321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307690, 34.500160, 44.606098>,  <34.538250, 34.444153, 44.569965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307690, 34.500160, 44.606098>,  <33.923424, 34.593510, 44.666321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307690, 34.500160, 44.606098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010851, -0.510166, 0.860008,
		-0.277508, -0.827810, -0.487565,
		0.960662, -0.233369, -0.150558,
		34.595890, 34.430149, 44.560932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039818, 33.834930, 44.769268>,  <33.923424, 34.593510, 44.666321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039818, 33.834930, 44.769268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424889, 33.942070, 44.784828>,  <34.655930, 34.006355, 44.794167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424889, 33.942070, 44.784828>,  <34.039818, 33.834930, 44.769268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424889, 33.942070, 44.784828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138074, -0.609619, 0.780577,
		0.232795, -0.746070, -0.623848,
		0.962674, 0.267852, 0.038904,
		34.713692, 34.022427, 44.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326721, 33.272911, 45.029274>,  <34.039818, 33.834930, 44.769268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326721, 33.272911, 45.029274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604141, 33.552757, 45.098007>,  <34.770596, 33.720665, 45.139248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604141, 33.552757, 45.098007>,  <34.326721, 33.272911, 45.029274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604141, 33.552757, 45.098007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234377, -0.444677, 0.864482,
		0.681213, -0.559291, -0.472380,
		0.693554, 0.699611, 0.171835,
		34.812206, 33.762642, 45.149559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007404, 33.007931, 45.071903>,  <34.326721, 33.272911, 45.029274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007404, 33.007931, 45.071903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010811, 33.348309, 45.281979>,  <35.012856, 33.552536, 45.408024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010811, 33.348309, 45.281979>,  <35.007404, 33.007931, 45.071903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010811, 33.348309, 45.281979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438026, -0.475314, 0.763027,
		0.898922, 0.223549, -0.376783,
		0.008516, 0.850942, 0.525190,
		35.013367, 33.603592, 45.439537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654087, 32.962326, 45.418152>,  <35.007404, 33.007931, 45.071903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654087, 32.962326, 45.418152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441624, 33.231991, 45.623432>,  <35.314144, 33.393791, 45.746601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.441624, 33.231991, 45.623432>,  <35.654087, 32.962326, 45.418152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441624, 33.231991, 45.623432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393278, -0.340327, 0.854114,
		0.750469, 0.655498, -0.084368,
		-0.531157, 0.674166, 0.513198,
		35.282276, 33.434242, 45.777393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157467, 33.213757, 45.845783>,  <35.654087, 32.962326, 45.418152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157467, 33.213757, 45.845783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804035, 33.307968, 46.007683>,  <35.591976, 33.364494, 46.104820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804035, 33.307968, 46.007683>,  <36.157467, 33.213757, 45.845783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804035, 33.307968, 46.007683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300962, -0.376565, 0.876140,
		0.358765, 0.895950, 0.261840,
		-0.883578, 0.235525, 0.404745,
		35.538963, 33.378624, 46.129105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250256, 33.526516, 46.480358>,  <36.157467, 33.213757, 45.845783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250256, 33.526516, 46.480358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872082, 33.401230, 46.516266>,  <35.645180, 33.326057, 46.537811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872082, 33.401230, 46.516266>,  <36.250256, 33.526516, 46.480358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872082, 33.401230, 46.516266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212949, -0.385464, 0.897814,
		-0.246603, 0.867938, 0.431128,
		-0.945431, -0.313212, 0.089770,
		35.588451, 33.307266, 46.543198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577282, 34.175362, 46.715496>,  <36.250256, 33.526516, 46.480358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577282, 34.175362, 46.715496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955441, 34.169987, 46.845757>,  <37.182335, 34.166759, 46.923912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955441, 34.169987, 46.845757>,  <36.577282, 34.175362, 46.715496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955441, 34.169987, 46.845757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311525, 0.331046, -0.890708,
		-0.095836, 0.943519, 0.317155,
		0.945393, -0.013440, 0.325656,
		37.239059, 34.165955, 46.943455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818974, 34.858673, 46.723476>,  <36.577282, 34.175362, 46.715496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818974, 34.858673, 46.723476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119129, 34.595825, 46.694874>,  <37.299221, 34.438118, 46.677711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119129, 34.595825, 46.694874>,  <36.818974, 34.858673, 46.723476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119129, 34.595825, 46.694874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322224, 0.458109, -0.828437,
		0.577142, 0.598606, 0.555499,
		0.750386, -0.657120, -0.071508,
		37.344246, 34.398689, 46.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332455, 35.276638, 46.509094>,  <36.818974, 34.858673, 46.723476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332455, 35.276638, 46.509094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482204, 34.916954, 46.418526>,  <37.572052, 34.701141, 46.364185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482204, 34.916954, 46.418526>,  <37.332455, 35.276638, 46.509094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482204, 34.916954, 46.418526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333613, 0.358436, -0.871910,
		0.865187, 0.250881, 0.434177,
		0.374370, -0.899212, -0.226417,
		37.594517, 34.647190, 46.350601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091763, 35.409760, 46.332531>,  <37.332455, 35.276638, 46.509094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091763, 35.409760, 46.332531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997643, 35.048779, 46.188190>,  <37.941170, 34.832191, 46.101585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997643, 35.048779, 46.188190>,  <38.091763, 35.409760, 46.332531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997643, 35.048779, 46.188190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391451, 0.251837, -0.885068,
		0.889606, -0.349517, 0.294006,
		-0.235304, -0.902450, -0.360854,
		37.927052, 34.778042, 46.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668335, 35.194870, 45.882381>,  <38.091763, 35.409760, 46.332531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668335, 35.194870, 45.882381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338127, 35.005077, 45.760147>,  <38.140003, 34.891201, 45.686806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338127, 35.005077, 45.760147>,  <38.668335, 35.194870, 45.882381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338127, 35.005077, 45.760147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298438, 0.092566, -0.949930,
		0.479011, -0.875385, 0.065189,
		-0.825520, -0.474482, -0.305588,
		38.090469, 34.862732, 45.668472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904743, 34.631516, 45.372189>,  <38.668335, 35.194870, 45.882381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904743, 34.631516, 45.372189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525028, 34.743309, 45.314575>,  <38.297199, 34.810387, 45.280006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525028, 34.743309, 45.314575>,  <38.904743, 34.631516, 45.372189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525028, 34.743309, 45.314575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217055, 0.251093, -0.943313,
		-0.227478, -0.926736, -0.299023,
		-0.949284, 0.279488, -0.144034,
		38.240242, 34.827156, 45.271366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875893, 34.468029, 44.677135>,  <38.904743, 34.631516, 45.372189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875893, 34.468029, 44.677135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533859, 34.667934, 44.732380>,  <38.328640, 34.787876, 44.765526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533859, 34.667934, 44.732380>,  <38.875893, 34.468029, 44.677135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533859, 34.667934, 44.732380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062567, 0.363882, -0.929341,
		-0.514705, -0.786021, -0.342417,
		-0.855081, 0.499761, 0.138113,
		38.277336, 34.817863, 44.773815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552406, 34.315407, 44.159447>,  <38.875893, 34.468029, 44.677135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552406, 34.315407, 44.159447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350750, 34.641094, 44.274616>,  <38.229755, 34.836506, 44.343719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350750, 34.641094, 44.274616>,  <38.552406, 34.315407, 44.159447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350750, 34.641094, 44.274616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003313, 0.331569, -0.943425,
		-0.863618, -0.476569, -0.164459,
		-0.504136, 0.814214, 0.287928,
		38.199509, 34.885357, 44.360996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017891, 34.558792, 43.610119>,  <38.552406, 34.315407, 44.159447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017891, 34.558792, 43.610119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104919, 34.868076, 43.848381>,  <38.157135, 35.053646, 43.991337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104919, 34.868076, 43.848381>,  <38.017891, 34.558792, 43.610119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104919, 34.868076, 43.848381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037914, 0.603120, -0.796749,
		-0.975308, 0.195932, 0.101905,
		0.217570, 0.773212, 0.595656,
		38.170189, 35.100040, 44.027077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551994, 35.063313, 43.322567>,  <38.017891, 34.558792, 43.610119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551994, 35.063313, 43.322567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 35.243244, 43.540447>,  <38.004978, 35.351204, 43.671177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 35.243244, 43.540447>,  <37.551994, 35.063313, 43.322567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835110, 35.243244, 43.540447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099528, 0.699874, -0.707298,
		-0.699381, 0.554829, 0.450590,
		0.707786, 0.449824, 0.544699,
		38.047447, 35.378193, 43.703857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372353, 35.778519, 43.391972>,  <37.551994, 35.063313, 43.322567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372353, 35.778519, 43.391972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768154, 35.726612, 43.417389>,  <38.005634, 35.695469, 43.432640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768154, 35.726612, 43.417389>,  <37.372353, 35.778519, 43.391972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768154, 35.726612, 43.417389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124655, 0.544336, -0.829554,
		0.073061, 0.828770, 0.554800,
		0.989507, -0.129767, 0.063541,
		38.065006, 35.687683, 43.436451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604836, 36.438766, 43.404495>,  <37.372353, 35.778519, 43.391972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604836, 36.438766, 43.404495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893616, 36.197483, 43.268898>,  <38.066883, 36.052711, 43.187542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893616, 36.197483, 43.268898>,  <37.604836, 36.438766, 43.404495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893616, 36.197483, 43.268898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093526, 0.570488, -0.815963,
		0.685590, 0.557384, 0.468283,
		0.721955, -0.603213, -0.338991,
		38.110203, 36.016518, 43.167202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086529, 36.835495, 43.151546>,  <37.604836, 36.438766, 43.404495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086529, 36.835495, 43.151546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148075, 36.486225, 42.966549>,  <38.185005, 36.276665, 42.855553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148075, 36.486225, 42.966549>,  <38.086529, 36.835495, 43.151546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148075, 36.486225, 42.966549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081018, 0.477637, -0.874813,
		0.984764, 0.097137, 0.144236,
		0.153869, -0.873171, -0.462490,
		38.194237, 36.224274, 42.827801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538963, 36.994141, 42.583893>,  <38.086529, 36.835495, 43.151546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538963, 36.994141, 42.583893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.449619, 36.617317, 42.483780>,  <38.396015, 36.391224, 42.423714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.449619, 36.617317, 42.483780>,  <38.538963, 36.994141, 42.583893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449619, 36.617317, 42.483780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106531, 0.231638, -0.966951,
		0.968898, -0.242639, 0.048620,
		-0.223358, -0.942056, -0.250282,
		38.382610, 36.334702, 42.408695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.356319, 41.494053, 35.962811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040922, 41.533703, 35.720009>,  <25.851685, 41.557495, 35.574329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040922, 41.533703, 35.720009>,  <26.356319, 41.494053, 35.962811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040922, 41.533703, 35.720009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413716, -0.644792, -0.642715,
		-0.455100, -0.757903, 0.467404,
		-0.788494, 0.099127, -0.607002,
		25.804375, 41.563442, 35.537907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040148, 40.905590, 35.818691>,  <26.356319, 41.494053, 35.962811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040148, 40.905590, 35.818691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959354, 41.117928, 35.489475>,  <25.910879, 41.245331, 35.291946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959354, 41.117928, 35.489475>,  <26.040148, 40.905590, 35.818691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959354, 41.117928, 35.489475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237937, -0.788591, -0.567019,
		-0.950046, -0.310362, 0.032975,
		-0.201984, 0.530848, -0.823045,
		25.898760, 41.277184, 35.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863352, 40.388241, 35.319515>,  <26.040148, 40.905590, 35.818691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863352, 40.388241, 35.319515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.848944, 40.696255, 35.064720>,  <25.840298, 40.881062, 34.911842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.848944, 40.696255, 35.064720>,  <25.863352, 40.388241, 35.319515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848944, 40.696255, 35.064720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357436, -0.585308, -0.727773,
		-0.933243, -0.253898, -0.254153,
		-0.036022, 0.770033, -0.636987,
		25.838137, 40.927265, 34.873623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372601, 40.169704, 34.766876>,  <25.863352, 40.388241, 35.319515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372601, 40.169704, 34.766876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674326, 40.402515, 34.645386>,  <25.855362, 40.542202, 34.572491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.674326, 40.402515, 34.645386>,  <25.372601, 40.169704, 34.766876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674326, 40.402515, 34.645386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407614, -0.777867, -0.478304,
		-0.514646, 0.236988, -0.824000,
		0.754315, 0.582031, -0.303726,
		25.900620, 40.577126, 34.554268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351646, 40.075424, 34.088184>,  <25.372601, 40.169704, 34.766876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351646, 40.075424, 34.088184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714422, 40.223900, 34.167870>,  <25.932087, 40.312984, 34.215679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714422, 40.223900, 34.167870>,  <25.351646, 40.075424, 34.088184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714422, 40.223900, 34.167870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417749, -0.731477, -0.538914,
		-0.054320, 0.571981, -0.818466,
		0.906937, 0.371187, 0.199211,
		25.986504, 40.335255, 34.227634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692198, 40.143856, 33.387466>,  <25.351646, 40.075424, 34.088184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692198, 40.143856, 33.387466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970194, 40.120419, 33.674118>,  <26.136992, 40.106358, 33.846107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970194, 40.120419, 33.674118>,  <25.692198, 40.143856, 33.387466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970194, 40.120419, 33.674118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407518, -0.789037, -0.459728,
		0.592383, 0.611545, -0.524495,
		0.694990, -0.058595, 0.716627,
		26.178692, 40.102840, 33.889107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258381, 39.940102, 33.004108>,  <25.692198, 40.143856, 33.387466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258381, 39.940102, 33.004108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.365070, 39.858715, 33.380928>,  <26.429083, 39.809883, 33.607021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.365070, 39.858715, 33.380928>,  <26.258381, 39.940102, 33.004108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365070, 39.858715, 33.380928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336603, -0.896242, -0.288874,
		0.903083, 0.394146, -0.170560,
		0.266722, -0.203466, 0.942052,
		26.445087, 39.797676, 33.663544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959299, 39.833866, 32.984032>,  <26.258381, 39.940102, 33.004108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959299, 39.833866, 32.984032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831732, 39.632534, 33.305267>,  <26.755192, 39.511734, 33.498009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831732, 39.632534, 33.305267>,  <26.959299, 39.833866, 32.984032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831732, 39.632534, 33.305267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321926, -0.854484, -0.407703,
		0.891435, 0.128511, 0.434545,
		-0.318917, -0.503332, 0.803087,
		26.736057, 39.481533, 33.546192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557451, 39.317871, 33.174644>,  <26.959299, 39.833866, 32.984032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557451, 39.317871, 33.174644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214918, 39.175884, 33.324680>,  <27.009398, 39.090694, 33.414703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214918, 39.175884, 33.324680>,  <27.557451, 39.317871, 33.174644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214918, 39.175884, 33.324680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305513, -0.933802, -0.186211,
		0.416361, -0.044863, 0.908092,
		-0.856332, -0.354965, 0.375093,
		26.958019, 39.069393, 33.437210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779360, 38.647465, 33.388977>,  <27.557451, 39.317871, 33.174644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779360, 38.647465, 33.388977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379974, 38.630085, 33.402752>,  <27.140343, 38.619656, 33.411018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379974, 38.630085, 33.402752>,  <27.779360, 38.647465, 33.388977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379974, 38.630085, 33.402752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040772, -0.996344, -0.075080,
		0.037577, -0.073560, 0.996583,
		-0.998462, -0.043453, 0.034440,
		27.080437, 38.617050, 33.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663315, 38.078564, 33.941967>,  <27.779360, 38.647465, 33.388977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663315, 38.078564, 33.941967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325119, 38.123367, 33.733124>,  <27.122202, 38.150249, 33.607819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325119, 38.123367, 33.733124>,  <27.663315, 38.078564, 33.941967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325119, 38.123367, 33.733124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091920, -0.993687, -0.064322,
		-0.526021, -0.006391, 0.850448,
		-0.845490, 0.112008, -0.522112,
		27.071472, 38.156971, 33.576488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165966, 37.690605, 34.294472>,  <27.663315, 38.078564, 33.941967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165966, 37.690605, 34.294472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052929, 37.738068, 33.913723>,  <26.985107, 37.766544, 33.685272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052929, 37.738068, 33.913723>,  <27.165966, 37.690605, 34.294472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052929, 37.738068, 33.913723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192178, -0.979204, -0.065009,
		-0.939791, 0.164558, 0.299520,
		-0.282594, 0.118656, -0.951873,
		26.968151, 37.773663, 33.628162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742788, 37.198814, 34.246380>,  <27.165966, 37.690605, 34.294472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742788, 37.198814, 34.246380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.776531, 37.298096, 33.860371>,  <26.796776, 37.357666, 33.628765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.776531, 37.298096, 33.860371>,  <26.742788, 37.198814, 34.246380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776531, 37.298096, 33.860371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216483, -0.940782, -0.260893,
		-0.972635, 0.230920, -0.025627,
		0.084355, 0.248206, -0.965028,
		26.801838, 37.372559, 33.570862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238680, 36.856113, 33.901749>,  <26.742788, 37.198814, 34.246380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238680, 36.856113, 33.901749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535767, 36.912575, 33.639927>,  <26.714020, 36.946453, 33.482834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.535767, 36.912575, 33.639927>,  <26.238680, 36.856113, 33.901749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535767, 36.912575, 33.639927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012621, -0.974404, -0.224450,
		-0.669485, 0.174964, -0.721926,
		0.742718, 0.141154, -0.654557,
		26.758581, 36.954922, 33.443562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002279, 36.421619, 33.419853>,  <26.238680, 36.856113, 33.901749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002279, 36.421619, 33.419853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389891, 36.484642, 33.343792>,  <26.622458, 36.522457, 33.298157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.389891, 36.484642, 33.343792>,  <26.002279, 36.421619, 33.419853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389891, 36.484642, 33.343792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149297, -0.987141, -0.057118,
		-0.196706, 0.026960, -0.980092,
		0.969029, 0.157560, -0.190151,
		26.680599, 36.531910, 33.286747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087252, 35.996159, 32.760971>,  <26.002279, 36.421619, 33.419853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087252, 35.996159, 32.760971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440550, 36.063774, 32.935925>,  <26.652529, 36.104343, 33.040897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440550, 36.063774, 32.935925>,  <26.087252, 35.996159, 32.760971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440550, 36.063774, 32.935925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258546, -0.953723, -0.153516,
		0.391190, 0.248675, -0.886077,
		0.883247, 0.169038, 0.437380,
		26.705524, 36.114487, 33.067139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515997, 35.568176, 32.483471>,  <26.087252, 35.996159, 32.760971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515997, 35.568176, 32.483471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743437, 35.640125, 32.804554>,  <26.879900, 35.683296, 32.997204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743437, 35.640125, 32.804554>,  <26.515997, 35.568176, 32.483471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743437, 35.640125, 32.804554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214589, -0.974448, 0.066356,
		0.794133, 0.134523, -0.592669,
		0.568598, 0.179876, 0.802708,
		26.914017, 35.694088, 33.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104307, 35.098499, 32.483765>,  <26.515997, 35.568176, 32.483471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104307, 35.098499, 32.483765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069530, 35.193615, 32.870731>,  <27.048664, 35.250683, 33.102913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.069530, 35.193615, 32.870731>,  <27.104307, 35.098499, 32.483765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069530, 35.193615, 32.870731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143429, -0.957990, 0.248360,
		0.985834, 0.160349, 0.049183,
		-0.086941, 0.237787, 0.967418,
		27.043447, 35.264950, 33.160957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498560, 34.582207, 32.825611>,  <27.104307, 35.098499, 32.483765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498560, 34.582207, 32.825611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325270, 34.758411, 33.140133>,  <27.221296, 34.864132, 33.328846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325270, 34.758411, 33.140133>,  <27.498560, 34.582207, 32.825611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325270, 34.758411, 33.140133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054664, -0.883657, 0.464932,
		0.899626, 0.158438, 0.406903,
		-0.433225, 0.440508, 0.786301,
		27.195303, 34.890564, 33.376022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797022, 34.241779, 33.508194>,  <27.498560, 34.582207, 32.825611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797022, 34.241779, 33.508194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422934, 34.377632, 33.548222>,  <27.198481, 34.459145, 33.572239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422934, 34.377632, 33.548222>,  <27.797022, 34.241779, 33.508194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422934, 34.377632, 33.548222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272033, -0.870150, 0.410897,
		0.226633, 0.357056, 0.906172,
		-0.935219, 0.339632, 0.100074,
		27.142368, 34.479523, 33.578243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416018, 34.210533, 33.825996>,  <27.797022, 34.241779, 33.508194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416018, 34.210533, 33.825996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800604, 34.148251, 33.916630>,  <29.031355, 34.110882, 33.971008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.800604, 34.148251, 33.916630>,  <28.416018, 34.210533, 33.825996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800604, 34.148251, 33.916630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047515, 0.717657, 0.694774,
		-0.270789, -0.678767, 0.682604,
		0.961465, -0.155704, 0.226585,
		29.089043, 34.101540, 33.984604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441349, 34.222015, 34.594215>,  <28.416018, 34.210533, 33.825996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441349, 34.222015, 34.594215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813309, 34.287510, 34.462467>,  <29.036484, 34.326805, 34.383419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813309, 34.287510, 34.462467>,  <28.441349, 34.222015, 34.594215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813309, 34.287510, 34.462467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160860, 0.624251, 0.764483,
		0.330779, -0.763873, 0.554151,
		0.929897, 0.163734, -0.329366,
		29.092278, 34.336632, 34.363659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838228, 34.210087, 35.147964>,  <28.441349, 34.222015, 34.594215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838228, 34.210087, 35.147964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024588, 34.437252, 34.876549>,  <29.136402, 34.573551, 34.713699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.024588, 34.437252, 34.876549>,  <28.838228, 34.210087, 35.147964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024588, 34.437252, 34.876549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157690, 0.701287, 0.695220,
		0.870674, -0.430900, 0.237173,
		0.465896, 0.567910, -0.678541,
		29.164356, 34.607624, 34.672985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325798, 34.514004, 35.543842>,  <28.838228, 34.210087, 35.147964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325798, 34.514004, 35.543842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306158, 34.731552, 35.208748>,  <29.294374, 34.862080, 35.007690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306158, 34.731552, 35.208748>,  <29.325798, 34.514004, 35.543842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306158, 34.731552, 35.208748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056041, 0.835923, 0.545978,
		0.997221, 0.073754, -0.010565,
		-0.049100, 0.543868, -0.837733,
		29.291428, 34.894714, 34.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714306, 35.107544, 35.698822>,  <29.325798, 34.514004, 35.543842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714306, 35.107544, 35.698822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516392, 35.218056, 35.369251>,  <29.397642, 35.284363, 35.171509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516392, 35.218056, 35.369251>,  <29.714306, 35.107544, 35.698822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516392, 35.218056, 35.369251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238257, 0.868660, 0.434354,
		0.835715, 0.411220, -0.363977,
		-0.494787, 0.276276, -0.823928,
		29.367956, 35.300938, 35.122074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875586, 35.691536, 35.728149>,  <29.714306, 35.107544, 35.698822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875586, 35.691536, 35.728149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553242, 35.700840, 35.491489>,  <29.359835, 35.706421, 35.349495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553242, 35.700840, 35.491489>,  <29.875586, 35.691536, 35.728149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553242, 35.700840, 35.491489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326483, 0.816145, 0.476777,
		0.493961, 0.577379, -0.650105,
		-0.805861, 0.023261, -0.591648,
		29.311483, 35.707817, 35.313995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712944, 36.408958, 35.805252>,  <29.875586, 35.691536, 35.728149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712944, 36.408958, 35.805252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407595, 36.227509, 35.621304>,  <29.224384, 36.118637, 35.510933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407595, 36.227509, 35.621304>,  <29.712944, 36.408958, 35.805252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407595, 36.227509, 35.621304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645480, 0.563004, 0.516122,
		0.024784, 0.690833, -0.722590,
		-0.763375, -0.453626, -0.459872,
		29.178583, 36.091419, 35.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233324, 36.969292, 35.574223>,  <29.712944, 36.408958, 35.805252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233324, 36.969292, 35.574223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029732, 36.625866, 35.598919>,  <28.907578, 36.419811, 35.613735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029732, 36.625866, 35.598919>,  <29.233324, 36.969292, 35.574223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029732, 36.625866, 35.598919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730794, 0.468905, 0.496053,
		-0.454841, 0.207363, -0.866095,
		-0.508979, -0.858562, 0.061738,
		28.877037, 36.368298, 35.617439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587481, 37.155289, 35.362003>,  <29.233324, 36.969292, 35.574223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587481, 37.155289, 35.362003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510109, 36.810623, 35.549675>,  <28.463686, 36.603825, 35.662277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510109, 36.810623, 35.549675>,  <28.587481, 37.155289, 35.362003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510109, 36.810623, 35.549675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812791, 0.408571, 0.415261,
		-0.549506, -0.301020, -0.779378,
		-0.193430, -0.861659, 0.469178,
		28.452080, 36.552124, 35.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831066, 36.974003, 35.216240>,  <28.587481, 37.155289, 35.362003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831066, 36.974003, 35.216240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959620, 36.816025, 35.560501>,  <28.036751, 36.721237, 35.767059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959620, 36.816025, 35.560501>,  <27.831066, 36.974003, 35.216240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959620, 36.816025, 35.560501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733257, 0.471319, 0.490094,
		-0.599206, -0.788589, -0.138127,
		0.321381, -0.394950, 0.860656,
		28.056034, 36.697540, 35.818699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194469, 36.739960, 35.686909>,  <27.831066, 36.974003, 35.216240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194469, 36.739960, 35.686909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491610, 36.789909, 35.949989>,  <27.669893, 36.819878, 36.107838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491610, 36.789909, 35.949989>,  <27.194469, 36.739960, 35.686909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491610, 36.789909, 35.949989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631327, 0.457499, 0.626196,
		-0.222703, -0.880398, 0.418692,
		0.742853, 0.124875, 0.657705,
		27.714466, 36.827374, 36.147301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819002, 36.768612, 36.309418>,  <27.194469, 36.739960, 35.686909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819002, 36.768612, 36.309418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186712, 36.904526, 36.388893>,  <27.407339, 36.986073, 36.436577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186712, 36.904526, 36.388893>,  <26.819002, 36.768612, 36.309418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186712, 36.904526, 36.388893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385549, 0.675679, 0.628339,
		0.079251, -0.654221, 0.752139,
		0.919277, 0.339783, 0.198686,
		27.462496, 37.006462, 36.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757248, 36.981083, 37.040703>,  <26.819002, 36.768612, 36.309418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757248, 36.981083, 37.040703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061314, 37.174461, 36.867069>,  <27.243753, 37.290489, 36.762890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061314, 37.174461, 36.867069>,  <26.757248, 36.981083, 37.040703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061314, 37.174461, 36.867069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250255, 0.834411, 0.491051,
		0.599604, -0.264646, 0.755273,
		0.760163, 0.483447, -0.434087,
		27.289362, 37.319496, 36.736843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123453, 37.265747, 37.637115>,  <26.757248, 36.981083, 37.040703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123453, 37.265747, 37.637115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244907, 37.482937, 37.323944>,  <27.317780, 37.613251, 37.136040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244907, 37.482937, 37.323944>,  <27.123453, 37.265747, 37.637115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244907, 37.482937, 37.323944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174262, 0.839515, 0.514634,
		0.936716, -0.019827, 0.349527,
		0.303637, 0.542975, -0.782932,
		27.335999, 37.645828, 37.089066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635998, 37.812309, 37.883755>,  <27.123453, 37.265747, 37.637115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635998, 37.812309, 37.883755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536156, 37.966568, 37.528458>,  <27.476250, 38.059124, 37.315281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536156, 37.966568, 37.528458>,  <27.635998, 37.812309, 37.883755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536156, 37.966568, 37.528458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033564, 0.920171, 0.390074,
		0.967766, 0.067552, -0.242623,
		-0.249605, 0.385644, -0.888243,
		27.461275, 38.082260, 37.261986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992109, 38.423923, 37.876488>,  <27.635998, 37.812309, 37.883755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992109, 38.423923, 37.876488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733784, 38.489132, 37.578133>,  <27.578789, 38.528259, 37.399120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733784, 38.489132, 37.578133>,  <27.992109, 38.423923, 37.876488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733784, 38.489132, 37.578133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150576, 0.930555, 0.333759,
		0.748500, 0.327859, -0.576417,
		-0.645813, 0.163025, -0.745888,
		27.540039, 38.538040, 37.354366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157448, 39.086098, 37.713993>,  <27.992109, 38.423923, 37.876488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157448, 39.086098, 37.713993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786297, 39.005627, 37.588409>,  <27.563606, 38.957344, 37.513058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786297, 39.005627, 37.588409>,  <28.157448, 39.086098, 37.713993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786297, 39.005627, 37.588409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271197, 0.941953, 0.197930,
		0.255915, 0.268799, -0.928576,
		-0.927879, -0.201174, -0.313958,
		27.507933, 38.945274, 37.494221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000416, 39.619404, 37.215778>,  <28.157448, 39.086098, 37.713993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000416, 39.619404, 37.215778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.672464, 39.463692, 37.383713>,  <27.475693, 39.370266, 37.484474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.672464, 39.463692, 37.383713>,  <28.000416, 39.619404, 37.215778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672464, 39.463692, 37.383713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277874, 0.911684, 0.302685,
		-0.500583, 0.131505, -0.855642,
		-0.819880, -0.389279, 0.419832,
		27.426500, 39.346909, 37.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567265, 40.110031, 37.074100>,  <28.000416, 39.619404, 37.215778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567265, 40.110031, 37.074100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332886, 39.905121, 37.325253>,  <27.192259, 39.782173, 37.475945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.332886, 39.905121, 37.325253>,  <27.567265, 40.110031, 37.074100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332886, 39.905121, 37.325253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417890, 0.854877, 0.307497,
		-0.694286, -0.082209, -0.714989,
		-0.585948, -0.512277, 0.627883,
		27.157101, 39.751438, 37.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799871, 40.116035, 36.847206>,  <27.567265, 40.110031, 37.074100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799871, 40.116035, 36.847206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819170, 40.068577, 37.243912>,  <26.830750, 40.040100, 37.481934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819170, 40.068577, 37.243912>,  <26.799871, 40.116035, 36.847206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819170, 40.068577, 37.243912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402327, 0.906501, 0.128021,
		-0.914224, -0.405190, -0.004003,
		0.048245, -0.118650, 0.991763,
		26.833643, 40.032982, 37.541439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153528, 40.379517, 37.182838>,  <26.799871, 40.116035, 36.847206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153528, 40.379517, 37.182838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388510, 40.368187, 37.506344>,  <26.529499, 40.361389, 37.700447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388510, 40.368187, 37.506344>,  <26.153528, 40.379517, 37.182838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388510, 40.368187, 37.506344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552166, 0.716581, 0.426174,
		-0.591615, -0.696929, 0.405317,
		0.587456, -0.028328, 0.808761,
		26.564747, 40.359688, 37.748974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676476, 40.581734, 37.610413>,  <26.153528, 40.379517, 37.182838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676476, 40.581734, 37.610413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.018307, 40.624592, 37.813675>,  <26.223406, 40.650307, 37.935631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.018307, 40.624592, 37.813675>,  <25.676476, 40.581734, 37.610413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018307, 40.624592, 37.813675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309636, 0.890666, 0.332924,
		-0.416924, -0.441852, 0.794318,
		0.854576, 0.107145, 0.508154,
		26.274679, 40.656734, 37.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.335239, 32.425819, 46.172527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103867, 32.100075, 46.153641>,  <38.965042, 31.904627, 46.142307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.103867, 32.100075, 46.153641>,  <39.335239, 32.425819, 46.172527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103867, 32.100075, 46.153641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093762, -0.123875, 0.987858,
		-0.810326, 0.566979, 0.148010,
		-0.578430, -0.814365, -0.047218,
		38.930336, 31.855766, 46.139477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930073, 32.570023, 46.778400>,  <39.335239, 32.425819, 46.172527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930073, 32.570023, 46.778400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.906315, 32.190872, 46.653175>,  <38.892059, 31.963383, 46.578041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.906315, 32.190872, 46.653175>,  <38.930073, 32.570023, 46.778400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906315, 32.190872, 46.653175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031141, -0.315221, 0.948507,
		-0.997748, 0.046591, 0.048242,
		-0.059399, -0.947874, -0.313060,
		38.888496, 31.906509, 46.559258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457226, 32.241478, 47.260563>,  <38.930073, 32.570023, 46.778400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457226, 32.241478, 47.260563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.663822, 31.943865, 47.091019>,  <38.787781, 31.765297, 46.989292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.663822, 31.943865, 47.091019>,  <38.457226, 32.241478, 47.260563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663822, 31.943865, 47.091019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010786, -0.489298, 0.872050,
		-0.856226, -0.454976, -0.244691,
		0.516488, -0.744033, -0.423857,
		38.818768, 31.720655, 46.963863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215508, 31.748920, 47.642654>,  <38.457226, 32.241478, 47.260563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215508, 31.748920, 47.642654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543560, 31.588579, 47.479343>,  <38.740391, 31.492374, 47.381355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543560, 31.588579, 47.479343>,  <38.215508, 31.748920, 47.642654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543560, 31.588579, 47.479343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147420, -0.541436, 0.827717,
		-0.552858, -0.739026, -0.384954,
		0.820131, -0.400860, -0.408284,
		38.789600, 31.468323, 47.356861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210533, 31.023069, 47.789070>,  <38.215508, 31.748920, 47.642654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210533, 31.023069, 47.789070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.587994, 31.151516, 47.757072>,  <38.814472, 31.228584, 47.737873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.587994, 31.151516, 47.757072>,  <38.210533, 31.023069, 47.789070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587994, 31.151516, 47.757072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217130, -0.418362, 0.881945,
		0.249741, -0.849621, -0.464514,
		0.943654, 0.321118, -0.079996,
		38.871090, 31.247850, 47.733074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512562, 30.521753, 48.050766>,  <38.210533, 31.023069, 47.789070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512562, 30.521753, 48.050766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799492, 30.798512, 48.017982>,  <38.971649, 30.964567, 47.998310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799492, 30.798512, 48.017982>,  <38.512562, 30.521753, 48.050766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799492, 30.798512, 48.017982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296899, -0.197131, 0.934340,
		0.630309, -0.694564, -0.346831,
		0.717330, 0.691897, -0.081962,
		39.014690, 31.006081, 47.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126854, 30.226233, 48.171776>,  <38.512562, 30.521753, 48.050766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126854, 30.226233, 48.171776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162136, 30.610699, 48.276379>,  <39.183304, 30.841377, 48.339138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162136, 30.610699, 48.276379>,  <39.126854, 30.226233, 48.171776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162136, 30.610699, 48.276379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126619, -0.271215, 0.954154,
		0.988022, -0.051046, -0.145623,
		0.088201, 0.961164, 0.261503,
		39.188595, 30.899048, 48.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665291, 30.297253, 48.763565>,  <39.126854, 30.226233, 48.171776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665291, 30.297253, 48.763565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468311, 30.645077, 48.778328>,  <39.350124, 30.853771, 48.787186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468311, 30.645077, 48.778328>,  <39.665291, 30.297253, 48.763565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468311, 30.645077, 48.778328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022570, -0.055150, 0.998223,
		0.870049, 0.490739, 0.046784,
		-0.492447, 0.869559, 0.036908,
		39.320576, 30.905945, 48.789402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067665, 30.818834, 49.152775>,  <39.665291, 30.297253, 48.763565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067665, 30.818834, 49.152775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694164, 30.957733, 49.187477>,  <39.470062, 31.041073, 49.208298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.694164, 30.957733, 49.187477>,  <40.067665, 30.818834, 49.152775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694164, 30.957733, 49.187477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036055, -0.149907, 0.988042,
		0.356099, 0.925715, 0.127456,
		-0.933752, 0.347246, 0.086758,
		39.414040, 31.061907, 49.213505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138809, 31.235586, 49.747498>,  <40.067665, 30.818834, 49.152775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138809, 31.235586, 49.747498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.744373, 31.226696, 49.681614>,  <39.507710, 31.221361, 49.642082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.744373, 31.226696, 49.681614>,  <40.138809, 31.235586, 49.747498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744373, 31.226696, 49.681614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166174, 0.113752, 0.979514,
		-0.003034, 0.993261, -0.115864,
		-0.986092, -0.022225, -0.164709,
		39.448547, 31.220028, 49.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912167, 31.807957, 50.073734>,  <40.138809, 31.235586, 49.747498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912167, 31.807957, 50.073734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602905, 31.554277, 50.071526>,  <39.417351, 31.402069, 50.070202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602905, 31.554277, 50.071526>,  <39.912167, 31.807957, 50.073734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602905, 31.554277, 50.071526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224242, 0.265206, 0.937753,
		-0.593258, 0.726262, -0.347258,
		-0.773150, -0.634199, -0.005523,
		39.370960, 31.364017, 50.069870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415211, 32.077671, 50.558762>,  <39.912167, 31.807957, 50.073734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415211, 32.077671, 50.558762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290215, 31.699142, 50.525703>,  <39.215218, 31.472027, 50.505871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290215, 31.699142, 50.525703>,  <39.415211, 32.077671, 50.558762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290215, 31.699142, 50.525703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144770, -0.038537, 0.988714,
		-0.938823, 0.320931, -0.124956,
		-0.312494, -0.946318, -0.082641,
		39.196465, 31.415247, 50.500912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727131, 31.954329, 50.961502>,  <39.415211, 32.077671, 50.558762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727131, 31.954329, 50.961502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911144, 31.601507, 50.920811>,  <39.021553, 31.389814, 50.896397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911144, 31.601507, 50.920811>,  <38.727131, 31.954329, 50.961502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911144, 31.601507, 50.920811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083653, -0.157121, 0.984030,
		-0.883952, -0.444178, -0.146068,
		0.460035, -0.882054, -0.101730,
		39.049156, 31.336891, 50.890293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282681, 31.402451, 51.163105>,  <38.727131, 31.954329, 50.961502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282681, 31.402451, 51.163105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670021, 31.319384, 51.218494>,  <38.902424, 31.269543, 51.251728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670021, 31.319384, 51.218494>,  <38.282681, 31.402451, 51.163105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670021, 31.319384, 51.218494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178044, -0.185852, 0.966312,
		-0.174946, -0.960379, -0.216945,
		0.968346, -0.207679, 0.138476,
		38.960526, 31.257082, 51.260036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029556, 31.888088, 51.755825>,  <38.282681, 31.402451, 51.163105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029556, 31.888088, 51.755825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662544, 31.954386, 51.900417>,  <37.442337, 31.994164, 51.987171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662544, 31.954386, 51.900417>,  <38.029556, 31.888088, 51.755825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662544, 31.954386, 51.900417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245764, 0.478276, -0.843121,
		-0.312628, -0.862427, -0.398099,
		-0.917531, 0.165745, 0.361476,
		37.387283, 32.004108, 52.008862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432606, 31.437874, 51.441616>,  <38.029556, 31.888088, 51.755825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432606, 31.437874, 51.441616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380096, 31.816301, 51.560085>,  <37.348591, 32.043358, 51.631168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380096, 31.816301, 51.560085>,  <37.432606, 31.437874, 51.441616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380096, 31.816301, 51.560085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220555, 0.263400, -0.939136,
		-0.966500, -0.188609, 0.174082,
		-0.131276, 0.946070, 0.296174,
		37.340714, 32.100121, 51.648937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023655, 31.778982, 50.884445>,  <37.432606, 31.437874, 51.441616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023655, 31.778982, 50.884445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193584, 32.080601, 51.084820>,  <37.295544, 32.261574, 51.205044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.193584, 32.080601, 51.084820>,  <37.023655, 31.778982, 50.884445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193584, 32.080601, 51.084820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034726, 0.566520, -0.823316,
		-0.904610, 0.332369, 0.266856,
		0.424824, 0.754047, 0.500938,
		37.321030, 32.306816, 51.235100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612171, 32.334564, 50.740860>,  <37.023655, 31.778982, 50.884445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612171, 32.334564, 50.740860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962578, 32.490788, 50.854046>,  <37.172821, 32.584522, 50.921959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962578, 32.490788, 50.854046>,  <36.612171, 32.334564, 50.740860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962578, 32.490788, 50.854046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050710, 0.658053, -0.751262,
		-0.479616, 0.643765, 0.596268,
		0.876012, 0.390554, 0.282967,
		37.225380, 32.607952, 50.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465973, 33.123650, 50.796700>,  <36.612171, 32.334564, 50.740860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465973, 33.123650, 50.796700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858322, 33.078617, 50.733185>,  <37.093731, 33.051598, 50.695076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858322, 33.078617, 50.733185>,  <36.465973, 33.123650, 50.796700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858322, 33.078617, 50.733185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045002, 0.662501, -0.747708,
		0.189372, 0.740553, 0.644763,
		0.980874, -0.112579, -0.158786,
		37.152584, 33.044842, 50.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783821, 33.904598, 50.726791>,  <36.465973, 33.123650, 50.796700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783821, 33.904598, 50.726791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062004, 33.659634, 50.576439>,  <37.228912, 33.512653, 50.486225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062004, 33.659634, 50.576439>,  <36.783821, 33.904598, 50.726791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062004, 33.659634, 50.576439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178907, 0.654204, -0.734853,
		0.695939, 0.443811, 0.564536,
		0.695458, -0.612412, -0.375885,
		37.270641, 33.475910, 50.463673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400791, 34.295631, 50.594257>,  <36.783821, 33.904598, 50.726791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400791, 34.295631, 50.594257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.411938, 33.968372, 50.364529>,  <37.418625, 33.772015, 50.226692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.411938, 33.968372, 50.364529>,  <37.400791, 34.295631, 50.594257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411938, 33.968372, 50.364529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242589, 0.562908, -0.790117,
		0.969729, -0.117311, 0.214158,
		0.027862, -0.818152, -0.574326,
		37.420296, 33.722927, 50.192230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843925, 34.432919, 50.085930>,  <37.400791, 34.295631, 50.594257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843925, 34.432919, 50.085930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666168, 34.103916, 49.943943>,  <37.559513, 33.906513, 49.858749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666168, 34.103916, 49.943943>,  <37.843925, 34.432919, 50.085930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666168, 34.103916, 49.943943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224738, 0.281211, -0.932960,
		0.867186, -0.494371, 0.059881,
		-0.444389, -0.822507, -0.354966,
		37.532852, 33.857162, 49.837452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316208, 34.211826, 49.584244>,  <37.843925, 34.432919, 50.085930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316208, 34.211826, 49.584244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967796, 34.034031, 49.500580>,  <37.758751, 33.927353, 49.450382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.967796, 34.034031, 49.500580>,  <38.316208, 34.211826, 49.584244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967796, 34.034031, 49.500580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100534, 0.255471, -0.961575,
		0.480840, -0.858585, -0.177836,
		-0.871026, -0.444485, -0.209158,
		37.706490, 33.900684, 49.437832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433907, 33.678211, 49.047127>,  <38.316208, 34.211826, 49.584244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433907, 33.678211, 49.047127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049072, 33.785233, 49.025917>,  <37.818172, 33.849445, 49.013191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049072, 33.785233, 49.025917>,  <38.433907, 33.678211, 49.047127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049072, 33.785233, 49.025917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090588, 0.130049, -0.987361,
		-0.257278, -0.954726, -0.149355,
		-0.962082, 0.267556, -0.053028,
		37.760448, 33.865498, 49.010010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091705, 33.286339, 48.423126>,  <38.433907, 33.678211, 49.047127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091705, 33.286339, 48.423126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820564, 33.570164, 48.500099>,  <37.657879, 33.740459, 48.546284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820564, 33.570164, 48.500099>,  <38.091705, 33.286339, 48.423126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820564, 33.570164, 48.500099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107578, 0.163201, -0.980710,
		-0.727284, -0.685479, -0.034293,
		-0.677853, 0.709566, 0.192436,
		37.617207, 33.783031, 48.557831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425575, 33.049137, 48.182026>,  <38.091705, 33.286339, 48.423126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425575, 33.049137, 48.182026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444221, 33.448700, 48.183037>,  <37.455410, 33.688438, 48.183643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444221, 33.448700, 48.183037>,  <37.425575, 33.049137, 48.182026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444221, 33.448700, 48.183037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106029, 0.007465, -0.994335,
		-0.993270, 0.046083, 0.106262,
		0.046616, 0.998910, 0.002528,
		37.458206, 33.748371, 48.183796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131435, 33.083447, 47.588608>,  <37.425575, 33.049137, 48.182026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131435, 33.083447, 47.588608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247028, 33.456776, 47.673832>,  <37.316383, 33.680775, 47.724968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247028, 33.456776, 47.673832>,  <37.131435, 33.083447, 47.588608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247028, 33.456776, 47.673832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027028, 0.214512, -0.976347,
		-0.956952, 0.287909, 0.036765,
		0.288986, 0.933324, 0.213060,
		37.333725, 33.736774, 47.737751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687195, 33.499012, 47.151493>,  <37.131435, 33.083447, 47.588608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687195, 33.499012, 47.151493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985813, 33.744858, 47.253410>,  <37.164982, 33.892365, 47.314560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985813, 33.744858, 47.253410>,  <36.687195, 33.499012, 47.151493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985813, 33.744858, 47.253410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024254, 0.407837, -0.912732,
		-0.664894, 0.675215, 0.319376,
		0.746544, 0.614616, 0.254792,
		37.209778, 33.929241, 47.329849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018986, 33.624062, 47.227028>,  <36.687195, 33.499012, 47.151493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018986, 33.624062, 47.227028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738361, 33.372292, 47.093380>,  <35.569988, 33.221230, 47.013191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738361, 33.372292, 47.093380>,  <36.018986, 33.624062, 47.227028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738361, 33.372292, 47.093380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062781, -0.412457, 0.908811,
		-0.709839, 0.658563, 0.249847,
		-0.701560, -0.629424, -0.334123,
		35.527893, 33.183464, 46.993141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550529, 33.633110, 47.684990>,  <36.018986, 33.624062, 47.227028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550529, 33.633110, 47.684990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455647, 33.297798, 47.488613>,  <35.398716, 33.096611, 47.370789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455647, 33.297798, 47.488613>,  <35.550529, 33.633110, 47.684990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455647, 33.297798, 47.488613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186412, -0.456697, 0.869872,
		-0.953406, 0.297857, -0.047933,
		-0.237206, -0.838277, -0.490942,
		35.384483, 33.046314, 47.341331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071228, 33.299156, 48.023548>,  <35.550529, 33.633110, 47.684990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071228, 33.299156, 48.023548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223091, 32.972301, 47.850040>,  <35.314209, 32.776188, 47.745937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223091, 32.972301, 47.850040>,  <35.071228, 33.299156, 48.023548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223091, 32.972301, 47.850040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223783, -0.536065, 0.813975,
		-0.897655, -0.211959, -0.386380,
		0.379654, -0.817134, -0.433768,
		35.336987, 32.727161, 47.719910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578701, 32.855061, 47.958546>,  <35.071228, 33.299156, 48.023548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578701, 32.855061, 47.958546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904060, 32.627182, 47.911514>,  <35.099277, 32.490456, 47.883297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904060, 32.627182, 47.911514>,  <34.578701, 32.855061, 47.958546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904060, 32.627182, 47.911514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359356, -0.651058, 0.668570,
		-0.457433, -0.501563, -0.734295,
		0.813399, -0.569700, -0.117575,
		35.148079, 32.456272, 47.876240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373302, 32.104973, 47.807953>,  <34.578701, 32.855061, 47.958546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373302, 32.104973, 47.807953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735184, 32.085354, 47.977234>,  <34.952312, 32.073582, 48.078804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735184, 32.085354, 47.977234>,  <34.373302, 32.104973, 47.807953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735184, 32.085354, 47.977234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345178, -0.666639, 0.660640,
		0.249720, -0.743766, -0.620043,
		0.904706, -0.049050, 0.423204,
		35.006596, 32.070641, 48.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463436, 31.419142, 47.949692>,  <34.373302, 32.104973, 47.807953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463436, 31.419142, 47.949692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725071, 31.588730, 48.200268>,  <34.882050, 31.690483, 48.350613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725071, 31.588730, 48.200268>,  <34.463436, 31.419142, 47.949692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725071, 31.588730, 48.200268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214716, -0.690032, 0.691196,
		0.725309, -0.586606, -0.360305,
		0.654082, 0.423968, 0.626440,
		34.921295, 31.715919, 48.388199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623135, 30.909119, 48.515541>,  <34.463436, 31.419142, 47.949692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623135, 30.909119, 48.515541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815044, 31.217873, 48.682400>,  <34.930191, 31.403124, 48.782513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815044, 31.217873, 48.682400>,  <34.623135, 30.909119, 48.515541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815044, 31.217873, 48.682400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073795, -0.438252, 0.895818,
		0.874282, -0.460576, -0.153303,
		0.479777, 0.771884, 0.417144,
		34.958977, 31.449438, 48.807545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133511, 30.575901, 48.121277>,  <34.623135, 30.909119, 48.515541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133511, 30.575901, 48.121277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948402, 30.227905, 48.189342>,  <34.837337, 30.019108, 48.230183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948402, 30.227905, 48.189342>,  <35.133511, 30.575901, 48.121277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948402, 30.227905, 48.189342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457852, 0.070198, -0.886252,
		0.759086, -0.488045, -0.430813,
		-0.462774, -0.869991, 0.170166,
		34.809570, 29.966908, 48.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401642, 30.115097, 47.615311>,  <35.133511, 30.575901, 48.121277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401642, 30.115097, 47.615311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025108, 30.019499, 47.710625>,  <34.799191, 29.962139, 47.767811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025108, 30.019499, 47.710625>,  <35.401642, 30.115097, 47.615311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025108, 30.019499, 47.710625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286579, 0.193164, -0.938382,
		0.178225, -0.951618, -0.250318,
		-0.941333, -0.238980, 0.238287,
		34.742710, 29.947800, 47.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201561, 29.751427, 47.095081>,  <35.401642, 30.115097, 47.615311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201561, 29.751427, 47.095081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843170, 29.816692, 47.260300>,  <34.628136, 29.855852, 47.359428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843170, 29.816692, 47.260300>,  <35.201561, 29.751427, 47.095081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843170, 29.816692, 47.260300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420182, -0.010329, -0.907381,
		-0.143787, -0.986545, 0.077814,
		-0.895975, 0.163165, 0.413043,
		34.574379, 29.865641, 47.384212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639076, 29.304979, 46.700054>,  <35.201561, 29.751427, 47.095081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639076, 29.304979, 46.700054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482216, 29.620049, 46.890121>,  <34.388100, 29.809090, 47.004162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482216, 29.620049, 46.890121>,  <34.639076, 29.304979, 46.700054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482216, 29.620049, 46.890121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443647, 0.290560, -0.847792,
		-0.805849, -0.543272, 0.235505,
		-0.392154, 0.787674, 0.475169,
		34.364571, 29.856350, 47.032673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953465, 29.396500, 46.366871>,  <34.639076, 29.304979, 46.700054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953465, 29.396500, 46.366871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041332, 29.744942, 46.542561>,  <34.094051, 29.954008, 46.647976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041332, 29.744942, 46.542561>,  <33.953465, 29.396500, 46.366871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041332, 29.744942, 46.542561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182092, 0.478921, -0.858765,
		-0.958431, 0.108661, 0.263824,
		0.219665, 0.871107, 0.439226,
		34.107231, 30.006273, 46.674328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413094, 29.797215, 46.147430>,  <33.953465, 29.396500, 46.366871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413094, 29.797215, 46.147430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705635, 30.044346, 46.262955>,  <33.881161, 30.192625, 46.332268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705635, 30.044346, 46.262955>,  <33.413094, 29.797215, 46.147430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705635, 30.044346, 46.262955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103665, 0.519263, -0.848304,
		-0.674076, 0.590469, 0.443811,
		0.731352, 0.617829, 0.288812,
		33.925041, 30.229694, 46.349598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123394, 30.497063, 45.949368>,  <33.413094, 29.797215, 46.147430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123394, 30.497063, 45.949368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517338, 30.541304, 46.002762>,  <33.753704, 30.567848, 46.034798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517338, 30.541304, 46.002762>,  <33.123394, 30.497063, 45.949368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517338, 30.541304, 46.002762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065373, 0.476199, -0.876904,
		-0.160550, 0.872354, 0.461759,
		0.984860, 0.110601, 0.133482,
		33.812798, 30.574484, 46.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.514301, 27.985321, 50.025379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.909931, 28.023199, 50.070583>,  <39.147308, 28.045925, 50.097706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.909931, 28.023199, 50.070583>,  <38.514301, 27.985321, 50.025379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909931, 28.023199, 50.070583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052568, 0.942605, -0.329746,
		-0.137751, 0.320202, 0.937281,
		0.989071, 0.094694, 0.113012,
		39.206654, 28.051607, 50.104488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442352, 27.614315, 49.364815>,  <38.514301, 27.985321, 50.025379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442352, 27.614315, 49.364815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.519505, 27.991184, 49.474438>,  <38.565796, 28.217306, 49.540211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.519505, 27.991184, 49.474438>,  <38.442352, 27.614315, 49.364815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519505, 27.991184, 49.474438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595399, 0.334390, -0.730537,
		-0.779934, -0.022267, 0.625466,
		0.192883, 0.942172, 0.274060,
		38.577370, 28.273836, 49.556656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821499, 27.982256, 49.347454>,  <38.442352, 27.614315, 49.364815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821499, 27.982256, 49.347454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137798, 28.215639, 49.273376>,  <38.327576, 28.355669, 49.228928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137798, 28.215639, 49.273376>,  <37.821499, 27.982256, 49.347454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137798, 28.215639, 49.273376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351165, 0.184560, -0.917944,
		-0.501400, 0.790896, 0.350830,
		0.790747, 0.583457, -0.185196,
		38.375023, 28.390676, 49.217819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667141, 28.703314, 49.131748>,  <37.821499, 27.982256, 49.347454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667141, 28.703314, 49.131748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.032753, 28.625046, 48.989613>,  <38.252121, 28.578085, 48.904331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.032753, 28.625046, 48.989613>,  <37.667141, 28.703314, 49.131748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032753, 28.625046, 48.989613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348530, 0.069370, -0.934727,
		0.207549, 0.978213, -0.004791,
		0.914030, -0.195671, -0.355334,
		38.306961, 28.566345, 48.883011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730373, 29.197567, 48.590862>,  <37.667141, 28.703314, 49.131748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730373, 29.197567, 48.590862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017868, 28.929806, 48.515686>,  <38.190365, 28.769150, 48.470581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.017868, 28.929806, 48.515686>,  <37.730373, 29.197567, 48.590862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017868, 28.929806, 48.515686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191071, 0.069735, -0.979096,
		0.668516, 0.739619, -0.077782,
		0.718734, -0.669403, -0.187938,
		38.233490, 28.728985, 48.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289101, 29.479864, 48.140694>,  <37.730373, 29.197567, 48.590862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289101, 29.479864, 48.140694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.298393, 29.083929, 48.084572>,  <38.303967, 28.846369, 48.050900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.298393, 29.083929, 48.084572>,  <38.289101, 29.479864, 48.140694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298393, 29.083929, 48.084572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035622, 0.141071, -0.989358,
		0.999095, 0.017984, 0.038537,
		0.023229, -0.989836, -0.140303,
		38.305363, 28.786978, 48.042480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698112, 29.419554, 47.465172>,  <38.289101, 29.479864, 48.140694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698112, 29.419554, 47.465172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534508, 29.056124, 47.499115>,  <38.436344, 28.838066, 47.519482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534508, 29.056124, 47.499115>,  <38.698112, 29.419554, 47.465172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534508, 29.056124, 47.499115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016635, -0.085550, -0.996195,
		0.912377, -0.408868, 0.019877,
		-0.409012, -0.908575, 0.084856,
		38.411804, 28.783552, 47.524570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073055, 28.966269, 47.036102>,  <38.698112, 29.419554, 47.465172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073055, 28.966269, 47.036102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.714390, 28.804111, 47.107269>,  <38.499191, 28.706818, 47.149971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.714390, 28.804111, 47.107269>,  <39.073055, 28.966269, 47.036102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714390, 28.804111, 47.107269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114610, -0.175622, -0.977763,
		0.427626, -0.897114, 0.111011,
		-0.896661, -0.405394, 0.177919,
		38.445393, 28.682493, 47.160645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058556, 28.328325, 46.857174>,  <39.073055, 28.966269, 47.036102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058556, 28.328325, 46.857174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.669353, 28.420540, 46.852818>,  <38.435833, 28.475868, 46.850204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.669353, 28.420540, 46.852818>,  <39.058556, 28.328325, 46.857174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669353, 28.420540, 46.852818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045176, -0.236531, -0.970573,
		-0.226337, -0.943876, 0.240560,
		-0.973001, 0.230544, -0.010895,
		38.377453, 28.489702, 46.849548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706280, 27.788481, 46.402382>,  <39.058556, 28.328325, 46.857174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706280, 27.788481, 46.402382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450771, 28.093515, 46.443245>,  <38.297466, 28.276537, 46.467762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.450771, 28.093515, 46.443245>,  <38.706280, 27.788481, 46.402382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450771, 28.093515, 46.443245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239310, -0.070724, -0.968364,
		-0.731237, -0.643008, 0.227671,
		-0.638767, 0.762587, 0.102162,
		38.259140, 28.322292, 46.473892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058968, 27.475176, 46.086601>,  <38.706280, 27.788481, 46.402382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058968, 27.475176, 46.086601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008659, 27.871763, 46.100327>,  <37.978474, 28.109715, 46.108562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.008659, 27.871763, 46.100327>,  <38.058968, 27.475176, 46.086601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008659, 27.871763, 46.100327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109172, 0.020545, -0.993810,
		-0.986034, -0.128734, 0.105657,
		-0.125766, 0.991466, 0.034313,
		37.970928, 28.169203, 46.110619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425411, 27.636263, 45.710110>,  <38.058968, 27.475176, 46.086601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425411, 27.636263, 45.710110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.651482, 27.966131, 45.718948>,  <37.787125, 28.164053, 45.724251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.651482, 27.966131, 45.718948>,  <37.425411, 27.636263, 45.710110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651482, 27.966131, 45.718948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135561, 0.119262, -0.983565,
		-0.813753, 0.552896, 0.179198,
		0.565180, 0.824671, 0.022099,
		37.821037, 28.213533, 45.725578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817142, 27.935688, 46.050903>,  <37.425411, 27.636263, 45.710110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817142, 27.935688, 46.050903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.423645, 27.902336, 45.987282>,  <36.187546, 27.882324, 45.949108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.423645, 27.902336, 45.987282>,  <36.817142, 27.935688, 46.050903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423645, 27.902336, 45.987282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104733, -0.453106, 0.885283,
		-0.145884, 0.887549, 0.437007,
		-0.983742, -0.083379, -0.159056,
		36.128521, 27.877323, 45.939564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556980, 28.175030, 46.649288>,  <36.817142, 27.935688, 46.050903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556980, 28.175030, 46.649288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259953, 27.957890, 46.492367>,  <36.081738, 27.827604, 46.398212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259953, 27.957890, 46.492367>,  <36.556980, 28.175030, 46.649288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259953, 27.957890, 46.492367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197553, -0.382154, 0.902736,
		-0.639974, 0.747843, 0.176533,
		-0.742567, -0.542853, -0.392307,
		36.037182, 27.795034, 46.374676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987049, 28.310032, 47.057117>,  <36.556980, 28.175030, 46.649288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987049, 28.310032, 47.057117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892891, 27.969522, 46.869534>,  <35.836395, 27.765217, 46.756985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892891, 27.969522, 46.869534>,  <35.987049, 28.310032, 47.057117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892891, 27.969522, 46.869534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337613, -0.380848, 0.860797,
		-0.911376, 0.360955, -0.197750,
		-0.235396, -0.851273, -0.468959,
		35.822273, 27.714140, 46.728848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251297, 28.172806, 47.174442>,  <35.987049, 28.310032, 47.057117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251297, 28.172806, 47.174442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.360409, 27.805092, 47.060947>,  <35.425877, 27.584463, 46.992851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.360409, 27.805092, 47.060947>,  <35.251297, 28.172806, 47.174442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360409, 27.805092, 47.060947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446303, -0.382183, 0.809166,
		-0.852295, -0.094087, -0.514530,
		0.272777, -0.919284, -0.283741,
		35.442242, 27.529306, 46.975826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701927, 27.836918, 47.165680>,  <35.251297, 28.172806, 47.174442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701927, 27.836918, 47.165680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010029, 27.586613, 47.214886>,  <35.194889, 27.436430, 47.244411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010029, 27.586613, 47.214886>,  <34.701927, 27.836918, 47.165680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010029, 27.586613, 47.214886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395281, -0.317076, 0.862100,
		-0.500463, -0.712661, -0.491580,
		0.770252, -0.625762, 0.123017,
		35.241104, 27.398884, 47.251789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444828, 27.365547, 47.574860>,  <34.701927, 27.836918, 47.165680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444828, 27.365547, 47.574860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.823254, 27.236128, 47.581436>,  <35.050308, 27.158476, 47.585381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.823254, 27.236128, 47.581436>,  <34.444828, 27.365547, 47.574860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823254, 27.236128, 47.581436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210931, -0.576659, 0.789286,
		-0.245891, -0.750187, -0.613805,
		0.946069, -0.323549, 0.016442,
		35.107075, 27.139063, 47.586369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308105, 26.740713, 47.670734>,  <34.444828, 27.365547, 47.574860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308105, 26.740713, 47.670734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691151, 26.814114, 47.759556>,  <34.920979, 26.858154, 47.812847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691151, 26.814114, 47.759556>,  <34.308105, 26.740713, 47.670734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691151, 26.814114, 47.759556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096097, -0.523184, 0.846785,
		0.271562, -0.832229, -0.483373,
		0.957611, 0.183503, 0.222052,
		34.978436, 26.869165, 47.826172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618652, 26.094091, 48.137894>,  <34.308105, 26.740713, 47.670734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618652, 26.094091, 48.137894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840862, 26.425112, 48.170258>,  <34.974190, 26.623724, 48.189674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840862, 26.425112, 48.170258>,  <34.618652, 26.094091, 48.137894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840862, 26.425112, 48.170258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082055, -0.151392, 0.985062,
		0.827439, -0.540591, -0.152007,
		0.555529, 0.827552, 0.080909,
		35.007523, 26.673378, 48.194530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309471, 25.908808, 48.492878>,  <34.618652, 26.094091, 48.137894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309471, 25.908808, 48.492878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168423, 26.274340, 48.573452>,  <35.083794, 26.493660, 48.621796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168423, 26.274340, 48.573452>,  <35.309471, 25.908808, 48.492878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168423, 26.274340, 48.573452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276020, -0.307252, 0.910719,
		0.894133, 0.265536, 0.360577,
		-0.352616, 0.913831, 0.201431,
		35.062637, 26.548489, 48.633881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442451, 25.928356, 49.189766>,  <35.309471, 25.908808, 48.492878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442451, 25.928356, 49.189766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201324, 26.238150, 49.113045>,  <35.056648, 26.424026, 49.067013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201324, 26.238150, 49.113045>,  <35.442451, 25.928356, 49.189766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201324, 26.238150, 49.113045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402383, -0.087508, 0.911280,
		0.688986, 0.626513, 0.364390,
		-0.602816, 0.774483, -0.191806,
		35.020481, 26.470495, 49.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528385, 26.419455, 49.764683>,  <35.442451, 25.928356, 49.189766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528385, 26.419455, 49.764683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180359, 26.540470, 49.609013>,  <34.971542, 26.613079, 49.515610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180359, 26.540470, 49.609013>,  <35.528385, 26.419455, 49.764683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180359, 26.540470, 49.609013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353033, 0.168567, 0.920300,
		0.344030, 0.938112, -0.039857,
		-0.870064, 0.302540, -0.389176,
		34.919338, 26.631231, 49.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263622, 27.095629, 50.010212>,  <35.528385, 26.419455, 49.764683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263622, 27.095629, 50.010212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935509, 26.893501, 49.903038>,  <34.738640, 26.772224, 49.838734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935509, 26.893501, 49.903038>,  <35.263622, 27.095629, 50.010212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935509, 26.893501, 49.903038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437598, 0.252826, 0.862895,
		-0.368298, 0.825064, -0.428517,
		-0.820283, -0.505321, -0.267931,
		34.689423, 26.741905, 49.822659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717762, 27.447048, 50.395657>,  <35.263622, 27.095629, 50.010212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717762, 27.447048, 50.395657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.532852, 27.118492, 50.262020>,  <34.421906, 26.921358, 50.181839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.532852, 27.118492, 50.262020>,  <34.717762, 27.447048, 50.395657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532852, 27.118492, 50.262020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497144, -0.071909, 0.864683,
		-0.734266, 0.565817, -0.375107,
		-0.462278, -0.821390, -0.334093,
		34.394169, 26.872076, 50.161793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009903, 27.461514, 50.485161>,  <34.717762, 27.447048, 50.395657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009903, 27.461514, 50.485161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.104214, 27.072802, 50.488186>,  <34.160801, 26.839575, 50.490002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.104214, 27.072802, 50.488186>,  <34.009903, 27.461514, 50.485161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104214, 27.072802, 50.488186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503847, -0.115583, 0.856025,
		-0.830993, -0.205638, -0.516879,
		0.235774, -0.971778, 0.007561,
		34.174946, 26.781267, 50.490456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509056, 27.886345, 50.088985>,  <34.009903, 27.461514, 50.485161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509056, 27.886345, 50.088985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269100, 28.160076, 50.254799>,  <33.125126, 28.324314, 50.354286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269100, 28.160076, 50.254799>,  <33.509056, 27.886345, 50.088985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269100, 28.160076, 50.254799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260542, 0.656951, -0.707483,
		-0.756475, -0.316407, -0.572392,
		-0.599886, 0.684326, 0.414530,
		33.089134, 28.365374, 50.379158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907619, 28.114618, 49.623230>,  <33.509056, 27.886345, 50.088985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907619, 28.114618, 49.623230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004791, 28.410530, 49.874218>,  <33.063095, 28.588078, 50.024811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004791, 28.410530, 49.874218>,  <32.907619, 28.114618, 49.623230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004791, 28.410530, 49.874218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244560, 0.579243, -0.777604,
		-0.938711, 0.342352, -0.040208,
		0.242925, 0.739779, 0.627467,
		33.077667, 28.632463, 50.062458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954563, 28.649250, 49.169926>,  <32.907619, 28.114618, 49.623230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954563, 28.649250, 49.169926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146778, 28.800106, 49.486622>,  <33.262108, 28.890619, 49.676640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146778, 28.800106, 49.486622>,  <32.954563, 28.649250, 49.169926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146778, 28.800106, 49.486622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586386, 0.533133, -0.609853,
		-0.652103, 0.757320, 0.035038,
		0.480534, 0.377142, 0.791740,
		33.290939, 28.913248, 49.724144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997921, 29.280134, 49.048000>,  <32.954563, 28.649250, 49.169926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997921, 29.280134, 49.048000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.290749, 29.224634, 49.314781>,  <33.466446, 29.191334, 49.474850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.290749, 29.224634, 49.314781>,  <32.997921, 29.280134, 49.048000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290749, 29.224634, 49.314781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604122, 0.584675, -0.541472,
		-0.314822, 0.799315, 0.511843,
		0.732068, -0.138749, 0.666952,
		33.510368, 29.183010, 49.514866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264729, 29.915762, 49.233776>,  <32.997921, 29.280134, 49.048000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264729, 29.915762, 49.233776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552986, 29.650095, 49.313328>,  <33.725941, 29.490694, 49.361057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552986, 29.650095, 49.313328>,  <33.264729, 29.915762, 49.233776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552986, 29.650095, 49.313328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593050, 0.441941, -0.673037,
		0.359117, 0.602966, 0.712368,
		0.720643, -0.664169, 0.198880,
		33.769180, 29.450844, 49.372993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835896, 30.353451, 49.348862>,  <33.264729, 29.915762, 49.233776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835896, 30.353451, 49.348862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.971100, 29.988010, 49.258457>,  <34.052223, 29.768747, 49.204212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.971100, 29.988010, 49.258457>,  <33.835896, 30.353451, 49.348862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971100, 29.988010, 49.258457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725876, 0.405928, -0.555272,
		0.599042, 0.023630, 0.800369,
		0.338013, -0.913600, -0.226015,
		34.072502, 29.713930, 49.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505856, 30.363228, 49.503605>,  <33.835896, 30.353451, 49.348862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505856, 30.363228, 49.503605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482105, 30.048229, 49.258224>,  <34.467854, 29.859230, 49.110996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.482105, 30.048229, 49.258224>,  <34.505856, 30.363228, 49.503605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482105, 30.048229, 49.258224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747320, 0.372354, -0.550333,
		0.661806, -0.491124, 0.566401,
		-0.059381, -0.787496, -0.613452,
		34.464291, 29.811981, 49.074188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123932, 30.653105, 49.132187>,  <34.505856, 30.363228, 49.503605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123932, 30.653105, 49.132187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.049992, 31.040749, 49.197495>,  <35.005627, 31.273335, 49.236679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.049992, 31.040749, 49.197495>,  <35.123932, 30.653105, 49.132187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049992, 31.040749, 49.197495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175531, -0.196015, 0.964763,
		0.966963, 0.149683, 0.206343,
		-0.184855, 0.969110, 0.163265,
		34.994534, 31.331482, 49.246475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482620, 30.754263, 49.687786>,  <35.123932, 30.653105, 49.132187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482620, 30.754263, 49.687786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240700, 31.072464, 49.672882>,  <35.095547, 31.263386, 49.663940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240700, 31.072464, 49.672882>,  <35.482620, 30.754263, 49.687786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240700, 31.072464, 49.672882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122137, -0.046422, 0.991427,
		0.786956, 0.604166, 0.125237,
		-0.604801, 0.795505, -0.037258,
		35.059261, 31.311115, 49.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767254, 31.293009, 50.184345>,  <35.482620, 30.754263, 49.687786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767254, 31.293009, 50.184345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372505, 31.341934, 50.142139>,  <35.135658, 31.371290, 50.116817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372505, 31.341934, 50.142139>,  <35.767254, 31.293009, 50.184345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372505, 31.341934, 50.142139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094362, 0.093636, 0.991125,
		0.131108, 0.988065, -0.080864,
		-0.986867, 0.122314, -0.105512,
		35.076447, 31.378628, 50.110485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671356, 31.739777, 50.686722>,  <35.767254, 31.293009, 50.184345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671356, 31.739777, 50.686722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.301979, 31.610550, 50.603886>,  <35.080353, 31.533014, 50.554184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.301979, 31.610550, 50.603886>,  <35.671356, 31.739777, 50.686722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301979, 31.610550, 50.603886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203411, -0.045511, 0.978035,
		-0.325395, 0.945281, -0.023688,
		-0.923440, -0.323067, -0.207090,
		35.024948, 31.513630, 50.541759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133659, 32.229485, 50.974892>,  <35.671356, 31.739777, 50.686722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133659, 32.229485, 50.974892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926548, 31.888952, 50.941093>,  <34.802280, 31.684631, 50.920815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926548, 31.888952, 50.941093>,  <35.133659, 32.229485, 50.974892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926548, 31.888952, 50.941093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020998, -0.086094, 0.996066,
		-0.855259, 0.517512, 0.026701,
		-0.517775, -0.851333, -0.084500,
		34.771217, 31.633553, 50.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466110, 32.302376, 51.231350>,  <35.133659, 32.229485, 50.974892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466110, 32.302376, 51.231350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566933, 31.916676, 51.264061>,  <34.627426, 31.685255, 51.283688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566933, 31.916676, 51.264061>,  <34.466110, 32.302376, 51.231350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566933, 31.916676, 51.264061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225962, 0.023523, 0.973852,
		-0.940961, -0.263947, -0.211954,
		0.252060, -0.964250, 0.081777,
		34.642551, 31.627401, 51.288593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967964, 32.148727, 51.621513>,  <34.466110, 32.302376, 51.231350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967964, 32.148727, 51.621513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223846, 31.844271, 51.664284>,  <34.377377, 31.661596, 51.689945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.223846, 31.844271, 51.664284>,  <33.967964, 32.148727, 51.621513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223846, 31.844271, 51.664284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289486, -0.109715, 0.950873,
		-0.712020, -0.639235, -0.290526,
		0.639707, -0.761145, 0.106930,
		34.415760, 31.615927, 51.696362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720184, 31.745724, 52.105930>,  <33.967964, 32.148727, 51.621513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720184, 31.745724, 52.105930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090679, 31.595043, 52.100601>,  <34.312977, 31.504635, 52.097404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090679, 31.595043, 52.100601>,  <33.720184, 31.745724, 52.105930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090679, 31.595043, 52.100601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047881, -0.152641, 0.987121,
		-0.373884, -0.913672, -0.159419,
		0.926239, -0.376702, -0.013322,
		34.368549, 31.482033, 52.096603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701874, 31.118673, 52.483952>,  <33.720184, 31.745724, 52.105930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701874, 31.118673, 52.483952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.080379, 31.247646, 52.493965>,  <34.307484, 31.325031, 52.499973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.080379, 31.247646, 52.493965>,  <33.701874, 31.118673, 52.483952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080379, 31.247646, 52.493965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038274, -0.188527, 0.981322,
		0.321133, -0.927628, -0.190736,
		0.946260, 0.322435, 0.025038,
		34.364258, 31.344378, 52.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.502422, 36.220951, 37.118412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877457, 36.358440, 37.139561>,  <35.102478, 36.440933, 37.152248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877457, 36.358440, 37.139561>,  <34.502422, 36.220951, 37.118412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877457, 36.358440, 37.139561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129439, -0.486025, 0.864306,
		0.322775, -0.803515, -0.500179,
		0.937583, 0.343719, 0.052871,
		35.158733, 36.461555, 37.155422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883480, 35.634411, 37.365162>,  <34.502422, 36.220951, 37.118412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883480, 35.634411, 37.365162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088238, 35.967209, 37.450726>,  <35.211090, 36.166885, 37.502064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088238, 35.967209, 37.450726>,  <34.883480, 35.634411, 37.365162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088238, 35.967209, 37.450726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106247, -0.308409, 0.945302,
		0.852455, -0.461164, -0.246269,
		0.511891, 0.831993, 0.213907,
		35.241806, 36.216808, 37.514896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409767, 35.399818, 37.655857>,  <34.883480, 35.634411, 37.365162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409767, 35.399818, 37.655857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387283, 35.773842, 37.795860>,  <35.373795, 35.998257, 37.879860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387283, 35.773842, 37.795860>,  <35.409767, 35.399818, 37.655857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387283, 35.773842, 37.795860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068376, -0.346131, 0.935691,
		0.996075, 0.076523, -0.044481,
		-0.056205, 0.935060, 0.350005,
		35.370422, 36.054359, 37.900864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989109, 35.405750, 38.081665>,  <35.409767, 35.399818, 37.655857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989109, 35.405750, 38.081665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736664, 35.692577, 38.199993>,  <35.585197, 35.864674, 38.270988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736664, 35.692577, 38.199993>,  <35.989109, 35.405750, 38.081665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736664, 35.692577, 38.199993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061297, -0.426269, 0.902517,
		0.773265, 0.551458, 0.312978,
		-0.631113, 0.717070, 0.295816,
		35.547329, 35.907700, 38.288738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235447, 35.665577, 38.610737>,  <35.989109, 35.405750, 38.081665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235447, 35.665577, 38.610737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860096, 35.787159, 38.676537>,  <35.634884, 35.860107, 38.716015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860096, 35.787159, 38.676537>,  <36.235447, 35.665577, 38.610737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860096, 35.787159, 38.676537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086535, -0.254165, 0.963282,
		0.334601, 0.918158, 0.212200,
		-0.938378, 0.303952, 0.164497,
		35.578583, 35.878345, 38.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244793, 36.208679, 39.192463>,  <36.235447, 35.665577, 38.610737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244793, 36.208679, 39.192463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871109, 36.066990, 39.175652>,  <35.646896, 35.981976, 39.165565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871109, 36.066990, 39.175652>,  <36.244793, 36.208679, 39.192463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871109, 36.066990, 39.175652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011523, -0.087793, 0.996072,
		-0.356526, 0.931029, 0.077936,
		-0.934214, -0.354227, -0.042029,
		35.590843, 35.960720, 39.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911659, 36.545685, 39.805614>,  <36.244793, 36.208679, 39.192463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911659, 36.545685, 39.805614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659706, 36.254063, 39.698483>,  <35.508533, 36.079090, 39.634205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659706, 36.254063, 39.698483>,  <35.911659, 36.545685, 39.805614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659706, 36.254063, 39.698483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227903, -0.156167, 0.961079,
		-0.742502, 0.666405, -0.067786,
		-0.629882, -0.729051, -0.267830,
		35.470741, 36.035347, 39.618134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290100, 36.704136, 40.136162>,  <35.911659, 36.545685, 39.805614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290100, 36.704136, 40.136162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259602, 36.313255, 40.056904>,  <35.241302, 36.078728, 40.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259602, 36.313255, 40.056904>,  <35.290100, 36.704136, 40.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259602, 36.313255, 40.056904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317776, -0.164548, 0.933779,
		-0.945095, 0.134165, -0.297984,
		-0.076248, -0.977202, -0.198148,
		35.236729, 36.020096, 39.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571106, 36.535690, 40.319916>,  <35.290100, 36.704136, 40.136162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571106, 36.535690, 40.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821468, 36.225094, 40.349037>,  <34.971687, 36.038738, 40.366512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821468, 36.225094, 40.349037>,  <34.571106, 36.535690, 40.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821468, 36.225094, 40.349037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288421, -0.143728, 0.946655,
		-0.724603, -0.613520, -0.313917,
		0.625910, -0.776489, 0.072806,
		35.009243, 35.992146, 40.370880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195419, 36.049725, 40.648735>,  <34.571106, 36.535690, 40.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195419, 36.049725, 40.648735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560665, 35.886646, 40.648735>,  <34.779812, 35.788799, 40.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560665, 35.886646, 40.648735>,  <34.195419, 36.049725, 40.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560665, 35.886646, 40.648735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186222, -0.417074, 0.889590,
		-0.362677, -0.812303, -0.456759,
		0.913119, -0.407692, 0.000006,
		34.834599, 35.764336, 40.648735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085159, 35.447433, 40.952156>,  <34.195419, 36.049725, 40.648735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085159, 35.447433, 40.952156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479633, 35.499187, 40.993530>,  <34.716316, 35.530239, 41.018353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479633, 35.499187, 40.993530>,  <34.085159, 35.447433, 40.952156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479633, 35.499187, 40.993530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032158, -0.463009, 0.885770,
		0.162492, -0.876860, -0.452452,
		0.986186, 0.129380, 0.103433,
		34.775490, 35.538002, 41.024559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337936, 34.774078, 41.023087>,  <34.085159, 35.447433, 40.952156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337936, 34.774078, 41.023087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575775, 35.041763, 41.201347>,  <34.718479, 35.202374, 41.308304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575775, 35.041763, 41.201347>,  <34.337936, 34.774078, 41.023087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575775, 35.041763, 41.201347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128354, -0.468166, 0.874269,
		0.793715, -0.577036, -0.192472,
		0.594593, 0.669216, 0.445655,
		34.754154, 35.242527, 41.335045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410950, 33.994221, 40.896400>,  <34.337936, 34.774078, 41.023087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410950, 33.994221, 40.896400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114845, 33.729515, 40.943867>,  <33.937183, 33.570690, 40.972347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114845, 33.729515, 40.943867>,  <34.410950, 33.994221, 40.896400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114845, 33.729515, 40.943867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110398, -0.054456, -0.992395,
		0.663193, -0.747732, -0.032746,
		-0.740262, -0.661764, 0.118663,
		33.892765, 33.530987, 40.979465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553688, 33.369778, 40.476471>,  <34.410950, 33.994221, 40.896400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553688, 33.369778, 40.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156605, 33.395985, 40.516956>,  <33.918354, 33.411709, 40.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156605, 33.395985, 40.516956>,  <34.553688, 33.369778, 40.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156605, 33.395985, 40.516956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104597, -0.050423, -0.993236,
		-0.059967, -0.996577, 0.056907,
		-0.992705, 0.065514, 0.101215,
		33.858791, 33.415638, 40.547321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315445, 32.903023, 40.051376>,  <34.553688, 33.369778, 40.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315445, 32.903023, 40.051376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988449, 33.126167, 40.108650>,  <33.792252, 33.260056, 40.143013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988449, 33.126167, 40.108650>,  <34.315445, 32.903023, 40.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988449, 33.126167, 40.108650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184225, -0.017726, -0.982724,
		-0.545691, -0.829742, 0.117264,
		-0.817486, 0.557866, 0.143186,
		33.743202, 33.293526, 40.151608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735504, 32.631336, 39.548904>,  <34.315445, 32.903023, 40.051376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735504, 32.631336, 39.548904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598083, 32.993347, 39.649223>,  <33.515633, 33.210552, 39.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598083, 32.993347, 39.649223>,  <33.735504, 32.631336, 39.548904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598083, 32.993347, 39.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487354, 0.056472, -0.871377,
		-0.802783, -0.421588, 0.421668,
		-0.343549, 0.905027, 0.250797,
		33.495018, 33.264854, 39.724464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037922, 32.668407, 39.377811>,  <33.735504, 32.631336, 39.548904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037922, 32.668407, 39.377811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110691, 33.059036, 39.423775>,  <33.154354, 33.293415, 39.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110691, 33.059036, 39.423775>,  <33.037922, 32.668407, 39.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110691, 33.059036, 39.423775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577488, 0.200695, -0.791347,
		-0.795871, 0.077607, 0.600472,
		0.181926, 0.976575, 0.114910,
		33.165268, 33.352009, 39.458248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419262, 32.992290, 39.222218>,  <33.037922, 32.668407, 39.377811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419262, 32.992290, 39.222218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708988, 33.263512, 39.172234>,  <32.882824, 33.426243, 39.142242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708988, 33.263512, 39.172234>,  <32.419262, 32.992290, 39.222218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708988, 33.263512, 39.172234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409123, 0.276800, -0.869483,
		-0.554965, 0.680903, 0.477897,
		0.724315, 0.678051, -0.124959,
		32.926281, 33.466927, 39.134747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068581, 33.743046, 39.091930>,  <32.419262, 32.992290, 39.222218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068581, 33.743046, 39.091930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434864, 33.735447, 38.931374>,  <32.654633, 33.730888, 38.835041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434864, 33.735447, 38.931374>,  <32.068581, 33.743046, 39.091930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434864, 33.735447, 38.931374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378092, 0.297582, -0.876636,
		0.136101, 0.954507, 0.265316,
		0.915709, -0.018997, -0.401392,
		32.709576, 33.729748, 38.810955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011871, 34.272118, 38.695705>,  <32.068581, 33.743046, 39.091930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011871, 34.272118, 38.695705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324413, 34.054527, 38.573341>,  <32.511936, 33.923973, 38.499924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324413, 34.054527, 38.573341>,  <32.011871, 34.272118, 38.695705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324413, 34.054527, 38.573341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244366, 0.184356, -0.951997,
		0.574260, 0.818597, 0.011117,
		0.781351, -0.543977, -0.305906,
		32.558819, 33.891335, 38.481571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198833, 34.579472, 38.072929>,  <32.011871, 34.272118, 38.695705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198833, 34.579472, 38.072929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393208, 34.232010, 38.034355>,  <32.509834, 34.023533, 38.011211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393208, 34.232010, 38.034355>,  <32.198833, 34.579472, 38.072929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393208, 34.232010, 38.034355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183335, 0.006571, -0.983029,
		0.854548, 0.495371, -0.156061,
		0.485938, -0.868657, -0.096434,
		32.538990, 33.971413, 38.005424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579834, 34.711472, 37.531120>,  <32.198833, 34.579472, 38.072929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579834, 34.711472, 37.531120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522076, 34.315762, 37.539932>,  <32.487419, 34.078335, 37.545219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522076, 34.315762, 37.539932>,  <32.579834, 34.711472, 37.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522076, 34.315762, 37.539932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108967, -0.006228, -0.994026,
		0.983502, -0.145936, -0.106899,
		-0.144398, -0.989274, 0.022028,
		32.478756, 34.018978, 37.546539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064518, 34.333557, 36.923622>,  <32.579834, 34.711472, 37.531120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064518, 34.333557, 36.923622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781872, 34.084717, 37.058491>,  <32.612282, 33.935413, 37.139412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781872, 34.084717, 37.058491>,  <33.064518, 34.333557, 36.923622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781872, 34.084717, 37.058491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235021, -0.243107, -0.941097,
		0.667424, -0.744239, 0.025578,
		-0.706619, -0.622100, 0.337168,
		32.569885, 33.898087, 37.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171940, 33.698689, 36.579689>,  <33.064518, 34.333557, 36.923622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171940, 33.698689, 36.579689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791466, 33.722511, 36.700821>,  <32.563183, 33.736805, 36.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791466, 33.722511, 36.700821>,  <33.171940, 33.698689, 36.579689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791466, 33.722511, 36.700821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305248, -0.326342, -0.894609,
		0.045549, -0.943374, 0.328589,
		-0.951183, 0.059553, 0.302828,
		32.506111, 33.740376, 36.791668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795395, 33.142311, 36.126026>,  <33.171940, 33.698689, 36.579689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795395, 33.142311, 36.126026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498711, 33.371735, 36.265110>,  <32.320702, 33.509388, 36.348560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498711, 33.371735, 36.265110>,  <32.795395, 33.142311, 36.126026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498711, 33.371735, 36.265110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448442, -0.038559, -0.892980,
		-0.498768, -0.818257, 0.285807,
		-0.741707, 0.573558, 0.347709,
		32.276199, 33.543800, 36.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105423, 32.835510, 36.040257>,  <32.795395, 33.142311, 36.126026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105423, 32.835510, 36.040257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054394, 33.231800, 36.021576>,  <32.023777, 33.469574, 36.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054394, 33.231800, 36.021576>,  <32.105423, 32.835510, 36.040257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054394, 33.231800, 36.021576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288395, -0.082103, -0.953984,
		-0.948974, -0.108238, 0.296196,
		-0.127576, 0.990729, -0.046698,
		32.016121, 33.529018, 36.007565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426971, 32.081451, 36.175819>,  <32.105423, 32.835510, 36.040257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426971, 32.081451, 36.175819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486134, 31.949932, 35.802719>,  <32.521629, 31.871021, 35.578861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486134, 31.949932, 35.802719>,  <32.426971, 32.081451, 36.175819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486134, 31.949932, 35.802719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889002, -0.457454, 0.020287,
		-0.433359, 0.826213, -0.359961,
		0.147904, -0.328798, -0.932747,
		32.530506, 31.851294, 35.522896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518467, 31.423315, 36.400990>,  <32.426971, 32.081451, 36.175819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518467, 31.423315, 36.400990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513680, 31.070692, 36.212219>,  <32.510807, 30.859119, 36.098957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513680, 31.070692, 36.212219>,  <32.518467, 31.423315, 36.400990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513680, 31.070692, 36.212219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461875, -0.423468, 0.779324,
		-0.886864, -0.208645, 0.412237,
		-0.011968, -0.881557, -0.471927,
		32.510090, 30.806225, 36.070641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252792, 31.101732, 37.057835>,  <32.518467, 31.423315, 36.400990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252792, 31.101732, 37.057835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460590, 30.874260, 36.802734>,  <32.585270, 30.737776, 36.649673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460590, 30.874260, 36.802734>,  <32.252792, 31.101732, 37.057835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460590, 30.874260, 36.802734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407376, -0.491246, 0.769885,
		-0.751109, -0.659758, -0.023535,
		0.519499, -0.568680, -0.637749,
		32.616440, 30.703655, 36.611408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190075, 30.275509, 37.091171>,  <32.252792, 31.101732, 37.057835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190075, 30.275509, 37.091171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539379, 30.443792, 36.992851>,  <32.748962, 30.544764, 36.933857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539379, 30.443792, 36.992851>,  <32.190075, 30.275509, 37.091171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539379, 30.443792, 36.992851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436016, -0.449530, 0.779623,
		0.217500, -0.787988, -0.575993,
		0.873260, 0.420710, -0.245803,
		32.801357, 30.570005, 36.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668587, 29.728899, 37.230484>,  <32.190075, 30.275509, 37.091171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668587, 29.728899, 37.230484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896214, 30.056234, 37.198269>,  <33.032791, 30.252636, 37.178940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896214, 30.056234, 37.198269>,  <32.668587, 29.728899, 37.230484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896214, 30.056234, 37.198269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521894, -0.283756, 0.804431,
		0.635443, -0.499808, -0.588561,
		0.569069, 0.818336, -0.080536,
		33.066933, 30.301735, 37.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404072, 29.526924, 37.344913>,  <32.668587, 29.728899, 37.230484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404072, 29.526924, 37.344913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398979, 29.919792, 37.419941>,  <33.395924, 30.155512, 37.464958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398979, 29.919792, 37.419941>,  <33.404072, 29.526924, 37.344913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398979, 29.919792, 37.419941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567176, -0.147398, 0.810299,
		0.823498, 0.116702, -0.555186,
		-0.012730, 0.982168, 0.187573,
		33.395161, 30.214443, 37.476212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084751, 29.688066, 37.527756>,  <33.404072, 29.526924, 37.344913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084751, 29.688066, 37.527756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886806, 30.004953, 37.670589>,  <33.768040, 30.195086, 37.756290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886806, 30.004953, 37.670589>,  <34.084751, 29.688066, 37.527756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886806, 30.004953, 37.670589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476553, -0.096204, 0.873866,
		0.726646, 0.602606, -0.329927,
		-0.494857, 0.792219, 0.357080,
		33.738350, 30.242619, 37.777714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535606, 30.079325, 37.852562>,  <34.084751, 29.688066, 37.527756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535606, 30.079325, 37.852562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189610, 30.193520, 38.017628>,  <33.982014, 30.262037, 38.116665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189610, 30.193520, 38.017628>,  <34.535606, 30.079325, 37.852562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189610, 30.193520, 38.017628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390902, -0.132256, 0.910881,
		0.314622, 0.949213, 0.002803,
		-0.864990, 0.285488, 0.412660,
		33.930111, 30.279165, 38.141426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673252, 30.669003, 38.303791>,  <34.535606, 30.079325, 37.852562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673252, 30.669003, 38.303791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334332, 30.479450, 38.399715>,  <34.130978, 30.365719, 38.457272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334332, 30.479450, 38.399715>,  <34.673252, 30.669003, 38.303791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334332, 30.479450, 38.399715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329746, -0.115415, 0.936988,
		-0.416344, 0.872992, 0.254052,
		-0.847305, -0.473883, 0.239813,
		34.080139, 30.337286, 38.471661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462315, 31.079681, 38.947380>,  <34.673252, 30.669003, 38.303791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462315, 31.079681, 38.947380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266399, 30.730963, 38.950947>,  <34.148849, 30.521730, 38.953087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266399, 30.730963, 38.950947>,  <34.462315, 31.079681, 38.947380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266399, 30.730963, 38.950947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240790, -0.125439, 0.962437,
		-0.837933, 0.473533, 0.271359,
		-0.489784, -0.871798, 0.008913,
		34.119465, 30.469423, 38.953621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973289, 31.192972, 39.482578>,  <34.462315, 31.079681, 38.947380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973289, 31.192972, 39.482578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026245, 30.798967, 39.438358>,  <34.058018, 30.562565, 39.411827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026245, 30.798967, 39.438358>,  <33.973289, 31.192972, 39.482578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026245, 30.798967, 39.438358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142549, -0.091451, 0.985554,
		-0.980894, -0.146233, 0.128306,
		0.132387, -0.985014, -0.110549,
		34.065960, 30.503464, 39.405193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574905, 30.896774, 40.120346>,  <33.973289, 31.192972, 39.482578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574905, 30.896774, 40.120346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816872, 30.622578, 39.958271>,  <33.962051, 30.458059, 39.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816872, 30.622578, 39.958271>,  <33.574905, 30.896774, 40.120346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816872, 30.622578, 39.958271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251882, -0.317989, 0.914023,
		-0.755399, -0.654970, -0.019695,
		0.604920, -0.685491, -0.405184,
		33.998348, 30.416931, 39.836716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426750, 30.232006, 40.538696>,  <33.574905, 30.896774, 40.120346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426750, 30.232006, 40.538696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788544, 30.197819, 40.371555>,  <34.005619, 30.177307, 40.271271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788544, 30.197819, 40.371555>,  <33.426750, 30.232006, 40.538696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788544, 30.197819, 40.371555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320826, -0.509191, 0.798621,
		-0.281020, -0.856400, -0.433137,
		0.904488, -0.085467, -0.417847,
		34.059891, 30.172178, 40.246201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656136, 29.493002, 40.672527>,  <33.426750, 30.232006, 40.538696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656136, 29.493002, 40.672527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982243, 29.712036, 40.597172>,  <34.177906, 29.843456, 40.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982243, 29.712036, 40.597172>,  <33.656136, 29.493002, 40.672527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982243, 29.712036, 40.597172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, -0.299391, 0.865712,
		0.417649, -0.781356, -0.463738,
		0.815269, 0.547584, -0.188386,
		34.226822, 29.876310, 40.540657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246159, 29.119997, 40.604721>,  <33.656136, 29.493002, 40.672527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246159, 29.119997, 40.604721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435040, 29.462259, 40.689457>,  <34.548367, 29.667618, 40.740299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435040, 29.462259, 40.689457>,  <34.246159, 29.119997, 40.604721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435040, 29.462259, 40.689457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445112, -0.438884, 0.780549,
		0.760855, -0.274286, -0.588105,
		0.472203, 0.855657, 0.211839,
		34.576702, 29.718956, 40.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839001, 28.896803, 40.976089>,  <34.246159, 29.119997, 40.604721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839001, 28.896803, 40.976089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817600, 29.285759, 41.066952>,  <34.804760, 29.519133, 41.121468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817600, 29.285759, 41.066952>,  <34.839001, 28.896803, 40.976089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817600, 29.285759, 41.066952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345873, -0.195352, 0.917720,
		0.936755, 0.127667, -0.325871,
		-0.053503, 0.972388, 0.227154,
		34.801548, 29.577475, 41.135098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526299, 29.026539, 41.314098>,  <34.839001, 28.896803, 40.976089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526299, 29.026539, 41.314098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273090, 29.320562, 41.411236>,  <35.121166, 29.496977, 41.469517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273090, 29.320562, 41.411236>,  <35.526299, 29.026539, 41.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273090, 29.320562, 41.411236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153830, -0.188000, 0.970048,
		0.758698, 0.651416, 0.005934,
		-0.633020, 0.735060, 0.242843,
		35.083183, 29.541080, 41.484089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943584, 29.454243, 41.716244>,  <35.526299, 29.026539, 41.314098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943584, 29.454243, 41.716244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573910, 29.576857, 41.807384>,  <35.352104, 29.650425, 41.862068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573910, 29.576857, 41.807384>,  <35.943584, 29.454243, 41.716244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573910, 29.576857, 41.807384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210545, -0.088863, 0.973537,
		0.318671, 0.947702, 0.017587,
		-0.924186, 0.306535, 0.227852,
		35.296654, 29.668818, 41.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049858, 29.797577, 42.386101>,  <35.943584, 29.454243, 41.716244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049858, 29.797577, 42.386101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655582, 29.737427, 42.355614>,  <35.419018, 29.701336, 42.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655582, 29.737427, 42.355614>,  <36.049858, 29.797577, 42.386101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655582, 29.737427, 42.355614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041320, -0.222819, 0.973984,
		-0.163446, 0.963192, 0.213416,
		-0.985687, -0.150376, -0.076218,
		35.359875, 29.692314, 42.332748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701260, 30.144814, 42.942123>,  <36.049858, 29.797577, 42.386101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701260, 30.144814, 42.942123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470070, 29.845163, 42.812656>,  <35.331356, 29.665373, 42.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470070, 29.845163, 42.812656>,  <35.701260, 30.144814, 42.942123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470070, 29.845163, 42.812656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090975, -0.453299, 0.886704,
		-0.810971, 0.483043, 0.330145,
		-0.577971, -0.749126, -0.323668,
		35.296680, 29.620426, 42.715557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326473, 29.946638, 43.523865>,  <35.701260, 30.144814, 42.942123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326473, 29.946638, 43.523865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304474, 29.609255, 43.310116>,  <35.291275, 29.406824, 43.181866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304474, 29.609255, 43.310116>,  <35.326473, 29.946638, 43.523865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304474, 29.609255, 43.310116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272718, -0.527522, 0.804578,
		-0.960521, -0.101486, 0.259037,
		-0.054994, -0.843458, -0.534373,
		35.287975, 29.356216, 43.149803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825897, 29.535229, 43.857685>,  <35.326473, 29.946638, 43.523865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825897, 29.535229, 43.857685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064247, 29.299355, 43.639618>,  <35.207256, 29.157829, 43.508778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064247, 29.299355, 43.639618>,  <34.825897, 29.535229, 43.857685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064247, 29.299355, 43.639618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137708, -0.593761, 0.792770,
		-0.791184, -0.547464, -0.272601,
		0.595873, -0.589687, -0.545164,
		35.243008, 29.122448, 43.476070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606663, 28.914717, 44.035378>,  <34.825897, 29.535229, 43.857685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606663, 28.914717, 44.035378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970837, 28.843203, 43.886169>,  <35.189342, 28.800295, 43.796642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970837, 28.843203, 43.886169>,  <34.606663, 28.914717, 44.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970837, 28.843203, 43.886169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164677, -0.670581, 0.723328,
		-0.379462, -0.719970, -0.581078,
		0.910434, -0.178785, -0.373022,
		35.243965, 28.789568, 43.774261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658485, 28.136913, 43.885792>,  <34.606663, 28.914717, 44.035378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658485, 28.136913, 43.885792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033897, 28.274336, 43.899292>,  <35.259144, 28.356789, 43.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033897, 28.274336, 43.899292>,  <34.658485, 28.136913, 43.885792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033897, 28.274336, 43.899292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135795, -0.457304, 0.878881,
		0.317380, -0.820269, -0.475845,
		0.938525, 0.343557, 0.033751,
		35.315456, 28.377403, 43.909416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075172, 27.551498, 44.091064>,  <34.658485, 28.136913, 43.885792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075172, 27.551498, 44.091064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303291, 27.872747, 44.160069>,  <35.440163, 28.065496, 44.201469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303291, 27.872747, 44.160069>,  <35.075172, 27.551498, 44.091064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303291, 27.872747, 44.160069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132423, -0.297144, 0.945605,
		0.810695, -0.516432, -0.275812,
		0.570297, 0.803121, 0.172505,
		35.474380, 28.113684, 44.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613022, 27.146061, 44.457527>,  <35.075172, 27.551498, 44.091064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613022, 27.146061, 44.457527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674282, 27.537411, 44.513138>,  <35.711037, 27.772221, 44.546505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674282, 27.537411, 44.513138>,  <35.613022, 27.146061, 44.457527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674282, 27.537411, 44.513138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331685, -0.183421, 0.925387,
		0.930876, -0.095607, -0.352603,
		0.153148, 0.978374, 0.139030,
		35.720226, 27.830923, 44.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266373, 27.242008, 44.677814>,  <35.613022, 27.146061, 44.457527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266373, 27.242008, 44.677814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059319, 27.559456, 44.805702>,  <35.935085, 27.749926, 44.882435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059319, 27.559456, 44.805702>,  <36.266373, 27.242008, 44.677814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059319, 27.559456, 44.805702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340233, -0.151931, 0.927986,
		0.785044, 0.589138, -0.191371,
		-0.517637, 0.793620, 0.319717,
		35.904026, 27.797543, 44.901619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715881, 27.545572, 45.243576>,  <36.266373, 27.242008, 44.677814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715881, 27.545572, 45.243576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355438, 27.704731, 45.312481>,  <36.139172, 27.800226, 45.353825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355438, 27.704731, 45.312481>,  <36.715881, 27.545572, 45.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355438, 27.704731, 45.312481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130670, -0.129615, 0.982917,
		0.413427, 0.908228, 0.064804,
		-0.901112, 0.397896, 0.172265,
		36.085106, 27.824100, 45.364159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063339, 28.172871, 45.394722>,  <36.715881, 27.545572, 45.243576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063339, 28.172871, 45.394722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427723, 28.332903, 45.354534>,  <37.646351, 28.428923, 45.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427723, 28.332903, 45.354534>,  <37.063339, 28.172871, 45.394722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427723, 28.332903, 45.354534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258280, 0.363281, -0.895164,
		-0.321638, 0.841405, 0.434266,
		0.910956, 0.400081, -0.100473,
		37.701008, 28.452927, 45.324390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007885, 28.779654, 44.943096>,  <37.063339, 28.172871, 45.394722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007885, 28.779654, 44.943096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397633, 28.691111, 44.927055>,  <37.631481, 28.637985, 44.917431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397633, 28.691111, 44.927055>,  <37.007885, 28.779654, 44.943096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397633, 28.691111, 44.927055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028602, 0.298706, -0.953916,
		0.223134, 0.928319, 0.297381,
		0.974368, -0.221357, -0.040100,
		37.689941, 28.624704, 44.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291374, 29.303114, 44.505383>,  <37.007885, 28.779654, 44.943096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291374, 29.303114, 44.505383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552902, 29.000563, 44.497299>,  <37.709820, 28.819033, 44.492451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552902, 29.000563, 44.497299>,  <37.291374, 29.303114, 44.505383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552902, 29.000563, 44.497299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214199, 0.210637, -0.953809,
		0.725695, 0.619294, 0.299734,
		0.653823, -0.756377, -0.020206,
		37.749050, 28.773649, 44.491238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803642, 29.595207, 44.204304>,  <37.291374, 29.303114, 44.505383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803642, 29.595207, 44.204304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905945, 29.210814, 44.162167>,  <37.967327, 28.980177, 44.136883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905945, 29.210814, 44.162167>,  <37.803642, 29.595207, 44.204304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905945, 29.210814, 44.162167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185031, 0.155612, -0.970334,
		0.948870, 0.228675, 0.217611,
		0.255754, -0.960985, -0.105343,
		37.982670, 28.922518, 44.130562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546490, 29.549765, 44.040020>,  <37.803642, 29.595207, 44.204304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546490, 29.549765, 44.040020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350262, 29.231934, 43.896919>,  <38.232525, 29.041235, 43.811058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350262, 29.231934, 43.896919>,  <38.546490, 29.549765, 44.040020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350262, 29.231934, 43.896919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502651, 0.077336, -0.861023,
		0.711817, -0.602217, 0.361456,
		-0.490569, -0.794578, -0.357754,
		38.203091, 28.993561, 43.789593>
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
