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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.534130, 33.024586, 23.344776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582859, 33.102497, 22.955475>,  <42.612099, 33.149242, 22.721893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582859, 33.102497, 22.955475>,  <42.534130, 33.024586, 23.344776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582859, 33.102497, 22.955475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925122, 0.377533, -0.040245,
		0.359596, 0.905280, 0.226186,
		0.121826, 0.194777, -0.973253,
		42.619408, 33.160931, 22.663500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127232, 33.511948, 23.298594>,  <42.534130, 33.024586, 23.344776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127232, 33.511948, 23.298594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199139, 33.436153, 22.912479>,  <42.242283, 33.390678, 22.680811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199139, 33.436153, 22.912479>,  <42.127232, 33.511948, 23.298594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199139, 33.436153, 22.912479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915649, 0.326421, -0.234600,
		0.359543, 0.926037, -0.114822,
		0.179768, -0.189486, -0.965287,
		42.253071, 33.379307, 22.622892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563988, 33.773411, 23.046436>,  <42.127232, 33.511948, 23.298594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563988, 33.773411, 23.046436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700329, 33.585747, 22.720562>,  <41.782135, 33.473148, 22.525038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700329, 33.585747, 22.720562>,  <41.563988, 33.773411, 23.046436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700329, 33.585747, 22.720562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914518, 0.035373, -0.402997,
		0.217886, 0.882407, -0.416994,
		0.340857, -0.469155, -0.814684,
		41.802586, 33.445000, 22.476156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484779, 34.109196, 22.386011>,  <41.563988, 33.773411, 23.046436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484779, 34.109196, 22.386011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439224, 33.713638, 22.347809>,  <41.411892, 33.476303, 22.324888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439224, 33.713638, 22.347809>,  <41.484779, 34.109196, 22.386011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439224, 33.713638, 22.347809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897966, 0.143588, -0.415981,
		0.425074, 0.038386, -0.904344,
		-0.113885, -0.988893, -0.095505,
		41.405060, 33.416969, 22.319157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363483, 33.800865, 21.637480>,  <41.484779, 34.109196, 22.386011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363483, 33.800865, 21.637480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139957, 33.607113, 21.906731>,  <41.005840, 33.490860, 22.068281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139957, 33.607113, 21.906731>,  <41.363483, 33.800865, 21.637480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139957, 33.607113, 21.906731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808914, 0.139540, -0.571127,
		0.182721, -0.863652, -0.469807,
		-0.558812, -0.484390, 0.673123,
		40.972313, 33.461800, 22.108669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684086, 34.015316, 21.581388>,  <41.363483, 33.800865, 21.637480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684086, 34.015316, 21.581388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301163, 34.118114, 21.634319>,  <40.071407, 34.179794, 21.666079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301163, 34.118114, 21.634319>,  <40.684086, 34.015316, 21.581388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301163, 34.118114, 21.634319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258865, 0.965908, -0.003215,
		-0.128643, 0.031178, -0.991201,
		-0.957309, 0.257001, 0.132328,
		40.013969, 34.195213, 21.674017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611828, 34.547016, 21.100649>,  <40.684086, 34.015316, 21.581388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611828, 34.547016, 21.100649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325508, 34.618614, 21.370640>,  <40.153717, 34.661575, 21.532635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325508, 34.618614, 21.370640>,  <40.611828, 34.547016, 21.100649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325508, 34.618614, 21.370640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141371, 0.983719, -0.110955,
		-0.683848, 0.016001, -0.729449,
		-0.715798, 0.179000, 0.674976,
		40.110767, 34.672314, 21.573133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147598, 35.024815, 20.861423>,  <40.611828, 34.547016, 21.100649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147598, 35.024815, 20.861423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109058, 35.052658, 21.258587>,  <40.085934, 35.069366, 21.496885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109058, 35.052658, 21.258587>,  <40.147598, 35.024815, 20.861423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109058, 35.052658, 21.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074017, 0.995290, -0.062597,
		-0.992591, 0.067461, -0.101050,
		-0.096352, 0.069613, 0.992910,
		40.080154, 35.073544, 21.556459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713650, 35.523067, 20.985340>,  <40.147598, 35.024815, 20.861423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713650, 35.523067, 20.985340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913727, 35.492573, 21.330360>,  <40.033775, 35.474277, 21.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913727, 35.492573, 21.330360>,  <39.713650, 35.523067, 20.985340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913727, 35.492573, 21.330360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039898, 0.997088, 0.064992,
		-0.864992, 0.001905, 0.501782,
		0.500197, -0.076238, 0.862549,
		40.063786, 35.469700, 21.589125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359055, 36.009575, 21.345215>,  <39.713650, 35.523067, 20.985340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359055, 36.009575, 21.345215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697144, 35.933952, 21.545155>,  <39.899998, 35.888580, 21.665119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697144, 35.933952, 21.545155>,  <39.359055, 36.009575, 21.345215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697144, 35.933952, 21.545155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029037, 0.950198, 0.310292,
		-0.533619, -0.247752, 0.808622,
		0.845226, -0.189058, 0.499850,
		39.950710, 35.877235, 21.695110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331078, 36.310921, 21.929033>,  <39.359055, 36.009575, 21.345215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331078, 36.310921, 21.929033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725838, 36.253548, 21.958549>,  <39.962696, 36.219124, 21.976259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725838, 36.253548, 21.958549>,  <39.331078, 36.310921, 21.929033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725838, 36.253548, 21.958549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088517, 0.864012, 0.495628,
		-0.134846, -0.482607, 0.865394,
		0.986905, -0.143436, 0.073789,
		40.021908, 36.210518, 21.980686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433704, 36.554604, 22.567888>,  <39.331078, 36.310921, 21.929033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433704, 36.554604, 22.567888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776592, 36.558033, 22.361935>,  <39.982323, 36.560089, 22.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776592, 36.558033, 22.361935>,  <39.433704, 36.554604, 22.567888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776592, 36.558033, 22.361935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257265, 0.859015, 0.442615,
		0.446089, -0.511879, 0.734156,
		0.857216, 0.008573, -0.514886,
		40.033756, 36.560604, 22.207468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960716, 36.745274, 22.955168>,  <39.433704, 36.554604, 22.567888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960716, 36.745274, 22.955168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147419, 36.826965, 22.610973>,  <40.259441, 36.875980, 22.404457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147419, 36.826965, 22.610973>,  <39.960716, 36.745274, 22.955168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147419, 36.826965, 22.610973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259171, 0.898669, 0.353872,
		0.845559, -0.388183, 0.366528,
		0.466754, 0.204227, -0.860483,
		40.287445, 36.888233, 22.352829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435242, 37.227444, 23.122776>,  <39.960716, 36.745274, 22.955168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435242, 37.227444, 23.122776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463638, 37.283817, 22.727787>,  <40.480675, 37.317642, 22.490793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463638, 37.283817, 22.727787>,  <40.435242, 37.227444, 23.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463638, 37.283817, 22.727787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206817, 0.966376, 0.152791,
		0.975801, -0.215073, 0.039458,
		0.070993, 0.140933, -0.987470,
		40.484936, 37.326096, 22.431545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009995, 37.630512, 23.046289>,  <40.435242, 37.227444, 23.122776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009995, 37.630512, 23.046289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833721, 37.676579, 22.690193>,  <40.727955, 37.704220, 22.476536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833721, 37.676579, 22.690193>,  <41.009995, 37.630512, 23.046289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833721, 37.676579, 22.690193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250236, 0.968184, 0.001381,
		0.862077, -0.222163, -0.455484,
		-0.440686, 0.115169, -0.890243,
		40.701515, 37.711128, 22.423120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419907, 38.017426, 22.556778>,  <41.009995, 37.630512, 23.046289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419907, 38.017426, 22.556778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048691, 38.048218, 22.411003>,  <40.825962, 38.066692, 22.323538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048691, 38.048218, 22.411003>,  <41.419907, 38.017426, 22.556778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048691, 38.048218, 22.411003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081173, 0.996693, 0.003832,
		0.363527, -0.026026, -0.931220,
		-0.928040, 0.076983, -0.364438,
		40.770279, 38.071312, 22.301672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532478, 38.548847, 22.276608>,  <41.419907, 38.017426, 22.556778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532478, 38.548847, 22.276608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135185, 38.502472, 22.273602>,  <40.896809, 38.474648, 22.271799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135185, 38.502472, 22.273602>,  <41.532478, 38.548847, 22.276608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135185, 38.502472, 22.273602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116165, 0.990056, 0.079338,
		-0.001759, 0.079674, -0.996819,
		-0.993228, -0.115935, -0.007514,
		40.837215, 38.467690, 22.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255486, 39.030586, 21.753828>,  <41.532478, 38.548847, 22.276608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255486, 39.030586, 21.753828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987270, 38.954220, 22.040585>,  <40.826344, 38.908401, 22.212639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987270, 38.954220, 22.040585>,  <41.255486, 39.030586, 21.753828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987270, 38.954220, 22.040585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062875, 0.977468, 0.201502,
		-0.739208, 0.090040, -0.667431,
		-0.670536, -0.190917, 0.716890,
		40.786110, 38.896946, 22.255651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844193, 39.611362, 21.743135>,  <41.255486, 39.030586, 21.753828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844193, 39.611362, 21.743135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790791, 39.447762, 22.104221>,  <40.758751, 39.349602, 22.320873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790791, 39.447762, 22.104221>,  <40.844193, 39.611362, 21.743135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790791, 39.447762, 22.104221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102765, 0.911672, 0.397861,
		-0.985706, -0.039651, -0.163744,
		-0.133506, -0.409001, 0.902715,
		40.750740, 39.325062, 22.375036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257206, 39.942436, 22.077835>,  <40.844193, 39.611362, 21.743135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257206, 39.942436, 22.077835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441555, 39.776745, 22.391781>,  <40.552166, 39.677330, 22.580149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441555, 39.776745, 22.391781>,  <40.257206, 39.942436, 22.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441555, 39.776745, 22.391781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074213, 0.863300, 0.499205,
		-0.884357, -0.288318, 0.367131,
		0.460874, -0.414230, 0.784862,
		40.579819, 39.652477, 22.627239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858864, 40.191082, 22.530193>,  <40.257206, 39.942436, 22.077835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858864, 40.191082, 22.530193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173409, 40.061813, 22.740791>,  <40.362137, 39.984253, 22.867151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173409, 40.061813, 22.740791>,  <39.858864, 40.191082, 22.530193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173409, 40.061813, 22.740791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059157, 0.887732, 0.456543,
		-0.614929, -0.327861, 0.717195,
		0.786360, -0.323168, 0.526497,
		40.409317, 39.964863, 22.898741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804733, 40.418167, 23.250523>,  <39.858864, 40.191082, 22.530193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804733, 40.418167, 23.250523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193665, 40.357353, 23.179573>,  <40.427025, 40.320866, 23.137003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193665, 40.357353, 23.179573>,  <39.804733, 40.418167, 23.250523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193665, 40.357353, 23.179573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207239, 0.911803, 0.354495,
		0.107835, -0.381445, 0.918080,
		0.972329, -0.152035, -0.177375,
		40.485363, 40.311745, 23.126360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092354, 40.711281, 23.755119>,  <39.804733, 40.418167, 23.250523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092354, 40.711281, 23.755119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408161, 40.701111, 23.509838>,  <40.597645, 40.695007, 23.362669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408161, 40.701111, 23.509838>,  <40.092354, 40.711281, 23.755119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408161, 40.701111, 23.509838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300822, 0.886919, 0.350543,
		0.534946, -0.461224, 0.707887,
		0.789518, -0.025427, -0.613201,
		40.645016, 40.693481, 23.325878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566502, 40.928814, 24.190222>,  <40.092354, 40.711281, 23.755119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566502, 40.928814, 24.190222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702927, 40.988972, 23.819050>,  <40.784782, 41.025066, 23.596346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702927, 40.988972, 23.819050>,  <40.566502, 40.928814, 24.190222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702927, 40.988972, 23.819050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401835, 0.869060, 0.288553,
		0.849824, -0.471291, 0.235974,
		0.341068, 0.150397, -0.927929,
		40.805248, 41.034092, 23.540670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156387, 41.271591, 24.389725>,  <40.566502, 40.928814, 24.190222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156387, 41.271591, 24.389725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062401, 41.346897, 24.008286>,  <41.006008, 41.392082, 23.779423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062401, 41.346897, 24.008286>,  <41.156387, 41.271591, 24.389725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062401, 41.346897, 24.008286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337753, 0.935743, 0.101522,
		0.911435, -0.298227, -0.283454,
		-0.234964, 0.188269, -0.953597,
		40.991913, 41.403378, 23.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566051, 41.798565, 24.333511>,  <41.156387, 41.271591, 24.389725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566051, 41.798565, 24.333511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342876, 41.839409, 24.004082>,  <41.208973, 41.863914, 23.806423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342876, 41.839409, 24.004082>,  <41.566051, 41.798565, 24.333511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342876, 41.839409, 24.004082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267678, 0.961503, -0.062126,
		0.785527, -0.255116, -0.563794,
		-0.557939, 0.102113, -0.823576,
		41.175495, 41.870045, 23.757010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042046, 42.070576, 23.740892>,  <41.566051, 41.798565, 24.333511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042046, 42.070576, 23.740892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662151, 42.187344, 23.786110>,  <41.434216, 42.257404, 23.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662151, 42.187344, 23.786110>,  <42.042046, 42.070576, 23.740892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662151, 42.187344, 23.786110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312613, 0.865480, 0.391429,
		0.016431, 0.407093, -0.913239,
		-0.949738, 0.291922, 0.113042,
		41.377232, 42.274921, 23.820023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933437, 42.768772, 23.540257>,  <42.042046, 42.070576, 23.740892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933437, 42.768772, 23.540257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642284, 42.694630, 23.804325>,  <41.467590, 42.650143, 23.962767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642284, 42.694630, 23.804325>,  <41.933437, 42.768772, 23.540257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642284, 42.694630, 23.804325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274008, 0.803932, 0.527837,
		-0.628572, 0.565097, -0.534380,
		-0.727885, -0.185360, 0.660171,
		41.423920, 42.639023, 24.002377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498264, 43.340397, 23.619061>,  <41.933437, 42.768772, 23.540257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498264, 43.340397, 23.619061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514084, 43.142361, 23.966236>,  <41.523575, 43.023537, 24.174541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514084, 43.142361, 23.966236>,  <41.498264, 43.340397, 23.619061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514084, 43.142361, 23.966236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325506, 0.827620, 0.457264,
		-0.944713, 0.264434, 0.193889,
		0.039550, -0.495095, 0.867938,
		41.525948, 42.993832, 24.226618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024544, 43.784336, 24.129221>,  <41.498264, 43.340397, 23.619061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024544, 43.784336, 24.129221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282410, 43.550358, 24.326096>,  <41.437130, 43.409973, 24.444221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282410, 43.550358, 24.326096>,  <41.024544, 43.784336, 24.129221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282410, 43.550358, 24.326096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370125, 0.802166, 0.468549,
		-0.668890, -0.119886, 0.733630,
		0.644666, -0.584942, 0.492188,
		41.475811, 43.374874, 24.473751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987820, 43.985779, 24.839354>,  <41.024544, 43.784336, 24.129221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987820, 43.985779, 24.839354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339916, 43.826939, 24.735443>,  <41.551174, 43.731636, 24.673096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339916, 43.826939, 24.735443>,  <40.987820, 43.985779, 24.839354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339916, 43.826939, 24.735443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470041, 0.804739, 0.362570,
		0.065076, -0.441255, 0.895019,
		0.880242, -0.397101, -0.259777,
		41.603989, 43.707809, 24.657511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552166, 43.494171, 25.223532>,  <40.987820, 43.985779, 24.839354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552166, 43.494171, 25.223532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240173, 43.722500, 25.326130>,  <40.052979, 43.859497, 25.387690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240173, 43.722500, 25.326130>,  <40.552166, 43.494171, 25.223532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240173, 43.722500, 25.326130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617871, -0.637405, -0.460381,
		-0.099301, -0.517572, 0.849858,
		-0.779984, 0.570818, 0.256498,
		40.006180, 43.893745, 25.403080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192818, 43.111660, 25.622040>,  <40.552166, 43.494171, 25.223532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192818, 43.111660, 25.622040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976818, 43.369312, 25.405338>,  <39.847218, 43.523903, 25.275318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976818, 43.369312, 25.405338>,  <40.192818, 43.111660, 25.622040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976818, 43.369312, 25.405338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390112, -0.761901, -0.517029,
		-0.745797, -0.067850, 0.662709,
		-0.539999, 0.644130, -0.541755,
		39.814819, 43.562550, 25.242811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578476, 42.844269, 25.667610>,  <40.192818, 43.111660, 25.622040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578476, 42.844269, 25.667610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612560, 43.044018, 25.322735>,  <39.633011, 43.163868, 25.115810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612560, 43.044018, 25.322735>,  <39.578476, 42.844269, 25.667610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612560, 43.044018, 25.322735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026994, -0.863861, -0.503006,
		-0.995997, 0.066136, -0.060132,
		0.085212, 0.499369, -0.862188,
		39.638123, 43.193829, 25.064077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987961, 42.851971, 25.296041>,  <39.578476, 42.844269, 25.667610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987961, 42.851971, 25.296041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311573, 42.847965, 25.060966>,  <39.505741, 42.845562, 24.919922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311573, 42.847965, 25.060966>,  <38.987961, 42.851971, 25.296041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311573, 42.847965, 25.060966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300774, -0.866083, -0.399293,
		-0.504987, 0.499800, -0.703697,
		0.809026, -0.010016, -0.587687,
		39.554279, 42.844959, 24.884661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950176, 42.828030, 24.554449>,  <38.987961, 42.851971, 25.296041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950176, 42.828030, 24.554449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271580, 42.619160, 24.668789>,  <39.464420, 42.493839, 24.737392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271580, 42.619160, 24.668789>,  <38.950176, 42.828030, 24.554449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271580, 42.619160, 24.668789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516084, -0.850359, -0.102693,
		0.296700, -0.065009, -0.952755,
		0.803508, -0.522171, 0.285852,
		39.512630, 42.462509, 24.754545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954098, 42.398884, 24.047504>,  <38.950176, 42.828030, 24.554449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954098, 42.398884, 24.047504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141533, 42.267838, 24.375671>,  <39.253994, 42.189209, 24.572573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141533, 42.267838, 24.375671>,  <38.954098, 42.398884, 24.047504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141533, 42.267838, 24.375671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560098, -0.828355, -0.010879,
		0.683163, -0.454418, -0.571658,
		0.468592, -0.327617, 0.820420,
		39.282112, 42.169552, 24.621798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300594, 41.663059, 23.889122>,  <38.954098, 42.398884, 24.047504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300594, 41.663059, 23.889122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277737, 41.683064, 24.287968>,  <39.264023, 41.695068, 24.527275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277737, 41.683064, 24.287968>,  <39.300594, 41.663059, 23.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277737, 41.683064, 24.287968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406092, -0.913554, 0.022547,
		0.912044, -0.403631, 0.072517,
		-0.057148, 0.050012, 0.997112,
		39.260593, 41.698067, 24.587101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529388, 41.049805, 24.059576>,  <39.300594, 41.663059, 23.889122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529388, 41.049805, 24.059576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331966, 41.144218, 24.394405>,  <39.213512, 41.200867, 24.595303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331966, 41.144218, 24.394405>,  <39.529388, 41.049805, 24.059576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331966, 41.144218, 24.394405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390172, -0.920271, 0.029437,
		0.777284, -0.312075, 0.546296,
		-0.493554, 0.236030, 0.837075,
		39.183899, 41.215027, 24.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723221, 40.558544, 24.577997>,  <39.529388, 41.049805, 24.059576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723221, 40.558544, 24.577997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375355, 40.708527, 24.706429>,  <39.166634, 40.798515, 24.783487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375355, 40.708527, 24.706429>,  <39.723221, 40.558544, 24.577997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375355, 40.708527, 24.706429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365880, -0.926237, 0.090646,
		0.331385, -0.038645, 0.942704,
		-0.869665, 0.374955, 0.321080,
		39.114456, 40.821014, 24.802753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507793, 40.019047, 25.030005>,  <39.723221, 40.558544, 24.577997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507793, 40.019047, 25.030005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178967, 40.231911, 24.948997>,  <38.981670, 40.359631, 24.900393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178967, 40.231911, 24.948997>,  <39.507793, 40.019047, 25.030005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178967, 40.231911, 24.948997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535934, -0.843291, -0.040454,
		-0.192308, 0.075280, 0.978443,
		-0.822066, 0.532160, -0.202517,
		38.932346, 40.391560, 24.888243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915318, 39.807446, 25.511316>,  <39.507793, 40.019047, 25.030005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915318, 39.807446, 25.511316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752087, 39.955383, 25.177444>,  <38.654148, 40.044147, 24.977121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752087, 39.955383, 25.177444>,  <38.915318, 39.807446, 25.511316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752087, 39.955383, 25.177444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570590, -0.817024, -0.083064,
		-0.712672, 0.442362, 0.544439,
		-0.408075, 0.369849, -0.834677,
		38.629665, 40.066338, 24.927042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240746, 39.535892, 25.601244>,  <38.915318, 39.807446, 25.511316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240746, 39.535892, 25.601244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265011, 39.659466, 25.221584>,  <38.279572, 39.733608, 24.993788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265011, 39.659466, 25.221584>,  <38.240746, 39.535892, 25.601244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265011, 39.659466, 25.221584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524056, -0.799442, -0.293696,
		-0.849521, 0.515223, 0.113399,
		0.060663, 0.308929, -0.949149,
		38.283211, 39.752144, 24.936840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625717, 39.446758, 25.312218>,  <38.240746, 39.535892, 25.601244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625717, 39.446758, 25.312218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859734, 39.466377, 24.988411>,  <38.000145, 39.478149, 24.794127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859734, 39.466377, 24.988411>,  <37.625717, 39.446758, 25.312218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859734, 39.466377, 24.988411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442352, -0.817319, -0.369208,
		-0.679744, 0.574094, -0.456469,
		0.585041, 0.049047, -0.809519,
		38.035244, 39.481091, 24.745556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229347, 39.139519, 24.757473>,  <37.625717, 39.446758, 25.312218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229347, 39.139519, 24.757473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598866, 39.123764, 24.605129>,  <37.820576, 39.114311, 24.513723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598866, 39.123764, 24.605129>,  <37.229347, 39.139519, 24.757473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598866, 39.123764, 24.605129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254846, -0.805619, -0.534819,
		-0.285761, 0.591123, -0.754264,
		0.923793, -0.039391, -0.380860,
		37.876003, 39.111946, 24.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227051, 39.193748, 24.055506>,  <37.229347, 39.139519, 24.757473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227051, 39.193748, 24.055506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585186, 39.028862, 24.122974>,  <37.800068, 38.929928, 24.163456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585186, 39.028862, 24.122974>,  <37.227051, 39.193748, 24.055506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585186, 39.028862, 24.122974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240930, -0.766760, -0.595006,
		0.374604, 0.492091, -0.785823,
		0.895335, -0.412220, 0.168672,
		37.853786, 38.905197, 24.173576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574848, 39.087795, 23.397943>,  <37.227051, 39.193748, 24.055506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574848, 39.087795, 23.397943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736343, 38.825077, 23.652695>,  <37.833241, 38.667446, 23.805546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736343, 38.825077, 23.652695>,  <37.574848, 39.087795, 23.397943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736343, 38.825077, 23.652695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242754, -0.748094, -0.617597,
		0.882078, 0.094746, -0.461477,
		0.403743, -0.656794, 0.636878,
		37.857468, 38.628040, 23.843758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962158, 38.671825, 23.008478>,  <37.574848, 39.087795, 23.397943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962158, 38.671825, 23.008478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919716, 38.432144, 23.325893>,  <37.894253, 38.288338, 23.516342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919716, 38.432144, 23.325893>,  <37.962158, 38.671825, 23.008478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919716, 38.432144, 23.325893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067532, -0.791857, -0.606961,
		0.992059, -0.117990, 0.043553,
		-0.106103, -0.599200, 0.793537,
		37.887886, 38.252384, 23.563955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155540, 38.019447, 22.777822>,  <37.962158, 38.671825, 23.008478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155540, 38.019447, 22.777822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006874, 37.921757, 23.136089>,  <37.917675, 37.863144, 23.351049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006874, 37.921757, 23.136089>,  <38.155540, 38.019447, 22.777822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006874, 37.921757, 23.136089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100297, -0.948567, -0.300267,
		0.922931, -0.201432, 0.328059,
		-0.371669, -0.244223, 0.895666,
		37.895374, 37.848492, 23.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525284, 37.481937, 22.997177>,  <38.155540, 38.019447, 22.777822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525284, 37.481937, 22.997177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169216, 37.472595, 23.179192>,  <37.955578, 37.466991, 23.288401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169216, 37.472595, 23.179192>,  <38.525284, 37.481937, 22.997177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169216, 37.472595, 23.179192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168835, -0.910684, -0.377027,
		0.423201, -0.412443, 0.806717,
		-0.890166, -0.023356, 0.455037,
		37.902164, 37.465588, 23.315702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543007, 36.893311, 23.383404>,  <38.525284, 37.481937, 22.997177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543007, 36.893311, 23.383404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156956, 36.979359, 23.323742>,  <37.925323, 37.030987, 23.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156956, 36.979359, 23.323742>,  <38.543007, 36.893311, 23.383404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156956, 36.979359, 23.323742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167766, -0.945699, -0.278404,
		-0.200945, -0.243673, 0.948812,
		-0.965130, 0.215122, -0.149154,
		37.867416, 37.043896, 23.278996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146282, 36.446373, 23.808546>,  <38.543007, 36.893311, 23.383404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146282, 36.446373, 23.808546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889252, 36.561779, 23.524616>,  <37.735031, 36.631023, 23.354259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889252, 36.561779, 23.524616>,  <38.146282, 36.446373, 23.808546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889252, 36.561779, 23.524616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235495, -0.955924, -0.175363,
		-0.729132, 0.054475, 0.682202,
		-0.642580, 0.288517, -0.709823,
		37.696476, 36.648335, 23.311668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805260, 35.932301, 23.836205>,  <38.146282, 36.446373, 23.808546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805260, 35.932301, 23.836205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690544, 36.099560, 23.491436>,  <37.621716, 36.199913, 23.284575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690544, 36.099560, 23.491436>,  <37.805260, 35.932301, 23.836205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690544, 36.099560, 23.491436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070704, -0.906499, -0.416245,
		-0.955380, -0.058434, 0.289540,
		-0.286791, 0.418144, -0.861920,
		37.604507, 36.225002, 23.232861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251167, 35.529957, 23.657255>,  <37.805260, 35.932301, 23.836205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251167, 35.529957, 23.657255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364899, 35.713707, 23.320652>,  <37.433136, 35.823956, 23.118690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364899, 35.713707, 23.320652>,  <37.251167, 35.529957, 23.657255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364899, 35.713707, 23.320652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316686, -0.783464, -0.534690,
		-0.904913, 0.418521, -0.077284,
		0.284328, 0.459373, -0.841507,
		37.450195, 35.851521, 23.068199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725632, 35.407490, 23.177059>,  <37.251167, 35.529957, 23.657255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725632, 35.407490, 23.177059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030766, 35.489182, 22.931660>,  <37.213844, 35.538197, 22.784420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030766, 35.489182, 22.931660>,  <36.725632, 35.407490, 23.177059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030766, 35.489182, 22.931660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243401, -0.788318, -0.565076,
		-0.599036, 0.580383, -0.551644,
		0.762831, 0.204230, -0.613497,
		37.259617, 35.550449, 22.747610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464546, 35.452351, 22.485142>,  <36.725632, 35.407490, 23.177059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464546, 35.452351, 22.485142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856453, 35.409042, 22.417812>,  <37.091599, 35.383057, 22.377415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856453, 35.409042, 22.417812>,  <36.464546, 35.452351, 22.485142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856453, 35.409042, 22.417812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195309, -0.700874, -0.686025,
		-0.043700, 0.705021, -0.707839,
		0.979768, -0.108268, -0.168325,
		37.150383, 35.376560, 22.367315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460892, 35.318794, 21.772396>,  <36.464546, 35.452351, 22.485142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460892, 35.318794, 21.772396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815994, 35.194729, 21.908443>,  <37.029057, 35.120289, 21.990072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815994, 35.194729, 21.908443>,  <36.460892, 35.318794, 21.772396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815994, 35.194729, 21.908443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004083, -0.744177, -0.667971,
		0.460288, 0.591609, -0.661917,
		0.887760, -0.310162, 0.340120,
		37.082321, 35.101681, 22.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927288, 35.185333, 21.218029>,  <36.460892, 35.318794, 21.772396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927288, 35.185333, 21.218029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998104, 34.934338, 21.521320>,  <37.040592, 34.783741, 21.703295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998104, 34.934338, 21.521320>,  <36.927288, 35.185333, 21.218029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998104, 34.934338, 21.521320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166669, -0.778387, -0.605256,
		0.969989, -0.019218, -0.242389,
		0.177041, -0.627490, 0.758229,
		37.051216, 34.746090, 21.748789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554722, 35.135567, 20.500740>,  <36.927288, 35.185333, 21.218029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554722, 35.135567, 20.500740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298717, 34.844456, 20.599308>,  <36.145115, 34.669788, 20.658449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298717, 34.844456, 20.599308>,  <36.554722, 35.135567, 20.500740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298717, 34.844456, 20.599308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462936, 0.621200, 0.632298,
		-0.613247, 0.290603, -0.734491,
		-0.640014, -0.727777, 0.246419,
		36.106712, 34.626122, 20.673233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845840, 35.377068, 20.445795>,  <36.554722, 35.135567, 20.500740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845840, 35.377068, 20.445795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836491, 35.078098, 20.711369>,  <35.830879, 34.898716, 20.870712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836491, 35.078098, 20.711369>,  <35.845840, 35.377068, 20.445795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836491, 35.078098, 20.711369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369820, 0.623470, 0.688853,
		-0.928809, -0.229431, -0.290989,
		-0.023379, -0.747426, 0.663933,
		35.829475, 34.853870, 20.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241821, 35.523514, 20.818888>,  <35.845840, 35.377068, 20.445795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241821, 35.523514, 20.818888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506878, 35.287273, 21.003101>,  <35.665913, 35.145531, 21.113630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506878, 35.287273, 21.003101>,  <35.241821, 35.523514, 20.818888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506878, 35.287273, 21.003101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097146, 0.541945, 0.834781,
		-0.742609, -0.597900, 0.301741,
		0.662643, -0.590602, 0.460536,
		35.705669, 35.110092, 21.141262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527767, 35.792252, 20.873737>,  <35.241821, 35.523514, 20.818888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527767, 35.792252, 20.873737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726803, 36.087429, 21.056099>,  <34.846222, 36.264534, 21.165516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726803, 36.087429, 21.056099>,  <34.527767, 35.792252, 20.873737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726803, 36.087429, 21.056099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796042, 0.597266, -0.097935,
		-0.344567, -0.314189, 0.884623,
		0.497585, 0.737942, 0.455906,
		34.876080, 36.308811, 21.192871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770504, 36.178959, 20.855944>,  <34.527767, 35.792252, 20.873737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770504, 36.178959, 20.855944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025696, 36.344753, 20.596352>,  <34.178810, 36.444229, 20.440596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025696, 36.344753, 20.596352>,  <33.770504, 36.178959, 20.855944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025696, 36.344753, 20.596352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096431, 0.793140, 0.601357,
		0.763987, -0.446239, 0.466043,
		0.637986, 0.414488, -0.648979,
		34.217091, 36.469101, 20.401657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801483, 35.740070, 21.498249>,  <33.770504, 36.178959, 20.855944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801483, 35.740070, 21.498249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739048, 35.487423, 21.802010>,  <33.701588, 35.335835, 21.984266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739048, 35.487423, 21.802010>,  <33.801483, 35.740070, 21.498249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739048, 35.487423, 21.802010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977226, 0.013143, 0.211795,
		-0.143755, 0.775167, 0.615184,
		-0.156091, -0.631620, 0.759402,
		33.692219, 35.297935, 22.029831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253212, 35.179005, 21.348370>,  <33.801483, 35.740070, 21.498249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253212, 35.179005, 21.348370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886776, 35.103554, 21.489899>,  <33.666912, 35.058285, 21.574816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886776, 35.103554, 21.489899>,  <34.253212, 35.179005, 21.348370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886776, 35.103554, 21.489899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049716, -0.822189, -0.567040,
		0.397869, -0.537052, 0.743825,
		-0.916094, -0.188628, 0.353823,
		33.611946, 35.046967, 21.596046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310448, 34.528133, 21.609514>,  <34.253212, 35.179005, 21.348370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310448, 34.528133, 21.609514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912571, 34.554573, 21.577953>,  <33.673847, 34.570438, 21.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912571, 34.554573, 21.577953>,  <34.310448, 34.528133, 21.609514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912571, 34.554573, 21.577953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034720, -0.937103, -0.347322,
		-0.096898, -0.342737, 0.934421,
		-0.994689, 0.066098, -0.078903,
		33.614166, 34.574402, 21.554283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037540, 33.879631, 21.984652>,  <34.310448, 34.528133, 21.609514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037540, 33.879631, 21.984652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732941, 34.021469, 21.767628>,  <33.550179, 34.106571, 21.637413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732941, 34.021469, 21.767628>,  <34.037540, 33.879631, 21.984652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732941, 34.021469, 21.767628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145947, -0.909388, -0.389503,
		-0.631516, -0.217423, 0.744255,
		-0.761503, 0.354599, -0.542561,
		33.504490, 34.127850, 21.604860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460861, 33.530445, 22.152895>,  <34.037540, 33.879631, 21.984652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460861, 33.530445, 22.152895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373951, 33.665966, 21.786724>,  <33.321804, 33.747280, 21.567022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373951, 33.665966, 21.786724>,  <33.460861, 33.530445, 22.152895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373951, 33.665966, 21.786724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152491, -0.938096, -0.311000,
		-0.964125, 0.072021, 0.255490,
		-0.217276, 0.338803, -0.915425,
		33.308769, 33.767609, 21.512096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835651, 33.323299, 21.943127>,  <33.460861, 33.530445, 22.152895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835651, 33.323299, 21.943127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955124, 33.427071, 21.575760>,  <33.026806, 33.489334, 21.355341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955124, 33.427071, 21.575760>,  <32.835651, 33.323299, 21.943127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955124, 33.427071, 21.575760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333611, -0.873247, -0.355166,
		-0.894145, 0.412473, -0.174270,
		0.298677, 0.259431, -0.918416,
		33.044727, 33.504902, 21.300236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291451, 33.222435, 21.528353>,  <32.835651, 33.323299, 21.943127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291451, 33.222435, 21.528353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612583, 33.194344, 21.291531>,  <32.805264, 33.177490, 21.149437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612583, 33.194344, 21.291531>,  <32.291451, 33.222435, 21.528353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612583, 33.194344, 21.291531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416462, -0.776664, -0.472601,
		-0.426640, 0.625988, -0.652777,
		0.802831, -0.070226, -0.592056,
		32.853432, 33.173275, 21.113914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040943, 32.827988, 20.970222>,  <32.291451, 33.222435, 21.528353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040943, 32.827988, 20.970222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438992, 32.818928, 20.931805>,  <32.677818, 32.813492, 20.908754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438992, 32.818928, 20.931805>,  <32.040943, 32.827988, 20.970222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438992, 32.818928, 20.931805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067060, -0.869215, -0.489866,
		-0.072390, 0.493916, -0.866491,
		0.995119, -0.022645, -0.096045,
		32.737526, 32.812134, 20.902990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113232, 32.720009, 20.330517>,  <32.040943, 32.827988, 20.970222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113232, 32.720009, 20.330517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451626, 32.582291, 20.493374>,  <32.654663, 32.499660, 20.591087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451626, 32.582291, 20.493374>,  <32.113232, 32.720009, 20.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451626, 32.582291, 20.493374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076926, -0.834402, -0.545761,
		0.527621, 0.430388, -0.732381,
		0.845989, -0.344294, 0.407140,
		32.705421, 32.479004, 20.615517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548775, 32.460190, 19.844835>,  <32.113232, 32.720009, 20.330517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548775, 32.460190, 19.844835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694622, 32.296051, 20.179180>,  <32.782131, 32.197567, 20.379787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694622, 32.296051, 20.179180>,  <32.548775, 32.460190, 19.844835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694622, 32.296051, 20.179180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082272, -0.879952, -0.467884,
		0.927516, 0.239366, -0.287084,
		0.364616, -0.410351, 0.835863,
		32.804008, 32.172947, 20.429939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023041, 32.039600, 19.600897>,  <32.548775, 32.460190, 19.844835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023041, 32.039600, 19.600897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945950, 31.899597, 19.967579>,  <32.899696, 31.815596, 20.187588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945950, 31.899597, 19.967579>,  <33.023041, 32.039600, 19.600897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945950, 31.899597, 19.967579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154583, -0.933386, -0.323874,
		0.968999, 0.079287, 0.233996,
		-0.192730, -0.350006, 0.916707,
		32.888130, 31.794596, 20.242592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467396, 31.387442, 19.607105>,  <33.023041, 32.039600, 19.600897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467396, 31.387442, 19.607105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214546, 31.351742, 19.914989>,  <33.062836, 31.330322, 20.099720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214546, 31.351742, 19.914989>,  <33.467396, 31.387442, 19.607105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214546, 31.351742, 19.914989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128689, -0.967457, -0.217865,
		0.764105, -0.236771, 0.600069,
		-0.632125, -0.089250, 0.769709,
		33.024910, 31.324966, 20.145903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671677, 30.784338, 20.044353>,  <33.467396, 31.387442, 19.607105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671677, 30.784338, 20.044353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283028, 30.855999, 20.106136>,  <33.049839, 30.898996, 20.143206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283028, 30.855999, 20.106136>,  <33.671677, 30.784338, 20.044353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283028, 30.855999, 20.106136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207969, -0.958105, -0.196938,
		0.112705, -0.223472, 0.968173,
		-0.971621, 0.179154, 0.154458,
		32.991543, 30.909744, 20.152473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422047, 30.439709, 20.662420>,  <33.671677, 30.784338, 20.044353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422047, 30.439709, 20.662420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092316, 30.485336, 20.440620>,  <32.894478, 30.512712, 20.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092316, 30.485336, 20.440620>,  <33.422047, 30.439709, 20.662420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092316, 30.485336, 20.440620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174808, -0.982912, 0.057673,
		-0.538447, 0.144472, 0.830182,
		-0.824328, 0.114068, -0.554501,
		32.845016, 30.519556, 20.274269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087406, 30.008469, 20.987482>,  <33.422047, 30.439709, 20.662420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087406, 30.008469, 20.987482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885517, 30.056187, 20.645481>,  <32.764385, 30.084818, 20.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885517, 30.056187, 20.645481>,  <33.087406, 30.008469, 20.987482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885517, 30.056187, 20.645481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317358, -0.946695, 0.055253,
		-0.802833, 0.299229, 0.515675,
		-0.504720, 0.119295, -0.855001,
		32.734100, 30.091974, 20.388981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422691, 29.780039, 21.180479>,  <33.087406, 30.008469, 20.987482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422691, 29.780039, 21.180479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436428, 29.757599, 20.781345>,  <32.444672, 29.744135, 20.541864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436428, 29.757599, 20.781345>,  <32.422691, 29.780039, 21.180479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436428, 29.757599, 20.781345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208989, -0.976753, 0.047720,
		-0.977315, 0.206898, -0.045275,
		0.034349, -0.056099, -0.997834,
		32.446732, 29.740770, 20.481995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981600, 29.243391, 21.035250>,  <32.422691, 29.780039, 21.180479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981600, 29.243391, 21.035250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192860, 29.272980, 20.696880>,  <32.319614, 29.290733, 20.493858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192860, 29.272980, 20.696880>,  <31.981600, 29.243391, 21.035250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192860, 29.272980, 20.696880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035469, -0.997251, -0.065061,
		-0.848411, 0.004358, -0.529320,
		0.528148, 0.073973, -0.845924,
		32.351303, 29.295172, 20.443104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717539, 28.718689, 20.603159>,  <31.981600, 29.243391, 21.035250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717539, 28.718689, 20.603159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070797, 28.806454, 20.437309>,  <32.282753, 28.859114, 20.337799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070797, 28.806454, 20.437309>,  <31.717539, 28.718689, 20.603159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070797, 28.806454, 20.437309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184053, -0.975068, -0.123962,
		-0.431487, 0.033163, -0.901509,
		0.883144, 0.219414, -0.414626,
		32.335739, 28.872278, 20.312922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886087, 28.261898, 19.989202>,  <31.717539, 28.718689, 20.603159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886087, 28.261898, 19.989202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241100, 28.395470, 20.116188>,  <32.454109, 28.475613, 20.192379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241100, 28.395470, 20.116188>,  <31.886087, 28.261898, 19.989202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241100, 28.395470, 20.116188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328797, -0.941703, 0.071327,
		0.322774, 0.041076, -0.945584,
		0.887530, 0.333927, 0.317463,
		32.507359, 28.495647, 20.211428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414227, 27.969421, 19.546869>,  <31.886087, 28.261898, 19.989202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414227, 27.969421, 19.546869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585026, 28.063202, 19.896202>,  <32.687504, 28.119471, 20.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585026, 28.063202, 19.896202>,  <32.414227, 27.969421, 19.546869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585026, 28.063202, 19.896202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368687, -0.927019, 0.068602,
		0.825678, 0.292693, -0.482273,
		0.426997, 0.234451, 0.873331,
		32.713123, 28.133537, 20.158201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959564, 27.707716, 19.375481>,  <32.414227, 27.969421, 19.546869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959564, 27.707716, 19.375481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971256, 27.732746, 19.774525>,  <32.978271, 27.747765, 20.013952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971256, 27.732746, 19.774525>,  <32.959564, 27.707716, 19.375481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971256, 27.732746, 19.774525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418307, -0.907208, 0.044648,
		0.907835, 0.416003, -0.052695,
		0.029232, 0.062576, 0.997612,
		32.980026, 27.751518, 20.073809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698803, 27.679554, 19.535530>,  <32.959564, 27.707716, 19.375481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698803, 27.679554, 19.535530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481701, 27.567474, 19.852238>,  <33.351440, 27.500227, 20.042263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481701, 27.567474, 19.852238>,  <33.698803, 27.679554, 19.535530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481701, 27.567474, 19.852238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583275, -0.804052, 0.115290,
		0.604321, 0.524395, 0.599839,
		-0.542759, -0.280199, 0.791771,
		33.318874, 27.483414, 20.089769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149673, 27.188313, 20.040777>,  <33.698803, 27.679554, 19.535530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149673, 27.188313, 20.040777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779430, 27.095230, 20.160179>,  <33.557285, 27.039381, 20.231821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779430, 27.095230, 20.160179>,  <34.149673, 27.188313, 20.040777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779430, 27.095230, 20.160179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287027, -0.945656, 0.152808,
		0.246723, 0.227119, 0.942096,
		-0.925604, -0.232706, 0.298504,
		33.501751, 27.025419, 20.249731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321976, 26.717735, 20.501858>,  <34.149673, 27.188313, 20.040777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321976, 26.717735, 20.501858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931934, 26.650856, 20.443600>,  <33.697910, 26.610729, 20.408646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931934, 26.650856, 20.443600>,  <34.321976, 26.717735, 20.501858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931934, 26.650856, 20.443600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113391, -0.940452, 0.320457,
		-0.190553, 0.295965, 0.935999,
		-0.975106, -0.167198, -0.145646,
		33.639404, 26.600697, 20.399906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137970, 26.314054, 21.035322>,  <34.321976, 26.717735, 20.501858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137970, 26.314054, 21.035322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848927, 26.245918, 20.767345>,  <33.675499, 26.205036, 20.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848927, 26.245918, 20.767345>,  <34.137970, 26.314054, 21.035322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848927, 26.245918, 20.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069641, -0.982171, 0.174613,
		-0.687741, 0.079522, 0.721587,
		-0.722608, -0.170340, -0.669942,
		33.632145, 26.194817, 20.566362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563534, 25.926956, 21.423271>,  <34.137970, 26.314054, 21.035322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563534, 25.926956, 21.423271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510086, 25.858173, 21.032871>,  <33.478016, 25.816904, 20.798632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510086, 25.858173, 21.032871>,  <33.563534, 25.926956, 21.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510086, 25.858173, 21.032871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104193, -0.981811, 0.158714,
		-0.985540, -0.080484, 0.149110,
		-0.133624, -0.171955, -0.976000,
		33.469997, 25.806587, 20.740070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316673, 25.302284, 21.404116>,  <33.563534, 25.926956, 21.423271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316673, 25.302284, 21.404116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367832, 25.348469, 21.010098>,  <33.398525, 25.376181, 20.773687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367832, 25.348469, 21.010098>,  <33.316673, 25.302284, 21.404116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367832, 25.348469, 21.010098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061866, -0.992195, -0.108268,
		-0.989856, -0.047095, -0.134040,
		0.127895, 0.115462, -0.985044,
		33.406200, 25.383108, 20.714584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890999, 24.793427, 20.993298>,  <33.316673, 25.302284, 21.404116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890999, 24.793427, 20.993298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159588, 24.882996, 20.710743>,  <33.320744, 24.936737, 20.541210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159588, 24.882996, 20.710743>,  <32.890999, 24.793427, 20.993298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159588, 24.882996, 20.710743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109327, -0.972756, -0.204436,
		-0.732917, 0.060048, -0.677663,
		0.671476, 0.223921, -0.706384,
		33.361031, 24.950172, 20.498827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704094, 24.566481, 20.360645>,  <32.890999, 24.793427, 20.993298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704094, 24.566481, 20.360645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104050, 24.561451, 20.357506>,  <33.344025, 24.558434, 20.355621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104050, 24.561451, 20.357506>,  <32.704094, 24.566481, 20.360645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104050, 24.561451, 20.357506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013992, -0.975535, -0.219399,
		-0.004899, 0.219485, -0.975604,
		0.999890, -0.012576, -0.007850,
		33.404018, 24.557678, 20.355150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882122, 24.222090, 19.729448>,  <32.704094, 24.566481, 20.360645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882122, 24.222090, 19.729448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220863, 24.228069, 19.942097>,  <33.424107, 24.231657, 20.069687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220863, 24.228069, 19.942097>,  <32.882122, 24.222090, 19.729448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220863, 24.228069, 19.942097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220244, -0.919720, -0.324973,
		0.484086, 0.392290, -0.782157,
		0.846849, 0.014951, 0.531623,
		33.474918, 24.232555, 20.101583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436947, 24.018871, 19.297424>,  <32.882122, 24.222090, 19.729448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436947, 24.018871, 19.297424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541908, 23.942219, 19.675720>,  <33.604885, 23.896227, 19.902699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541908, 23.942219, 19.675720>,  <33.436947, 24.018871, 19.297424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541908, 23.942219, 19.675720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267817, -0.927115, -0.262167,
		0.927049, 0.322078, -0.191952,
		0.262400, -0.191633, 0.945739,
		33.620628, 23.884729, 19.959442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808887, 23.446394, 19.204155>,  <33.436947, 24.018871, 19.297424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808887, 23.446394, 19.204155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753120, 23.430214, 19.599918>,  <33.719662, 23.420506, 19.837376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753120, 23.430214, 19.599918>,  <33.808887, 23.446394, 19.204155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753120, 23.430214, 19.599918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003951, -0.999135, -0.041403,
		0.990226, -0.009681, 0.139135,
		-0.139415, -0.040448, 0.989408,
		33.711296, 23.418079, 19.896740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381767, 23.004641, 19.551075>,  <33.808887, 23.446394, 19.204155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381767, 23.004641, 19.551075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083023, 23.013721, 19.816914>,  <33.903778, 23.019171, 19.976416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083023, 23.013721, 19.816914>,  <34.381767, 23.004641, 19.551075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083023, 23.013721, 19.816914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023247, -0.997915, 0.060217,
		0.664576, 0.060424, 0.744773,
		-0.746859, 0.022704, 0.664595,
		33.858967, 23.020533, 20.016293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506531, 22.570213, 20.078089>,  <34.381767, 23.004641, 19.551075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506531, 22.570213, 20.078089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109467, 22.599510, 20.116570>,  <33.871227, 22.617088, 20.139658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109467, 22.599510, 20.116570>,  <34.506531, 22.570213, 20.078089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109467, 22.599510, 20.116570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080371, -0.994129, -0.072441,
		0.090333, -0.079642, 0.992722,
		-0.992663, 0.073242, 0.096204,
		33.811668, 22.621483, 20.145430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361912, 22.162313, 20.513908>,  <34.506531, 22.570213, 20.078089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361912, 22.162313, 20.513908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009777, 22.186310, 20.325691>,  <33.798496, 22.200708, 20.212761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009777, 22.186310, 20.325691>,  <34.361912, 22.162313, 20.513908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009777, 22.186310, 20.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153700, -0.974529, 0.163310,
		-0.448760, 0.216090, 0.867133,
		-0.880336, 0.059991, -0.470542,
		33.745678, 22.204308, 20.184528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979088, 21.735266, 20.821806>,  <34.361912, 22.162313, 20.513908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979088, 21.735266, 20.821806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787346, 21.769958, 20.472477>,  <33.672298, 21.790773, 20.262880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787346, 21.769958, 20.472477>,  <33.979088, 21.735266, 20.821806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787346, 21.769958, 20.472477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136010, -0.990424, -0.023706,
		-0.867016, 0.107417, 0.486565,
		-0.479359, 0.086731, -0.873323,
		33.643539, 21.795979, 20.210480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543190, 21.332098, 20.986517>,  <33.979088, 21.735266, 20.821806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543190, 21.332098, 20.986517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540684, 21.373707, 20.588696>,  <33.539181, 21.398672, 20.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540684, 21.373707, 20.588696>,  <33.543190, 21.332098, 20.986517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540684, 21.373707, 20.588696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285201, -0.953452, -0.097928,
		-0.958447, 0.283035, 0.035638,
		-0.006262, 0.104023, -0.994555,
		33.538807, 21.404913, 20.290329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960011, 20.945675, 20.830984>,  <33.543190, 21.332098, 20.986517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960011, 20.945675, 20.830984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131393, 20.968964, 20.470310>,  <33.234222, 20.982937, 20.253906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131393, 20.968964, 20.470310>,  <32.960011, 20.945675, 20.830984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131393, 20.968964, 20.470310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334953, -0.916587, -0.218346,
		-0.839184, 0.395574, -0.373219,
		0.428459, 0.058222, -0.901683,
		33.259930, 20.986431, 20.199804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479664, 20.618216, 20.359858>,  <32.960011, 20.945675, 20.830984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479664, 20.618216, 20.359858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847778, 20.617279, 20.203362>,  <33.068645, 20.616718, 20.109465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847778, 20.617279, 20.203362>,  <32.479664, 20.618216, 20.359858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847778, 20.617279, 20.203362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064690, -0.987128, -0.146262,
		-0.385862, 0.159912, -0.908591,
		0.920285, -0.002339, -0.391241,
		33.123863, 20.616577, 20.085989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498966, 20.102924, 19.785015>,  <32.479664, 20.618216, 20.359858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498966, 20.102924, 19.785015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889244, 20.132771, 19.867439>,  <33.123409, 20.150679, 19.916893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889244, 20.132771, 19.867439>,  <32.498966, 20.102924, 19.785015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889244, 20.132771, 19.867439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050973, -0.991733, 0.117764,
		0.213143, -0.104398, -0.971428,
		0.975691, 0.074617, 0.206059,
		33.181950, 20.155155, 19.929256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725407, 19.666771, 19.306950>,  <32.498966, 20.102924, 19.785015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725407, 19.666771, 19.306950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996819, 19.711552, 19.597347>,  <33.159664, 19.738420, 19.771585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996819, 19.711552, 19.597347>,  <32.725407, 19.666771, 19.306950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996819, 19.711552, 19.597347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132404, -0.990771, 0.029032,
		0.722544, 0.076425, -0.687088,
		0.678527, 0.111950, 0.725994,
		33.200378, 19.745136, 19.815145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381165, 19.323053, 19.073660>,  <32.725407, 19.666771, 19.306950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381165, 19.323053, 19.073660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368282, 19.356884, 19.472019>,  <33.360554, 19.377182, 19.711035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368282, 19.356884, 19.472019>,  <33.381165, 19.323053, 19.073660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368282, 19.356884, 19.472019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221788, -0.970967, 0.089634,
		0.974563, 0.223764, 0.012517,
		-0.032210, 0.084578, 0.995896,
		33.358620, 19.382257, 19.770788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035416, 18.965258, 19.203329>,  <33.381165, 19.323053, 19.073660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035416, 18.965258, 19.203329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827312, 18.977722, 19.544704>,  <33.702450, 18.985201, 19.749529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827312, 18.977722, 19.544704>,  <34.035416, 18.965258, 19.203329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827312, 18.977722, 19.544704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187620, -0.970749, 0.149818,
		0.833143, 0.238067, 0.499196,
		-0.520261, 0.031161, 0.853439,
		33.671234, 18.987070, 19.800735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435570, 18.666931, 19.656240>,  <34.035416, 18.965258, 19.203329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435570, 18.666931, 19.656240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090141, 18.620117, 19.852425>,  <33.882885, 18.592030, 19.970135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090141, 18.620117, 19.852425>,  <34.435570, 18.666931, 19.656240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090141, 18.620117, 19.852425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337728, -0.856524, 0.390264,
		0.374415, 0.502662, 0.779195,
		-0.863570, -0.117035, 0.490459,
		33.831070, 18.585007, 19.999561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506226, 18.657747, 20.472359>,  <34.435570, 18.666931, 19.656240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506226, 18.657747, 20.472359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180595, 18.466606, 20.340336>,  <33.985218, 18.351921, 20.261122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180595, 18.466606, 20.340336>,  <34.506226, 18.657747, 20.472359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180595, 18.466606, 20.340336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126632, -0.700701, 0.702127,
		-0.566785, 0.529789, 0.630935,
		-0.814076, -0.477851, -0.330059,
		33.936371, 18.323250, 20.241318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026234, 18.392286, 20.917093>,  <34.506226, 18.657747, 20.472359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026234, 18.392286, 20.917093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941475, 18.113495, 20.643066>,  <33.890617, 17.946220, 20.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941475, 18.113495, 20.643066>,  <34.026234, 18.392286, 20.917093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941475, 18.113495, 20.643066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305092, -0.713131, 0.631160,
		-0.928449, -0.075266, 0.363756,
		-0.211901, -0.696979, -0.685069,
		33.877903, 17.904402, 20.437546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488949, 17.854870, 21.158705>,  <34.026234, 18.392286, 20.917093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488949, 17.854870, 21.158705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785389, 17.751503, 20.910835>,  <33.963253, 17.689484, 20.762114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785389, 17.751503, 20.910835>,  <33.488949, 17.854870, 21.158705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785389, 17.751503, 20.910835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393724, -0.580329, 0.712882,
		-0.543834, -0.772295, -0.328337,
		0.741098, -0.258415, -0.619673,
		34.007717, 17.673979, 20.724934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647671, 17.165932, 21.476183>,  <33.488949, 17.854870, 21.158705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647671, 17.165932, 21.476183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919777, 17.273762, 21.203545>,  <34.083038, 17.338461, 21.039961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919777, 17.273762, 21.203545>,  <33.647671, 17.165932, 21.476183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919777, 17.273762, 21.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658947, -0.632159, 0.407632,
		-0.320988, -0.726432, -0.607671,
		0.680262, 0.269578, -0.681595,
		34.123856, 17.354635, 20.999065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680172, 16.620621, 22.002066>,  <33.647671, 17.165932, 21.476183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680172, 16.620621, 22.002066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561100, 17.002487, 22.001289>,  <33.489658, 17.231607, 22.000824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561100, 17.002487, 22.001289>,  <33.680172, 16.620621, 22.002066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561100, 17.002487, 22.001289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861187, -0.267650, 0.432111,
		0.412002, 0.130299, 0.901818,
		-0.297676, 0.954665, -0.001940,
		33.471798, 17.288887, 22.000708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672169, 16.955105, 22.725210>,  <33.680172, 16.620621, 22.002066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672169, 16.955105, 22.725210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411182, 17.086132, 22.451862>,  <33.254593, 17.164747, 22.287853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411182, 17.086132, 22.451862>,  <33.672169, 16.955105, 22.725210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411182, 17.086132, 22.451862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753448, -0.377126, 0.538602,
		-0.081287, 0.866300, 0.492866,
		-0.652464, 0.327567, -0.683367,
		33.215443, 17.184402, 22.246853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043427, 17.139408, 23.103771>,  <33.672169, 16.955105, 22.725210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043427, 17.139408, 23.103771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943233, 17.073261, 22.722214>,  <32.883118, 17.033573, 22.493280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943233, 17.073261, 22.722214>,  <33.043427, 17.139408, 23.103771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943233, 17.073261, 22.722214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853212, -0.427890, 0.298229,
		-0.457478, 0.888574, -0.033913,
		-0.250487, -0.165368, -0.953892,
		32.868088, 17.023651, 22.436047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339638, 17.343319, 22.941257>,  <33.043427, 17.139408, 23.103771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339638, 17.343319, 22.941257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450089, 17.058418, 22.683125>,  <32.516357, 16.887478, 22.528244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450089, 17.058418, 22.683125>,  <32.339638, 17.343319, 22.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450089, 17.058418, 22.683125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831274, -0.514006, 0.211617,
		-0.482428, 0.478013, -0.734007,
		0.276129, -0.712250, -0.645331,
		32.532928, 16.844744, 22.489525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027267, 18.036562, 22.761372>,  <32.339638, 17.343319, 22.941257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027267, 18.036562, 22.761372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378296, 17.957390, 22.586697>,  <32.588913, 17.909885, 22.481892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378296, 17.957390, 22.586697>,  <32.027267, 18.036562, 22.761372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378296, 17.957390, 22.586697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231907, 0.972409, 0.025288,
		0.419636, -0.123464, 0.899256,
		0.877568, -0.197932, -0.436690,
		32.641567, 17.898010, 22.455690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689632, 18.072779, 23.216591>,  <32.027267, 18.036562, 22.761372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689632, 18.072779, 23.216591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742428, 18.157429, 22.829231>,  <32.774105, 18.208220, 22.596815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742428, 18.157429, 22.829231>,  <32.689632, 18.072779, 23.216591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742428, 18.157429, 22.829231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037073, 0.975207, 0.218168,
		0.990557, -0.064698, 0.120872,
		0.131991, 0.211627, -0.968397,
		32.782024, 18.220917, 22.538712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377029, 18.292347, 23.143923>,  <32.689632, 18.072779, 23.216591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377029, 18.292347, 23.143923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146698, 18.452637, 22.858871>,  <33.008499, 18.548811, 22.687841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146698, 18.452637, 22.858871>,  <33.377029, 18.292347, 23.143923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146698, 18.452637, 22.858871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328155, 0.911632, 0.247469,
		0.748822, -0.091353, -0.656445,
		-0.575830, 0.400726, -0.712628,
		32.973949, 18.572855, 22.645082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827141, 18.812862, 22.826927>,  <33.377029, 18.292347, 23.143923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827141, 18.812862, 22.826927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451210, 18.891254, 22.714981>,  <33.225651, 18.938290, 22.647814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451210, 18.891254, 22.714981>,  <33.827141, 18.812862, 22.826927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451210, 18.891254, 22.714981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135508, 0.965760, 0.221235,
		0.313640, 0.169997, -0.934201,
		-0.939823, 0.195979, -0.279865,
		33.169262, 18.950048, 22.631021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839573, 19.495829, 22.789692>,  <33.827141, 18.812862, 22.826927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839573, 19.495829, 22.789692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443069, 19.468807, 22.744362>,  <33.205166, 19.452595, 22.717163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443069, 19.468807, 22.744362>,  <33.839573, 19.495829, 22.789692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443069, 19.468807, 22.744362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088083, 0.978349, 0.187283,
		0.098220, 0.195628, -0.975747,
		-0.991259, -0.067552, -0.113325,
		33.145691, 19.448542, 22.710363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685440, 19.896950, 22.179815>,  <33.839573, 19.495829, 22.789692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685440, 19.896950, 22.179815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354580, 19.862457, 22.401947>,  <33.156063, 19.841761, 22.535227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354580, 19.862457, 22.401947>,  <33.685440, 19.896950, 22.179815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354580, 19.862457, 22.401947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176141, 0.978147, -0.110468,
		-0.533668, -0.189190, -0.824261,
		-0.827147, -0.086233, 0.555330,
		33.106434, 19.836588, 22.568546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263309, 20.377863, 21.926504>,  <33.685440, 19.896950, 22.179815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263309, 20.377863, 21.926504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056492, 20.314186, 22.262913>,  <32.932400, 20.275980, 22.464758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056492, 20.314186, 22.262913>,  <33.263309, 20.377863, 21.926504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056492, 20.314186, 22.262913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336376, 0.941293, -0.028626,
		-0.787091, -0.297701, -0.540242,
		-0.517048, -0.159193, 0.841023,
		32.901379, 20.266428, 22.515219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627056, 20.662870, 21.884212>,  <33.263309, 20.377863, 21.926504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627056, 20.662870, 21.884212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666805, 20.631500, 22.280994>,  <32.690655, 20.612679, 22.519064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666805, 20.631500, 22.280994>,  <32.627056, 20.662870, 21.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666805, 20.631500, 22.280994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421335, 0.899794, 0.113347,
		-0.901445, -0.429209, 0.056369,
		0.099370, -0.078426, 0.991955,
		32.696617, 20.607973, 22.578581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985575, 20.908678, 22.204582>,  <32.627056, 20.662870, 21.884212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985575, 20.908678, 22.204582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249130, 20.933701, 22.504436>,  <32.407265, 20.948715, 22.684349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249130, 20.933701, 22.504436>,  <31.985575, 20.908678, 22.204582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249130, 20.933701, 22.504436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381770, 0.886470, 0.261577,
		-0.648167, -0.458538, 0.607966,
		0.658887, 0.062558, 0.749636,
		32.446796, 20.952469, 22.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603470, 21.235571, 22.813484>,  <31.985575, 20.908678, 22.204582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603470, 21.235571, 22.813484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999537, 21.279613, 22.848011>,  <32.237175, 21.306038, 22.868727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999537, 21.279613, 22.848011>,  <31.603470, 21.235571, 22.813484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999537, 21.279613, 22.848011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134513, 0.918867, 0.370930,
		-0.038473, -0.378893, 0.924640,
		0.990165, 0.110105, 0.086318,
		32.296585, 21.312645, 22.873907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626694, 21.564064, 23.389883>,  <31.603470, 21.235571, 22.813484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626694, 21.564064, 23.389883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989935, 21.652187, 23.247440>,  <32.207878, 21.705061, 23.161974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989935, 21.652187, 23.247440>,  <31.626694, 21.564064, 23.389883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989935, 21.652187, 23.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135314, 0.959177, 0.248335,
		0.396280, -0.177327, 0.900842,
		0.908104, 0.220307, -0.356108,
		32.262367, 21.718279, 23.140608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910133, 22.039860, 23.926857>,  <31.626694, 21.564064, 23.389883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910133, 22.039860, 23.926857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117229, 22.091026, 23.588490>,  <32.241486, 22.121727, 23.385469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117229, 22.091026, 23.588490>,  <31.910133, 22.039860, 23.926857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117229, 22.091026, 23.588490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003846, 0.989097, 0.147214,
		0.855529, -0.072965, 0.512588,
		0.517741, 0.127917, -0.845921,
		32.272552, 22.129402, 23.334713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349304, 22.585485, 24.088762>,  <31.910133, 22.039860, 23.926857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349304, 22.585485, 24.088762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373501, 22.558231, 23.690426>,  <32.388020, 22.541878, 23.451424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373501, 22.558231, 23.690426>,  <32.349304, 22.585485, 24.088762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373501, 22.558231, 23.690426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069139, 0.995557, -0.063918,
		0.995771, -0.064985, 0.064931,
		0.060489, -0.068137, -0.995841,
		32.391647, 22.537790, 23.391674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870060, 22.977314, 23.938156>,  <32.349304, 22.585485, 24.088762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870060, 22.977314, 23.938156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641525, 22.969059, 23.609974>,  <32.504406, 22.964106, 23.413065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641525, 22.969059, 23.609974>,  <32.870060, 22.977314, 23.938156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641525, 22.969059, 23.609974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031032, 0.998426, -0.046722,
		0.820129, -0.052155, -0.569797,
		-0.571336, -0.020636, -0.820457,
		32.470123, 22.962868, 23.363836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041664, 23.626343, 23.549414>,  <32.870060, 22.977314, 23.938156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041664, 23.626343, 23.549414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702572, 23.522675, 23.364292>,  <32.499119, 23.460474, 23.253220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702572, 23.522675, 23.364292>,  <33.041664, 23.626343, 23.549414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702572, 23.522675, 23.364292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265745, 0.962624, -0.052296,
		0.459059, 0.078655, -0.884917,
		-0.847729, -0.259170, -0.462803,
		32.448254, 23.444923, 23.225451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979446, 23.983814, 22.989288>,  <33.041664, 23.626343, 23.549414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979446, 23.983814, 22.989288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592102, 23.896114, 23.036953>,  <32.359695, 23.843494, 23.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592102, 23.896114, 23.036953>,  <32.979446, 23.983814, 22.989288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592102, 23.896114, 23.036953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243275, 0.935779, -0.255215,
		-0.055552, -0.276130, -0.959513,
		-0.968365, -0.219248, 0.119160,
		32.301594, 23.830339, 23.072701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725952, 24.279604, 22.495304>,  <32.979446, 23.983814, 22.989288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725952, 24.279604, 22.495304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418240, 24.223240, 22.744576>,  <32.233612, 24.189423, 22.894138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418240, 24.223240, 22.744576>,  <32.725952, 24.279604, 22.495304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418240, 24.223240, 22.744576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155555, 0.987334, 0.031224,
		-0.619685, -0.072918, -0.781456,
		-0.769281, -0.140908, 0.623179,
		32.187454, 24.180967, 22.931530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189903, 24.725243, 22.160515>,  <32.725952, 24.279604, 22.495304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189903, 24.725243, 22.160515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102650, 24.658325, 22.545105>,  <32.050297, 24.618176, 22.775858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102650, 24.658325, 22.545105>,  <32.189903, 24.725243, 22.160515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102650, 24.658325, 22.545105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298634, 0.949381, 0.097435,
		-0.929105, -0.265874, -0.257051,
		-0.218134, -0.167292, 0.961473,
		32.037209, 24.608137, 22.833548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519333, 24.957047, 22.224060>,  <32.189903, 24.725243, 22.160515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519333, 24.957047, 22.224060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711561, 24.967953, 22.574673>,  <31.826899, 24.974497, 22.785040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711561, 24.967953, 22.574673>,  <31.519333, 24.957047, 22.224060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711561, 24.967953, 22.574673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459073, 0.859445, 0.224958,
		-0.747197, -0.510501, 0.425542,
		0.480571, 0.027267, 0.876532,
		31.855732, 24.976133, 22.837631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997065, 25.262163, 22.656746>,  <31.519333, 24.957047, 22.224060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997065, 25.262163, 22.656746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336885, 25.270065, 22.867599>,  <31.540777, 25.274807, 22.994112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336885, 25.270065, 22.867599>,  <30.997065, 25.262163, 22.656746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336885, 25.270065, 22.867599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202044, 0.935279, 0.290571,
		-0.487279, -0.353360, 0.798559,
		0.849552, 0.019754, 0.527135,
		31.591751, 25.275991, 23.025740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884214, 25.666412, 23.233362>,  <30.997065, 25.262163, 22.656746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884214, 25.666412, 23.233362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280823, 25.665722, 23.181389>,  <31.518787, 25.665308, 23.150206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280823, 25.665722, 23.181389>,  <30.884214, 25.666412, 23.233362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280823, 25.665722, 23.181389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000158, 0.999895, -0.014496,
		0.129944, 0.014393, 0.991417,
		0.991521, -0.001727, -0.129933,
		31.578279, 25.665203, 23.142408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125334, 26.239143, 23.558722>,  <30.884214, 25.666412, 23.233362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125334, 26.239143, 23.558722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439892, 26.173489, 23.320515>,  <31.628626, 26.134096, 23.177589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439892, 26.173489, 23.320515>,  <31.125334, 26.239143, 23.558722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439892, 26.173489, 23.320515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149750, 0.985951, -0.074002,
		0.599298, -0.030984, 0.799926,
		0.786395, -0.164139, -0.595518,
		31.675810, 26.124247, 23.141859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762112, 26.550371, 23.883583>,  <31.125334, 26.239143, 23.558722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762112, 26.550371, 23.883583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831713, 26.529209, 23.490253>,  <31.873472, 26.516512, 23.254255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831713, 26.529209, 23.490253>,  <31.762112, 26.550371, 23.883583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831713, 26.529209, 23.490253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347981, 0.937436, 0.011138,
		0.921213, -0.344115, 0.181526,
		0.174001, -0.052907, -0.983323,
		31.883913, 26.513336, 23.195257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479385, 26.868093, 23.776812>,  <31.762112, 26.550371, 23.883583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479385, 26.868093, 23.776812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296562, 26.866241, 23.421043>,  <32.186867, 26.865129, 23.207582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296562, 26.866241, 23.421043>,  <32.479385, 26.868093, 23.776812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296562, 26.866241, 23.421043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245834, 0.960374, -0.131331,
		0.854787, -0.278677, -0.437812,
		-0.457062, -0.004631, -0.889423,
		32.159443, 26.864853, 23.154217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014946, 27.139688, 23.182829>,  <32.479385, 26.868093, 23.776812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014946, 27.139688, 23.182829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631947, 27.179703, 23.074615>,  <32.402145, 27.203711, 23.009687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631947, 27.179703, 23.074615>,  <33.014946, 27.139688, 23.182829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631947, 27.179703, 23.074615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165955, 0.958199, -0.233051,
		0.235913, -0.268043, -0.934076,
		-0.957499, 0.100035, -0.270535,
		32.344696, 27.209713, 22.993456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004818, 27.723352, 22.776495>,  <33.014946, 27.139688, 23.182829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004818, 27.723352, 22.776495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610275, 27.689461, 22.832954>,  <32.373550, 27.669127, 22.866831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610275, 27.689461, 22.832954>,  <33.004818, 27.723352, 22.776495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610275, 27.689461, 22.832954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102524, 0.986973, -0.123990,
		-0.128805, -0.136770, -0.982193,
		-0.986356, -0.084728, 0.141149,
		32.314369, 27.664042, 22.875299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763012, 28.005049, 22.220018>,  <33.004818, 27.723352, 22.776495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763012, 28.005049, 22.220018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457985, 28.018429, 22.478436>,  <32.274967, 28.026457, 22.633486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457985, 28.018429, 22.478436>,  <32.763012, 28.005049, 22.220018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457985, 28.018429, 22.478436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124334, 0.972466, -0.197108,
		-0.634849, -0.230633, -0.737411,
		-0.762567, 0.033449, 0.646044,
		32.229214, 28.028463, 22.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119888, 28.365694, 21.887953>,  <32.763012, 28.005049, 22.220018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119888, 28.365694, 21.887953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077782, 28.415371, 22.282616>,  <32.052517, 28.445177, 22.519413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077782, 28.415371, 22.282616>,  <32.119888, 28.365694, 21.887953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077782, 28.415371, 22.282616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137692, 0.980794, -0.138147,
		-0.984865, -0.150397, -0.086145,
		-0.105268, 0.124194, 0.986658,
		32.046200, 28.452629, 22.578613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651087, 28.819393, 21.877220>,  <32.119888, 28.365694, 21.887953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651087, 28.819393, 21.877220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799559, 28.844730, 22.247780>,  <31.888641, 28.859934, 22.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799559, 28.844730, 22.247780>,  <31.651087, 28.819393, 21.877220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799559, 28.844730, 22.247780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006813, 0.997829, -0.065500,
		-0.928535, 0.018001, 0.370808,
		0.371182, 0.063345, 0.926397,
		31.910913, 28.863733, 22.525700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277250, 29.341433, 22.423069>,  <31.651087, 28.819393, 21.877220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277250, 29.341433, 22.423069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647205, 29.296852, 22.568485>,  <31.869179, 29.270103, 22.655735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647205, 29.296852, 22.568485>,  <31.277250, 29.341433, 22.423069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647205, 29.296852, 22.568485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103300, 0.993769, 0.041859,
		-0.365941, -0.001162, 0.930637,
		0.924887, -0.111453, 0.363541,
		31.924671, 29.263416, 22.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291723, 29.703665, 22.949589>,  <31.277250, 29.341433, 22.423069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291723, 29.703665, 22.949589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683876, 29.687931, 22.872330>,  <31.919167, 29.678492, 22.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683876, 29.687931, 22.872330>,  <31.291723, 29.703665, 22.949589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683876, 29.687931, 22.872330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074662, 0.980975, 0.179203,
		0.182425, -0.190108, 0.964666,
		0.980381, -0.039333, -0.193148,
		31.977991, 29.676130, 22.814384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665691, 30.139954, 23.460451>,  <31.291723, 29.703665, 22.949589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665691, 30.139954, 23.460451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927160, 30.096836, 23.160828>,  <32.084042, 30.070965, 22.981054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927160, 30.096836, 23.160828>,  <31.665691, 30.139954, 23.460451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927160, 30.096836, 23.160828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286295, 0.951465, 0.112915,
		0.700532, -0.288261, 0.652810,
		0.653675, -0.107796, -0.749059,
		32.123264, 30.064497, 22.936110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329288, 30.478716, 23.657135>,  <31.665691, 30.139954, 23.460451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329288, 30.478716, 23.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313057, 30.460979, 23.257858>,  <32.303318, 30.450338, 23.018291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313057, 30.460979, 23.257858>,  <32.329288, 30.478716, 23.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313057, 30.460979, 23.257858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052691, 0.997530, -0.046452,
		0.997785, -0.054482, -0.038157,
		-0.040594, -0.044339, -0.998191,
		32.300884, 30.447678, 22.958401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838753, 31.074579, 23.517923>,  <32.329288, 30.478716, 23.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838753, 31.074579, 23.517923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645519, 30.981247, 23.180359>,  <32.529579, 30.925247, 22.977819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645519, 30.981247, 23.180359>,  <32.838753, 31.074579, 23.517923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645519, 30.981247, 23.180359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158100, 0.971240, -0.178036,
		0.861184, 0.047417, -0.506077,
		-0.483081, -0.233332, -0.843913,
		32.500595, 30.911247, 22.927185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020683, 31.630453, 23.117727>,  <32.838753, 31.074579, 23.517923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020683, 31.630453, 23.117727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 31.483360, 22.939156>,  <32.498592, 31.395105, 22.832012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 31.483360, 22.939156>,  <33.020683, 31.630453, 23.117727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694378, 31.483360, 22.939156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352349, 0.928064, -0.120612,
		0.458667, 0.058908, -0.886653,
		-0.815766, -0.367732, -0.446429,
		32.449650, 31.373041, 22.805227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031132, 31.978996, 22.418383>,  <33.020683, 31.630453, 23.117727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031132, 31.978996, 22.418383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669281, 31.839653, 22.516605>,  <32.452171, 31.756048, 22.575539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669281, 31.839653, 22.516605>,  <33.031132, 31.978996, 22.418383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669281, 31.839653, 22.516605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408323, 0.873506, -0.265067,
		-0.122157, -0.340053, -0.932439,
		-0.904627, -0.348356, 0.245556,
		32.397892, 31.735146, 22.590273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605179, 32.240059, 21.868362>,  <33.031132, 31.978996, 22.418383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605179, 32.240059, 21.868362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355415, 32.161266, 22.170704>,  <32.205559, 32.113991, 22.352110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355415, 32.161266, 22.170704>,  <32.605179, 32.240059, 21.868362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355415, 32.161266, 22.170704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364212, 0.929468, -0.058645,
		-0.690990, -0.311909, -0.652108,
		-0.624405, -0.196982, 0.755854,
		32.168095, 32.102173, 22.397461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957884, 32.530125, 21.636900>,  <32.605179, 32.240059, 21.868362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957884, 32.530125, 21.636900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941248, 32.509377, 22.036015>,  <31.931267, 32.496929, 22.275484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941248, 32.509377, 22.036015>,  <31.957884, 32.530125, 21.636900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941248, 32.509377, 22.036015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359635, 0.932492, 0.033482,
		-0.932166, -0.357447, -0.057434,
		-0.041589, -0.051866, 0.997788,
		31.928772, 32.493816, 22.335350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158970, 32.852818, 21.791250>,  <31.957884, 32.530125, 21.636900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158970, 32.852818, 21.791250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412249, 32.858055, 22.100803>,  <31.564215, 32.861198, 22.286535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412249, 32.858055, 22.100803>,  <31.158970, 32.852818, 21.791250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412249, 32.858055, 22.100803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245650, 0.951562, 0.184895,
		-0.733975, -0.307179, 0.605740,
		0.633195, 0.013091, 0.773881,
		31.602207, 32.861984, 22.332968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734137, 33.186584, 22.345451>,  <31.158970, 32.852818, 21.791250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734137, 33.186584, 22.345451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096565, 33.235462, 22.507492>,  <31.314022, 33.264790, 22.604717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096565, 33.235462, 22.507492>,  <30.734137, 33.186584, 22.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096565, 33.235462, 22.507492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311740, 0.840133, 0.443842,
		-0.286106, -0.528438, 0.799310,
		0.906069, 0.122191, 0.405102,
		31.368385, 33.272118, 22.629023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714781, 33.421707, 23.049387>,  <30.734137, 33.186584, 22.345451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714781, 33.421707, 23.049387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063486, 33.535709, 22.889988>,  <31.272709, 33.604111, 22.794348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063486, 33.535709, 22.889988>,  <30.714781, 33.421707, 23.049387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063486, 33.535709, 22.889988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236439, 0.957135, 0.167303,
		0.429099, -0.051628, 0.901781,
		0.871763, 0.285006, -0.398499,
		31.325014, 33.621212, 22.770439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192974, 33.007038, 22.885168>,  <30.714781, 33.421707, 23.049387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192974, 33.007038, 22.885168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795139, 33.005882, 22.843628>,  <29.556438, 33.005188, 22.818703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795139, 33.005882, 22.843628>,  <30.192974, 33.007038, 22.885168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795139, 33.005882, 22.843628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040694, -0.908898, 0.415028,
		-0.095590, 0.417008, 0.903862,
		-0.994589, -0.002891, -0.103851,
		29.496763, 33.005016, 22.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902515, 32.710049, 23.488220>,  <30.192974, 33.007038, 22.885168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902515, 32.710049, 23.488220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600300, 32.678356, 23.228104>,  <29.418970, 32.659340, 23.072033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600300, 32.678356, 23.228104>,  <29.902515, 32.710049, 23.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600300, 32.678356, 23.228104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056685, -0.981029, 0.185389,
		-0.652645, 0.176931, 0.736716,
		-0.755541, -0.079232, -0.650293,
		29.373638, 32.654587, 23.033016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293131, 32.432346, 23.850735>,  <29.902515, 32.710049, 23.488220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293131, 32.432346, 23.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224855, 32.343212, 23.466816>,  <29.183889, 32.289730, 23.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224855, 32.343212, 23.466816>,  <29.293131, 32.432346, 23.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224855, 32.343212, 23.466816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114331, -0.963032, 0.243924,
		-0.978669, 0.151370, 0.138901,
		-0.170688, -0.222840, -0.959796,
		29.173649, 32.276360, 23.178877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542873, 32.192036, 23.661060>,  <29.293131, 32.432346, 23.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542873, 32.192036, 23.661060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773390, 32.040413, 23.371452>,  <28.911699, 31.949440, 23.197687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773390, 32.040413, 23.371452>,  <28.542873, 32.192036, 23.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773390, 32.040413, 23.371452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462149, -0.881825, 0.093820,
		-0.674021, 0.280537, -0.683370,
		0.576293, -0.379056, -0.724019,
		28.946278, 31.926697, 23.154247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084068, 31.626951, 23.257187>,  <28.542873, 32.192036, 23.661060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084068, 31.626951, 23.257187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457230, 31.554714, 23.132561>,  <28.681128, 31.511372, 23.057785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457230, 31.554714, 23.132561>,  <28.084068, 31.626951, 23.257187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457230, 31.554714, 23.132561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222133, -0.969546, -0.103140,
		-0.283451, 0.165429, -0.944610,
		0.932905, -0.180594, -0.311565,
		28.737101, 31.500536, 23.039091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033447, 31.059324, 22.781199>,  <28.084068, 31.626951, 23.257187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033447, 31.059324, 22.781199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423098, 31.056290, 22.871548>,  <28.656889, 31.054468, 22.925756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423098, 31.056290, 22.871548>,  <28.033447, 31.059324, 22.781199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423098, 31.056290, 22.871548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021451, -0.998028, 0.058986,
		0.224981, -0.062305, -0.972369,
		0.974127, -0.007588, 0.225874,
		28.715336, 31.054012, 22.939310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314470, 30.545326, 22.387466>,  <28.033447, 31.059324, 22.781199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314470, 30.545326, 22.387466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555271, 30.587223, 22.704105>,  <28.699751, 30.612362, 22.894089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555271, 30.587223, 22.704105>,  <28.314470, 30.545326, 22.387466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555271, 30.587223, 22.704105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117746, -0.992166, 0.041735,
		0.789767, 0.068083, -0.609617,
		0.602000, 0.104741, 0.791597,
		28.735870, 30.618645, 22.941584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841623, 30.068527, 22.344486>,  <28.314470, 30.545326, 22.387466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841623, 30.068527, 22.344486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884224, 30.179779, 22.726334>,  <28.909784, 30.246531, 22.955442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884224, 30.179779, 22.726334>,  <28.841623, 30.068527, 22.344486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884224, 30.179779, 22.726334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054731, -0.960266, 0.273669,
		0.992805, 0.023101, -0.117494,
		0.106503, 0.278130, 0.954621,
		28.916176, 30.263218, 23.012720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231508, 29.607548, 22.614017>,  <28.841623, 30.068527, 22.344486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231508, 29.607548, 22.614017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067278, 29.744438, 22.952084>,  <28.968740, 29.826572, 23.154924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067278, 29.744438, 22.952084>,  <29.231508, 29.607548, 22.614017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067278, 29.744438, 22.952084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133339, -0.939465, 0.315635,
		0.902024, 0.016898, 0.431355,
		-0.410577, 0.342227, 0.845167,
		28.944105, 29.847107, 23.205633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661724, 29.264097, 23.219870>,  <29.231508, 29.607548, 22.614017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661724, 29.264097, 23.219870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295593, 29.378323, 23.333454>,  <29.075914, 29.446857, 23.401604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295593, 29.378323, 23.333454>,  <29.661724, 29.264097, 23.219870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295593, 29.378323, 23.333454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132156, -0.879057, 0.458032,
		0.380415, 0.381721, 0.842362,
		-0.915325, 0.285565, 0.283960,
		29.020996, 29.463991, 23.418642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711624, 29.213398, 23.923985>,  <29.661724, 29.264097, 23.219870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711624, 29.213398, 23.923985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331049, 29.169857, 23.808807>,  <29.102703, 29.143732, 23.739700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331049, 29.169857, 23.808807>,  <29.711624, 29.213398, 23.923985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331049, 29.169857, 23.808807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041299, -0.881797, 0.469818,
		-0.305051, 0.458895, 0.834481,
		-0.951440, -0.108855, -0.287945,
		29.045616, 29.137201, 23.722424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371428, 28.841078, 24.482439>,  <29.711624, 29.213398, 23.923985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371428, 28.841078, 24.482439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104548, 28.802929, 24.186939>,  <28.944420, 28.780041, 24.009640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104548, 28.802929, 24.186939>,  <29.371428, 28.841078, 24.482439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104548, 28.802929, 24.186939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136669, -0.959260, 0.247269,
		-0.732235, 0.265941, 0.626983,
		-0.667198, -0.095370, -0.738750,
		28.904388, 28.774319, 23.965315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896700, 28.482756, 24.727509>,  <29.371428, 28.841078, 24.482439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896700, 28.482756, 24.727509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853804, 28.413345, 24.335918>,  <28.828066, 28.371700, 24.100965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853804, 28.413345, 24.335918>,  <28.896700, 28.482756, 24.727509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853804, 28.413345, 24.335918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085598, -0.979384, 0.182974,
		-0.990542, 0.103420, 0.090175,
		-0.107239, -0.173524, -0.978974,
		28.821632, 28.361288, 24.042227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391750, 27.926102, 24.698051>,  <28.896700, 28.482756, 24.727509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391750, 27.926102, 24.698051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608820, 27.921501, 24.362106>,  <28.739061, 27.918741, 24.160540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608820, 27.921501, 24.362106>,  <28.391750, 27.926102, 24.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608820, 27.921501, 24.362106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083336, -0.994235, 0.067461,
		-0.835798, -0.106601, -0.538589,
		0.542676, -0.011500, -0.839863,
		28.771624, 27.918051, 24.110147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018961, 27.330633, 24.285931>,  <28.391750, 27.926102, 24.698051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018961, 27.330633, 24.285931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382742, 27.379364, 24.126907>,  <28.601011, 27.408602, 24.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382742, 27.379364, 24.126907>,  <28.018961, 27.330633, 24.285931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382742, 27.379364, 24.126907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053112, -0.982320, -0.179517,
		-0.412400, 0.142148, -0.899845,
		0.909453, 0.121826, -0.397559,
		28.655579, 27.415913, 24.007639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977631, 27.042955, 23.656691>,  <28.018961, 27.330633, 24.285931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977631, 27.042955, 23.656691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373365, 27.029839, 23.713448>,  <28.610807, 27.021969, 23.747501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373365, 27.029839, 23.713448>,  <27.977631, 27.042955, 23.656691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373365, 27.029839, 23.713448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013358, -0.949772, -0.312656,
		0.145017, 0.311219, -0.939209,
		0.989339, -0.032794, 0.141891,
		28.670168, 27.020000, 23.756014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298464, 26.510010, 23.178789>,  <27.977631, 27.042955, 23.656691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298464, 26.510010, 23.178789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593908, 26.606220, 23.430695>,  <28.771175, 26.663946, 23.581837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593908, 26.606220, 23.430695>,  <28.298464, 26.510010, 23.178789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593908, 26.606220, 23.430695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413733, -0.899291, -0.141779,
		0.532238, 0.365273, -0.763740,
		0.738612, 0.240524, 0.629762,
		28.815493, 26.678377, 23.619623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011024, 26.479050, 22.763386>,  <28.298464, 26.510010, 23.178789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011024, 26.479050, 22.763386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077709, 26.412487, 23.152130>,  <29.117720, 26.372549, 23.385378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077709, 26.412487, 23.152130>,  <29.011024, 26.479050, 22.763386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077709, 26.412487, 23.152130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388469, -0.894849, -0.219855,
		0.906256, 0.414191, -0.084538,
		0.166711, -0.166405, 0.971863,
		29.127722, 26.362566, 23.443689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708744, 26.260931, 22.828058>,  <29.011024, 26.479050, 22.763386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708744, 26.260931, 22.828058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512329, 26.144630, 23.156532>,  <29.394480, 26.074850, 23.353617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512329, 26.144630, 23.156532>,  <29.708744, 26.260931, 22.828058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512329, 26.144630, 23.156532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374249, -0.921642, -0.102532,
		0.786651, 0.256981, 0.561374,
		-0.491037, -0.290751, 0.821186,
		29.365019, 26.057405, 23.402887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206724, 25.809013, 23.158228>,  <29.708744, 26.260931, 22.828058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206724, 25.809013, 23.158228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850672, 25.730465, 23.322716>,  <29.637039, 25.683336, 23.421410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850672, 25.730465, 23.322716>,  <30.206724, 25.809013, 23.158228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850672, 25.730465, 23.322716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224565, -0.974236, 0.020870,
		0.396529, 0.110923, 0.911296,
		-0.890133, -0.196369, 0.411222,
		29.583632, 25.671555, 23.446083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303402, 25.277370, 23.583176>,  <30.206724, 25.809013, 23.158228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303402, 25.277370, 23.583176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914150, 25.251347, 23.494827>,  <29.680599, 25.235733, 23.441818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914150, 25.251347, 23.494827>,  <30.303402, 25.277370, 23.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914150, 25.251347, 23.494827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058264, -0.997610, 0.037143,
		-0.222758, 0.023276, 0.974596,
		-0.973131, -0.065058, -0.220869,
		29.622211, 25.231829, 23.428566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122555, 24.692657, 24.009949>,  <30.303402, 25.277370, 23.583176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122555, 24.692657, 24.009949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862595, 24.749302, 23.711266>,  <29.706617, 24.783289, 23.532055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862595, 24.749302, 23.711266>,  <30.122555, 24.692657, 24.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862595, 24.749302, 23.711266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014033, -0.980085, -0.198083,
		-0.759888, -0.139213, 0.634972,
		-0.649902, 0.141611, -0.746708,
		29.667624, 24.791784, 23.487253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664982, 24.063177, 23.962143>,  <30.122555, 24.692657, 24.009949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664982, 24.063177, 23.962143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639391, 24.248230, 23.608448>,  <29.624037, 24.359261, 23.396231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639391, 24.248230, 23.608448>,  <29.664982, 24.063177, 23.962143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639391, 24.248230, 23.608448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109166, -0.877493, -0.467000,
		-0.991963, -0.126406, 0.005636,
		-0.063977, 0.462631, -0.884239,
		29.620197, 24.387020, 23.343176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290924, 23.680965, 23.619436>,  <29.664982, 24.063177, 23.962143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290924, 23.680965, 23.619436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453005, 23.885601, 23.316360>,  <29.550253, 24.008383, 23.134516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453005, 23.885601, 23.316360>,  <29.290924, 23.680965, 23.619436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453005, 23.885601, 23.316360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023474, -0.834322, -0.550778,
		-0.913927, 0.205389, -0.350076,
		0.405200, 0.511588, -0.757688,
		29.574564, 24.039078, 23.089054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903870, 23.516693, 22.963600>,  <29.290924, 23.680965, 23.619436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903870, 23.516693, 22.963600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247393, 23.654861, 22.812267>,  <29.453506, 23.737762, 22.721468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247393, 23.654861, 22.812267>,  <28.903870, 23.516693, 22.963600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247393, 23.654861, 22.812267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007214, -0.730270, -0.683120,
		-0.512249, 0.589398, -0.624669,
		0.858807, 0.345422, -0.378332,
		29.505035, 23.758488, 22.698769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866919, 23.402462, 22.251810>,  <28.903870, 23.516693, 22.963600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866919, 23.402462, 22.251810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256111, 23.410435, 22.343815>,  <29.489628, 23.415218, 22.399017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256111, 23.410435, 22.343815>,  <28.866919, 23.402462, 22.251810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256111, 23.410435, 22.343815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167046, -0.748485, -0.641767,
		0.159372, 0.662852, -0.731593,
		0.972983, 0.019929, 0.230014,
		29.548006, 23.416414, 22.412819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244368, 23.381945, 21.629919>,  <28.866919, 23.402462, 22.251810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244368, 23.381945, 21.629919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495750, 23.256443, 21.914623>,  <29.646580, 23.181143, 22.085445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495750, 23.256443, 21.914623>,  <29.244368, 23.381945, 21.629919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495750, 23.256443, 21.914623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288439, -0.755803, -0.587848,
		0.722389, 0.574735, -0.384490,
		0.628456, -0.313753, 0.711760,
		29.684288, 23.162317, 22.128151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703920, 22.934195, 21.232927>,  <29.244368, 23.381945, 21.629919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703920, 22.934195, 21.232927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792213, 22.835369, 21.610336>,  <29.845190, 22.776073, 21.836782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792213, 22.835369, 21.610336>,  <29.703920, 22.934195, 21.232927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792213, 22.835369, 21.610336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096850, -0.957051, -0.273265,
		0.970513, 0.151699, -0.187327,
		0.220735, -0.247065, 0.943523,
		29.858435, 22.761250, 21.893393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298958, 22.482010, 21.221539>,  <29.703920, 22.934195, 21.232927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298958, 22.482010, 21.221539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112871, 22.414837, 21.569187>,  <30.001219, 22.374533, 21.777777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112871, 22.414837, 21.569187>,  <30.298958, 22.482010, 21.221539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112871, 22.414837, 21.569187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147329, -0.982835, -0.111042,
		0.872851, 0.076389, 0.481970,
		-0.465215, -0.167931, 0.869123,
		29.973307, 22.364458, 21.829924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677658, 21.959909, 21.516682>,  <30.298958, 22.482010, 21.221539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677658, 21.959909, 21.516682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325972, 21.959393, 21.707249>,  <30.114960, 21.959082, 21.821589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325972, 21.959393, 21.707249>,  <30.677658, 21.959909, 21.516682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325972, 21.959393, 21.707249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012054, -0.999737, 0.019534,
		0.476268, 0.022918, 0.879001,
		-0.879217, -0.001292, 0.476419,
		30.062206, 21.959005, 21.850174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791855, 21.451477, 22.069300>,  <30.677658, 21.959909, 21.516682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791855, 21.451477, 22.069300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394476, 21.485001, 22.038219>,  <30.156048, 21.505116, 22.019571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394476, 21.485001, 22.038219>,  <30.791855, 21.451477, 22.069300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394476, 21.485001, 22.038219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089681, -0.993111, 0.075424,
		-0.070843, 0.081898, 0.994120,
		-0.993448, 0.083811, -0.077700,
		30.096441, 21.510143, 22.014910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607609, 20.996346, 22.557652>,  <30.791855, 21.451477, 22.069300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607609, 20.996346, 22.557652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312433, 21.032032, 22.290073>,  <30.135328, 21.053444, 22.129526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312433, 21.032032, 22.290073>,  <30.607609, 20.996346, 22.557652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312433, 21.032032, 22.290073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152886, -0.987553, 0.036946,
		-0.657322, 0.129536, 0.742393,
		-0.737939, 0.089216, -0.668945,
		30.091051, 21.058796, 22.089390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039062, 20.543571, 22.828348>,  <30.607609, 20.996346, 22.557652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039062, 20.543571, 22.828348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940094, 20.602734, 22.445328>,  <29.880713, 20.638231, 22.215515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940094, 20.602734, 22.445328>,  <30.039062, 20.543571, 22.828348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940094, 20.602734, 22.445328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266435, -0.960567, -0.079526,
		-0.931555, 0.235449, 0.277074,
		-0.247424, 0.147905, -0.957552,
		29.865868, 20.647104, 22.158062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449896, 20.288538, 22.627256>,  <30.039062, 20.543571, 22.828348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449896, 20.288538, 22.627256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590355, 20.317879, 22.253880>,  <29.674631, 20.335484, 22.029854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590355, 20.317879, 22.253880>,  <29.449896, 20.288538, 22.627256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590355, 20.317879, 22.253880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243415, -0.955498, -0.166654,
		-0.904125, 0.285734, -0.317668,
		0.351150, 0.073351, -0.933442,
		29.695700, 20.339884, 21.973846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916059, 19.923763, 22.200731>,  <29.449896, 20.288538, 22.627256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916059, 19.923763, 22.200731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235754, 19.974834, 21.965813>,  <29.427570, 20.005478, 21.824862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235754, 19.974834, 21.965813>,  <28.916059, 19.923763, 22.200731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235754, 19.974834, 21.965813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259456, -0.808133, -0.528776,
		-0.542128, 0.574995, -0.612762,
		0.799237, 0.127679, -0.587298,
		29.475525, 20.013138, 21.789623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630991, 19.892952, 21.449278>,  <28.916059, 19.923763, 22.200731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630991, 19.892952, 21.449278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016998, 19.790630, 21.472279>,  <29.248602, 19.729239, 21.486078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016998, 19.790630, 21.472279>,  <28.630991, 19.892952, 21.449278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016998, 19.790630, 21.472279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247564, -0.961233, -0.121419,
		0.086332, 0.102936, -0.990934,
		0.965018, -0.255802, 0.057502,
		29.306503, 19.713890, 21.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713757, 19.454733, 20.897585>,  <28.630991, 19.892952, 21.449278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713757, 19.454733, 20.897585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025131, 19.351883, 21.126644>,  <29.211956, 19.290173, 21.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025131, 19.351883, 21.126644>,  <28.713757, 19.454733, 20.897585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025131, 19.351883, 21.126644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203756, -0.966362, -0.156931,
		0.593736, 0.005480, -0.804641,
		0.778435, -0.257126, 0.572647,
		29.258661, 19.274746, 21.298439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159481, 18.943729, 20.517080>,  <28.713757, 19.454733, 20.897585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159481, 18.943729, 20.517080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264172, 18.883091, 20.898346>,  <29.326986, 18.846708, 21.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264172, 18.883091, 20.898346>,  <29.159481, 18.943729, 20.517080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264172, 18.883091, 20.898346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258448, -0.962529, -0.082118,
		0.929894, -0.224850, -0.291099,
		0.261727, -0.151595, 0.953162,
		29.342690, 18.837612, 21.184294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863131, 18.915295, 19.901821>,  <29.159481, 18.943729, 20.517080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863131, 18.915295, 19.901821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737946, 18.915176, 19.521915>,  <28.662834, 18.915106, 19.293972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737946, 18.915176, 19.521915>,  <28.863131, 18.915295, 19.901821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737946, 18.915176, 19.521915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128700, 0.990763, -0.042717,
		0.941005, -0.135603, -0.310033,
		-0.312962, -0.000295, -0.949766,
		28.644056, 18.915089, 19.236986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324038, 19.318108, 19.522350>,  <28.863131, 18.915295, 19.901821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324038, 19.318108, 19.522350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998211, 19.302326, 19.290859>,  <28.802715, 19.292858, 19.151964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998211, 19.302326, 19.290859>,  <29.324038, 19.318108, 19.522350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998211, 19.302326, 19.290859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100812, 0.972874, -0.208216,
		0.571242, -0.227949, -0.788494,
		-0.814567, -0.039452, -0.578726,
		28.753841, 19.290491, 19.117241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452812, 19.701229, 18.822968>,  <29.324038, 19.318108, 19.522350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452812, 19.701229, 18.822968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054134, 19.694077, 18.854664>,  <28.814928, 19.689785, 18.873682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054134, 19.694077, 18.854664>,  <29.452812, 19.701229, 18.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054134, 19.694077, 18.854664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028285, 0.990819, -0.132206,
		-0.076151, -0.134010, -0.988050,
		-0.996695, -0.017880, 0.079242,
		28.755125, 19.688713, 18.878437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103485, 20.036594, 18.221598>,  <29.452812, 19.701229, 18.822968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103485, 20.036594, 18.221598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829264, 20.036331, 18.512806>,  <28.664730, 20.036173, 18.687531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829264, 20.036331, 18.512806>,  <29.103485, 20.036594, 18.221598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829264, 20.036331, 18.512806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081206, 0.993828, -0.075572,
		-0.723479, -0.110928, -0.681376,
		-0.685553, -0.000657, 0.728022,
		28.623598, 20.036135, 18.731213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718430, 20.553732, 17.990145>,  <29.103485, 20.036594, 18.221598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718430, 20.553732, 17.990145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556988, 20.493229, 18.351082>,  <28.460123, 20.456926, 18.567644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556988, 20.493229, 18.351082>,  <28.718430, 20.553732, 17.990145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556988, 20.493229, 18.351082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188922, 0.978764, 0.079565,
		-0.895216, -0.138360, -0.423611,
		-0.403606, -0.151257, 0.902344,
		28.435905, 20.447851, 18.621784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132526, 21.017561, 17.977093>,  <28.718430, 20.553732, 17.990145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132526, 21.017561, 17.977093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247486, 20.937138, 18.351681>,  <28.316462, 20.888884, 18.576433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247486, 20.937138, 18.351681>,  <28.132526, 21.017561, 17.977093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247486, 20.937138, 18.351681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256244, 0.925941, 0.277439,
		-0.922897, -0.319701, 0.214596,
		0.287401, -0.201058, 0.936470,
		28.333706, 20.876820, 18.632622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628088, 21.267574, 18.370598>,  <28.132526, 21.017561, 17.977093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628088, 21.267574, 18.370598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955139, 21.262024, 18.600830>,  <28.151369, 21.258694, 18.738970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955139, 21.262024, 18.600830>,  <27.628088, 21.267574, 18.370598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955139, 21.262024, 18.600830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245828, 0.895589, 0.370795,
		-0.520627, -0.444666, 0.728848,
		0.817628, -0.013875, 0.575579,
		28.200428, 21.257862, 18.773504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413309, 21.473183, 18.948868>,  <27.628088, 21.267574, 18.370598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413309, 21.473183, 18.948868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807562, 21.508583, 19.006413>,  <28.044113, 21.529823, 19.040939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807562, 21.508583, 19.006413>,  <27.413309, 21.473183, 18.948868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807562, 21.508583, 19.006413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130142, 0.940843, 0.312854,
		-0.107663, -0.327082, 0.938843,
		0.985632, 0.088500, 0.143861,
		28.103252, 21.535133, 19.049570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557293, 21.817850, 19.660612>,  <27.413309, 21.473183, 18.948868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557293, 21.817850, 19.660612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895761, 21.843769, 19.449028>,  <28.098843, 21.859320, 19.322079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895761, 21.843769, 19.449028>,  <27.557293, 21.817850, 19.660612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895761, 21.843769, 19.449028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110203, 0.949849, 0.292646,
		0.521393, -0.305921, 0.796594,
		0.846171, 0.064797, -0.528958,
		28.149612, 21.863209, 19.290340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076765, 22.319098, 20.045086>,  <27.557293, 21.817850, 19.660612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076765, 22.319098, 20.045086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197424, 22.321781, 19.663727>,  <28.269819, 22.323391, 19.434912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197424, 22.321781, 19.663727>,  <28.076765, 22.319098, 20.045086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197424, 22.321781, 19.663727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254459, 0.963136, 0.087288,
		0.918835, -0.268930, 0.288822,
		0.301649, 0.006710, -0.953395,
		28.287918, 22.323793, 19.377708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684286, 22.583408, 20.050747>,  <28.076765, 22.319098, 20.045086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684286, 22.583408, 20.050747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542517, 22.640202, 19.681049>,  <28.457455, 22.674278, 19.459230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542517, 22.640202, 19.681049>,  <28.684286, 22.583408, 20.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542517, 22.640202, 19.681049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232455, 0.970756, 0.059989,
		0.905732, -0.193583, -0.377062,
		-0.354423, 0.141983, -0.924243,
		28.436190, 22.682796, 19.403776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127604, 23.001755, 19.803476>,  <28.684286, 22.583408, 20.050747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127604, 23.001755, 19.803476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808012, 23.042080, 19.566338>,  <28.616257, 23.066275, 19.424053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808012, 23.042080, 19.566338>,  <29.127604, 23.001755, 19.803476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808012, 23.042080, 19.566338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013443, 0.982607, 0.185209,
		0.601210, 0.155948, -0.783727,
		-0.798978, 0.100814, -0.592849,
		28.568319, 23.072325, 19.388483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162649, 23.589848, 19.324554>,  <29.127604, 23.001755, 19.803476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162649, 23.589848, 19.324554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785545, 23.495625, 19.418976>,  <28.559284, 23.439091, 19.475628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785545, 23.495625, 19.418976>,  <29.162649, 23.589848, 19.324554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785545, 23.495625, 19.418976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195711, 0.963948, 0.180279,
		-0.270010, 0.123761, -0.954871,
		-0.942758, -0.235556, 0.236054,
		28.502718, 23.424957, 19.489792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752205, 24.057554, 19.017784>,  <29.162649, 23.589848, 19.324554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752205, 24.057554, 19.017784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528379, 23.922523, 19.320553>,  <28.394083, 23.841505, 19.502214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528379, 23.922523, 19.320553>,  <28.752205, 24.057554, 19.017784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528379, 23.922523, 19.320553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322442, 0.930007, 0.176401,
		-0.763490, -0.145355, -0.629249,
		-0.559565, -0.337577, 0.756920,
		28.360510, 23.821251, 19.547628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256409, 24.598928, 19.043398>,  <28.752205, 24.057554, 19.017784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256409, 24.598928, 19.043398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167603, 24.417591, 19.388695>,  <28.114319, 24.308788, 19.595873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167603, 24.417591, 19.388695>,  <28.256409, 24.598928, 19.043398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167603, 24.417591, 19.388695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491278, 0.816756, 0.302582,
		-0.842233, -0.356914, -0.404050,
		-0.222015, -0.453345, 0.863243,
		28.100998, 24.281588, 19.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549866, 24.828325, 19.185991>,  <28.256409, 24.598928, 19.043398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549866, 24.828325, 19.185991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727522, 24.703144, 19.521801>,  <27.834116, 24.628035, 19.723286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727522, 24.703144, 19.521801>,  <27.549866, 24.828325, 19.185991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727522, 24.703144, 19.521801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253289, 0.854932, 0.452698,
		-0.859409, -0.413703, 0.300442,
		0.444140, -0.312954, 0.839523,
		27.860764, 24.609259, 19.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103832, 24.991724, 19.731001>,  <27.549866, 24.828325, 19.185991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103832, 24.991724, 19.731001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457615, 24.971737, 19.916576>,  <27.669886, 24.959745, 20.027922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457615, 24.971737, 19.916576>,  <27.103832, 24.991724, 19.731001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457615, 24.971737, 19.916576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169278, 0.892162, 0.418799,
		-0.434833, -0.448944, 0.780621,
		0.884458, -0.049966, 0.463938,
		27.722952, 24.956747, 20.055758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914455, 25.132877, 20.449375>,  <27.103832, 24.991724, 19.731001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914455, 25.132877, 20.449375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309048, 25.189640, 20.416592>,  <27.545803, 25.223698, 20.396921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309048, 25.189640, 20.416592>,  <26.914455, 25.132877, 20.449375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309048, 25.189640, 20.416592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060371, 0.779661, 0.623285,
		0.152349, -0.609911, 0.777688,
		0.986481, 0.141907, -0.081960,
		27.604992, 25.232212, 20.392004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155674, 25.326164, 21.095835>,  <26.914455, 25.132877, 20.449375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155674, 25.326164, 21.095835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453674, 25.451714, 20.860394>,  <27.632475, 25.527042, 20.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453674, 25.451714, 20.860394>,  <27.155674, 25.326164, 21.095835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453674, 25.451714, 20.860394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078475, 0.835017, 0.544598,
		0.662430, -0.451918, 0.597459,
		0.745003, 0.313873, -0.588604,
		27.677176, 25.545876, 20.683811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662859, 25.638811, 21.541761>,  <27.155674, 25.326164, 21.095835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662859, 25.638811, 21.541761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796114, 25.796001, 21.198929>,  <27.876066, 25.890316, 20.993229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796114, 25.796001, 21.198929>,  <27.662859, 25.638811, 21.541761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796114, 25.796001, 21.198929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132865, 0.880372, 0.455294,
		0.933471, -0.265551, 0.241069,
		0.333134, 0.392974, -0.857084,
		27.896055, 25.913893, 20.941803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309961, 25.978571, 21.648529>,  <27.662859, 25.638811, 21.541761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309961, 25.978571, 21.648529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130623, 26.154228, 21.337109>,  <28.023020, 26.259623, 21.150257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130623, 26.154228, 21.337109>,  <28.309961, 25.978571, 21.648529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130623, 26.154228, 21.337109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162656, 0.896536, 0.412026,
		0.878936, 0.058094, -0.473388,
		-0.448346, 0.439144, -0.778549,
		27.996119, 26.285971, 21.103544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639545, 26.637589, 21.559628>,  <28.309961, 25.978571, 21.648529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639545, 26.637589, 21.559628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319712, 26.691235, 21.325474>,  <28.127811, 26.723423, 21.184980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319712, 26.691235, 21.325474>,  <28.639545, 26.637589, 21.559628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319712, 26.691235, 21.325474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040809, 0.960358, 0.275767,
		0.599166, 0.244388, -0.762414,
		-0.799584, 0.134117, -0.585387,
		28.079836, 26.731470, 21.149858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749811, 27.238079, 21.227276>,  <28.639545, 26.637589, 21.559628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749811, 27.238079, 21.227276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353617, 27.200493, 21.187054>,  <28.115900, 27.177940, 21.162920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353617, 27.200493, 21.187054>,  <28.749811, 27.238079, 21.227276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353617, 27.200493, 21.187054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116772, 0.960475, 0.252689,
		0.072837, 0.262026, -0.962308,
		-0.990484, -0.093966, -0.100556,
		28.056471, 27.172302, 21.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436232, 27.790730, 20.750536>,  <28.749811, 27.238079, 21.227276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436232, 27.790730, 20.750536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141504, 27.668491, 20.991768>,  <27.964668, 27.595148, 21.136507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141504, 27.668491, 20.991768>,  <28.436232, 27.790730, 20.750536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141504, 27.668491, 20.991768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178280, 0.948265, 0.262696,
		-0.652159, 0.086042, -0.753183,
		-0.736821, -0.305597, 0.603080,
		27.920458, 27.576813, 21.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945400, 28.236240, 20.598091>,  <28.436232, 27.790730, 20.750536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945400, 28.236240, 20.598091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850737, 28.069927, 20.949345>,  <27.793938, 27.970140, 21.160097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850737, 28.069927, 20.949345>,  <27.945400, 28.236240, 20.598091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850737, 28.069927, 20.949345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285646, 0.893640, 0.346142,
		-0.928655, -0.168918, -0.330254,
		-0.236658, -0.415781, 0.878134,
		27.779739, 27.945192, 21.212784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247025, 28.340736, 20.755568>,  <27.945400, 28.236240, 20.598091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247025, 28.340736, 20.755568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419954, 28.279465, 21.111012>,  <27.523712, 28.242701, 21.324278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419954, 28.279465, 21.111012>,  <27.247025, 28.340736, 20.755568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419954, 28.279465, 21.111012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513924, 0.767886, 0.382404,
		-0.740930, -0.622002, 0.253253,
		0.432326, -0.153182, 0.888611,
		27.549652, 28.233511, 21.377594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712244, 28.321873, 21.169359>,  <27.247025, 28.340736, 20.755568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712244, 28.321873, 21.169359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030842, 28.416897, 21.391769>,  <27.222000, 28.473911, 21.525215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030842, 28.416897, 21.391769>,  <26.712244, 28.321873, 21.169359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030842, 28.416897, 21.391769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525112, 0.727664, 0.441319,
		-0.299761, -0.643484, 0.704324,
		0.796493, 0.237559, 0.556026,
		27.269789, 28.488165, 21.558577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451979, 28.476982, 21.837051>,  <26.712244, 28.321873, 21.169359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451979, 28.476982, 21.837051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823917, 28.623669, 21.825047>,  <27.047081, 28.711681, 21.817844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823917, 28.623669, 21.825047>,  <26.451979, 28.476982, 21.837051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823917, 28.623669, 21.825047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323958, 0.854631, 0.405779,
		0.174454, -0.367591, 0.913478,
		0.929848, 0.366719, -0.030009,
		27.102871, 28.733685, 21.816044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336063, 29.034517, 22.312321>,  <26.451979, 28.476982, 21.837051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336063, 29.034517, 22.312321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670549, 29.108433, 22.105789>,  <26.871241, 29.152782, 21.981871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670549, 29.108433, 22.105789>,  <26.336063, 29.034517, 22.312321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670549, 29.108433, 22.105789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113077, 0.979386, 0.167381,
		0.536614, -0.081582, 0.839875,
		0.836217, 0.184790, -0.516327,
		26.921415, 29.163870, 21.950891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653267, 29.465864, 22.701494>,  <26.336063, 29.034517, 22.312321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653267, 29.465864, 22.701494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750706, 29.497631, 22.314846>,  <26.809170, 29.516691, 22.082857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750706, 29.497631, 22.314846>,  <26.653267, 29.465864, 22.701494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750706, 29.497631, 22.314846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289767, 0.957081, 0.005611,
		0.925578, 0.278727, 0.256157,
		0.243599, 0.079420, -0.966619,
		26.823786, 29.521458, 22.024860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841736, 30.180597, 22.645689>,  <26.653267, 29.465864, 22.701494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841736, 30.180597, 22.645689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823973, 30.085373, 22.257595>,  <26.813314, 30.028238, 22.024738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823973, 30.085373, 22.257595>,  <26.841736, 30.180597, 22.645689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823973, 30.085373, 22.257595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339742, 0.916906, -0.209427,
		0.939470, 0.320329, -0.121597,
		-0.044407, -0.238062, -0.970234,
		26.810650, 30.013954, 21.966524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210627, 30.735411, 22.251499>,  <26.841736, 30.180597, 22.645689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210627, 30.735411, 22.251499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970678, 30.548855, 21.991459>,  <26.826710, 30.436920, 21.835434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970678, 30.548855, 21.991459>,  <27.210627, 30.735411, 22.251499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970678, 30.548855, 21.991459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362111, 0.882809, -0.299206,
		0.713463, 0.055925, -0.698457,
		-0.599871, -0.466391, -0.650102,
		26.790716, 30.408937, 21.796429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255445, 31.235218, 21.673649>,  <27.210627, 30.735411, 22.251499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255445, 31.235218, 21.673649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938107, 30.997684, 21.620049>,  <26.747704, 30.855164, 21.587889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938107, 30.997684, 21.620049>,  <27.255445, 31.235218, 21.673649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938107, 30.997684, 21.620049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501171, 0.762065, -0.409981,
		0.345577, -0.258102, -0.902197,
		-0.793349, -0.593836, -0.133999,
		26.700102, 30.819534, 21.579849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038544, 31.355761, 21.017666>,  <27.255445, 31.235218, 21.673649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038544, 31.355761, 21.017666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716558, 31.207458, 21.202957>,  <26.523367, 31.118477, 21.314131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716558, 31.207458, 21.202957>,  <27.038544, 31.355761, 21.017666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716558, 31.207458, 21.202957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546959, 0.766255, -0.337176,
		-0.229941, -0.524780, -0.819593,
		-0.804961, -0.370753, 0.463227,
		26.475071, 31.096233, 21.341925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478004, 31.473265, 20.502735>,  <27.038544, 31.355761, 21.017666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478004, 31.473265, 20.502735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313456, 31.423264, 20.863876>,  <26.214725, 31.393263, 21.080561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313456, 31.423264, 20.863876>,  <26.478004, 31.473265, 20.502735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313456, 31.423264, 20.863876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625418, 0.759283, -0.179837,
		-0.663041, -0.638642, -0.390529,
		-0.411374, -0.125005, 0.902854,
		26.190042, 31.385761, 21.134733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785671, 31.421778, 20.442392>,  <26.478004, 31.473265, 20.502735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785671, 31.421778, 20.442392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822823, 31.546272, 20.820705>,  <25.845114, 31.620968, 21.047693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822823, 31.546272, 20.820705>,  <25.785671, 31.421778, 20.442392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822823, 31.546272, 20.820705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748450, 0.648282, -0.139833,
		-0.656655, -0.694884, 0.293156,
		0.092880, 0.311235, 0.945783,
		25.850687, 31.639643, 21.104441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118874, 31.470409, 20.655706>,  <25.785671, 31.421778, 20.442392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118874, 31.470409, 20.655706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337988, 31.712627, 20.886616>,  <25.469456, 31.857958, 21.025162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337988, 31.712627, 20.886616>,  <25.118874, 31.470409, 20.655706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337988, 31.712627, 20.886616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650709, 0.742074, -0.160947,
		-0.525841, -0.287474, 0.800531,
		0.547785, 0.605545, 0.577275,
		25.502323, 31.894291, 21.059799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655319, 31.822693, 21.121761>,  <25.118874, 31.470409, 20.655706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655319, 31.822693, 21.121761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975420, 32.062065, 21.106377>,  <25.167480, 32.205688, 21.097145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975420, 32.062065, 21.106377>,  <24.655319, 31.822693, 21.121761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975420, 32.062065, 21.106377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599571, 0.797347, -0.068937,
		-0.010585, 0.078229, 0.996879,
		0.800251, 0.598430, -0.038464,
		25.215496, 32.241592, 21.094837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322330, 32.371346, 21.387508>,  <24.655319, 31.822693, 21.121761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322330, 32.371346, 21.387508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670177, 32.522888, 21.260872>,  <24.878885, 32.613815, 21.184891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670177, 32.522888, 21.260872>,  <24.322330, 32.371346, 21.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670177, 32.522888, 21.260872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401061, 0.916035, -0.005433,
		0.287950, 0.131697, 0.948547,
		0.869617, 0.378861, -0.316591,
		24.931063, 32.636547, 21.165895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372868, 32.865250, 21.764370>,  <24.322330, 32.371346, 21.387508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372868, 32.865250, 21.764370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614080, 32.958660, 21.459263>,  <24.758808, 33.014706, 21.276199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614080, 32.958660, 21.459263>,  <24.372868, 32.865250, 21.764370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614080, 32.958660, 21.459263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570978, 0.794104, -0.208286,
		0.557076, 0.561128, 0.612211,
		0.603034, 0.233528, -0.762768,
		24.794991, 33.028717, 21.230433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663380, 33.547688, 21.787191>,  <24.372868, 32.865250, 21.764370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663380, 33.547688, 21.787191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676826, 33.485909, 21.392220>,  <24.684895, 33.448841, 21.155237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676826, 33.485909, 21.392220>,  <24.663380, 33.547688, 21.787191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676826, 33.485909, 21.392220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357941, 0.920590, -0.156180,
		0.933139, 0.358692, -0.024335,
		0.033618, -0.154448, -0.987429,
		24.686913, 33.439575, 21.095991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156771, 33.531616, 21.298321>,  <24.663380, 33.547688, 21.787191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156771, 33.531616, 21.298321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878716, 33.676727, 21.050072>,  <23.711882, 33.763794, 20.901121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878716, 33.676727, 21.050072>,  <24.156771, 33.531616, 21.298321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.878716, 33.676727, 21.050072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569951, 0.248014, 0.783355,
		0.438107, 0.898266, 0.034362,
		-0.695139, 0.362778, -0.620624,
		23.670174, 33.785561, 20.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127424, 33.990974, 22.041914>,  <24.156771, 33.531616, 21.298321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127424, 33.990974, 22.041914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133055, 34.336674, 21.840767>,  <24.136433, 34.544094, 21.720078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133055, 34.336674, 21.840767>,  <24.127424, 33.990974, 22.041914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133055, 34.336674, 21.840767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042513, 0.501947, 0.863853,
		0.998997, -0.033540, -0.029676,
		0.014078, 0.864248, -0.502869,
		24.137278, 34.595947, 21.689907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761620, 34.412903, 22.263750>,  <24.127424, 33.990974, 22.041914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761620, 34.412903, 22.263750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429689, 34.610691, 22.160301>,  <24.230532, 34.729366, 22.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429689, 34.610691, 22.160301>,  <24.761620, 34.412903, 22.263750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429689, 34.610691, 22.160301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080831, 0.565084, 0.821064,
		0.552138, 0.660435, -0.508890,
		-0.829825, 0.494475, -0.258621,
		24.180742, 34.759033, 22.082714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831312, 35.278030, 22.342710>,  <24.761620, 34.412903, 22.263750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831312, 35.278030, 22.342710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508722, 35.057026, 22.426933>,  <24.315168, 34.924423, 22.477467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508722, 35.057026, 22.426933>,  <24.831312, 35.278030, 22.342710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508722, 35.057026, 22.426933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083424, 0.246216, 0.965618,
		-0.585354, 0.796312, -0.152475,
		-0.806475, -0.552508, 0.210555,
		24.266779, 34.891273, 22.490099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520922, 35.544945, 22.835810>,  <24.831312, 35.278030, 22.342710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520922, 35.544945, 22.835810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242807, 35.621372, 23.112957>,  <24.075939, 35.667229, 23.279245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242807, 35.621372, 23.112957>,  <24.520922, 35.544945, 22.835810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242807, 35.621372, 23.112957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671742, -0.515605, -0.531897,
		0.255616, -0.835250, 0.486844,
		-0.695286, 0.191072, 0.692870,
		24.034222, 35.678696, 23.320818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.776188, 35.603535, 22.819597>,  <24.520922, 35.544945, 22.835810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.776188, 35.603535, 22.819597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.447342, 35.724731, 22.626797>,  <23.250034, 35.797451, 22.511116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.447342, 35.724731, 22.626797>,  <23.776188, 35.603535, 22.819597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.447342, 35.724731, 22.626797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567702, 0.500149, -0.653885,
		0.042949, -0.811200, -0.583190,
		-0.822113, 0.302995, -0.482001,
		23.200708, 35.815628, 22.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.896309, 35.410320, 22.086857>,  <23.776188, 35.603535, 22.819597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.896309, 35.410320, 22.086857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667885, 35.735104, 22.135220>,  <23.530830, 35.929974, 22.164236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667885, 35.735104, 22.135220>,  <23.896309, 35.410320, 22.086857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667885, 35.735104, 22.135220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618307, 0.522310, -0.587272,
		-0.539989, -0.260610, -0.800309,
		-0.571058, 0.811957, 0.120905,
		23.496567, 35.978691, 22.171492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818565, 35.655640, 21.422176>,  <23.896309, 35.410320, 22.086857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818565, 35.655640, 21.422176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733885, 35.971191, 21.652950>,  <23.683077, 36.160522, 21.791414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733885, 35.971191, 21.652950>,  <23.818565, 35.655640, 21.422176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733885, 35.971191, 21.652950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458156, 0.601539, -0.654403,
		-0.863294, 0.125789, -0.488775,
		-0.211701, 0.788877, 0.576936,
		23.670374, 36.207855, 21.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639784, 36.181549, 20.976627>,  <23.818565, 35.655640, 21.422176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639784, 36.181549, 20.976627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712803, 36.356285, 21.328957>,  <23.756615, 36.461128, 21.540354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712803, 36.356285, 21.328957>,  <23.639784, 36.181549, 20.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.712803, 36.356285, 21.328957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443386, 0.763029, -0.470313,
		-0.877544, 0.476400, -0.054398,
		0.182550, 0.436840, 0.880821,
		23.767569, 36.487339, 21.593203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469393, 36.912174, 20.906542>,  <23.639784, 36.181549, 20.976627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469393, 36.912174, 20.906542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.709671, 36.908405, 21.226311>,  <23.853838, 36.906143, 21.418173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.709671, 36.908405, 21.226311>,  <23.469393, 36.912174, 20.906542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.709671, 36.908405, 21.226311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558953, 0.719880, -0.411515,
		-0.571609, 0.694035, 0.437698,
		0.600695, -0.009427, 0.799422,
		23.889879, 36.905579, 21.466137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.491650, 37.602547, 21.315437>,  <23.469393, 36.912174, 20.906542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.491650, 37.602547, 21.315437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.832752, 37.397762, 21.356808>,  <24.037415, 37.274891, 21.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.832752, 37.397762, 21.356808>,  <23.491650, 37.602547, 21.315437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.832752, 37.397762, 21.356808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518794, 0.807325, -0.281212,
		0.060473, 0.293461, 0.954056,
		0.852758, -0.511964, 0.103424,
		24.088579, 37.244171, 21.387835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.961996, 38.160248, 21.517366>,  <23.491650, 37.602547, 21.315437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.961996, 38.160248, 21.517366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192614, 37.852852, 21.406361>,  <24.330984, 37.668415, 21.339756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192614, 37.852852, 21.406361>,  <23.961996, 38.160248, 21.517366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192614, 37.852852, 21.406361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605956, 0.630004, -0.485709,
		0.548099, 0.111871, 0.828898,
		0.576546, -0.768492, -0.277515,
		24.365578, 37.622303, 21.323107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661379, 38.384430, 21.478609>,  <23.961996, 38.160248, 21.517366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661379, 38.384430, 21.478609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703499, 38.049042, 21.264740>,  <24.728771, 37.847809, 21.136419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703499, 38.049042, 21.264740>,  <24.661379, 38.384430, 21.478609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703499, 38.049042, 21.264740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700878, 0.443997, -0.558245,
		0.705466, -0.315956, 0.634421,
		0.105300, -0.838474, -0.534671,
		24.735088, 37.797501, 21.104340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367163, 38.204884, 21.446831>,  <24.661379, 38.384430, 21.478609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367163, 38.204884, 21.446831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199608, 38.039524, 21.123440>,  <25.099075, 37.940308, 20.929405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199608, 38.039524, 21.123440>,  <25.367163, 38.204884, 21.446831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199608, 38.039524, 21.123440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647608, 0.488102, -0.585116,
		0.636504, -0.768675, 0.063257,
		-0.418888, -0.413395, -0.808479,
		25.073942, 37.915504, 20.880896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045025, 38.055225, 21.017788>,  <25.367163, 38.204884, 21.446831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045025, 38.055225, 21.017788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722225, 38.002728, 20.787476>,  <25.528545, 37.971230, 20.649288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722225, 38.002728, 20.787476>,  <26.045025, 38.055225, 21.017788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722225, 38.002728, 20.787476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535178, 0.249667, -0.807001,
		0.249667, -0.959396, -0.131243,
		0.807001, 0.131243, 0.575781,
		25.480125, 37.963356, 20.614740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237429, 37.735287, 20.442644>,  <26.045025, 38.055225, 21.017788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237429, 37.735287, 20.442644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899460, 37.911568, 20.321388>,  <25.696678, 38.017334, 20.248634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899460, 37.911568, 20.321388>,  <26.237429, 37.735287, 20.442644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899460, 37.911568, 20.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440687, 0.252323, -0.861469,
		-0.303158, -0.861463, -0.407403,
		-0.844920, 0.440699, -0.303142,
		25.645985, 38.043777, 20.230446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110529, 37.517624, 19.685074>,  <26.237429, 37.735287, 20.442644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110529, 37.517624, 19.685074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898323, 37.851460, 19.744423>,  <25.771000, 38.051762, 19.780033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898323, 37.851460, 19.744423>,  <26.110529, 37.517624, 19.685074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898323, 37.851460, 19.744423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150329, 0.264891, -0.952488,
		-0.834239, -0.483005, -0.265992,
		-0.530516, 0.834589, 0.148373,
		25.739168, 38.101837, 19.788935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105785, 37.666775, 18.990913>,  <26.110529, 37.517624, 19.685074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105785, 37.666775, 18.990913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966057, 37.982063, 19.193569>,  <25.882219, 38.171234, 19.315163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966057, 37.982063, 19.193569>,  <26.105785, 37.666775, 18.990913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966057, 37.982063, 19.193569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217735, 0.594186, -0.774296,
		-0.911354, -0.160166, -0.379185,
		-0.349323, 0.788219, 0.506640,
		25.861259, 38.218529, 19.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729637, 38.079620, 18.556974>,  <26.105785, 37.666775, 18.990913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729637, 38.079620, 18.556974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827578, 38.324459, 18.857742>,  <25.886341, 38.471363, 19.038204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827578, 38.324459, 18.857742>,  <25.729637, 38.079620, 18.556974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827578, 38.324459, 18.857742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143176, 0.744199, -0.652432,
		-0.958931, 0.267406, 0.094581,
		0.244852, 0.612096, 0.751922,
		25.901033, 38.508087, 19.083319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209927, 38.627281, 18.470484>,  <25.729637, 38.079620, 18.556974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209927, 38.627281, 18.470484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518456, 38.757713, 18.689110>,  <25.703573, 38.835972, 18.820286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518456, 38.757713, 18.689110>,  <25.209927, 38.627281, 18.470484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518456, 38.757713, 18.689110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053523, 0.822502, -0.566238,
		-0.634193, 0.466004, 0.616960,
		0.771320, 0.326082, 0.546567,
		25.749851, 38.855537, 18.853081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101452, 39.365482, 18.741409>,  <25.209927, 38.627281, 18.470484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101452, 39.365482, 18.741409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496719, 39.305420, 18.728889>,  <25.733879, 39.269382, 18.721378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496719, 39.305420, 18.728889>,  <25.101452, 39.365482, 18.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496719, 39.305420, 18.728889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096924, 0.769446, -0.631314,
		0.118877, 0.620811, 0.774895,
		0.988167, -0.150155, -0.031298,
		25.793169, 39.260372, 18.719500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375355, 39.976540, 18.832363>,  <25.101452, 39.365482, 18.741409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375355, 39.976540, 18.832363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683186, 39.779156, 18.670254>,  <25.867884, 39.660725, 18.572989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683186, 39.779156, 18.670254>,  <25.375355, 39.976540, 18.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683186, 39.779156, 18.670254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226097, 0.804132, -0.549774,
		0.597187, 0.331462, 0.730411,
		0.769576, -0.493461, -0.405275,
		25.914059, 39.631119, 18.548672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805580, 40.492588, 18.736790>,  <25.375355, 39.976540, 18.832363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805580, 40.492588, 18.736790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950283, 40.192162, 18.515873>,  <26.037106, 40.011906, 18.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950283, 40.192162, 18.515873>,  <25.805580, 40.492588, 18.736790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950283, 40.192162, 18.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142484, 0.629996, -0.763415,
		0.921319, 0.197479, 0.334922,
		0.361758, -0.751071, -0.552290,
		26.058811, 39.966839, 18.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457363, 40.800442, 18.367365>,  <25.805580, 40.492588, 18.736790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457363, 40.800442, 18.367365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308620, 40.494217, 18.157360>,  <26.219376, 40.310482, 18.031357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308620, 40.494217, 18.157360>,  <26.457363, 40.800442, 18.367365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308620, 40.494217, 18.157360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056065, 0.583057, -0.810494,
		0.926597, -0.271951, -0.259733,
		-0.371854, -0.765563, -0.525012,
		26.197063, 40.264549, 17.999857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908442, 40.687809, 17.691076>,  <26.457363, 40.800442, 18.367365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908442, 40.687809, 17.691076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578152, 40.486191, 17.589790>,  <26.379978, 40.365219, 17.529018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578152, 40.486191, 17.589790>,  <26.908442, 40.687809, 17.691076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578152, 40.486191, 17.589790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059380, 0.524079, -0.849597,
		0.560949, -0.686492, -0.462672,
		-0.825718, -0.504054, -0.253218,
		26.330435, 40.334976, 17.513826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969337, 40.502247, 16.955593>,  <26.908442, 40.687809, 17.691076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969337, 40.502247, 16.955593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578867, 40.475666, 17.038212>,  <26.344584, 40.459717, 17.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578867, 40.475666, 17.038212>,  <26.969337, 40.502247, 16.955593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578867, 40.475666, 17.038212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209763, 0.532436, -0.820068,
		-0.055475, -0.843858, -0.533692,
		-0.976177, -0.066456, 0.206547,
		26.286015, 40.455730, 17.100176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676741, 40.253113, 16.384115>,  <26.969337, 40.502247, 16.955593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676741, 40.253113, 16.384115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373913, 40.416512, 16.588066>,  <26.192217, 40.514553, 16.710436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373913, 40.416512, 16.588066>,  <26.676741, 40.253113, 16.384115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373913, 40.416512, 16.588066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303005, 0.471880, -0.827960,
		-0.578823, -0.781317, -0.233468,
		-0.757068, 0.408500, 0.509878,
		26.146791, 40.539062, 16.741030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259817, 40.272953, 15.894537>,  <26.676741, 40.253113, 16.384115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259817, 40.272953, 15.894537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164864, 40.548527, 16.168476>,  <26.107891, 40.713871, 16.332840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164864, 40.548527, 16.168476>,  <26.259817, 40.272953, 15.894537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164864, 40.548527, 16.168476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003330, 0.705574, -0.708629,
		-0.971410, -0.165936, -0.169786,
		-0.237383, 0.688935, 0.684849,
		26.093649, 40.755207, 16.373930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709967, 40.696392, 15.788658>,  <26.259817, 40.272953, 15.894537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709967, 40.696392, 15.788658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937077, 40.929592, 16.021122>,  <26.073343, 41.069511, 16.160601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937077, 40.929592, 16.021122>,  <25.709967, 40.696392, 15.788658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937077, 40.929592, 16.021122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043760, 0.683616, -0.728529,
		-0.822020, 0.439072, 0.362628,
		0.567775, 0.582997, 0.581159,
		26.107409, 41.104492, 16.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769163, 41.160889, 15.142406>,  <25.709967, 40.696392, 15.788658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769163, 41.160889, 15.142406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134493, 41.067867, 15.008685>,  <26.353691, 41.012054, 14.928452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134493, 41.067867, 15.008685>,  <25.769163, 41.160889, 15.142406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134493, 41.067867, 15.008685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407198, -0.511049, -0.756980,
		0.005193, 0.827495, -0.561449,
		0.913325, -0.232552, -0.334301,
		26.408491, 40.998100, 14.908395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018440, 41.207451, 15.436655>,  <25.769163, 41.160889, 15.142406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018440, 41.207451, 15.436655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067036, 41.160938, 15.830958>,  <25.096193, 41.133030, 16.067541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067036, 41.160938, 15.830958>,  <25.018440, 41.207451, 15.436655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067036, 41.160938, 15.830958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984332, 0.113751, 0.134730,
		-0.127797, -0.986681, -0.100642,
		0.121488, -0.116283, 0.985758,
		25.103481, 41.126053, 16.126686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422937, 40.911095, 15.625731>,  <25.018440, 41.207451, 15.436655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422937, 40.911095, 15.625731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557932, 41.003426, 15.990767>,  <24.638927, 41.058826, 16.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557932, 41.003426, 15.990767>,  <24.422937, 40.911095, 15.625731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557932, 41.003426, 15.990767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931927, -0.054762, 0.358487,
		0.132725, -0.971452, 0.196636,
		0.337485, 0.230830, 0.912590,
		24.659178, 41.072674, 16.264545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810677, 41.068474, 15.887956>,  <24.422937, 40.911095, 15.625731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810677, 41.068474, 15.887956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787708, 40.875389, 15.538398>,  <23.773928, 40.759537, 15.328663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787708, 40.875389, 15.538398>,  <23.810677, 41.068474, 15.887956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.787708, 40.875389, 15.538398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864193, -0.414248, 0.285601,
		-0.499873, 0.771613, -0.393370,
		-0.057421, -0.482712, -0.873894,
		23.770481, 40.730576, 15.276230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655630, 41.848839, 15.944797>,  <23.810677, 41.068474, 15.887956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655630, 41.848839, 15.944797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645838, 42.239349, 15.858743>,  <23.639963, 42.473656, 15.807111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645838, 42.239349, 15.858743>,  <23.655630, 41.848839, 15.944797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.645838, 42.239349, 15.858743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012743, 0.215486, 0.976424,
		0.999619, 0.021162, -0.017716,
		-0.024481, 0.976278, -0.215135,
		23.638493, 42.532234, 15.794202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183575, 42.248810, 16.184860>,  <23.655630, 41.848839, 15.944797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183575, 42.248810, 16.184860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.828707, 42.432224, 16.205566>,  <23.615786, 42.542271, 16.217991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.828707, 42.432224, 16.205566>,  <24.183575, 42.248810, 16.184860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.828707, 42.432224, 16.205566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005066, -0.102495, 0.994721,
		0.461418, 0.882747, 0.088607,
		-0.887168, 0.458533, 0.051765,
		23.562555, 42.569786, 16.221096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200251, 42.892090, 16.664547>,  <24.183575, 42.248810, 16.184860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.200251, 42.892090, 16.664547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863993, 42.675758, 16.653099>,  <23.662239, 42.545959, 16.646231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863993, 42.675758, 16.653099>,  <24.200251, 42.892090, 16.664547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863993, 42.675758, 16.653099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084623, -0.183364, 0.979396,
		-0.534937, 0.820901, 0.199911,
		-0.840644, -0.540832, -0.028621,
		23.611799, 42.513508, 16.644512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761761, 43.109211, 17.237700>,  <24.200251, 42.892090, 16.664547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761761, 43.109211, 17.237700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632753, 42.748692, 17.122017>,  <23.555349, 42.532379, 17.052607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632753, 42.748692, 17.122017>,  <23.761761, 43.109211, 17.237700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.632753, 42.748692, 17.122017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249863, -0.213634, 0.944420,
		-0.912991, 0.376853, -0.156301,
		-0.322517, -0.901300, -0.289207,
		23.535999, 42.478302, 17.035255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045769, 43.002605, 17.481236>,  <23.761761, 43.109211, 17.237700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045769, 43.002605, 17.481236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272896, 42.674892, 17.449326>,  <23.409172, 42.478264, 17.430180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272896, 42.674892, 17.449326>,  <23.045769, 43.002605, 17.481236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.272896, 42.674892, 17.449326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199267, -0.230837, 0.952369,
		-0.798673, -0.524873, -0.294328,
		0.567815, -0.819281, -0.079773,
		23.443241, 42.429108, 17.425394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610218, 42.440369, 17.726978>,  <23.045769, 43.002605, 17.481236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610218, 42.440369, 17.726978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993231, 42.329742, 17.759583>,  <23.223040, 42.263367, 17.779144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993231, 42.329742, 17.759583>,  <22.610218, 42.440369, 17.726978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993231, 42.329742, 17.759583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154246, -0.252510, 0.955221,
		-0.243551, -0.927241, -0.284442,
		0.957544, -0.276519, 0.081524,
		23.280491, 42.246773, 17.784037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657358, 41.814117, 18.088615>,  <22.610218, 42.440369, 17.726978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657358, 41.814117, 18.088615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050489, 41.883308, 18.114304>,  <23.286369, 41.924824, 18.129717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050489, 41.883308, 18.114304>,  <22.657358, 41.814117, 18.088615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050489, 41.883308, 18.114304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002186, -0.358942, 0.933357,
		0.184503, -0.917191, -0.353157,
		0.982829, 0.172979, 0.064221,
		23.345339, 41.935204, 18.133570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.820496, 41.272705, 18.325962>,  <22.657358, 41.814117, 18.088615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.820496, 41.272705, 18.325962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111372, 41.525745, 18.432552>,  <23.285898, 41.677570, 18.496506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111372, 41.525745, 18.432552>,  <22.820496, 41.272705, 18.325962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111372, 41.525745, 18.432552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005820, -0.382504, 0.923935,
		0.686410, -0.673429, -0.274472,
		0.727191, 0.632601, 0.266474,
		23.329529, 41.715527, 18.512495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259630, 40.855503, 18.660645>,  <22.820496, 41.272705, 18.325962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259630, 40.855503, 18.660645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389320, 41.216778, 18.773163>,  <23.467134, 41.433544, 18.840673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389320, 41.216778, 18.773163>,  <23.259630, 40.855503, 18.660645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389320, 41.216778, 18.773163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081563, -0.322944, 0.942897,
		0.942458, -0.282766, -0.178373,
		0.324223, 0.903189, 0.281298,
		23.486588, 41.487736, 18.857552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806955, 40.703423, 19.095602>,  <23.259630, 40.855503, 18.660645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806955, 40.703423, 19.095602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.705179, 41.074718, 19.204136>,  <23.644114, 41.297497, 19.269257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.705179, 41.074718, 19.204136>,  <23.806955, 40.703423, 19.095602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.705179, 41.074718, 19.204136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073660, -0.261153, 0.962483,
		0.964279, 0.264881, -0.001927,
		-0.254440, 0.928244, 0.271335,
		23.628847, 41.353191, 19.285536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312941, 40.923748, 19.616104>,  <23.806955, 40.703423, 19.095602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312941, 40.923748, 19.616104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985283, 41.145462, 19.675125>,  <23.788689, 41.278488, 19.710537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.985283, 41.145462, 19.675125>,  <24.312941, 40.923748, 19.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.985283, 41.145462, 19.675125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002315, -0.260438, 0.965488,
		0.573580, 0.790535, 0.214620,
		-0.819147, 0.554281, 0.147552,
		23.739538, 41.311745, 19.719391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357407, 41.034412, 20.257542>,  <24.312941, 40.923748, 19.616104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357407, 41.034412, 20.257542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979345, 41.145626, 20.188976>,  <23.752508, 41.212353, 20.147837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979345, 41.145626, 20.188976>,  <24.357407, 41.034412, 20.257542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.979345, 41.145626, 20.188976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249200, -0.274556, 0.928719,
		0.211152, 0.920498, 0.328783,
		-0.945153, 0.278034, -0.171415,
		23.695799, 41.229034, 20.137552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152588, 41.436634, 20.807547>,  <24.357407, 41.034412, 20.257542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152588, 41.436634, 20.807547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.812592, 41.306179, 20.642067>,  <23.608593, 41.227905, 20.542778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.812592, 41.306179, 20.642067>,  <24.152588, 41.436634, 20.807547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.812592, 41.306179, 20.642067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346536, -0.245322, 0.905389,
		-0.396768, 0.912937, 0.095505,
		-0.849993, -0.326133, -0.413701,
		23.557594, 41.208340, 20.517956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632843, 41.641560, 21.239042>,  <24.152588, 41.436634, 20.807547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632843, 41.641560, 21.239042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483795, 41.340908, 21.021343>,  <23.394367, 41.160519, 20.890724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483795, 41.340908, 21.021343>,  <23.632843, 41.641560, 21.239042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.483795, 41.340908, 21.021343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334948, -0.438015, 0.834238,
		-0.865428, 0.493148, -0.088544,
		-0.372619, -0.751630, -0.544250,
		23.372009, 41.115417, 20.858068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.950766, 41.529446, 21.459915>,  <23.632843, 41.641560, 21.239042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.950766, 41.529446, 21.459915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.081802, 41.192699, 21.288357>,  <23.160425, 40.990654, 21.185423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.081802, 41.192699, 21.288357>,  <22.950766, 41.529446, 21.459915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081802, 41.192699, 21.288357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469281, -0.538972, 0.699489,
		-0.820036, -0.027874, -0.571633,
		0.327591, -0.841863, -0.428895,
		23.180080, 40.940140, 21.159689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388445, 41.027557, 21.612062>,  <22.950766, 41.529446, 21.459915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388445, 41.027557, 21.612062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.674799, 40.781101, 21.480682>,  <22.846611, 40.633228, 21.401854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.674799, 40.781101, 21.480682>,  <22.388445, 41.027557, 21.612062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.674799, 40.781101, 21.480682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420011, -0.755799, 0.502352,
		-0.557763, -0.221673, -0.799851,
		0.715885, -0.616140, -0.328451,
		22.889565, 40.596260, 21.382147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060167, 40.450951, 21.408140>,  <22.388445, 41.027557, 21.612062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060167, 40.450951, 21.408140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434141, 40.327282, 21.477772>,  <22.658525, 40.253078, 21.519550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434141, 40.327282, 21.477772>,  <22.060167, 40.450951, 21.408140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434141, 40.327282, 21.477772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354813, -0.813537, 0.460722,
		-0.000822, -0.492513, -0.870305,
		0.934937, -0.309174, 0.174081,
		22.714622, 40.234531, 21.529997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241575, 39.750626, 20.996927>,  <22.060167, 40.450951, 21.408140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241575, 39.750626, 20.996927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458576, 39.794926, 21.330017>,  <22.588776, 39.821507, 21.529871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.458576, 39.794926, 21.330017>,  <22.241575, 39.750626, 20.996927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458576, 39.794926, 21.330017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390817, -0.844191, 0.366883,
		0.743609, -0.524477, -0.414693,
		0.542501, 0.110748, 0.832723,
		22.621326, 39.828152, 21.579834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.381769, 39.093021, 21.249016>,  <22.241575, 39.750626, 20.996927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.381769, 39.093021, 21.249016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490679, 39.301003, 21.572872>,  <22.556025, 39.425793, 21.767185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490679, 39.301003, 21.572872>,  <22.381769, 39.093021, 21.249016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490679, 39.301003, 21.572872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192158, -0.795099, 0.575234,
		0.942838, -0.312199, -0.116571,
		0.272273, 0.519952, 0.809640,
		22.572361, 39.456989, 21.815763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721067, 38.619125, 21.639559>,  <22.381769, 39.093021, 21.249016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721067, 38.619125, 21.639559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599735, 38.909790, 21.886120>,  <22.526936, 39.084190, 22.034056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599735, 38.909790, 21.886120>,  <22.721067, 38.619125, 21.639559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599735, 38.909790, 21.886120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243294, -0.684500, 0.687217,
		0.921303, 0.058485, 0.384421,
		-0.303328, 0.726663, 0.616403,
		22.508738, 39.127789, 22.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957184, 38.496300, 22.293894>,  <22.721067, 38.619125, 21.639559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957184, 38.496300, 22.293894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.669981, 38.750599, 22.407234>,  <22.497660, 38.903179, 22.475239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.669981, 38.750599, 22.407234>,  <22.957184, 38.496300, 22.293894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.669981, 38.750599, 22.407234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304211, -0.652785, 0.693777,
		0.626034, 0.411940, 0.662108,
		-0.718009, 0.635749, 0.283349,
		22.454578, 38.941322, 22.492239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.992249, 38.430370, 23.072792>,  <22.957184, 38.496300, 22.293894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.992249, 38.430370, 23.072792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639858, 38.586960, 22.966480>,  <22.428425, 38.680912, 22.902693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639858, 38.586960, 22.966480>,  <22.992249, 38.430370, 23.072792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639858, 38.586960, 22.966480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469524, -0.653696, 0.593489,
		0.058594, 0.647637, 0.759693,
		-0.880973, 0.391469, -0.265778,
		22.375566, 38.704399, 22.886747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527592, 38.581749, 23.704594>,  <22.992249, 38.430370, 23.072792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527592, 38.581749, 23.704594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294743, 38.517754, 23.385712>,  <22.155033, 38.479355, 23.194382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294743, 38.517754, 23.385712>,  <22.527592, 38.581749, 23.704594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294743, 38.517754, 23.385712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543907, -0.652176, 0.528045,
		-0.604402, 0.740992, 0.292625,
		-0.582120, -0.159991, -0.797207,
		22.120106, 38.469757, 23.146549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898071, 38.535954, 23.998507>,  <22.527592, 38.581749, 23.704594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898071, 38.535954, 23.998507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856892, 38.358955, 23.642170>,  <21.832184, 38.252758, 23.428368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.856892, 38.358955, 23.642170>,  <21.898071, 38.535954, 23.998507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.856892, 38.358955, 23.642170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535332, -0.730186, 0.424557,
		-0.838344, 0.520605, -0.161707,
		-0.102951, -0.442491, -0.890844,
		21.826006, 38.226208, 23.374916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216984, 38.221218, 24.051420>,  <21.898071, 38.535954, 23.998507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216984, 38.221218, 24.051420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377604, 38.043488, 23.731087>,  <21.473974, 37.936848, 23.538887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.377604, 38.043488, 23.731087>,  <21.216984, 38.221218, 24.051420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377604, 38.043488, 23.731087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704903, -0.708204, 0.039487,
		-0.584699, 0.548654, -0.597584,
		0.401547, -0.444327, -0.800833,
		21.498068, 37.910191, 23.490837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659548, 38.128834, 23.601662>,  <21.216984, 38.221218, 24.051420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659548, 38.128834, 23.601662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.945810, 37.856190, 23.540688>,  <21.117569, 37.692604, 23.504103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.945810, 37.856190, 23.540688>,  <20.659548, 38.128834, 23.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945810, 37.856190, 23.540688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690092, -0.723711, -0.003793,
		-0.107735, 0.107910, -0.988306,
		0.715658, -0.681614, -0.152437,
		21.160507, 37.651707, 23.494957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333418, 37.700150, 23.068581>,  <20.659548, 38.128834, 23.601662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333418, 37.700150, 23.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.619110, 37.538921, 23.297459>,  <20.790525, 37.442184, 23.434786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.619110, 37.538921, 23.297459>,  <20.333418, 37.700150, 23.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619110, 37.538921, 23.297459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531748, -0.844075, 0.069148,
		0.455103, -0.353650, -0.817198,
		0.714230, -0.403074, 0.572194,
		20.833380, 37.417999, 23.469116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045214, 37.156971, 23.023405>,  <20.333418, 37.700150, 23.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045214, 37.156971, 23.023405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.302248, 37.160332, 23.329872>,  <20.456469, 37.162350, 23.513752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.302248, 37.160332, 23.329872>,  <20.045214, 37.156971, 23.023405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302248, 37.160332, 23.329872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337675, -0.894493, 0.293017,
		0.687794, -0.447004, -0.571949,
		0.642584, 0.008403, 0.766169,
		20.495024, 37.162853, 23.559723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478216, 37.613758, 23.405481>,  <20.045214, 37.156971, 23.023405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478216, 37.613758, 23.405481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149071, 37.474056, 23.584778>,  <18.951584, 37.390236, 23.692356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149071, 37.474056, 23.584778>,  <19.478216, 37.613758, 23.405481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149071, 37.474056, 23.584778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564216, 0.408439, -0.717522,
		0.067519, -0.843326, -0.533144,
		-0.822861, -0.349255, 0.448241,
		18.902212, 37.369278, 23.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004965, 37.243801, 23.010601>,  <19.478216, 37.613758, 23.405481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004965, 37.243801, 23.010601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.769650, 37.388279, 23.300003>,  <18.628460, 37.474964, 23.473644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.769650, 37.388279, 23.300003>,  <19.004965, 37.243801, 23.010601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769650, 37.388279, 23.300003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361508, 0.682851, -0.634843,
		-0.723345, -0.635024, -0.271140,
		-0.588289, 0.361191, 0.723503,
		18.593163, 37.496635, 23.517054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.298967, 26.076529, 16.770426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650757, 26.089066, 16.960392>,  <31.861830, 26.096588, 17.074371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.650757, 26.089066, 16.960392>,  <31.298967, 26.076529, 16.770426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650757, 26.089066, 16.960392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097568, 0.988510, 0.115448,
		-0.465839, -0.147870, 0.872426,
		0.879474, 0.031340, 0.474914,
		31.914598, 26.098467, 17.102867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247950, 26.449005, 17.426128>,  <31.298967, 26.076529, 16.770426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247950, 26.449005, 17.426128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639685, 26.467762, 17.347443>,  <31.874725, 26.479017, 17.300232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639685, 26.467762, 17.347443>,  <31.247950, 26.449005, 17.426128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639685, 26.467762, 17.347443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002743, 0.975732, 0.218949,
		0.202206, -0.213886, 0.955702,
		0.979339, 0.046895, -0.196712,
		31.933487, 26.481831, 17.288429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575331, 26.677830, 18.000031>,  <31.247950, 26.449005, 17.426128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575331, 26.677830, 18.000031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.841455, 26.754768, 17.711487>,  <32.001129, 26.800932, 17.538361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.841455, 26.754768, 17.711487>,  <31.575331, 26.677830, 18.000031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841455, 26.754768, 17.711487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086591, 0.939836, 0.330469,
		0.741525, -0.282329, 0.608630,
		0.665314, 0.192349, -0.721359,
		32.041050, 26.812473, 17.495079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141201, 26.998995, 18.357281>,  <31.575331, 26.677830, 18.000031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141201, 26.998995, 18.357281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219112, 27.077145, 17.972805>,  <32.265862, 27.124035, 17.742119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219112, 27.077145, 17.972805>,  <32.141201, 26.998995, 18.357281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219112, 27.077145, 17.972805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094087, 0.971721, 0.216581,
		0.976324, -0.132622, 0.170888,
		0.194779, 0.195374, -0.961192,
		32.277546, 27.135757, 17.684448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713444, 27.439896, 18.351648>,  <32.141201, 26.998995, 18.357281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713444, 27.439896, 18.351648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536266, 27.498283, 17.997814>,  <32.429958, 27.533316, 17.785513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.536266, 27.498283, 17.997814>,  <32.713444, 27.439896, 18.351648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536266, 27.498283, 17.997814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017790, 0.985032, 0.171454,
		0.896372, 0.091681, -0.433719,
		-0.442946, 0.145971, -0.884585,
		32.403381, 27.542074, 17.732439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018311, 28.054123, 18.014435>,  <32.713444, 27.439896, 18.351648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018311, 28.054123, 18.014435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649372, 28.006100, 17.867542>,  <32.428009, 27.977285, 17.779408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.649372, 28.006100, 17.867542>,  <33.018311, 28.054123, 18.014435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649372, 28.006100, 17.867542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245332, 0.916275, 0.316626,
		0.298472, 0.382133, -0.874579,
		-0.922348, -0.120058, -0.367232,
		32.372669, 27.970081, 17.757372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832623, 28.758375, 17.748831>,  <33.018311, 28.054123, 18.014435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832623, 28.758375, 17.748831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.468460, 28.596470, 17.783058>,  <32.249962, 28.499327, 17.803595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.468460, 28.596470, 17.783058>,  <32.832623, 28.758375, 17.748831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468460, 28.596470, 17.783058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382277, 0.902129, 0.200067,
		-0.158172, 0.149433, -0.976039,
		-0.910410, -0.404762, 0.085567,
		32.195335, 28.475040, 17.808727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364159, 29.280043, 17.497023>,  <32.832623, 28.758375, 17.748831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364159, 29.280043, 17.497023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117973, 29.035202, 17.695633>,  <31.970263, 28.888298, 17.814800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117973, 29.035202, 17.695633>,  <32.364159, 29.280043, 17.497023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117973, 29.035202, 17.695633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545371, 0.785543, 0.292390,
		-0.569016, -0.090837, -0.817294,
		-0.615460, -0.612103, 0.496527,
		31.933336, 28.851570, 17.844591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785919, 29.468843, 17.213158>,  <32.364159, 29.280043, 17.497023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785919, 29.468843, 17.213158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741625, 29.297714, 17.571980>,  <31.715048, 29.195036, 17.787271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741625, 29.297714, 17.571980>,  <31.785919, 29.468843, 17.213158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741625, 29.297714, 17.571980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637943, 0.722712, 0.265925,
		-0.762080, -0.542820, -0.352959,
		-0.110738, -0.427824, 0.897053,
		31.708403, 29.169367, 17.841095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128223, 29.510273, 17.391409>,  <31.785919, 29.468843, 17.213158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128223, 29.510273, 17.391409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307396, 29.468250, 17.746559>,  <31.414900, 29.443037, 17.959650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307396, 29.468250, 17.746559>,  <31.128223, 29.510273, 17.391409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307396, 29.468250, 17.746559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521313, 0.776098, 0.354831,
		-0.726355, -0.621800, 0.292869,
		0.447929, -0.105057, 0.887875,
		31.441774, 29.436733, 18.012922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652399, 29.573084, 17.800009>,  <31.128223, 29.510273, 17.391409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652399, 29.573084, 17.800009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980122, 29.677319, 18.004295>,  <31.176756, 29.739859, 18.126867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.980122, 29.677319, 18.004295>,  <30.652399, 29.573084, 17.800009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980122, 29.677319, 18.004295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489361, 0.781976, 0.386057,
		-0.298766, -0.566224, 0.768199,
		0.819308, 0.260586, 0.510715,
		31.225914, 29.755495, 18.157511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471491, 29.565130, 18.439423>,  <30.652399, 29.573084, 17.800009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471491, 29.565130, 18.439423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.781527, 29.817425, 18.424423>,  <30.967548, 29.968801, 18.415424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.781527, 29.817425, 18.424423>,  <30.471491, 29.565130, 18.439423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781527, 29.817425, 18.424423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566444, 0.719925, 0.401061,
		0.279959, -0.289618, 0.915284,
		0.775090, 0.630738, -0.037497,
		31.014053, 30.006645, 18.413174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474985, 29.892021, 19.111427>,  <30.471491, 29.565130, 18.439423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474985, 29.892021, 19.111427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.692318, 30.105194, 18.851959>,  <30.822718, 30.233097, 18.696278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.692318, 30.105194, 18.851959>,  <30.474985, 29.892021, 19.111427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692318, 30.105194, 18.851959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457345, 0.835848, 0.303635,
		0.704006, 0.131692, 0.697877,
		0.543333, 0.532931, -0.648670,
		30.855318, 30.265074, 18.657358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666897, 30.542948, 19.469687>,  <30.474985, 29.892021, 19.111427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666897, 30.542948, 19.469687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.720385, 30.623928, 19.081638>,  <30.752478, 30.672516, 18.848810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.720385, 30.623928, 19.081638>,  <30.666897, 30.542948, 19.469687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720385, 30.623928, 19.081638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464869, 0.877344, 0.119014,
		0.875223, 0.435064, 0.211434,
		0.133722, 0.202453, -0.970119,
		30.760500, 30.684664, 18.790602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022923, 31.222250, 19.377590>,  <30.666897, 30.542948, 19.469687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022923, 31.222250, 19.377590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.837650, 31.174149, 19.026363>,  <30.726486, 31.145288, 18.815628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.837650, 31.174149, 19.026363>,  <31.022923, 31.222250, 19.377590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837650, 31.174149, 19.026363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445244, 0.888222, 0.113225,
		0.766303, 0.443398, -0.464950,
		-0.463183, -0.120252, -0.878067,
		30.698696, 31.138073, 18.762943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042356, 31.847206, 19.127377>,  <31.022923, 31.222250, 19.377590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042356, 31.847206, 19.127377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750988, 31.680363, 18.909966>,  <30.576166, 31.580257, 18.779518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750988, 31.680363, 18.909966>,  <31.042356, 31.847206, 19.127377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750988, 31.680363, 18.909966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497766, 0.867310, 0.001511,
		0.470776, 0.271650, -0.839390,
		-0.728422, -0.417108, -0.543527,
		30.532461, 31.555231, 18.746908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875759, 32.293922, 18.686739>,  <31.042356, 31.847206, 19.127377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875759, 32.293922, 18.686739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.541565, 32.074364, 18.697174>,  <30.341049, 31.942629, 18.703436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.541565, 32.074364, 18.697174>,  <30.875759, 32.293922, 18.686739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541565, 32.074364, 18.697174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545503, 0.822726, -0.159842,
		0.066272, -0.147777, -0.986798,
		-0.835485, -0.548894, 0.026089,
		30.290920, 31.909695, 18.705000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472853, 32.478413, 18.116827>,  <30.875759, 32.293922, 18.686739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472853, 32.478413, 18.116827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.224745, 32.325813, 18.390972>,  <30.075880, 32.234253, 18.555460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.224745, 32.325813, 18.390972>,  <30.472853, 32.478413, 18.116827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224745, 32.325813, 18.390972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650782, 0.738073, -0.178131,
		-0.437892, -0.556512, -0.706077,
		-0.620269, -0.381500, 0.685364,
		30.038664, 32.211365, 18.596581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825722, 32.747814, 17.854658>,  <30.472853, 32.478413, 18.116827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825722, 32.747814, 17.854658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.724161, 32.626671, 18.222095>,  <29.663225, 32.553986, 18.442558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.724161, 32.626671, 18.222095>,  <29.825722, 32.747814, 17.854658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724161, 32.626671, 18.222095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751940, 0.659163, 0.009486,
		-0.608375, -0.688318, -0.395091,
		-0.253900, -0.302856, 0.918593,
		29.647991, 32.535812, 18.497673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117632, 32.734013, 17.895912>,  <29.825722, 32.747814, 17.854658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117632, 32.734013, 17.895912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.223473, 32.757145, 18.280960>,  <29.286978, 32.771027, 18.511990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.223473, 32.757145, 18.280960>,  <29.117632, 32.734013, 17.895912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223473, 32.757145, 18.280960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749974, 0.639854, 0.167709,
		-0.606238, -0.766318, 0.212680,
		0.264602, 0.057833, 0.962622,
		29.302853, 32.774494, 18.569746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499802, 32.728642, 18.374275>,  <29.117632, 32.734013, 17.895912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499802, 32.728642, 18.374275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.779894, 32.871063, 18.621792>,  <28.947950, 32.956516, 18.770302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.779894, 32.871063, 18.621792>,  <28.499802, 32.728642, 18.374275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779894, 32.871063, 18.621792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669869, 0.627415, 0.397021,
		-0.246880, -0.692516, 0.677843,
		0.700232, 0.356050, 0.618791,
		28.989964, 32.977879, 18.807428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150455, 32.859768, 19.055208>,  <28.499802, 32.728642, 18.374275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150455, 32.859768, 19.055208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.483717, 33.080956, 19.051682>,  <28.683674, 33.213669, 19.049564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.483717, 33.080956, 19.051682>,  <28.150455, 32.859768, 19.055208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483717, 33.080956, 19.051682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526577, 0.798054, 0.292959,
		0.169035, -0.239437, 0.956084,
		0.833153, 0.552973, -0.008817,
		28.733664, 33.246849, 19.049036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030567, 33.245995, 19.657154>,  <28.150455, 32.859768, 19.055208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030567, 33.245995, 19.657154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.293058, 33.401440, 19.398434>,  <28.450552, 33.494705, 19.243202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.293058, 33.401440, 19.398434>,  <28.030567, 33.245995, 19.657154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293058, 33.401440, 19.398434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311412, 0.920258, 0.236956,
		0.687306, 0.045925, 0.724915,
		0.656226, 0.388609, -0.646800,
		28.489925, 33.518021, 19.204393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255831, 33.108875, 19.576000>,  <28.030567, 33.245995, 19.657154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255831, 33.108875, 19.576000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890112, 33.119572, 19.414337>,  <26.670681, 33.125988, 19.317339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890112, 33.119572, 19.414337>,  <27.255831, 33.108875, 19.576000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890112, 33.119572, 19.414337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052071, -0.997299, 0.051807,
		-0.401681, 0.068411, 0.913221,
		-0.914298, 0.026742, -0.404159,
		26.615822, 33.127594, 19.293089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788357, 32.662868, 20.060417>,  <27.255831, 33.108875, 19.576000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788357, 32.662868, 20.060417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.668850, 32.688244, 19.679531>,  <26.597145, 32.703468, 19.451000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.668850, 32.688244, 19.679531>,  <26.788357, 32.662868, 20.060417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668850, 32.688244, 19.679531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158987, -0.980536, -0.115208,
		-0.940989, -0.185810, 0.282868,
		-0.298769, 0.063437, -0.952215,
		26.579220, 32.707275, 19.393867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264563, 32.254890, 19.967781>,  <26.788357, 32.662868, 20.060417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264563, 32.254890, 19.967781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.427078, 32.304600, 19.605679>,  <26.524588, 32.334423, 19.388418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.427078, 32.304600, 19.605679>,  <26.264563, 32.254890, 19.967781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427078, 32.304600, 19.605679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181160, -0.981997, -0.053498,
		-0.895606, -0.142261, -0.421487,
		0.406288, 0.124270, -0.905255,
		26.548965, 32.341881, 19.334103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143940, 31.595867, 19.589365>,  <26.264563, 32.254890, 19.967781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143940, 31.595867, 19.589365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.425285, 31.758587, 19.356197>,  <26.594093, 31.856218, 19.216297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.425285, 31.758587, 19.356197>,  <26.143940, 31.595867, 19.589365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425285, 31.758587, 19.356197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313672, -0.913517, -0.259028,
		-0.637879, -0.000654, -0.770136,
		0.703364, 0.406799, -0.582918,
		26.636295, 31.880627, 19.181322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205999, 31.194376, 18.912975>,  <26.143940, 31.595867, 19.589365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205999, 31.194376, 18.912975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.548101, 31.396492, 18.958969>,  <26.753363, 31.517761, 18.986565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.548101, 31.396492, 18.958969>,  <26.205999, 31.194376, 18.912975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548101, 31.396492, 18.958969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518183, -0.831813, -0.198930,
		-0.004871, 0.229719, -0.973245,
		0.855256, 0.505288, 0.114984,
		26.804678, 31.548079, 18.993464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645630, 30.821867, 18.502150>,  <26.205999, 31.194376, 18.912975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645630, 30.821867, 18.502150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.910395, 31.038998, 18.708920>,  <27.069252, 31.169277, 18.832981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.910395, 31.038998, 18.708920>,  <26.645630, 30.821867, 18.502150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910395, 31.038998, 18.708920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705524, -0.684108, -0.185017,
		0.253202, 0.487169, -0.835796,
		0.661910, 0.542828, 0.516927,
		27.108967, 31.201845, 18.863998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329462, 30.778446, 18.106064>,  <26.645630, 30.821867, 18.502150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329462, 30.778446, 18.106064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.398806, 30.863659, 18.490681>,  <27.440413, 30.914785, 18.721451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.398806, 30.863659, 18.490681>,  <27.329462, 30.778446, 18.106064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398806, 30.863659, 18.490681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642976, -0.764026, 0.053346,
		0.746008, 0.609001, -0.269426,
		0.173361, 0.213031, 0.961543,
		27.450813, 30.927568, 18.779144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951128, 30.537912, 18.134029>,  <27.329462, 30.778446, 18.106064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951128, 30.537912, 18.134029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.866716, 30.597771, 18.520412>,  <27.816069, 30.633686, 18.752243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.866716, 30.597771, 18.520412>,  <27.951128, 30.537912, 18.134029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866716, 30.597771, 18.520412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760921, -0.595156, 0.258436,
		0.613569, 0.789554, 0.011728,
		-0.211029, 0.149644, 0.965957,
		27.803408, 30.642664, 18.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523014, 30.907394, 18.519369>,  <27.951128, 30.537912, 18.134029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523014, 30.907394, 18.519369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.289923, 30.664177, 18.735039>,  <28.150068, 30.518246, 18.864441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.289923, 30.664177, 18.735039>,  <28.523014, 30.907394, 18.519369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289923, 30.664177, 18.735039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752820, -0.653784, 0.076341,
		0.306084, 0.450386, 0.838728,
		-0.582730, -0.608045, 0.539173,
		28.115105, 30.481764, 18.896791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059790, 30.600891, 18.982809>,  <28.523014, 30.907394, 18.519369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059790, 30.600891, 18.982809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.726414, 30.382607, 19.017635>,  <28.526388, 30.251637, 19.038532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.726414, 30.382607, 19.017635>,  <29.059790, 30.600891, 18.982809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726414, 30.382607, 19.017635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551575, -0.831135, 0.070562,
		0.033858, 0.106833, 0.993700,
		-0.833438, -0.545711, 0.087067,
		28.476383, 30.218893, 19.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070024, 30.260521, 19.599030>,  <29.059790, 30.600891, 18.982809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070024, 30.260521, 19.599030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811413, 30.050453, 19.377689>,  <28.656246, 29.924412, 19.244884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811413, 30.050453, 19.377689>,  <29.070024, 30.260521, 19.599030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811413, 30.050453, 19.377689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506951, -0.837779, 0.202800,
		-0.570091, -0.149406, 0.807883,
		-0.646527, -0.525172, -0.553351,
		28.617455, 29.892902, 19.211683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989368, 29.587847, 20.037834>,  <29.070024, 30.260521, 19.599030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989368, 29.587847, 20.037834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872759, 29.495674, 19.666477>,  <28.802794, 29.440371, 19.443663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872759, 29.495674, 19.666477>,  <28.989368, 29.587847, 20.037834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872759, 29.495674, 19.666477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458195, -0.885602, 0.075933,
		-0.839685, -0.403249, 0.363758,
		-0.291525, -0.230432, -0.928393,
		28.785301, 29.426544, 19.387959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836100, 28.925470, 20.036329>,  <28.989368, 29.587847, 20.037834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836100, 28.925470, 20.036329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.847858, 28.955593, 19.637638>,  <28.854914, 28.973667, 19.398424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.847858, 28.955593, 19.637638>,  <28.836100, 28.925470, 20.036329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847858, 28.955593, 19.637638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282350, -0.957175, -0.063992,
		-0.958861, -0.279545, -0.049401,
		0.029397, 0.075308, -0.996727,
		28.856678, 28.978186, 19.338619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374825, 28.401802, 19.701176>,  <28.836100, 28.925470, 20.036329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374825, 28.401802, 19.701176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643253, 28.478367, 19.414673>,  <28.804312, 28.524305, 19.242771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643253, 28.478367, 19.414673>,  <28.374825, 28.401802, 19.701176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643253, 28.478367, 19.414673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068258, -0.977945, -0.197396,
		-0.738242, 0.083577, -0.669338,
		0.671073, 0.191413, -0.716255,
		28.844576, 28.535791, 19.199797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211639, 27.902937, 19.108776>,  <28.374825, 28.401802, 19.701176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211639, 27.902937, 19.108776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.579601, 28.030842, 19.017979>,  <28.800379, 28.107584, 18.963501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.579601, 28.030842, 19.017979>,  <28.211639, 27.902937, 19.108776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579601, 28.030842, 19.017979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234116, -0.912211, -0.336246,
		-0.314585, 0.256172, -0.914009,
		0.919905, 0.319762, -0.226993,
		28.855574, 28.126770, 18.949881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228798, 27.510828, 18.530054>,  <28.211639, 27.902937, 19.108776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228798, 27.510828, 18.530054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.591740, 27.619881, 18.658043>,  <28.809505, 27.685312, 18.734837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.591740, 27.619881, 18.658043>,  <28.228798, 27.510828, 18.530054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591740, 27.619881, 18.658043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374638, -0.869702, -0.321350,
		0.190669, 0.411451, -0.891265,
		0.907354, 0.272630, 0.319971,
		28.863945, 27.701670, 18.754034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725159, 27.380341, 17.962904>,  <28.228798, 27.510828, 18.530054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725159, 27.380341, 17.962904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.949015, 27.388092, 18.294308>,  <29.083328, 27.392742, 18.493151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.949015, 27.388092, 18.294308>,  <28.725159, 27.380341, 17.962904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949015, 27.388092, 18.294308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482688, -0.820274, -0.306861,
		0.673659, 0.571642, -0.468411,
		0.559640, 0.019377, 0.828509,
		29.116907, 27.393906, 18.542860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.403631, 27.261496, 17.657486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381348, 27.162376, 18.044369>,  <29.367977, 27.102905, 18.276499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381348, 27.162376, 18.044369>,  <29.403631, 27.261496, 17.657486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381348, 27.162376, 18.044369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220811, -0.947784, -0.230103,
		0.973724, 0.200751, 0.107517,
		-0.055709, -0.247797, 0.967209,
		29.364635, 27.088037, 18.334532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933132, 26.822609, 17.737507>,  <29.403631, 27.261496, 17.657486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933132, 26.822609, 17.737507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703976, 26.740791, 18.054985>,  <29.566481, 26.691700, 18.245472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703976, 26.740791, 18.054985>,  <29.933132, 26.822609, 17.737507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703976, 26.740791, 18.054985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198961, -0.974101, -0.107427,
		0.795115, 0.096371, 0.598752,
		-0.572893, -0.204545, 0.793697,
		29.532108, 26.679428, 18.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426205, 26.360418, 18.232723>,  <29.933132, 26.822609, 17.737507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426205, 26.360418, 18.232723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041143, 26.320786, 18.333508>,  <29.810106, 26.297007, 18.393978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041143, 26.320786, 18.333508>,  <30.426205, 26.360418, 18.232723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041143, 26.320786, 18.333508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137178, -0.980830, 0.138401,
		0.233418, 0.167795, 0.957790,
		-0.962652, -0.099082, 0.251961,
		29.752348, 26.291061, 18.409096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432793, 25.832586, 18.845287>,  <30.426205, 26.360418, 18.232723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432793, 25.832586, 18.845287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071993, 25.824108, 18.672798>,  <29.855513, 25.819021, 18.569305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071993, 25.824108, 18.672798>,  <30.432793, 25.832586, 18.845287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071993, 25.824108, 18.672798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024046, -0.994777, 0.099199,
		-0.431072, 0.099846, 0.896776,
		-0.901997, -0.021198, -0.431221,
		29.801394, 25.817749, 18.543432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103827, 25.172869, 19.109756>,  <30.432793, 25.832586, 18.845287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103827, 25.172869, 19.109756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878885, 25.288727, 18.799953>,  <29.743921, 25.358242, 18.614071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878885, 25.288727, 18.799953>,  <30.103827, 25.172869, 19.109756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878885, 25.288727, 18.799953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061719, -0.948734, -0.309991,
		-0.824591, -0.126522, 0.551400,
		-0.562353, 0.289648, -0.774508,
		29.710180, 25.375622, 18.567600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706800, 24.593731, 18.961920>,  <30.103827, 25.172869, 19.109756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706800, 24.593731, 18.961920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.678473, 24.801838, 18.621494>,  <29.661476, 24.926702, 18.417240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.678473, 24.801838, 18.621494>,  <29.706800, 24.593731, 18.961920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678473, 24.801838, 18.621494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044486, -0.854003, -0.518362,
		-0.996497, 0.001150, 0.083624,
		-0.070819, 0.520266, -0.851063,
		29.657227, 24.957918, 18.366175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246090, 24.180784, 18.533504>,  <29.706800, 24.593731, 18.961920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246090, 24.180784, 18.533504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436747, 24.419106, 18.274944>,  <29.551140, 24.562099, 18.119808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436747, 24.419106, 18.274944>,  <29.246090, 24.180784, 18.533504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436747, 24.419106, 18.274944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057069, -0.712775, -0.699067,
		-0.877245, 0.370093, -0.305735,
		0.476640, 0.595805, -0.646399,
		29.579739, 24.597847, 18.081024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872746, 24.092093, 17.915258>,  <29.246090, 24.180784, 18.533504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872746, 24.092093, 17.915258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234768, 24.234482, 17.822170>,  <29.451981, 24.319916, 17.766317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234768, 24.234482, 17.822170>,  <28.872746, 24.092093, 17.915258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234768, 24.234482, 17.822170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150604, -0.779995, -0.607393,
		-0.397738, 0.514675, -0.759549,
		0.905054, 0.355974, -0.232722,
		29.506285, 24.341274, 17.752354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939217, 24.221514, 17.205158>,  <28.872746, 24.092093, 17.915258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939217, 24.221514, 17.205158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295551, 24.123112, 17.357941>,  <29.509352, 24.064070, 17.449610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295551, 24.123112, 17.357941>,  <28.939217, 24.221514, 17.205158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295551, 24.123112, 17.357941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005490, -0.846483, -0.532388,
		0.454290, 0.472174, -0.755428,
		0.890837, -0.246006, 0.381956,
		29.562803, 24.049311, 17.472528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181616, 23.872036, 16.651709>,  <28.939217, 24.221514, 17.205158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181616, 23.872036, 16.651709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462126, 23.800060, 16.927631>,  <29.630432, 23.756874, 17.093185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462126, 23.800060, 16.927631>,  <29.181616, 23.872036, 16.651709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462126, 23.800060, 16.927631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164315, -0.900767, -0.402018,
		0.693696, 0.395271, -0.602118,
		0.701275, -0.179942, 0.689808,
		29.672508, 23.746078, 17.134573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644619, 23.579628, 16.203802>,  <29.181616, 23.872036, 16.651709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644619, 23.579628, 16.203802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777330, 23.478512, 16.567345>,  <29.856956, 23.417843, 16.785471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777330, 23.478512, 16.567345>,  <29.644619, 23.579628, 16.203802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777330, 23.478512, 16.567345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545074, -0.734957, -0.403401,
		0.769947, 0.629233, -0.106052,
		0.331777, -0.252791, 0.908857,
		29.876863, 23.402674, 16.840002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313627, 23.419559, 16.085941>,  <29.644619, 23.579628, 16.203802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313627, 23.419559, 16.085941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201553, 23.258495, 16.434505>,  <30.134310, 23.161856, 16.643644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201553, 23.258495, 16.434505>,  <30.313627, 23.419559, 16.085941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201553, 23.258495, 16.434505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260985, -0.905531, -0.334514,
		0.923788, 0.133700, 0.358804,
		-0.280184, -0.402663, 0.871412,
		30.117498, 23.137697, 16.695929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700279, 22.796356, 16.085075>,  <30.313627, 23.419559, 16.085941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700279, 22.796356, 16.085075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422806, 22.708431, 16.359444>,  <30.256323, 22.655676, 16.524065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422806, 22.708431, 16.359444>,  <30.700279, 22.796356, 16.085075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422806, 22.708431, 16.359444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105122, -0.972995, -0.205497,
		0.712569, -0.070444, 0.698056,
		-0.693681, -0.219812, 0.685922,
		30.214701, 22.642488, 16.565220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867508, 22.220324, 16.440332>,  <30.700279, 22.796356, 16.085075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867508, 22.220324, 16.440332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479595, 22.196262, 16.534908>,  <30.246847, 22.181826, 16.591654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479595, 22.196262, 16.534908>,  <30.867508, 22.220324, 16.440332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479595, 22.196262, 16.534908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, -0.996090, -0.077192,
		0.240157, -0.064700, 0.968576,
		-0.969783, -0.060155, 0.236438,
		30.188660, 22.178215, 16.605839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750071, 21.774479, 17.030331>,  <30.867508, 22.220324, 16.440332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750071, 21.774479, 17.030331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391439, 21.763756, 16.853500>,  <30.176260, 21.757322, 16.747402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391439, 21.763756, 16.853500>,  <30.750071, 21.774479, 17.030331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391439, 21.763756, 16.853500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017782, -0.995183, 0.096408,
		-0.442529, 0.094298, 0.891783,
		-0.896578, -0.026805, -0.442074,
		30.122465, 21.755714, 16.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363823, 21.222204, 17.437311>,  <30.750071, 21.774479, 17.030331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363823, 21.222204, 17.437311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170971, 21.259624, 17.088875>,  <30.055260, 21.282076, 16.879812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170971, 21.259624, 17.088875>,  <30.363823, 21.222204, 17.437311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170971, 21.259624, 17.088875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106249, -0.993187, -0.047857,
		-0.869633, 0.069479, 0.488785,
		-0.482130, 0.093551, -0.871091,
		30.026333, 21.287689, 16.827547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709826, 20.906919, 17.477739>,  <30.363823, 21.222204, 17.437311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709826, 20.906919, 17.477739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814461, 20.912075, 17.091702>,  <29.877241, 20.915169, 16.860079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814461, 20.912075, 17.091702>,  <29.709826, 20.906919, 17.477739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814461, 20.912075, 17.091702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191269, -0.979388, -0.064921,
		-0.946038, 0.201575, -0.253730,
		0.261587, 0.012887, -0.965094,
		29.892937, 20.915941, 16.802174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174316, 20.592230, 17.115780>,  <29.709826, 20.906919, 17.477739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174316, 20.592230, 17.115780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500532, 20.565086, 16.885895>,  <29.696260, 20.548801, 16.747965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500532, 20.565086, 16.885895>,  <29.174316, 20.592230, 17.115780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500532, 20.565086, 16.885895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106734, -0.993701, -0.034133,
		-0.568775, 0.089178, -0.817644,
		0.815538, -0.067856, -0.574711,
		29.745193, 20.544729, 16.713482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041533, 20.077698, 16.573679>,  <29.174316, 20.592230, 17.115780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041533, 20.077698, 16.573679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439211, 20.117641, 16.589699>,  <29.677818, 20.141607, 16.599310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439211, 20.117641, 16.589699>,  <29.041533, 20.077698, 16.573679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439211, 20.117641, 16.589699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098838, -0.994745, 0.026714,
		0.042505, -0.022601, -0.998841,
		0.994195, 0.099859, 0.040048,
		29.737469, 20.147598, 16.601713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269281, 19.613916, 16.136681>,  <29.041533, 20.077698, 16.573679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269281, 19.613916, 16.136681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.583414, 19.688747, 16.372734>,  <29.771893, 19.733646, 16.514366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.583414, 19.688747, 16.372734>,  <29.269281, 19.613916, 16.136681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583414, 19.688747, 16.372734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097426, -0.978718, 0.180608,
		0.611363, -0.084343, -0.786842,
		0.785330, 0.187076, 0.590135,
		29.819014, 19.744869, 16.549774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682625, 19.072048, 16.084810>,  <29.269281, 19.613916, 16.136681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682625, 19.072048, 16.084810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.857466, 19.253559, 16.395432>,  <29.962370, 19.362465, 16.581804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.857466, 19.253559, 16.395432>,  <29.682625, 19.072048, 16.084810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857466, 19.253559, 16.395432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230917, -0.891075, 0.390720,
		0.869265, 0.008535, -0.494273,
		0.437100, 0.453775, 0.776551,
		29.988596, 19.389692, 16.628397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386982, 18.811197, 16.169647>,  <29.682625, 19.072048, 16.084810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386982, 18.811197, 16.169647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.268217, 18.966423, 16.518646>,  <30.196959, 19.059559, 16.728045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.268217, 18.966423, 16.518646>,  <30.386982, 18.811197, 16.169647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268217, 18.966423, 16.518646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212378, -0.863978, 0.456549,
		0.930988, 0.320854, 0.174109,
		-0.296912, 0.388065, 0.872496,
		30.179144, 19.082842, 16.780396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966902, 18.730749, 16.604828>,  <30.386982, 18.811197, 16.169647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966902, 18.730749, 16.604828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610163, 18.754063, 16.784252>,  <30.396118, 18.768051, 16.891907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610163, 18.754063, 16.784252>,  <30.966902, 18.730749, 16.604828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610163, 18.754063, 16.784252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104874, -0.937999, 0.330392,
		0.440008, 0.341703, 0.830441,
		-0.891849, 0.058284, 0.448563,
		30.342607, 18.771547, 16.918821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366081, 18.406898, 17.145643>,  <30.966902, 18.730749, 16.604828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366081, 18.406898, 17.145643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358179, 18.015068, 17.225685>,  <31.353437, 17.779970, 17.273710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358179, 18.015068, 17.225685>,  <31.366081, 18.406898, 17.145643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358179, 18.015068, 17.225685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690922, 0.131291, 0.710907,
		-0.722659, 0.152301, 0.674217,
		-0.019754, -0.979575, 0.200107,
		31.352253, 17.721195, 17.285717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126530, 18.373360, 17.193172>,  <31.366081, 18.406898, 17.145643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126530, 18.373360, 17.193172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492233, 18.332062, 17.349876>,  <32.711655, 18.307283, 17.443899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492233, 18.332062, 17.349876>,  <32.126530, 18.373360, 17.193172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492233, 18.332062, 17.349876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036881, 0.941757, 0.334265,
		-0.403455, -0.320052, 0.857199,
		0.914256, -0.103246, 0.391761,
		32.766510, 18.301088, 17.467405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118481, 18.532476, 17.892464>,  <32.126530, 18.373360, 17.193172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118481, 18.532476, 17.892464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490112, 18.592430, 17.757206>,  <32.713093, 18.628403, 17.676052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.490112, 18.592430, 17.757206>,  <32.118481, 18.532476, 17.892464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490112, 18.592430, 17.757206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030893, 0.942466, 0.332872,
		0.368581, -0.298820, 0.880258,
		0.929082, 0.149884, -0.338144,
		32.768837, 18.637396, 17.655764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526470, 18.924881, 18.399168>,  <32.118481, 18.532476, 17.892464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526470, 18.924881, 18.399168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733135, 18.965900, 18.059158>,  <32.857136, 18.990511, 17.855152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733135, 18.965900, 18.059158>,  <32.526470, 18.924881, 18.399168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733135, 18.965900, 18.059158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141741, 0.968858, 0.203036,
		0.844375, -0.225384, 0.486038,
		0.516663, 0.102547, -0.850026,
		32.888134, 18.996664, 17.804152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942581, 19.546385, 18.523598>,  <32.526470, 18.924881, 18.399168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942581, 19.546385, 18.523598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050251, 19.489796, 18.142540>,  <33.114853, 19.455843, 17.913906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050251, 19.489796, 18.142540>,  <32.942581, 19.546385, 18.523598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050251, 19.489796, 18.142540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227582, 0.970482, -0.079817,
		0.935816, -0.195320, 0.293423,
		0.269172, -0.141472, -0.952645,
		33.131004, 19.447353, 17.856747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621922, 19.889259, 18.421852>,  <32.942581, 19.546385, 18.523598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621922, 19.889259, 18.421852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411709, 19.862503, 18.082596>,  <33.285583, 19.846449, 17.879042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411709, 19.862503, 18.082596>,  <33.621922, 19.889259, 18.421852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411709, 19.862503, 18.082596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080659, 0.988497, -0.127940,
		0.846943, -0.135646, -0.514088,
		-0.525529, -0.066892, -0.848142,
		33.254051, 19.842436, 17.828154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054165, 20.185078, 17.835052>,  <33.621922, 19.889259, 18.421852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054165, 20.185078, 17.835052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686871, 20.209106, 17.678471>,  <33.466496, 20.223524, 17.584522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686871, 20.209106, 17.678471>,  <34.054165, 20.185078, 17.835052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686871, 20.209106, 17.678471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042377, 0.997658, 0.053690,
		0.393762, 0.032711, -0.918630,
		-0.918235, 0.060070, -0.391453,
		33.411400, 20.227127, 17.561035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098755, 20.663517, 17.318333>,  <34.054165, 20.185078, 17.835052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098755, 20.663517, 17.318333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709301, 20.640038, 17.406502>,  <33.475628, 20.625950, 17.459404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709301, 20.640038, 17.406502>,  <34.098755, 20.663517, 17.318333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709301, 20.640038, 17.406502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062697, 0.997970, -0.011185,
		-0.219320, -0.024710, -0.975340,
		-0.973636, -0.058698, 0.220424,
		33.417210, 20.622429, 17.472630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738625, 21.129978, 16.814962>,  <34.098755, 20.663517, 17.318333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738625, 21.129978, 16.814962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458080, 21.070213, 17.093750>,  <33.289753, 21.034355, 17.261023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458080, 21.070213, 17.093750>,  <33.738625, 21.129978, 16.814962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458080, 21.070213, 17.093750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262180, 0.963315, -0.057324,
		-0.662837, -0.222936, -0.714805,
		-0.701362, -0.149411, 0.696970,
		33.247673, 21.025391, 17.302841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246632, 21.500036, 16.644789>,  <33.738625, 21.129978, 16.814962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246632, 21.500036, 16.644789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138371, 21.465057, 17.028267>,  <33.073414, 21.444071, 17.258354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138371, 21.465057, 17.028267>,  <33.246632, 21.500036, 16.644789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138371, 21.465057, 17.028267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333894, 0.942574, -0.008289,
		-0.902918, -0.322346, -0.284309,
		-0.270654, -0.087445, 0.958697,
		33.057175, 21.438824, 17.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513546, 21.625837, 16.706448>,  <33.246632, 21.500036, 16.644789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513546, 21.625837, 16.706448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661079, 21.695026, 17.071751>,  <32.749599, 21.736540, 17.290932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661079, 21.695026, 17.071751>,  <32.513546, 21.625837, 16.706448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661079, 21.695026, 17.071751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363514, 0.931120, -0.029544,
		-0.855462, -0.321085, 0.406311,
		0.368838, 0.172974, 0.913257,
		32.771732, 21.746918, 17.345728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909946, 21.883354, 17.175529>,  <32.513546, 21.625837, 16.706448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909946, 21.883354, 17.175529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272335, 22.013386, 17.284000>,  <32.489769, 22.091404, 17.349083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.272335, 22.013386, 17.284000>,  <31.909946, 21.883354, 17.175529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272335, 22.013386, 17.284000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380865, 0.905545, 0.186895,
		-0.184806, -0.272604, 0.944211,
		0.905974, 0.325077, 0.271176,
		32.544128, 22.110909, 17.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704950, 22.294987, 17.827681>,  <31.909946, 21.883354, 17.175529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704950, 22.294987, 17.827681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066502, 22.418602, 17.709358>,  <32.283432, 22.492771, 17.638365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066502, 22.418602, 17.709358>,  <31.704950, 22.294987, 17.827681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066502, 22.418602, 17.709358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285215, 0.950703, 0.121722,
		0.318841, -0.025654, 0.947461,
		0.903877, 0.309040, -0.295807,
		32.337666, 22.511314, 17.620617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992228, 22.878794, 18.341318>,  <31.704950, 22.294987, 17.827681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992228, 22.878794, 18.341318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188927, 22.929474, 17.996731>,  <32.306946, 22.959881, 17.789978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188927, 22.929474, 17.996731>,  <31.992228, 22.878794, 18.341318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188927, 22.929474, 17.996731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130992, 0.988862, 0.070662,
		0.860828, 0.078097, 0.502869,
		0.491749, 0.126699, -0.861470,
		32.336452, 22.967484, 17.738291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331448, 23.453125, 18.509501>,  <31.992228, 22.878794, 18.341318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331448, 23.453125, 18.509501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383591, 23.419865, 18.114311>,  <32.414875, 23.399908, 17.877197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383591, 23.419865, 18.114311>,  <32.331448, 23.453125, 18.509501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383591, 23.419865, 18.114311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087191, 0.993578, -0.072119,
		0.987625, -0.076742, 0.136772,
		0.130359, -0.083151, -0.987974,
		32.422699, 23.394918, 17.817919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963161, 23.849810, 18.275290>,  <32.331448, 23.453125, 18.509501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963161, 23.849810, 18.275290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714428, 23.832836, 17.962490>,  <32.565189, 23.822653, 17.774811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714428, 23.832836, 17.962490>,  <32.963161, 23.849810, 18.275290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714428, 23.832836, 17.962490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150432, 0.973465, -0.172442,
		0.768565, -0.224868, -0.598950,
		-0.621834, -0.042432, -0.781999,
		32.527878, 23.820107, 17.727890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274212, 24.190542, 17.653194>,  <32.963161, 23.849810, 18.275290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274212, 24.190542, 17.653194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885708, 24.185535, 17.558117>,  <32.652607, 24.182531, 17.501070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.885708, 24.185535, 17.558117>,  <33.274212, 24.190542, 17.653194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885708, 24.185535, 17.558117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100990, 0.882603, -0.459144,
		0.215536, -0.469952, -0.855972,
		-0.971260, -0.012517, -0.237694,
		32.594330, 24.181780, 17.486809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182713, 24.330572, 16.890369>,  <33.274212, 24.190542, 17.653194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182713, 24.330572, 16.890369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851368, 24.424229, 17.093933>,  <32.652561, 24.480423, 17.216072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851368, 24.424229, 17.093933>,  <33.182713, 24.330572, 16.890369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851368, 24.424229, 17.093933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048510, 0.875067, -0.481565,
		-0.558084, -0.423599, -0.713516,
		-0.828365, 0.234142, 0.508910,
		32.602859, 24.494471, 17.246607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880424, 24.739939, 16.424273>,  <33.182713, 24.330572, 16.890369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880424, 24.739939, 16.424273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677738, 24.797626, 16.764259>,  <32.556126, 24.832239, 16.968250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677738, 24.797626, 16.764259>,  <32.880424, 24.739939, 16.424273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677738, 24.797626, 16.764259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164116, 0.951744, -0.259326,
		-0.846348, -0.270897, -0.458595,
		-0.506716, 0.144217, 0.849965,
		32.525723, 24.840891, 17.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254002, 25.090815, 16.255806>,  <32.880424, 24.739939, 16.424273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254002, 25.090815, 16.255806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.273701, 25.151497, 16.650684>,  <32.285519, 25.187906, 16.887611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.273701, 25.151497, 16.650684>,  <32.254002, 25.090815, 16.255806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273701, 25.151497, 16.650684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126803, 0.981349, -0.144482,
		-0.990704, -0.118064, 0.067566,
		0.049248, 0.151706, 0.987198,
		32.288475, 25.197008, 16.946844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696667, 25.500002, 16.317545>,  <32.254002, 25.090815, 16.255806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696667, 25.500002, 16.317545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.910952, 25.580654, 16.645535>,  <32.039520, 25.629045, 16.842329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.910952, 25.580654, 16.645535>,  <31.696667, 25.500002, 16.317545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910952, 25.580654, 16.645535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050025, 0.976945, -0.207549,
		-0.842919, 0.070167, 0.533446,
		0.535710, 0.201633, 0.819975,
		32.071663, 25.641144, 16.891527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.090519, 41.041267, 17.379004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.420650, 40.913692, 17.192623>,  <25.618731, 40.837147, 17.080795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.420650, 40.913692, 17.192623>,  <25.090519, 41.041267, 17.379004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420650, 40.913692, 17.192623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184994, -0.626927, 0.756796,
		-0.533484, -0.710806, -0.458422,
		0.825332, -0.318933, -0.465950,
		25.668249, 40.818012, 17.052837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033236, 40.359459, 17.459194>,  <25.090519, 41.041267, 17.379004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033236, 40.359459, 17.459194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.414667, 40.380268, 17.340549>,  <25.643526, 40.392754, 17.269361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.414667, 40.380268, 17.340549>,  <25.033236, 40.359459, 17.459194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414667, 40.380268, 17.340549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234404, -0.746575, 0.622640,
		-0.189053, -0.663264, -0.724113,
		0.953579, 0.052023, -0.296614,
		25.700741, 40.395874, 17.251566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267132, 39.651466, 17.292421>,  <25.033236, 40.359459, 17.459194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267132, 39.651466, 17.292421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.590424, 39.870308, 17.379547>,  <25.784399, 40.001614, 17.431824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.590424, 39.870308, 17.379547>,  <25.267132, 39.651466, 17.292421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590424, 39.870308, 17.379547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314436, -0.713705, 0.625903,
		0.497889, -0.437384, -0.748867,
		0.808230, 0.547101, 0.217816,
		25.832893, 40.034439, 17.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908873, 39.276417, 17.234367>,  <25.267132, 39.651466, 17.292421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908873, 39.276417, 17.234367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.965639, 39.570213, 17.499813>,  <25.999699, 39.746490, 17.659081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.965639, 39.570213, 17.499813>,  <25.908873, 39.276417, 17.234367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965639, 39.570213, 17.499813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389409, -0.657769, 0.644749,
		0.910067, 0.166917, -0.379365,
		0.141915, 0.734492, 0.663613,
		26.008213, 39.790562, 17.698896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431812, 39.026817, 17.492771>,  <25.908873, 39.276417, 17.234367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431812, 39.026817, 17.492771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.320164, 39.303169, 17.759537>,  <26.253174, 39.468983, 17.919596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.320164, 39.303169, 17.759537>,  <26.431812, 39.026817, 17.492771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320164, 39.303169, 17.759537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279729, -0.605893, 0.744745,
		0.918609, 0.394429, -0.024142,
		-0.279121, 0.690883, 0.666912,
		26.236427, 39.510433, 17.959610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863447, 38.991421, 17.985445>,  <26.431812, 39.026817, 17.492771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863447, 38.991421, 17.985445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.573696, 39.188534, 18.178291>,  <26.399845, 39.306801, 18.293999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.573696, 39.188534, 18.178291>,  <26.863447, 38.991421, 17.985445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573696, 39.188534, 18.178291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086912, -0.628470, 0.772963,
		0.683902, 0.601820, 0.412421,
		-0.724379, 0.492787, 0.482117,
		26.356382, 39.336369, 18.322926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060823, 38.895557, 18.615519>,  <26.863447, 38.991421, 17.985445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060823, 38.895557, 18.615519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.694731, 39.045021, 18.675823>,  <26.475075, 39.134701, 18.712006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.694731, 39.045021, 18.675823>,  <27.060823, 38.895557, 18.615519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694731, 39.045021, 18.675823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109717, -0.591136, 0.799075,
		0.387703, 0.714798, 0.582023,
		-0.915232, 0.373661, 0.150760,
		26.420162, 39.157120, 18.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907022, 39.177811, 19.437233>,  <27.060823, 38.895557, 18.615519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907022, 39.177811, 19.437233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575083, 39.050354, 19.254009>,  <26.375919, 38.973881, 19.144075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.575083, 39.050354, 19.254009>,  <26.907022, 39.177811, 19.437233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575083, 39.050354, 19.254009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242746, -0.533000, 0.810546,
		-0.502417, 0.783824, 0.364962,
		-0.829850, -0.318639, -0.458058,
		26.326128, 38.954762, 19.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312374, 39.423656, 19.892208>,  <26.907022, 39.177811, 19.437233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312374, 39.423656, 19.892208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184462, 39.120815, 19.664337>,  <26.107714, 38.939110, 19.527615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184462, 39.120815, 19.664337>,  <26.312374, 39.423656, 19.892208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184462, 39.120815, 19.664337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368888, -0.454327, 0.810869,
		-0.872732, 0.469449, -0.134001,
		-0.319782, -0.757103, -0.569679,
		26.088528, 38.893684, 19.493433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676607, 39.285213, 20.134571>,  <26.312374, 39.423656, 19.892208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676607, 39.285213, 20.134571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.726309, 38.964916, 19.900181>,  <25.756130, 38.772736, 19.759546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.726309, 38.964916, 19.900181>,  <25.676607, 39.285213, 20.134571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726309, 38.964916, 19.900181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557128, -0.544976, 0.626586,
		-0.821078, 0.248608, -0.513833,
		0.124252, -0.800747, -0.585974,
		25.763584, 38.724693, 19.724388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922247, 39.090645, 19.935574>,  <25.676607, 39.285213, 20.134571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922247, 39.090645, 19.935574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.175135, 38.783722, 19.892601>,  <25.326868, 38.599567, 19.866817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.175135, 38.783722, 19.892601>,  <24.922247, 39.090645, 19.935574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175135, 38.783722, 19.892601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593082, -0.568494, 0.570147,
		-0.498550, -0.296744, -0.814488,
		0.632219, -0.767306, -0.107429,
		25.364799, 38.553532, 19.860373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491766, 38.510433, 19.762030>,  <24.922247, 39.090645, 19.935574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491766, 38.510433, 19.762030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.841187, 38.361801, 19.887783>,  <25.050838, 38.272621, 19.963236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.841187, 38.361801, 19.887783>,  <24.491766, 38.510433, 19.762030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841187, 38.361801, 19.887783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485716, -0.707183, 0.513782,
		0.031417, -0.601517, -0.798242,
		0.873552, -0.371577, 0.314384,
		25.103252, 38.250328, 19.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484087, 37.885204, 19.775499>,  <24.491766, 38.510433, 19.762030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484087, 37.885204, 19.775499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788021, 37.905792, 20.034729>,  <24.970381, 37.918144, 20.190268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.788021, 37.905792, 20.034729>,  <24.484087, 37.885204, 19.775499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788021, 37.905792, 20.034729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382210, -0.771021, 0.509355,
		0.525896, -0.634727, -0.566176,
		0.759835, 0.051469, 0.648075,
		25.015972, 37.921234, 20.229151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715685, 37.207874, 19.831516>,  <24.484087, 37.885204, 19.775499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715685, 37.207874, 19.831516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825670, 37.416206, 20.154781>,  <24.891661, 37.541206, 20.348740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.825670, 37.416206, 20.154781>,  <24.715685, 37.207874, 19.831516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825670, 37.416206, 20.154781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497462, -0.642235, 0.583151,
		0.822756, -0.562375, 0.082506,
		0.274961, 0.520834, 0.808163,
		24.908159, 37.572456, 20.397230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130356, 36.764523, 20.268991>,  <24.715685, 37.207874, 19.831516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130356, 36.764523, 20.268991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.995323, 37.053123, 20.510811>,  <24.914305, 37.226284, 20.655903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.995323, 37.053123, 20.510811>,  <25.130356, 36.764523, 20.268991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995323, 37.053123, 20.510811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104831, -0.667073, 0.737580,
		0.935441, 0.185617, 0.300826,
		-0.337580, 0.721499, 0.604549,
		24.894049, 37.269573, 20.692175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177063, 36.597210, 20.958565>,  <25.130356, 36.764523, 20.268991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177063, 36.597210, 20.958565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.929729, 36.896935, 21.053394>,  <24.781330, 37.076767, 21.110292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.929729, 36.896935, 21.053394>,  <25.177063, 36.597210, 20.958565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929729, 36.896935, 21.053394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303702, -0.506030, 0.807279,
		0.724866, 0.427167, 0.540461,
		-0.618332, 0.749308, 0.237072,
		24.744230, 37.121727, 21.124516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181364, 36.709244, 21.717163>,  <25.177063, 36.597210, 20.958565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181364, 36.709244, 21.717163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.835772, 36.881344, 21.612534>,  <24.628416, 36.984604, 21.549755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.835772, 36.881344, 21.612534>,  <25.181364, 36.709244, 21.717163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835772, 36.881344, 21.612534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486593, -0.579843, 0.653459,
		0.129479, 0.691857, 0.710331,
		-0.863981, 0.430251, -0.261575,
		24.576578, 37.010418, 21.534061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866308, 36.793304, 22.338696>,  <25.181364, 36.709244, 21.717163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866308, 36.793304, 22.338696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570932, 36.824146, 22.070736>,  <24.393707, 36.842651, 21.909960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.570932, 36.824146, 22.070736>,  <24.866308, 36.793304, 22.338696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570932, 36.824146, 22.070736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615368, -0.483276, 0.622709,
		-0.275734, 0.872066, 0.404316,
		-0.738440, 0.077101, -0.669897,
		24.349400, 36.847275, 21.869766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172125, 37.180359, 22.622095>,  <24.866308, 36.793304, 22.338696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172125, 37.180359, 22.622095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051796, 36.963406, 22.308323>,  <23.979599, 36.833233, 22.120060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051796, 36.963406, 22.308323>,  <24.172125, 37.180359, 22.622095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051796, 36.963406, 22.308323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736803, -0.390049, 0.552253,
		-0.605496, 0.744101, -0.282291,
		-0.300824, -0.542380, -0.784429,
		23.961548, 36.800690, 22.072994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.449953, 37.201714, 22.682724>,  <24.172125, 37.180359, 22.622095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.449953, 37.201714, 22.682724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525345, 36.898243, 22.433281>,  <23.570580, 36.716160, 22.283615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525345, 36.898243, 22.433281>,  <23.449953, 37.201714, 22.682724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.525345, 36.898243, 22.433281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831673, -0.461012, 0.309496,
		-0.522298, 0.460305, -0.717861,
		0.188480, -0.758675, -0.623609,
		23.581888, 36.670639, 22.246199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.820454, 37.093212, 22.251314>,  <23.449953, 37.201714, 22.682724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.820454, 37.093212, 22.251314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047565, 36.763943, 22.250286>,  <23.183832, 36.566380, 22.249668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047565, 36.763943, 22.250286>,  <22.820454, 37.093212, 22.251314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047565, 36.763943, 22.250286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743518, -0.514168, 0.427566,
		-0.353285, -0.240850, -0.903981,
		0.567778, -0.823178, -0.002571,
		23.217899, 36.516991, 22.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.093285, 37.289753, 22.521235>,  <22.820454, 37.093212, 22.251314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.093285, 37.289753, 22.521235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906580, 37.481606, 22.818443>,  <21.794558, 37.596718, 22.996769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906580, 37.481606, 22.818443>,  <22.093285, 37.289753, 22.521235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906580, 37.481606, 22.818443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256352, 0.877467, -0.405383,
		-0.846415, 0.001259, -0.532522,
		-0.466761, 0.479635, 0.743024,
		21.766552, 37.625496, 23.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701742, 37.819206, 22.141239>,  <22.093285, 37.289753, 22.521235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701742, 37.819206, 22.141239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711876, 37.938725, 22.522831>,  <21.717957, 38.010437, 22.751785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711876, 37.938725, 22.522831>,  <21.701742, 37.819206, 22.141239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711876, 37.938725, 22.522831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347931, 0.891988, -0.288620,
		-0.937178, 0.339231, -0.081365,
		0.025333, 0.298797, 0.953980,
		21.719475, 38.028362, 22.809025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283245, 38.434528, 22.175150>,  <21.701742, 37.819206, 22.141239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283245, 38.434528, 22.175150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.544487, 38.438457, 22.478031>,  <21.701231, 38.440815, 22.659760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.544487, 38.438457, 22.478031>,  <21.283245, 38.434528, 22.175150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.544487, 38.438457, 22.478031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325603, 0.899124, -0.292504,
		-0.683695, 0.437583, 0.584023,
		0.653103, 0.009824, 0.757205,
		21.740417, 38.441406, 22.705193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189644, 39.152264, 22.522629>,  <21.283245, 38.434528, 22.175150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189644, 39.152264, 22.522629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553280, 39.009975, 22.609367>,  <21.771461, 38.924603, 22.661411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.553280, 39.009975, 22.609367>,  <21.189644, 39.152264, 22.522629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553280, 39.009975, 22.609367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414637, 0.823070, -0.388114,
		-0.040421, 0.442742, 0.895738,
		0.909089, -0.355718, 0.216846,
		21.826006, 38.903259, 22.674421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.480988, 39.738392, 22.690369>,  <21.189644, 39.152264, 22.522629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.480988, 39.738392, 22.690369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.769621, 39.471943, 22.614899>,  <21.942801, 39.312073, 22.569616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.769621, 39.471943, 22.614899>,  <21.480988, 39.738392, 22.690369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769621, 39.471943, 22.614899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523403, 0.703256, -0.481123,
		0.453173, 0.248417, 0.856109,
		0.721584, -0.666122, -0.188674,
		21.986095, 39.272106, 22.558296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131392, 40.070389, 22.861225>,  <21.480988, 39.738392, 22.690369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131392, 40.070389, 22.861225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.253901, 39.775101, 22.620815>,  <22.327406, 39.597927, 22.476570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.253901, 39.775101, 22.620815>,  <22.131392, 40.070389, 22.861225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253901, 39.775101, 22.620815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556739, 0.651034, -0.515942,
		0.772165, -0.176595, 0.610389,
		0.306272, -0.738220, -0.601023,
		22.345781, 39.553635, 22.440508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.873400, 40.226089, 22.797508>,  <22.131392, 40.070389, 22.861225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.873400, 40.226089, 22.797508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.760151, 40.013783, 22.477978>,  <22.692202, 39.886398, 22.286259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.760151, 40.013783, 22.477978>,  <22.873400, 40.226089, 22.797508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.760151, 40.013783, 22.477978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643748, 0.512238, -0.568507,
		0.710936, -0.675201, 0.196656,
		-0.283122, -0.530770, -0.798828,
		22.675215, 39.854553, 22.238329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563374, 40.089912, 22.457256>,  <22.873400, 40.226089, 22.797508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563374, 40.089912, 22.457256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.252832, 40.026031, 22.213364>,  <23.066507, 39.987705, 22.067028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.252832, 40.026031, 22.213364>,  <23.563374, 40.089912, 22.457256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.252832, 40.026031, 22.213364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396945, 0.627553, -0.669785,
		0.489602, -0.762019, -0.423811,
		-0.776353, -0.159698, -0.609731,
		23.019926, 39.978123, 22.030443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.929752, 40.127552, 21.861326>,  <23.563374, 40.089912, 22.457256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.929752, 40.127552, 21.861326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.550802, 40.132385, 21.733368>,  <23.323433, 40.135284, 21.656593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.550802, 40.132385, 21.733368>,  <23.929752, 40.127552, 21.861326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.550802, 40.132385, 21.733368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288545, 0.464998, -0.836970,
		0.138642, -0.885229, -0.444013,
		-0.947376, 0.012079, -0.319897,
		23.266590, 40.136009, 21.637400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.978407, 39.877567, 21.132057>,  <23.929752, 40.127552, 21.861326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.978407, 39.877567, 21.132057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.653612, 40.092285, 21.223732>,  <23.458735, 40.221115, 21.278736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.653612, 40.092285, 21.223732>,  <23.978407, 39.877567, 21.132057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.653612, 40.092285, 21.223732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032109, 0.433146, -0.900752,
		-0.582791, -0.724040, -0.368945,
		-0.811987, 0.536797, 0.229186,
		23.410015, 40.253323, 21.292488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.637743, 39.937000, 20.505354>,  <23.978407, 39.877567, 21.132057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.637743, 39.937000, 20.505354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.467710, 40.222576, 20.727917>,  <23.365690, 40.393921, 20.861454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.467710, 40.222576, 20.727917>,  <23.637743, 39.937000, 20.505354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467710, 40.222576, 20.727917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100273, 0.573785, -0.812844,
		-0.899583, -0.401320, -0.172317,
		-0.425083, 0.713942, 0.556409,
		23.340185, 40.436760, 20.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970079, 40.133774, 20.146379>,  <23.637743, 39.937000, 20.505354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970079, 40.133774, 20.146379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.090317, 40.433571, 20.382313>,  <23.162458, 40.613449, 20.523872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.090317, 40.433571, 20.382313>,  <22.970079, 40.133774, 20.146379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.090317, 40.433571, 20.382313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001261, 0.618746, -0.785590,
		-0.953751, 0.235400, 0.186936,
		0.300594, 0.749493, 0.589833,
		23.180494, 40.658421, 20.559263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509031, 40.740417, 19.961891>,  <22.970079, 40.133774, 20.146379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509031, 40.740417, 19.961891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.830963, 40.902290, 20.135548>,  <23.024122, 40.999416, 20.239742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.830963, 40.902290, 20.135548>,  <22.509031, 40.740417, 19.961891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.830963, 40.902290, 20.135548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004009, 0.735176, -0.677864,
		-0.593493, 0.543824, 0.593314,
		0.804829, 0.404687, 0.434141,
		23.072412, 41.023697, 20.265791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.434841, 41.436855, 19.915932>,  <22.509031, 40.740417, 19.961891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.434841, 41.436855, 19.915932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825363, 41.417091, 20.000202>,  <23.059677, 41.405231, 20.050764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825363, 41.417091, 20.000202>,  <22.434841, 41.436855, 19.915932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825363, 41.417091, 20.000202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187469, 0.679401, -0.709415,
		-0.108080, 0.732101, 0.672567,
		0.976306, -0.049411, 0.210676,
		23.118256, 41.402267, 20.063406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.764433, 42.125710, 19.964352>,  <22.434841, 41.436855, 19.915932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.764433, 42.125710, 19.964352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.056269, 41.866024, 19.878357>,  <23.231371, 41.710213, 19.826759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.056269, 41.866024, 19.878357>,  <22.764433, 42.125710, 19.964352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.056269, 41.866024, 19.878357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243480, 0.540349, -0.805444,
		0.639073, 0.535300, 0.552304,
		0.729591, -0.649213, -0.214987,
		23.275146, 41.671261, 19.813860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.298054, 42.541805, 19.652361>,  <22.764433, 42.125710, 19.964352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.298054, 42.541805, 19.652361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.422346, 42.180279, 19.534676>,  <23.496922, 41.963364, 19.464064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.422346, 42.180279, 19.534676>,  <23.298054, 42.541805, 19.652361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.422346, 42.180279, 19.534676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313958, 0.389759, -0.865747,
		0.897150, 0.176642, 0.404870,
		0.310729, -0.903817, -0.294214,
		23.515564, 41.909134, 19.446411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.919777, 42.669945, 19.314165>,  <23.298054, 42.541805, 19.652361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.919777, 42.669945, 19.314165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791861, 42.309769, 19.196220>,  <23.715111, 42.093662, 19.125454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.791861, 42.309769, 19.196220>,  <23.919777, 42.669945, 19.314165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.791861, 42.309769, 19.196220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124595, 0.268538, -0.955177,
		0.939261, -0.342193, 0.026315,
		-0.319789, -0.900439, -0.294863,
		23.695925, 42.039639, 19.107761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366364, 42.470451, 18.798527>,  <23.919777, 42.669945, 19.314165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366364, 42.470451, 18.798527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.054348, 42.234444, 18.715187>,  <23.867138, 42.092838, 18.665182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.054348, 42.234444, 18.715187>,  <24.366364, 42.470451, 18.798527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054348, 42.234444, 18.715187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148713, 0.148622, -0.977648,
		0.607801, -0.793589, -0.028187,
		-0.780040, -0.590023, -0.208350,
		23.820335, 42.057438, 18.652681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596655, 42.232235, 18.276583>,  <24.366364, 42.470451, 18.798527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596655, 42.232235, 18.276583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202578, 42.175961, 18.237385>,  <23.966131, 42.142197, 18.213865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202578, 42.175961, 18.237385>,  <24.596655, 42.232235, 18.276583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202578, 42.175961, 18.237385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091739, 0.050298, -0.994512,
		0.144845, -0.988776, -0.036647,
		-0.985193, -0.140688, -0.097994,
		23.907021, 42.133755, 18.207987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513168, 41.830772, 17.696295>,  <24.596655, 42.232235, 18.276583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513168, 41.830772, 17.696295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.135382, 41.958664, 17.726643>,  <23.908710, 42.035400, 17.744850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.135382, 41.958664, 17.726643>,  <24.513168, 41.830772, 17.696295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.135382, 41.958664, 17.726643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072570, 0.022237, -0.997115,
		-0.320494, -0.947248, 0.002200,
		-0.944467, 0.319729, 0.075868,
		23.852041, 42.054581, 17.749403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085777, 41.317348, 17.302908>,  <24.513168, 41.830772, 17.696295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085777, 41.317348, 17.302908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895576, 41.668022, 17.332096>,  <23.781456, 41.878426, 17.349609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.895576, 41.668022, 17.332096>,  <24.085777, 41.317348, 17.302908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895576, 41.668022, 17.332096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164096, -0.006899, -0.986420,
		-0.864275, -0.481018, 0.147140,
		-0.475501, 0.876683, 0.072970,
		23.752926, 41.931026, 17.353987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.711859, 29.154917, 18.736559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993029, 29.381416, 18.908726>,  <28.161732, 29.517315, 19.012026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993029, 29.381416, 18.908726>,  <27.711859, 29.154917, 18.736559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993029, 29.381416, 18.908726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668512, 0.732610, 0.127962,
		-0.242868, -0.377686, 0.893514,
		0.702927, 0.566248, 0.430416,
		28.203907, 29.551291, 19.037851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423132, 29.436621, 19.327436>,  <27.711859, 29.154917, 18.736559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423132, 29.436621, 19.327436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736891, 29.664848, 19.230133>,  <27.925146, 29.801785, 19.171751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736891, 29.664848, 19.230133>,  <27.423132, 29.436621, 19.327436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736891, 29.664848, 19.230133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516581, 0.818021, 0.252955,
		0.343319, -0.072753, 0.936397,
		0.784396, 0.570569, -0.243259,
		27.972210, 29.836020, 19.157156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376354, 29.868401, 19.823977>,  <27.423132, 29.436621, 19.327436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376354, 29.868401, 19.823977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590771, 30.069469, 19.552689>,  <27.719419, 30.190111, 19.389915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590771, 30.069469, 19.552689>,  <27.376354, 29.868401, 19.823977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590771, 30.069469, 19.552689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491389, 0.839055, 0.233502,
		0.686438, 0.208103, 0.696775,
		0.536040, 0.502672, -0.678219,
		27.751583, 30.220272, 19.349222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277678, 30.558132, 20.028322>,  <27.376354, 29.868401, 19.823977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277678, 30.558132, 20.028322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444817, 30.595592, 19.666851>,  <27.545099, 30.618069, 19.449968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444817, 30.595592, 19.666851>,  <27.277678, 30.558132, 20.028322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444817, 30.595592, 19.666851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443744, 0.888994, -0.113054,
		0.792777, 0.448241, 0.413019,
		0.417847, 0.093649, -0.903678,
		27.570171, 30.623688, 19.395748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671646, 31.177269, 20.087578>,  <27.277678, 30.558132, 20.028322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671646, 31.177269, 20.087578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593510, 31.106762, 19.701672>,  <27.546627, 31.064457, 19.470129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593510, 31.106762, 19.701672>,  <27.671646, 31.177269, 20.087578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593510, 31.106762, 19.701672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282710, 0.952079, -0.116709,
		0.939104, 0.249951, -0.235812,
		-0.195340, -0.176269, -0.964765,
		27.534906, 31.053881, 19.412243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939472, 31.728117, 19.700369>,  <27.671646, 31.177269, 20.087578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939472, 31.728117, 19.700369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685373, 31.577339, 19.430740>,  <27.532913, 31.486874, 19.268963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685373, 31.577339, 19.430740>,  <27.939472, 31.728117, 19.700369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685373, 31.577339, 19.430740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306650, 0.924160, -0.227804,
		0.708819, 0.061991, -0.702661,
		-0.635249, -0.376942, -0.674071,
		27.494799, 31.464256, 19.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935545, 32.210419, 19.241673>,  <27.939472, 31.728117, 19.700369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935545, 32.210419, 19.241673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594395, 32.019035, 19.158070>,  <27.389706, 31.904205, 19.107908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594395, 32.019035, 19.158070>,  <27.935545, 32.210419, 19.241673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594395, 32.019035, 19.158070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429219, 0.870427, -0.241097,
		0.297281, -0.115914, -0.947727,
		-0.852874, -0.478456, -0.209009,
		27.338531, 31.875498, 19.095367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603003, 32.392776, 18.514652>,  <27.935545, 32.210419, 19.241673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603003, 32.392776, 18.514652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296421, 32.244457, 18.724434>,  <27.112473, 32.155464, 18.850304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296421, 32.244457, 18.724434>,  <27.603003, 32.392776, 18.514652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296421, 32.244457, 18.724434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523473, 0.833767, -0.175525,
		-0.372189, -0.409071, -0.833149,
		-0.766454, -0.370802, 0.524456,
		27.066484, 32.133217, 18.881771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996111, 32.487568, 18.088995>,  <27.603003, 32.392776, 18.514652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996111, 32.487568, 18.088995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868330, 32.420410, 18.462040>,  <26.791662, 32.380116, 18.685867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868330, 32.420410, 18.462040>,  <26.996111, 32.487568, 18.088995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868330, 32.420410, 18.462040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582200, 0.811292, -0.053372,
		-0.747659, -0.560016, -0.356916,
		-0.319452, -0.167893, 0.932611,
		26.772495, 32.370041, 18.741823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221275, 32.679680, 18.131735>,  <26.996111, 32.487568, 18.088995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221275, 32.679680, 18.131735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335260, 32.670860, 18.515049>,  <26.403652, 32.665569, 18.745037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335260, 32.670860, 18.515049>,  <26.221275, 32.679680, 18.131735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335260, 32.670860, 18.515049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687147, 0.692324, 0.220265,
		-0.668300, -0.721250, 0.182137,
		0.284964, -0.022048, 0.958285,
		26.420750, 32.664246, 18.802534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587446, 32.773354, 18.507599>,  <26.221275, 32.679680, 18.131735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587446, 32.773354, 18.507599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879229, 32.875042, 18.761612>,  <26.054298, 32.936054, 18.914021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879229, 32.875042, 18.761612>,  <25.587446, 32.773354, 18.507599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879229, 32.875042, 18.761612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509071, 0.821850, 0.255751,
		-0.456883, -0.509835, 0.728921,
		0.729455, 0.254224, 0.635032,
		26.098064, 32.951309, 18.952122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305796, 32.758274, 19.206915>,  <25.587446, 32.773354, 18.507599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305796, 32.758274, 19.206915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620272, 33.001396, 19.162239>,  <25.808958, 33.147270, 19.135433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620272, 33.001396, 19.162239>,  <25.305796, 32.758274, 19.206915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620272, 33.001396, 19.162239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583133, 0.789473, 0.191543,
		0.204598, -0.085459, 0.975108,
		0.786191, 0.607807, -0.111691,
		25.856129, 33.183739, 19.128733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193563, 31.970848, 19.441776>,  <25.305796, 32.758274, 19.206915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193563, 31.970848, 19.441776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318857, 31.806099, 19.784061>,  <25.394033, 31.707251, 19.989433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318857, 31.806099, 19.784061>,  <25.193563, 31.970848, 19.441776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318857, 31.806099, 19.784061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737967, 0.672700, 0.053650,
		-0.597736, 0.614684, 0.514661,
		0.313235, -0.411871, 0.855714,
		25.412828, 31.682537, 20.040775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197695, 32.497894, 19.987898>,  <25.193563, 31.970848, 19.441776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197695, 32.497894, 19.987898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469051, 32.207157, 20.030773>,  <25.631865, 32.032715, 20.056498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469051, 32.207157, 20.030773>,  <25.197695, 32.497894, 19.987898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469051, 32.207157, 20.030773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732064, 0.656374, -0.182359,
		0.062192, 0.202178, 0.977372,
		0.678391, -0.726841, 0.107186,
		25.672569, 31.989105, 20.062929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543463, 33.193928, 20.197334>,  <25.197695, 32.497894, 19.987898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543463, 33.193928, 20.197334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329456, 33.180321, 20.534996>,  <25.201052, 33.172157, 20.737593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329456, 33.180321, 20.534996>,  <25.543463, 33.193928, 20.197334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329456, 33.180321, 20.534996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474559, -0.838763, 0.266967,
		0.698964, 0.543433, 0.464897,
		-0.535017, -0.034021, 0.844156,
		25.168951, 33.170113, 20.788242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034107, 33.205116, 20.773645>,  <25.543463, 33.193928, 20.197334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034107, 33.205116, 20.773645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699047, 33.042915, 20.920017>,  <25.498011, 32.945595, 21.007841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699047, 33.042915, 20.920017>,  <26.034107, 33.205116, 20.773645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699047, 33.042915, 20.920017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527520, -0.774334, 0.349471,
		0.141639, 0.485770, 0.862534,
		-0.837652, -0.405506, 0.365930,
		25.447752, 32.921265, 21.029797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205217, 32.944756, 21.414734>,  <26.034107, 33.205116, 20.773645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205217, 32.944756, 21.414734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875055, 32.728493, 21.349747>,  <25.676958, 32.598736, 21.310755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875055, 32.728493, 21.349747>,  <26.205217, 32.944756, 21.414734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875055, 32.728493, 21.349747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461499, -0.811956, 0.357417,
		-0.325157, 0.220035, 0.919705,
		-0.825404, -0.540659, -0.162467,
		25.627434, 32.566296, 21.301006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053787, 32.667419, 21.984631>,  <26.205217, 32.944756, 21.414734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053787, 32.667419, 21.984631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888500, 32.445324, 21.695919>,  <25.789328, 32.312065, 21.522692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888500, 32.445324, 21.695919>,  <26.053787, 32.667419, 21.984631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888500, 32.445324, 21.695919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461551, -0.810960, 0.359604,
		-0.784998, -0.184542, 0.591373,
		-0.413218, -0.555237, -0.721777,
		25.764536, 32.278751, 21.479385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918354, 31.976038, 22.335577>,  <26.053787, 32.667419, 21.984631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918354, 31.976038, 22.335577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907200, 31.879417, 21.947582>,  <25.900507, 31.821445, 21.714785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907200, 31.879417, 21.947582>,  <25.918354, 31.976038, 22.335577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907200, 31.879417, 21.947582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297193, -0.928490, 0.222673,
		-0.954410, -0.282064, 0.097677,
		-0.027884, -0.241550, -0.969988,
		25.898834, 31.806952, 21.656586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533655, 31.356060, 22.232443>,  <25.918354, 31.976038, 22.335577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533655, 31.356060, 22.232443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764687, 31.372169, 21.906307>,  <25.903305, 31.381836, 21.710625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764687, 31.372169, 21.906307>,  <25.533655, 31.356060, 22.232443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764687, 31.372169, 21.906307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312446, -0.933636, 0.175217,
		-0.754175, -0.355952, -0.551832,
		0.577579, 0.040274, -0.815341,
		25.937960, 31.384251, 21.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428974, 30.656654, 21.962831>,  <25.533655, 31.356060, 22.232443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428974, 30.656654, 21.962831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746996, 30.793812, 21.762707>,  <25.937809, 30.876106, 21.642632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746996, 30.793812, 21.762707>,  <25.428974, 30.656654, 21.962831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746996, 30.793812, 21.762707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325532, -0.937228, -0.125031,
		-0.511778, -0.063461, -0.856770,
		0.795054, 0.342895, -0.500311,
		25.985512, 30.896681, 21.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560743, 30.141407, 21.420547>,  <25.428974, 30.656654, 21.962831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560743, 30.141407, 21.420547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891222, 30.350040, 21.505733>,  <26.089508, 30.475220, 21.556845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891222, 30.350040, 21.505733>,  <25.560743, 30.141407, 21.420547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891222, 30.350040, 21.505733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543534, -0.837401, -0.057719,
		0.148233, 0.163442, -0.975353,
		0.826195, 0.521581, 0.212967,
		26.139080, 30.506516, 21.569624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011721, 29.780689, 20.979799>,  <25.560743, 30.141407, 21.420547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011721, 29.780689, 20.979799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242313, 29.964191, 21.250271>,  <26.380669, 30.074293, 21.412554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242313, 29.964191, 21.250271>,  <26.011721, 29.780689, 20.979799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242313, 29.964191, 21.250271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590343, -0.805979, 0.043516,
		0.564948, 0.374090, -0.735453,
		0.576481, 0.458754, 0.676177,
		26.415258, 30.101818, 21.453123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733730, 29.650452, 20.748306>,  <26.011721, 29.780689, 20.979799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733730, 29.650452, 20.748306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750477, 29.761250, 21.132290>,  <26.760525, 29.827728, 21.362680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750477, 29.761250, 21.132290>,  <26.733730, 29.650452, 20.748306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750477, 29.761250, 21.132290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501072, -0.837058, 0.219681,
		0.864392, 0.471812, -0.173839,
		0.041865, 0.276997, 0.959958,
		26.763037, 29.844349, 21.420277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425049, 29.826990, 20.913292>,  <26.733730, 29.650452, 20.748306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425049, 29.826990, 20.913292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248697, 29.714527, 21.254250>,  <27.142887, 29.647049, 21.458824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248697, 29.714527, 21.254250>,  <27.425049, 29.826990, 20.913292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248697, 29.714527, 21.254250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591987, -0.804919, 0.040692,
		0.674668, 0.522548, 0.521312,
		-0.440878, -0.281157, 0.852395,
		27.116434, 29.630180, 21.509968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969572, 29.579088, 21.407261>,  <27.425049, 29.826990, 20.913292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969572, 29.579088, 21.407261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626451, 29.424534, 21.542839>,  <27.420580, 29.331800, 21.624186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626451, 29.424534, 21.542839>,  <27.969572, 29.579088, 21.407261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626451, 29.424534, 21.542839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469464, -0.857458, 0.210642,
		0.209242, 0.339811, 0.916922,
		-0.857800, -0.386387, 0.338945,
		27.369112, 29.308619, 21.644522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288933, 29.188728, 21.903751>,  <27.969572, 29.579088, 21.407261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288933, 29.188728, 21.903751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910591, 29.066441, 21.860130>,  <27.683586, 28.993069, 21.833958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910591, 29.066441, 21.860130>,  <28.288933, 29.188728, 21.903751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910591, 29.066441, 21.860130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304721, -0.952083, 0.026124,
		-0.111814, -0.008522, 0.993693,
		-0.945856, -0.305720, -0.109053,
		27.626835, 28.974724, 21.827414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288242, 28.602112, 22.301281>,  <28.288933, 29.188728, 21.903751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288242, 28.602112, 22.301281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960381, 28.579258, 22.073280>,  <27.763664, 28.565546, 21.936480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960381, 28.579258, 22.073280>,  <28.288242, 28.602112, 22.301281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960381, 28.579258, 22.073280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111416, -0.991913, -0.060786,
		-0.561920, -0.113331, 0.819391,
		-0.819654, -0.057136, -0.570003,
		27.714485, 28.562117, 21.902279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078508, 28.570299, 22.985104>,  <28.288242, 28.602112, 22.301281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078508, 28.570299, 22.985104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330221, 28.634605, 23.289249>,  <28.481249, 28.673189, 23.471737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330221, 28.634605, 23.289249>,  <28.078508, 28.570299, 22.985104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330221, 28.634605, 23.289249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158908, 0.984317, -0.076605,
		-0.760757, -0.072622, 0.644961,
		0.629283, 0.160767, 0.760366,
		28.519007, 28.682835, 23.517359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817396, 29.167091, 23.298326>,  <28.078508, 28.570299, 22.985104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817396, 29.167091, 23.298326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186777, 29.137264, 23.448883>,  <28.408405, 29.119368, 23.539217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186777, 29.137264, 23.448883>,  <27.817396, 29.167091, 23.298326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186777, 29.137264, 23.448883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119151, 0.988170, -0.096555,
		-0.364739, 0.134012, 0.921415,
		0.923455, -0.074570, 0.376392,
		28.463814, 29.114893, 23.561800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825382, 29.834202, 23.790665>,  <27.817396, 29.167091, 23.298326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825382, 29.834202, 23.790665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190735, 29.707832, 23.687962>,  <28.409946, 29.632011, 23.626341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190735, 29.707832, 23.687962>,  <27.825382, 29.834202, 23.790665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190735, 29.707832, 23.687962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248016, 0.931968, -0.264433,
		0.322828, 0.177849, 0.929598,
		0.913384, -0.315922, -0.256756,
		28.464750, 29.613056, 23.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369772, 30.363270, 24.206924>,  <27.825382, 29.834202, 23.790665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369772, 30.363270, 24.206924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579750, 30.200710, 23.907787>,  <28.705736, 30.103174, 23.728304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579750, 30.200710, 23.907787>,  <28.369772, 30.363270, 24.206924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579750, 30.200710, 23.907787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434657, 0.883434, -0.174979,
		0.731783, -0.233201, 0.640400,
		0.524946, -0.406400, -0.747844,
		28.737234, 30.078791, 23.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886219, 30.728430, 24.191357>,  <28.369772, 30.363270, 24.206924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886219, 30.728430, 24.191357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928190, 30.541458, 23.840244>,  <28.953373, 30.429276, 23.629578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928190, 30.541458, 23.840244>,  <28.886219, 30.728430, 24.191357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928190, 30.541458, 23.840244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489977, 0.792386, -0.363383,
		0.865397, -0.391963, 0.312174,
		0.104930, -0.467429, -0.877781,
		28.959669, 30.401230, 23.576910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555586, 30.941114, 23.919622>,  <28.886219, 30.728430, 24.191357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555586, 30.941114, 23.919622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322443, 30.837269, 23.611629>,  <29.182556, 30.774961, 23.426834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322443, 30.837269, 23.611629>,  <29.555586, 30.941114, 23.919622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322443, 30.837269, 23.611629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038012, 0.937838, -0.344986,
		0.811684, -0.230346, -0.536758,
		-0.582858, -0.259616, -0.769984,
		29.147585, 30.759384, 23.380634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947697, 31.076464, 23.386610>,  <29.555586, 30.941114, 23.919622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947697, 31.076464, 23.386610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580330, 31.061596, 23.229065>,  <29.359909, 31.052675, 23.134537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580330, 31.061596, 23.229065>,  <29.947697, 31.076464, 23.386610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580330, 31.061596, 23.229065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090550, 0.949399, -0.300738,
		0.385111, -0.311867, -0.868578,
		-0.918417, -0.037167, -0.393863,
		29.304804, 31.050446, 23.110907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979830, 31.368999, 22.691179>,  <29.947697, 31.076464, 23.386610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979830, 31.368999, 22.691179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596958, 31.409725, 22.799580>,  <29.367235, 31.434160, 22.864620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596958, 31.409725, 22.799580>,  <29.979830, 31.368999, 22.691179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596958, 31.409725, 22.799580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004425, 0.930858, -0.365353,
		-0.289464, -0.350908, -0.890547,
		-0.957179, 0.101816, 0.271003,
		29.309805, 31.440269, 22.880880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658138, 31.654947, 22.126284>,  <29.979830, 31.368999, 22.691179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658138, 31.654947, 22.126284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434740, 31.729042, 22.449707>,  <29.300701, 31.773499, 22.643761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434740, 31.729042, 22.449707>,  <29.658138, 31.654947, 22.126284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434740, 31.729042, 22.449707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018467, 0.977283, -0.211133,
		-0.829300, -0.102986, -0.549231,
		-0.558498, 0.185235, 0.808559,
		29.267191, 31.784613, 22.692274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103859, 32.053791, 21.938931>,  <29.658138, 31.654947, 22.126284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103859, 32.053791, 21.938931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104086, 32.126881, 22.332195>,  <29.104223, 32.170734, 22.568155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104086, 32.126881, 22.332195>,  <29.103859, 32.053791, 21.938931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104086, 32.126881, 22.332195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179780, 0.967164, -0.179648,
		-0.983707, -0.176651, 0.033401,
		0.000569, 0.182726, 0.983164,
		29.104258, 32.181698, 22.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469275, 32.361053, 22.121990>,  <29.103859, 32.053791, 21.938931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469275, 32.361053, 22.121990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738232, 32.465347, 22.399090>,  <28.899607, 32.527924, 22.565350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738232, 32.465347, 22.399090>,  <28.469275, 32.361053, 22.121990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738232, 32.465347, 22.399090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198119, 0.965153, -0.170961,
		-0.713186, -0.022294, 0.700621,
		0.672395, 0.260733, 0.692750,
		28.939951, 32.543568, 22.606915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193520, 32.967976, 22.424885>,  <28.469275, 32.361053, 22.121990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193520, 32.967976, 22.424885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571131, 32.982395, 22.556042>,  <28.797697, 32.991047, 22.634735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571131, 32.982395, 22.556042>,  <28.193520, 32.967976, 22.424885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571131, 32.982395, 22.556042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036464, 0.999323, -0.004879,
		-0.327845, -0.007350, 0.944703,
		0.944028, 0.036047, 0.327891,
		28.854340, 32.993210, 22.654409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.373915, 25.007120, 23.222721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.762529, 25.090534, 23.267681>,  <28.995697, 25.140583, 23.294657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.762529, 25.090534, 23.267681>,  <28.373915, 25.007120, 23.222721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762529, 25.090534, 23.267681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231171, 0.938238, 0.257429,
		-0.051777, -0.276085, 0.959738,
		0.971534, 0.208535, 0.112402,
		29.053989, 25.153095, 23.301401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383467, 25.327671, 23.909414>,  <28.373915, 25.007120, 23.222721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383467, 25.327671, 23.909414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.756714, 25.425705, 23.804169>,  <28.980661, 25.484526, 23.741022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.756714, 25.425705, 23.804169>,  <28.383467, 25.327671, 23.909414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756714, 25.425705, 23.804169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092871, 0.871174, 0.482112,
		0.347374, -0.425430, 0.835667,
		0.933116, 0.245083, -0.263113,
		29.036648, 25.499229, 23.725235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803814, 25.679363, 24.504057>,  <28.383467, 25.327671, 23.909414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803814, 25.679363, 24.504057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.992853, 25.784859, 24.167702>,  <29.106277, 25.848156, 23.965889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.992853, 25.784859, 24.167702>,  <28.803814, 25.679363, 24.504057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992853, 25.784859, 24.167702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072042, 0.962538, 0.261402,
		0.878328, -0.062959, 0.473894,
		0.472598, 0.263737, -0.840888,
		29.134632, 25.863979, 23.915436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350246, 26.231905, 24.724937>,  <28.803814, 25.679363, 24.504057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350246, 26.231905, 24.724937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.278788, 26.273567, 24.333584>,  <29.235912, 26.298565, 24.098772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.278788, 26.273567, 24.333584>,  <29.350246, 26.231905, 24.724937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278788, 26.273567, 24.333584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016073, 0.993939, 0.108747,
		0.983782, 0.035153, -0.175890,
		-0.178647, 0.104156, -0.978385,
		29.225193, 26.304813, 24.040068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768957, 26.854729, 24.442791>,  <29.350246, 26.231905, 24.724937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768957, 26.854729, 24.442791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.464361, 26.793839, 24.190773>,  <29.281603, 26.757305, 24.039562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.464361, 26.793839, 24.190773>,  <29.768957, 26.854729, 24.442791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464361, 26.793839, 24.190773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143186, 0.987524, -0.065536,
		0.632161, 0.040308, -0.773788,
		-0.761492, -0.152225, -0.630046,
		29.235914, 26.748171, 24.001759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970354, 27.205578, 23.856640>,  <29.768957, 26.854729, 24.442791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970354, 27.205578, 23.856640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.576889, 27.137177, 23.834145>,  <29.340809, 27.096136, 23.820646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.576889, 27.137177, 23.834145>,  <29.970354, 27.205578, 23.856640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576889, 27.137177, 23.834145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163814, 0.979861, -0.114183,
		0.074632, -0.103105, -0.991867,
		-0.983664, -0.171003, -0.056239,
		29.281790, 27.085875, 23.817272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766787, 27.565006, 23.281412>,  <29.970354, 27.205578, 23.856640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766787, 27.565006, 23.281412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.439985, 27.514069, 23.506371>,  <29.243904, 27.483505, 23.641346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.439985, 27.514069, 23.506371>,  <29.766787, 27.565006, 23.281412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439985, 27.514069, 23.506371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164709, 0.986213, -0.015963,
		-0.552611, -0.105674, -0.826713,
		-0.817002, -0.127346, 0.562398,
		29.194885, 27.475864, 23.675091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218090, 27.743971, 22.967648>,  <29.766787, 27.565006, 23.281412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218090, 27.743971, 22.967648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.071611, 27.786190, 23.337460>,  <28.983725, 27.811522, 23.559347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.071611, 27.786190, 23.337460>,  <29.218090, 27.743971, 22.967648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071611, 27.786190, 23.337460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220606, 0.955374, -0.196450,
		-0.904010, -0.275896, -0.326570,
		-0.366196, 0.105550, 0.924532,
		28.961752, 27.817856, 23.614819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697828, 28.169258, 22.731983>,  <29.218090, 27.743971, 22.967648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697828, 28.169258, 22.731983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737591, 28.208542, 23.128059>,  <28.761448, 28.232111, 23.365705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.737591, 28.208542, 23.128059>,  <28.697828, 28.169258, 22.731983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737591, 28.208542, 23.128059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132804, 0.987524, -0.084612,
		-0.986145, -0.123090, 0.111209,
		0.099406, 0.098208, 0.990188,
		28.767412, 28.238005, 23.425116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965197, 27.940525, 22.589205>,  <28.697828, 28.169258, 22.731983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965197, 27.940525, 22.589205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.820890, 28.042343, 22.230305>,  <27.734306, 28.103434, 22.014965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.820890, 28.042343, 22.230305>,  <27.965197, 27.940525, 22.589205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820890, 28.042343, 22.230305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100153, -0.967046, -0.234074,
		-0.927264, 0.005417, 0.374370,
		-0.360765, 0.254543, -0.897249,
		27.712662, 28.118706, 21.961130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476561, 27.501364, 22.429768>,  <27.965197, 27.940525, 22.589205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476561, 27.501364, 22.429768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547829, 27.637257, 22.060371>,  <27.590590, 27.718792, 21.838734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547829, 27.637257, 22.060371>,  <27.476561, 27.501364, 22.429768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547829, 27.637257, 22.060371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121307, -0.923766, -0.363236,
		-0.976494, 0.176744, -0.123375,
		0.178169, 0.339731, -0.923493,
		27.601280, 27.739176, 21.783323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035145, 27.048912, 21.954948>,  <27.476561, 27.501364, 22.429768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035145, 27.048912, 21.954948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298691, 27.216484, 21.705021>,  <27.456818, 27.317026, 21.555065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298691, 27.216484, 21.705021>,  <27.035145, 27.048912, 21.954948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298691, 27.216484, 21.705021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037740, -0.847948, -0.528735,
		-0.751316, 0.324783, -0.574492,
		0.658863, 0.418928, -0.624819,
		27.496349, 27.342163, 21.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777912, 26.891560, 21.183823>,  <27.035145, 27.048912, 21.954948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777912, 26.891560, 21.183823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.165642, 26.989349, 21.173691>,  <27.398279, 27.048023, 21.167612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.165642, 26.989349, 21.173691>,  <26.777912, 26.891560, 21.183823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165642, 26.989349, 21.173691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190297, -0.811724, -0.552170,
		-0.155554, 0.530412, -0.833347,
		0.969325, 0.244475, -0.025331,
		27.456440, 27.062693, 21.166092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004677, 26.682144, 20.547508>,  <26.777912, 26.891560, 21.183823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004677, 26.682144, 20.547508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.367542, 26.725868, 20.710041>,  <27.585262, 26.752102, 20.807560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.367542, 26.725868, 20.710041>,  <27.004677, 26.682144, 20.547508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367542, 26.725868, 20.710041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325905, -0.793347, -0.514186,
		0.266157, 0.598877, -0.755319,
		0.907164, 0.109308, 0.406332,
		27.639692, 26.758661, 20.831940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569014, 26.765612, 19.989763>,  <27.004677, 26.682144, 20.547508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569014, 26.765612, 19.989763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.703814, 26.617340, 20.335949>,  <27.784693, 26.528378, 20.543661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.703814, 26.617340, 20.335949>,  <27.569014, 26.765612, 19.989763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703814, 26.617340, 20.335949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291089, -0.833178, -0.470193,
		0.895377, 0.410382, -0.172880,
		0.336999, -0.370677, 0.865466,
		27.804913, 26.506138, 20.595589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164206, 26.375023, 19.767401>,  <27.569014, 26.765612, 19.989763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164206, 26.375023, 19.767401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083935, 26.229530, 20.131252>,  <28.035772, 26.142235, 20.349564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083935, 26.229530, 20.131252>,  <28.164206, 26.375023, 19.767401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083935, 26.229530, 20.131252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134735, -0.929942, -0.342131,
		0.970348, 0.053901, 0.235626,
		-0.200677, -0.363733, 0.909630,
		28.023731, 26.120411, 20.404140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718958, 25.982662, 19.980927>,  <28.164206, 26.375023, 19.767401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718958, 25.982662, 19.980927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.390516, 25.842373, 20.161053>,  <28.193451, 25.758200, 20.269129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.390516, 25.842373, 20.161053>,  <28.718958, 25.982662, 19.980927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390516, 25.842373, 20.161053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227376, -0.924630, -0.305546,
		0.523538, -0.148494, 0.838962,
		-0.821102, -0.350725, 0.450315,
		28.144186, 25.737156, 20.296146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931496, 25.327103, 20.370975>,  <28.718958, 25.982662, 19.980927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931496, 25.327103, 20.370975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.532717, 25.307388, 20.346760>,  <28.293449, 25.295561, 20.332230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.532717, 25.307388, 20.346760>,  <28.931496, 25.327103, 20.370975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532717, 25.307388, 20.346760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069821, -0.909794, -0.409146,
		-0.034914, -0.412124, 0.910458,
		-0.996948, -0.049284, -0.060539,
		28.233633, 25.292603, 20.328598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854908, 24.716705, 20.526169>,  <28.931496, 25.327103, 20.370975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854908, 24.716705, 20.526169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.490114, 24.794609, 20.381752>,  <28.271238, 24.841351, 20.295103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.490114, 24.794609, 20.381752>,  <28.854908, 24.716705, 20.526169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490114, 24.794609, 20.381752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116201, -0.966713, -0.227956,
		-0.393419, -0.165939, 0.904260,
		-0.911986, 0.194758, -0.361041,
		28.216518, 24.853037, 20.273439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438456, 24.305874, 20.900513>,  <28.854908, 24.716705, 20.526169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438456, 24.305874, 20.900513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.269236, 24.392952, 20.548687>,  <28.167704, 24.445198, 20.337591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.269236, 24.392952, 20.548687>,  <28.438456, 24.305874, 20.900513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269236, 24.392952, 20.548687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043455, -0.964719, -0.259672,
		-0.905064, -0.148076, 0.398665,
		-0.423050, 0.217696, -0.879566,
		28.142321, 24.458261, 20.284817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899216, 23.760202, 20.835880>,  <28.438456, 24.305874, 20.900513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899216, 23.760202, 20.835880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.948338, 23.904770, 20.466167>,  <27.977810, 23.991510, 20.244341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.948338, 23.904770, 20.466167>,  <27.899216, 23.760202, 20.835880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948338, 23.904770, 20.466167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222321, -0.917679, -0.329299,
		-0.967208, -0.165047, -0.193047,
		0.122806, 0.361419, -0.924281,
		27.985180, 24.013195, 20.188883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439451, 23.434347, 20.387018>,  <27.899216, 23.760202, 20.835880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439451, 23.434347, 20.387018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.737034, 23.562111, 20.152241>,  <27.915585, 23.638769, 20.011374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.737034, 23.562111, 20.152241>,  <27.439451, 23.434347, 20.387018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737034, 23.562111, 20.152241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074064, -0.912365, -0.402623,
		-0.664110, 0.256063, -0.702417,
		0.743958, 0.319410, -0.586945,
		27.960220, 23.657934, 19.976158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254509, 23.249765, 19.738321>,  <27.439451, 23.434347, 20.387018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254509, 23.249765, 19.738321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.653877, 23.255924, 19.759922>,  <27.893499, 23.259621, 19.772882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.653877, 23.255924, 19.759922>,  <27.254509, 23.249765, 19.738321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653877, 23.255924, 19.759922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030853, -0.953934, -0.298426,
		0.046917, 0.299621, -0.952904,
		0.998422, 0.015398, 0.054000,
		27.953403, 23.260544, 19.776121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.675690, 24.698051, 20.321077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277695, 24.658100, 20.323063>,  <34.038898, 24.634129, 20.324253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277695, 24.658100, 20.323063>,  <34.675690, 24.698051, 20.321077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277695, 24.658100, 20.323063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099582, 0.994135, 0.042183,
		-0.009146, 0.041478, -0.999098,
		-0.994987, -0.099878, 0.004962,
		33.979198, 24.628138, 20.324551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494778, 25.250168, 19.936226>,  <34.675690, 24.698051, 20.321077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494778, 25.250168, 19.936226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140385, 25.143864, 20.088234>,  <33.927750, 25.080082, 20.179438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140385, 25.143864, 20.088234>,  <34.494778, 25.250168, 19.936226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140385, 25.143864, 20.088234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311735, 0.948025, -0.063799,
		-0.343312, -0.174990, -0.922776,
		-0.885979, -0.265759, 0.380018,
		33.874592, 25.064137, 20.202240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907845, 25.566267, 19.568174>,  <34.494778, 25.250168, 19.936226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907845, 25.566267, 19.568174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730820, 25.497337, 19.920185>,  <33.624607, 25.455978, 20.131392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730820, 25.497337, 19.920185>,  <33.907845, 25.566267, 19.568174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730820, 25.497337, 19.920185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429271, 0.902325, -0.039184,
		-0.787317, -0.395111, -0.473306,
		-0.442558, -0.172327, 0.880026,
		33.598053, 25.445639, 20.184193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163666, 25.633766, 19.521986>,  <33.907845, 25.566267, 19.568174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163666, 25.633766, 19.521986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272400, 25.690823, 19.902672>,  <33.337639, 25.725056, 20.131083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.272400, 25.690823, 19.902672>,  <33.163666, 25.633766, 19.521986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272400, 25.690823, 19.902672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400589, 0.915973, -0.022866,
		-0.875007, -0.375031, 0.306130,
		0.271831, 0.142640, 0.951715,
		33.353951, 25.733614, 20.188187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566334, 25.900637, 19.839598>,  <33.163666, 25.633766, 19.521986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566334, 25.900637, 19.839598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897869, 26.006882, 20.036568>,  <33.096790, 26.070629, 20.154749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897869, 26.006882, 20.036568>,  <32.566334, 25.900637, 19.839598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897869, 26.006882, 20.036568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313516, 0.949455, 0.015562,
		-0.463402, -0.167281, 0.870216,
		0.828835, 0.265615, 0.492425,
		33.146519, 26.086567, 20.184296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382736, 26.486603, 20.109343>,  <32.566334, 25.900637, 19.839598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382736, 26.486603, 20.109343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763783, 26.514908, 20.227680>,  <32.992409, 26.531891, 20.298683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763783, 26.514908, 20.227680>,  <32.382736, 26.486603, 20.109343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763783, 26.514908, 20.227680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116070, 0.983539, 0.138489,
		-0.281174, -0.166265, 0.945144,
		0.952612, 0.070763, 0.295844,
		33.049564, 26.536137, 20.316433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327595, 26.811300, 20.713320>,  <32.382736, 26.486603, 20.109343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327595, 26.811300, 20.713320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685799, 26.895439, 20.556442>,  <32.900723, 26.945923, 20.462317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685799, 26.895439, 20.556442>,  <32.327595, 26.811300, 20.713320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685799, 26.895439, 20.556442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203984, 0.977233, 0.058365,
		0.395539, 0.027734, 0.918030,
		0.895511, 0.210349, -0.392192,
		32.954453, 26.958544, 20.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645840, 27.329172, 21.224096>,  <32.327595, 26.811300, 20.713320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645840, 27.329172, 21.224096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848846, 27.351158, 20.880142>,  <32.970650, 27.364349, 20.673769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.848846, 27.351158, 20.880142>,  <32.645840, 27.329172, 21.224096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848846, 27.351158, 20.880142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074435, 0.997029, 0.019800,
		0.858421, 0.053957, 0.510099,
		0.507516, 0.054966, -0.859887,
		33.001102, 27.367647, 20.622175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016018, 27.905985, 21.378456>,  <32.645840, 27.329172, 21.224096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016018, 27.905985, 21.378456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008823, 27.854084, 20.981903>,  <33.004505, 27.822943, 20.743971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008823, 27.854084, 20.981903>,  <33.016018, 27.905985, 21.378456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008823, 27.854084, 20.981903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137360, 0.982463, -0.126093,
		0.990358, 0.133908, -0.035495,
		-0.017988, -0.129753, -0.991383,
		33.003426, 27.815159, 20.684488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465332, 28.480553, 21.146587>,  <33.016018, 27.905985, 21.378456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465332, 28.480553, 21.146587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228603, 28.366470, 20.845016>,  <33.086567, 28.298021, 20.664074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228603, 28.366470, 20.845016>,  <33.465332, 28.480553, 21.146587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228603, 28.366470, 20.845016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187005, 0.958374, -0.215752,
		0.784077, 0.013301, -0.620521,
		-0.591821, -0.285206, -0.753926,
		33.051056, 28.280909, 20.618839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652729, 28.915962, 20.614109>,  <33.465332, 28.480553, 21.146587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652729, 28.915962, 20.614109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302494, 28.775963, 20.480934>,  <33.092354, 28.691963, 20.401030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302494, 28.775963, 20.480934>,  <33.652729, 28.915962, 20.614109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302494, 28.775963, 20.480934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243110, 0.914857, -0.322390,
		0.417427, -0.201340, -0.886125,
		-0.875587, -0.350000, -0.332938,
		33.039818, 28.670963, 20.381052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571335, 29.072287, 19.886827>,  <33.652729, 28.915962, 20.614109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571335, 29.072287, 19.886827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201664, 29.030140, 20.033684>,  <32.979862, 29.004852, 20.121798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.201664, 29.030140, 20.033684>,  <33.571335, 29.072287, 19.886827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201664, 29.030140, 20.033684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214483, 0.938507, -0.270559,
		-0.316054, -0.328790, -0.889948,
		-0.924179, -0.105367, 0.367139,
		32.924412, 28.998529, 20.143826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030216, 29.291864, 19.339529>,  <33.571335, 29.072287, 19.886827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030216, 29.291864, 19.339529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861382, 29.312431, 19.701569>,  <32.760082, 29.324772, 19.918793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861382, 29.312431, 19.701569>,  <33.030216, 29.291864, 19.339529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861382, 29.312431, 19.701569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304093, 0.932517, -0.194784,
		-0.854033, -0.357449, -0.377965,
		-0.422084, 0.051415, 0.905098,
		32.734756, 29.327856, 19.973099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454845, 29.694607, 19.176100>,  <33.030216, 29.291864, 19.339529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454845, 29.694607, 19.176100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491005, 29.715351, 19.573921>,  <32.512699, 29.727797, 19.812614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.491005, 29.715351, 19.573921>,  <32.454845, 29.694607, 19.176100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491005, 29.715351, 19.573921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184206, 0.982283, -0.034476,
		-0.978722, -0.180086, 0.098350,
		0.090399, 0.051860, 0.994554,
		32.518124, 29.730909, 19.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932158, 29.242716, 19.265396>,  <32.454845, 29.694607, 19.176100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932158, 29.242716, 19.265396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763487, 29.289375, 18.905712>,  <31.662285, 29.317371, 18.689901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.763487, 29.289375, 18.905712>,  <31.932158, 29.242716, 19.265396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763487, 29.289375, 18.905712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216212, -0.950150, -0.224650,
		-0.880591, -0.289150, 0.375436,
		-0.421678, 0.116651, -0.899211,
		31.636984, 29.324371, 18.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644028, 28.573196, 18.978012>,  <31.932158, 29.242716, 19.265396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644028, 28.573196, 18.978012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661661, 28.766575, 18.628307>,  <31.672241, 28.882603, 18.418484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661661, 28.766575, 18.628307>,  <31.644028, 28.573196, 18.978012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661661, 28.766575, 18.628307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325594, -0.834286, -0.444922,
		-0.944481, -0.265042, -0.194185,
		0.044083, 0.483446, -0.874264,
		31.674887, 28.911608, 18.366028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213511, 28.039471, 18.556555>,  <31.644028, 28.573196, 18.978012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213511, 28.039471, 18.556555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416018, 28.291447, 18.320972>,  <31.537521, 28.442633, 18.179623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416018, 28.291447, 18.320972>,  <31.213511, 28.039471, 18.556555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416018, 28.291447, 18.320972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358496, -0.774870, -0.520631,
		-0.784330, 0.052440, -0.618123,
		0.506267, 0.629941, -0.588955,
		31.567898, 28.480429, 18.144285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070219, 27.780611, 17.877188>,  <31.213511, 28.039471, 18.556555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070219, 27.780611, 17.877188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402464, 28.003334, 17.874371>,  <31.601810, 28.136969, 17.872681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402464, 28.003334, 17.874371>,  <31.070219, 27.780611, 17.877188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402464, 28.003334, 17.874371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488715, -0.734978, -0.470069,
		-0.266915, 0.387003, -0.882601,
		0.830611, 0.556809, -0.007042,
		31.651648, 28.170376, 17.872257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256275, 27.781477, 17.161152>,  <31.070219, 27.780611, 17.877188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256275, 27.781477, 17.161152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.596870, 27.856171, 17.357151>,  <31.801228, 27.900986, 17.474751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.596870, 27.856171, 17.357151>,  <31.256275, 27.781477, 17.161152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596870, 27.856171, 17.357151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490458, -0.614217, -0.618214,
		0.185526, 0.766726, -0.614582,
		0.851488, 0.186732, 0.490000,
		31.852316, 27.912189, 17.504150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779133, 27.941088, 16.637411>,  <31.256275, 27.781477, 17.161152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779133, 27.941088, 16.637411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915525, 27.785759, 16.979858>,  <31.997360, 27.692562, 17.185328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915525, 27.785759, 16.979858>,  <31.779133, 27.941088, 16.637411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915525, 27.785759, 16.979858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339008, -0.798625, -0.497264,
		0.876816, 0.459788, -0.140671,
		0.340979, -0.388321, 0.856119,
		32.017818, 27.669262, 17.236694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295280, 27.504038, 16.428762>,  <31.779133, 27.941088, 16.637411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295280, 27.504038, 16.428762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274239, 27.378777, 16.808060>,  <32.261612, 27.303619, 17.035639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.274239, 27.378777, 16.808060>,  <32.295280, 27.504038, 16.428762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274239, 27.378777, 16.808060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329914, -0.901693, -0.279476,
		0.942544, 0.298137, 0.150750,
		-0.052608, -0.313153, 0.948245,
		32.258457, 27.284830, 17.092533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881981, 27.115055, 16.560617>,  <32.295280, 27.504038, 16.428762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881981, 27.115055, 16.560617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625290, 27.020344, 16.852406>,  <32.471275, 26.963516, 17.027479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625290, 27.020344, 16.852406>,  <32.881981, 27.115055, 16.560617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625290, 27.020344, 16.852406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327117, -0.944795, -0.018904,
		0.693676, 0.226491, 0.683752,
		-0.641723, -0.236780, 0.729470,
		32.432774, 26.949310, 17.071247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169331, 26.560499, 16.869091>,  <32.881981, 27.115055, 16.560617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169331, 26.560499, 16.869091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797493, 26.535179, 17.014332>,  <32.574390, 26.519987, 17.101477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797493, 26.535179, 17.014332>,  <33.169331, 26.560499, 16.869091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797493, 26.535179, 17.014332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091403, -0.993960, 0.060730,
		0.357064, 0.089643, 0.929769,
		-0.929597, -0.063299, 0.363101,
		32.518616, 26.516190, 17.123262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195873, 26.063847, 17.302702>,  <33.169331, 26.560499, 16.869091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195873, 26.063847, 17.302702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799503, 26.074562, 17.250008>,  <32.561684, 26.080992, 17.218391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799503, 26.074562, 17.250008>,  <33.195873, 26.063847, 17.302702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799503, 26.074562, 17.250008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088552, -0.867382, 0.489702,
		-0.101147, 0.496922, 0.861881,
		-0.990923, 0.026790, -0.131737,
		32.502228, 26.082600, 17.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990135, 25.739143, 17.929459>,  <33.195873, 26.063847, 17.302702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990135, 25.739143, 17.929459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694740, 25.716251, 17.660725>,  <32.517502, 25.702517, 17.499485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694740, 25.716251, 17.660725>,  <32.990135, 25.739143, 17.929459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694740, 25.716251, 17.660725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152871, -0.956235, 0.249491,
		-0.656709, 0.286949, 0.697419,
		-0.738487, -0.057228, -0.671835,
		32.473194, 25.699083, 17.459175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358601, 25.470951, 18.220524>,  <32.990135, 25.739143, 17.929459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358601, 25.470951, 18.220524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344742, 25.377518, 17.831837>,  <32.336426, 25.321457, 17.598623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344742, 25.377518, 17.831837>,  <32.358601, 25.470951, 18.220524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344742, 25.377518, 17.831837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354269, -0.906294, 0.230490,
		-0.934501, 0.352236, -0.051350,
		-0.034649, -0.233585, -0.971719,
		32.334347, 25.307442, 17.540321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705685, 25.058647, 18.006458>,  <32.358601, 25.470951, 18.220524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705685, 25.058647, 18.006458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987177, 24.975788, 17.734619>,  <32.156071, 24.926073, 17.571516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987177, 24.975788, 17.734619>,  <31.705685, 25.058647, 18.006458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987177, 24.975788, 17.734619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330440, -0.942225, -0.054972,
		-0.628948, 0.263253, -0.731520,
		0.703728, -0.207149, -0.679600,
		32.198296, 24.913643, 17.530739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345457, 24.649633, 17.539883>,  <31.705685, 25.058647, 18.006458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345457, 24.649633, 17.539883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734577, 24.600368, 17.461407>,  <31.968050, 24.570808, 17.414322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.734577, 24.600368, 17.461407>,  <31.345457, 24.649633, 17.539883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734577, 24.600368, 17.461407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103257, -0.988699, 0.108685,
		-0.207356, -0.085471, -0.974524,
		0.972800, -0.123163, -0.196187,
		32.026417, 24.563419, 17.402550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630444, 24.781721, 17.307549>,  <31.345457, 24.649633, 17.539883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630444, 24.781721, 17.307549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278473, 24.660202, 17.453663>,  <30.067289, 24.587290, 17.541330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278473, 24.660202, 17.453663>,  <30.630444, 24.781721, 17.307549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278473, 24.660202, 17.453663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106787, 0.875640, 0.471011,
		-0.462950, 0.375448, -0.802942,
		-0.879929, -0.303798, 0.365284,
		30.014494, 24.569063, 17.563248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244602, 25.353558, 17.234327>,  <30.630444, 24.781721, 17.307549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244602, 25.353558, 17.234327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.046890, 25.121944, 17.493683>,  <29.928263, 24.982975, 17.649296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.046890, 25.121944, 17.493683>,  <30.244602, 25.353558, 17.234327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046890, 25.121944, 17.493683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180672, 0.798010, 0.574925,
		-0.850320, 0.167029, -0.499056,
		-0.494280, -0.579035, 0.648387,
		29.898605, 24.948235, 17.688198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728769, 25.667110, 17.270494>,  <30.244602, 25.353558, 17.234327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728769, 25.667110, 17.270494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.707695, 25.448448, 17.604774>,  <29.695051, 25.317251, 17.805342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.707695, 25.448448, 17.604774>,  <29.728769, 25.667110, 17.270494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707695, 25.448448, 17.604774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364934, 0.789519, 0.493441,
		-0.929542, -0.278978, -0.241088,
		-0.052684, -0.546655, 0.835699,
		29.691891, 25.284452, 17.855484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024704, 25.758814, 17.528969>,  <29.728769, 25.667110, 17.270494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024704, 25.758814, 17.528969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237730, 25.657051, 17.851868>,  <29.365545, 25.595993, 18.045607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237730, 25.657051, 17.851868>,  <29.024704, 25.758814, 17.528969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237730, 25.657051, 17.851868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338248, 0.810311, 0.478524,
		-0.775863, -0.527895, 0.345491,
		0.532565, -0.254407, 0.807249,
		29.397499, 25.580729, 18.094042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579657, 25.742710, 18.057810>,  <29.024704, 25.758814, 17.528969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579657, 25.742710, 18.057810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950531, 25.795124, 18.198185>,  <29.173056, 25.826572, 18.282410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.950531, 25.795124, 18.198185>,  <28.579657, 25.742710, 18.057810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950531, 25.795124, 18.198185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262062, 0.896308, 0.357709,
		-0.267675, -0.423630, 0.865383,
		0.927186, 0.131034, 0.350937,
		29.228687, 25.834435, 18.303467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553509, 26.048172, 18.725906>,  <28.579657, 25.742710, 18.057810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553509, 26.048172, 18.725906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.934576, 26.109222, 18.620735>,  <29.163216, 26.145853, 18.557632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.934576, 26.109222, 18.620735>,  <28.553509, 26.048172, 18.725906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934576, 26.109222, 18.620735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071395, 0.952978, 0.294511,
		0.295514, -0.261799, 0.918767,
		0.952667, 0.152628, -0.262927,
		29.220377, 26.155010, 18.541857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978664, 26.321869, 19.354931>,  <28.553509, 26.048172, 18.725906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978664, 26.321869, 19.354931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158875, 26.470581, 19.030262>,  <29.267000, 26.559809, 18.835461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158875, 26.470581, 19.030262>,  <28.978664, 26.321869, 19.354931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158875, 26.470581, 19.030262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098768, 0.924340, 0.368565,
		0.887283, -0.085881, 0.453159,
		0.450525, 0.371779, -0.811669,
		29.294031, 26.582115, 18.786760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504341, 26.719957, 19.587561>,  <28.978664, 26.321869, 19.354931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504341, 26.719957, 19.587561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434748, 26.842125, 19.213085>,  <29.392992, 26.915426, 18.988400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434748, 26.842125, 19.213085>,  <29.504341, 26.719957, 19.587561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434748, 26.842125, 19.213085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040877, 0.947629, 0.316747,
		0.983900, 0.093378, -0.152388,
		-0.173985, 0.305418, -0.936189,
		29.382553, 26.933750, 18.932228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868423, 27.329424, 19.581314>,  <29.504341, 26.719957, 19.587561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868423, 27.329424, 19.581314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629374, 27.350372, 19.261288>,  <29.485945, 27.362942, 19.069273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629374, 27.350372, 19.261288>,  <29.868423, 27.329424, 19.581314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629374, 27.350372, 19.261288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078732, 0.989209, 0.123563,
		0.797902, 0.136834, -0.587051,
		-0.597623, 0.052372, -0.800065,
		29.450087, 27.366083, 19.021269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072618, 27.966671, 19.231741>,  <29.868423, 27.329424, 19.581314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072618, 27.966671, 19.231741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.707113, 27.879105, 19.094852>,  <29.487810, 27.826565, 19.012718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.707113, 27.879105, 19.094852>,  <30.072618, 27.966671, 19.231741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707113, 27.879105, 19.094852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215114, 0.975331, -0.049541,
		0.344626, 0.028348, -0.938312,
		-0.913761, -0.218917, -0.342223,
		29.432985, 27.813429, 18.992186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073111, 28.439817, 18.647957>,  <30.072618, 27.966671, 19.231741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073111, 28.439817, 18.647957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.700563, 28.357533, 18.768112>,  <29.477036, 28.308161, 18.840206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.700563, 28.357533, 18.768112>,  <30.073111, 28.439817, 18.647957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700563, 28.357533, 18.768112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242497, 0.965932, -0.090385,
		-0.271562, -0.157025, -0.949525,
		-0.931369, -0.205712, 0.300389,
		29.421152, 28.295818, 18.858229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673643, 28.900642, 18.265797>,  <30.073111, 28.439817, 18.647957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673643, 28.900642, 18.265797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.404882, 28.778706, 18.535793>,  <29.243626, 28.705544, 18.697792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.404882, 28.778706, 18.535793>,  <29.673643, 28.900642, 18.265797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404882, 28.778706, 18.535793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411811, 0.911268, 0.001625,
		-0.615595, -0.276878, -0.737822,
		-0.671904, -0.304843, 0.674993,
		29.203312, 28.687252, 18.738291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990068, 29.167807, 18.049021>,  <29.673643, 28.900642, 18.265797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990068, 29.167807, 18.049021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940218, 29.088253, 18.437847>,  <28.910307, 29.040522, 18.671143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940218, 29.088253, 18.437847>,  <28.990068, 29.167807, 18.049021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940218, 29.088253, 18.437847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486136, 0.866294, 0.114915,
		-0.864951, -0.458236, -0.204646,
		-0.124626, -0.198882, 0.972067,
		28.902830, 29.028589, 18.729467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317635, 29.144653, 18.172882>,  <28.990068, 29.167807, 18.049021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317635, 29.144653, 18.172882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.475119, 29.258175, 18.522614>,  <28.569611, 29.326288, 18.732452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.475119, 29.258175, 18.522614>,  <28.317635, 29.144653, 18.172882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475119, 29.258175, 18.522614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671831, 0.738023, 0.062969,
		-0.627402, -0.612191, 0.481236,
		0.393712, 0.283802, 0.874326,
		28.593233, 29.343315, 18.784912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.329357, 42.052086, 22.746416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.614578, 41.974491, 23.015911>,  <40.785713, 41.927933, 23.177608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.614578, 41.974491, 23.015911>,  <40.329357, 42.052086, 22.746416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614578, 41.974491, 23.015911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000797, -0.960733, -0.277472,
		0.701108, 0.198390, -0.684901,
		0.713055, -0.193992, 0.673736,
		40.828495, 41.916294, 23.218033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934444, 41.638302, 22.444967>,  <40.329357, 42.052086, 22.746416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934444, 41.638302, 22.444967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.935532, 41.572498, 22.839516>,  <40.936184, 41.533016, 23.076244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.935532, 41.572498, 22.839516>,  <40.934444, 41.638302, 22.444967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935532, 41.572498, 22.839516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116391, -0.979619, -0.163706,
		0.993200, 0.115249, 0.016486,
		0.002717, -0.164512, 0.986371,
		40.936348, 41.523144, 23.135427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556961, 41.265530, 22.520199>,  <40.934444, 41.638302, 22.444967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556961, 41.265530, 22.520199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.287350, 41.187519, 22.805195>,  <41.125584, 41.140713, 22.976192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.287350, 41.187519, 22.805195>,  <41.556961, 41.265530, 22.520199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287350, 41.187519, 22.805195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020263, -0.969036, -0.246085,
		0.738424, -0.151432, 0.657113,
		-0.674032, -0.195030, 0.712492,
		41.085140, 41.129009, 23.018942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814873, 40.676521, 22.731298>,  <41.556961, 41.265530, 22.520199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814873, 40.676521, 22.731298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.458458, 40.669811, 22.912750>,  <41.244610, 40.665787, 23.021622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.458458, 40.669811, 22.912750>,  <41.814873, 40.676521, 22.731298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458458, 40.669811, 22.912750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063990, -0.984696, -0.162108,
		0.449405, -0.173471, 0.876323,
		-0.891033, -0.016777, 0.453628,
		41.191147, 40.664780, 23.048838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757420, 40.036308, 23.050097>,  <41.814873, 40.676521, 22.731298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757420, 40.036308, 23.050097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366291, 40.118061, 23.068375>,  <41.131615, 40.167110, 23.079342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366291, 40.118061, 23.068375>,  <41.757420, 40.036308, 23.050097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366291, 40.118061, 23.068375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209244, -0.962529, -0.172493,
		0.008728, -0.178229, 0.983950,
		-0.977824, 0.204380, 0.045694,
		41.072945, 40.179375, 23.082083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499046, 39.634361, 23.532591>,  <41.757420, 40.036308, 23.050097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499046, 39.634361, 23.532591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.172352, 39.732510, 23.323692>,  <40.976337, 39.791401, 23.198353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.172352, 39.732510, 23.323692>,  <41.499046, 39.634361, 23.532591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172352, 39.732510, 23.323692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193629, -0.969145, -0.152534,
		-0.543558, -0.023458, 0.839044,
		-0.816733, 0.245374, -0.522245,
		40.927334, 39.806122, 23.167019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934544, 39.182766, 23.761415>,  <41.499046, 39.634361, 23.532591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934544, 39.182766, 23.761415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.815380, 39.315933, 23.403553>,  <40.743881, 39.395836, 23.188835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.815380, 39.315933, 23.403553>,  <40.934544, 39.182766, 23.761415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815380, 39.315933, 23.403553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253460, -0.931160, -0.262106,
		-0.920331, 0.148677, 0.361783,
		-0.297908, 0.332921, -0.894658,
		40.726006, 39.415810, 23.135155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343174, 38.875027, 23.528027>,  <40.934544, 39.182766, 23.761415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343174, 38.875027, 23.528027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447018, 39.011551, 23.166672>,  <40.509323, 39.093464, 22.949858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447018, 39.011551, 23.166672>,  <40.343174, 38.875027, 23.528027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447018, 39.011551, 23.166672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142574, -0.911665, -0.385409,
		-0.955131, 0.228856, -0.188016,
		0.259611, 0.341310, -0.903388,
		40.524902, 39.113945, 22.895655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822403, 38.661636, 23.089317>,  <40.343174, 38.875027, 23.528027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822403, 38.661636, 23.089317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118961, 38.722412, 22.827862>,  <40.296898, 38.758877, 22.670988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.118961, 38.722412, 22.827862>,  <39.822403, 38.661636, 23.089317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118961, 38.722412, 22.827862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112097, -0.932306, -0.343860,
		-0.661636, 0.328208, -0.674179,
		0.741399, 0.151937, -0.653638,
		40.341381, 38.767994, 22.631771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584698, 38.266418, 22.514664>,  <39.822403, 38.661636, 23.089317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584698, 38.266418, 22.514664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959621, 38.368629, 22.419872>,  <40.184574, 38.429955, 22.362997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959621, 38.368629, 22.419872>,  <39.584698, 38.266418, 22.514664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959621, 38.368629, 22.419872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084366, -0.826142, -0.557110,
		-0.338131, 0.502192, -0.795908,
		0.937310, 0.255524, -0.236977,
		40.240814, 38.445286, 22.348780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604851, 38.107601, 21.807249>,  <39.584698, 38.266418, 22.514664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604851, 38.107601, 21.807249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976559, 38.121567, 21.954346>,  <40.199585, 38.129948, 22.042604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976559, 38.121567, 21.954346>,  <39.604851, 38.107601, 21.807249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976559, 38.121567, 21.954346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190561, -0.898140, -0.396271,
		0.316448, 0.438320, -0.841271,
		0.929273, 0.034914, 0.367741,
		40.255341, 38.132042, 22.064669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116951, 37.987423, 21.263531>,  <39.604851, 38.107601, 21.807249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116951, 37.987423, 21.263531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293369, 37.889664, 21.608959>,  <40.399220, 37.831009, 21.816216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293369, 37.889664, 21.608959>,  <40.116951, 37.987423, 21.263531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293369, 37.889664, 21.608959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079191, -0.947859, -0.308694,
		0.893986, 0.204533, -0.398691,
		0.441041, -0.244395, 0.863570,
		40.425682, 37.816345, 21.868031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702839, 37.560108, 21.167252>,  <40.116951, 37.987423, 21.263531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702839, 37.560108, 21.167252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624500, 37.482571, 21.551765>,  <40.577499, 37.436047, 21.782475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624500, 37.482571, 21.551765>,  <40.702839, 37.560108, 21.167252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624500, 37.482571, 21.551765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056755, -0.980865, -0.186234,
		0.978991, 0.018085, 0.203098,
		-0.195844, -0.193848, 0.961284,
		40.565746, 37.424416, 21.840151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012081, 37.004402, 21.314034>,  <40.702839, 37.560108, 21.167252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012081, 37.004402, 21.314034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.771770, 36.976055, 21.632542>,  <40.627586, 36.959049, 21.823647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.771770, 36.976055, 21.632542>,  <41.012081, 37.004402, 21.314034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771770, 36.976055, 21.632542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035784, -0.997449, -0.061771,
		0.798618, -0.008616, 0.601776,
		-0.600773, -0.070865, 0.796273,
		40.591537, 36.954796, 21.871424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317978, 36.531605, 21.528276>,  <41.012081, 37.004402, 21.314034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317978, 36.531605, 21.528276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963814, 36.526249, 21.714123>,  <40.751316, 36.523037, 21.825630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.963814, 36.526249, 21.714123>,  <41.317978, 36.531605, 21.528276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963814, 36.526249, 21.714123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019330, -0.997660, -0.065585,
		0.464405, -0.067050, 0.883081,
		-0.885412, -0.013388, 0.464614,
		40.698189, 36.522232, 21.853508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289127, 35.967808, 21.870523>,  <41.317978, 36.531605, 21.528276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289127, 35.967808, 21.870523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901958, 36.061714, 21.906334>,  <40.669659, 36.118057, 21.927820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901958, 36.061714, 21.906334>,  <41.289127, 35.967808, 21.870523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901958, 36.061714, 21.906334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237818, -0.970988, -0.024988,
		0.081064, -0.045478, 0.995671,
		-0.967921, 0.234762, 0.089527,
		40.611584, 36.132141, 21.933191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083622, 35.518578, 22.342743>,  <41.289127, 35.967808, 21.870523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083622, 35.518578, 22.342743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753956, 35.636818, 22.149513>,  <40.556156, 35.707764, 22.033575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753956, 35.636818, 22.149513>,  <41.083622, 35.518578, 22.342743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753956, 35.636818, 22.149513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407412, -0.901955, 0.143154,
		-0.393395, 0.314794, 0.863797,
		-0.824170, 0.295605, -0.483075,
		40.506706, 35.725498, 22.004591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514839, 35.284702, 22.775627>,  <41.083622, 35.518578, 22.342743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514839, 35.284702, 22.775627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.379581, 35.350750, 22.405029>,  <40.298428, 35.390377, 22.182671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.379581, 35.350750, 22.405029>,  <40.514839, 35.284702, 22.775627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379581, 35.350750, 22.405029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394767, -0.918572, -0.019629,
		-0.854294, 0.359113, 0.375792,
		-0.338143, 0.165119, -0.926496,
		40.278137, 35.400284, 22.127081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978996, 34.963406, 22.837002>,  <40.514839, 35.284702, 22.775627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978996, 34.963406, 22.837002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014656, 34.994148, 22.439781>,  <40.036053, 35.012592, 22.201448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014656, 34.994148, 22.439781>,  <39.978996, 34.963406, 22.837002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014656, 34.994148, 22.439781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478755, -0.870982, -0.110384,
		-0.873411, 0.485267, -0.040850,
		0.089145, 0.076853, -0.993049,
		40.041401, 35.017204, 22.141867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253815, 34.913376, 22.555031>,  <39.978996, 34.963406, 22.837002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253815, 34.913376, 22.555031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516476, 34.808838, 22.272045>,  <39.674072, 34.746113, 22.102253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516476, 34.808838, 22.272045>,  <39.253815, 34.913376, 22.555031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516476, 34.808838, 22.272045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604643, -0.743107, -0.286702,
		-0.450793, 0.616027, -0.645985,
		0.656652, -0.261347, -0.707464,
		39.713470, 34.730434, 22.059805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778889, 34.570911, 22.034447>,  <39.253815, 34.913376, 22.555031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778889, 34.570911, 22.034447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145496, 34.464710, 21.914783>,  <39.365463, 34.400990, 21.842985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.145496, 34.464710, 21.914783>,  <38.778889, 34.570911, 22.034447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145496, 34.464710, 21.914783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375998, -0.826991, -0.417986,
		-0.136423, 0.495576, -0.857784,
		0.916523, -0.265502, -0.299156,
		39.420452, 34.385059, 21.825037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174870, 34.621941, 22.447186>,  <38.778889, 34.570911, 22.034447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174870, 34.621941, 22.447186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848351, 34.782635, 22.281162>,  <37.652439, 34.879051, 22.181549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848351, 34.782635, 22.281162>,  <38.174870, 34.621941, 22.447186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848351, 34.782635, 22.281162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065796, 0.778532, 0.624146,
		0.573878, 0.482177, -0.661943,
		-0.816293, 0.401737, -0.415057,
		37.603462, 34.903156, 22.156645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423229, 35.256771, 22.191814>,  <38.174870, 34.621941, 22.447186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423229, 35.256771, 22.191814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028412, 35.291332, 22.245892>,  <37.791523, 35.312069, 22.278337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028412, 35.291332, 22.245892>,  <38.423229, 35.256771, 22.191814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028412, 35.291332, 22.245892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152565, 0.766255, 0.624161,
		-0.049663, 0.636700, -0.769511,
		-0.987045, 0.086403, 0.135192,
		37.732300, 35.317253, 22.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185501, 35.922142, 21.940516>,  <38.423229, 35.256771, 22.191814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185501, 35.922142, 21.940516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920765, 35.806194, 22.217049>,  <37.761921, 35.736626, 22.382969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920765, 35.806194, 22.217049>,  <38.185501, 35.922142, 21.940516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920765, 35.806194, 22.217049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137621, 0.859559, 0.492158,
		-0.736903, 0.420873, -0.529000,
		-0.661842, -0.289871, 0.691332,
		37.722214, 35.719234, 22.424448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882515, 36.445492, 21.988609>,  <38.185501, 35.922142, 21.940516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882515, 36.445492, 21.988609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753052, 36.245552, 22.309956>,  <37.675373, 36.125587, 22.502764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753052, 36.245552, 22.309956>,  <37.882515, 36.445492, 21.988609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753052, 36.245552, 22.309956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033340, 0.854564, 0.518274,
		-0.945586, 0.140960, -0.293254,
		-0.323660, -0.499850, 0.803364,
		37.655952, 36.095596, 22.550964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217434, 36.746616, 22.125717>,  <37.882515, 36.445492, 21.988609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217434, 36.746616, 22.125717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324566, 36.592949, 22.479141>,  <37.388847, 36.500748, 22.691196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324566, 36.592949, 22.479141>,  <37.217434, 36.746616, 22.125717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324566, 36.592949, 22.479141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141025, 0.891558, 0.430390,
		-0.953089, -0.239877, 0.184612,
		0.267833, -0.384165, 0.883563,
		37.404915, 36.477699, 22.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722580, 37.069946, 22.517950>,  <37.217434, 36.746616, 22.125717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722580, 37.069946, 22.517950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018341, 36.952942, 22.760509>,  <37.195797, 36.882740, 22.906046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018341, 36.952942, 22.760509>,  <36.722580, 37.069946, 22.517950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018341, 36.952942, 22.760509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059460, 0.868797, 0.491585,
		-0.670631, -0.399537, 0.625000,
		0.739404, -0.292510, 0.606399,
		37.240162, 36.865189, 22.942429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595543, 37.338699, 23.149511>,  <36.722580, 37.069946, 22.517950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595543, 37.338699, 23.149511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980183, 37.249279, 23.213196>,  <37.210968, 37.195625, 23.251408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980183, 37.249279, 23.213196>,  <36.595543, 37.338699, 23.149511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980183, 37.249279, 23.213196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099545, 0.824695, 0.556748,
		-0.255766, -0.519520, 0.815281,
		0.961600, -0.223554, 0.159214,
		37.268661, 37.182213, 23.260960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703682, 37.400578, 23.913919>,  <36.595543, 37.338699, 23.149511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703682, 37.400578, 23.913919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068867, 37.411694, 23.751083>,  <37.287979, 37.418365, 23.653381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068867, 37.411694, 23.751083>,  <36.703682, 37.400578, 23.913919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068867, 37.411694, 23.751083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240902, 0.768530, 0.592729,
		0.329336, -0.639209, 0.694945,
		0.912964, 0.027794, -0.407091,
		37.342754, 37.420033, 23.628956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178795, 37.715439, 24.490568>,  <36.703682, 37.400578, 23.913919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178795, 37.715439, 24.490568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426147, 37.701286, 24.176537>,  <37.574558, 37.692795, 23.988117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426147, 37.701286, 24.176537>,  <37.178795, 37.715439, 24.490568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426147, 37.701286, 24.176537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515207, 0.772607, 0.370998,
		0.593431, -0.633898, 0.495997,
		0.618386, -0.035379, -0.785078,
		37.611664, 37.690674, 23.941013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838161, 37.528519, 24.671635>,  <37.178795, 37.715439, 24.490568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838161, 37.528519, 24.671635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852379, 37.748772, 24.338039>,  <37.860909, 37.880924, 24.137882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852379, 37.748772, 24.338039>,  <37.838161, 37.528519, 24.671635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852379, 37.748772, 24.338039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522012, 0.701394, 0.485336,
		0.852197, -0.452601, -0.262511,
		0.035540, 0.550636, -0.833989,
		37.863041, 37.913963, 24.087843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424366, 37.802437, 24.704477>,  <37.838161, 37.528519, 24.671635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424366, 37.802437, 24.704477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250393, 38.050140, 24.442989>,  <38.146008, 38.198761, 24.286097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250393, 38.050140, 24.442989>,  <38.424366, 37.802437, 24.704477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250393, 38.050140, 24.442989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586834, 0.745572, 0.315831,
		0.682977, -0.246260, -0.687677,
		-0.434936, 0.619257, -0.653722,
		38.119911, 38.235916, 24.246872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019451, 38.332630, 24.536545>,  <38.424366, 37.802437, 24.704477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019451, 38.332630, 24.536545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668297, 38.481297, 24.415756>,  <38.457603, 38.570496, 24.343283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668297, 38.481297, 24.415756>,  <39.019451, 38.332630, 24.536545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668297, 38.481297, 24.415756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348809, 0.928335, 0.128552,
		0.328109, 0.007523, -0.944609,
		-0.877881, 0.371668, -0.301972,
		38.404934, 38.592796, 24.325165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103333, 39.012665, 24.179083>,  <39.019451, 38.332630, 24.536545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103333, 39.012665, 24.179083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.717506, 39.030895, 24.283039>,  <38.486012, 39.041832, 24.345413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.717506, 39.030895, 24.283039>,  <39.103333, 39.012665, 24.179083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717506, 39.030895, 24.283039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077100, 0.990664, 0.112428,
		-0.252343, 0.128482, -0.959070,
		-0.964561, 0.045574, 0.259893,
		38.428139, 39.044567, 24.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770447, 39.529816, 23.710150>,  <39.103333, 39.012665, 24.179083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770447, 39.529816, 23.710150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537834, 39.519379, 24.035393>,  <38.398266, 39.513119, 24.230539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.537834, 39.519379, 24.035393>,  <38.770447, 39.529816, 23.710150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537834, 39.519379, 24.035393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143457, 0.980534, 0.134060,
		-0.800777, 0.194606, -0.566466,
		-0.581529, -0.026088, 0.813107,
		38.363377, 39.511551, 24.279325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417141, 40.196796, 23.722433>,  <38.770447, 39.529816, 23.710150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417141, 40.196796, 23.722433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357147, 40.057934, 24.092728>,  <38.321152, 39.974617, 24.314905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357147, 40.057934, 24.092728>,  <38.417141, 40.196796, 23.722433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357147, 40.057934, 24.092728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223569, 0.900167, 0.373787,
		-0.963079, 0.263029, -0.057400,
		-0.149986, -0.347154, 0.925737,
		38.312153, 39.953789, 24.370449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980045, 40.636787, 23.986866>,  <38.417141, 40.196796, 23.722433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980045, 40.636787, 23.986866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180477, 40.458496, 24.283581>,  <38.300735, 40.351521, 24.461611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180477, 40.458496, 24.283581>,  <37.980045, 40.636787, 23.986866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180477, 40.458496, 24.283581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209319, 0.894131, 0.395873,
		-0.839708, -0.043092, 0.541326,
		0.501076, -0.445728, 0.741789,
		38.330799, 40.324780, 24.506117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870945, 41.047516, 24.610699>,  <37.980045, 40.636787, 23.986866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870945, 41.047516, 24.610699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203529, 40.845673, 24.703686>,  <38.403080, 40.724567, 24.759478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203529, 40.845673, 24.703686>,  <37.870945, 41.047516, 24.610699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203529, 40.845673, 24.703686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369461, 0.814692, 0.446962,
		-0.414931, -0.285744, 0.863819,
		0.831463, -0.504606, 0.232470,
		38.452969, 40.694290, 24.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985554, 41.151325, 25.249920>,  <37.870945, 41.047516, 24.610699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985554, 41.151325, 25.249920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.342846, 41.067001, 25.091076>,  <38.557220, 41.016407, 24.995770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.342846, 41.067001, 25.091076>,  <37.985554, 41.151325, 25.249920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342846, 41.067001, 25.091076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349816, 0.880721, 0.319311,
		0.282430, -0.424134, 0.860432,
		0.893232, -0.210810, -0.397110,
		38.610817, 41.003757, 24.971943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459343, 41.541870, 25.673155>,  <37.985554, 41.151325, 25.249920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459343, 41.541870, 25.673155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674175, 41.443104, 25.350521>,  <38.803074, 41.383846, 25.156940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674175, 41.443104, 25.350521>,  <38.459343, 41.541870, 25.673155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674175, 41.443104, 25.350521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552282, 0.825689, 0.114984,
		0.637598, -0.507218, 0.579826,
		0.537078, -0.246914, -0.806585,
		38.835300, 41.369030, 25.108545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102825, 41.841423, 25.857040>,  <38.459343, 41.541870, 25.673155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102825, 41.841423, 25.857040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.162830, 41.785465, 25.465546>,  <39.198833, 41.751888, 25.230648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.162830, 41.785465, 25.465546>,  <39.102825, 41.841423, 25.857040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162830, 41.785465, 25.465546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633978, 0.773236, -0.013353,
		0.758663, -0.618494, 0.204686,
		0.150012, -0.139896, -0.978737,
		39.207832, 41.743496, 25.171925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782032, 41.770233, 25.748226>,  <39.102825, 41.841423, 25.857040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782032, 41.770233, 25.748226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.641380, 41.902843, 25.398037>,  <39.556992, 41.982410, 25.187923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.641380, 41.902843, 25.398037>,  <39.782032, 41.770233, 25.748226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641380, 41.902843, 25.398037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550082, 0.829880, 0.093324,
		0.757476, -0.448767, -0.474172,
		-0.351625, 0.331524, -0.875472,
		39.535892, 42.002300, 25.135395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.626995, 23.138491, 18.496477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917536, 23.134266, 18.771374>,  <28.091860, 23.131731, 18.936312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.917536, 23.134266, 18.771374>,  <27.626995, 23.138491, 18.496477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917536, 23.134266, 18.771374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245432, -0.929977, -0.273688,
		0.642011, 0.367465, -0.672898,
		0.726351, -0.010561, 0.687243,
		28.135441, 23.131098, 18.977547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142183, 22.640570, 18.180651>,  <27.626995, 23.138491, 18.496477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142183, 22.640570, 18.180651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247169, 22.675953, 18.565002>,  <28.310162, 22.697182, 18.795614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.247169, 22.675953, 18.565002>,  <28.142183, 22.640570, 18.180651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247169, 22.675953, 18.565002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186224, -0.981713, 0.039507,
		0.946802, 0.168570, -0.274137,
		0.262464, 0.088456, 0.960879,
		28.325909, 22.702490, 18.853266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765759, 22.365824, 18.216270>,  <28.142183, 22.640570, 18.180651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765759, 22.365824, 18.216270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.608128, 22.322437, 18.581333>,  <28.513550, 22.296406, 18.800371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.608128, 22.322437, 18.581333>,  <28.765759, 22.365824, 18.216270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608128, 22.322437, 18.581333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153876, -0.986782, -0.050833,
		0.906105, 0.120404, 0.405558,
		-0.394077, -0.108465, 0.912655,
		28.489904, 22.289898, 18.855129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202068, 21.901127, 18.522268>,  <28.765759, 22.365824, 18.216270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202068, 21.901127, 18.522268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904755, 21.905010, 18.789829>,  <28.726366, 21.907339, 18.950365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.904755, 21.905010, 18.789829>,  <29.202068, 21.901127, 18.522268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904755, 21.905010, 18.789829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017384, -0.999277, 0.033817,
		0.668747, 0.036764, 0.742580,
		-0.743286, 0.009706, 0.668903,
		28.681768, 21.907923, 18.990499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426270, 21.520542, 19.093899>,  <29.202068, 21.901127, 18.522268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426270, 21.520542, 19.093899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.026430, 21.531849, 19.093983>,  <28.786526, 21.538633, 19.094034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.026430, 21.531849, 19.093983>,  <29.426270, 21.520542, 19.093899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026430, 21.531849, 19.093983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027385, -0.970172, 0.240866,
		0.007015, 0.240764, 0.970558,
		-0.999600, 0.028269, 0.000212,
		28.726549, 21.540329, 19.094046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218262, 21.023960, 19.546627>,  <29.426270, 21.520542, 19.093899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218262, 21.023960, 19.546627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.882193, 21.098309, 19.342838>,  <28.680552, 21.142918, 19.220564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.882193, 21.098309, 19.342838>,  <29.218262, 21.023960, 19.546627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882193, 21.098309, 19.342838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177578, -0.981932, -0.065391,
		-0.512422, 0.035532, 0.857998,
		-0.840172, 0.185869, -0.509474,
		28.630140, 21.154070, 19.189997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611023, 20.733644, 19.905846>,  <29.218262, 21.023960, 19.546627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611023, 20.733644, 19.905846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.537464, 20.775173, 19.514866>,  <28.493330, 20.800091, 19.280279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.537464, 20.775173, 19.514866>,  <28.611023, 20.733644, 19.905846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537464, 20.775173, 19.514866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143625, -0.986572, -0.077769,
		-0.972396, 0.126085, 0.196337,
		-0.183895, 0.103822, -0.977448,
		28.482296, 20.806320, 19.221632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044893, 20.281422, 19.823477>,  <28.611023, 20.733644, 19.905846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044893, 20.281422, 19.823477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.162369, 20.335007, 19.444889>,  <28.232855, 20.367157, 19.217737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.162369, 20.335007, 19.444889>,  <28.044893, 20.281422, 19.823477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162369, 20.335007, 19.444889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010763, -0.989605, -0.143406,
		-0.955840, 0.052303, -0.289196,
		0.293691, 0.133961, -0.946467,
		28.250477, 20.375195, 19.160950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579433, 19.911806, 19.471395>,  <28.044893, 20.281422, 19.823477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579433, 19.911806, 19.471395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.893694, 19.965931, 19.229919>,  <28.082251, 19.998405, 19.085033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.893694, 19.965931, 19.229919>,  <27.579433, 19.911806, 19.471395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893694, 19.965931, 19.229919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092371, -0.990507, -0.101799,
		-0.611732, 0.024215, -0.790694,
		0.785653, 0.135311, -0.603688,
		28.129391, 20.006525, 19.048813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511938, 19.456089, 18.958735>,  <27.579433, 19.911806, 19.471395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511938, 19.456089, 18.958735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.898998, 19.549603, 18.920788>,  <28.131235, 19.605711, 18.898020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.898998, 19.549603, 18.920788>,  <27.511938, 19.456089, 18.958735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898998, 19.549603, 18.920788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222156, -0.967744, -0.118821,
		-0.119586, 0.093902, -0.988373,
		0.967650, 0.233782, -0.094868,
		28.189293, 19.619738, 18.892328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669722, 19.184147, 18.349197>,  <27.511938, 19.456089, 18.958735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669722, 19.184147, 18.349197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.002710, 19.237247, 18.564369>,  <28.202503, 19.269108, 18.693472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.002710, 19.237247, 18.564369>,  <27.669722, 19.184147, 18.349197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002710, 19.237247, 18.564369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240285, -0.961324, -0.134609,
		0.499257, 0.241315, -0.832172,
		0.832470, 0.132753, 0.537932,
		28.252451, 19.277073, 18.725748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193571, 18.818392, 18.024673>,  <27.669722, 19.184147, 18.349197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193571, 18.818392, 18.024673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.355070, 18.851738, 18.389099>,  <28.451969, 18.871746, 18.607754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.355070, 18.851738, 18.389099>,  <28.193571, 18.818392, 18.024673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355070, 18.851738, 18.389099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271217, -0.961981, -0.032169,
		0.873744, 0.260084, -0.411008,
		0.403748, 0.083365, 0.911064,
		28.476194, 18.876747, 18.662418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950552, 18.706625, 18.046417>,  <28.193571, 18.818392, 18.024673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950552, 18.706625, 18.046417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.794550, 18.615345, 18.403252>,  <28.700949, 18.560577, 18.617353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.794550, 18.615345, 18.403252>,  <28.950552, 18.706625, 18.046417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794550, 18.615345, 18.403252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361647, -0.928918, -0.079517,
		0.846821, 0.291609, 0.444812,
		-0.390006, -0.228201, 0.892087,
		28.677547, 18.546885, 18.670877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404028, 19.131693, 17.698616>,  <28.950552, 18.706625, 18.046417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404028, 19.131693, 17.698616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761181, 19.003136, 17.572464>,  <29.975473, 18.926001, 17.496773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761181, 19.003136, 17.572464>,  <29.404028, 19.131693, 17.698616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761181, 19.003136, 17.572464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205780, 0.914225, -0.349066,
		0.400515, 0.246777, 0.882433,
		0.892884, -0.321394, -0.315379,
		30.029047, 18.906717, 17.477850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913029, 19.655689, 17.943316>,  <29.404028, 19.131693, 17.698616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913029, 19.655689, 17.943316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.012352, 19.475101, 17.600498>,  <30.071945, 19.366749, 17.394808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.012352, 19.475101, 17.600498>,  <29.913029, 19.655689, 17.943316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012352, 19.475101, 17.600498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029726, 0.887885, -0.459105,
		0.968225, 0.088522, 0.233888,
		0.248306, -0.451469, -0.857041,
		30.086843, 19.339661, 17.343386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503761, 19.942842, 17.683289>,  <29.913029, 19.655689, 17.943316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503761, 19.942842, 17.683289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353704, 19.775387, 17.352470>,  <30.263670, 19.674913, 17.153978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353704, 19.775387, 17.352470>,  <30.503761, 19.942842, 17.683289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353704, 19.775387, 17.352470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092493, 0.870851, -0.482766,
		0.922341, -0.257603, -0.287973,
		-0.375143, -0.418639, -0.827048,
		30.241161, 19.649796, 17.104357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937828, 20.234715, 17.086283>,  <30.503761, 19.942842, 17.683289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937828, 20.234715, 17.086283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.600840, 20.073944, 16.942787>,  <30.398645, 19.977482, 16.856689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.600840, 20.073944, 16.942787>,  <30.937828, 20.234715, 17.086283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600840, 20.073944, 16.942787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069015, 0.740919, -0.668039,
		0.534299, -0.538047, -0.651943,
		-0.842474, -0.401927, -0.358739,
		30.348097, 19.953365, 16.835165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015825, 20.318747, 16.450117>,  <30.937828, 20.234715, 17.086283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015825, 20.318747, 16.450117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621605, 20.257530, 16.479153>,  <30.385073, 20.220800, 16.496574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621605, 20.257530, 16.479153>,  <31.015825, 20.318747, 16.450117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621605, 20.257530, 16.479153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162214, 0.729433, -0.664541,
		0.048754, -0.666713, -0.743718,
		-0.985551, -0.153041, 0.072588,
		30.325939, 20.211618, 16.500929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746305, 20.584911, 15.895996>,  <31.015825, 20.318747, 16.450117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746305, 20.584911, 15.895996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436102, 20.570194, 16.148102>,  <30.249981, 20.561365, 16.299366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436102, 20.570194, 16.148102>,  <30.746305, 20.584911, 15.895996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436102, 20.570194, 16.148102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189177, 0.965971, -0.176385,
		-0.602328, -0.256019, -0.756078,
		-0.775508, -0.036791, 0.630265,
		30.203449, 20.559156, 16.337181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207907, 20.975660, 15.528748>,  <30.746305, 20.584911, 15.895996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207907, 20.975660, 15.528748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102453, 20.960480, 15.914298>,  <30.039181, 20.951372, 16.145628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102453, 20.960480, 15.914298>,  <30.207907, 20.975660, 15.528748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102453, 20.960480, 15.914298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243294, 0.969537, -0.028372,
		-0.933437, -0.241985, -0.264836,
		-0.263634, -0.037950, 0.963876,
		30.023363, 20.949095, 16.203461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559639, 21.329773, 15.584044>,  <30.207907, 20.975660, 15.528748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559639, 21.329773, 15.584044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720503, 21.326080, 15.950253>,  <29.817022, 21.323866, 16.169979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720503, 21.326080, 15.950253>,  <29.559639, 21.329773, 15.584044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720503, 21.326080, 15.950253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389764, 0.903089, 0.180316,
		-0.828463, -0.429354, 0.359590,
		0.402162, -0.009230, 0.915522,
		29.841152, 21.323311, 16.224911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044737, 21.640800, 16.010500>,  <29.559639, 21.329773, 15.584044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044737, 21.640800, 16.010500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.382875, 21.677795, 16.220959>,  <29.585758, 21.699991, 16.347235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.382875, 21.677795, 16.220959>,  <29.044737, 21.640800, 16.010500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382875, 21.677795, 16.220959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282275, 0.913511, 0.292948,
		-0.453549, -0.396162, 0.798341,
		0.845348, 0.092486, 0.526149,
		29.636480, 21.705542, 16.378803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915367, 22.024010, 16.739910>,  <29.044737, 21.640800, 16.010500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915367, 22.024010, 16.739910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312176, 22.064838, 16.710323>,  <29.550261, 22.089334, 16.692572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.312176, 22.064838, 16.710323>,  <28.915367, 22.024010, 16.739910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312176, 22.064838, 16.710323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052957, 0.869967, 0.490258,
		0.114390, -0.482430, 0.868433,
		0.992023, 0.102070, -0.073967,
		29.609783, 22.095459, 16.688133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385271, 22.087957, 17.337435>,  <28.915367, 22.024010, 16.739910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385271, 22.087957, 17.337435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623301, 22.293159, 17.089981>,  <29.766119, 22.416281, 16.941509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623301, 22.293159, 17.089981>,  <29.385271, 22.087957, 17.337435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623301, 22.293159, 17.089981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056646, 0.741074, 0.669029,
		0.801671, -0.433166, 0.411935,
		0.595075, 0.513007, -0.618635,
		29.801823, 22.447062, 16.904390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890173, 22.463457, 17.774517>,  <29.385271, 22.087957, 17.337435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890173, 22.463457, 17.774517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.920475, 22.690285, 17.446445>,  <29.938656, 22.826382, 17.249603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.920475, 22.690285, 17.446445>,  <29.890173, 22.463457, 17.774517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920475, 22.690285, 17.446445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074236, 0.817053, 0.571764,
		0.994359, -0.104201, 0.019798,
		0.075755, 0.567069, -0.820179,
		29.943201, 22.860405, 17.200392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220737, 23.010260, 18.023668>,  <29.890173, 22.463457, 17.774517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220737, 23.010260, 18.023668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128071, 23.138180, 17.656178>,  <30.072472, 23.214931, 17.435682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128071, 23.138180, 17.656178>,  <30.220737, 23.010260, 18.023668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128071, 23.138180, 17.656178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136576, 0.945757, 0.294772,
		0.963160, -0.057188, -0.262776,
		-0.231665, 0.319802, -0.918726,
		30.058571, 23.234121, 17.380560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589390, 23.520420, 18.048315>,  <30.220737, 23.010260, 18.023668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589390, 23.520420, 18.048315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339678, 23.593494, 17.744499>,  <30.189850, 23.637339, 17.562210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339678, 23.593494, 17.744499>,  <30.589390, 23.520420, 18.048315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339678, 23.593494, 17.744499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062886, 0.957365, 0.281953,
		0.778664, 0.223783, -0.586178,
		-0.624282, 0.182684, -0.759538,
		30.152393, 23.648300, 17.516638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884821, 24.063168, 17.707964>,  <30.589390, 23.520420, 18.048315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884821, 24.063168, 17.707964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493917, 24.056705, 17.623394>,  <30.259375, 24.052828, 17.572653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493917, 24.056705, 17.623394>,  <30.884821, 24.063168, 17.707964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493917, 24.056705, 17.623394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075877, 0.957715, 0.277534,
		0.198000, 0.287266, -0.937163,
		-0.977261, -0.016157, -0.211424,
		30.200739, 24.051859, 17.559967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336985, 24.089041, 17.055841>,  <30.884821, 24.063168, 17.707964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336985, 24.089041, 17.055841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707809, 24.103195, 17.205135>,  <31.930304, 24.111689, 17.294712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707809, 24.103195, 17.205135>,  <31.336985, 24.089041, 17.055841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707809, 24.103195, 17.205135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073642, -0.993329, -0.088734,
		0.367607, 0.109748, -0.923483,
		0.927061, 0.035388, 0.373237,
		31.985928, 24.113811, 17.317106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757133, 23.604847, 16.751595>,  <31.336985, 24.089041, 17.055841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757133, 23.604847, 16.751595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030148, 23.686665, 17.032253>,  <32.193954, 23.735756, 17.200649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030148, 23.686665, 17.032253>,  <31.757133, 23.604847, 16.751595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030148, 23.686665, 17.032253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317929, -0.947539, -0.033039,
		0.658080, 0.245624, -0.711758,
		0.682534, 0.204546, 0.701647,
		32.234909, 23.748028, 17.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459099, 23.393263, 16.511398>,  <31.757133, 23.604847, 16.751595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459099, 23.393263, 16.511398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477036, 23.381046, 16.910809>,  <32.487797, 23.373716, 17.150455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477036, 23.381046, 16.910809>,  <32.459099, 23.393263, 16.511398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477036, 23.381046, 16.910809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369525, -0.928131, -0.044983,
		0.928138, 0.370998, -0.030337,
		0.044845, -0.030540, 0.998527,
		32.490490, 23.371883, 17.210367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004009, 23.045313, 16.639530>,  <32.459099, 23.393263, 16.511398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004009, 23.045313, 16.639530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804420, 23.027752, 16.985733>,  <32.684669, 23.017216, 17.193455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804420, 23.027752, 16.985733>,  <33.004009, 23.045313, 16.639530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804420, 23.027752, 16.985733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347799, -0.924903, 0.153589,
		0.793768, 0.377658, 0.476767,
		-0.498967, -0.043904, 0.865508,
		32.654732, 23.014580, 17.245386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536522, 22.896046, 17.255569>,  <33.004009, 23.045313, 16.639530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536522, 22.896046, 17.255569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171631, 22.763088, 17.351360>,  <32.952694, 22.683313, 17.408834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171631, 22.763088, 17.351360>,  <33.536522, 22.896046, 17.255569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171631, 22.763088, 17.351360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375772, -0.911736, 0.165933,
		0.163186, 0.241358, 0.956617,
		-0.912231, -0.332392, 0.239478,
		32.897961, 22.663370, 17.423204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619854, 22.502516, 17.908228>,  <33.536522, 22.896046, 17.255569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619854, 22.502516, 17.908228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284359, 22.363438, 17.740601>,  <33.083061, 22.279991, 17.640024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284359, 22.363438, 17.740601>,  <33.619854, 22.502516, 17.908228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284359, 22.363438, 17.740601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224011, -0.921782, 0.316444,
		-0.496318, 0.171539, 0.851025,
		-0.838742, -0.347696, -0.419070,
		33.032738, 22.259129, 17.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267929, 22.050381, 18.486528>,  <33.619854, 22.502516, 17.908228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267929, 22.050381, 18.486528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114445, 21.954521, 18.129803>,  <33.022354, 21.897005, 17.915768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114445, 21.954521, 18.129803>,  <33.267929, 22.050381, 18.486528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114445, 21.954521, 18.129803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304185, -0.944643, 0.122967,
		-0.871915, -0.224092, 0.435371,
		-0.383715, -0.239650, -0.891814,
		32.999329, 21.882626, 17.862259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925510, 21.960209, 19.137945>,  <33.267929, 22.050381, 18.486528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925510, 21.960209, 19.137945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165516, 21.911705, 19.454243>,  <33.309521, 21.882603, 19.644022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165516, 21.911705, 19.454243>,  <32.925510, 21.960209, 19.137945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165516, 21.911705, 19.454243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166368, 0.947921, 0.271602,
		-0.782497, -0.294521, 0.548595,
		0.600017, -0.121259, 0.790744,
		33.345520, 21.875328, 19.691465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632648, 22.384377, 19.587042>,  <32.925510, 21.960209, 19.137945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632648, 22.384377, 19.587042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991673, 22.328690, 19.754379>,  <33.207085, 22.295277, 19.854782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991673, 22.328690, 19.754379>,  <32.632648, 22.384377, 19.587042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991673, 22.328690, 19.754379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005520, 0.952313, 0.305073,
		-0.440865, -0.271511, 0.855523,
		0.897556, -0.139218, 0.418343,
		33.260941, 22.286924, 19.879883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529572, 22.734819, 20.186716>,  <32.632648, 22.384377, 19.587042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529572, 22.734819, 20.186716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926632, 22.694145, 20.160503>,  <33.164871, 22.669741, 20.144775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926632, 22.694145, 20.160503>,  <32.529572, 22.734819, 20.186716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926632, 22.694145, 20.160503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116887, 0.945818, 0.302928,
		0.031177, -0.308363, 0.950757,
		0.992656, -0.101687, -0.065532,
		33.224430, 22.663639, 20.140844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824268, 23.004309, 20.800533>,  <32.529572, 22.734819, 20.186716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824268, 23.004309, 20.800533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110088, 23.013901, 20.520863>,  <33.281578, 23.019655, 20.353060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110088, 23.013901, 20.520863>,  <32.824268, 23.004309, 20.800533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110088, 23.013901, 20.520863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182275, 0.958513, 0.219157,
		0.675425, -0.284040, 0.680530,
		0.714546, 0.023980, -0.699177,
		33.324451, 23.021095, 20.311110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457481, 23.204853, 21.151091>,  <32.824268, 23.004309, 20.800533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457481, 23.204853, 21.151091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536087, 23.282619, 20.766678>,  <33.583252, 23.329279, 20.536030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536087, 23.282619, 20.766678>,  <33.457481, 23.204853, 21.151091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536087, 23.282619, 20.766678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233267, 0.942732, 0.238416,
		0.952348, -0.271030, 0.139912,
		0.196517, 0.194419, -0.961032,
		33.595043, 23.340944, 20.478369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969540, 23.720722, 21.191507>,  <33.457481, 23.204853, 21.151091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969540, 23.720722, 21.191507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845081, 23.750652, 20.812542>,  <33.770405, 23.768610, 20.585163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845081, 23.750652, 20.812542>,  <33.969540, 23.720722, 21.191507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845081, 23.750652, 20.812542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038408, 0.997071, 0.066132,
		0.949586, -0.015811, -0.313107,
		-0.311145, 0.074824, -0.947412,
		33.751740, 23.773100, 20.528318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455799, 24.090446, 20.874706>,  <33.969540, 23.720722, 21.191507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455799, 24.090446, 20.874706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123119, 24.137833, 20.657730>,  <33.923512, 24.166265, 20.527544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123119, 24.137833, 20.657730>,  <34.455799, 24.090446, 20.874706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123119, 24.137833, 20.657730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084388, 0.992593, 0.087390,
		0.548777, 0.026906, -0.835535,
		-0.831698, 0.118467, -0.542442,
		33.873611, 24.173372, 20.494997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.738239, 18.584852, 22.374701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606361, 18.650017, 22.002731>,  <29.527235, 18.689116, 21.779549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.606361, 18.650017, 22.002731>,  <29.738239, 18.584852, 22.374701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606361, 18.650017, 22.002731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030258, 0.986316, 0.162065,
		0.943602, 0.025295, -0.330114,
		-0.329696, 0.162913, -0.929925,
		29.507452, 18.698891, 21.723753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269421, 18.979097, 22.057281>,  <29.738239, 18.584852, 22.374701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269421, 18.979097, 22.057281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955589, 19.071720, 21.827213>,  <29.767290, 19.127295, 21.689173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955589, 19.071720, 21.827213>,  <30.269421, 18.979097, 22.057281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955589, 19.071720, 21.827213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337336, 0.937752, -0.082623,
		0.520236, -0.258849, -0.813850,
		-0.784576, 0.231558, -0.575171,
		29.720217, 19.141188, 21.654661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550789, 19.296360, 21.406075>,  <30.269421, 18.979097, 22.057281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550789, 19.296360, 21.406075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175573, 19.424335, 21.459332>,  <29.950445, 19.501122, 21.491285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175573, 19.424335, 21.459332>,  <30.550789, 19.296360, 21.406075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175573, 19.424335, 21.459332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293101, 0.937471, -0.187725,
		-0.184877, -0.137068, -0.973156,
		-0.938036, 0.319939, 0.133142,
		29.894163, 19.520317, 21.499273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631598, 19.991972, 21.242447>,  <30.550789, 19.296360, 21.406075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631598, 19.991972, 21.242447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263811, 19.983166, 21.399467>,  <30.043139, 19.977882, 21.493679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.263811, 19.983166, 21.399467>,  <30.631598, 19.991972, 21.242447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263811, 19.983166, 21.399467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049733, 0.983898, 0.171670,
		-0.390009, 0.177368, -0.903567,
		-0.919467, -0.022016, 0.392551,
		29.987970, 19.976561, 21.517233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264996, 20.438936, 20.837137>,  <30.631598, 19.991972, 21.242447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264996, 20.438936, 20.837137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.088881, 20.417831, 21.195660>,  <29.983212, 20.405169, 21.410772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.088881, 20.417831, 21.195660>,  <30.264996, 20.438936, 20.837137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088881, 20.417831, 21.195660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256909, 0.963936, -0.069455,
		-0.860316, -0.260850, -0.437965,
		-0.440287, -0.052764, 0.896305,
		29.956795, 20.402002, 21.464552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662546, 20.887182, 20.861580>,  <30.264996, 20.438936, 20.837137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662546, 20.887182, 20.861580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726839, 20.821350, 21.250851>,  <29.765415, 20.781851, 21.484413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726839, 20.821350, 21.250851>,  <29.662546, 20.887182, 20.861580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726839, 20.821350, 21.250851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195261, 0.961209, 0.194807,
		-0.967491, -0.221336, 0.122362,
		0.160733, -0.164581, 0.973179,
		29.775059, 20.771976, 21.542805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141905, 21.187458, 21.232574>,  <29.662546, 20.887182, 20.861580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141905, 21.187458, 21.232574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.430201, 21.153172, 21.507729>,  <29.603178, 21.132599, 21.672821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.430201, 21.153172, 21.507729>,  <29.141905, 21.187458, 21.232574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430201, 21.153172, 21.507729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120957, 0.961552, 0.246552,
		-0.682572, -0.260904, 0.682660,
		0.720739, -0.085718, 0.687886,
		29.646421, 21.127457, 21.714094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860186, 21.556877, 21.810928>,  <29.141905, 21.187458, 21.232574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860186, 21.556877, 21.810928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.245258, 21.533840, 21.916702>,  <29.476301, 21.520018, 21.980167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.245258, 21.533840, 21.916702>,  <28.860186, 21.556877, 21.810928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245258, 21.533840, 21.916702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018815, 0.988972, 0.146900,
		-0.269981, -0.136443, 0.953149,
		0.962682, -0.057594, 0.264436,
		29.534063, 21.516562, 21.996033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927784, 21.917494, 22.474886>,  <28.860186, 21.556877, 21.810928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927784, 21.917494, 22.474886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.285864, 21.919670, 22.296635>,  <29.500711, 21.920975, 22.189684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.285864, 21.919670, 22.296635>,  <28.927784, 21.917494, 22.474886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285864, 21.919670, 22.296635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069882, 0.985843, 0.152417,
		0.440150, -0.167585, 0.882147,
		0.895201, 0.005440, -0.445629,
		29.554424, 21.921303, 22.162947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434404, 22.144753, 22.952374>,  <28.927784, 21.917494, 22.474886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434404, 22.144753, 22.952374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582277, 22.217346, 22.587868>,  <29.671001, 22.260902, 22.369165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582277, 22.217346, 22.587868>,  <29.434404, 22.144753, 22.952374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582277, 22.217346, 22.587868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275801, 0.915104, 0.294139,
		0.887282, -0.360064, 0.288242,
		0.369680, 0.181487, -0.911262,
		29.693182, 22.271791, 22.314489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187586, 22.454885, 23.083216>,  <29.434404, 22.144753, 22.952374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187586, 22.454885, 23.083216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.089041, 22.539124, 22.704807>,  <30.029915, 22.589666, 22.477762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.089041, 22.539124, 22.704807>,  <30.187586, 22.454885, 23.083216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089041, 22.539124, 22.704807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150744, 0.972554, 0.177243,
		0.957383, -0.098942, -0.271345,
		-0.246361, 0.210593, -0.946022,
		30.015133, 22.602301, 22.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713015, 22.920433, 22.906418>,  <30.187586, 22.454885, 23.083216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713015, 22.920433, 22.906418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.396200, 22.979530, 22.669487>,  <30.206112, 23.014990, 22.527328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.396200, 22.979530, 22.669487>,  <30.713015, 22.920433, 22.906418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396200, 22.979530, 22.669487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100153, 0.988573, 0.112661,
		0.602203, 0.029908, -0.797782,
		-0.792035, 0.147746, -0.592327,
		30.158590, 23.023853, 22.491789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344463, 23.150375, 22.610666>,  <30.713015, 22.920433, 22.906418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344463, 23.150375, 22.610666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.673594, 23.245560, 22.817097>,  <31.871071, 23.302671, 22.940956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.673594, 23.245560, 22.817097>,  <31.344463, 23.150375, 22.610666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673594, 23.245560, 22.817097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318881, -0.945004, -0.072677,
		0.470401, 0.224368, -0.853453,
		0.822823, 0.237963, 0.516077,
		31.920441, 23.316948, 22.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808907, 22.962910, 22.209440>,  <31.344463, 23.150375, 22.610666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808907, 22.962910, 22.209440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997847, 22.951077, 22.561806>,  <32.111210, 22.943977, 22.773226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.997847, 22.951077, 22.561806>,  <31.808907, 22.962910, 22.209440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997847, 22.951077, 22.561806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273989, -0.944994, -0.178648,
		0.837744, 0.325746, -0.438263,
		0.472350, -0.029582, 0.880914,
		32.139553, 22.942202, 22.826080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400028, 22.546349, 22.118576>,  <31.808907, 22.962910, 22.209440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400028, 22.546349, 22.118576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.394493, 22.544029, 22.518532>,  <32.391171, 22.542639, 22.758505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.394493, 22.544029, 22.518532>,  <32.400028, 22.546349, 22.118576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394493, 22.544029, 22.518532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339201, -0.940714, -0.000758,
		0.940612, 0.339152, 0.014978,
		-0.013833, -0.005794, 0.999887,
		32.390343, 22.542290, 22.818499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031563, 22.253668, 22.263037>,  <32.400028, 22.546349, 22.118576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031563, 22.253668, 22.263037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.833805, 22.207535, 22.607658>,  <32.715153, 22.179855, 22.814432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.833805, 22.207535, 22.607658>,  <33.031563, 22.253668, 22.263037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833805, 22.207535, 22.607658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134747, -0.989346, -0.055114,
		0.858732, 0.088844, 0.504664,
		-0.494391, -0.115331, 0.861555,
		32.685490, 22.172935, 22.866125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460678, 21.897598, 22.736315>,  <33.031563, 22.253668, 22.263037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460678, 21.897598, 22.736315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087212, 21.852085, 22.872147>,  <32.863132, 21.824778, 22.953646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087212, 21.852085, 22.872147>,  <33.460678, 21.897598, 22.736315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087212, 21.852085, 22.872147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127547, -0.991662, 0.018406,
		0.334652, 0.060497, 0.940398,
		-0.933670, -0.113785, 0.339578,
		32.807110, 21.817949, 22.974020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498966, 21.518387, 23.314342>,  <33.460678, 21.897598, 22.736315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498966, 21.518387, 23.314342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124687, 21.470043, 23.181759>,  <32.900120, 21.441036, 23.102209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124687, 21.470043, 23.181759>,  <33.498966, 21.518387, 23.314342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124687, 21.470043, 23.181759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138931, -0.989808, -0.031286,
		-0.324298, -0.075324, 0.942951,
		-0.935697, -0.120860, -0.331457,
		32.843979, 21.433784, 23.082321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234360, 20.964464, 23.747759>,  <33.498966, 21.518387, 23.314342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234360, 20.964464, 23.747759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007019, 20.970654, 23.418701>,  <32.870617, 20.974367, 23.221268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007019, 20.970654, 23.418701>,  <33.234360, 20.964464, 23.747759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007019, 20.970654, 23.418701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032212, -0.999475, 0.003454,
		-0.822157, 0.028462, 0.568548,
		-0.568348, 0.015474, -0.822643,
		32.836514, 20.975296, 23.171907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868805, 20.420937, 23.861670>,  <33.234360, 20.964464, 23.747759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868805, 20.420937, 23.861670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788792, 20.483513, 23.474781>,  <32.740784, 20.521059, 23.242649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788792, 20.483513, 23.474781>,  <32.868805, 20.420937, 23.861670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788792, 20.483513, 23.474781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121689, -0.983494, -0.133905,
		-0.972203, 0.090915, 0.215767,
		-0.200031, 0.156440, -0.967220,
		32.728783, 20.530445, 23.184614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241169, 20.083889, 23.650753>,  <32.868805, 20.420937, 23.861670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241169, 20.083889, 23.650753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454365, 20.119938, 23.314228>,  <32.582283, 20.141567, 23.112314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454365, 20.119938, 23.314228>,  <32.241169, 20.083889, 23.650753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454365, 20.119938, 23.314228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210445, -0.948947, -0.234973,
		-0.819535, 0.302287, -0.486810,
		0.532986, 0.090121, -0.841311,
		32.614262, 20.146975, 23.061834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945385, 19.603434, 23.145334>,  <32.241169, 20.083889, 23.650753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945385, 19.603434, 23.145334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285042, 19.713005, 22.964703>,  <32.488834, 19.778748, 22.856323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285042, 19.713005, 22.964703>,  <31.945385, 19.603434, 23.145334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285042, 19.713005, 22.964703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102961, -0.924442, -0.367159,
		-0.518031, 0.265275, -0.813187,
		0.849142, 0.273926, -0.451577,
		32.539783, 19.795183, 22.829229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929556, 19.061762, 22.724007>,  <31.945385, 19.603434, 23.145334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929556, 19.061762, 22.724007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299770, 19.212799, 22.712666>,  <32.521900, 19.303421, 22.705860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299770, 19.212799, 22.712666>,  <31.929556, 19.061762, 22.724007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299770, 19.212799, 22.712666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293165, -0.761951, -0.577482,
		-0.239657, 0.526169, -0.815911,
		0.925537, 0.377594, -0.028353,
		32.577431, 19.326077, 22.704161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088608, 19.265871, 22.043081>,  <31.929556, 19.061762, 22.724007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088608, 19.265871, 22.043081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405880, 19.135708, 22.248985>,  <32.596241, 19.057610, 22.372528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405880, 19.135708, 22.248985>,  <32.088608, 19.265871, 22.043081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405880, 19.135708, 22.248985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023574, -0.828229, -0.559894,
		0.608536, 0.456230, -0.649260,
		0.793176, -0.325410, 0.514762,
		32.643833, 19.038084, 22.403414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452286, 18.971355, 21.549892>,  <32.088608, 19.265871, 22.043081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452286, 18.971355, 21.549892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.604160, 18.823574, 21.889149>,  <32.695286, 18.734905, 22.092703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.604160, 18.823574, 21.889149>,  <32.452286, 18.971355, 21.549892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604160, 18.823574, 21.889149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177781, -0.870569, -0.458807,
		0.907873, 0.324985, -0.264859,
		0.379684, -0.369452, 0.848142,
		32.718067, 18.712738, 22.143591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954517, 18.452293, 21.278189>,  <32.452286, 18.971355, 21.549892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954517, 18.452293, 21.278189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893661, 18.386745, 21.668060>,  <32.857147, 18.347416, 21.901983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893661, 18.386745, 21.668060>,  <32.954517, 18.452293, 21.278189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893661, 18.386745, 21.668060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076770, -0.981220, -0.176955,
		0.985373, -0.101749, 0.136703,
		-0.152141, -0.163872, 0.974679,
		32.848019, 18.337584, 21.960464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911182, 19.041058, 20.897055>,  <32.954517, 18.452293, 21.278189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911182, 19.041058, 20.897055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165745, 19.014874, 20.589626>,  <33.318481, 18.999163, 20.405170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165745, 19.014874, 20.589626>,  <32.911182, 19.041058, 20.897055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165745, 19.014874, 20.589626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065886, 0.997364, -0.030391,
		0.768533, -0.031297, 0.639045,
		0.636409, -0.065460, -0.768569,
		33.356667, 18.995235, 20.359056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453720, 19.527533, 21.034525>,  <32.911182, 19.041058, 20.897055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453720, 19.527533, 21.034525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.480251, 19.470619, 20.639484>,  <33.496170, 19.436470, 20.402460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.480251, 19.470619, 20.639484>,  <33.453720, 19.527533, 21.034525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480251, 19.470619, 20.639484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264030, 0.957002, -0.120144,
		0.962231, -0.252787, 0.101042,
		0.066327, -0.142285, -0.987601,
		33.500149, 19.427935, 20.343204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953419, 20.038971, 20.811634>,  <33.453720, 19.527533, 21.034525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953419, 20.038971, 20.811634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.740524, 19.933777, 20.489750>,  <33.612785, 19.870661, 20.296619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.740524, 19.933777, 20.489750>,  <33.953419, 20.038971, 20.811634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740524, 19.933777, 20.489750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107293, 0.921910, -0.372250,
		0.839768, -0.284465, -0.462460,
		-0.532238, -0.262985, -0.804712,
		33.580853, 19.854881, 20.248337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436329, 20.191454, 20.244392>,  <33.953419, 20.038971, 20.811634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436329, 20.191454, 20.244392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048855, 20.188362, 20.145123>,  <33.816372, 20.186506, 20.085560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048855, 20.188362, 20.145123>,  <34.436329, 20.191454, 20.244392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048855, 20.188362, 20.145123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078136, 0.939242, -0.334244,
		0.235680, -0.343168, -0.909225,
		-0.968684, -0.007732, -0.248174,
		33.758251, 20.186043, 20.070669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355377, 20.522482, 19.618383>,  <34.436329, 20.191454, 20.244392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355377, 20.522482, 19.618383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991768, 20.555405, 19.781799>,  <33.773602, 20.575159, 19.879848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991768, 20.555405, 19.781799>,  <34.355377, 20.522482, 19.618383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991768, 20.555405, 19.781799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008220, 0.976571, -0.215038,
		-0.416669, -0.198833, -0.887047,
		-0.909021, 0.082308, 0.408542,
		33.719063, 20.580097, 19.904362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057011, 21.059956, 19.209091>,  <34.355377, 20.522482, 19.618383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057011, 21.059956, 19.209091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820160, 21.024830, 19.529510>,  <33.678051, 21.003756, 19.721762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820160, 21.024830, 19.529510>,  <34.057011, 21.059956, 19.209091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820160, 21.024830, 19.529510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072749, 0.995811, 0.055388,
		-0.802556, -0.025479, -0.596033,
		-0.592125, -0.087813, 0.801048,
		33.642521, 20.998486, 19.769825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518406, 21.579849, 19.008669>,  <34.057011, 21.059956, 19.209091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518406, 21.579849, 19.008669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491726, 21.518303, 19.403004>,  <33.475719, 21.481375, 19.639605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491726, 21.518303, 19.403004>,  <33.518406, 21.579849, 19.008669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491726, 21.518303, 19.403004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147019, 0.978769, 0.142818,
		-0.986882, -0.135411, -0.087904,
		-0.066698, -0.153868, 0.985838,
		33.471718, 21.472143, 19.698755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865871, 21.348299, 18.557926>,  <33.518406, 21.579849, 19.008669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865871, 21.348299, 18.557926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908791, 21.363495, 18.160526>,  <32.934544, 21.372612, 17.922087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908791, 21.363495, 18.160526>,  <32.865871, 21.348299, 18.557926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908791, 21.363495, 18.160526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221676, -0.975029, -0.013345,
		-0.969199, -0.218804, -0.113040,
		0.107297, 0.037992, -0.993501,
		32.940979, 21.374893, 17.862476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462273, 20.881435, 18.340216>,  <32.865871, 21.348299, 18.557926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462273, 20.881435, 18.340216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705383, 20.935688, 18.027241>,  <32.851250, 20.968239, 17.839455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705383, 20.935688, 18.027241>,  <32.462273, 20.881435, 18.340216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705383, 20.935688, 18.027241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010596, -0.983833, -0.178772,
		-0.794036, 0.116945, -0.596515,
		0.607778, 0.135631, -0.782438,
		32.887718, 20.976377, 17.792509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156143, 20.525267, 17.788649>,  <32.462273, 20.881435, 18.340216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156143, 20.525267, 17.788649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540146, 20.575809, 17.688709>,  <32.770546, 20.606134, 17.628746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540146, 20.575809, 17.688709>,  <32.156143, 20.525267, 17.788649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540146, 20.575809, 17.688709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058025, -0.962786, -0.263961,
		-0.273902, 0.238907, -0.931612,
		0.960006, 0.126356, -0.249847,
		32.828148, 20.613716, 17.613754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190197, 20.178179, 17.198355>,  <32.156143, 20.525267, 17.788649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190197, 20.178179, 17.198355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572235, 20.192539, 17.316002>,  <32.801456, 20.201155, 17.386591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572235, 20.192539, 17.316002>,  <32.190197, 20.178179, 17.198355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572235, 20.192539, 17.316002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077742, -0.988218, -0.131834,
		0.285920, 0.148779, -0.946633,
		0.955095, 0.035899, 0.294118,
		32.858765, 20.203310, 17.404238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652618, 19.889435, 16.661217>,  <32.190197, 20.178179, 17.198355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652618, 19.889435, 16.661217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.833534, 19.861149, 17.016842>,  <32.942081, 19.844177, 17.230217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.833534, 19.861149, 17.016842>,  <32.652618, 19.889435, 16.661217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833534, 19.861149, 17.016842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228467, -0.954403, -0.192140,
		0.862114, 0.290024, -0.415506,
		0.452285, -0.070717, 0.889065,
		32.969219, 19.839933, 17.283562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187523, 19.437023, 16.556154>,  <32.652618, 19.889435, 16.661217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187523, 19.437023, 16.556154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167217, 19.427841, 16.955532>,  <33.155033, 19.422333, 17.195160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167217, 19.427841, 16.955532>,  <33.187523, 19.437023, 16.556154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167217, 19.427841, 16.955532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138080, -0.990296, -0.015746,
		0.989119, 0.137067, 0.053445,
		-0.050768, -0.022954, 0.998447,
		33.151985, 19.420956, 17.255066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761131, 18.971821, 16.822344>,  <33.187523, 19.437023, 16.556154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761131, 18.971821, 16.822344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.492039, 18.971748, 17.118298>,  <33.330582, 18.971704, 17.295870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.492039, 18.971748, 17.118298>,  <33.761131, 18.971821, 16.822344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492039, 18.971748, 17.118298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092348, -0.992200, 0.083727,
		0.734097, 0.124653, 0.667505,
		-0.672736, -0.000179, 0.739882,
		33.290218, 18.971695, 17.340261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026375, 18.629961, 17.393139>,  <33.761131, 18.971821, 16.822344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026375, 18.629961, 17.393139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631748, 18.638851, 17.457867>,  <33.394970, 18.644186, 17.496704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631748, 18.638851, 17.457867>,  <34.026375, 18.629961, 17.393139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631748, 18.638851, 17.457867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006709, -0.995376, 0.095820,
		0.163203, 0.093447, 0.982157,
		-0.986570, 0.022227, 0.161822,
		33.335777, 18.645519, 17.506413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925442, 18.236954, 18.011824>,  <34.026375, 18.629961, 17.393139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925442, 18.236954, 18.011824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592236, 18.249592, 17.790886>,  <33.392311, 18.257175, 17.658323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592236, 18.249592, 17.790886>,  <33.925442, 18.236954, 18.011824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592236, 18.249592, 17.790886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107986, -0.988451, 0.106317,
		-0.542604, 0.148209, 0.826810,
		-0.833019, 0.031596, -0.552342,
		33.342331, 18.259071, 17.625183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.830595, 33.950432, 19.017241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482944, 33.752865, 19.027592>,  <29.274355, 33.634327, 19.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482944, 33.752865, 19.027592>,  <29.830595, 33.950432, 19.017241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482944, 33.752865, 19.027592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491836, -0.857584, 0.150491,
		-0.052139, 0.143522, 0.988273,
		-0.869125, -0.493915, 0.025876,
		29.222206, 33.604691, 19.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909519, 33.423100, 19.584681>,  <29.830595, 33.950432, 19.017241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909519, 33.423100, 19.584681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621960, 33.311954, 19.329815>,  <29.449425, 33.245266, 19.176895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621960, 33.311954, 19.329815>,  <29.909519, 33.423100, 19.584681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621960, 33.311954, 19.329815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367627, -0.929927, -0.009245,
		-0.589947, -0.240885, 0.770673,
		-0.718897, -0.277866, -0.637164,
		29.406290, 33.228596, 19.138666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702969, 32.789146, 19.805611>,  <29.909519, 33.423100, 19.584681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702969, 32.789146, 19.805611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585966, 32.798767, 19.423225>,  <29.515764, 32.804539, 19.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585966, 32.798767, 19.423225>,  <29.702969, 32.789146, 19.805611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585966, 32.798767, 19.423225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389253, -0.910119, -0.142006,
		-0.873454, -0.413648, 0.256852,
		-0.292506, 0.024056, -0.955961,
		29.498215, 32.805984, 19.136436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368774, 32.166397, 19.702831>,  <29.702969, 32.789146, 19.805611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368774, 32.166397, 19.702831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481499, 32.300491, 19.343231>,  <29.549133, 32.380947, 19.127472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481499, 32.300491, 19.343231>,  <29.368774, 32.166397, 19.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481499, 32.300491, 19.343231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436558, -0.879169, -0.190994,
		-0.854401, -0.338641, -0.394109,
		0.281810, 0.335237, -0.898999,
		29.566042, 32.401062, 19.073532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288490, 31.555189, 19.401045>,  <29.368774, 32.166397, 19.702831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288490, 31.555189, 19.401045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508959, 31.774879, 19.149788>,  <29.641239, 31.906694, 18.999033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508959, 31.774879, 19.149788>,  <29.288490, 31.555189, 19.401045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508959, 31.774879, 19.149788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490085, -0.822365, -0.289020,
		-0.675300, -0.148544, -0.722430,
		0.551169, 0.549227, -0.628142,
		29.674309, 31.939648, 18.961346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255701, 31.257816, 18.695244>,  <29.288490, 31.555189, 19.401045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255701, 31.257816, 18.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595106, 31.467735, 18.668083>,  <29.798750, 31.593687, 18.651787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595106, 31.467735, 18.668083>,  <29.255701, 31.257816, 18.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595106, 31.467735, 18.668083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492035, -0.829666, -0.263734,
		-0.194741, 0.190373, -0.962203,
		0.848515, 0.524797, -0.067899,
		29.849661, 31.625175, 18.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529903, 30.972187, 18.051525>,  <29.255701, 31.257816, 18.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529903, 30.972187, 18.051525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821882, 31.143139, 18.264889>,  <29.997068, 31.245710, 18.392908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821882, 31.143139, 18.264889>,  <29.529903, 30.972187, 18.051525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821882, 31.143139, 18.264889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601909, -0.771703, -0.205377,
		0.323861, 0.470978, -0.820545,
		0.729945, 0.427380, 0.533410,
		30.040865, 31.271353, 18.424911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173206, 30.943441, 17.629711>,  <29.529903, 30.972187, 18.051525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173206, 30.943441, 17.629711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328894, 31.024475, 17.989147>,  <30.422306, 31.073095, 18.204809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328894, 31.024475, 17.989147>,  <30.173206, 30.943441, 17.629711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328894, 31.024475, 17.989147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707637, -0.690277, -0.150889,
		0.589710, 0.694606, -0.412025,
		0.389220, 0.202584, 0.898592,
		30.445660, 31.085251, 18.258724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952456, 31.147419, 17.592068>,  <30.173206, 30.943441, 17.629711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952456, 31.147419, 17.592068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893677, 30.991268, 17.955608>,  <30.858410, 30.897577, 18.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893677, 30.991268, 17.955608>,  <30.952456, 31.147419, 17.592068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893677, 30.991268, 17.955608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786468, -0.603361, -0.131998,
		0.599895, 0.695387, 0.395681,
		-0.146949, -0.390375, 0.908853,
		30.849592, 30.874155, 18.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548250, 30.790722, 17.702999>,  <30.952456, 31.147419, 17.592068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548250, 30.790722, 17.702999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365355, 30.670059, 18.037647>,  <31.255617, 30.597662, 18.238436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365355, 30.670059, 18.037647>,  <31.548250, 30.790722, 17.702999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365355, 30.670059, 18.037647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639799, -0.764986, 0.073844,
		0.617728, 0.569034, 0.542781,
		-0.457240, -0.301655, 0.836621,
		31.228182, 30.579563, 18.288633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014858, 30.775785, 18.237362>,  <31.548250, 30.790722, 17.702999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014858, 30.775785, 18.237362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719788, 30.512894, 18.299175>,  <31.542744, 30.355160, 18.336264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719788, 30.512894, 18.299175>,  <32.014858, 30.775785, 18.237362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719788, 30.512894, 18.299175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665277, -0.746597, 0.000497,
		0.115047, 0.103173, 0.987988,
		-0.737680, -0.657228, 0.154532,
		31.498484, 30.315725, 18.345535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284580, 30.269354, 18.753542>,  <32.014858, 30.775785, 18.237362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284580, 30.269354, 18.753542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984766, 30.095219, 18.554073>,  <31.804876, 29.990738, 18.434393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984766, 30.095219, 18.554073>,  <32.284580, 30.269354, 18.753542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984766, 30.095219, 18.554073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489015, -0.871884, 0.026129,
		-0.446157, -0.224272, 0.866398,
		-0.749539, -0.435339, -0.498670,
		31.759905, 29.964617, 18.404472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906466, 30.152281, 19.407967>,  <32.284580, 30.269354, 18.753542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906466, 30.152281, 19.407967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158821, 30.157619, 19.718269>,  <32.310234, 30.160822, 19.904451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158821, 30.157619, 19.718269>,  <31.906466, 30.152281, 19.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158821, 30.157619, 19.718269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018835, 0.999821, -0.001885,
		-0.775643, -0.013422, 0.631029,
		0.630891, 0.013347, 0.775757,
		32.348087, 30.161623, 19.950996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688698, 30.762642, 19.827534>,  <31.906466, 30.152281, 19.407967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688698, 30.762642, 19.827534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056782, 30.671627, 19.954933>,  <32.277634, 30.617018, 20.031372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056782, 30.671627, 19.954933>,  <31.688698, 30.762642, 19.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056782, 30.671627, 19.954933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145584, 0.954268, 0.261108,
		-0.363344, -0.193906, 0.911253,
		0.920210, -0.227536, 0.318498,
		32.332844, 30.603367, 20.050482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702784, 30.980194, 20.480997>,  <31.688698, 30.762642, 19.827534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702784, 30.980194, 20.480997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093506, 30.948963, 20.401245>,  <32.327938, 30.930225, 20.353394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093506, 30.948963, 20.401245>,  <31.702784, 30.980194, 20.480997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093506, 30.948963, 20.401245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166370, 0.862923, 0.477164,
		0.134794, -0.499268, 0.855899,
		0.976807, -0.078077, -0.199380,
		32.386547, 30.925541, 20.341431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070541, 31.260015, 21.039013>,  <31.702784, 30.980194, 20.480997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070541, 31.260015, 21.039013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372799, 31.292061, 20.778988>,  <32.554153, 31.311289, 20.622972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372799, 31.292061, 20.778988>,  <32.070541, 31.260015, 21.039013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372799, 31.292061, 20.778988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197686, 0.918310, 0.342968,
		0.624435, -0.387671, 0.678080,
		0.755646, 0.080114, -0.650062,
		32.599491, 31.316095, 20.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721218, 31.354143, 21.396093>,  <32.070541, 31.260015, 21.039013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721218, 31.354143, 21.396093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803520, 31.528240, 21.045498>,  <32.852901, 31.632698, 20.835140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803520, 31.528240, 21.045498>,  <32.721218, 31.354143, 21.396093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803520, 31.528240, 21.045498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322648, 0.815400, 0.480647,
		0.923886, -0.381691, 0.027340,
		0.205751, 0.435242, -0.876488,
		32.865246, 31.658813, 20.782551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361034, 31.708862, 21.504028>,  <32.721218, 31.354143, 21.396093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361034, 31.708862, 21.504028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169350, 31.869644, 21.191929>,  <33.054340, 31.966114, 21.004669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169350, 31.869644, 21.191929>,  <33.361034, 31.708862, 21.504028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169350, 31.869644, 21.191929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438689, 0.879656, 0.183732,
		0.760202, -0.254240, -0.597875,
		-0.479213, 0.401954, -0.780249,
		33.025585, 31.990231, 20.957853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864941, 32.104084, 21.117147>,  <33.361034, 31.708862, 21.504028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864941, 32.104084, 21.117147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508480, 32.228443, 20.984966>,  <33.294605, 32.303059, 20.905657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508480, 32.228443, 20.984966>,  <33.864941, 32.104084, 21.117147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508480, 32.228443, 20.984966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346815, 0.936359, -0.054328,
		0.292532, -0.163020, -0.942258,
		-0.891148, 0.310896, -0.330453,
		33.241135, 32.321712, 20.885830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041306, 32.740044, 20.785503>,  <33.864941, 32.104084, 21.117147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041306, 32.740044, 20.785503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643299, 32.758995, 20.820599>,  <33.404495, 32.770367, 20.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643299, 32.758995, 20.820599>,  <34.041306, 32.740044, 20.785503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643299, 32.758995, 20.820599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045486, 0.998691, -0.023413,
		-0.088731, -0.019306, -0.995869,
		-0.995017, 0.047376, 0.087736,
		33.344795, 32.773209, 20.846920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825493, 33.192410, 20.256693>,  <34.041306, 32.740044, 20.785503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825493, 33.192410, 20.256693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528824, 33.194828, 20.524986>,  <33.350822, 33.196278, 20.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528824, 33.194828, 20.524986>,  <33.825493, 33.192410, 20.256693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528824, 33.194828, 20.524986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050952, 0.997578, 0.047351,
		-0.668821, 0.069295, -0.740187,
		-0.741675, 0.006045, 0.670732,
		33.306320, 33.196640, 20.726206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480789, 33.832527, 20.094803>,  <33.825493, 33.192410, 20.256693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480789, 33.832527, 20.094803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336266, 33.734924, 20.454784>,  <33.249550, 33.676365, 20.670773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336266, 33.734924, 20.454784>,  <33.480789, 33.832527, 20.094803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336266, 33.734924, 20.454784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059576, 0.957142, 0.283427,
		-0.930541, 0.156021, -0.331288,
		-0.361310, -0.244003, 0.899954,
		33.227871, 33.661724, 20.724771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107738, 34.370602, 20.275370>,  <33.480789, 33.832527, 20.094803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107738, 34.370602, 20.275370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173553, 34.182468, 20.622177>,  <33.213043, 34.069588, 20.830261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173553, 34.182468, 20.622177>,  <33.107738, 34.370602, 20.275370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173553, 34.182468, 20.622177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151318, 0.880628, 0.448996,
		-0.974695, 0.057319, 0.216065,
		0.164537, -0.470329, 0.867017,
		33.222916, 34.041370, 20.882282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604160, 34.513222, 20.724157>,  <33.107738, 34.370602, 20.275370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604160, 34.513222, 20.724157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870308, 34.409275, 21.004089>,  <33.029995, 34.346909, 21.172049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870308, 34.409275, 21.004089>,  <32.604160, 34.513222, 20.724157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870308, 34.409275, 21.004089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073067, 0.910286, 0.407480,
		-0.742933, -0.322258, 0.586686,
		0.665366, -0.259862, 0.699828,
		33.069920, 34.331318, 21.214037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365242, 34.767902, 21.356726>,  <32.604160, 34.513222, 20.724157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365242, 34.767902, 21.356726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757133, 34.705093, 21.406498>,  <32.992268, 34.667408, 21.436361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757133, 34.705093, 21.406498>,  <32.365242, 34.767902, 21.356726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757133, 34.705093, 21.406498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061756, 0.827515, 0.558036,
		-0.190595, -0.539037, 0.820434,
		0.979724, -0.157026, 0.124431,
		33.051052, 34.657986, 21.443827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380814, 34.863922, 22.012081>,  <32.365242, 34.767902, 21.356726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380814, 34.863922, 22.012081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758236, 34.914814, 21.889755>,  <32.984688, 34.945351, 21.816360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758236, 34.914814, 21.889755>,  <32.380814, 34.863922, 22.012081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758236, 34.914814, 21.889755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006524, 0.915966, 0.401202,
		0.331158, -0.380551, 0.863432,
		0.943552, 0.127228, -0.305812,
		33.041302, 34.952984, 21.798012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624735, 34.786858, 21.667147>,  <32.380814, 34.863922, 22.012081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624735, 34.786858, 21.667147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511084, 34.965244, 21.327644>,  <31.442892, 35.072277, 21.123943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511084, 34.965244, 21.327644>,  <31.624735, 34.786858, 21.667147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511084, 34.965244, 21.327644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902387, -0.174750, -0.393903,
		-0.323988, -0.877823, -0.352786,
		-0.284128, 0.445969, -0.848754,
		31.425846, 35.099033, 21.073019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064110, 34.211716, 22.032255>,  <31.624735, 34.786858, 21.667147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064110, 34.211716, 22.032255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806158, 34.183556, 22.336670>,  <31.651386, 34.166660, 22.519318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806158, 34.183556, 22.336670>,  <32.064110, 34.211716, 22.032255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806158, 34.183556, 22.336670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350442, -0.912141, 0.212576,
		0.679206, 0.403785, 0.612892,
		-0.644879, -0.070401, 0.761035,
		31.612694, 34.162434, 22.564981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569038, 33.932014, 22.492775>,  <32.064110, 34.211716, 22.032255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569038, 33.932014, 22.492775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187141, 33.847870, 22.576878>,  <31.958002, 33.797382, 22.627338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187141, 33.847870, 22.576878>,  <32.569038, 33.932014, 22.492775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187141, 33.847870, 22.576878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247000, -0.954599, 0.166527,
		0.165680, 0.210924, 0.963360,
		-0.954747, -0.210359, 0.210256,
		31.900717, 33.784763, 22.639954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551556, 33.450821, 23.063559>,  <32.569038, 33.932014, 22.492775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551556, 33.450821, 23.063559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192165, 33.399639, 22.895576>,  <31.976530, 33.368931, 22.794786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192165, 33.399639, 22.895576>,  <32.551556, 33.450821, 23.063559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192165, 33.399639, 22.895576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137983, -0.990413, 0.006562,
		-0.416768, -0.052051, 0.907521,
		-0.898479, -0.127958, -0.419955,
		31.922621, 33.361252, 22.769590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316601, 32.969471, 23.465120>,  <32.551556, 33.450821, 23.063559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316601, 32.969471, 23.465120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111237, 32.946056, 23.122662>,  <31.988018, 32.932007, 22.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111237, 32.946056, 23.122662>,  <32.316601, 32.969471, 23.465120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111237, 32.946056, 23.122662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054145, -0.997893, 0.035755,
		-0.856435, -0.028000, 0.515495,
		-0.513408, -0.058533, -0.856146,
		31.957214, 32.928497, 22.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863058, 32.425228, 23.606953>,  <32.316601, 32.969471, 23.465120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863058, 32.425228, 23.606953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859915, 32.461296, 23.208595>,  <31.858028, 32.482937, 22.969580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859915, 32.461296, 23.208595>,  <31.863058, 32.425228, 23.606953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859915, 32.461296, 23.208595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076134, -0.992981, -0.090509,
		-0.997067, -0.076533, 0.000939,
		-0.007859, 0.090172, -0.995895,
		31.857557, 32.488346, 22.909826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364407, 31.812738, 23.357830>,  <31.863058, 32.425228, 23.606953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364407, 31.812738, 23.357830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622644, 31.908482, 23.067749>,  <31.777586, 31.965927, 22.893700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622644, 31.908482, 23.067749>,  <31.364407, 31.812738, 23.357830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622644, 31.908482, 23.067749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180982, -0.970515, -0.159208,
		-0.741927, -0.028465, -0.669876,
		0.645592, 0.239356, -0.725203,
		31.816322, 31.980288, 22.850187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148468, 31.430225, 22.810177>,  <31.364407, 31.812738, 23.357830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148468, 31.430225, 22.810177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535526, 31.501732, 22.738956>,  <31.767761, 31.544636, 22.696224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535526, 31.501732, 22.738956>,  <31.148468, 31.430225, 22.810177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535526, 31.501732, 22.738956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120025, -0.946871, -0.298379,
		-0.221932, 0.267354, -0.937693,
		0.967647, 0.178766, -0.178052,
		31.825821, 31.555361, 22.685541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368349, 30.932281, 22.277578>,  <31.148468, 31.430225, 22.810177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368349, 30.932281, 22.277578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713560, 31.059200, 22.434807>,  <31.920687, 31.135351, 22.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713560, 31.059200, 22.434807>,  <31.368349, 30.932281, 22.277578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713560, 31.059200, 22.434807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378910, -0.921210, -0.088308,
		0.334081, 0.225151, -0.915258,
		0.863028, 0.317298, 0.393071,
		31.972469, 31.154390, 22.552729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865871, 30.734600, 21.798685>,  <31.368349, 30.932281, 22.277578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865871, 30.734600, 21.798685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051079, 30.789600, 22.148933>,  <32.162201, 30.822601, 22.359081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051079, 30.789600, 22.148933>,  <31.865871, 30.734600, 21.798685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051079, 30.789600, 22.148933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290088, -0.956995, -0.003113,
		0.837535, 0.255448, -0.482992,
		0.463016, 0.137503, 0.875619,
		32.189983, 30.830851, 22.411619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550770, 30.451786, 21.619457>,  <31.865871, 30.734600, 21.798685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550770, 30.451786, 21.619457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477940, 30.446911, 22.012741>,  <32.434242, 30.443987, 22.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477940, 30.446911, 22.012741>,  <32.550770, 30.451786, 21.619457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477940, 30.446911, 22.012741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331488, -0.942149, 0.049710,
		0.925723, 0.334973, 0.175582,
		-0.182076, -0.012186, 0.983209,
		32.423317, 30.443254, 22.307703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002563, 29.972395, 21.971092>,  <32.550770, 30.451786, 21.619457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002563, 29.972395, 21.971092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711193, 30.012543, 22.242184>,  <32.536369, 30.036631, 22.404839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711193, 30.012543, 22.242184>,  <33.002563, 29.972395, 21.971092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711193, 30.012543, 22.242184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098615, -0.963550, 0.248690,
		0.677987, 0.247987, 0.691979,
		-0.728429, 0.100369, 0.677730,
		32.492664, 30.042654, 22.445503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196735, 29.466179, 22.396679>,  <33.002563, 29.972395, 21.971092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196735, 29.466179, 22.396679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832993, 29.546185, 22.542587>,  <32.614746, 29.594189, 22.630133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832993, 29.546185, 22.542587>,  <33.196735, 29.466179, 22.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832993, 29.546185, 22.542587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068313, -0.936726, 0.343333,
		0.410360, 0.287295, 0.865486,
		-0.909362, 0.200014, 0.364769,
		32.560184, 29.606190, 22.652018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119007, 29.183849, 23.150093>,  <33.196735, 29.466179, 22.396679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119007, 29.183849, 23.150093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743385, 29.217506, 23.016773>,  <32.518013, 29.237701, 22.936781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743385, 29.217506, 23.016773>,  <33.119007, 29.183849, 23.150093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743385, 29.217506, 23.016773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198318, -0.924567, 0.325340,
		-0.280783, 0.371612, 0.884909,
		-0.939058, 0.084144, -0.333301,
		32.461666, 29.242750, 22.916782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574047, 28.858788, 23.657372>,  <33.119007, 29.183849, 23.150093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574047, 28.858788, 23.657372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 28.844482, 23.311131>,  <32.254398, 28.835899, 23.103386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 28.844482, 23.311131>,  <32.574047, 28.858788, 23.657372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374268, 28.844482, 23.311131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268607, -0.943518, 0.193968,
		-0.823651, 0.329385, 0.461633,
		-0.499449, -0.035764, -0.865605,
		32.224434, 28.833754, 23.051449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828930, 28.641003, 23.808014>,  <32.574047, 28.858788, 23.657372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828930, 28.641003, 23.808014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898088, 28.574535, 23.419685>,  <31.939585, 28.534655, 23.186687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898088, 28.574535, 23.419685>,  <31.828930, 28.641003, 23.808014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898088, 28.574535, 23.419685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277599, -0.953928, 0.113840,
		-0.945011, 0.249816, -0.211062,
		0.172899, -0.166171, -0.970821,
		31.949957, 28.524685, 23.128439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319378, 28.041990, 23.606527>,  <31.828930, 28.641003, 23.808014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319378, 28.041990, 23.606527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565971, 28.054737, 23.291840>,  <31.713928, 28.062386, 23.103027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565971, 28.054737, 23.291840>,  <31.319378, 28.041990, 23.606527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565971, 28.054737, 23.291840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026411, -0.997781, -0.061114,
		-0.786923, 0.058454, -0.614277,
		0.616486, 0.031868, -0.786721,
		31.750917, 28.064297, 23.055824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039429, 27.655954, 23.023577>,  <31.319378, 28.041990, 23.606527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039429, 27.655954, 23.023577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438658, 27.669422, 23.002743>,  <31.678196, 27.677504, 22.990242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438658, 27.669422, 23.002743>,  <31.039429, 27.655954, 23.023577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438658, 27.669422, 23.002743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024865, -0.986591, -0.161309,
		-0.056816, 0.159704, -0.985529,
		0.998075, 0.033670, -0.052083,
		31.738081, 27.679523, 22.987118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208565, 27.320457, 22.365477>,  <31.039429, 27.655954, 23.023577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208565, 27.320457, 22.365477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520901, 27.308781, 22.615097>,  <31.708302, 27.301775, 22.764870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520901, 27.308781, 22.615097>,  <31.208565, 27.320457, 22.365477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520901, 27.308781, 22.615097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041654, -0.994252, -0.098632,
		0.623342, 0.103009, -0.775135,
		0.780839, -0.029194, 0.624049,
		31.755152, 27.300022, 22.802311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617741, 26.890650, 21.934206>,  <31.208565, 27.320457, 22.365477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617741, 26.890650, 21.934206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763651, 26.888878, 22.306641>,  <31.851196, 26.887815, 22.530102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763651, 26.888878, 22.306641>,  <31.617741, 26.890650, 21.934206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763651, 26.888878, 22.306641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039372, -0.999168, 0.010673,
		0.930263, -0.040552, -0.364645,
		0.364774, -0.004428, 0.931086,
		31.873083, 26.887550, 22.585966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109715, 26.370398, 21.917633>,  <31.617741, 26.890650, 21.934206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109715, 26.370398, 21.917633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048584, 26.431625, 22.308163>,  <32.011906, 26.468363, 22.542480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048584, 26.431625, 22.308163>,  <32.109715, 26.370398, 21.917633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048584, 26.431625, 22.308163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020985, -0.988212, 0.151650,
		0.988030, 0.002687, 0.154237,
		-0.152826, 0.153071, 0.976327,
		32.002735, 26.477547, 22.601061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624451, 25.966892, 22.308178>,  <32.109715, 26.370398, 21.917633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624451, 25.966892, 22.308178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344826, 26.011784, 22.590656>,  <32.177052, 26.038717, 22.760143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344826, 26.011784, 22.590656>,  <32.624451, 25.966892, 22.308178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344826, 26.011784, 22.590656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118466, -0.955782, 0.269160,
		0.705177, 0.271821, 0.654858,
		-0.699064, 0.112227, 0.706197,
		32.135105, 26.045452, 22.802515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853542, 25.637121, 22.976282>,  <32.624451, 25.966892, 22.308178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853542, 25.637121, 22.976282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458015, 25.655643, 23.032986>,  <32.220699, 25.666756, 23.067007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458015, 25.655643, 23.032986>,  <32.853542, 25.637121, 22.976282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458015, 25.655643, 23.032986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006403, -0.936515, 0.350569,
		0.148992, 0.347556, 0.925746,
		-0.988818, 0.046304, 0.141759,
		32.161369, 25.669535, 23.075514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668755, 25.370483, 23.717524>,  <32.853542, 25.637121, 22.976282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668755, 25.370483, 23.717524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359291, 25.350632, 23.464863>,  <32.173611, 25.338720, 23.313267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359291, 25.350632, 23.464863>,  <32.668755, 25.370483, 23.717524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359291, 25.350632, 23.464863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015066, -0.998087, 0.059970,
		-0.633419, 0.036880, 0.772929,
		-0.773662, -0.049631, -0.631652,
		32.127193, 25.335743, 23.275368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311974, 24.914509, 24.043844>,  <32.668755, 25.370483, 23.717524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311974, 24.914509, 24.043844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166595, 24.932709, 23.671642>,  <32.079369, 24.943628, 23.448320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166595, 24.932709, 23.671642>,  <32.311974, 24.914509, 24.043844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166595, 24.932709, 23.671642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079801, -0.996656, -0.017564,
		-0.928193, 0.067871, 0.365856,
		-0.363441, 0.045499, -0.930506,
		32.057564, 24.946358, 23.392490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707893, 24.462757, 24.073473>,  <32.311974, 24.914509, 24.043844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707893, 24.462757, 24.073473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824949, 24.501801, 23.692982>,  <31.895184, 24.525227, 23.464687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824949, 24.501801, 23.692982>,  <31.707893, 24.462757, 24.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824949, 24.501801, 23.692982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097662, -0.986524, -0.131276,
		-0.951222, 0.131316, -0.279164,
		0.292641, 0.097609, -0.951227,
		31.912741, 24.531084, 23.407614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189589, 24.082727, 23.753120>,  <31.707893, 24.462757, 24.073473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189589, 24.082727, 23.753120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510580, 24.119877, 23.517357>,  <31.703175, 24.142166, 23.375898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510580, 24.119877, 23.517357>,  <31.189589, 24.082727, 23.753120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510580, 24.119877, 23.517357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051484, -0.994906, -0.086671,
		-0.594455, 0.039207, -0.803172,
		0.802479, 0.092872, -0.589408,
		31.751324, 24.147739, 23.340534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018688, 23.598122, 23.257387>,  <31.189589, 24.082727, 23.753120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018688, 23.598122, 23.257387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415348, 23.649368, 23.251427>,  <31.653343, 23.680117, 23.247850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415348, 23.649368, 23.251427>,  <31.018688, 23.598122, 23.257387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415348, 23.649368, 23.251427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125406, -0.984727, -0.120769,
		-0.030147, 0.117891, -0.992569,
		0.991647, 0.128115, -0.014902,
		31.712843, 23.687803, 23.246956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804392, 23.710394, 22.572479>,  <31.018688, 23.598122, 23.257387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804392, 23.710394, 22.572479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420578, 23.616699, 22.509964>,  <30.190290, 23.560482, 22.472456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420578, 23.616699, 22.509964>,  <30.804392, 23.710394, 22.572479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420578, 23.616699, 22.509964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253550, 0.960141, 0.117652,
		0.122498, 0.152517, -0.980680,
		-0.959534, -0.234239, -0.156286,
		30.132717, 23.546427, 22.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554340, 24.238165, 22.171898>,  <30.804392, 23.710394, 22.572479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554340, 24.238165, 22.171898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218325, 24.091038, 22.331417>,  <30.016714, 24.002762, 22.427128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218325, 24.091038, 22.331417>,  <30.554340, 24.238165, 22.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218325, 24.091038, 22.331417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151301, 0.864750, 0.478869,
		-0.520999, 0.341931, -0.782077,
		-0.840041, -0.367819, 0.398799,
		29.966312, 23.980692, 22.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031145, 24.759899, 22.090424>,  <30.554340, 24.238165, 22.171898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031145, 24.759899, 22.090424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887346, 24.544220, 22.395061>,  <29.801067, 24.414812, 22.577845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887346, 24.544220, 22.395061>,  <30.031145, 24.759899, 22.090424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887346, 24.544220, 22.395061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320414, 0.837863, 0.441950,
		-0.876412, -0.085147, -0.473975,
		-0.359496, -0.539198, 0.761596,
		29.779497, 24.382460, 22.623541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344795, 24.937815, 22.217667>,  <30.031145, 24.759899, 22.090424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344795, 24.937815, 22.217667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444201, 24.765388, 22.564636>,  <29.503843, 24.661934, 22.772818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444201, 24.765388, 22.564636>,  <29.344795, 24.937815, 22.217667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444201, 24.765388, 22.564636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257020, 0.834071, 0.488125,
		-0.933907, -0.344251, 0.096486,
		0.248514, -0.431065, 0.867424,
		29.518755, 24.636068, 22.824863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824203, 24.941570, 22.555279>,  <29.344795, 24.937815, 22.217667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824203, 24.941570, 22.555279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106850, 24.916821, 22.837234>,  <29.276438, 24.901970, 23.006407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106850, 24.916821, 22.837234>,  <28.824203, 24.941570, 22.555279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106850, 24.916821, 22.837234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387684, 0.799494, 0.458815,
		-0.591944, -0.597479, 0.540945,
		0.706614, -0.061877, 0.704888,
		29.318834, 24.898258, 23.048700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
