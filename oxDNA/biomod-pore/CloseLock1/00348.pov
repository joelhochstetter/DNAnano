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
	<24.422319, 34.455288, 34.673386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470871, 34.834312, 34.791630>,  <24.500002, 35.061729, 34.862576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470871, 34.834312, 34.791630>,  <24.422319, 34.455288, 34.673386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470871, 34.834312, 34.791630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956256, -0.031769, -0.290800,
		-0.266161, 0.317978, -0.909972,
		0.121377, 0.947566, 0.295613,
		24.507284, 35.118584, 34.880314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833738, 34.808289, 34.160034>,  <24.422319, 34.455288, 34.673386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833738, 34.808289, 34.160034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909948, 35.004734, 34.500034>,  <24.955675, 35.122601, 34.704037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909948, 35.004734, 34.500034>,  <24.833738, 34.808289, 34.160034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909948, 35.004734, 34.500034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976407, -0.005162, -0.215877,
		-0.101633, 0.871079, -0.480512,
		0.190527, 0.491115, 0.850003,
		24.967106, 35.152069, 34.755035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363613, 35.316830, 33.895145>,  <24.833738, 34.808289, 34.160034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363613, 35.316830, 33.895145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422846, 35.283707, 34.289345>,  <25.458385, 35.263832, 34.525864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422846, 35.283707, 34.289345>,  <25.363613, 35.316830, 33.895145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422846, 35.283707, 34.289345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988955, 0.006176, -0.148084,
		0.006176, 0.996546, 0.082812,
		0.148084, -0.082812, 0.985502,
		25.467272, 35.258862, 34.584995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772095, 35.957306, 34.208599>,  <25.363613, 35.316830, 33.895145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772095, 35.957306, 34.208599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830320, 35.656296, 34.465508>,  <25.865255, 35.475689, 34.619652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830320, 35.656296, 34.465508>,  <25.772095, 35.957306, 34.208599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830320, 35.656296, 34.465508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987817, 0.146659, -0.052039,
		-0.055035, 0.642026, 0.764705,
		0.145562, -0.752525, 0.642275,
		25.873989, 35.430538, 34.658192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319965, 36.282375, 33.824932>,  <25.772095, 35.957306, 34.208599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319965, 36.282375, 33.824932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474508, 36.146461, 33.481941>,  <26.567234, 36.064915, 33.276146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474508, 36.146461, 33.481941>,  <26.319965, 36.282375, 33.824932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474508, 36.146461, 33.481941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348800, 0.806809, -0.476862,
		0.853853, 0.483330, 0.193202,
		0.386359, -0.339781, -0.857482,
		26.590416, 36.044525, 33.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842571, 36.806282, 33.481461>,  <26.319965, 36.282375, 33.824932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842571, 36.806282, 33.481461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701929, 36.568161, 33.192467>,  <26.617544, 36.425289, 33.019070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701929, 36.568161, 33.192467>,  <26.842571, 36.806282, 33.481461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701929, 36.568161, 33.192467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358953, 0.798509, -0.483256,
		0.864596, 0.089424, -0.494446,
		-0.351605, -0.595304, -0.722486,
		26.596447, 36.389568, 32.975719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983112, 37.177231, 32.862602>,  <26.842571, 36.806282, 33.481461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983112, 37.177231, 32.862602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687714, 36.917583, 32.789642>,  <26.510475, 36.761795, 32.745865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687714, 36.917583, 32.789642>,  <26.983112, 37.177231, 32.862602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687714, 36.917583, 32.789642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423050, 0.656723, -0.624294,
		0.525025, -0.383876, -0.759597,
		-0.738497, -0.649118, -0.182398,
		26.466166, 36.722847, 32.734924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007824, 37.119862, 32.083527>,  <26.983112, 37.177231, 32.862602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007824, 37.119862, 32.083527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667145, 37.029869, 32.272839>,  <26.462736, 36.975876, 32.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667145, 37.029869, 32.272839>,  <27.007824, 37.119862, 32.083527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667145, 37.029869, 32.272839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492649, 0.651605, -0.576809,
		-0.178623, -0.724428, -0.665806,
		-0.851699, -0.224977, 0.473280,
		26.411634, 36.962376, 32.414822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619034, 37.039822, 31.592463>,  <27.007824, 37.119862, 32.083527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619034, 37.039822, 31.592463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329674, 37.054066, 31.868267>,  <26.156057, 37.062614, 32.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329674, 37.054066, 31.868267>,  <26.619034, 37.039822, 31.592463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329674, 37.054066, 31.868267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580136, 0.510117, -0.634999,
		-0.374346, -0.859367, -0.348358,
		-0.723400, 0.035614, 0.689510,
		26.112654, 37.064751, 32.075119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921896, 36.847179, 31.202833>,  <26.619034, 37.039822, 31.592463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921896, 36.847179, 31.202833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839365, 37.031914, 31.547888>,  <25.789846, 37.142754, 31.754921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839365, 37.031914, 31.547888>,  <25.921896, 36.847179, 31.202833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839365, 37.031914, 31.547888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736861, 0.506713, -0.447524,
		-0.643790, -0.727978, 0.235757,
		-0.206327, 0.461832, 0.862636,
		25.777468, 37.170464, 31.806679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139425, 36.870655, 31.246967>,  <25.921896, 36.847179, 31.202833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139425, 36.870655, 31.246967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273729, 37.164959, 31.482229>,  <25.354311, 37.341541, 31.623386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273729, 37.164959, 31.482229>,  <25.139425, 36.870655, 31.246967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273729, 37.164959, 31.482229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694216, 0.615317, -0.373427,
		-0.636655, -0.282926, 0.717372,
		0.335759, 0.735756, 0.588157,
		25.374456, 37.385685, 31.658676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553505, 37.349434, 31.473021>,  <25.139425, 36.870655, 31.246967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553505, 37.349434, 31.473021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871508, 37.576363, 31.558920>,  <25.062309, 37.712521, 31.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871508, 37.576363, 31.558920>,  <24.553505, 37.349434, 31.473021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871508, 37.576363, 31.558920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499469, 0.813104, -0.298987,
		-0.344231, 0.130437, 0.929780,
		0.795006, 0.567317, 0.214747,
		25.110010, 37.746559, 31.623344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.354326, 37.928753, 31.826618>,  <24.553505, 37.349434, 31.473021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.354326, 37.928753, 31.826618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699913, 38.069378, 31.682415>,  <24.907265, 38.153751, 31.595894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699913, 38.069378, 31.682415>,  <24.354326, 37.928753, 31.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699913, 38.069378, 31.682415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460900, 0.840455, -0.284969,
		0.202807, 0.412362, 0.888159,
		0.863968, 0.351559, -0.360507,
		24.959103, 38.174847, 31.574263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303682, 38.699238, 31.868402>,  <24.354326, 37.928753, 31.826618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303682, 38.699238, 31.868402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596701, 38.621643, 31.607407>,  <24.772512, 38.575085, 31.450809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596701, 38.621643, 31.607407>,  <24.303682, 38.699238, 31.868402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596701, 38.621643, 31.607407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187709, 0.863806, -0.467552,
		0.654325, 0.464982, 0.596365,
		0.732546, -0.193988, -0.652491,
		24.816465, 38.563446, 31.411659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.623436, 39.380440, 31.739979>,  <24.303682, 38.699238, 31.868402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.623436, 39.380440, 31.739979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767740, 39.150055, 31.446552>,  <24.854322, 39.011826, 31.270496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767740, 39.150055, 31.446552>,  <24.623436, 39.380440, 31.739979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767740, 39.150055, 31.446552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001408, 0.786868, -0.617120,
		0.932657, 0.221599, 0.284682,
		0.360761, -0.575963, -0.733566,
		24.875969, 38.977264, 31.226482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256649, 39.641842, 31.500242>,  <24.623436, 39.380440, 31.739979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256649, 39.641842, 31.500242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099558, 39.455917, 31.182825>,  <25.005302, 39.344360, 30.992374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099558, 39.455917, 31.182825>,  <25.256649, 39.641842, 31.500242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099558, 39.455917, 31.182825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173657, 0.809867, -0.560320,
		0.903110, -0.357858, -0.237339,
		-0.392729, -0.464815, -0.793543,
		24.981739, 39.316471, 30.944761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695726, 39.763588, 30.812698>,  <25.256649, 39.641842, 31.500242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695726, 39.763588, 30.812698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344097, 39.654839, 30.656075>,  <25.133120, 39.589588, 30.562101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344097, 39.654839, 30.656075>,  <25.695726, 39.763588, 30.812698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344097, 39.654839, 30.656075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218286, 0.500643, -0.837680,
		0.423771, -0.821854, -0.380756,
		-0.879073, -0.271871, -0.391557,
		25.080376, 39.573277, 30.538607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873291, 39.576412, 30.089684>,  <25.695726, 39.763588, 30.812698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873291, 39.576412, 30.089684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480713, 39.647587, 30.118252>,  <25.245165, 39.690292, 30.135393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480713, 39.647587, 30.118252>,  <25.873291, 39.576412, 30.089684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480713, 39.647587, 30.118252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032376, 0.520944, -0.852977,
		-0.188984, -0.834839, -0.517039,
		-0.981446, 0.177939, 0.071421,
		25.186279, 39.700970, 30.139679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587322, 39.383926, 29.417299>,  <25.873291, 39.576412, 30.089684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587322, 39.383926, 29.417299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328377, 39.628056, 29.599913>,  <25.173010, 39.774532, 29.709480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328377, 39.628056, 29.599913>,  <25.587322, 39.383926, 29.417299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328377, 39.628056, 29.599913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041962, 0.569535, -0.820895,
		-0.761027, -0.550574, -0.343085,
		-0.647362, 0.610327, 0.456534,
		25.134169, 39.811153, 29.736874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208950, 39.734463, 28.900984>,  <25.587322, 39.383926, 29.417299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208950, 39.734463, 28.900984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105473, 39.969009, 29.208035>,  <25.043386, 40.109737, 29.392265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105473, 39.969009, 29.208035>,  <25.208950, 39.734463, 28.900984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105473, 39.969009, 29.208035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219564, 0.809571, -0.544414,
		-0.940675, 0.027706, -0.338177,
		-0.258695, 0.586368, 0.767626,
		25.027864, 40.144920, 29.438322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725512, 40.187141, 28.604082>,  <25.208950, 39.734463, 28.900984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725512, 40.187141, 28.604082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863232, 40.343445, 28.945555>,  <24.945864, 40.437225, 29.150438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863232, 40.343445, 28.945555>,  <24.725512, 40.187141, 28.604082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863232, 40.343445, 28.945555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120154, 0.883457, -0.452843,
		-0.931140, 0.258487, 0.257222,
		0.344299, 0.390754, 0.853680,
		24.966522, 40.460670, 29.201658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278471, 40.740513, 28.679844>,  <24.725512, 40.187141, 28.604082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278471, 40.740513, 28.679844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615175, 40.820396, 28.880466>,  <24.817198, 40.868324, 29.000839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615175, 40.820396, 28.880466>,  <24.278471, 40.740513, 28.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615175, 40.820396, 28.880466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012202, 0.921786, -0.387506,
		-0.539714, 0.332307, 0.773486,
		0.841760, 0.199704, 0.501555,
		24.867702, 40.880306, 29.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.145178, 41.459526, 28.895081>,  <24.278471, 40.740513, 28.679844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.145178, 41.459526, 28.895081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535051, 41.373302, 28.918850>,  <24.768974, 41.321568, 28.933111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.535051, 41.373302, 28.918850>,  <24.145178, 41.459526, 28.895081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.535051, 41.373302, 28.918850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221929, 0.900236, -0.374597,
		0.027251, 0.378301, 0.925282,
		0.974682, -0.215555, 0.059423,
		24.827456, 41.308636, 28.936676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463461, 42.033817, 29.274855>,  <24.145178, 41.459526, 28.895081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463461, 42.033817, 29.274855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711121, 41.835003, 29.031673>,  <24.859716, 41.715714, 28.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711121, 41.835003, 29.031673>,  <24.463461, 42.033817, 29.274855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711121, 41.835003, 29.031673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185692, 0.844907, -0.501647,
		0.763001, 0.197703, 0.615421,
		0.619151, -0.497037, -0.607953,
		24.896866, 41.685890, 28.849287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078768, 42.355736, 29.288534>,  <24.463461, 42.033817, 29.274855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078768, 42.355736, 29.288534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096773, 42.128578, 28.959785>,  <25.107576, 41.992283, 28.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096773, 42.128578, 28.959785>,  <25.078768, 42.355736, 29.288534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096773, 42.128578, 28.959785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246701, 0.803544, -0.541715,
		0.968046, -0.178373, 0.176268,
		0.045012, -0.567890, -0.821873,
		25.110277, 41.958210, 28.713224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754427, 42.496632, 28.904163>,  <25.078768, 42.355736, 29.288534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754427, 42.496632, 28.904163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477787, 42.364002, 28.647493>,  <25.311802, 42.284424, 28.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477787, 42.364002, 28.647493>,  <25.754427, 42.496632, 28.904163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477787, 42.364002, 28.647493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164142, 0.793004, -0.586688,
		0.703380, -0.511080, -0.494018,
		-0.691602, -0.331576, -0.641673,
		25.270306, 42.264530, 28.454992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130396, 41.887638, 28.738861>,  <25.754427, 42.496632, 28.904163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130396, 41.887638, 28.738861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762653, 41.923874, 28.585722>,  <25.542007, 41.945618, 28.493837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762653, 41.923874, 28.585722>,  <26.130396, 41.887638, 28.738861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762653, 41.923874, 28.585722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382251, -0.435946, 0.814761,
		-0.093090, 0.895402, 0.435420,
		-0.919358, 0.090593, -0.382850,
		25.486847, 41.951054, 28.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562094, 42.163780, 28.243454>,  <26.130396, 41.887638, 28.738861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562094, 42.163780, 28.243454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170198, 42.107254, 28.300222>,  <25.935061, 42.073338, 28.334284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170198, 42.107254, 28.300222>,  <26.562094, 42.163780, 28.243454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170198, 42.107254, 28.300222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037333, -0.825064, -0.563805,
		0.196766, -0.547083, 0.813623,
		-0.979739, -0.141313, 0.141920,
		25.876276, 42.064861, 28.342798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775024, 42.806889, 28.139330>,  <26.562094, 42.163780, 28.243454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775024, 42.806889, 28.139330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112686, 42.727203, 27.940247>,  <27.315283, 42.679394, 27.820797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112686, 42.727203, 27.940247>,  <26.775024, 42.806889, 28.139330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112686, 42.727203, 27.940247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395796, 0.394590, -0.829243,
		0.361587, 0.897002, 0.254248,
		0.844157, -0.199214, -0.497708,
		27.365932, 42.667439, 27.790934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944832, 43.392685, 27.856779>,  <26.775024, 42.806889, 28.139330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944832, 43.392685, 27.856779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144522, 43.138565, 27.621094>,  <27.264336, 42.986095, 27.479683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144522, 43.138565, 27.621094>,  <26.944832, 43.392685, 27.856779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144522, 43.138565, 27.621094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265133, 0.535395, -0.801908,
		0.824912, 0.556551, 0.098843,
		0.499223, -0.635297, -0.589215,
		27.294289, 42.947975, 27.444330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359680, 43.687984, 27.332918>,  <26.944832, 43.392685, 27.856779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359680, 43.687984, 27.332918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226969, 43.337151, 27.193983>,  <27.147343, 43.126648, 27.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226969, 43.337151, 27.193983>,  <27.359680, 43.687984, 27.332918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226969, 43.337151, 27.193983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297143, 0.446612, -0.843945,
		0.895338, -0.176793, -0.408796,
		-0.331777, -0.877087, -0.347336,
		27.127436, 43.074024, 27.089783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006071, 43.321079, 27.655930>,  <27.359680, 43.687984, 27.332918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006071, 43.321079, 27.655930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397966, 43.383392, 27.706278>,  <28.633104, 43.420780, 27.736486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397966, 43.383392, 27.706278>,  <28.006071, 43.321079, 27.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397966, 43.383392, 27.706278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133585, -0.976551, 0.168830,
		0.149221, -0.148595, -0.977575,
		0.979739, 0.155783, 0.125872,
		28.691889, 43.430126, 27.744040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385862, 42.803127, 27.285742>,  <28.006071, 43.321079, 27.655930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385862, 42.803127, 27.285742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627949, 42.938770, 27.573830>,  <28.773201, 43.020157, 27.746683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627949, 42.938770, 27.573830>,  <28.385862, 42.803127, 27.285742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627949, 42.938770, 27.573830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249116, -0.939969, 0.233238,
		0.756079, 0.038260, -0.653361,
		0.605215, 0.339109, 0.720222,
		28.809513, 43.040504, 27.789896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980541, 42.364876, 27.249775>,  <28.385862, 42.803127, 27.285742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980541, 42.364876, 27.249775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913168, 42.494240, 27.622234>,  <28.872744, 42.571857, 27.845711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913168, 42.494240, 27.622234>,  <28.980541, 42.364876, 27.249775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913168, 42.494240, 27.622234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166275, -0.921785, 0.350235,
		0.971588, 0.213818, 0.101485,
		-0.168434, 0.323410, 0.931148,
		28.862638, 42.591263, 27.901579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560293, 42.420677, 27.815420>,  <28.980541, 42.364876, 27.249775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560293, 42.420677, 27.815420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205914, 42.320160, 27.971344>,  <28.993286, 42.259850, 28.064898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205914, 42.320160, 27.971344>,  <29.560293, 42.420677, 27.815420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205914, 42.320160, 27.971344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350641, -0.913044, 0.208332,
		0.303561, 0.321254, 0.897021,
		-0.885947, -0.251291, 0.389809,
		28.940130, 42.244774, 28.088287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815920, 41.971348, 28.243839>,  <29.560293, 42.420677, 27.815420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815920, 41.971348, 28.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419552, 41.918709, 28.254873>,  <29.181732, 41.887123, 28.261494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419552, 41.918709, 28.254873>,  <29.815920, 41.971348, 28.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419552, 41.918709, 28.254873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130908, -0.897345, 0.421469,
		-0.030712, 0.421253, 0.906423,
		-0.990919, -0.131602, 0.027586,
		29.122276, 41.879227, 28.263149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698343, 41.786449, 28.869228>,  <29.815920, 41.971348, 28.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698343, 41.786449, 28.869228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411770, 41.640469, 28.631393>,  <29.239826, 41.552879, 28.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411770, 41.640469, 28.631393>,  <29.698343, 41.786449, 28.869228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411770, 41.640469, 28.631393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103813, -0.898545, 0.426428,
		-0.689886, 0.243783, 0.681636,
		-0.716436, -0.364949, -0.594585,
		29.196838, 41.530983, 28.453018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259607, 41.406063, 29.248388>,  <29.698343, 41.786449, 28.869228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259607, 41.406063, 29.248388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176035, 41.266262, 28.883051>,  <29.125891, 41.182381, 28.663849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176035, 41.266262, 28.883051>,  <29.259607, 41.406063, 29.248388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176035, 41.266262, 28.883051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132219, -0.935474, 0.327730,
		-0.968951, -0.052288, 0.241661,
		-0.208932, -0.349506, -0.913342,
		29.113356, 41.161411, 28.609049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638824, 40.969505, 29.309885>,  <29.259607, 41.406063, 29.248388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638824, 40.969505, 29.309885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828943, 40.886024, 28.968000>,  <28.943014, 40.835938, 28.762869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828943, 40.886024, 28.968000>,  <28.638824, 40.969505, 29.309885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828943, 40.886024, 28.968000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102743, -0.951646, 0.289507,
		-0.873805, -0.225418, -0.430872,
		0.475298, -0.208703, -0.854714,
		28.971533, 40.823414, 28.711586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262094, 40.416836, 28.913677>,  <28.638824, 40.969505, 29.309885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262094, 40.416836, 28.913677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647491, 40.396378, 28.808558>,  <28.878731, 40.384102, 28.745485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647491, 40.396378, 28.808558>,  <28.262094, 40.416836, 28.913677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647491, 40.396378, 28.808558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031583, -0.953017, 0.301266,
		-0.265861, -0.298568, -0.916611,
		0.963494, -0.051145, -0.262799,
		28.936539, 40.381035, 28.729717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366652, 39.653774, 28.632679>,  <28.262094, 40.416836, 28.913677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366652, 39.653774, 28.632679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745335, 39.776478, 28.671955>,  <28.972544, 39.850101, 28.695520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745335, 39.776478, 28.671955>,  <28.366652, 39.653774, 28.632679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745335, 39.776478, 28.671955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224783, -0.847574, 0.480719,
		0.230689, -0.433030, -0.871360,
		0.946708, 0.306763, 0.098188,
		29.029346, 39.868507, 28.701412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767389, 39.124977, 28.254881>,  <28.366652, 39.653774, 28.632679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767389, 39.124977, 28.254881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981819, 39.294670, 28.546812>,  <29.110477, 39.396488, 28.721970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981819, 39.294670, 28.546812>,  <28.767389, 39.124977, 28.254881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981819, 39.294670, 28.546812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001118, -0.864905, 0.501935,
		0.844169, -0.268260, -0.464129,
		0.536076, 0.424236, 0.729826,
		29.142643, 39.421940, 28.765760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331163, 38.685299, 28.456612>,  <28.767389, 39.124977, 28.254881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331163, 38.685299, 28.456612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292082, 38.918385, 28.779324>,  <29.268633, 39.058235, 28.972950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292082, 38.918385, 28.779324>,  <29.331163, 38.685299, 28.456612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292082, 38.918385, 28.779324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009960, -0.810045, 0.586283,
		0.995166, 0.065318, 0.073340,
		-0.097704, 0.582718, 0.806780,
		29.262772, 39.093201, 29.021357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656736, 38.330502, 28.942238>,  <29.331163, 38.685299, 28.456612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656736, 38.330502, 28.942238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432154, 38.591354, 29.146000>,  <29.297403, 38.747864, 29.268257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432154, 38.591354, 29.146000>,  <29.656736, 38.330502, 28.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432154, 38.591354, 29.146000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037964, -0.635240, 0.771381,
		0.826634, 0.413759, 0.381418,
		-0.561458, 0.652130, 0.509403,
		29.263716, 38.786995, 29.298820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017445, 38.506439, 29.576338>,  <29.656736, 38.330502, 28.942238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017445, 38.506439, 29.576338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626909, 38.561634, 29.642937>,  <29.392588, 38.594749, 29.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626909, 38.561634, 29.642937>,  <30.017445, 38.506439, 29.576338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626909, 38.561634, 29.642937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075694, -0.503168, 0.860868,
		0.202566, 0.853101, 0.480817,
		-0.976339, 0.137988, 0.166499,
		29.334007, 38.603031, 29.692886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992043, 38.571365, 30.275377>,  <30.017445, 38.506439, 29.576338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992043, 38.571365, 30.275377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617912, 38.492317, 30.157995>,  <29.393435, 38.444889, 30.087566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617912, 38.492317, 30.157995>,  <29.992043, 38.571365, 30.275377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617912, 38.492317, 30.157995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160372, -0.502523, 0.849560,
		-0.315355, 0.841676, 0.438329,
		-0.935324, -0.197617, -0.293455,
		29.337315, 38.433033, 30.069960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584074, 38.719242, 30.838831>,  <29.992043, 38.571365, 30.275377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584074, 38.719242, 30.838831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353493, 38.465649, 30.632622>,  <29.215143, 38.313492, 30.508896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353493, 38.465649, 30.632622>,  <29.584074, 38.719242, 30.838831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353493, 38.465649, 30.632622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224666, -0.483613, 0.845957,
		-0.785638, 0.603476, 0.136345,
		-0.576453, -0.633984, -0.515525,
		29.180557, 38.275452, 30.477964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034695, 38.497421, 31.297710>,  <29.584074, 38.719242, 30.838831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034695, 38.497421, 31.297710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990652, 38.225269, 31.007893>,  <28.964226, 38.061977, 30.834002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990652, 38.225269, 31.007893>,  <29.034695, 38.497421, 31.297710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990652, 38.225269, 31.007893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387819, -0.641782, 0.661598,
		-0.915135, 0.353839, -0.193199,
		-0.110107, -0.680378, -0.724543,
		28.957621, 38.021156, 30.790529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346611, 38.154804, 31.329338>,  <29.034695, 38.497421, 31.297710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346611, 38.154804, 31.329338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575914, 37.887348, 31.139900>,  <28.713497, 37.726875, 31.026237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575914, 37.887348, 31.139900>,  <28.346611, 38.154804, 31.329338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575914, 37.887348, 31.139900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431933, -0.737767, 0.518781,
		-0.696281, -0.092835, -0.711740,
		0.573260, -0.668641, -0.473595,
		28.747892, 37.686756, 30.997822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871517, 37.680363, 31.100441>,  <28.346611, 38.154804, 31.329338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871517, 37.680363, 31.100441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233700, 37.510593, 31.101843>,  <28.451010, 37.408733, 31.102684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233700, 37.510593, 31.101843>,  <27.871517, 37.680363, 31.100441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233700, 37.510593, 31.101843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364848, -0.774086, 0.517374,
		-0.216872, -0.469739, -0.855752,
		0.905457, -0.424424, 0.003505,
		28.505337, 37.383266, 31.102894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699596, 37.039181, 31.153837>,  <27.871517, 37.680363, 31.100441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699596, 37.039181, 31.153837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086451, 37.044910, 31.255381>,  <28.318563, 37.048347, 31.316307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086451, 37.044910, 31.255381>,  <27.699596, 37.039181, 31.153837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086451, 37.044910, 31.255381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152405, -0.766520, 0.623875,
		0.203524, -0.642061, -0.739145,
		0.967135, 0.014324, 0.253858,
		28.376591, 37.049206, 31.331537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971079, 36.340923, 31.152617>,  <27.699596, 37.039181, 31.153837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971079, 36.340923, 31.152617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172928, 36.555115, 31.423502>,  <28.294037, 36.683628, 31.586033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172928, 36.555115, 31.423502>,  <27.971079, 36.340923, 31.152617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172928, 36.555115, 31.423502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194374, -0.693808, 0.693433,
		0.841174, -0.481556, -0.246030,
		0.504624, 0.535475, 0.677215,
		28.324316, 36.715759, 31.626667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441563, 35.891193, 31.306379>,  <27.971079, 36.340923, 31.152617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441563, 35.891193, 31.306379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426861, 36.155361, 31.606377>,  <28.418039, 36.313862, 31.786375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426861, 36.155361, 31.606377>,  <28.441563, 35.891193, 31.306379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426861, 36.155361, 31.606377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179470, -0.742661, 0.645171,
		0.983077, -0.110888, 0.145823,
		-0.036755, 0.660423, 0.749994,
		28.415834, 36.353489, 31.831375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940689, 35.705559, 31.721174>,  <28.441563, 35.891193, 31.306379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940689, 35.705559, 31.721174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687870, 35.917336, 31.947521>,  <28.536179, 36.044399, 32.083328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687870, 35.917336, 31.947521>,  <28.940689, 35.705559, 31.721174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687870, 35.917336, 31.947521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000381, -0.730433, 0.682984,
		0.774929, 0.431464, 0.461871,
		-0.632049, 0.529440, 0.565869,
		28.498255, 36.076168, 32.117283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304001, 35.871384, 32.385750>,  <28.940689, 35.705559, 31.721174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304001, 35.871384, 32.385750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910360, 35.897976, 32.451626>,  <28.674175, 35.913929, 32.491150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910360, 35.897976, 32.451626>,  <29.304001, 35.871384, 32.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910360, 35.897976, 32.451626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087317, -0.626395, 0.774600,
		0.154654, 0.776666, 0.610633,
		-0.984103, 0.066476, 0.164690,
		28.615129, 35.917919, 32.501034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247734, 35.815239, 33.091984>,  <29.304001, 35.871384, 32.385750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247734, 35.815239, 33.091984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869892, 35.758732, 32.973484>,  <28.643187, 35.724827, 32.902382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869892, 35.758732, 32.973484>,  <29.247734, 35.815239, 33.091984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869892, 35.758732, 32.973484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108815, -0.716784, 0.688752,
		-0.309647, 0.682835, 0.661706,
		-0.944605, -0.141267, -0.296252,
		28.586512, 35.716351, 32.884609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624397, 35.827446, 33.701057>,  <29.247734, 35.815239, 33.091984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624397, 35.827446, 33.701057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396347, 36.003582, 33.978493>,  <29.259518, 36.109264, 34.144955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396347, 36.003582, 33.978493>,  <29.624397, 35.827446, 33.701057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396347, 36.003582, 33.978493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273026, -0.694696, 0.665473,
		0.774864, 0.568769, 0.275839,
		-0.570125, 0.440340, 0.693584,
		29.225309, 36.135685, 34.186569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319153, 35.940331, 33.912212>,  <29.624397, 35.827446, 33.701057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319153, 35.940331, 33.912212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370806, 36.201782, 33.613926>,  <30.401796, 36.358654, 33.434956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370806, 36.201782, 33.613926>,  <30.319153, 35.940331, 33.912212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370806, 36.201782, 33.613926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745925, 0.431480, 0.507367,
		0.653392, -0.621764, -0.431843,
		0.129131, 0.653632, -0.745715,
		30.409546, 36.397873, 33.390213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006985, 36.058315, 33.825428>,  <30.319153, 35.940331, 33.912212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006985, 36.058315, 33.825428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811230, 36.376244, 33.681896>,  <30.693777, 36.567001, 33.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811230, 36.376244, 33.681896>,  <31.006985, 36.058315, 33.825428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811230, 36.376244, 33.681896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731357, 0.598186, 0.327552,
		0.474991, -0.102131, -0.874044,
		-0.489388, 0.794823, -0.358827,
		30.664413, 36.614689, 33.574249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517056, 36.440022, 33.369423>,  <31.006985, 36.058315, 33.825428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517056, 36.440022, 33.369423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230465, 36.675613, 33.518963>,  <31.058510, 36.816967, 33.608688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230465, 36.675613, 33.518963>,  <31.517056, 36.440022, 33.369423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230465, 36.675613, 33.518963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675009, 0.720616, 0.158354,
		-0.176138, 0.365812, -0.913869,
		-0.716476, 0.588978, 0.373854,
		31.015522, 36.852306, 33.631119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944384, 36.694870, 33.911564>,  <31.517056, 36.440022, 33.369423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944384, 36.694870, 33.911564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810825, 36.477089, 34.219353>,  <31.730690, 36.346420, 34.404026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810825, 36.477089, 34.219353>,  <31.944384, 36.694870, 33.911564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810825, 36.477089, 34.219353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381263, -0.824568, -0.418003,
		0.862064, 0.153801, 0.482899,
		-0.333893, -0.544457, 0.769469,
		31.710657, 36.313751, 34.450191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420887, 36.115696, 34.202526>,  <31.944384, 36.694870, 33.911564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420887, 36.115696, 34.202526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040092, 36.014069, 34.270851>,  <31.811617, 35.953094, 34.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040092, 36.014069, 34.270851>,  <32.420887, 36.115696, 34.202526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040092, 36.014069, 34.270851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154653, -0.880609, -0.447895,
		0.264214, -0.399972, 0.877618,
		-0.951984, -0.254066, 0.170812,
		31.754498, 35.937847, 34.322094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989017, 35.746529, 33.955605>,  <32.420887, 36.115696, 34.202526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989017, 35.746529, 33.955605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091419, 36.116177, 33.842144>,  <33.152859, 36.337967, 33.774067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091419, 36.116177, 33.842144>,  <32.989017, 35.746529, 33.955605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091419, 36.116177, 33.842144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181554, 0.242247, 0.953076,
		0.949475, -0.295487, -0.105763,
		0.256001, 0.924123, -0.283655,
		33.168221, 36.393414, 33.757046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629932, 35.902451, 34.280792>,  <32.989017, 35.746529, 33.955605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629932, 35.902451, 34.280792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406910, 36.222431, 34.192059>,  <33.273094, 36.414417, 34.138821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406910, 36.222431, 34.192059>,  <33.629932, 35.902451, 34.280792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406910, 36.222431, 34.192059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027853, 0.285100, 0.958093,
		0.829669, 0.528015, -0.181241,
		-0.557560, 0.799948, -0.221832,
		33.239643, 36.462418, 34.125507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031116, 35.235615, 34.132969>,  <33.629932, 35.902451, 34.280792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031116, 35.235615, 34.132969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185158, 34.873165, 34.202980>,  <34.277584, 34.655697, 34.244987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185158, 34.873165, 34.202980>,  <34.031116, 35.235615, 34.132969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185158, 34.873165, 34.202980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666649, -0.141989, 0.731723,
		-0.638180, -0.398471, -0.658747,
		0.385105, -0.906124, 0.175026,
		34.300690, 34.601330, 34.255489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478210, 34.728996, 34.237953>,  <34.031116, 35.235615, 34.132969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478210, 34.728996, 34.237953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792484, 34.577782, 34.433826>,  <33.981049, 34.487053, 34.551350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792484, 34.577782, 34.433826>,  <33.478210, 34.728996, 34.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792484, 34.577782, 34.433826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587187, -0.206591, 0.782644,
		-0.194702, -0.902447, -0.384292,
		0.785686, -0.378034, 0.489681,
		34.028191, 34.464371, 34.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313992, 34.085205, 34.625198>,  <33.478210, 34.728996, 34.237953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313992, 34.085205, 34.625198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659180, 34.165600, 34.810623>,  <33.866291, 34.213837, 34.921879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659180, 34.165600, 34.810623>,  <33.313992, 34.085205, 34.625198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659180, 34.165600, 34.810623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347480, -0.429963, 0.833300,
		0.366798, -0.880190, -0.301206,
		0.862970, 0.200989, 0.463558,
		33.918072, 34.225895, 34.949692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354122, 33.584385, 35.179111>,  <33.313992, 34.085205, 34.625198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354122, 33.584385, 35.179111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605053, 33.874252, 35.293175>,  <33.755611, 34.048172, 35.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605053, 33.874252, 35.293175>,  <33.354122, 33.584385, 35.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605053, 33.874252, 35.293175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315825, -0.097965, 0.943746,
		0.711836, -0.682102, 0.167411,
		0.627331, 0.724665, 0.285160,
		33.793251, 34.091652, 35.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868870, 33.293594, 35.685940>,  <33.354122, 33.584385, 35.179111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868870, 33.293594, 35.685940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801674, 33.682892, 35.748646>,  <33.761356, 33.916470, 35.786270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801674, 33.682892, 35.748646>,  <33.868870, 33.293594, 35.685940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801674, 33.682892, 35.748646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228768, -0.193169, 0.954123,
		0.958878, 0.124417, 0.255097,
		-0.167986, 0.973245, 0.156762,
		33.751278, 33.974865, 35.795673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113014, 33.376438, 36.292786>,  <33.868870, 33.293594, 35.685940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113014, 33.376438, 36.292786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888023, 33.704220, 36.248756>,  <33.753029, 33.900887, 36.222340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888023, 33.704220, 36.248756>,  <34.113014, 33.376438, 36.292786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888023, 33.704220, 36.248756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346473, -0.112732, 0.931262,
		0.750716, 0.561951, 0.347327,
		-0.562478, 0.819452, -0.110071,
		33.719280, 33.950054, 36.215736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267841, 33.712921, 36.912891>,  <34.113014, 33.376438, 36.292786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267841, 33.712921, 36.912891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943848, 33.908413, 36.783234>,  <33.749451, 34.025707, 36.705441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943848, 33.908413, 36.783234>,  <34.267841, 33.712921, 36.912891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943848, 33.908413, 36.783234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400886, -0.058011, 0.914289,
		0.428038, 0.870503, 0.242914,
		-0.809983, 0.488732, -0.324142,
		33.700851, 34.055031, 36.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052422, 34.245239, 37.435646>,  <34.267841, 33.712921, 36.912891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052422, 34.245239, 37.435646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708054, 34.183994, 37.241581>,  <33.501434, 34.147247, 37.125141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708054, 34.183994, 37.241581>,  <34.052422, 34.245239, 37.435646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708054, 34.183994, 37.241581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504078, 0.127809, 0.854149,
		-0.068776, 0.979908, -0.187215,
		-0.860915, -0.153116, -0.485160,
		33.449780, 34.138058, 37.096031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506935, 34.773254, 37.714626>,  <34.052422, 34.245239, 37.435646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506935, 34.773254, 37.714626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320789, 34.451759, 37.566334>,  <33.209103, 34.258862, 37.477360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320789, 34.451759, 37.566334>,  <33.506935, 34.773254, 37.714626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320789, 34.451759, 37.566334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686628, 0.063503, 0.724230,
		-0.558551, 0.591582, -0.581422,
		-0.465364, -0.803740, -0.370727,
		33.181179, 34.210636, 37.455116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781773, 34.906963, 37.712086>,  <33.506935, 34.773254, 37.714626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781773, 34.906963, 37.712086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813396, 34.508781, 37.690876>,  <32.832371, 34.269871, 37.678150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813396, 34.508781, 37.690876>,  <32.781773, 34.906963, 37.712086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813396, 34.508781, 37.690876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742595, -0.094293, 0.663070,
		-0.665058, -0.013048, -0.746678,
		0.079058, -0.995459, -0.053021,
		32.837112, 34.210144, 37.674969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041344, 34.565773, 37.799244>,  <32.781773, 34.906963, 37.712086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041344, 34.565773, 37.799244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308445, 34.278542, 37.877693>,  <32.468704, 34.106201, 37.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308445, 34.278542, 37.877693>,  <32.041344, 34.565773, 37.799244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308445, 34.278542, 37.877693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621270, -0.392496, 0.678211,
		-0.410036, -0.574721, -0.708214,
		0.667753, -0.718083, 0.196120,
		32.508770, 34.063118, 37.936527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642845, 33.943821, 37.747971>,  <32.041344, 34.565773, 37.799244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642845, 33.943821, 37.747971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951843, 33.830326, 37.975212>,  <32.137241, 33.762230, 38.111557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951843, 33.830326, 37.975212>,  <31.642845, 33.943821, 37.747971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951843, 33.830326, 37.975212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614524, -0.559482, 0.556183,
		0.160032, -0.778762, -0.606563,
		0.772496, -0.283741, 0.568103,
		32.183594, 33.745205, 38.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400414, 33.318157, 38.077778>,  <31.642845, 33.943821, 37.747971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400414, 33.318157, 38.077778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732006, 33.401657, 38.285320>,  <31.930962, 33.451756, 38.409847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732006, 33.401657, 38.285320>,  <31.400414, 33.318157, 38.077778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732006, 33.401657, 38.285320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408657, -0.407289, 0.816771,
		0.381824, -0.889123, -0.252330,
		0.828981, 0.208746, 0.518859,
		31.980701, 33.464279, 38.440979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602468, 32.686436, 38.203781>,  <31.400414, 33.318157, 38.077778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602468, 32.686436, 38.203781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761665, 32.937195, 38.471691>,  <31.857183, 33.087650, 38.632435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761665, 32.937195, 38.471691>,  <31.602468, 32.686436, 38.203781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761665, 32.937195, 38.471691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342237, -0.575921, 0.742421,
		0.851162, -0.524698, -0.014663,
		0.397992, 0.626902, 0.669773,
		31.881063, 33.125267, 38.672623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847656, 32.309429, 38.682571>,  <31.602468, 32.686436, 38.203781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847656, 32.309429, 38.682571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810589, 32.659843, 38.871872>,  <31.788347, 32.870094, 38.985455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810589, 32.659843, 38.871872>,  <31.847656, 32.309429, 38.682571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810589, 32.659843, 38.871872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465617, -0.458256, 0.757102,
		0.880121, -0.150194, 0.450365,
		-0.092670, 0.876039, 0.473253,
		31.782787, 32.922653, 39.013847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189835, 32.188255, 39.359428>,  <31.847656, 32.309429, 38.682571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189835, 32.188255, 39.359428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931309, 32.489487, 39.408649>,  <31.776194, 32.670227, 39.438183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931309, 32.489487, 39.408649>,  <32.189835, 32.188255, 39.359428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931309, 32.489487, 39.408649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487771, -0.531745, 0.692334,
		0.586817, 0.387445, 0.711008,
		-0.646316, 0.753083, 0.123052,
		31.737413, 32.715412, 39.445564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062611, 32.116169, 40.083241>,  <32.189835, 32.188255, 39.359428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062611, 32.116169, 40.083241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777477, 32.373642, 39.971851>,  <31.606398, 32.528126, 39.905018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777477, 32.373642, 39.971851>,  <32.062611, 32.116169, 40.083241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777477, 32.373642, 39.971851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622613, -0.398021, 0.673745,
		0.322842, 0.653645, 0.684487,
		-0.712830, 0.643683, -0.278470,
		31.563629, 32.566746, 39.888309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781977, 32.327789, 40.688931>,  <32.062611, 32.116169, 40.083241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781977, 32.327789, 40.688931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503098, 32.397377, 40.410751>,  <31.335770, 32.439129, 40.243843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503098, 32.397377, 40.410751>,  <31.781977, 32.327789, 40.688931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503098, 32.397377, 40.410751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716653, -0.193529, 0.670041,
		-0.018020, 0.965546, 0.259606,
		-0.697197, 0.173974, -0.695449,
		31.293938, 32.449570, 40.202118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158144, 32.800087, 40.975815>,  <31.781977, 32.327789, 40.688931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158144, 32.800087, 40.975815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074337, 32.522194, 40.700584>,  <31.024054, 32.355457, 40.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074337, 32.522194, 40.700584>,  <31.158144, 32.800087, 40.975815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074337, 32.522194, 40.700584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709422, -0.376274, 0.595935,
		-0.672922, 0.612992, -0.414025,
		-0.209517, -0.694736, -0.688073,
		31.011482, 32.313774, 40.494164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617418, 32.614094, 41.261700>,  <31.158144, 32.800087, 40.975815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617418, 32.614094, 41.261700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646116, 32.346756, 40.965549>,  <30.663336, 32.186352, 40.787857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646116, 32.346756, 40.965549>,  <30.617418, 32.614094, 41.261700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646116, 32.346756, 40.965549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743330, -0.530777, 0.407106,
		-0.665065, 0.521138, -0.534886,
		0.071747, -0.668349, -0.740380,
		30.667641, 32.146252, 40.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951525, 32.395714, 41.158264>,  <30.617418, 32.614094, 41.261700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951525, 32.395714, 41.158264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153845, 32.094685, 40.989597>,  <30.275236, 31.914068, 40.888397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153845, 32.094685, 40.989597>,  <29.951525, 32.395714, 41.158264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153845, 32.094685, 40.989597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714948, -0.639226, 0.283265,
		-0.482719, 0.158196, -0.861369,
		0.505798, -0.752572, -0.421669,
		30.305584, 31.868914, 40.863098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436422, 31.911669, 40.808975>,  <29.951525, 32.395714, 41.158264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436422, 31.911669, 40.808975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762705, 31.686695, 40.863071>,  <29.958475, 31.551710, 40.895531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762705, 31.686695, 40.863071>,  <29.436422, 31.911669, 40.808975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762705, 31.686695, 40.863071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576082, -0.768623, 0.278114,
		-0.052469, -0.304772, -0.950979,
		0.815706, -0.562434, 0.135244,
		30.007416, 31.517965, 40.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233963, 31.289511, 40.731812>,  <29.436422, 31.911669, 40.808975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233963, 31.289511, 40.731812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593784, 31.227451, 40.895142>,  <29.809677, 31.190216, 40.993141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593784, 31.227451, 40.895142>,  <29.233963, 31.289511, 40.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593784, 31.227451, 40.895142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363687, -0.783786, 0.503400,
		0.241939, -0.601339, -0.761483,
		0.899554, -0.155149, 0.408328,
		29.863651, 31.180906, 41.017639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074057, 30.547564, 40.943535>,  <29.233963, 31.289511, 40.731812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074057, 30.547564, 40.943535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382986, 30.717152, 41.132748>,  <29.568344, 30.818905, 41.246277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382986, 30.717152, 41.132748>,  <29.074057, 30.547564, 40.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382986, 30.717152, 41.132748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284290, -0.435239, 0.854252,
		0.568060, -0.794240, -0.215616,
		0.772326, 0.423969, 0.473037,
		29.614683, 30.844341, 41.274658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409510, 30.032845, 41.350475>,  <29.074057, 30.547564, 40.943535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409510, 30.032845, 41.350475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510042, 30.376377, 41.529022>,  <29.570362, 30.582497, 41.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510042, 30.376377, 41.529022>,  <29.409510, 30.032845, 41.350475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510042, 30.376377, 41.529022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309676, -0.365577, 0.877755,
		0.917024, -0.358835, 0.174079,
		0.251330, 0.858831, 0.446366,
		29.585442, 30.634026, 41.662933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869562, 29.881447, 41.912926>,  <29.409510, 30.032845, 41.350475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869562, 29.881447, 41.912926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738708, 30.241573, 42.027760>,  <29.660196, 30.457649, 42.096661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738708, 30.241573, 42.027760>,  <29.869562, 29.881447, 41.912926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738708, 30.241573, 42.027760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139841, -0.346576, 0.927539,
		0.934573, 0.263285, 0.239279,
		-0.327136, 0.900314, 0.287083,
		29.640568, 30.511667, 42.113884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240522, 30.101059, 42.518818>,  <29.869562, 29.881447, 41.912926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240522, 30.101059, 42.518818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888628, 30.290091, 42.497890>,  <29.677492, 30.403509, 42.485332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888628, 30.290091, 42.497890>,  <30.240522, 30.101059, 42.518818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888628, 30.290091, 42.497890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253253, -0.372602, 0.892766,
		0.402406, 0.798647, 0.447472,
		-0.879734, 0.472578, -0.052323,
		29.624708, 30.431864, 42.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088829, 30.417645, 43.219276>,  <30.240522, 30.101059, 42.518818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088829, 30.417645, 43.219276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742670, 30.408148, 43.019066>,  <29.534975, 30.402449, 42.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742670, 30.408148, 43.019066>,  <30.088829, 30.417645, 43.219276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742670, 30.408148, 43.019066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451396, -0.396730, 0.799279,
		-0.217550, 0.917628, 0.332612,
		-0.865398, -0.023744, -0.500523,
		29.483051, 30.401024, 42.868908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485510, 30.758154, 43.546028>,  <30.088829, 30.417645, 43.219276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485510, 30.758154, 43.546028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383457, 30.424662, 43.350151>,  <29.322226, 30.224566, 43.232624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383457, 30.424662, 43.350151>,  <29.485510, 30.758154, 43.546028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383457, 30.424662, 43.350151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441969, -0.349893, 0.825977,
		-0.859983, 0.427163, -0.279215,
		-0.255131, -0.833730, -0.489695,
		29.306917, 30.174543, 43.203243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771009, 30.595051, 43.640739>,  <29.485510, 30.758154, 43.546028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771009, 30.595051, 43.640739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952385, 30.246143, 43.567486>,  <29.061211, 30.036798, 43.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952385, 30.246143, 43.567486>,  <28.771009, 30.595051, 43.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952385, 30.246143, 43.567486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298342, -0.342161, 0.891021,
		-0.839873, -0.349385, -0.415384,
		0.453438, -0.872270, -0.183135,
		29.088417, 29.984463, 43.512547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467800, 30.224993, 44.093868>,  <28.771009, 30.595051, 43.640739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467800, 30.224993, 44.093868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764313, 29.978935, 43.986465>,  <28.942221, 29.831301, 43.922024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764313, 29.978935, 43.986465>,  <28.467800, 30.224993, 44.093868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764313, 29.978935, 43.986465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223733, -0.603627, 0.765231,
		-0.632809, -0.507176, -0.585085,
		0.741280, -0.615148, -0.268509,
		28.986698, 29.794392, 43.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162092, 29.589706, 43.859287>,  <28.467800, 30.224993, 44.093868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162092, 29.589706, 43.859287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532887, 29.515209, 43.989525>,  <28.755363, 29.470510, 44.067665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532887, 29.515209, 43.989525>,  <28.162092, 29.589706, 43.859287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532887, 29.515209, 43.989525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366083, -0.638334, 0.677136,
		0.081726, -0.746889, -0.659907,
		0.926987, -0.186241, 0.325592,
		28.810982, 29.459337, 44.087204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100225, 28.909824, 44.040592>,  <28.162092, 29.589706, 43.859287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100225, 28.909824, 44.040592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430283, 29.033995, 44.229389>,  <28.628317, 29.108498, 44.342667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430283, 29.033995, 44.229389>,  <28.100225, 28.909824, 44.040592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430283, 29.033995, 44.229389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307224, -0.454555, 0.836058,
		0.474080, -0.834874, -0.279702,
		0.825143, 0.310427, 0.471989,
		28.677826, 29.127123, 44.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460981, 28.299088, 44.171009>,  <28.100225, 28.909824, 44.040592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460981, 28.299088, 44.171009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559368, 28.577190, 44.441154>,  <28.618401, 28.744051, 44.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559368, 28.577190, 44.441154>,  <28.460981, 28.299088, 44.171009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559368, 28.577190, 44.441154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010278, -0.694862, 0.719070,
		0.969223, -0.183809, -0.163768,
		0.245968, 0.695256, 0.675366,
		28.633158, 28.785767, 44.643764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764259, 27.890432, 44.705658>,  <28.460981, 28.299088, 44.171009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764259, 27.890432, 44.705658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813200, 28.238529, 44.896534>,  <28.842564, 28.447388, 45.011059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813200, 28.238529, 44.896534>,  <28.764259, 27.890432, 44.705658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813200, 28.238529, 44.896534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000789, -0.480713, 0.876877,
		0.992486, -0.107664, -0.058129,
		0.122352, 0.870243, 0.477186,
		28.849905, 28.499601, 45.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367619, 27.922663, 45.231743>,  <28.764259, 27.890432, 44.705658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367619, 27.922663, 45.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093971, 28.185741, 45.357864>,  <28.929783, 28.343588, 45.433537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093971, 28.185741, 45.357864>,  <29.367619, 27.922663, 45.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093971, 28.185741, 45.357864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210365, -0.591849, 0.778114,
		0.698374, 0.465995, 0.543252,
		-0.684120, 0.657696, 0.315303,
		28.888735, 28.383051, 45.452454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453419, 27.818619, 45.891647>,  <29.367619, 27.922663, 45.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453419, 27.818619, 45.891647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105520, 28.015762, 45.881599>,  <28.896780, 28.134048, 45.875572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105520, 28.015762, 45.881599>,  <29.453419, 27.818619, 45.891647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105520, 28.015762, 45.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311273, -0.508384, 0.802904,
		0.382947, 0.706142, 0.595579,
		-0.869747, 0.492857, -0.025119,
		28.844597, 28.163620, 45.874065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191078, 27.880941, 46.593323>,  <29.453419, 27.818619, 45.891647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191078, 27.880941, 46.593323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847574, 28.004211, 46.429588>,  <28.641472, 28.078173, 46.331348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847574, 28.004211, 46.429588>,  <29.191078, 27.880941, 46.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847574, 28.004211, 46.429588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511482, -0.562742, 0.649390,
		-0.030227, 0.767040, 0.640886,
		-0.858762, 0.308173, -0.409338,
		28.589945, 28.096663, 46.306786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792074, 28.114197, 47.213451>,  <29.191078, 27.880941, 46.593323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792074, 28.114197, 47.213451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546476, 28.033602, 46.908188>,  <28.399117, 27.985245, 46.725029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546476, 28.033602, 46.908188>,  <28.792074, 28.114197, 47.213451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546476, 28.033602, 46.908188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610191, -0.492137, 0.620860,
		-0.500676, 0.846878, 0.179223,
		-0.613995, -0.201489, -0.763159,
		28.362278, 27.973154, 46.679241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120029, 28.237305, 47.524624>,  <28.792074, 28.114197, 47.213451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120029, 28.237305, 47.524624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116337, 28.002317, 47.200947>,  <28.114122, 27.861324, 47.006741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116337, 28.002317, 47.200947>,  <28.120029, 28.237305, 47.524624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116337, 28.002317, 47.200947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585008, -0.653119, 0.480833,
		-0.810975, 0.477823, -0.337646,
		-0.009231, -0.587469, -0.809194,
		28.113567, 27.826077, 46.958187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405638, 27.913893, 47.562351>,  <28.120029, 28.237305, 47.524624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405638, 27.913893, 47.562351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635321, 27.695665, 47.318172>,  <27.773130, 27.564730, 47.171665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635321, 27.695665, 47.318172>,  <27.405638, 27.913893, 47.562351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635321, 27.695665, 47.318172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390868, -0.837834, 0.381126,
		-0.719381, 0.019759, -0.694334,
		0.574206, -0.545568, -0.610445,
		27.807583, 27.531996, 47.135040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996017, 27.338751, 47.285686>,  <27.405638, 27.913893, 47.562351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996017, 27.338751, 47.285686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380997, 27.230352, 47.279270>,  <27.611984, 27.165314, 47.275421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380997, 27.230352, 47.279270>,  <26.996017, 27.338751, 47.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380997, 27.230352, 47.279270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245751, -0.894854, 0.372616,
		-0.115335, -0.354680, -0.927847,
		0.962447, -0.270995, -0.016045,
		27.669731, 27.149054, 47.274456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184076, 26.670948, 46.847416>,  <26.996017, 27.338751, 47.285686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184076, 26.670948, 46.847416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396395, 26.746790, 47.177822>,  <27.523787, 26.792295, 47.376068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396395, 26.746790, 47.177822>,  <27.184076, 26.670948, 46.847416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396395, 26.746790, 47.177822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324059, -0.855182, 0.404537,
		0.783097, -0.482405, -0.392485,
		0.530796, 0.189603, 0.826018,
		27.555634, 26.803671, 47.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940353, 26.403275, 47.549149>,  <27.184076, 26.670948, 46.847416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940353, 26.403275, 47.549149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965500, 26.037682, 47.709492>,  <26.980589, 25.818327, 47.805698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965500, 26.037682, 47.709492>,  <26.940353, 26.403275, 47.549149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965500, 26.037682, 47.709492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447469, 0.384831, 0.807265,
		-0.892087, 0.128620, 0.433171,
		0.062868, -0.913981, 0.400856,
		26.984360, 25.763487, 47.829750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679295, 26.284746, 48.292362>,  <26.940353, 26.403275, 47.549149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679295, 26.284746, 48.292362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988791, 26.044449, 48.211933>,  <27.174488, 25.900270, 48.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988791, 26.044449, 48.211933>,  <26.679295, 26.284746, 48.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988791, 26.044449, 48.211933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492637, 0.371031, 0.787175,
		-0.398288, -0.708126, 0.583031,
		0.773741, -0.600745, -0.201072,
		27.220913, 25.864225, 48.151611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945324, 25.860544, 48.785522>,  <26.679295, 26.284746, 48.292362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945324, 25.860544, 48.785522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251331, 25.946796, 48.542789>,  <27.434937, 25.998547, 48.397148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251331, 25.946796, 48.542789>,  <26.945324, 25.860544, 48.785522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251331, 25.946796, 48.542789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484446, 0.428178, 0.762873,
		0.424315, -0.877597, 0.223117,
		0.765028, 0.215610, -0.606831,
		27.480837, 26.011486, 48.360741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467121, 25.881628, 49.227467>,  <26.945324, 25.860544, 48.785522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467121, 25.881628, 49.227467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605928, 26.112711, 48.931946>,  <27.689213, 26.251360, 48.754631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605928, 26.112711, 48.931946>,  <27.467121, 25.881628, 49.227467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605928, 26.112711, 48.931946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708957, 0.354116, 0.609903,
		0.613968, -0.735429, -0.286684,
		0.347020, 0.577708, -0.738804,
		27.710035, 26.286024, 48.710304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025240, 25.612486, 48.965248>,  <27.467121, 25.881628, 49.227467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025240, 25.612486, 48.965248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014246, 26.011772, 48.944061>,  <28.007650, 26.251345, 48.931347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014246, 26.011772, 48.944061>,  <28.025240, 25.612486, 48.965248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014246, 26.011772, 48.944061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819273, 0.052855, 0.570963,
		0.572745, -0.027704, -0.819265,
		-0.027484, 0.998218, -0.052970,
		28.006001, 26.311237, 48.928169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625921, 25.901890, 48.753559>,  <28.025240, 25.612486, 48.965248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625921, 25.901890, 48.753559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451021, 26.186644, 48.973389>,  <28.346081, 26.357496, 49.105286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451021, 26.186644, 48.973389>,  <28.625921, 25.901890, 48.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451021, 26.186644, 48.973389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861122, 0.155162, 0.484142,
		0.259381, 0.684940, -0.680866,
		-0.437252, 0.711886, 0.549571,
		28.319845, 26.400209, 49.138260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220760, 25.687664, 48.242752>,  <28.625921, 25.901890, 48.753559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220760, 25.687664, 48.242752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922018, 25.547113, 48.016922>,  <28.742773, 25.462782, 47.881424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922018, 25.547113, 48.016922>,  <29.220760, 25.687664, 48.242752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922018, 25.547113, 48.016922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540385, 0.174091, -0.823211,
		0.387546, -0.919905, 0.059859,
		-0.746855, -0.351379, -0.564571,
		28.697962, 25.441700, 47.847549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642591, 25.213428, 47.772453>,  <29.220760, 25.687664, 48.242752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642591, 25.213428, 47.772453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296106, 25.328760, 47.609215>,  <29.088215, 25.397959, 47.511272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296106, 25.328760, 47.609215>,  <29.642591, 25.213428, 47.772453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296106, 25.328760, 47.609215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443549, 0.067592, -0.893698,
		-0.230095, -0.955143, -0.186436,
		-0.866211, 0.288329, -0.408100,
		29.036243, 25.415258, 47.486786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594910, 24.878551, 47.134480>,  <29.642591, 25.213428, 47.772453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594910, 24.878551, 47.134480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352650, 25.194414, 47.095234>,  <29.207293, 25.383932, 47.071686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352650, 25.194414, 47.095234>,  <29.594910, 24.878551, 47.134480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352650, 25.194414, 47.095234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355919, 0.158550, -0.920969,
		-0.711694, -0.592707, -0.377081,
		-0.605651, 0.789658, -0.098117,
		29.170954, 25.431313, 47.065800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208082, 24.757463, 46.458206>,  <29.594910, 24.878551, 47.134480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208082, 24.757463, 46.458206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271938, 25.135876, 46.571018>,  <29.310253, 25.362923, 46.638706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271938, 25.135876, 46.571018>,  <29.208082, 24.757463, 46.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271938, 25.135876, 46.571018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342669, 0.214821, -0.914566,
		-0.925793, 0.242645, -0.289881,
		0.159642, 0.946031, 0.282027,
		29.319832, 25.419685, 46.655624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793289, 25.117691, 45.929840>,  <29.208082, 24.757463, 46.458206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793289, 25.117691, 45.929840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024437, 25.383848, 46.118866>,  <29.163126, 25.543543, 46.232281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024437, 25.383848, 46.118866>,  <28.793289, 25.117691, 45.929840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024437, 25.383848, 46.118866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423073, 0.250924, -0.870659,
		-0.697908, 0.703057, -0.136509,
		0.577870, 0.665393, 0.472566,
		29.197798, 25.583466, 46.260635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617069, 25.820879, 45.719074>,  <28.793289, 25.117691, 45.929840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617069, 25.820879, 45.719074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995745, 25.790075, 45.844196>,  <29.222950, 25.771593, 45.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995745, 25.790075, 45.844196>,  <28.617069, 25.820879, 45.719074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995745, 25.790075, 45.844196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318921, 0.361160, -0.876272,
		-0.045491, 0.929319, 0.366466,
		0.946689, -0.077011, 0.312808,
		29.279751, 25.766972, 45.938038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867880, 26.473394, 45.475189>,  <28.617069, 25.820879, 45.719074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867880, 26.473394, 45.475189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186813, 26.238077, 45.529114>,  <29.378174, 26.096888, 45.561470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186813, 26.238077, 45.529114>,  <28.867880, 26.473394, 45.475189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186813, 26.238077, 45.529114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443928, 0.420324, -0.791363,
		0.408888, 0.690826, 0.596297,
		0.797332, -0.588292, 0.134811,
		29.426014, 26.061590, 45.569557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447777, 26.911991, 45.563469>,  <28.867880, 26.473394, 45.475189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447777, 26.911991, 45.563469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576525, 26.560333, 45.422897>,  <29.653774, 26.349339, 45.338554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576525, 26.560333, 45.422897>,  <29.447777, 26.911991, 45.563469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576525, 26.560333, 45.422897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504863, 0.473381, -0.721819,
		0.800945, 0.054908, 0.596215,
		0.321871, -0.879145, -0.351432,
		29.673086, 26.296591, 45.317467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105204, 27.085253, 45.277714>,  <29.447777, 26.911991, 45.563469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105204, 27.085253, 45.277714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077740, 26.710163, 45.141502>,  <30.061260, 26.485109, 45.059776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077740, 26.710163, 45.141502>,  <30.105204, 27.085253, 45.277714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077740, 26.710163, 45.141502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601215, 0.233498, -0.764212,
		0.796132, -0.257204, 0.547740,
		-0.068662, -0.937723, -0.340531,
		30.057140, 26.428846, 45.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785547, 27.002909, 45.031513>,  <30.105204, 27.085253, 45.277714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785547, 27.002909, 45.031513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569454, 26.705393, 44.874073>,  <30.439798, 26.526884, 44.779610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569454, 26.705393, 44.874073>,  <30.785547, 27.002909, 45.031513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569454, 26.705393, 44.874073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604758, -0.017907, -0.796208,
		0.585163, -0.668174, 0.459487,
		-0.540233, -0.743790, -0.393605,
		30.407385, 26.482256, 44.755993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229462, 26.465557, 44.782589>,  <30.785547, 27.002909, 45.031513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229462, 26.465557, 44.782589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887220, 26.405535, 44.584427>,  <30.681875, 26.369520, 44.465530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887220, 26.405535, 44.584427>,  <31.229462, 26.465557, 44.782589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887220, 26.405535, 44.584427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507591, -0.055594, -0.859803,
		0.101478, -0.987113, 0.123734,
		-0.855601, -0.150057, -0.495408,
		30.630541, 26.360518, 44.435806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414183, 25.985701, 44.312382>,  <31.229462, 26.465557, 44.782589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414183, 25.985701, 44.312382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097694, 26.180523, 44.164467>,  <30.907801, 26.297417, 44.075718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097694, 26.180523, 44.164467>,  <31.414183, 25.985701, 44.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097694, 26.180523, 44.164467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467998, 0.093033, -0.878819,
		-0.393633, -0.868401, -0.301552,
		-0.791222, 0.487057, -0.369789,
		30.860329, 26.326639, 44.053532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451065, 25.733419, 43.610600>,  <31.414183, 25.985701, 44.312382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451065, 25.733419, 43.610600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195574, 26.040695, 43.593136>,  <31.042278, 26.225061, 43.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195574, 26.040695, 43.593136>,  <31.451065, 25.733419, 43.610600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195574, 26.040695, 43.593136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343494, 0.233910, -0.909560,
		-0.688503, -0.595960, -0.413274,
		-0.638729, 0.768192, -0.043661,
		31.003956, 26.271152, 43.580036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117559, 25.666157, 42.939480>,  <31.451065, 25.733419, 43.610600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117559, 25.666157, 42.939480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042086, 26.041014, 43.056892>,  <30.996801, 26.265928, 43.127338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042086, 26.041014, 43.056892>,  <31.117559, 25.666157, 42.939480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042086, 26.041014, 43.056892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250850, 0.334976, -0.908221,
		-0.949459, -0.097736, -0.298288,
		-0.188685, 0.937144, 0.293529,
		30.985479, 26.322157, 43.144951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722067, 25.910419, 42.361519>,  <31.117559, 25.666157, 42.939480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722067, 25.910419, 42.361519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903946, 26.186958, 42.586121>,  <31.013073, 26.352882, 42.720882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903946, 26.186958, 42.586121>,  <30.722067, 25.910419, 42.361519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903946, 26.186958, 42.586121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255352, 0.502789, -0.825832,
		-0.853256, 0.518886, 0.052080,
		0.454697, 0.691347, 0.561506,
		31.040356, 26.394363, 42.754574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449200, 26.558447, 42.104183>,  <30.722067, 25.910419, 42.361519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449200, 26.558447, 42.104183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786282, 26.620043, 42.310539>,  <30.988531, 26.657001, 42.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786282, 26.620043, 42.310539>,  <30.449200, 26.558447, 42.104183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786282, 26.620043, 42.310539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323248, 0.621561, -0.713563,
		-0.430537, 0.768081, 0.474014,
		0.842703, 0.153992, 0.515886,
		31.039093, 26.666241, 42.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562201, 27.303131, 42.218201>,  <30.449200, 26.558447, 42.104183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562201, 27.303131, 42.218201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920891, 27.128529, 42.247440>,  <31.136105, 27.023767, 42.264984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920891, 27.128529, 42.247440>,  <30.562201, 27.303131, 42.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920891, 27.128529, 42.247440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354899, 0.610516, -0.708038,
		0.264436, 0.660858, 0.702382,
		0.896727, -0.436505, 0.073095,
		31.189909, 26.997578, 42.269367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885063, 27.723150, 41.775063>,  <30.562201, 27.303131, 42.218201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885063, 27.723150, 41.775063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186060, 27.469915, 41.847675>,  <31.366657, 27.317974, 41.891243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186060, 27.469915, 41.847675>,  <30.885063, 27.723150, 41.775063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186060, 27.469915, 41.847675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499610, 0.369125, -0.783669,
		0.429122, 0.680402, 0.594060,
		0.752492, -0.633088, 0.181536,
		31.411808, 27.279989, 41.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512423, 28.116432, 41.916046>,  <30.885063, 27.723150, 41.775063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512423, 28.116432, 41.916046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644951, 27.762800, 41.784210>,  <31.724468, 27.550621, 41.705109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644951, 27.762800, 41.784210>,  <31.512423, 28.116432, 41.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644951, 27.762800, 41.784210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491810, 0.459931, -0.739315,
		0.805202, 0.082856, 0.587184,
		0.331320, -0.884081, -0.329588,
		31.744347, 27.497576, 41.685333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187386, 28.163309, 41.732136>,  <31.512423, 28.116432, 41.916046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187386, 28.163309, 41.732136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112110, 27.817972, 41.544853>,  <32.066944, 27.610769, 41.432484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112110, 27.817972, 41.544853>,  <32.187386, 28.163309, 41.732136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112110, 27.817972, 41.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570642, 0.291885, -0.767575,
		0.799345, -0.411630, 0.437731,
		-0.188190, -0.863345, -0.468210,
		32.055653, 27.558969, 41.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826313, 27.857265, 41.448250>,  <32.187386, 28.163309, 41.732136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826313, 27.857265, 41.448250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539242, 27.682632, 41.231239>,  <32.367001, 27.577852, 41.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539242, 27.682632, 41.231239>,  <32.826313, 27.857265, 41.448250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539242, 27.682632, 41.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476759, 0.259816, -0.839760,
		0.507584, -0.861330, 0.021682,
		-0.717677, -0.436586, -0.542525,
		32.323940, 27.551657, 41.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199539, 27.679192, 40.835789>,  <32.826313, 27.857265, 41.448250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199539, 27.679192, 40.835789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815182, 27.635113, 40.734169>,  <32.584568, 27.608665, 40.673199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815182, 27.635113, 40.734169>,  <33.199539, 27.679192, 40.835789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815182, 27.635113, 40.734169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203392, 0.341731, -0.917525,
		0.187922, -0.933315, -0.305954,
		-0.960894, -0.110195, -0.254048,
		32.526913, 27.602055, 40.657955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182655, 27.246655, 40.157360>,  <33.199539, 27.679192, 40.835789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182655, 27.246655, 40.157360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871300, 27.490187, 40.218586>,  <32.684486, 27.636307, 40.255322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871300, 27.490187, 40.218586>,  <33.182655, 27.246655, 40.157360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871300, 27.490187, 40.218586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127804, 0.392402, -0.910872,
		-0.614632, -0.689452, -0.383253,
		-0.778392, 0.608832, 0.153068,
		32.637783, 27.672836, 40.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780663, 27.195927, 39.598991>,  <33.182655, 27.246655, 40.157360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780663, 27.195927, 39.598991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681698, 27.552345, 39.751217>,  <32.622318, 27.766195, 39.842552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681698, 27.552345, 39.751217>,  <32.780663, 27.195927, 39.598991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681698, 27.552345, 39.751217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188148, 0.429478, -0.883260,
		-0.950468, -0.146925, -0.273905,
		-0.247409, 0.891045, 0.380562,
		32.607475, 27.819658, 39.865387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288338, 27.375551, 39.166664>,  <32.780663, 27.195927, 39.598991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288338, 27.375551, 39.166664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415859, 27.715357, 39.334805>,  <32.492371, 27.919241, 39.435688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415859, 27.715357, 39.334805>,  <32.288338, 27.375551, 39.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415859, 27.715357, 39.334805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036229, 0.432243, -0.901029,
		-0.947129, 0.302479, 0.107023,
		0.318802, 0.849514, 0.420348,
		32.511501, 27.970211, 39.460907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923574, 27.927629, 38.809185>,  <32.288338, 27.375551, 39.166664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923574, 27.927629, 38.809185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223415, 28.114145, 38.997086>,  <32.403320, 28.226055, 39.109825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223415, 28.114145, 38.997086>,  <31.923574, 27.927629, 38.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223415, 28.114145, 38.997086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151142, 0.570376, -0.807358,
		-0.644399, 0.676198, 0.357080,
		0.749604, 0.466291, 0.469752,
		32.448296, 28.254032, 39.138012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876995, 28.716827, 38.702599>,  <31.923574, 27.927629, 38.809185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876995, 28.716827, 38.702599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252365, 28.659153, 38.828182>,  <32.477585, 28.624548, 38.903534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252365, 28.659153, 38.828182>,  <31.876995, 28.716827, 38.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252365, 28.659153, 38.828182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342338, 0.510495, -0.788796,
		-0.046541, 0.847706, 0.528421,
		0.938423, -0.144187, 0.313961,
		32.533894, 28.615896, 38.922371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162678, 29.402517, 38.865372>,  <31.876995, 28.716827, 38.702599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162678, 29.402517, 38.865372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455116, 29.139090, 38.794056>,  <32.630581, 28.981033, 38.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455116, 29.139090, 38.794056>,  <32.162678, 29.402517, 38.865372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455116, 29.139090, 38.794056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305293, 0.549469, -0.777741,
		0.610161, 0.514171, 0.602770,
		0.731095, -0.658568, -0.178291,
		32.674446, 28.941519, 38.740570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700397, 29.829062, 38.632149>,  <32.162678, 29.402517, 38.865372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700397, 29.829062, 38.632149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815559, 29.461510, 38.524242>,  <32.884655, 29.240978, 38.459499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815559, 29.461510, 38.524242>,  <32.700397, 29.829062, 38.632149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815559, 29.461510, 38.524242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517006, 0.386251, -0.763881,
		0.806112, 0.080451, 0.586268,
		0.287902, -0.918878, -0.269768,
		32.901932, 29.185846, 38.443314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434650, 29.931252, 38.463501>,  <32.700397, 29.829062, 38.632149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434650, 29.931252, 38.463501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295074, 29.606924, 38.275536>,  <33.211330, 29.412329, 38.162758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295074, 29.606924, 38.275536>,  <33.434650, 29.931252, 38.463501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295074, 29.606924, 38.275536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457082, 0.290496, -0.840648,
		0.818120, -0.508121, 0.269246,
		-0.348936, -0.810818, -0.469913,
		33.190395, 29.363678, 38.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973663, 29.550598, 38.113899>,  <33.434650, 29.931252, 38.463501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973663, 29.550598, 38.113899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640034, 29.435869, 37.925411>,  <33.439854, 29.367031, 37.812321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640034, 29.435869, 37.925411>,  <33.973663, 29.550598, 38.113899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640034, 29.435869, 37.925411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462398, 0.102322, -0.880749,
		0.300835, -0.952503, 0.047281,
		-0.834078, -0.286823, -0.471218,
		33.389809, 29.349823, 37.784046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143959, 28.986073, 37.702366>,  <33.973663, 29.550598, 38.113899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143959, 28.986073, 37.702366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820793, 29.161980, 37.545452>,  <33.626896, 29.267525, 37.451305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820793, 29.161980, 37.545452>,  <34.143959, 28.986073, 37.702366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820793, 29.161980, 37.545452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470010, 0.079305, -0.879091,
		-0.355486, -0.894603, -0.270766,
		-0.807911, 0.439767, -0.392280,
		33.578419, 29.293909, 37.427769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273994, 29.115549, 37.044865>,  <34.143959, 28.986073, 37.702366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273994, 29.115549, 37.044865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931084, 29.321484, 37.046757>,  <33.725338, 29.445044, 37.047894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931084, 29.321484, 37.046757>,  <34.273994, 29.115549, 37.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931084, 29.321484, 37.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284804, 0.481857, -0.828674,
		-0.428911, -0.709055, -0.559711,
		-0.857276, 0.514835, 0.004732,
		33.673901, 29.475935, 37.048176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020916, 29.095133, 36.349201>,  <34.273994, 29.115549, 37.044865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020916, 29.095133, 36.349201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842640, 29.401798, 36.534065>,  <33.735676, 29.585796, 36.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842640, 29.401798, 36.534065>,  <34.020916, 29.095133, 36.349201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842640, 29.401798, 36.534065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223805, 0.595304, -0.771702,
		-0.866762, -0.240502, -0.436902,
		-0.445686, 0.766663, 0.462161,
		33.708935, 29.631798, 36.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611103, 29.433544, 35.802071>,  <34.020916, 29.095133, 36.349201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611103, 29.433544, 35.802071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654678, 29.715052, 36.082882>,  <33.680824, 29.883957, 36.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654678, 29.715052, 36.082882>,  <33.611103, 29.433544, 35.802071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654678, 29.715052, 36.082882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031612, 0.703419, -0.710072,
		-0.993546, 0.099543, 0.054378,
		0.108934, 0.703770, 0.702026,
		33.687359, 29.926184, 36.293491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063652, 29.840315, 35.567585>,  <33.611103, 29.433544, 35.802071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063652, 29.840315, 35.567585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337654, 30.039429, 35.780369>,  <33.502056, 30.158897, 35.908039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337654, 30.039429, 35.780369>,  <33.063652, 29.840315, 35.567585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337654, 30.039429, 35.780369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054780, 0.692908, -0.718942,
		-0.726476, 0.521620, 0.447376,
		0.685005, 0.497786, 0.531955,
		33.543156, 30.188765, 35.939957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900513, 30.510429, 35.452965>,  <33.063652, 29.840315, 35.567585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900513, 30.510429, 35.452965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270729, 30.528629, 35.603325>,  <33.492859, 30.539549, 35.693539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270729, 30.528629, 35.603325>,  <32.900513, 30.510429, 35.452965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270729, 30.528629, 35.603325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212213, 0.759843, -0.614495,
		-0.313584, 0.648512, 0.693612,
		0.925543, 0.045502, 0.375897,
		33.548393, 30.542280, 35.716095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020947, 31.241390, 35.526035>,  <32.900513, 30.510429, 35.452965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020947, 31.241390, 35.526035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384773, 31.075445, 35.535645>,  <33.603069, 30.975878, 35.541412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384773, 31.075445, 35.535645>,  <33.020947, 31.241390, 35.526035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384773, 31.075445, 35.535645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333815, 0.694992, -0.636831,
		0.247499, 0.587261, 0.770629,
		0.909567, -0.414863, 0.024026,
		33.657642, 30.950987, 35.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556652, 31.809914, 35.547508>,  <33.020947, 31.241390, 35.526035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556652, 31.809914, 35.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761692, 31.492260, 35.416916>,  <33.884716, 31.301668, 35.338558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761692, 31.492260, 35.416916>,  <33.556652, 31.809914, 35.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761692, 31.492260, 35.416916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442635, 0.570222, -0.692041,
		0.735745, 0.210224, 0.643806,
		0.512596, -0.794136, -0.326486,
		33.915470, 31.254019, 35.318970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297363, 32.063217, 35.596397>,  <33.556652, 31.809914, 35.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297363, 32.063217, 35.596397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240742, 31.770372, 35.329868>,  <34.206768, 31.594667, 35.169952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240742, 31.770372, 35.329868>,  <34.297363, 32.063217, 35.596397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240742, 31.770372, 35.329868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418720, 0.565638, -0.710442,
		0.897015, -0.379568, 0.226478,
		-0.141556, -0.732108, -0.666318,
		34.198277, 31.550739, 35.129974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939510, 32.076054, 35.361389>,  <34.297363, 32.063217, 35.596397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939510, 32.076054, 35.361389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708416, 31.877060, 35.102551>,  <34.569759, 31.757666, 34.947247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708416, 31.877060, 35.102551>,  <34.939510, 32.076054, 35.361389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708416, 31.877060, 35.102551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466238, 0.449594, -0.761897,
		0.669961, -0.741875, -0.027800,
		-0.577732, -0.497480, -0.647101,
		34.535095, 31.727816, 34.908421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407574, 31.658733, 34.918224>,  <34.939510, 32.076054, 35.361389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407574, 31.658733, 34.918224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082207, 31.657227, 34.685555>,  <34.886986, 31.656322, 34.545952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082207, 31.657227, 34.685555>,  <35.407574, 31.658733, 34.918224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082207, 31.657227, 34.685555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534836, 0.388326, -0.750435,
		0.228707, -0.921515, -0.313854,
		-0.813415, -0.003769, -0.581672,
		34.838181, 31.656096, 34.511051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817410, 31.028616, 35.188442>,  <35.407574, 31.658733, 34.918224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817410, 31.028616, 35.188442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199993, 31.098690, 35.281826>,  <36.429543, 31.140734, 35.337856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199993, 31.098690, 35.281826>,  <35.817410, 31.028616, 35.188442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199993, 31.098690, 35.281826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021742, -0.840391, 0.541545,
		0.291068, -0.512888, -0.807605,
		0.956455, 0.175185, 0.233459,
		36.486931, 31.151245, 35.351864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234688, 30.443285, 35.082764>,  <35.817410, 31.028616, 35.188442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234688, 30.443285, 35.082764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436855, 30.668474, 35.344334>,  <36.558155, 30.803587, 35.501274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436855, 30.668474, 35.344334>,  <36.234688, 30.443285, 35.082764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436855, 30.668474, 35.344334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068844, -0.781735, 0.619799,
		0.860122, -0.268241, -0.433863,
		0.505421, 0.562971, 0.653921,
		36.588482, 30.837366, 35.540508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702950, 30.056183, 35.341923>,  <36.234688, 30.443285, 35.082764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702950, 30.056183, 35.341923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694595, 30.328527, 35.634769>,  <36.689583, 30.491934, 35.810478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694595, 30.328527, 35.634769>,  <36.702950, 30.056183, 35.341923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694595, 30.328527, 35.634769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103928, -0.726830, 0.678908,
		0.994366, 0.090267, -0.055580,
		-0.020886, 0.680859, 0.732116,
		36.688328, 30.532785, 35.854404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050804, 29.753946, 35.797768>,  <36.702950, 30.056183, 35.341923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050804, 29.753946, 35.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857620, 30.039040, 36.001244>,  <36.741711, 30.210094, 36.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857620, 30.039040, 36.001244>,  <37.050804, 29.753946, 35.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857620, 30.039040, 36.001244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148854, -0.639301, 0.754411,
		0.862897, 0.288631, 0.414851,
		-0.482961, 0.712731, 0.508687,
		36.712730, 30.252859, 36.153851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416641, 29.889557, 36.463947>,  <37.050804, 29.753946, 35.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416641, 29.889557, 36.463947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036644, 30.004911, 36.511871>,  <36.808647, 30.074123, 36.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036644, 30.004911, 36.511871>,  <37.416641, 29.889557, 36.463947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036644, 30.004911, 36.511871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084174, -0.605923, 0.791058,
		0.300724, 0.741412, 0.599895,
		-0.949990, 0.288385, 0.119808,
		36.751648, 30.091427, 36.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367317, 29.775755, 37.113232>,  <37.416641, 29.889557, 36.463947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367317, 29.775755, 37.113232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978767, 29.841637, 37.044758>,  <36.745636, 29.881166, 37.003674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978767, 29.841637, 37.044758>,  <37.367317, 29.775755, 37.113232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978767, 29.841637, 37.044758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225127, -0.408262, 0.884669,
		0.075823, 0.897883, 0.433655,
		-0.971375, 0.164706, -0.171182,
		36.687355, 29.891048, 36.993404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122494, 30.059242, 37.695103>,  <37.367317, 29.775755, 37.113232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122494, 30.059242, 37.695103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824482, 29.886116, 37.492081>,  <36.645676, 29.782240, 37.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824482, 29.886116, 37.492081>,  <37.122494, 30.059242, 37.695103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824482, 29.886116, 37.492081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314035, -0.443717, 0.839343,
		-0.588489, 0.784721, 0.194661,
		-0.745025, -0.432815, -0.507552,
		36.600975, 29.756271, 37.339813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609310, 30.040077, 38.234669>,  <37.122494, 30.059242, 37.695103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609310, 30.040077, 38.234669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457272, 29.782635, 37.968948>,  <36.366047, 29.628168, 37.809517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457272, 29.782635, 37.968948>,  <36.609310, 30.040077, 38.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457272, 29.782635, 37.968948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271692, -0.608832, 0.745323,
		-0.884143, 0.463780, 0.056551,
		-0.380096, -0.643608, -0.664300,
		36.343243, 29.589552, 37.769657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901962, 29.930828, 38.451397>,  <36.609310, 30.040077, 38.234669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901962, 29.930828, 38.451397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990971, 29.627079, 38.206825>,  <36.044376, 29.444830, 38.060081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990971, 29.627079, 38.206825>,  <35.901962, 29.930828, 38.451397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990971, 29.627079, 38.206825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487042, -0.629869, 0.605025,
		-0.844557, 0.163163, -0.510001,
		0.222516, -0.759370, -0.611427,
		36.057724, 29.399267, 38.023396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312374, 29.530760, 38.366955>,  <35.901962, 29.930828, 38.451397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312374, 29.530760, 38.366955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623417, 29.296125, 38.276405>,  <35.810043, 29.155346, 38.222076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623417, 29.296125, 38.276405>,  <35.312374, 29.530760, 38.366955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623417, 29.296125, 38.276405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327927, -0.685555, 0.649983,
		-0.536459, -0.431200, -0.725451,
		0.777609, -0.586584, -0.226370,
		35.856701, 29.120150, 38.208492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992844, 28.909515, 38.272797>,  <35.312374, 29.530760, 38.366955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992844, 28.909515, 38.272797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369434, 28.786798, 38.328644>,  <35.595390, 28.713169, 38.362152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369434, 28.786798, 38.328644>,  <34.992844, 28.909515, 38.272797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369434, 28.786798, 38.328644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331138, -0.764501, 0.553070,
		-0.062939, -0.566937, -0.821353,
		0.941481, -0.306791, 0.139618,
		35.651878, 28.694761, 38.370529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984737, 28.070585, 38.364552>,  <34.992844, 28.909515, 38.272797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984737, 28.070585, 38.364552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336338, 28.203440, 38.501396>,  <35.547298, 28.283152, 38.583504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336338, 28.203440, 38.501396>,  <34.984737, 28.070585, 38.364552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336338, 28.203440, 38.501396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047903, -0.652352, 0.756401,
		0.474406, -0.681266, -0.557508,
		0.879002, 0.332135, 0.342114,
		35.600040, 28.303080, 38.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416500, 27.403467, 38.356075>,  <34.984737, 28.070585, 38.364552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416500, 27.403467, 38.356075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549854, 27.680883, 38.611530>,  <35.629868, 27.847334, 38.764801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549854, 27.680883, 38.611530>,  <35.416500, 27.403467, 38.356075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549854, 27.680883, 38.611530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133993, -0.705367, 0.696063,
		0.933220, -0.146485, -0.328089,
		0.333386, 0.693541, 0.638634,
		35.649872, 27.888947, 38.803120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734924, 27.000326, 38.812355>,  <35.416500, 27.403467, 38.356075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734924, 27.000326, 38.812355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720638, 27.346701, 39.011906>,  <35.712067, 27.554525, 39.131638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720638, 27.346701, 39.011906>,  <35.734924, 27.000326, 38.812355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720638, 27.346701, 39.011906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054191, -0.496784, 0.866181,
		0.997892, 0.057968, -0.029185,
		-0.035712, 0.865936, 0.498878,
		35.709923, 27.606482, 39.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219543, 27.001451, 39.408051>,  <35.734924, 27.000326, 38.812355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219543, 27.001451, 39.408051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936062, 27.263693, 39.512295>,  <35.765972, 27.421038, 39.574841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936062, 27.263693, 39.512295>,  <36.219543, 27.001451, 39.408051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936062, 27.263693, 39.512295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142724, -0.494991, 0.857096,
		0.690916, 0.570234, 0.444374,
		-0.708706, 0.655604, 0.260611,
		35.723450, 27.460375, 39.590477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283676, 27.036777, 40.143456>,  <36.219543, 27.001451, 39.408051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283676, 27.036777, 40.143456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924294, 27.191101, 40.059616>,  <35.708664, 27.283695, 40.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924294, 27.191101, 40.059616>,  <36.283676, 27.036777, 40.143456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924294, 27.191101, 40.059616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371824, -0.414699, 0.830525,
		0.233505, 0.824122, 0.516041,
		-0.898456, 0.385808, -0.209594,
		35.654758, 27.306843, 39.996738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083225, 27.523129, 40.708397>,  <36.283676, 27.036777, 40.143456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083225, 27.523129, 40.708397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764713, 27.366333, 40.524101>,  <35.573605, 27.272255, 40.413525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764713, 27.366333, 40.524101>,  <36.083225, 27.523129, 40.708397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764713, 27.366333, 40.524101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374618, -0.278479, 0.884370,
		-0.474970, 0.876809, 0.074902,
		-0.796282, -0.391990, -0.460737,
		35.525829, 27.248735, 40.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685703, 27.443962, 41.295685>,  <36.083225, 27.523129, 40.708397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685703, 27.443962, 41.295685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461208, 27.268810, 41.014751>,  <35.326511, 27.163719, 40.846191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461208, 27.268810, 41.014751>,  <35.685703, 27.443962, 41.295685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461208, 27.268810, 41.014751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523200, -0.469823, 0.711005,
		-0.641309, 0.766503, 0.034582,
		-0.561235, -0.437880, -0.702336,
		35.292839, 27.137445, 40.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076813, 27.608629, 41.513184>,  <35.685703, 27.443962, 41.295685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076813, 27.608629, 41.513184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016689, 27.280020, 41.293182>,  <34.980614, 27.082853, 41.161182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016689, 27.280020, 41.293182>,  <35.076813, 27.608629, 41.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016689, 27.280020, 41.293182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573192, -0.380860, 0.725532,
		-0.805517, 0.424313, -0.413644,
		-0.150312, -0.821526, -0.550002,
		34.971596, 27.033562, 41.128181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363094, 27.471401, 41.543400>,  <35.076813, 27.608629, 41.513184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363094, 27.471401, 41.543400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542637, 27.129145, 41.440319>,  <34.650360, 26.923790, 41.378471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542637, 27.129145, 41.440319>,  <34.363094, 27.471401, 41.543400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542637, 27.129145, 41.440319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474012, -0.472443, 0.743041,
		-0.757525, -0.211363, -0.617641,
		0.448852, -0.855642, -0.257699,
		34.677292, 26.872452, 41.363010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802479, 26.977282, 41.527092>,  <34.363094, 27.471401, 41.543400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802479, 26.977282, 41.527092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130569, 26.752140, 41.567944>,  <34.327423, 26.617056, 41.592453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130569, 26.752140, 41.567944>,  <33.802479, 26.977282, 41.527092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130569, 26.752140, 41.567944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444967, -0.515571, 0.732250,
		-0.359496, -0.646052, -0.673335,
		0.820223, -0.562853, 0.102126,
		34.376637, 26.583284, 41.598579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609100, 26.263424, 41.372391>,  <33.802479, 26.977282, 41.527092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609100, 26.263424, 41.372391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933418, 26.250368, 41.606159>,  <34.128010, 26.242535, 41.746422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933418, 26.250368, 41.606159>,  <33.609100, 26.263424, 41.372391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933418, 26.250368, 41.606159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490525, -0.582673, 0.647980,
		0.319380, -0.812051, -0.488436,
		0.810791, -0.032638, 0.584425,
		34.176655, 26.240578, 41.781487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512367, 25.667059, 41.795509>,  <33.609100, 26.263424, 41.372391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512367, 25.667059, 41.795509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800201, 25.884989, 41.967724>,  <33.972900, 26.015747, 42.071053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800201, 25.884989, 41.967724>,  <33.512367, 25.667059, 41.795509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800201, 25.884989, 41.967724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389696, -0.196331, 0.899773,
		0.574747, -0.815242, 0.071039,
		0.719585, 0.544826, 0.430537,
		34.016075, 26.048437, 42.096886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766289, 25.212029, 42.401077>,  <33.512367, 25.667059, 41.795509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766289, 25.212029, 42.401077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853153, 25.599333, 42.450569>,  <33.905273, 25.831717, 42.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853153, 25.599333, 42.450569>,  <33.766289, 25.212029, 42.401077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853153, 25.599333, 42.450569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349763, -0.041153, 0.935934,
		0.911322, -0.246523, 0.329725,
		0.217160, 0.968263, 0.123729,
		33.918301, 25.889812, 42.487686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960735, 25.313171, 43.092754>,  <33.766289, 25.212029, 42.401077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960735, 25.313171, 43.092754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916050, 25.705368, 43.028061>,  <33.889236, 25.940685, 42.989246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916050, 25.705368, 43.028061>,  <33.960735, 25.313171, 43.092754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916050, 25.705368, 43.028061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432802, 0.098495, 0.896092,
		0.894540, 0.170107, 0.413354,
		-0.111718, 0.980491, -0.161730,
		33.882534, 25.999516, 42.979542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367790, 25.669863, 43.623928>,  <33.960735, 25.313171, 43.092754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367790, 25.669863, 43.623928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076385, 25.914051, 43.499611>,  <33.901543, 26.060564, 43.425022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076385, 25.914051, 43.499611>,  <34.367790, 25.669863, 43.623928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076385, 25.914051, 43.499611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194724, 0.250433, 0.948349,
		0.656771, 0.751405, -0.063571,
		-0.728515, 0.610470, -0.310794,
		33.857830, 26.097193, 43.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412964, 26.187702, 44.071030>,  <34.367790, 25.669863, 43.623928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412964, 26.187702, 44.071030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063396, 26.275377, 43.897488>,  <33.853657, 26.327982, 43.793362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063396, 26.275377, 43.897488>,  <34.412964, 26.187702, 44.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063396, 26.275377, 43.897488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364711, 0.294372, 0.883363,
		0.321337, 0.930216, -0.177316,
		-0.873915, 0.219188, -0.433853,
		33.801220, 26.341133, 43.767330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151142, 26.741205, 44.449039>,  <34.412964, 26.187702, 44.071030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151142, 26.741205, 44.449039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828804, 26.604628, 44.255535>,  <33.635399, 26.522680, 44.139431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828804, 26.604628, 44.255535>,  <34.151142, 26.741205, 44.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828804, 26.604628, 44.255535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587649, 0.360950, 0.724143,
		-0.072641, 0.867831, -0.491520,
		-0.805848, -0.341444, -0.483761,
		33.587051, 26.502193, 44.110409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559811, 27.317396, 44.459202>,  <34.151142, 26.741205, 44.449039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559811, 27.317396, 44.459202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410145, 26.949736, 44.409939>,  <33.320347, 26.729139, 44.380383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410145, 26.949736, 44.409939>,  <33.559811, 27.317396, 44.459202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410145, 26.949736, 44.409939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589804, 0.133377, 0.796456,
		-0.715636, 0.370641, -0.592023,
		-0.374161, -0.919149, -0.123156,
		33.297897, 26.673990, 44.372993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957146, 27.487986, 44.508732>,  <33.559811, 27.317396, 44.459202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957146, 27.487986, 44.508732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940575, 27.093094, 44.570255>,  <32.930634, 26.856159, 44.607170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940575, 27.093094, 44.570255>,  <32.957146, 27.487986, 44.508732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940575, 27.093094, 44.570255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466305, 0.155252, 0.870894,
		-0.883654, -0.035643, -0.466782,
		-0.041428, -0.987232, 0.153810,
		32.928146, 26.796925, 44.616398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344818, 27.430187, 44.870754>,  <32.957146, 27.487986, 44.508732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344818, 27.430187, 44.870754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546612, 27.091074, 44.936192>,  <32.667686, 26.887606, 44.975452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546612, 27.091074, 44.936192>,  <32.344818, 27.430187, 44.870754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546612, 27.091074, 44.936192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270162, 0.024963, 0.962491,
		-0.820067, -0.529756, -0.216446,
		0.504483, -0.847782, 0.163591,
		32.697956, 26.836739, 44.985268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903296, 26.931900, 45.214684>,  <32.344818, 27.430187, 44.870754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903296, 26.931900, 45.214684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282715, 26.866596, 45.323200>,  <32.510368, 26.827414, 45.388309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282715, 26.866596, 45.323200>,  <31.903296, 26.931900, 45.214684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282715, 26.866596, 45.323200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273484, 0.009335, 0.961831,
		-0.159560, -0.986539, -0.035794,
		0.948550, -0.163259, 0.271293,
		32.567280, 26.817619, 45.404587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853067, 26.577793, 45.864223>,  <31.903296, 26.931900, 45.214684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853067, 26.577793, 45.864223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241749, 26.670816, 45.847664>,  <32.474957, 26.726629, 45.837727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241749, 26.670816, 45.847664>,  <31.853067, 26.577793, 45.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241749, 26.670816, 45.847664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020770, 0.258698, 0.965735,
		0.235289, -0.937548, 0.256208,
		0.971703, 0.232548, -0.041396,
		32.533260, 26.740583, 45.835243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104649, 26.227808, 46.356583>,  <31.853067, 26.577793, 45.864223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104649, 26.227808, 46.356583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361130, 26.532860, 46.322514>,  <32.515018, 26.715891, 46.302074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361130, 26.532860, 46.322514>,  <32.104649, 26.227808, 46.356583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361130, 26.532860, 46.322514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057837, 0.158705, 0.985631,
		0.765188, -0.627064, 0.145870,
		0.641204, 0.762630, -0.085171,
		32.553490, 26.761648, 46.296963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653648, 26.227219, 46.858692>,  <32.104649, 26.227808, 46.356583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653648, 26.227219, 46.858692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644070, 26.616222, 46.766041>,  <32.638321, 26.849625, 46.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644070, 26.616222, 46.766041>,  <32.653648, 26.227219, 46.858692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644070, 26.616222, 46.766041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121654, 0.227136, 0.966235,
		0.992284, 0.051316, 0.112871,
		-0.023946, 0.972510, -0.231627,
		32.636887, 26.907976, 46.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842049, 26.495459, 47.440296>,  <32.653648, 26.227219, 46.858692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842049, 26.495459, 47.440296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674446, 26.807829, 47.255001>,  <32.573883, 26.995251, 47.143826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674446, 26.807829, 47.255001>,  <32.842049, 26.495459, 47.440296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674446, 26.807829, 47.255001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146312, 0.445446, 0.883272,
		0.896118, 0.437874, -0.072386,
		-0.419006, 0.780925, -0.463238,
		32.548744, 27.042107, 47.116028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138653, 27.183218, 47.601631>,  <32.842049, 26.495459, 47.440296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138653, 27.183218, 47.601631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754700, 27.205168, 47.491634>,  <32.524330, 27.218338, 47.425636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754700, 27.205168, 47.491634>,  <33.138653, 27.183218, 47.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754700, 27.205168, 47.491634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234499, 0.380620, 0.894505,
		0.153753, 0.923102, -0.352481,
		-0.959880, 0.054876, -0.274988,
		32.466736, 27.221630, 47.409138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949562, 27.703377, 48.159370>,  <33.138653, 27.183218, 47.601631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949562, 27.703377, 48.159370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639313, 27.546095, 47.961864>,  <32.453163, 27.451727, 47.843361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639313, 27.546095, 47.961864>,  <32.949562, 27.703377, 48.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639313, 27.546095, 47.961864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631024, 0.464765, 0.621129,
		-0.014746, 0.793338, -0.608603,
		-0.775623, -0.393203, -0.493762,
		32.406628, 27.428135, 47.813736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001770, 28.020432, 48.871723>,  <32.949562, 27.703377, 48.159370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001770, 28.020432, 48.871723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230743, 28.255026, 49.100929>,  <33.368130, 28.395782, 49.238453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230743, 28.255026, 49.100929>,  <33.001770, 28.020432, 48.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230743, 28.255026, 49.100929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716267, -0.017519, -0.697607,
		-0.399097, 0.809771, -0.430108,
		0.572437, 0.586485, 0.573020,
		33.402473, 28.430971, 49.272835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108433, 28.668772, 48.523178>,  <33.001770, 28.020432, 48.871723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108433, 28.668772, 48.523178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400291, 28.599951, 48.787907>,  <33.575409, 28.558659, 48.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400291, 28.599951, 48.787907>,  <33.108433, 28.668772, 48.523178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400291, 28.599951, 48.787907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674510, 0.021910, -0.737941,
		0.112464, 0.984844, 0.132038,
		0.729650, -0.172052, 0.661823,
		33.619186, 28.548336, 48.986454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639153, 28.940277, 48.270916>,  <33.108433, 28.668772, 48.523178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639153, 28.940277, 48.270916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845516, 28.748602, 48.554947>,  <33.969334, 28.633596, 48.725365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845516, 28.748602, 48.554947>,  <33.639153, 28.940277, 48.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845516, 28.748602, 48.554947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777084, -0.087062, -0.623347,
		0.360522, 0.873383, 0.327455,
		0.515912, -0.479190, 0.710079,
		34.000290, 28.604845, 48.767971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253979, 29.392647, 48.369984>,  <33.639153, 28.940277, 48.270916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253979, 29.392647, 48.369984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329193, 29.017845, 48.487743>,  <34.374321, 28.792965, 48.558399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329193, 29.017845, 48.487743>,  <34.253979, 29.392647, 48.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329193, 29.017845, 48.487743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718335, -0.073212, -0.691834,
		0.669804, 0.341566, 0.659315,
		0.188037, -0.937002, 0.294397,
		34.385605, 28.736744, 48.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981853, 29.317045, 48.416546>,  <34.253979, 29.392647, 48.369984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981853, 29.317045, 48.416546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864479, 28.934687, 48.411545>,  <34.794056, 28.705271, 48.408543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864479, 28.934687, 48.411545>,  <34.981853, 29.317045, 48.416546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864479, 28.934687, 48.411545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694148, -0.204052, -0.690305,
		0.657310, -0.211237, 0.723410,
		-0.293432, -0.955898, -0.012504,
		34.776451, 28.647917, 48.407795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552399, 28.896370, 48.349148>,  <34.981853, 29.317045, 48.416546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552399, 28.896370, 48.349148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270866, 28.654133, 48.200619>,  <35.101948, 28.508791, 48.111504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270866, 28.654133, 48.200619>,  <35.552399, 28.896370, 48.349148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270866, 28.654133, 48.200619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558908, -0.149461, -0.815649,
		0.438453, -0.781614, 0.443665,
		-0.703833, -0.605591, -0.371319,
		35.059715, 28.472456, 48.089222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902271, 28.342503, 48.056175>,  <35.552399, 28.896370, 48.349148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902271, 28.342503, 48.056175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552589, 28.290831, 47.868954>,  <35.342781, 28.259827, 47.756622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552589, 28.290831, 47.868954>,  <35.902271, 28.342503, 48.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552589, 28.290831, 47.868954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475616, -0.033831, -0.879002,
		0.097719, -0.991043, 0.091017,
		-0.874208, -0.129184, -0.468050,
		35.290325, 28.252075, 47.728539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006535, 27.883520, 47.534229>,  <35.902271, 28.342503, 48.056175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006535, 27.883520, 47.534229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675423, 28.072695, 47.413498>,  <35.476753, 28.186199, 47.341057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675423, 28.072695, 47.413498>,  <36.006535, 27.883520, 47.534229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675423, 28.072695, 47.413498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333858, -0.017135, -0.942468,
		-0.450901, -0.880929, -0.143710,
		-0.827784, 0.472939, -0.301832,
		35.427086, 28.214577, 47.322948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845234, 27.510498, 46.938969>,  <36.006535, 27.883520, 47.534229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845234, 27.510498, 46.938969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671719, 27.870737, 46.928013>,  <35.567612, 28.086882, 46.921440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671719, 27.870737, 46.928013>,  <35.845234, 27.510498, 46.938969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671719, 27.870737, 46.928013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336843, 0.133902, -0.931991,
		-0.835684, -0.413509, -0.361445,
		-0.433785, 0.900600, -0.027388,
		35.541584, 28.140917, 46.919796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488037, 27.559689, 46.251209>,  <35.845234, 27.510498, 46.938969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488037, 27.559689, 46.251209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536037, 27.930155, 46.394215>,  <35.564838, 28.152435, 46.480019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536037, 27.930155, 46.394215>,  <35.488037, 27.559689, 46.251209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536037, 27.930155, 46.394215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299212, 0.309632, -0.902552,
		-0.946611, 0.215279, -0.239964,
		0.120000, 0.926166, 0.357515,
		35.572037, 28.208004, 46.501469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078781, 27.874847, 45.853329>,  <35.488037, 27.559689, 46.251209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078781, 27.874847, 45.853329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346664, 28.131699, 46.002544>,  <35.507393, 28.285810, 46.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346664, 28.131699, 46.002544>,  <35.078781, 27.874847, 45.853329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346664, 28.131699, 46.002544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285871, 0.240704, -0.927545,
		-0.685396, 0.727827, -0.022364,
		0.669709, 0.642129, 0.373042,
		35.547577, 28.324337, 46.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891785, 28.455654, 45.531399>,  <35.078781, 27.874847, 45.853329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891785, 28.455654, 45.531399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259148, 28.527851, 45.672222>,  <35.479565, 28.571169, 45.756714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259148, 28.527851, 45.672222>,  <34.891785, 28.455654, 45.531399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259148, 28.527851, 45.672222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320846, 0.180830, -0.929708,
		-0.231468, 0.966810, 0.108166,
		0.918412, 0.180493, 0.352054,
		35.534672, 28.581999, 45.777840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125999, 29.026976, 45.205952>,  <34.891785, 28.455654, 45.531399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125999, 29.026976, 45.205952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463428, 28.851730, 45.330173>,  <35.665886, 28.746584, 45.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463428, 28.851730, 45.330173>,  <35.125999, 29.026976, 45.205952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463428, 28.851730, 45.330173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408331, 0.147694, -0.900807,
		0.348789, 0.886703, 0.303486,
		0.843571, -0.438114, 0.310554,
		35.716499, 28.720297, 45.423340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718811, 29.540176, 45.071537>,  <35.125999, 29.026976, 45.205952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718811, 29.540176, 45.071537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849026, 29.162043, 45.079239>,  <35.927155, 28.935162, 45.083858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849026, 29.162043, 45.079239>,  <35.718811, 29.540176, 45.071537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849026, 29.162043, 45.079239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286766, 0.079307, -0.954712,
		0.900995, 0.316312, 0.296907,
		0.325534, -0.945334, 0.019252,
		35.946686, 28.878443, 45.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441822, 29.526928, 44.732944>,  <35.718811, 29.540176, 45.071537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441822, 29.526928, 44.732944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337669, 29.140806, 44.725006>,  <36.275177, 28.909134, 44.720242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337669, 29.140806, 44.725006>,  <36.441822, 29.526928, 44.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337669, 29.140806, 44.725006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440607, -0.100506, -0.892056,
		0.859109, -0.241017, 0.451489,
		-0.260378, -0.965303, -0.019848,
		36.259556, 28.851215, 44.719051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006519, 29.193855, 44.607651>,  <36.441822, 29.526928, 44.732944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006519, 29.193855, 44.607651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720470, 28.941843, 44.486549>,  <36.548843, 28.790636, 44.413887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720470, 28.941843, 44.486549>,  <37.006519, 29.193855, 44.607651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720470, 28.941843, 44.486549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490503, -0.143717, -0.859507,
		0.498005, -0.763155, 0.411808,
		-0.715120, -0.630032, -0.302758,
		36.505936, 28.752834, 44.395721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349495, 28.751955, 44.217667>,  <37.006519, 29.193855, 44.607651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349495, 28.751955, 44.217667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969589, 28.700802, 44.103405>,  <36.741646, 28.670109, 44.034847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969589, 28.700802, 44.103405>,  <37.349495, 28.751955, 44.217667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969589, 28.700802, 44.103405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285900, 0.016824, -0.958112,
		0.127335, -0.991646, 0.020584,
		-0.949762, -0.127886, -0.285654,
		36.684662, 28.662436, 44.017708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265259, 28.166943, 43.676395>,  <37.349495, 28.751955, 44.217667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265259, 28.166943, 43.676395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935802, 28.383923, 43.610229>,  <36.738129, 28.514111, 43.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935802, 28.383923, 43.610229>,  <37.265259, 28.166943, 43.676395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935802, 28.383923, 43.610229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215412, 0.029424, -0.976080,
		-0.524610, -0.839571, -0.141085,
		-0.823640, 0.542452, -0.165418,
		36.688709, 28.546658, 43.560604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024502, 27.926302, 43.058323>,  <37.265259, 28.166943, 43.676395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024502, 27.926302, 43.058323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849194, 28.283474, 43.099495>,  <36.744011, 28.497778, 43.124199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849194, 28.283474, 43.099495>,  <37.024502, 27.926302, 43.058323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849194, 28.283474, 43.099495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235764, 0.224701, -0.945476,
		-0.867373, -0.390106, -0.309001,
		-0.438268, 0.892931, 0.102926,
		36.717712, 28.551353, 43.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499928, 27.924879, 42.689835>,  <37.024502, 27.926302, 43.058323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499928, 27.924879, 42.689835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523125, 28.324171, 42.695061>,  <36.537041, 28.563747, 42.698196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523125, 28.324171, 42.695061>,  <36.499928, 27.924879, 42.689835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523125, 28.324171, 42.695061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080617, 0.017731, -0.996588,
		-0.995057, 0.056737, 0.081503,
		0.057988, 0.998232, 0.013070,
		36.540520, 28.623640, 42.698982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003281, 28.203995, 42.188473>,  <36.499928, 27.924879, 42.689835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003281, 28.203995, 42.188473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246468, 28.518469, 42.232826>,  <36.392380, 28.707153, 42.259438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246468, 28.518469, 42.232826>,  <36.003281, 28.203995, 42.188473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246468, 28.518469, 42.232826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069228, 0.086631, -0.993832,
		-0.790941, 0.611890, -0.001758,
		0.607963, 0.786184, 0.110880,
		36.428856, 28.754324, 42.266090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751423, 28.729368, 41.656544>,  <36.003281, 28.203995, 42.188473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751423, 28.729368, 41.656544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126961, 28.834646, 41.745350>,  <36.352283, 28.897812, 41.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126961, 28.834646, 41.745350>,  <35.751423, 28.729368, 41.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126961, 28.834646, 41.745350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160628, 0.235563, -0.958493,
		-0.304569, 0.935542, 0.178882,
		0.938848, 0.263194, 0.222020,
		36.408615, 28.913605, 41.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993168, 29.260492, 41.109711>,  <35.751423, 28.729368, 41.656544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993168, 29.260492, 41.109711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341148, 29.151957, 41.274422>,  <36.549938, 29.086836, 41.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341148, 29.151957, 41.274422>,  <35.993168, 29.260492, 41.109711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341148, 29.151957, 41.274422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461917, 0.155992, -0.873097,
		0.172671, 0.949759, 0.261041,
		0.869952, -0.271338, 0.411775,
		36.602135, 29.070555, 41.397953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434254, 29.889967, 41.069496>,  <35.993168, 29.260492, 41.109711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434254, 29.889967, 41.069496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671242, 29.568737, 41.094944>,  <36.813435, 29.375999, 41.110214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671242, 29.568737, 41.094944>,  <36.434254, 29.889967, 41.069496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671242, 29.568737, 41.094944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532202, 0.330894, -0.779276,
		0.604765, 0.495558, 0.623443,
		0.592470, -0.803076, 0.063624,
		36.848984, 29.327814, 41.114033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135738, 30.014738, 41.238384>,  <36.434254, 29.889967, 41.069496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135738, 30.014738, 41.238384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145786, 29.663822, 41.046661>,  <37.151817, 29.453272, 40.931629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145786, 29.663822, 41.046661>,  <37.135738, 30.014738, 41.238384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145786, 29.663822, 41.046661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659732, 0.374774, -0.651382,
		0.751081, -0.299847, 0.588191,
		0.025124, -0.877289, -0.479304,
		37.153324, 29.400635, 40.902870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811363, 29.798740, 41.155174>,  <37.135738, 30.014738, 41.238384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811363, 29.798740, 41.155174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624966, 29.573683, 40.882034>,  <37.513126, 29.438648, 40.718151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624966, 29.573683, 40.882034>,  <37.811363, 29.798740, 41.155174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624966, 29.573683, 40.882034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689665, 0.252482, -0.678687,
		0.554266, -0.787200, 0.270381,
		-0.465996, -0.562645, -0.682847,
		37.485168, 29.404890, 40.677181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312546, 29.329491, 40.971779>,  <37.811363, 29.798740, 41.155174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312546, 29.329491, 40.971779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052067, 29.349209, 40.668858>,  <37.895779, 29.361040, 40.487103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052067, 29.349209, 40.668858>,  <38.312546, 29.329491, 40.971779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052067, 29.349209, 40.668858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734187, 0.293549, -0.612207,
		0.192130, -0.954672, -0.227348,
		-0.651195, 0.049293, -0.757308,
		37.856709, 29.363997, 40.441666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659966, 29.217352, 40.355312>,  <38.312546, 29.329491, 40.971779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659966, 29.217352, 40.355312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330517, 29.397329, 40.217209>,  <38.132847, 29.505316, 40.134346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330517, 29.397329, 40.217209>,  <38.659966, 29.217352, 40.355312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330517, 29.397329, 40.217209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533744, 0.409102, -0.740103,
		-0.191759, -0.793842, -0.577099,
		-0.823617, 0.449945, -0.345260,
		38.083431, 29.532312, 40.113632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780678, 29.157278, 39.700954>,  <38.659966, 29.217352, 40.355312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780678, 29.157278, 39.700954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498940, 29.440784, 39.716713>,  <38.329899, 29.610888, 39.726166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498940, 29.440784, 39.716713>,  <38.780678, 29.157278, 39.700954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498940, 29.440784, 39.716713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427174, 0.467522, -0.773916,
		-0.566941, -0.528275, -0.632062,
		-0.704343, 0.708766, 0.039392,
		38.287636, 29.653414, 39.728531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489182, 29.248440, 39.006397>,  <38.780678, 29.157278, 39.700954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489182, 29.248440, 39.006397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434464, 29.582666, 39.219231>,  <38.401630, 29.783201, 39.346931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434464, 29.582666, 39.219231>,  <38.489182, 29.248440, 39.006397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434464, 29.582666, 39.219231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254880, 0.548743, -0.796189,
		-0.957247, 0.026701, -0.288037,
		-0.136799, 0.835565, 0.532088,
		38.393425, 29.833336, 39.378857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209450, 29.672804, 38.582443>,  <38.489182, 29.248440, 39.006397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209450, 29.672804, 38.582443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334679, 29.913721, 38.876171>,  <38.409817, 30.058271, 39.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334679, 29.913721, 38.876171>,  <38.209450, 29.672804, 38.582443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334679, 29.913721, 38.876171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277294, 0.681532, -0.677216,
		-0.908346, 0.415642, 0.046358,
		0.313074, 0.602292, 0.734322,
		38.428600, 30.094408, 39.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159325, 30.333992, 38.265137>,  <38.209450, 29.672804, 38.582443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159325, 30.333992, 38.265137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395870, 30.397270, 38.581429>,  <38.537800, 30.435238, 38.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395870, 30.397270, 38.581429>,  <38.159325, 30.333992, 38.265137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395870, 30.397270, 38.581429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514322, 0.681246, -0.520939,
		-0.621094, 0.714757, 0.321504,
		0.591368, 0.158195, 0.790733,
		38.573280, 30.444729, 38.818649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002258, 30.922632, 38.384201>,  <38.159325, 30.333992, 38.265137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002258, 30.922632, 38.384201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373444, 30.869696, 38.523556>,  <38.596153, 30.837933, 38.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373444, 30.869696, 38.523556>,  <38.002258, 30.922632, 38.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373444, 30.869696, 38.523556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326597, 0.739050, -0.589185,
		-0.179498, 0.660523, 0.729034,
		0.927963, -0.132343, 0.348383,
		38.651833, 30.829992, 38.628071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179317, 31.580332, 38.569733>,  <38.002258, 30.922632, 38.384201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179317, 31.580332, 38.569733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519138, 31.370600, 38.546623>,  <38.723030, 31.244761, 38.532757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519138, 31.370600, 38.546623>,  <38.179317, 31.580332, 38.569733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519138, 31.370600, 38.546623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447606, 0.774493, -0.447000,
		0.279116, 0.353893, 0.892667,
		0.849554, -0.524328, -0.057769,
		38.774006, 31.213301, 38.529293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672077, 32.084270, 38.556999>,  <38.179317, 31.580332, 38.569733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672077, 32.084270, 38.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903996, 31.770157, 38.470135>,  <39.043148, 31.581688, 38.418015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903996, 31.770157, 38.470135>,  <38.672077, 32.084270, 38.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903996, 31.770157, 38.470135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467593, 0.538982, -0.700611,
		0.667227, 0.304669, 0.679695,
		0.579797, -0.785287, -0.217162,
		39.077934, 31.534571, 38.404987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428082, 32.328411, 38.436199>,  <38.672077, 32.084270, 38.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428082, 32.328411, 38.436199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372242, 31.970226, 38.267128>,  <39.338737, 31.755316, 38.165684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372242, 31.970226, 38.267128>,  <39.428082, 32.328411, 38.436199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372242, 31.970226, 38.267128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435412, 0.327869, -0.838402,
		0.889342, -0.301076, 0.344127,
		-0.139594, -0.895464, -0.422681,
		39.330364, 31.701588, 38.140324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020363, 32.176506, 38.142834>,  <39.428082, 32.328411, 38.436199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020363, 32.176506, 38.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755554, 31.975567, 37.920349>,  <39.596668, 31.855003, 37.786858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755554, 31.975567, 37.920349>,  <40.020363, 32.176506, 38.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755554, 31.975567, 37.920349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444666, 0.334138, -0.831038,
		0.603323, -0.797494, 0.002172,
		-0.662022, -0.502350, -0.556211,
		39.556946, 31.824862, 37.753487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488522, 31.731102, 37.673115>,  <40.020363, 32.176506, 38.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488522, 31.731102, 37.673115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131817, 31.734289, 37.492142>,  <39.917793, 31.736202, 37.383560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131817, 31.734289, 37.492142>,  <40.488522, 31.731102, 37.673115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131817, 31.734289, 37.492142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425891, 0.352592, -0.833244,
		0.152883, -0.935743, -0.317823,
		-0.891764, 0.007969, -0.452430,
		39.864288, 31.736679, 37.356411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556061, 31.464109, 36.874821>,  <40.488522, 31.731102, 37.673115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556061, 31.464109, 36.874821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238285, 31.703808, 36.914360>,  <40.047619, 31.847628, 36.938084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238285, 31.703808, 36.914360>,  <40.556061, 31.464109, 36.874821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238285, 31.703808, 36.914360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301252, 0.530121, -0.792603,
		-0.527367, -0.599895, -0.601672,
		-0.794438, 0.599248, 0.098849,
		39.999954, 31.883581, 36.944016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797039, 31.101011, 36.311871>,  <40.556061, 31.464109, 36.874821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797039, 31.101011, 36.311871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839405, 30.772461, 36.087681>,  <40.864826, 30.575331, 35.953167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839405, 30.772461, 36.087681>,  <40.797039, 31.101011, 36.311871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839405, 30.772461, 36.087681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853634, 0.364182, -0.372397,
		0.509990, -0.438995, 0.739725,
		0.105914, -0.821374, -0.560471,
		40.871178, 30.526049, 35.919540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542622, 30.878586, 36.335670>,  <40.797039, 31.101011, 36.311871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542622, 30.878586, 36.335670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379993, 30.713646, 36.009563>,  <41.282417, 30.614683, 35.813900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379993, 30.713646, 36.009563>,  <41.542622, 30.878586, 36.335670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379993, 30.713646, 36.009563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779460, 0.308945, -0.544973,
		0.476593, -0.857042, 0.195801,
		-0.406574, -0.412349, -0.815271,
		41.258022, 30.589941, 35.764980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042198, 30.538994, 36.086594>,  <41.542622, 30.878586, 36.335670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042198, 30.538994, 36.086594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793354, 30.612890, 35.782265>,  <41.644047, 30.657228, 35.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793354, 30.612890, 35.782265>,  <42.042198, 30.538994, 36.086594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793354, 30.612890, 35.782265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782890, 0.156371, -0.602189,
		0.007721, -0.970267, -0.241913,
		-0.622112, 0.184741, -0.760820,
		41.606720, 30.668312, 35.554020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212395, 30.073246, 35.590092>,  <42.042198, 30.538994, 36.086594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212395, 30.073246, 35.590092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085838, 30.424526, 35.446613>,  <42.009903, 30.635294, 35.360527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085838, 30.424526, 35.446613>,  <42.212395, 30.073246, 35.590092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085838, 30.424526, 35.446613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857789, 0.103389, -0.503497,
		-0.405087, -0.466983, -0.786022,
		-0.316390, 0.878201, -0.358691,
		41.990921, 30.687986, 35.339005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210884, 30.037893, 34.875813>,  <42.212395, 30.073246, 35.590092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210884, 30.037893, 34.875813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284054, 30.415075, 34.987076>,  <42.327957, 30.641384, 35.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284054, 30.415075, 34.987076>,  <42.210884, 30.037893, 34.875813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284054, 30.415075, 34.987076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955292, -0.103634, -0.276906,
		-0.232284, 0.316375, -0.919756,
		0.182925, 0.942956, 0.278158,
		42.338932, 30.697962, 35.070522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591621, 30.412039, 34.340027>,  <42.210884, 30.037893, 34.875813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591621, 30.412039, 34.340027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672451, 30.558029, 34.703556>,  <42.720947, 30.645622, 34.921673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672451, 30.558029, 34.703556>,  <42.591621, 30.412039, 34.340027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672451, 30.558029, 34.703556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979371, -0.075680, -0.187365,
		0.000396, 0.927936, -0.372738,
		0.202071, 0.364975, 0.908824,
		42.733074, 30.667522, 34.976204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536339, 30.684717, 33.695862>,  <42.591621, 30.412039, 34.340027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536339, 30.684717, 33.695862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284348, 30.969946, 33.818928>,  <42.133152, 31.141083, 33.892769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284348, 30.969946, 33.818928>,  <42.536339, 30.684717, 33.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284348, 30.969946, 33.818928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385578, -0.056708, 0.920931,
		0.674138, 0.698793, -0.239221,
		-0.629974, 0.713073, 0.307668,
		42.095356, 31.183868, 33.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975246, 31.234987, 34.048027>,  <42.536339, 30.684717, 33.695862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975246, 31.234987, 34.048027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605770, 31.180082, 34.191109>,  <42.384083, 31.147141, 34.276958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605770, 31.180082, 34.191109>,  <42.975246, 31.234987, 34.048027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605770, 31.180082, 34.191109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381526, -0.244091, 0.891548,
		-0.035063, 0.959989, 0.277834,
		-0.923693, -0.137262, 0.357702,
		42.328663, 31.138905, 34.298420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100163, 31.652994, 33.439964>,  <42.975246, 31.234987, 34.048027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100163, 31.652994, 33.439964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292141, 31.992910, 33.527149>,  <43.407330, 32.196861, 33.579460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292141, 31.992910, 33.527149>,  <43.100163, 31.652994, 33.439964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292141, 31.992910, 33.527149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202683, 0.134317, -0.969989,
		-0.853562, 0.509722, -0.107773,
		0.479949, 0.849790, 0.217960,
		43.436127, 32.247849, 33.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744064, 32.194878, 33.052586>,  <43.100163, 31.652994, 33.439964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744064, 32.194878, 33.052586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102654, 32.352024, 33.134560>,  <43.317806, 32.446312, 33.183743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102654, 32.352024, 33.134560>,  <42.744064, 32.194878, 33.052586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102654, 32.352024, 33.134560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036423, 0.395592, -0.917704,
		-0.441602, 0.830159, 0.340328,
		0.896471, 0.392864, 0.204931,
		43.371593, 32.469883, 33.196037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703465, 32.871468, 32.771496>,  <42.744064, 32.194878, 33.052586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703465, 32.871468, 32.771496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096695, 32.801502, 32.793297>,  <43.332634, 32.759525, 32.806377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096695, 32.801502, 32.793297>,  <42.703465, 32.871468, 32.771496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096695, 32.801502, 32.793297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099061, 0.257250, -0.961254,
		0.154113, 0.950383, 0.270223,
		0.983075, -0.174910, 0.054500,
		43.391617, 32.749031, 32.809647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080696, 33.449699, 32.549095>,  <42.703465, 32.871468, 32.771496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080696, 33.449699, 32.549095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354218, 33.159889, 32.514515>,  <43.518330, 32.986004, 32.493767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354218, 33.159889, 32.514515>,  <43.080696, 33.449699, 32.549095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354218, 33.159889, 32.514515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271871, 0.362936, -0.891271,
		0.677123, 0.585953, 0.445155,
		0.683806, -0.724525, -0.086449,
		43.559361, 32.942532, 32.488579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454006, 33.810513, 32.149139>,  <43.080696, 33.449699, 32.549095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454006, 33.810513, 32.149139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598740, 33.438011, 32.132000>,  <43.685581, 33.214508, 32.121716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598740, 33.438011, 32.132000>,  <43.454006, 33.810513, 32.149139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598740, 33.438011, 32.132000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421093, 0.204276, -0.883715,
		0.831719, 0.301714, 0.466060,
		0.361834, -0.931257, -0.042850,
		43.707291, 33.158634, 32.119144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174805, 33.936268, 32.051853>,  <43.454006, 33.810513, 32.149139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174805, 33.936268, 32.051853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033298, 33.591637, 31.906233>,  <43.948395, 33.384857, 31.818861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033298, 33.591637, 31.906233>,  <44.174805, 33.936268, 32.051853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033298, 33.591637, 31.906233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288429, 0.269761, -0.918715,
		0.889750, -0.430016, 0.153071,
		-0.353770, -0.861577, -0.364049,
		43.927166, 33.333164, 31.797018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642822, 33.840054, 31.501492>,  <44.174805, 33.936268, 32.051853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642822, 33.840054, 31.501492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367111, 33.563828, 31.413849>,  <44.201683, 33.398090, 31.361263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367111, 33.563828, 31.413849>,  <44.642822, 33.840054, 31.501492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367111, 33.563828, 31.413849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070426, 0.237131, -0.968921,
		0.721064, -0.683289, -0.114816,
		-0.689280, -0.690568, -0.219107,
		44.160328, 33.356659, 31.348116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909332, 33.376167, 30.935366>,  <44.642822, 33.840054, 31.501492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909332, 33.376167, 30.935366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510181, 33.401340, 30.942060>,  <44.270691, 33.416447, 30.946077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510181, 33.401340, 30.942060>,  <44.909332, 33.376167, 30.935366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510181, 33.401340, 30.942060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007893, 0.138208, -0.990372,
		-0.064643, -0.988402, -0.137417,
		-0.997877, 0.062936, 0.016735,
		44.210819, 33.420219, 30.947081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803280, 32.991714, 30.438316>,  <44.909332, 33.376167, 30.935366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803280, 32.991714, 30.438316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459717, 33.190186, 30.489058>,  <44.253578, 33.309269, 30.519503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459717, 33.190186, 30.489058>,  <44.803280, 32.991714, 30.438316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459717, 33.190186, 30.489058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055628, 0.155845, -0.986214,
		-0.509103, -0.854122, -0.106255,
		-0.858906, 0.496173, 0.126854,
		44.202045, 33.339039, 30.527113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460487, 32.730263, 29.920137>,  <44.803280, 32.991714, 30.438316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460487, 32.730263, 29.920137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255848, 33.054691, 30.033575>,  <44.133064, 33.249348, 30.101639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255848, 33.054691, 30.033575>,  <44.460487, 32.730263, 29.920137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255848, 33.054691, 30.033575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243173, 0.179890, -0.953156,
		-0.824095, -0.556597, 0.105199,
		-0.511600, 0.811073, 0.283596,
		44.102367, 33.298012, 30.118654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787800, 32.711929, 29.625227>,  <44.460487, 32.730263, 29.920137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787800, 32.711929, 29.625227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912018, 33.084888, 29.699184>,  <43.986549, 33.308666, 29.743559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912018, 33.084888, 29.699184>,  <43.787800, 32.711929, 29.625227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912018, 33.084888, 29.699184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012050, 0.190635, -0.981587,
		-0.950482, 0.307057, 0.047966,
		0.310547, 0.932403, 0.184895,
		44.005180, 33.364609, 29.754652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361443, 33.077801, 29.164547>,  <43.787800, 32.711929, 29.625227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361443, 33.077801, 29.164547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639828, 33.336895, 29.288534>,  <43.806858, 33.492352, 29.362926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639828, 33.336895, 29.288534>,  <43.361443, 33.077801, 29.164547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639828, 33.336895, 29.288534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082202, 0.500689, -0.861716,
		-0.713361, 0.574239, 0.401704,
		0.695959, 0.647735, 0.309968,
		43.848614, 33.531216, 29.381525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118896, 33.781796, 28.945734>,  <43.361443, 33.077801, 29.164547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118896, 33.781796, 28.945734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515053, 33.802399, 28.997076>,  <43.752747, 33.814762, 29.027882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515053, 33.802399, 28.997076>,  <43.118896, 33.781796, 28.945734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515053, 33.802399, 28.997076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103767, 0.336827, -0.935831,
		-0.091437, 0.940157, 0.328245,
		0.990390, 0.051508, 0.128356,
		43.812168, 33.817852, 29.035583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262691, 34.501587, 28.790045>,  <43.118896, 33.781796, 28.945734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262691, 34.501587, 28.790045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593922, 34.284981, 28.732014>,  <43.792660, 34.155018, 28.697195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593922, 34.284981, 28.732014>,  <43.262691, 34.501587, 28.790045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593922, 34.284981, 28.732014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105826, 0.405121, -0.908118,
		0.550537, 0.736637, 0.392778,
		0.828076, -0.541519, -0.145079,
		43.842346, 34.122524, 28.688490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682331, 34.945297, 28.609358>,  <43.262691, 34.501587, 28.790045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682331, 34.945297, 28.609358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891521, 34.626602, 28.488228>,  <44.017036, 34.435383, 28.415550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891521, 34.626602, 28.488228>,  <43.682331, 34.945297, 28.609358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891521, 34.626602, 28.488228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188077, 0.454396, -0.870719,
		0.831340, 0.398408, 0.387485,
		0.522973, -0.796741, -0.302826,
		44.048412, 34.387581, 28.397381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375881, 35.134537, 28.339405>,  <43.682331, 34.945297, 28.609358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375881, 35.134537, 28.339405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305573, 34.782047, 28.163887>,  <44.263386, 34.570553, 28.058577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305573, 34.782047, 28.163887>,  <44.375881, 35.134537, 28.339405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305573, 34.782047, 28.163887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215754, 0.400415, -0.890572,
		0.960497, -0.251211, 0.119746,
		-0.175773, -0.881227, -0.438797,
		44.252842, 34.517677, 28.032248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929623, 35.021477, 27.826229>,  <44.375881, 35.134537, 28.339405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929623, 35.021477, 27.826229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669945, 34.739788, 27.711258>,  <44.514137, 34.570774, 27.642275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669945, 34.739788, 27.711258>,  <44.929623, 35.021477, 27.826229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669945, 34.739788, 27.711258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161971, 0.241223, -0.956858,
		0.743177, -0.667742, -0.042537,
		-0.649195, -0.704225, -0.287426,
		44.475185, 34.528522, 27.625031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269974, 34.743877, 27.328850>,  <44.929623, 35.021477, 27.826229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269974, 34.743877, 27.328850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891659, 34.631344, 27.263943>,  <44.664669, 34.563824, 27.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891659, 34.631344, 27.263943>,  <45.269974, 34.743877, 27.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891659, 34.631344, 27.263943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083386, 0.272523, -0.958529,
		0.313895, -0.920097, -0.234289,
		-0.945789, -0.281341, -0.162267,
		44.607922, 34.546944, 27.215263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290154, 34.547207, 26.677027>,  <45.269974, 34.743877, 27.328850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290154, 34.547207, 26.677027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900478, 34.613667, 26.738161>,  <44.666676, 34.653542, 26.774841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900478, 34.613667, 26.738161>,  <45.290154, 34.547207, 26.677027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900478, 34.613667, 26.738161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016713, 0.622068, -0.782785,
		-0.225137, -0.765131, -0.603232,
		-0.974184, 0.166152, 0.152838,
		44.608223, 34.663513, 26.784012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927876, 34.358738, 26.011528>,  <45.290154, 34.547207, 26.677027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927876, 34.358738, 26.011528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694920, 34.604328, 26.224642>,  <44.555145, 34.751682, 26.352510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694920, 34.604328, 26.224642>,  <44.927876, 34.358738, 26.011528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694920, 34.604328, 26.224642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124208, 0.714918, -0.688088,
		-0.803362, -0.334562, -0.492624,
		-0.582393, 0.613972, 0.532782,
		44.520203, 34.788521, 26.384476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510689, 34.741787, 25.484377>,  <44.927876, 34.358738, 26.011528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510689, 34.741787, 25.484377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502899, 34.974178, 25.809851>,  <44.498226, 35.113613, 26.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502899, 34.974178, 25.809851>,  <44.510689, 34.741787, 25.484377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502899, 34.974178, 25.809851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026907, 0.813848, -0.580454,
		-0.999448, 0.010592, -0.031479,
		-0.019471, 0.580981, 0.813684,
		44.497059, 35.148472, 26.053957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969414, 35.182663, 25.385206>,  <44.510689, 34.741787, 25.484377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969414, 35.182663, 25.385206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230797, 35.349144, 25.638113>,  <44.387627, 35.449032, 25.789858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230797, 35.349144, 25.638113>,  <43.969414, 35.182663, 25.385206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230797, 35.349144, 25.638113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062952, 0.862259, -0.502540,
		-0.754340, 0.288587, 0.589652,
		0.653459, 0.416206, 0.632269,
		44.426834, 35.474007, 25.827793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577377, 35.589798, 25.849964>,  <43.969414, 35.182663, 25.385206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577377, 35.589798, 25.849964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934368, 35.698273, 25.705769>,  <44.148563, 35.763359, 25.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934368, 35.698273, 25.705769>,  <43.577377, 35.589798, 25.849964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934368, 35.698273, 25.705769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421115, 0.787353, -0.450264,
		0.161725, 0.553655, 0.816891,
		0.892472, 0.271186, -0.360487,
		44.202110, 35.779629, 25.597622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799652, 36.179420, 26.101002>,  <43.577377, 35.589798, 25.849964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799652, 36.179420, 26.101002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927383, 36.113586, 25.727705>,  <44.004025, 36.074085, 25.503727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.927383, 36.113586, 25.727705>,  <43.799652, 36.179420, 26.101002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927383, 36.113586, 25.727705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592222, 0.734146, -0.332118,
		0.739797, 0.658741, 0.136965,
		0.319332, -0.164586, -0.933241,
		44.023182, 36.064209, 25.447733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726185, 36.740662, 26.614344>,  <43.799652, 36.179420, 26.101002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726185, 36.740662, 26.614344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750088, 36.912632, 26.253990>,  <43.764431, 37.015812, 26.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750088, 36.912632, 26.253990>,  <43.726185, 36.740662, 26.614344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750088, 36.912632, 26.253990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086658, 0.896857, 0.433749,
		0.994444, -0.103988, 0.016336,
		0.059756, 0.429924, -0.900886,
		43.768013, 37.041611, 25.983725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284927, 37.260853, 26.711933>,  <43.726185, 36.740662, 26.614344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284927, 37.260853, 26.711933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018208, 37.348495, 26.427015>,  <43.858173, 37.401081, 26.256065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018208, 37.348495, 26.427015>,  <44.284927, 37.260853, 26.711933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018208, 37.348495, 26.427015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028802, 0.947509, 0.318428,
		0.744676, 0.232845, -0.625492,
		-0.666804, 0.219111, -0.712294,
		43.818165, 37.414230, 26.213327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649670, 37.830120, 26.367374>,  <44.284927, 37.260853, 26.711933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649670, 37.830120, 26.367374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249722, 37.836491, 26.368793>,  <44.009754, 37.840313, 26.369644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249722, 37.836491, 26.368793>,  <44.649670, 37.830120, 26.367374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249722, 37.836491, 26.368793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016309, 0.970955, 0.238705,
		0.000358, 0.238731, -0.971086,
		-0.999867, 0.015922, 0.003546,
		43.949760, 37.841267, 26.369858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317852, 37.550591, 26.026571>,  <44.649670, 37.830120, 26.367374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317852, 37.550591, 26.026571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593094, 37.824005, 26.123966>,  <45.758240, 37.988056, 26.182404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593094, 37.824005, 26.123966>,  <45.317852, 37.550591, 26.026571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593094, 37.824005, 26.123966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177676, -0.166622, 0.969881,
		0.703523, -0.710640, 0.006795,
		0.688104, 0.683541, 0.243486,
		45.799526, 38.029068, 26.197012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809589, 37.251911, 26.477268>,  <45.317852, 37.550591, 26.026571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809589, 37.251911, 26.477268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781937, 37.647221, 26.531731>,  <45.765347, 37.884407, 26.564409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781937, 37.647221, 26.531731>,  <45.809589, 37.251911, 26.477268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781937, 37.647221, 26.531731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025430, -0.138186, 0.990080,
		0.997284, 0.064979, 0.034684,
		-0.069127, 0.988273, 0.136158,
		45.761200, 37.943703, 26.572578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238182, 37.425156, 27.045134>,  <45.809589, 37.251911, 26.477268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238182, 37.425156, 27.045134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943329, 37.695297, 27.035902>,  <45.766418, 37.857384, 27.030363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943329, 37.695297, 27.035902>,  <46.238182, 37.425156, 27.045134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943329, 37.695297, 27.035902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242588, -0.232590, 0.941835,
		0.630706, 0.699854, 0.335282,
		-0.737130, 0.675356, -0.023080,
		45.722191, 37.897903, 27.028978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233929, 37.784451, 27.569134>,  <46.238182, 37.425156, 27.045134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233929, 37.784451, 27.569134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846893, 37.872231, 27.519138>,  <45.614674, 37.924900, 27.489141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846893, 37.872231, 27.519138>,  <46.233929, 37.784451, 27.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846893, 37.872231, 27.519138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166374, -0.181545, 0.969206,
		0.190001, 0.958584, 0.212171,
		-0.967584, 0.219450, -0.124989,
		45.556618, 37.938065, 27.481642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005379, 38.282085, 28.069832>,  <46.233929, 37.784451, 27.569134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005379, 38.282085, 28.069832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697910, 38.056259, 27.949553>,  <45.513432, 37.920765, 27.877384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697910, 38.056259, 27.949553>,  <46.005379, 38.282085, 28.069832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697910, 38.056259, 27.949553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260997, -0.152362, 0.953240,
		-0.583979, 0.811205, -0.030234,
		-0.768667, -0.564563, -0.300698,
		45.467312, 37.886890, 27.859343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402130, 38.495266, 28.412218>,  <46.005379, 38.282085, 28.069832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402130, 38.495266, 28.412218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323662, 38.119232, 28.300676>,  <45.276581, 37.893612, 28.233751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323662, 38.119232, 28.300676>,  <45.402130, 38.495266, 28.412218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323662, 38.119232, 28.300676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321246, -0.207071, 0.924079,
		-0.926455, 0.270856, -0.261378,
		-0.196169, -0.940084, -0.278853,
		45.264812, 37.837208, 28.217020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768517, 38.300400, 28.623209>,  <45.402130, 38.495266, 28.412218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768517, 38.300400, 28.623209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973995, 37.957653, 28.605770>,  <45.097282, 37.752007, 28.595306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973995, 37.957653, 28.605770>,  <44.768517, 38.300400, 28.623209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973995, 37.957653, 28.605770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345456, -0.253081, 0.903665,
		-0.785351, -0.449148, -0.426016,
		0.513696, -0.856864, -0.043596,
		45.128105, 37.700592, 28.592691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298458, 37.910336, 28.955355>,  <44.768517, 38.300400, 28.623209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298458, 37.910336, 28.955355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623631, 37.680176, 28.919443>,  <44.818733, 37.542080, 28.897896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623631, 37.680176, 28.919443>,  <44.298458, 37.910336, 28.955355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623631, 37.680176, 28.919443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228319, -0.456728, 0.859808,
		-0.535737, -0.678466, -0.502663,
		0.812931, -0.575398, -0.089780,
		44.867512, 37.507557, 28.892509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059113, 37.248463, 29.224178>,  <44.298458, 37.910336, 28.955355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059113, 37.248463, 29.224178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459030, 37.243793, 29.230846>,  <44.698982, 37.240990, 29.234846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459030, 37.243793, 29.230846>,  <44.059113, 37.248463, 29.224178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459030, 37.243793, 29.230846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020293, -0.510170, 0.859834,
		-0.001535, -0.859995, -0.510301,
		0.999793, -0.011675, 0.016668,
		44.758968, 37.240292, 29.235847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106415, 36.596794, 29.570047>,  <44.059113, 37.248463, 29.224178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106415, 36.596794, 29.570047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472759, 36.751389, 29.613539>,  <44.692566, 36.844143, 29.639633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472759, 36.751389, 29.613539>,  <44.106415, 36.596794, 29.570047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472759, 36.751389, 29.613539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118632, -0.519237, 0.846356,
		0.383559, -0.762249, -0.521401,
		0.915865, 0.386483, 0.108731,
		44.747520, 36.867332, 29.646158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417271, 36.049759, 29.829060>,  <44.106415, 36.596794, 29.570047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417271, 36.049759, 29.829060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654728, 36.363235, 29.902191>,  <44.797203, 36.551319, 29.946070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654728, 36.363235, 29.902191>,  <44.417271, 36.049759, 29.829060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654728, 36.363235, 29.902191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281550, -0.415096, 0.865115,
		0.753871, -0.462092, -0.467065,
		0.593640, 0.783688, 0.182827,
		44.832821, 36.598343, 29.957039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159134, 35.776245, 30.067139>,  <44.417271, 36.049759, 29.829060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159134, 35.776245, 30.067139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079071, 36.145416, 30.198673>,  <45.031033, 36.366920, 30.277594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079071, 36.145416, 30.198673>,  <45.159134, 35.776245, 30.067139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079071, 36.145416, 30.198673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237442, -0.279932, 0.930193,
		0.950557, 0.264263, -0.163113,
		-0.200155, 0.922932, 0.328839,
		45.019024, 36.422295, 30.297325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706203, 35.950260, 30.556881>,  <45.159134, 35.776245, 30.067139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706203, 35.950260, 30.556881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387535, 36.179226, 30.634504>,  <45.196335, 36.316605, 30.681078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.387535, 36.179226, 30.634504>,  <45.706203, 35.950260, 30.556881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387535, 36.179226, 30.634504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108800, -0.180012, 0.977629,
		0.594540, 0.799962, 0.081132,
		-0.796671, 0.572413, 0.194060,
		45.148533, 36.350948, 30.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931885, 36.268013, 31.176216>,  <45.706203, 35.950260, 30.556881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931885, 36.268013, 31.176216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533852, 36.295868, 31.148033>,  <45.295033, 36.312580, 31.131124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533852, 36.295868, 31.148033>,  <45.931885, 36.268013, 31.176216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533852, 36.295868, 31.148033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079758, -0.141363, 0.986740,
		0.058753, 0.987505, 0.146221,
		-0.995081, 0.069636, -0.070456,
		45.235329, 36.316757, 31.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672016, 36.870998, 31.591219>,  <45.931885, 36.268013, 31.176216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672016, 36.870998, 31.591219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374187, 36.607990, 31.545120>,  <45.195492, 36.450184, 31.517460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374187, 36.607990, 31.545120>,  <45.672016, 36.870998, 31.591219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374187, 36.607990, 31.545120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021161, -0.149309, 0.988564,
		-0.667212, 0.738491, 0.097257,
		-0.744567, -0.657524, -0.115249,
		45.150818, 36.410732, 31.510546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329849, 36.867107, 32.232979>,  <45.672016, 36.870998, 31.591219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329849, 36.867107, 32.232979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188046, 36.539486, 32.052544>,  <45.102962, 36.342915, 31.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188046, 36.539486, 32.052544>,  <45.329849, 36.867107, 32.232979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188046, 36.539486, 32.052544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028819, -0.491762, 0.870253,
		-0.934609, 0.295511, 0.197937,
		-0.354507, -0.819050, -0.451089,
		45.081692, 36.293770, 31.917217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862034, 36.494431, 32.771591>,  <45.329849, 36.867107, 32.232979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862034, 36.494431, 32.771591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974232, 36.227119, 32.495991>,  <45.041550, 36.066734, 32.330631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974232, 36.227119, 32.495991>,  <44.862034, 36.494431, 32.771591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974232, 36.227119, 32.495991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117724, -0.688451, 0.715665,
		-0.952610, -0.281849, -0.114432,
		0.280490, -0.668278, -0.689006,
		45.058380, 36.026634, 32.289288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337048, 35.967533, 32.806187>,  <44.862034, 36.494431, 32.771591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337048, 35.967533, 32.806187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691406, 35.824360, 32.688148>,  <44.904022, 35.738457, 32.617325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691406, 35.824360, 32.688148>,  <44.337048, 35.967533, 32.806187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691406, 35.824360, 32.688148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032939, -0.683055, 0.729624,
		-0.462718, -0.636650, -0.616903,
		0.885894, -0.357930, -0.295091,
		44.957172, 35.716980, 32.599621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377079, 35.225025, 33.008568>,  <44.337048, 35.967533, 32.806187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377079, 35.225025, 33.008568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771042, 35.257423, 32.947392>,  <45.007420, 35.276863, 32.910686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771042, 35.257423, 32.947392>,  <44.377079, 35.225025, 33.008568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771042, 35.257423, 32.947392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152340, -0.825044, 0.544146,
		-0.082109, -0.559234, -0.824934,
		0.984911, 0.080991, -0.152937,
		45.066517, 35.281719, 32.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495766, 34.544239, 32.914555>,  <44.377079, 35.225025, 33.008568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495766, 34.544239, 32.914555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827900, 34.745735, 33.009876>,  <45.027180, 34.866634, 33.067070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827900, 34.745735, 33.009876>,  <44.495766, 34.544239, 32.914555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827900, 34.745735, 33.009876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292061, -0.757573, 0.583766,
		0.474596, -0.415124, -0.776164,
		0.830337, 0.503740, 0.238300,
		45.077000, 34.896858, 33.081367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959778, 34.057590, 32.727760>,  <44.495766, 34.544239, 32.914555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959778, 34.057590, 32.727760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096001, 34.339649, 32.976532>,  <45.177734, 34.508884, 33.125793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096001, 34.339649, 32.976532>,  <44.959778, 34.057590, 32.727760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096001, 34.339649, 32.976532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253576, -0.705840, 0.661430,
		0.905383, -0.067551, -0.419188,
		0.340560, 0.705143, 0.621926,
		45.198170, 34.551193, 33.163109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546886, 33.900036, 33.021137>,  <44.959778, 34.057590, 32.727760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546886, 33.900036, 33.021137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435696, 34.175758, 33.288746>,  <45.368980, 34.341190, 33.449310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435696, 34.175758, 33.288746>,  <45.546886, 33.900036, 33.021137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435696, 34.175758, 33.288746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239462, -0.624760, 0.743191,
		0.930263, 0.366793, 0.008604,
		-0.277973, 0.689303, 0.669024,
		45.352303, 34.382549, 33.489452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075653, 33.847828, 33.550117>,  <45.546886, 33.900036, 33.021137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075653, 33.847828, 33.550117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775578, 34.046616, 33.724583>,  <45.595531, 34.165890, 33.829262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775578, 34.046616, 33.724583>,  <46.075653, 33.847828, 33.550117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775578, 34.046616, 33.724583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180740, -0.480391, 0.858229,
		0.636043, 0.722666, 0.270562,
		-0.750188, 0.496969, 0.436164,
		45.550522, 34.195705, 33.855431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330460, 33.912243, 34.157139>,  <46.075653, 33.847828, 33.550117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330460, 33.912243, 34.157139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950287, 34.001511, 34.243748>,  <45.722183, 34.055073, 34.295712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.950287, 34.001511, 34.243748>,  <46.330460, 33.912243, 34.157139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950287, 34.001511, 34.243748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066672, -0.533867, 0.842936,
		0.303714, 0.815585, 0.492522,
		-0.950427, 0.223174, 0.216520,
		45.665157, 34.068462, 34.308704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245422, 34.328773, 34.827473>,  <46.330460, 33.912243, 34.157139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245422, 34.328773, 34.827473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896114, 34.147541, 34.755787>,  <45.686531, 34.038799, 34.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896114, 34.147541, 34.755787>,  <46.245422, 34.328773, 34.827473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896114, 34.147541, 34.755787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090090, -0.211327, 0.973255,
		-0.478839, 0.866057, 0.143727,
		-0.873268, -0.453084, -0.179215,
		45.634132, 34.011616, 34.702023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086418, 34.978313, 35.099327>,  <46.245422, 34.328773, 34.827473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086418, 34.978313, 35.099327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344707, 35.115105, 35.372410>,  <46.499680, 35.197182, 35.536259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344707, 35.115105, 35.372410>,  <46.086418, 34.978313, 35.099327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344707, 35.115105, 35.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751419, -0.125702, -0.647741,
		-0.135698, 0.931261, -0.338140,
		0.645721, 0.341982, 0.682710,
		46.538425, 35.217701, 35.577225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615742, 35.274399, 34.687275>,  <46.086418, 34.978313, 35.099327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615742, 35.274399, 34.687275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762196, 35.172623, 35.045315>,  <46.850067, 35.111557, 35.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762196, 35.172623, 35.045315>,  <46.615742, 35.274399, 34.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762196, 35.172623, 35.045315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875509, -0.231749, -0.424001,
		0.315323, 0.938909, 0.137917,
		0.366137, -0.254445, 0.895099,
		46.872036, 35.096291, 35.313843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.298603, 35.663658, 34.816395>,  <46.615742, 35.274399, 34.687275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.298603, 35.663658, 34.816395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248554, 35.301090, 34.977760>,  <47.218525, 35.083549, 35.074577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248554, 35.301090, 34.977760>,  <47.298603, 35.663658, 34.816395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248554, 35.301090, 34.977760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854715, -0.304948, -0.420083,
		0.503792, 0.292240, 0.812889,
		-0.125124, -0.906423, 0.403412,
		47.211018, 35.029163, 35.098785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016682, 35.398380, 34.787754>,  <47.298603, 35.663658, 34.816395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016682, 35.398380, 34.787754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783119, 35.077038, 34.834530>,  <47.642982, 34.884232, 34.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783119, 35.077038, 34.834530>,  <48.016682, 35.398380, 34.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.783119, 35.077038, 34.834530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684570, -0.564669, -0.460991,
		0.436369, -0.189125, 0.879667,
		-0.583905, -0.803356, 0.116935,
		47.607948, 34.836033, 34.869610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.977741, 33.763729, 43.778774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.692610, 33.645340, 43.524445>,  <31.521530, 33.574306, 43.371845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.692610, 33.645340, 43.524445>,  <31.977741, 33.763729, 43.778774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692610, 33.645340, 43.524445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575957, 0.270259, -0.771514,
		0.400186, -0.916165, -0.022180,
		-0.712829, -0.295974, -0.635826,
		31.478762, 33.556549, 43.333698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245541, 33.196400, 43.336754>,  <31.977741, 33.763729, 43.778774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245541, 33.196400, 43.336754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.942532, 33.356926, 43.130798>,  <31.760727, 33.453243, 43.007225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.942532, 33.356926, 43.130798>,  <32.245541, 33.196400, 43.336754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942532, 33.356926, 43.130798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600968, 0.120674, -0.790111,
		-0.254949, -0.907956, -0.332591,
		-0.757521, 0.401315, -0.514887,
		31.715275, 33.477322, 42.976334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311981, 32.985229, 42.631596>,  <32.245541, 33.196400, 43.336754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311981, 32.985229, 42.631596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059666, 33.292683, 42.589054>,  <31.908276, 33.477154, 42.563530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059666, 33.292683, 42.589054>,  <32.311981, 32.985229, 42.631596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059666, 33.292683, 42.589054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412617, 0.216186, -0.884879,
		-0.657152, -0.602057, -0.453518,
		-0.630792, 0.768629, -0.106352,
		31.870428, 33.523270, 42.557148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073124, 32.929695, 42.023964>,  <32.311981, 32.985229, 42.631596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073124, 32.929695, 42.023964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007332, 33.316040, 42.104019>,  <31.967855, 33.547848, 42.152054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007332, 33.316040, 42.104019>,  <32.073124, 32.929695, 42.023964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007332, 33.316040, 42.104019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467388, 0.254996, -0.846478,
		-0.868616, -0.045689, -0.493375,
		-0.164483, 0.965862, 0.200139,
		31.957987, 33.605797, 42.164062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836977, 33.243649, 41.343857>,  <32.073124, 32.929695, 42.023964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836977, 33.243649, 41.343857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931246, 33.551029, 41.581829>,  <31.987806, 33.735458, 41.724613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931246, 33.551029, 41.581829>,  <31.836977, 33.243649, 41.343857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931246, 33.551029, 41.581829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642770, 0.335896, -0.688492,
		-0.728908, 0.544658, -0.414778,
		0.235670, 0.768454, 0.594927,
		32.001945, 33.781567, 41.760307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709991, 33.927605, 40.950920>,  <31.836977, 33.243649, 41.343857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709991, 33.927605, 40.950920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973244, 33.991760, 41.245167>,  <32.131195, 34.030254, 41.421715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973244, 33.991760, 41.245167>,  <31.709991, 33.927605, 40.950920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973244, 33.991760, 41.245167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600118, 0.478274, -0.641180,
		-0.454666, 0.863440, 0.218516,
		0.658132, 0.160387, 0.735621,
		32.170685, 34.039875, 41.465855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868515, 34.581352, 40.813667>,  <31.709991, 33.927605, 40.950920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868515, 34.581352, 40.813667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170208, 34.424385, 41.024242>,  <32.351223, 34.330204, 41.150589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.170208, 34.424385, 41.024242>,  <31.868515, 34.581352, 40.813667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170208, 34.424385, 41.024242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654982, 0.393313, -0.645215,
		0.046141, 0.831451, 0.553679,
		0.754234, -0.392421, 0.526437,
		32.396477, 34.306660, 41.182175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399155, 35.135361, 40.883408>,  <31.868515, 34.581352, 40.813667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399155, 35.135361, 40.883408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.574715, 34.787926, 40.975426>,  <32.680050, 34.579464, 41.030636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.574715, 34.787926, 40.975426>,  <32.399155, 35.135361, 40.883408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574715, 34.787926, 40.975426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806180, 0.267604, -0.527696,
		0.396789, 0.417064, 0.817689,
		0.438900, -0.868588, 0.230046,
		32.706383, 34.527348, 41.044441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117188, 35.342285, 40.951855>,  <32.399155, 35.135361, 40.883408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117188, 35.342285, 40.951855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097317, 34.943607, 40.926140>,  <33.085396, 34.704399, 40.910709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097317, 34.943607, 40.926140>,  <33.117188, 35.342285, 40.951855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097317, 34.943607, 40.926140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809241, -0.002437, -0.587472,
		0.585373, -0.081206, 0.806687,
		-0.049672, -0.996694, -0.064289,
		33.082417, 34.644600, 40.906853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794666, 35.049805, 41.137226>,  <33.117188, 35.342285, 40.951855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794666, 35.049805, 41.137226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636490, 34.745819, 40.930897>,  <33.541584, 34.563427, 40.807098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.636490, 34.745819, 40.930897>,  <33.794666, 35.049805, 41.137226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636490, 34.745819, 40.930897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852883, -0.095385, -0.513315,
		0.340901, -0.642923, 0.685883,
		-0.395445, -0.759968, -0.515821,
		33.517857, 34.517830, 40.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349121, 34.666035, 41.123386>,  <33.794666, 35.049805, 41.137226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349121, 34.666035, 41.123386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107246, 34.521877, 40.839283>,  <33.962124, 34.435383, 40.668819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107246, 34.521877, 40.839283>,  <34.349121, 34.666035, 41.123386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107246, 34.521877, 40.839283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752448, 0.033858, -0.657781,
		0.261110, -0.932184, 0.250707,
		-0.604685, -0.360397, -0.710260,
		33.925842, 34.413757, 40.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732376, 34.069656, 40.730400>,  <34.349121, 34.666035, 41.123386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732376, 34.069656, 40.730400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454899, 34.189854, 40.468559>,  <34.288414, 34.261971, 40.311455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.454899, 34.189854, 40.468559>,  <34.732376, 34.069656, 40.730400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454899, 34.189854, 40.468559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663255, -0.087906, -0.743213,
		-0.280872, -0.949725, -0.138323,
		-0.693689, 0.300491, -0.654600,
		34.246792, 34.280003, 40.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685036, 33.587936, 40.166134>,  <34.732376, 34.069656, 40.730400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685036, 33.587936, 40.166134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536114, 33.909599, 39.980785>,  <34.446758, 34.102596, 39.869576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536114, 33.909599, 39.980785>,  <34.685036, 33.587936, 40.166134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536114, 33.909599, 39.980785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629567, -0.148015, -0.762717,
		-0.681932, -0.575690, -0.451166,
		-0.372309, 0.804160, -0.463371,
		34.424419, 34.150848, 39.841774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490498, 33.374012, 39.442722>,  <34.685036, 33.587936, 40.166134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490498, 33.374012, 39.442722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568943, 33.764851, 39.475780>,  <34.616013, 33.999352, 39.495613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568943, 33.764851, 39.475780>,  <34.490498, 33.374012, 39.442722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568943, 33.764851, 39.475780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607473, -0.054905, -0.792441,
		-0.769750, 0.205613, -0.604324,
		0.196116, 0.977092, 0.082641,
		34.627777, 34.057980, 39.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691261, 33.517288, 38.893787>,  <34.490498, 33.374012, 39.442722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691261, 33.517288, 38.893787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816109, 33.856403, 39.065296>,  <34.891018, 34.059872, 39.168201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816109, 33.856403, 39.065296>,  <34.691261, 33.517288, 38.893787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816109, 33.856403, 39.065296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794627, 0.014413, -0.606927,
		-0.520723, 0.530147, -0.669173,
		0.312116, 0.847783, 0.428774,
		34.909744, 34.110737, 39.193928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856133, 33.890511, 38.323959>,  <34.691261, 33.517288, 38.893787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856133, 33.890511, 38.323959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030495, 34.075272, 38.632927>,  <35.135113, 34.186131, 38.818306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.030495, 34.075272, 38.632927>,  <34.856133, 33.890511, 38.323959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030495, 34.075272, 38.632927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811526, 0.169335, -0.559241,
		-0.389114, 0.870614, -0.301034,
		0.435908, 0.461906, 0.772417,
		35.161266, 34.213844, 38.864651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030334, 34.614021, 38.123844>,  <34.856133, 33.890511, 38.323959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030334, 34.614021, 38.123844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281132, 34.491203, 38.410229>,  <35.431610, 34.417515, 38.582062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281132, 34.491203, 38.410229>,  <35.030334, 34.614021, 38.123844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281132, 34.491203, 38.410229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752033, -0.001277, -0.659125,
		0.203292, 0.951696, 0.230104,
		0.626992, -0.307040, 0.715966,
		35.469231, 34.399090, 38.625019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583267, 34.909103, 38.010868>,  <35.030334, 34.614021, 38.123844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583267, 34.909103, 38.010868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740788, 34.635059, 38.255993>,  <35.835300, 34.470631, 38.403069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740788, 34.635059, 38.255993>,  <35.583267, 34.909103, 38.010868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740788, 34.635059, 38.255993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760537, -0.131574, -0.635824,
		0.516242, 0.716455, 0.469240,
		0.393799, -0.685114, 0.612815,
		35.858929, 34.429523, 38.439838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252560, 35.192646, 38.268528>,  <35.583267, 34.909103, 38.010868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252560, 35.192646, 38.268528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263321, 34.796017, 38.319233>,  <36.269779, 34.558041, 38.349655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263321, 34.796017, 38.319233>,  <36.252560, 35.192646, 38.268528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263321, 34.796017, 38.319233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722658, -0.068321, -0.687821,
		0.690682, 0.110108, 0.714727,
		0.026904, -0.991569, 0.126759,
		36.271393, 34.498547, 38.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872887, 35.062027, 38.220921>,  <36.252560, 35.192646, 38.268528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872887, 35.062027, 38.220921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757488, 34.681183, 38.180412>,  <36.688251, 34.452675, 38.156109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757488, 34.681183, 38.180412>,  <36.872887, 35.062027, 38.220921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757488, 34.681183, 38.180412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789056, -0.176501, -0.588421,
		0.542367, -0.249664, 0.802188,
		-0.288494, -0.952111, -0.101270,
		36.670940, 34.395550, 38.150032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482632, 34.608891, 38.330967>,  <36.872887, 35.062027, 38.220921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482632, 34.608891, 38.330967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213135, 34.422112, 38.101868>,  <37.051437, 34.310043, 37.964409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213135, 34.422112, 38.101868>,  <37.482632, 34.608891, 38.330967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213135, 34.422112, 38.101868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685528, -0.105557, -0.720353,
		0.275908, -0.877964, 0.391222,
		-0.673740, -0.466945, -0.572745,
		37.011013, 34.282028, 37.930046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880352, 33.968391, 38.099751>,  <37.482632, 34.608891, 38.330967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880352, 33.968391, 38.099751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564133, 34.027149, 37.861942>,  <37.374401, 34.062405, 37.719257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564133, 34.027149, 37.861942>,  <37.880352, 33.968391, 38.099751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564133, 34.027149, 37.861942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580831, -0.127796, -0.803930,
		-0.194073, -0.980861, 0.015706,
		-0.790551, 0.146898, -0.594517,
		37.326965, 34.071217, 37.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532757, 34.280647, 37.849480>,  <37.880352, 33.968391, 38.099751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532757, 34.280647, 37.849480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880432, 34.260441, 38.046234>,  <39.089039, 34.248318, 38.164288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880432, 34.260441, 38.046234>,  <38.532757, 34.280647, 37.849480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880432, 34.260441, 38.046234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494453, -0.079271, 0.865582,
		-0.004735, -0.995572, -0.093881,
		0.869191, -0.050518, 0.491889,
		39.141190, 34.245285, 38.193802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541180, 33.673569, 38.349030>,  <38.532757, 34.280647, 37.849480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541180, 33.673569, 38.349030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816402, 33.934639, 38.475895>,  <38.981537, 34.091282, 38.552013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816402, 33.934639, 38.475895>,  <38.541180, 33.673569, 38.349030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816402, 33.934639, 38.475895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346104, -0.088986, 0.933967,
		0.637803, -0.752391, 0.164667,
		0.688054, 0.652679, 0.317161,
		39.022820, 34.130444, 38.571045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715073, 33.448040, 39.061035>,  <38.541180, 33.673569, 38.349030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715073, 33.448040, 39.061035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854618, 33.822689, 39.048153>,  <38.938347, 34.047478, 39.040424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854618, 33.822689, 39.048153>,  <38.715073, 33.448040, 39.061035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854618, 33.822689, 39.048153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382207, 0.173573, 0.907629,
		0.855694, -0.304328, 0.418536,
		0.348863, 0.936620, -0.032209,
		38.959278, 34.103676, 39.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157146, 33.520386, 39.618034>,  <38.715073, 33.448040, 39.061035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157146, 33.520386, 39.618034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057457, 33.893028, 39.512199>,  <38.997643, 34.116611, 39.448700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057457, 33.893028, 39.512199>,  <39.157146, 33.520386, 39.618034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057457, 33.893028, 39.512199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388787, 0.153978, 0.908370,
		0.886979, 0.329254, 0.323820,
		-0.249223, 0.931602, -0.264585,
		38.982689, 34.172508, 39.432823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200031, 33.874962, 40.201035>,  <39.157146, 33.520386, 39.618034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200031, 33.874962, 40.201035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971420, 34.127705, 39.991611>,  <38.834251, 34.279350, 39.865959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971420, 34.127705, 39.991611>,  <39.200031, 33.874962, 40.201035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971420, 34.127705, 39.991611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444488, 0.297939, 0.844786,
		0.689770, 0.715536, 0.110571,
		-0.571531, 0.631856, -0.523556,
		38.799961, 34.317261, 39.834545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092903, 34.301327, 40.646545>,  <39.200031, 33.874962, 40.201035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092903, 34.301327, 40.646545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795574, 34.365940, 40.386890>,  <38.617176, 34.404709, 40.231098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795574, 34.365940, 40.386890>,  <39.092903, 34.301327, 40.646545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795574, 34.365940, 40.386890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632887, 0.144443, 0.760651,
		0.216636, 0.976239, -0.005133,
		-0.743318, 0.161536, -0.649141,
		38.572578, 34.414402, 40.192146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694626, 34.961315, 40.918392>,  <39.092903, 34.301327, 40.646545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694626, 34.961315, 40.918392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458954, 34.758114, 40.667057>,  <38.317551, 34.636192, 40.516254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458954, 34.758114, 40.667057>,  <38.694626, 34.961315, 40.918392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458954, 34.758114, 40.667057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768290, 0.111410, 0.630332,
		-0.250206, 0.854121, -0.455932,
		-0.589175, -0.508001, -0.628337,
		38.282200, 34.605713, 40.478558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139744, 35.392742, 40.762394>,  <38.694626, 34.961315, 40.918392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139744, 35.392742, 40.762394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039753, 35.009056, 40.709587>,  <37.979759, 34.778847, 40.677902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039753, 35.009056, 40.709587>,  <38.139744, 35.392742, 40.762394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039753, 35.009056, 40.709587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722732, 0.094115, 0.684690,
		-0.644338, 0.266565, -0.716779,
		-0.249974, -0.959211, -0.132013,
		37.964760, 34.721294, 40.669983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396198, 35.435658, 40.703152>,  <38.139744, 35.392742, 40.762394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396198, 35.435658, 40.703152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475834, 35.050797, 40.777584>,  <37.523617, 34.819881, 40.822243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475834, 35.050797, 40.777584>,  <37.396198, 35.435658, 40.703152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475834, 35.050797, 40.777584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797027, -0.048497, 0.601993,
		-0.570185, -0.268160, -0.776517,
		0.199089, -0.962153, 0.186079,
		37.535561, 34.762150, 40.833408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748466, 35.139465, 40.721813>,  <37.396198, 35.435658, 40.703152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748466, 35.139465, 40.721813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979218, 34.853458, 40.879780>,  <37.117668, 34.681854, 40.974560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979218, 34.853458, 40.879780>,  <36.748466, 35.139465, 40.721813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979218, 34.853458, 40.879780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744563, -0.261480, 0.614211,
		-0.335909, -0.648366, -0.683218,
		0.576881, -0.715018, 0.394916,
		37.152283, 34.638954, 40.998257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306190, 34.555012, 40.923714>,  <36.748466, 35.139465, 40.721813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306190, 34.555012, 40.923714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638699, 34.494118, 41.137562>,  <36.838203, 34.457581, 41.265869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638699, 34.494118, 41.137562>,  <36.306190, 34.555012, 40.923714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638699, 34.494118, 41.137562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546312, -0.401334, 0.735170,
		0.102641, -0.903192, -0.416784,
		0.831269, -0.152236, 0.534618,
		36.888081, 34.448448, 41.297947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292336, 33.893307, 41.300915>,  <36.306190, 34.555012, 40.923714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292336, 33.893307, 41.300915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556427, 34.117611, 41.500774>,  <36.714882, 34.252193, 41.620689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556427, 34.117611, 41.500774>,  <36.292336, 33.893307, 41.300915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556427, 34.117611, 41.500774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472616, -0.206839, 0.856651,
		0.583724, -0.801725, 0.128465,
		0.660228, 0.560763, 0.499645,
		36.754494, 34.285839, 41.650669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452858, 33.598171, 41.962677>,  <36.292336, 33.893307, 41.300915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452858, 33.598171, 41.962677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504238, 33.989189, 42.029507>,  <36.535069, 34.223801, 42.069603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504238, 33.989189, 42.029507>,  <36.452858, 33.598171, 41.962677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504238, 33.989189, 42.029507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432075, -0.096474, 0.896663,
		0.892643, -0.187369, 0.409978,
		0.128454, 0.977541, 0.167074,
		36.542774, 34.282452, 42.079628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644886, 33.759087, 42.599533>,  <36.452858, 33.598171, 41.962677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644886, 33.759087, 42.599533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438961, 34.083031, 42.487041>,  <36.315407, 34.277397, 42.419548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438961, 34.083031, 42.487041>,  <36.644886, 33.759087, 42.599533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438961, 34.083031, 42.487041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621409, -0.126524, 0.773203,
		0.590606, 0.572814, 0.568392,
		-0.514817, 0.809862, -0.281226,
		36.284515, 34.325989, 42.402676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548893, 34.144444, 43.169395>,  <36.644886, 33.759087, 42.599533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548893, 34.144444, 43.169395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261909, 34.278076, 42.924889>,  <36.089718, 34.358257, 42.778187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261909, 34.278076, 42.924889>,  <36.548893, 34.144444, 43.169395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261909, 34.278076, 42.924889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677889, -0.132817, 0.723068,
		0.160380, 0.933138, 0.321763,
		-0.717458, 0.334085, -0.611263,
		36.046673, 34.378300, 42.741508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171566, 34.586937, 43.622475>,  <36.548893, 34.144444, 43.169395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171566, 34.586937, 43.622475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924179, 34.483700, 43.325588>,  <35.775745, 34.421757, 43.147457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924179, 34.483700, 43.325588>,  <36.171566, 34.586937, 43.622475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924179, 34.483700, 43.325588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758476, -0.050871, 0.649712,
		-0.205445, 0.964779, -0.164297,
		-0.618471, -0.258096, -0.742213,
		35.738636, 34.406273, 43.102924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535336, 34.920296, 43.835827>,  <36.171566, 34.586937, 43.622475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535336, 34.920296, 43.835827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406658, 34.672878, 43.549076>,  <35.329453, 34.524429, 43.377026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406658, 34.672878, 43.549076>,  <35.535336, 34.920296, 43.835827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406658, 34.672878, 43.549076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874703, -0.095726, 0.475111,
		-0.362501, 0.779896, -0.510249,
		-0.321693, -0.618545, -0.716879,
		35.310150, 34.487316, 43.334011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842827, 35.186359, 43.628387>,  <35.535336, 34.920296, 43.835827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842827, 35.186359, 43.628387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886990, 34.799187, 43.538124>,  <34.913486, 34.566883, 43.483967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886990, 34.799187, 43.538124>,  <34.842827, 35.186359, 43.628387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886990, 34.799187, 43.538124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850198, -0.209568, 0.482954,
		-0.514757, 0.138531, -0.846070,
		0.110405, -0.967931, -0.225656,
		34.920113, 34.508808, 43.470428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.147358, 34.869247, 43.456951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325474, 34.517826, 43.526066>,  <34.432343, 34.306973, 43.567535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325474, 34.517826, 43.526066>,  <34.147358, 34.869247, 43.456951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325474, 34.517826, 43.526066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810769, -0.313736, 0.494190,
		-0.379965, -0.360146, -0.852010,
		0.445287, -0.878558, 0.172787,
		34.459061, 34.254257, 43.577904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717854, 34.229313, 43.240276>,  <34.147358, 34.869247, 43.456951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717854, 34.229313, 43.240276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972961, 34.088272, 43.514187>,  <34.126026, 34.003647, 43.678535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.972961, 34.088272, 43.514187>,  <33.717854, 34.229313, 43.240276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972961, 34.088272, 43.514187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756188, -0.455632, 0.469658,
		0.146403, -0.817355, -0.557223,
		0.637766, -0.352606, 0.684780,
		34.164291, 33.982491, 43.719620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700916, 33.515636, 43.275181>,  <33.717854, 34.229313, 43.240276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700916, 33.515636, 43.275181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820160, 33.631920, 43.638855>,  <33.891705, 33.701691, 43.857059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820160, 33.631920, 43.638855>,  <33.700916, 33.515636, 43.275181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820160, 33.631920, 43.638855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636487, -0.649291, 0.416300,
		0.711348, -0.702788, -0.008528,
		0.298108, 0.290706, 0.909187,
		33.909592, 33.719131, 43.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460800, 33.111710, 43.744228>,  <33.700916, 33.515636, 43.275181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460800, 33.111710, 43.744228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563118, 33.388958, 44.013794>,  <33.624508, 33.555305, 44.175533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563118, 33.388958, 44.013794>,  <33.460800, 33.111710, 43.744228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563118, 33.388958, 44.013794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554481, -0.465850, 0.689590,
		0.791910, -0.550061, 0.265162,
		0.255791, 0.693121, 0.673910,
		33.639854, 33.596893, 44.215965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675430, 32.734978, 44.509434>,  <33.460800, 33.111710, 43.744228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675430, 32.734978, 44.509434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610367, 33.123089, 44.581100>,  <33.571331, 33.355957, 44.624100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610367, 33.123089, 44.581100>,  <33.675430, 32.734978, 44.509434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610367, 33.123089, 44.581100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515303, -0.238392, 0.823184,
		0.841431, 0.041567, 0.538763,
		-0.162654, 0.970279, 0.179171,
		33.561569, 33.414173, 44.634853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799950, 32.836304, 45.296635>,  <33.675430, 32.734978, 44.509434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799950, 32.836304, 45.296635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565861, 33.138081, 45.177750>,  <33.425407, 33.319145, 45.106419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565861, 33.138081, 45.177750>,  <33.799950, 32.836304, 45.296635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565861, 33.138081, 45.177750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551581, -0.101705, 0.827898,
		0.594372, 0.648439, 0.475656,
		-0.585218, 0.754442, -0.297216,
		33.390297, 33.364414, 45.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745792, 33.247459, 45.851204>,  <33.799950, 32.836304, 45.296635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745792, 33.247459, 45.851204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430035, 33.345058, 45.625881>,  <33.240582, 33.403618, 45.490688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430035, 33.345058, 45.625881>,  <33.745792, 33.247459, 45.851204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430035, 33.345058, 45.625881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596588, -0.088633, 0.797638,
		0.144697, 0.965716, 0.215534,
		-0.789395, 0.244001, -0.563310,
		33.193214, 33.418259, 45.456886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358940, 33.712250, 46.197269>,  <33.745792, 33.247459, 45.851204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358940, 33.712250, 46.197269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088318, 33.561306, 45.944328>,  <32.925945, 33.470737, 45.792564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088318, 33.561306, 45.944328>,  <33.358940, 33.712250, 46.197269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088318, 33.561306, 45.944328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553456, -0.305868, 0.774682,
		-0.485752, 0.874095, -0.001916,
		-0.676559, -0.377363, -0.632348,
		32.885349, 33.448097, 45.754623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732967, 34.060215, 46.362492>,  <33.358940, 33.712250, 46.197269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732967, 34.060215, 46.362492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629398, 33.714283, 46.190437>,  <32.567257, 33.506721, 46.087204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629398, 33.714283, 46.190437>,  <32.732967, 34.060215, 46.362492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629398, 33.714283, 46.190437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581426, -0.216054, 0.784388,
		-0.771299, 0.453191, -0.446896,
		-0.258924, -0.864834, -0.430140,
		32.551720, 33.454834, 46.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046055, 34.081226, 46.497570>,  <32.732967, 34.060215, 46.362492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046055, 34.081226, 46.497570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111149, 33.704285, 46.380623>,  <32.150208, 33.478119, 46.310455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111149, 33.704285, 46.380623>,  <32.046055, 34.081226, 46.497570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111149, 33.704285, 46.380623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596255, -0.330017, 0.731826,
		-0.786127, 0.055229, -0.615592,
		0.162738, -0.942358, -0.292366,
		32.159969, 33.421577, 46.292912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375448, 33.774353, 46.727428>,  <32.046055, 34.081226, 46.497570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375448, 33.774353, 46.727428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593903, 33.448242, 46.650417>,  <31.724976, 33.252575, 46.604210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593903, 33.448242, 46.650417>,  <31.375448, 33.774353, 46.727428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593903, 33.448242, 46.650417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516439, -0.508635, 0.688898,
		-0.659566, -0.276803, -0.698823,
		0.546135, -0.815273, -0.192526,
		31.757744, 33.203659, 46.592659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911957, 33.086933, 46.682011>,  <31.375448, 33.774353, 46.727428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911957, 33.086933, 46.682011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278742, 32.975620, 46.796371>,  <31.498812, 32.908833, 46.864990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278742, 32.975620, 46.796371>,  <30.911957, 33.086933, 46.682011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278742, 32.975620, 46.796371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398379, -0.599367, 0.694301,
		-0.021850, -0.750545, -0.660458,
		0.916961, -0.278283, 0.285905,
		31.553829, 32.892136, 46.882141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948864, 32.380798, 46.788818>,  <30.911957, 33.086933, 46.682011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948864, 32.380798, 46.788818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263536, 32.515018, 46.996101>,  <31.452339, 32.595551, 47.120472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263536, 32.515018, 46.996101>,  <30.948864, 32.380798, 46.788818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263536, 32.515018, 46.996101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304718, -0.518977, 0.798630,
		0.536919, -0.786174, -0.306020,
		0.786679, 0.335550, 0.518210,
		31.499540, 32.615685, 47.151566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302223, 31.805609, 47.086426>,  <30.948864, 32.380798, 46.788818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302223, 31.805609, 47.086426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418461, 32.091640, 47.340736>,  <31.488203, 32.263260, 47.493324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418461, 32.091640, 47.340736>,  <31.302223, 31.805609, 47.086426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418461, 32.091640, 47.340736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113368, -0.634041, 0.764944,
		0.950106, -0.294367, -0.103182,
		0.290596, 0.715081, 0.635778,
		31.505640, 32.306164, 47.531471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842876, 31.399597, 47.515049>,  <31.302223, 31.805609, 47.086426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842876, 31.399597, 47.515049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747257, 31.756889, 47.667362>,  <31.689886, 31.971264, 47.758751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747257, 31.756889, 47.667362>,  <31.842876, 31.399597, 47.515049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747257, 31.756889, 47.667362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094535, -0.368880, 0.924657,
		0.966395, 0.257035, 0.003739,
		-0.239049, 0.893230, 0.380783,
		31.675543, 32.024857, 47.781597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304077, 31.515558, 47.949883>,  <31.842876, 31.399597, 47.515049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304077, 31.515558, 47.949883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001328, 31.745026, 48.075134>,  <31.819677, 31.882706, 48.150284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001328, 31.745026, 48.075134>,  <32.304077, 31.515558, 47.949883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001328, 31.745026, 48.075134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098830, -0.373135, 0.922498,
		0.646045, 0.729161, 0.225721,
		-0.756875, 0.573667, 0.313125,
		31.774265, 31.917126, 48.169071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607059, 31.761417, 48.576988>,  <32.304077, 31.515558, 47.949883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607059, 31.761417, 48.576988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210335, 31.799303, 48.611248>,  <31.972300, 31.822035, 48.631805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210335, 31.799303, 48.611248>,  <32.607059, 31.761417, 48.576988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210335, 31.799303, 48.611248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034301, -0.448482, 0.893134,
		0.123003, 0.888760, 0.441561,
		-0.991813, 0.094712, 0.085650,
		31.912790, 31.827717, 48.636944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448193, 31.944389, 49.232155>,  <32.607059, 31.761417, 48.576988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448193, 31.944389, 49.232155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091255, 31.801962, 49.121208>,  <31.877092, 31.716505, 49.054638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091255, 31.801962, 49.121208>,  <32.448193, 31.944389, 49.232155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091255, 31.801962, 49.121208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122582, -0.400246, 0.908172,
		-0.434388, 0.844404, 0.313510,
		-0.892346, -0.356068, -0.277371,
		31.823551, 31.695141, 49.037998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063053, 31.976553, 49.833519>,  <32.448193, 31.944389, 49.232155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063053, 31.976553, 49.833519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893061, 31.708336, 49.590286>,  <31.791065, 31.547405, 49.444347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893061, 31.708336, 49.590286>,  <32.063053, 31.976553, 49.833519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893061, 31.708336, 49.590286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265193, -0.550057, 0.791903,
		-0.865483, 0.497805, 0.055942,
		-0.424984, -0.670543, -0.608079,
		31.765566, 31.507174, 49.407864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380449, 31.869316, 50.178337>,  <32.063053, 31.976553, 49.833519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380449, 31.869316, 50.178337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465229, 31.558176, 49.941685>,  <31.516098, 31.371492, 49.799694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465229, 31.558176, 49.941685>,  <31.380449, 31.869316, 50.178337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465229, 31.558176, 49.941685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174578, -0.625785, 0.760208,
		-0.961561, -0.057840, -0.268430,
		0.211950, -0.777848, -0.591633,
		31.528814, 31.324821, 49.764194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855820, 31.458189, 50.329475>,  <31.380449, 31.869316, 50.178337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855820, 31.458189, 50.329475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.117599, 31.209150, 50.157864>,  <31.274668, 31.059727, 50.054897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.117599, 31.209150, 50.157864>,  <30.855820, 31.458189, 50.329475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117599, 31.209150, 50.157864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343287, -0.750237, 0.565065,
		-0.673685, -0.222525, -0.704721,
		0.654449, -0.622597, -0.429033,
		31.313934, 31.022371, 50.029152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496489, 30.854414, 50.121445>,  <30.855820, 31.458189, 50.329475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496489, 30.854414, 50.121445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880398, 30.768290, 50.193527>,  <31.110744, 30.716614, 50.236774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880398, 30.768290, 50.193527>,  <30.496489, 30.854414, 50.121445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880398, 30.768290, 50.193527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270747, -0.539748, 0.797100,
		-0.074361, -0.813826, -0.576331,
		0.959774, -0.215313, 0.180205,
		31.168329, 30.703695, 50.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478727, 30.218901, 50.181450>,  <30.496489, 30.854414, 50.121445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478727, 30.218901, 50.181450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806776, 30.324867, 50.384319>,  <31.003605, 30.388447, 50.506039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806776, 30.324867, 50.384319>,  <30.478727, 30.218901, 50.181450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806776, 30.324867, 50.384319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262334, -0.613635, 0.744736,
		0.508510, -0.743822, -0.433759,
		0.820121, 0.264916, 0.507170,
		31.052813, 30.404343, 50.536469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319279, 29.518250, 50.002567>,  <30.478727, 30.218901, 50.181450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319279, 29.518250, 50.002567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094130, 29.206121, 49.893555>,  <29.959040, 29.018845, 49.828148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094130, 29.206121, 49.893555>,  <30.319279, 29.518250, 50.002567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094130, 29.206121, 49.893555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248910, 0.154389, -0.956142,
		0.788175, -0.606020, 0.107329,
		-0.562871, -0.780322, -0.272530,
		29.925268, 28.972025, 49.811794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750883, 29.096889, 49.548397>,  <30.319279, 29.518250, 50.002567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750883, 29.096889, 49.548397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.365490, 29.027514, 49.466797>,  <30.134254, 28.985888, 49.417839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.365490, 29.027514, 49.466797>,  <30.750883, 29.096889, 49.548397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365490, 29.027514, 49.466797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179271, 0.148075, -0.972592,
		0.198894, -0.973649, -0.111575,
		-0.963485, -0.173441, -0.203998,
		30.076445, 28.975481, 49.405598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740377, 28.829670, 48.866257>,  <30.750883, 29.096889, 49.548397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740377, 28.829670, 48.866257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354094, 28.927505, 48.901089>,  <30.122324, 28.986208, 48.921989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.354094, 28.927505, 48.901089>,  <30.740377, 28.829670, 48.866257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354094, 28.927505, 48.901089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068346, 0.084099, -0.994111,
		-0.250475, -0.965972, -0.064499,
		-0.965708, 0.244592, 0.087085,
		30.064381, 29.000883, 48.927216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378914, 28.505869, 48.270798>,  <30.740377, 28.829670, 48.866257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378914, 28.505869, 48.270798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131979, 28.790411, 48.405182>,  <29.983818, 28.961136, 48.485813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131979, 28.790411, 48.405182>,  <30.378914, 28.505869, 48.270798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131979, 28.790411, 48.405182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178664, 0.289117, -0.940473,
		-0.766143, -0.640612, -0.051389,
		-0.617337, 0.711356, 0.335960,
		29.946777, 29.003819, 48.505970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756067, 28.489817, 47.753326>,  <30.378914, 28.505869, 48.270798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756067, 28.489817, 47.753326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.786261, 28.837749, 47.948341>,  <29.804377, 29.046509, 48.065350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.786261, 28.837749, 47.948341>,  <29.756067, 28.489817, 47.753326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786261, 28.837749, 47.948341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114265, 0.493261, -0.862344,
		-0.990578, 0.009385, 0.136625,
		0.075485, 0.869831, 0.487542,
		29.808907, 29.098700, 48.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323881, 28.911673, 47.418102>,  <29.756067, 28.489817, 47.753326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323881, 28.911673, 47.418102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533007, 29.187996, 47.617882>,  <29.658482, 29.353790, 47.737751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533007, 29.187996, 47.617882>,  <29.323881, 28.911673, 47.418102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533007, 29.187996, 47.617882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181124, 0.662546, -0.726792,
		-0.832983, 0.289514, 0.471510,
		0.522814, 0.690807, 0.499451,
		29.689850, 29.395239, 47.767715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955755, 29.545099, 47.492832>,  <29.323881, 28.911673, 47.418102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955755, 29.545099, 47.492832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343237, 29.634447, 47.536129>,  <29.575726, 29.688055, 47.562107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343237, 29.634447, 47.536129>,  <28.955755, 29.545099, 47.492832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343237, 29.634447, 47.536129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046375, 0.591288, -0.805126,
		-0.243844, 0.774910, 0.583142,
		0.968705, 0.223368, 0.108246,
		29.633848, 29.701458, 47.568604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008429, 30.292002, 47.535149>,  <28.955755, 29.545099, 47.492832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008429, 30.292002, 47.535149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.371237, 30.162979, 47.426876>,  <29.588923, 30.085566, 47.361912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.371237, 30.162979, 47.426876>,  <29.008429, 30.292002, 47.535149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371237, 30.162979, 47.426876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058912, 0.733711, -0.676903,
		0.416944, 0.598018, 0.684494,
		0.907021, -0.322555, -0.270686,
		29.643343, 30.066212, 47.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269154, 30.858999, 47.438770>,  <29.008429, 30.292002, 47.535149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269154, 30.858999, 47.438770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512676, 30.611956, 47.239605>,  <29.658789, 30.463730, 47.120106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512676, 30.611956, 47.239605>,  <29.269154, 30.858999, 47.438770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512676, 30.611956, 47.239605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037678, 0.649429, -0.759488,
		0.792424, 0.443620, 0.418646,
		0.608805, -0.617611, -0.497909,
		29.695318, 30.426672, 47.090233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901632, 31.205198, 47.259048>,  <29.269154, 30.858999, 47.438770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901632, 31.205198, 47.259048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917845, 30.913935, 46.985367>,  <29.927572, 30.739176, 46.821156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917845, 30.913935, 46.985367>,  <29.901632, 31.205198, 47.259048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917845, 30.913935, 46.985367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335115, 0.655015, -0.677239,
		0.941305, -0.201839, 0.270566,
		0.040532, -0.728159, -0.684209,
		29.930004, 30.695486, 46.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556469, 31.212914, 47.020813>,  <29.901632, 31.205198, 47.259048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556469, 31.212914, 47.020813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330204, 31.041494, 46.738998>,  <30.194445, 30.938643, 46.569908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330204, 31.041494, 46.738998>,  <30.556469, 31.212914, 47.020813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330204, 31.041494, 46.738998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333115, 0.662803, -0.670617,
		0.754361, -0.614035, -0.232168,
		-0.565663, -0.428548, -0.704536,
		30.160505, 30.912930, 46.527637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946430, 31.133347, 46.376835>,  <30.556469, 31.212914, 47.020813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946430, 31.133347, 46.376835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568966, 31.106651, 46.247192>,  <30.342487, 31.090633, 46.169407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.568966, 31.106651, 46.247192>,  <30.946430, 31.133347, 46.376835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568966, 31.106651, 46.247192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212299, 0.629206, -0.747682,
		0.253830, -0.774368, -0.579590,
		-0.943663, -0.066738, -0.324109,
		30.285868, 31.086630, 46.149960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986191, 30.849434, 45.730247>,  <30.946430, 31.133347, 46.376835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986191, 30.849434, 45.730247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.634684, 31.039616, 45.713703>,  <30.423779, 31.153725, 45.703777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.634684, 31.039616, 45.713703>,  <30.986191, 30.849434, 45.730247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634684, 31.039616, 45.713703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382576, 0.649979, -0.656631,
		-0.285312, -0.592851, -0.753077,
		-0.878768, 0.475453, -0.041364,
		30.371054, 31.182251, 45.701294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955589, 31.022314, 45.057095>,  <30.986191, 30.849434, 45.730247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955589, 31.022314, 45.057095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677559, 31.246872, 45.236740>,  <30.510740, 31.381607, 45.344528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.677559, 31.246872, 45.236740>,  <30.955589, 31.022314, 45.057095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677559, 31.246872, 45.236740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239337, 0.769750, -0.591780,
		-0.677928, -0.303842, -0.669398,
		-0.695076, 0.561396, 0.449114,
		30.469036, 31.415291, 45.371475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444017, 31.225061, 44.567421>,  <30.955589, 31.022314, 45.057095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444017, 31.225061, 44.567421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.387720, 31.498779, 44.853619>,  <30.353941, 31.663010, 45.025337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.387720, 31.498779, 44.853619>,  <30.444017, 31.225061, 44.567421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387720, 31.498779, 44.853619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087561, 0.728461, -0.679469,
		-0.986166, -0.032982, -0.162444,
		-0.140745, 0.684293, 0.715496,
		30.345497, 31.704067, 45.068268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889744, 31.702986, 44.375908>,  <30.444017, 31.225061, 44.567421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889744, 31.702986, 44.375908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087408, 31.906727, 44.657722>,  <30.206007, 32.028973, 44.826809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087408, 31.906727, 44.657722>,  <29.889744, 31.702986, 44.375908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087408, 31.906727, 44.657722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128312, 0.758786, -0.638576,
		-0.859850, 0.405958, 0.309605,
		0.494160, 0.509354, 0.704532,
		30.235657, 32.059532, 44.869083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588247, 32.365238, 44.279686>,  <29.889744, 31.702986, 44.375908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588247, 32.365238, 44.279686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928236, 32.425030, 44.481758>,  <30.132229, 32.460903, 44.603001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928236, 32.425030, 44.481758>,  <29.588247, 32.365238, 44.279686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928236, 32.425030, 44.481758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257365, 0.718883, -0.645732,
		-0.459685, 0.678870, 0.572561,
		0.849972, 0.149476, 0.505177,
		30.183228, 32.469872, 44.633312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691177, 33.076061, 44.344913>,  <29.588247, 32.365238, 44.279686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691177, 33.076061, 44.344913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059589, 32.928112, 44.393738>,  <30.280636, 32.839340, 44.423031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059589, 32.928112, 44.393738>,  <29.691177, 33.076061, 44.344913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059589, 32.928112, 44.393738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335924, 0.595728, -0.729563,
		0.197135, 0.712951, 0.672933,
		0.921028, -0.369877, 0.122059,
		30.335897, 32.817150, 44.430355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011578, 33.693893, 44.205608>,  <29.691177, 33.076061, 44.344913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011578, 33.693893, 44.205608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288767, 33.405594, 44.198639>,  <30.455080, 33.232613, 44.194458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288767, 33.405594, 44.198639>,  <30.011578, 33.693893, 44.205608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288767, 33.405594, 44.198639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534427, 0.529751, -0.658599,
		0.483918, 0.447079, 0.752293,
		0.692973, -0.720753, -0.017425,
		30.496658, 33.189369, 44.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687998, 34.070770, 44.145695>,  <30.011578, 33.693893, 44.205608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687998, 34.070770, 44.145695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.761320, 33.699192, 44.017033>,  <30.805313, 33.476246, 43.939835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.761320, 33.699192, 44.017033>,  <30.687998, 34.070770, 44.145695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761320, 33.699192, 44.017033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450255, 0.370194, -0.812543,
		0.873882, 0.004117, 0.486121,
		0.183304, -0.928945, -0.321653,
		30.816311, 33.420509, 43.920536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280588, 34.145569, 44.049255>,  <30.687998, 34.070770, 44.145695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280588, 34.145569, 44.049255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190611, 33.833740, 43.815449>,  <31.136623, 33.646641, 43.675163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190611, 33.833740, 43.815449>,  <31.280588, 34.145569, 44.049255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190611, 33.833740, 43.815449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560546, 0.387146, -0.732056,
		0.796987, -0.492322, 0.349901,
		-0.224944, -0.779575, -0.584520,
		31.123127, 33.599869, 43.640091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.404087, 35.872448, 27.145718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386272, 35.666702, 26.803152>,  <44.375584, 35.543255, 26.597612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386272, 35.666702, 26.803152>,  <44.404087, 35.872448, 27.145718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386272, 35.666702, 26.803152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250570, -0.824108, 0.507997,
		-0.967073, 0.237217, -0.092179,
		-0.044541, -0.514367, -0.856413,
		44.372910, 35.512390, 26.546228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702629, 35.531483, 27.079512>,  <44.404087, 35.872448, 27.145718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702629, 35.531483, 27.079512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.968826, 35.308872, 26.880552>,  <44.128544, 35.175308, 26.761177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.968826, 35.308872, 26.880552>,  <43.702629, 35.531483, 27.079512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968826, 35.308872, 26.880552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224098, -0.784619, 0.578059,
		-0.711969, -0.273229, -0.646874,
		0.665492, -0.556524, -0.497395,
		44.168472, 35.141914, 26.731333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360355, 34.923325, 26.942255>,  <43.702629, 35.531483, 27.079512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360355, 34.923325, 26.942255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747337, 34.831059, 26.900646>,  <43.979527, 34.775700, 26.875681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747337, 34.831059, 26.900646>,  <43.360355, 34.923325, 26.942255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747337, 34.831059, 26.900646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073961, -0.650933, 0.755524,
		-0.241981, -0.723244, -0.646810,
		0.967458, -0.230661, -0.104022,
		44.037575, 34.761860, 26.869440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386837, 34.267593, 26.955633>,  <43.360355, 34.923325, 26.942255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386837, 34.267593, 26.955633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762989, 34.361382, 27.054188>,  <43.988682, 34.417656, 27.113321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762989, 34.361382, 27.054188>,  <43.386837, 34.267593, 26.955633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762989, 34.361382, 27.054188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039828, -0.643512, 0.764399,
		0.337785, -0.728639, -0.595808,
		0.940380, 0.234473, 0.246389,
		44.045105, 34.431725, 27.128105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636517, 33.634892, 27.187239>,  <43.386837, 34.267593, 26.955633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636517, 33.634892, 27.187239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874466, 33.920166, 27.335556>,  <44.017235, 34.091331, 27.424547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874466, 33.920166, 27.335556>,  <43.636517, 33.634892, 27.187239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874466, 33.920166, 27.335556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201773, -0.579006, 0.789962,
		0.778084, -0.395110, -0.488337,
		0.594872, 0.713190, 0.370793,
		44.052929, 34.134125, 27.446795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251621, 33.307693, 27.472805>,  <43.636517, 33.634892, 27.187239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251621, 33.307693, 27.472805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226562, 33.666386, 27.648056>,  <44.211525, 33.881599, 27.753206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226562, 33.666386, 27.648056>,  <44.251621, 33.307693, 27.472805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226562, 33.666386, 27.648056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180543, -0.421563, 0.888644,
		0.981570, 0.134775, -0.135487,
		-0.062651, 0.896727, 0.438126,
		44.207767, 33.935406, 27.779493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700264, 33.309582, 28.057707>,  <44.251621, 33.307693, 27.472805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700264, 33.309582, 28.057707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466427, 33.619862, 28.152824>,  <44.326122, 33.806030, 28.209894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466427, 33.619862, 28.152824>,  <44.700264, 33.309582, 28.057707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466427, 33.619862, 28.152824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017531, -0.280946, 0.959563,
		0.811136, 0.565125, 0.150641,
		-0.584595, 0.775696, 0.237793,
		44.291050, 33.852570, 28.224163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026932, 33.508270, 28.536125>,  <44.700264, 33.309582, 28.057707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026932, 33.508270, 28.536125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666573, 33.669689, 28.600039>,  <44.450356, 33.766541, 28.638388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666573, 33.669689, 28.600039>,  <45.026932, 33.508270, 28.536125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666573, 33.669689, 28.600039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025313, -0.318664, 0.947530,
		0.433290, 0.857673, 0.276869,
		-0.900899, 0.403546, 0.159784,
		44.396301, 33.790752, 28.647974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071384, 33.933796, 29.122822>,  <45.026932, 33.508270, 28.536125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071384, 33.933796, 29.122822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675491, 33.878540, 29.108189>,  <44.437954, 33.845387, 29.099409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675491, 33.878540, 29.108189>,  <45.071384, 33.933796, 29.122822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675491, 33.878540, 29.108189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029646, -0.051944, 0.998210,
		-0.139797, 0.989049, 0.047315,
		-0.989736, -0.138144, -0.036583,
		44.378571, 33.837097, 29.097214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807686, 34.392075, 29.603012>,  <45.071384, 33.933796, 29.122822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807686, 34.392075, 29.603012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527931, 34.112675, 29.542412>,  <44.360077, 33.945034, 29.506052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.527931, 34.112675, 29.542412>,  <44.807686, 34.392075, 29.603012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527931, 34.112675, 29.542412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204398, -0.007652, 0.978858,
		-0.684895, 0.715566, -0.137421,
		-0.699385, -0.698504, -0.151501,
		44.318115, 33.903122, 29.496962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287968, 34.567230, 30.102596>,  <44.807686, 34.392075, 29.603012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287968, 34.567230, 30.102596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.209866, 34.192638, 29.986053>,  <44.163006, 33.967884, 29.916128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.209866, 34.192638, 29.986053>,  <44.287968, 34.567230, 30.102596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209866, 34.192638, 29.986053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188902, -0.255602, 0.948147,
		-0.962389, 0.240167, -0.126995,
		-0.195253, -0.936476, -0.291356,
		44.151291, 33.911697, 29.898647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651779, 34.490059, 30.386988>,  <44.287968, 34.567230, 30.102596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651779, 34.490059, 30.386988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794258, 34.121143, 30.326975>,  <43.879745, 33.899796, 30.290968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794258, 34.121143, 30.326975>,  <43.651779, 34.490059, 30.386988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794258, 34.121143, 30.326975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242123, -0.246178, 0.938495,
		-0.902496, -0.297966, -0.310995,
		0.356200, -0.922287, -0.150030,
		43.901119, 33.844456, 30.281965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120850, 34.033936, 30.665607>,  <43.651779, 34.490059, 30.386988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120850, 34.033936, 30.665607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460773, 33.825214, 30.635834>,  <43.664730, 33.699982, 30.617970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460773, 33.825214, 30.635834>,  <43.120850, 34.033936, 30.665607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460773, 33.825214, 30.635834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121944, -0.332029, 0.935354,
		-0.512785, -0.785798, -0.345793,
		0.849812, -0.521803, -0.074436,
		43.715717, 33.668674, 30.613503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977024, 33.277054, 30.784107>,  <43.120850, 34.033936, 30.665607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977024, 33.277054, 30.784107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360802, 33.363323, 30.856714>,  <43.591068, 33.415085, 30.900278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360802, 33.363323, 30.856714>,  <42.977024, 33.277054, 30.784107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360802, 33.363323, 30.856714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045830, -0.516011, 0.855355,
		0.278148, -0.828985, -0.485199,
		0.959444, 0.215678, 0.181520,
		43.648636, 33.428028, 30.911171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248432, 32.600327, 30.943203>,  <42.977024, 33.277054, 30.784107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248432, 32.600327, 30.943203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559185, 32.807423, 31.086529>,  <43.745636, 32.931683, 31.172523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.559185, 32.807423, 31.086529>,  <43.248432, 32.600327, 30.943203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559185, 32.807423, 31.086529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025762, -0.542463, 0.839684,
		0.629115, -0.661570, -0.408094,
		0.776886, 0.517744, 0.358315,
		43.792252, 32.962746, 31.194023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647820, 32.164192, 31.286997>,  <43.248432, 32.600327, 30.943203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647820, 32.164192, 31.286997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720333, 32.524311, 31.445290>,  <43.763840, 32.740383, 31.540266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720333, 32.524311, 31.445290>,  <43.647820, 32.164192, 31.286997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720333, 32.524311, 31.445290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037045, -0.408366, 0.912066,
		0.982733, -0.150683, -0.107382,
		0.181284, 0.900296, 0.395732,
		43.774719, 32.794399, 31.564009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156902, 31.958122, 31.860067>,  <43.647820, 32.164192, 31.286997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156902, 31.958122, 31.860067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018612, 32.322792, 31.948902>,  <43.935638, 32.541595, 32.002205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018612, 32.322792, 31.948902>,  <44.156902, 31.958122, 31.860067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018612, 32.322792, 31.948902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132442, -0.186902, 0.973410,
		0.928943, 0.365945, -0.056127,
		-0.345724, 0.911675, 0.222088,
		43.914894, 32.596294, 32.015530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538036, 32.119518, 32.397087>,  <44.156902, 31.958122, 31.860067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538036, 32.119518, 32.397087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213913, 32.353790, 32.404842>,  <44.019440, 32.494354, 32.409496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213913, 32.353790, 32.404842>,  <44.538036, 32.119518, 32.397087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213913, 32.353790, 32.404842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004607, -0.026722, 0.999632,
		0.585980, 0.810103, 0.018955,
		-0.810312, 0.585678, 0.019391,
		43.970818, 32.529495, 32.410660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684834, 32.713161, 32.847858>,  <44.538036, 32.119518, 32.397087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684834, 32.713161, 32.847858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286774, 32.676464, 32.862019>,  <44.047935, 32.654446, 32.870514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286774, 32.676464, 32.862019>,  <44.684834, 32.713161, 32.847858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286774, 32.676464, 32.862019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036718, -0.012759, 0.999244,
		-0.091227, 0.995701, 0.016066,
		-0.995153, -0.091748, 0.035396,
		43.988228, 32.648941, 32.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541397, 32.925449, 33.413136>,  <44.684834, 32.713161, 32.847858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541397, 32.925449, 33.413136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163445, 32.814678, 33.343273>,  <43.936672, 32.748215, 33.301353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163445, 32.814678, 33.343273>,  <44.541397, 32.925449, 33.413136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163445, 32.814678, 33.343273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176334, -0.019048, 0.984146,
		-0.275861, 0.960703, -0.030833,
		-0.944885, -0.276924, -0.174659,
		43.879978, 32.731602, 33.290874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086990, 33.312923, 33.834965>,  <44.541397, 32.925449, 33.413136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086990, 33.312923, 33.834965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877583, 32.983379, 33.748077>,  <43.751938, 32.785652, 33.695946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.877583, 32.983379, 33.748077>,  <44.086990, 33.312923, 33.834965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877583, 32.983379, 33.748077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198470, -0.130018, 0.971445,
		-0.828575, 0.551682, -0.095444,
		-0.523519, -0.823858, -0.217222,
		43.720528, 32.736221, 33.682911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421612, 33.600368, 34.428864>,  <44.086990, 33.312923, 33.834965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421612, 33.600368, 34.428864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781670, 33.735527, 34.538822>,  <44.997704, 33.816624, 34.604797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781670, 33.735527, 34.538822>,  <44.421612, 33.600368, 34.428864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781670, 33.735527, 34.538822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026100, 0.588109, -0.808361,
		-0.434815, 0.734814, 0.520562,
		0.900141, 0.337901, 0.274897,
		45.051712, 33.836899, 34.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363621, 34.287151, 34.412285>,  <44.421612, 33.600368, 34.428864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363621, 34.287151, 34.412285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754910, 34.209427, 34.383083>,  <44.989681, 34.162792, 34.365562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.754910, 34.209427, 34.383083>,  <44.363621, 34.287151, 34.412285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754910, 34.209427, 34.383083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100144, 0.749868, -0.653964,
		0.181819, 0.632409, 0.752994,
		0.978219, -0.194311, -0.073008,
		45.048374, 34.151134, 34.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594456, 34.849144, 34.444756>,  <44.363621, 34.287151, 34.412285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594456, 34.849144, 34.444756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893082, 34.650742, 34.267387>,  <45.072258, 34.531700, 34.160965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.893082, 34.650742, 34.267387>,  <44.594456, 34.849144, 34.444756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893082, 34.650742, 34.267387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075317, 0.599192, -0.797055,
		0.661038, 0.628449, 0.409977,
		0.746563, -0.496005, -0.443422,
		45.117050, 34.501942, 34.134361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126564, 35.322582, 34.312035>,  <44.594456, 34.849144, 34.444756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126564, 35.322582, 34.312035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195122, 35.027416, 34.050926>,  <45.236256, 34.850315, 33.894260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.195122, 35.027416, 34.050926>,  <45.126564, 35.322582, 34.312035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195122, 35.027416, 34.050926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122006, 0.673370, -0.729169,
		0.977619, 0.045333, 0.205440,
		0.171393, -0.737915, -0.652768,
		45.246540, 34.806042, 33.855095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721855, 35.492439, 33.892113>,  <45.126564, 35.322582, 34.312035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721855, 35.492439, 33.892113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540997, 35.205273, 33.680393>,  <45.432480, 35.032974, 33.553364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540997, 35.205273, 33.680393>,  <45.721855, 35.492439, 33.892113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540997, 35.205273, 33.680393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004562, 0.591552, -0.806254,
		0.891930, -0.366963, -0.264195,
		-0.452151, -0.717917, -0.529297,
		45.405350, 34.989899, 33.521603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204094, 35.525555, 33.311180>,  <45.721855, 35.492439, 33.892113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204094, 35.525555, 33.311180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862759, 35.336063, 33.224098>,  <45.657959, 35.222366, 33.171848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862759, 35.336063, 33.224098>,  <46.204094, 35.525555, 33.311180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862759, 35.336063, 33.224098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045452, 0.483578, -0.874120,
		0.519379, -0.736022, -0.434186,
		-0.853335, -0.473734, -0.217706,
		45.606758, 35.193943, 33.158787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303185, 35.331860, 32.549412>,  <46.204094, 35.525555, 33.311180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303185, 35.331860, 32.549412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.914261, 35.330338, 32.642887>,  <45.680908, 35.329422, 32.698971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.914261, 35.330338, 32.642887>,  <46.303185, 35.331860, 32.549412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914261, 35.330338, 32.642887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218047, 0.374735, -0.901126,
		-0.084140, -0.927124, -0.365187,
		-0.972304, -0.003807, 0.233687,
		45.622570, 35.329197, 32.712994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972378, 35.141018, 32.024605>,  <46.303185, 35.331860, 32.549412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972378, 35.141018, 32.024605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659279, 35.318115, 32.199551>,  <45.471420, 35.424374, 32.304516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659279, 35.318115, 32.199551>,  <45.972378, 35.141018, 32.024605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659279, 35.318115, 32.199551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236254, 0.438766, -0.866988,
		-0.575754, -0.781960, -0.238842,
		-0.782746, 0.442745, 0.437363,
		45.424454, 35.450939, 32.330761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329174, 34.986797, 31.499079>,  <45.972378, 35.141018, 32.024605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329174, 34.986797, 31.499079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259571, 35.306442, 31.729259>,  <45.217812, 35.498230, 31.867369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.259571, 35.306442, 31.729259>,  <45.329174, 34.986797, 31.499079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259571, 35.306442, 31.729259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115205, 0.563835, -0.817813,
		-0.977983, -0.208597, -0.006047,
		-0.174003, 0.799110, 0.575452,
		45.207371, 35.546177, 31.901896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704056, 35.185055, 31.330063>,  <45.329174, 34.986797, 31.499079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704056, 35.185055, 31.330063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793892, 35.523197, 31.523939>,  <44.847794, 35.726082, 31.640265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793892, 35.523197, 31.523939>,  <44.704056, 35.185055, 31.330063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793892, 35.523197, 31.523939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252682, 0.530909, -0.808881,
		-0.941121, 0.059197, 0.332847,
		0.224595, 0.845359, 0.484691,
		44.861271, 35.776806, 31.669346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150009, 35.694904, 31.129665>,  <44.704056, 35.185055, 31.330063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150009, 35.694904, 31.129665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463577, 35.906776, 31.259230>,  <44.651718, 36.033897, 31.336967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463577, 35.906776, 31.259230>,  <44.150009, 35.694904, 31.129665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463577, 35.906776, 31.259230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002197, 0.519336, -0.854568,
		-0.620861, 0.670622, 0.405953,
		0.783918, 0.529676, 0.323908,
		44.698753, 36.065678, 31.356401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954685, 36.404152, 31.175428>,  <44.150009, 35.694904, 31.129665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954685, 36.404152, 31.175428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351357, 36.376732, 31.131844>,  <44.589359, 36.360279, 31.105694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351357, 36.376732, 31.131844>,  <43.954685, 36.404152, 31.175428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351357, 36.376732, 31.131844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067752, 0.441765, -0.894569,
		0.109461, 0.894508, 0.433444,
		0.991679, -0.068554, -0.108961,
		44.648861, 36.356167, 31.099155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197048, 37.123981, 31.086847>,  <43.954685, 36.404152, 31.175428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197048, 37.123981, 31.086847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.483318, 36.879124, 30.952333>,  <44.655079, 36.732208, 30.871626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.483318, 36.879124, 30.952333>,  <44.197048, 37.123981, 31.086847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483318, 36.879124, 30.952333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179873, 0.626783, -0.758148,
		0.674875, 0.482098, 0.558681,
		0.715674, -0.612147, -0.336284,
		44.698021, 36.695480, 30.851448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600929, 37.590443, 30.796394>,  <44.197048, 37.123981, 31.086847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600929, 37.590443, 30.796394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742809, 37.247757, 30.646606>,  <44.827938, 37.042145, 30.556734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742809, 37.247757, 30.646606>,  <44.600929, 37.590443, 30.796394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742809, 37.247757, 30.646606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168816, 0.452610, -0.875583,
		0.919614, 0.247351, 0.305168,
		0.354699, -0.856715, -0.374470,
		44.849220, 36.990742, 30.534266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310669, 37.662052, 30.468950>,  <44.600929, 37.590443, 30.796394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310669, 37.662052, 30.468950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163815, 37.331448, 30.298260>,  <45.075703, 37.133087, 30.195847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.163815, 37.331448, 30.298260>,  <45.310669, 37.662052, 30.468950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163815, 37.331448, 30.298260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281999, 0.338270, -0.897803,
		0.886391, -0.449951, 0.108884,
		-0.367135, -0.826509, -0.426725,
		45.053673, 37.083496, 30.170242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749485, 37.563957, 29.989626>,  <45.310669, 37.662052, 30.468950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749485, 37.563957, 29.989626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452091, 37.329815, 29.860264>,  <45.273655, 37.189327, 29.782646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.452091, 37.329815, 29.860264>,  <45.749485, 37.563957, 29.989626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452091, 37.329815, 29.860264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204526, 0.261395, -0.943314,
		0.636712, -0.767482, -0.074621,
		-0.743483, -0.585358, -0.323404,
		45.229046, 37.154209, 29.763243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005650, 37.174316, 29.411371>,  <45.749485, 37.563957, 29.989626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005650, 37.174316, 29.411371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614517, 37.169712, 29.327742>,  <45.379837, 37.166950, 29.277563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614517, 37.169712, 29.327742>,  <46.005650, 37.174316, 29.411371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614517, 37.169712, 29.327742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203633, 0.180282, -0.962306,
		0.048771, -0.983548, -0.173941,
		-0.977832, -0.011513, -0.209075,
		45.321167, 37.166260, 29.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993290, 36.727837, 28.870827>,  <46.005650, 37.174316, 29.411371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993290, 36.727837, 28.870827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.667995, 36.960575, 28.874823>,  <45.472820, 37.100220, 28.877220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.667995, 36.960575, 28.874823>,  <45.993290, 36.727837, 28.870827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667995, 36.960575, 28.874823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022962, 0.049240, -0.998523,
		-0.581481, -0.811805, -0.053404,
		-0.813236, 0.581848, 0.009991,
		45.424026, 37.135128, 28.877819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558098, 36.470501, 28.310465>,  <45.993290, 36.727837, 28.870827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558098, 36.470501, 28.310465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410133, 36.832600, 28.394083>,  <45.321354, 37.049858, 28.444254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410133, 36.832600, 28.394083>,  <45.558098, 36.470501, 28.310465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410133, 36.832600, 28.394083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088855, 0.189505, -0.977851,
		-0.924808, -0.380293, 0.010336,
		-0.369911, 0.905243, 0.209047,
		45.299160, 37.104172, 28.456797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017242, 36.591839, 27.780426>,  <45.558098, 36.470501, 28.310465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017242, 36.591839, 27.780426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088989, 36.962814, 27.911688>,  <45.132038, 37.185398, 27.990444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088989, 36.962814, 27.911688>,  <45.017242, 36.591839, 27.780426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088989, 36.962814, 27.911688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026363, 0.328914, -0.943992,
		-0.983429, 0.177973, 0.034547,
		0.179369, 0.927438, 0.328155,
		45.142799, 37.241047, 28.010134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531841, 37.045834, 27.422659>,  <45.017242, 36.591839, 27.780426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531841, 37.045834, 27.422659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810467, 37.291527, 27.570990>,  <44.977642, 37.438942, 27.659988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810467, 37.291527, 27.570990>,  <44.531841, 37.045834, 27.422659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810467, 37.291527, 27.570990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022690, 0.535435, -0.844271,
		-0.717133, 0.579678, 0.386903,
		0.696567, 0.614233, 0.370825,
		45.019436, 37.475796, 27.682238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.651146, 34.968998, 42.317760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375507, 34.764954, 42.111874>,  <37.210125, 34.642529, 41.988342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375507, 34.764954, 42.111874>,  <37.651146, 34.968998, 42.317760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375507, 34.764954, 42.111874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682336, -0.217529, -0.697924,
		0.244053, -0.832147, 0.497965,
		-0.689098, -0.510110, -0.514716,
		37.168777, 34.611919, 41.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903728, 34.240234, 42.139828>,  <37.651146, 34.968998, 42.317760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903728, 34.240234, 42.139828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607761, 34.305283, 41.878727>,  <37.430183, 34.344311, 41.722069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607761, 34.305283, 41.878727>,  <37.903728, 34.240234, 42.139828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607761, 34.305283, 41.878727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651337, -0.069411, -0.755607,
		-0.168188, -0.984244, -0.054565,
		-0.739915, 0.162624, -0.652748,
		37.385788, 34.354069, 41.682903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078865, 33.820049, 41.561886>,  <37.903728, 34.240234, 42.139828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078865, 33.820049, 41.561886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792068, 34.058979, 41.418152>,  <37.619991, 34.202339, 41.331909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792068, 34.058979, 41.418152>,  <38.078865, 33.820049, 41.561886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792068, 34.058979, 41.418152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485659, 0.058255, -0.872205,
		-0.500060, -0.799878, -0.331866,
		-0.716991, 0.597328, -0.359337,
		37.576973, 34.238178, 41.310352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721786, 33.466141, 41.005203>,  <38.078865, 33.820049, 41.561886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721786, 33.466141, 41.005203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674759, 33.860600, 40.958393>,  <37.646542, 34.097275, 40.930309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674759, 33.860600, 40.958393>,  <37.721786, 33.466141, 41.005203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674759, 33.860600, 40.958393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475925, -0.047474, -0.878204,
		-0.871593, -0.158938, -0.463750,
		-0.117564, 0.986146, -0.117021,
		37.639488, 34.156445, 40.923286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578991, 33.488564, 40.381561>,  <37.721786, 33.466141, 41.005203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578991, 33.488564, 40.381561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684090, 33.868523, 40.449268>,  <37.747150, 34.096500, 40.489895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684090, 33.868523, 40.449268>,  <37.578991, 33.488564, 40.381561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684090, 33.868523, 40.449268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461839, 0.030216, -0.886449,
		-0.847153, 0.311089, -0.430762,
		0.262748, 0.949901, 0.169270,
		37.762913, 34.153492, 40.500050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454975, 33.873703, 39.762875>,  <37.578991, 33.488564, 40.381561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454975, 33.873703, 39.762875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709774, 34.099903, 39.972427>,  <37.862652, 34.235622, 40.098160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709774, 34.099903, 39.972427>,  <37.454975, 33.873703, 39.762875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709774, 34.099903, 39.972427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592737, 0.075186, -0.801879,
		-0.492849, 0.821316, -0.287299,
		0.636995, 0.565498, 0.523880,
		37.900871, 34.269554, 40.129593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626652, 34.386364, 39.300121>,  <37.454975, 33.873703, 39.762875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626652, 34.386364, 39.300121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913311, 34.449242, 39.571915>,  <38.085308, 34.486969, 39.734993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913311, 34.449242, 39.571915>,  <37.626652, 34.386364, 39.300121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913311, 34.449242, 39.571915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670696, 0.111845, -0.733252,
		-0.191259, 0.981214, -0.025274,
		0.716650, 0.157192, 0.679488,
		38.128307, 34.496399, 39.775761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938545, 35.020901, 39.177513>,  <37.626652, 34.386364, 39.300121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938545, 35.020901, 39.177513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212578, 34.794147, 39.360516>,  <38.376999, 34.658096, 39.470318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212578, 34.794147, 39.360516>,  <37.938545, 35.020901, 39.177513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212578, 34.794147, 39.360516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592988, 0.069188, -0.802234,
		0.423116, 0.820891, 0.383551,
		0.685083, -0.566879, 0.457504,
		38.418102, 34.624084, 39.497768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556179, 35.325108, 39.014145>,  <37.938545, 35.020901, 39.177513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556179, 35.325108, 39.014145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716438, 34.987434, 39.156601>,  <38.812595, 34.784828, 39.242073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716438, 34.987434, 39.156601>,  <38.556179, 35.325108, 39.014145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716438, 34.987434, 39.156601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567878, -0.076241, -0.819574,
		0.719024, 0.530603, 0.448849,
		0.400648, -0.844185, 0.356137,
		38.836632, 34.734180, 39.263443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374035, 35.262260, 38.920815>,  <38.556179, 35.325108, 39.014145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374035, 35.262260, 38.920815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202053, 34.901432, 38.935795>,  <39.098862, 34.684937, 38.944782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202053, 34.901432, 38.935795>,  <39.374035, 35.262260, 38.920815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202053, 34.901432, 38.935795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522261, -0.282334, -0.804693,
		0.736465, -0.326424, 0.592509,
		-0.429957, -0.902073, 0.037450,
		39.073067, 34.630810, 38.947029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998955, 34.890961, 38.984650>,  <39.374035, 35.262260, 38.920815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998955, 34.890961, 38.984650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693520, 34.676044, 38.841396>,  <39.510258, 34.547096, 38.755444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693520, 34.676044, 38.841396>,  <39.998955, 34.890961, 38.984650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693520, 34.676044, 38.841396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483983, -0.109083, -0.868252,
		0.427434, -0.836315, 0.343331,
		-0.763584, -0.537287, -0.358136,
		39.464443, 34.514858, 38.733955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357712, 34.274910, 38.691998>,  <39.998955, 34.890961, 38.984650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357712, 34.274910, 38.691998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981720, 34.298031, 38.557480>,  <39.756123, 34.311901, 38.476768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981720, 34.298031, 38.557480>,  <40.357712, 34.274910, 38.691998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981720, 34.298031, 38.557480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333110, -0.058209, -0.941089,
		-0.073978, -0.996630, 0.035459,
		-0.939981, 0.057808, -0.336293,
		39.699726, 34.315369, 38.456593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404888, 33.718948, 38.257248>,  <40.357712, 34.274910, 38.691998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404888, 33.718948, 38.257248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113228, 33.977345, 38.166878>,  <39.938232, 34.132381, 38.112656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113228, 33.977345, 38.166878>,  <40.404888, 33.718948, 38.257248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113228, 33.977345, 38.166878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245924, -0.060744, -0.967384,
		-0.638642, -0.760926, -0.114572,
		-0.729148, 0.645988, -0.225924,
		39.894482, 34.171143, 38.099102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866940, 33.390488, 37.782738>,  <40.404888, 33.718948, 38.257248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866940, 33.390488, 37.782738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897163, 33.785957, 37.730881>,  <39.915298, 34.023239, 37.699764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897163, 33.785957, 37.730881>,  <39.866940, 33.390488, 37.782738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897163, 33.785957, 37.730881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061277, -0.134376, -0.989034,
		-0.995257, 0.066782, -0.070736,
		0.075555, 0.988678, -0.129647,
		39.919830, 34.082561, 37.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413292, 32.854099, 37.366283>,  <39.866940, 33.390488, 37.782738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413292, 32.854099, 37.366283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506313, 32.634953, 37.044846>,  <39.562126, 32.503464, 36.851982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506313, 32.634953, 37.044846>,  <39.413292, 32.854099, 37.366283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506313, 32.634953, 37.044846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190968, -0.835881, 0.514621,
		-0.953651, 0.033784, -0.299012,
		0.232553, -0.547870, -0.803590,
		39.576080, 32.470592, 36.803768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890633, 32.549881, 36.984970>,  <39.413292, 32.854099, 37.366283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890633, 32.549881, 36.984970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224716, 32.330536, 36.968323>,  <39.425167, 32.198929, 36.958336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224716, 32.330536, 36.968323>,  <38.890633, 32.549881, 36.984970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224716, 32.330536, 36.968323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384437, -0.636293, 0.668835,
		-0.393243, -0.542616, -0.742246,
		0.835206, -0.548361, -0.041616,
		39.475277, 32.166027, 36.955837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629875, 31.775185, 36.896156>,  <38.890633, 32.549881, 36.984970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629875, 31.775185, 36.896156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008633, 31.726444, 37.015182>,  <39.235886, 31.697201, 37.086597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008633, 31.726444, 37.015182>,  <38.629875, 31.775185, 36.896156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008633, 31.726444, 37.015182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308533, -0.604938, 0.734070,
		0.090564, -0.786895, -0.610406,
		0.946893, -0.121850, 0.297569,
		39.292702, 31.689890, 37.104454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844818, 31.093761, 36.936993>,  <38.629875, 31.775185, 36.896156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844818, 31.093761, 36.936993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040615, 31.318916, 37.203392>,  <39.158092, 31.454010, 37.363232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040615, 31.318916, 37.203392>,  <38.844818, 31.093761, 36.936993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040615, 31.318916, 37.203392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283246, -0.619703, 0.731942,
		0.824722, -0.546923, -0.143906,
		0.489495, 0.562888, 0.665997,
		39.187462, 31.487783, 37.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301125, 30.637711, 37.342213>,  <38.844818, 31.093761, 36.936993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301125, 30.637711, 37.342213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306244, 30.951897, 37.589722>,  <39.309315, 31.140408, 37.738228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306244, 30.951897, 37.589722>,  <39.301125, 30.637711, 37.342213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306244, 30.951897, 37.589722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132394, -0.612047, 0.779660,
		0.991114, -0.091901, 0.096157,
		0.012799, 0.785463, 0.618776,
		39.310085, 31.187536, 37.775356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789925, 30.528008, 37.907677>,  <39.301125, 30.637711, 37.342213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789925, 30.528008, 37.907677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579269, 30.832088, 38.059860>,  <39.452877, 31.014536, 38.151169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579269, 30.832088, 38.059860>,  <39.789925, 30.528008, 37.907677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579269, 30.832088, 38.059860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012363, -0.440655, 0.897591,
		0.850001, 0.477408, 0.222666,
		-0.526636, 0.760201, 0.380459,
		39.421280, 31.060148, 38.174000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779785, 30.280022, 38.562496>,  <39.789925, 30.528008, 37.907677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779785, 30.280022, 38.562496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511135, 30.575075, 38.534752>,  <39.349945, 30.752108, 38.518105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511135, 30.575075, 38.534752>,  <39.779785, 30.280022, 38.562496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511135, 30.575075, 38.534752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482781, -0.364712, 0.796183,
		0.561993, 0.568227, 0.601067,
		-0.671629, 0.737633, -0.069364,
		39.309647, 30.796366, 38.513943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740341, 30.504339, 39.187954>,  <39.779785, 30.280022, 38.562496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740341, 30.504339, 39.187954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399971, 30.628609, 39.018532>,  <39.195747, 30.703171, 38.916878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399971, 30.628609, 39.018532>,  <39.740341, 30.504339, 39.187954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399971, 30.628609, 39.018532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510791, -0.301303, 0.805177,
		0.122527, 0.901498, 0.415076,
		-0.850929, 0.310673, -0.423559,
		39.144691, 30.721811, 38.891464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387344, 30.771574, 39.763451>,  <39.740341, 30.504339, 39.187954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387344, 30.771574, 39.763451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127876, 30.689919, 39.470181>,  <38.972195, 30.640926, 39.294216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127876, 30.689919, 39.470181>,  <39.387344, 30.771574, 39.763451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127876, 30.689919, 39.470181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642526, -0.369432, 0.671328,
		-0.407903, 0.906558, 0.108477,
		-0.648673, -0.204137, -0.733180,
		38.933273, 30.628677, 39.250225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745708, 30.988264, 39.904415>,  <39.387344, 30.771574, 39.763451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745708, 30.988264, 39.904415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691158, 30.685335, 39.648956>,  <38.658428, 30.503578, 39.495682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691158, 30.685335, 39.648956>,  <38.745708, 30.988264, 39.904415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691158, 30.685335, 39.648956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587567, -0.457205, 0.667629,
		-0.797601, 0.466292, -0.382628,
		-0.136371, -0.757322, -0.638645,
		38.650246, 30.458139, 39.457363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067986, 30.898262, 40.021980>,  <38.745708, 30.988264, 39.904415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067986, 30.898262, 40.021980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174583, 30.573517, 39.814186>,  <38.238541, 30.378670, 39.689510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174583, 30.573517, 39.814186>,  <38.067986, 30.898262, 40.021980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174583, 30.573517, 39.814186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625278, -0.555788, 0.547838,
		-0.733491, 0.178825, -0.655754,
		0.266493, -0.811863, -0.519481,
		38.254532, 30.329958, 39.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439770, 30.654108, 39.789207>,  <38.067986, 30.898262, 40.021980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439770, 30.654108, 39.789207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699348, 30.349873, 39.781433>,  <37.855095, 30.167332, 39.776768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699348, 30.349873, 39.781433>,  <37.439770, 30.654108, 39.789207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699348, 30.349873, 39.781433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546586, -0.483822, 0.683491,
		-0.529259, -0.432923, -0.729700,
		0.648944, -0.760588, -0.019437,
		37.894032, 30.121696, 39.775604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038185, 30.088858, 39.626385>,  <37.439770, 30.654108, 39.789207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038185, 30.088858, 39.626385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364071, 29.913157, 39.777805>,  <37.559601, 29.807735, 39.868656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364071, 29.913157, 39.777805>,  <37.038185, 30.088858, 39.626385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364071, 29.913157, 39.777805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577573, -0.672711, 0.462460,
		0.051519, -0.595413, -0.801767,
		0.814712, -0.439254, 0.378552,
		37.608486, 29.781380, 39.891369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009567, 29.353870, 39.452461>,  <37.038185, 30.088858, 39.626385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009567, 29.353870, 39.452461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247459, 29.361515, 39.773941>,  <37.390194, 29.366102, 39.966831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247459, 29.361515, 39.773941>,  <37.009567, 29.353870, 39.452461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247459, 29.361515, 39.773941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595405, -0.661265, 0.456313,
		0.540181, -0.749909, -0.381892,
		0.594725, 0.019111, 0.803702,
		37.425877, 29.367249, 40.015053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653603, 28.818647, 39.192345>,  <37.009567, 29.353870, 39.452461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653603, 28.818647, 39.192345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335632, 28.641447, 39.026527>,  <36.144852, 28.535128, 38.927036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335632, 28.641447, 39.026527>,  <36.653603, 28.818647, 39.192345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335632, 28.641447, 39.026527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288396, 0.325239, -0.900582,
		0.533785, -0.835446, -0.130780,
		-0.794922, -0.443001, -0.414547,
		36.097157, 28.508547, 38.902164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890377, 28.488436, 38.607899>,  <36.653603, 28.818647, 39.192345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890377, 28.488436, 38.607899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500187, 28.563019, 38.561123>,  <36.266071, 28.607769, 38.533058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500187, 28.563019, 38.561123>,  <36.890377, 28.488436, 38.607899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500187, 28.563019, 38.561123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158367, 0.225659, -0.961248,
		-0.152845, -0.956196, -0.249654,
		-0.975479, 0.186459, -0.116939,
		36.207542, 28.618956, 38.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782818, 28.226696, 37.897030>,  <36.890377, 28.488436, 38.607899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782818, 28.226696, 37.897030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503315, 28.497971, 37.988071>,  <36.335613, 28.660734, 38.042698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503315, 28.497971, 37.988071>,  <36.782818, 28.226696, 37.897030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503315, 28.497971, 37.988071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023430, 0.339699, -0.940242,
		-0.714976, -0.651667, -0.253257,
		-0.698757, 0.678185, 0.227608,
		36.293690, 28.701426, 38.056355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467819, 28.411537, 37.269741>,  <36.782818, 28.226696, 37.897030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467819, 28.411537, 37.269741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336285, 28.710926, 37.500099>,  <36.257366, 28.890560, 37.638313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336285, 28.710926, 37.500099>,  <36.467819, 28.411537, 37.269741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336285, 28.710926, 37.500099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003556, 0.610785, -0.791788,
		-0.944381, -0.258319, -0.203508,
		-0.328833, 0.748473, 0.575896,
		36.237633, 28.935469, 37.672867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904789, 28.701815, 36.923721>,  <36.467819, 28.411537, 37.269741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904789, 28.701815, 36.923721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045410, 28.976446, 37.178288>,  <36.129784, 29.141224, 37.331028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045410, 28.976446, 37.178288>,  <35.904789, 28.701815, 36.923721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045410, 28.976446, 37.178288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162806, 0.624609, -0.763778,
		-0.921901, 0.372123, 0.107807,
		0.351557, 0.686576, 0.636412,
		36.150879, 29.182419, 37.369209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572876, 29.267122, 36.712059>,  <35.904789, 28.701815, 36.923721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572876, 29.267122, 36.712059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893787, 29.407623, 36.905128>,  <36.086334, 29.491924, 37.020969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893787, 29.407623, 36.905128>,  <35.572876, 29.267122, 36.712059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893787, 29.407623, 36.905128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075040, 0.742807, -0.665287,
		-0.592217, 0.569964, 0.569579,
		0.802277, 0.351254, 0.482673,
		36.134472, 29.512999, 37.049931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459846, 29.965462, 36.695496>,  <35.572876, 29.267122, 36.712059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459846, 29.965462, 36.695496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849922, 29.930922, 36.777023>,  <36.083969, 29.910198, 36.825939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849922, 29.930922, 36.777023>,  <35.459846, 29.965462, 36.695496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849922, 29.930922, 36.777023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209318, 0.659257, -0.722196,
		-0.072007, 0.746943, 0.660977,
		0.975193, -0.086351, 0.203820,
		36.142479, 29.905016, 36.838169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638454, 30.703360, 36.792747>,  <35.459846, 29.965462, 36.695496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638454, 30.703360, 36.792747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976181, 30.505898, 36.709377>,  <36.178818, 30.387421, 36.659355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976181, 30.505898, 36.709377>,  <35.638454, 30.703360, 36.792747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976181, 30.505898, 36.709377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236873, 0.692733, -0.681184,
		0.480653, 0.525762, 0.701817,
		0.844313, -0.493655, -0.208426,
		36.229473, 30.357801, 36.646851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162468, 31.148968, 36.860603>,  <35.638454, 30.703360, 36.792747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162468, 31.148968, 36.860603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298981, 30.872662, 36.605614>,  <36.380890, 30.706879, 36.452621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298981, 30.872662, 36.605614>,  <36.162468, 31.148968, 36.860603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298981, 30.872662, 36.605614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324963, 0.723079, -0.609554,
		0.882001, 0.000875, 0.471246,
		0.341282, -0.690765, -0.637472,
		36.401363, 30.665432, 36.414371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823296, 31.368996, 36.771397>,  <36.162468, 31.148968, 36.860603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823296, 31.368996, 36.771397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758331, 31.127228, 36.459423>,  <36.719353, 30.982168, 36.272240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758331, 31.127228, 36.459423>,  <36.823296, 31.368996, 36.771397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758331, 31.127228, 36.459423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343669, 0.706289, -0.618907,
		0.924941, -0.368556, 0.093013,
		-0.162408, -0.604418, -0.779937,
		36.709610, 30.945902, 36.225441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208248, 31.664104, 36.374630>,  <36.823296, 31.368996, 36.771397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208248, 31.664104, 36.374630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043327, 31.393372, 36.130692>,  <36.944374, 31.230932, 35.984329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043327, 31.393372, 36.130692>,  <37.208248, 31.664104, 36.374630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043327, 31.393372, 36.130692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110313, 0.627371, -0.770867,
		0.904345, -0.385102, -0.184003,
		-0.412301, -0.676832, -0.609842,
		36.919636, 31.190323, 35.947739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621494, 31.683367, 35.737381>,  <37.208248, 31.664104, 36.374630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621494, 31.683367, 35.737381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252380, 31.553175, 35.654884>,  <37.030914, 31.475060, 35.605385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252380, 31.553175, 35.654884>,  <37.621494, 31.683367, 35.737381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252380, 31.553175, 35.654884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087287, 0.697903, -0.710853,
		0.375306, -0.637960, -0.672423,
		-0.922782, -0.325481, -0.206242,
		36.975544, 31.455530, 35.593010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.398136, 25.844341, 41.729980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078758, 26.080936, 41.685040>,  <34.887131, 26.222893, 41.658073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078758, 26.080936, 41.685040>,  <35.398136, 25.844341, 41.729980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078758, 26.080936, 41.685040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408501, 0.395142, -0.822794,
		-0.442277, -0.702854, -0.557124,
		-0.798447, 0.591489, -0.112354,
		34.839226, 26.258383, 41.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196598, 25.728090, 41.090973>,  <35.398136, 25.844341, 41.729980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196598, 25.728090, 41.090973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030090, 26.083920, 41.166214>,  <34.930187, 26.297417, 41.211357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030090, 26.083920, 41.166214>,  <35.196598, 25.728090, 41.090973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030090, 26.083920, 41.166214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236773, 0.305795, -0.922186,
		-0.877871, -0.339341, -0.337920,
		-0.416270, 0.889571, 0.188102,
		34.905209, 26.350790, 41.222645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741310, 25.908754, 40.477821>,  <35.196598, 25.728090, 41.090973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741310, 25.908754, 40.477821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828659, 26.238417, 40.686848>,  <34.881069, 26.436214, 40.812263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.828659, 26.238417, 40.686848>,  <34.741310, 25.908754, 40.477821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828659, 26.238417, 40.686848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197311, 0.487143, -0.850741,
		-0.955709, 0.288890, -0.056234,
		0.218377, 0.824156, 0.522569,
		34.894173, 26.485664, 40.843616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376678, 26.454496, 40.059814>,  <34.741310, 25.908754, 40.477821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376678, 26.454496, 40.059814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668118, 26.623205, 40.275684>,  <34.842983, 26.724430, 40.405209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668118, 26.623205, 40.275684>,  <34.376678, 26.454496, 40.059814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668118, 26.623205, 40.275684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213021, 0.609310, -0.763782,
		-0.650972, 0.671454, 0.354098,
		0.728600, 0.421770, 0.539678,
		34.886696, 26.749737, 40.437588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314983, 27.142776, 39.888786>,  <34.376678, 26.454496, 40.059814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314983, 27.142776, 39.888786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688866, 27.141247, 40.030945>,  <34.913197, 27.140329, 40.116238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688866, 27.141247, 40.030945>,  <34.314983, 27.142776, 39.888786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688866, 27.141247, 40.030945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301157, 0.539536, -0.786260,
		-0.188740, 0.841954, 0.505461,
		0.934709, -0.003824, 0.355393,
		34.969280, 27.140099, 40.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508427, 27.758430, 39.654491>,  <34.314983, 27.142776, 39.888786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508427, 27.758430, 39.654491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870018, 27.633781, 39.771599>,  <35.086971, 27.558992, 39.841862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870018, 27.633781, 39.771599>,  <34.508427, 27.758430, 39.654491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870018, 27.633781, 39.771599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426411, 0.606544, -0.671028,
		0.031535, 0.731434, 0.681183,
		0.903980, -0.311625, 0.292764,
		35.141212, 27.540295, 39.859428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853912, 28.383207, 39.857483>,  <34.508427, 27.758430, 39.654491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853912, 28.383207, 39.857483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114735, 28.092823, 39.770031>,  <35.271229, 27.918592, 39.717560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.114735, 28.092823, 39.770031>,  <34.853912, 28.383207, 39.857483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114735, 28.092823, 39.770031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412034, 0.581383, -0.701585,
		0.636432, 0.367391, 0.678216,
		0.652060, -0.725960, -0.218633,
		35.310352, 27.875034, 39.704441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422421, 28.682632, 39.728020>,  <34.853912, 28.383207, 39.857483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422421, 28.682632, 39.728020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509373, 28.332993, 39.554264>,  <35.561543, 28.123209, 39.450012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509373, 28.332993, 39.554264>,  <35.422421, 28.682632, 39.728020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509373, 28.332993, 39.554264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460027, 0.484251, -0.744229,
		0.860885, -0.038053, 0.507375,
		0.217376, -0.874101, -0.434390,
		35.574585, 28.070763, 39.423946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184296, 28.661413, 39.723404>,  <35.422421, 28.682632, 39.728020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184296, 28.661413, 39.723404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011639, 28.444408, 39.435135>,  <35.908043, 28.314205, 39.262173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011639, 28.444408, 39.435135>,  <36.184296, 28.661413, 39.723404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011639, 28.444408, 39.435135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362413, 0.627315, -0.689299,
		0.826039, -0.558712, -0.074163,
		-0.431643, -0.542510, -0.720671,
		35.882145, 28.281656, 39.218933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037178, 28.575657, 39.834641>,  <36.184296, 28.661413, 39.723404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037178, 28.575657, 39.834641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147747, 28.850677, 40.103226>,  <37.214088, 29.015690, 40.264378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147747, 28.850677, 40.103226>,  <37.037178, 28.575657, 39.834641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147747, 28.850677, 40.103226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379313, -0.563911, 0.733571,
		0.883013, -0.457471, 0.104919,
		0.276422, 0.687550, 0.671465,
		37.230675, 29.056942, 40.304665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152752, 28.172834, 40.526958>,  <37.037178, 28.575657, 39.834641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152752, 28.172834, 40.526958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 28.564846, 40.604305>,  <37.182407, 28.800053, 40.650715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171288, 28.564846, 40.604305>,  <37.152752, 28.172834, 40.526958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171288, 28.564846, 40.604305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198323, -0.180701, 0.963336,
		0.979041, -0.082987, 0.185989,
		0.046336, 0.980031, 0.193372,
		37.185188, 28.858856, 40.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565750, 28.237190, 41.161629>,  <37.152752, 28.172834, 40.526958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565750, 28.237190, 41.161629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359806, 28.578608, 41.129669>,  <37.236240, 28.783457, 41.110493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359806, 28.578608, 41.129669>,  <37.565750, 28.237190, 41.161629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359806, 28.578608, 41.129669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294327, -0.088457, 0.951602,
		0.805164, 0.513462, 0.296763,
		-0.514862, 0.853541, -0.079903,
		37.205349, 28.834669, 41.105698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697807, 28.573248, 41.827023>,  <37.565750, 28.237190, 41.161629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697807, 28.573248, 41.827023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366867, 28.748856, 41.686878>,  <37.168301, 28.854219, 41.602791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366867, 28.748856, 41.686878>,  <37.697807, 28.573248, 41.827023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366867, 28.748856, 41.686878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304271, 0.174002, 0.936559,
		0.472129, 0.881468, -0.010381,
		-0.827353, 0.439018, -0.350357,
		37.118660, 28.880562, 41.581772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694454, 29.198502, 42.184345>,  <37.697807, 28.573248, 41.827023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694454, 29.198502, 42.184345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.322983, 29.098768, 42.074520>,  <37.100098, 29.038929, 42.008625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.322983, 29.098768, 42.074520>,  <37.694454, 29.198502, 42.184345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322983, 29.098768, 42.074520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313711, 0.133201, 0.940129,
		-0.197833, 0.959213, -0.201920,
		-0.928680, -0.249333, -0.274564,
		37.044380, 29.023968, 41.992149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223087, 29.760923, 42.499191>,  <37.694454, 29.198502, 42.184345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223087, 29.760923, 42.499191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004009, 29.437954, 42.411465>,  <36.872562, 29.244173, 42.358829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004009, 29.437954, 42.411465>,  <37.223087, 29.760923, 42.499191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004009, 29.437954, 42.411465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381433, 0.007653, 0.924365,
		-0.744673, 0.589926, -0.312169,
		-0.547695, -0.807421, -0.219318,
		36.839699, 29.195728, 42.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772320, 29.838268, 43.109283>,  <37.223087, 29.760923, 42.499191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772320, 29.838268, 43.109283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706131, 29.476282, 42.952488>,  <36.666420, 29.259090, 42.858410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706131, 29.476282, 42.952488>,  <36.772320, 29.838268, 43.109283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706131, 29.476282, 42.952488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439610, -0.288117, 0.850724,
		-0.882815, 0.313093, -0.350157,
		-0.165469, -0.904965, -0.391992,
		36.656490, 29.204792, 42.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130836, 29.715889, 43.280354>,  <36.772320, 29.838268, 43.109283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130836, 29.715889, 43.280354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290741, 29.352657, 43.230427>,  <36.386684, 29.134718, 43.200470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290741, 29.352657, 43.230427>,  <36.130836, 29.715889, 43.280354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290741, 29.352657, 43.230427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509400, -0.333299, 0.793362,
		-0.762037, -0.253577, -0.595817,
		0.399764, -0.908081, -0.124814,
		36.410671, 29.080233, 43.192982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566063, 29.217205, 43.415379>,  <36.130836, 29.715889, 43.280354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566063, 29.217205, 43.415379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905010, 29.007267, 43.447651>,  <36.108379, 28.881304, 43.467014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905010, 29.007267, 43.447651>,  <35.566063, 29.217205, 43.415379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905010, 29.007267, 43.447651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257584, -0.273405, 0.926769,
		-0.464353, -0.806093, -0.366866,
		0.847365, -0.524847, 0.080680,
		36.159218, 28.849813, 43.471855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413715, 28.490557, 43.607182>,  <35.566063, 29.217205, 43.415379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413715, 28.490557, 43.607182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789097, 28.554272, 43.729774>,  <36.014324, 28.592501, 43.803329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789097, 28.554272, 43.729774>,  <35.413715, 28.490557, 43.607182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789097, 28.554272, 43.729774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234216, -0.358688, 0.903596,
		0.253865, -0.919766, -0.299304,
		0.938454, 0.159290, 0.306482,
		36.070633, 28.602058, 43.821720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539459, 27.943283, 44.105598>,  <35.413715, 28.490557, 43.607182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539459, 27.943283, 44.105598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843945, 28.188885, 44.189083>,  <36.026634, 28.336246, 44.239174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.843945, 28.188885, 44.189083>,  <35.539459, 27.943283, 44.105598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843945, 28.188885, 44.189083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083624, -0.226213, 0.970482,
		0.643093, -0.756192, -0.120850,
		0.761209, 0.614004, 0.208711,
		36.072308, 28.373085, 44.251698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861736, 27.616812, 44.612541>,  <35.539459, 27.943283, 44.105598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861736, 27.616812, 44.612541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976742, 27.997805, 44.652775>,  <36.045746, 28.226400, 44.676914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976742, 27.997805, 44.652775>,  <35.861736, 27.616812, 44.612541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976742, 27.997805, 44.652775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108190, -0.072047, 0.991516,
		0.951647, -0.295955, 0.082334,
		0.287512, 0.952481, 0.100583,
		36.062996, 28.283548, 44.682949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378765, 27.641947, 45.063923>,  <35.861736, 27.616812, 44.612541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378765, 27.641947, 45.063923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239117, 28.016762, 45.067265>,  <36.155327, 28.241652, 45.069271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.239117, 28.016762, 45.067265>,  <36.378765, 27.641947, 45.063923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239117, 28.016762, 45.067265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242455, -0.098943, 0.965104,
		0.905167, 0.334914, 0.261734,
		-0.349123, 0.937039, 0.008358,
		36.134380, 28.297874, 45.069771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772015, 27.987411, 45.735184>,  <36.378765, 27.641947, 45.063923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772015, 27.987411, 45.735184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451817, 28.204496, 45.633469>,  <36.259697, 28.334747, 45.572437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451817, 28.204496, 45.633469>,  <36.772015, 27.987411, 45.735184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451817, 28.204496, 45.633469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358808, -0.094112, 0.928655,
		0.480061, 0.834629, 0.270067,
		-0.800498, 0.542714, -0.254292,
		36.211666, 28.367310, 45.557182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.714500, 31.347788, 42.609600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.000866, 31.069811, 42.582699>,  <29.172686, 30.903025, 42.566559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.000866, 31.069811, 42.582699>,  <28.714500, 31.347788, 42.609600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000866, 31.069811, 42.582699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337922, 0.429178, -0.837625,
		0.610966, 0.576939, 0.542090,
		0.715912, -0.694944, -0.067252,
		29.215639, 30.861328, 42.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227411, 31.736286, 42.330662>,  <28.714500, 31.347788, 42.609600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227411, 31.736286, 42.330662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.342274, 31.359753, 42.259747>,  <29.411192, 31.133833, 42.217197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.342274, 31.359753, 42.259747>,  <29.227411, 31.736286, 42.330662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342274, 31.359753, 42.259747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582316, 0.318511, -0.747970,
		0.760558, 0.111546, 0.639617,
		0.287158, -0.941333, -0.177291,
		29.428421, 31.077353, 42.206558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890635, 31.744883, 42.223557>,  <29.227411, 31.736286, 42.330662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890635, 31.744883, 42.223557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793657, 31.404360, 42.037437>,  <29.735470, 31.200047, 41.925766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793657, 31.404360, 42.037437>,  <29.890635, 31.744883, 42.223557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793657, 31.404360, 42.037437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592256, 0.249995, -0.765987,
		0.768410, -0.461283, 0.443581,
		-0.242444, -0.851305, -0.465296,
		29.720924, 31.148968, 41.897850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453482, 31.582870, 41.923534>,  <29.890635, 31.744883, 42.223557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453482, 31.582870, 41.923534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208464, 31.332500, 41.730453>,  <30.061453, 31.182278, 41.614605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208464, 31.332500, 41.730453>,  <30.453482, 31.582870, 41.923534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208464, 31.332500, 41.730453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590524, 0.043558, -0.805844,
		0.525425, -0.778665, 0.342943,
		-0.612544, -0.625927, -0.482707,
		30.024700, 31.144722, 41.585640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875904, 30.961021, 41.697903>,  <30.453482, 31.582870, 41.923534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875904, 30.961021, 41.697903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567549, 31.043449, 41.456818>,  <30.382536, 31.092907, 41.312164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567549, 31.043449, 41.456818>,  <30.875904, 30.961021, 41.697903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567549, 31.043449, 41.456818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636676, 0.220555, -0.738917,
		-0.019339, -0.953357, -0.301225,
		-0.770888, 0.206072, -0.602714,
		30.336283, 31.105270, 41.276005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168594, 30.871330, 41.004360>,  <30.875904, 30.961021, 41.697903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168594, 30.871330, 41.004360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818470, 31.058138, 40.954205>,  <30.608395, 31.170221, 40.924110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818470, 31.058138, 40.954205>,  <31.168594, 30.871330, 41.004360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818470, 31.058138, 40.954205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408972, 0.576626, -0.707280,
		-0.258010, -0.670371, -0.695725,
		-0.875313, 0.467017, -0.125387,
		30.555876, 31.198242, 40.916588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069677, 30.982166, 40.284306>,  <31.168594, 30.871330, 41.004360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069677, 30.982166, 40.284306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827150, 31.256117, 40.445961>,  <30.681635, 31.420486, 40.542953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827150, 31.256117, 40.445961>,  <31.069677, 30.982166, 40.284306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827150, 31.256117, 40.445961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314964, 0.673464, -0.668763,
		-0.730189, -0.278195, -0.624044,
		-0.606318, 0.684875, 0.404135,
		30.645254, 31.461580, 40.567200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625036, 31.298527, 39.746578>,  <31.069677, 30.982166, 40.284306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625036, 31.298527, 39.746578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.631840, 31.564568, 40.045200>,  <30.635921, 31.724192, 40.224373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.631840, 31.564568, 40.045200>,  <30.625036, 31.298527, 39.746578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631840, 31.564568, 40.045200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366138, 0.690659, -0.623646,
		-0.930405, 0.283950, -0.231773,
		0.017008, 0.665104, 0.746557,
		30.636942, 31.764099, 40.269169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449524, 31.888594, 39.359406>,  <30.625036, 31.298527, 39.746578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449524, 31.888594, 39.359406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612333, 32.015144, 39.702156>,  <30.710018, 32.091076, 39.907806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612333, 32.015144, 39.702156>,  <30.449524, 31.888594, 39.359406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612333, 32.015144, 39.702156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391219, 0.787319, -0.476525,
		-0.825398, 0.529183, 0.196684,
		0.407021, 0.316376, 0.856878,
		30.734440, 32.110058, 39.959221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460068, 32.600197, 39.231411>,  <30.449524, 31.888594, 39.359406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460068, 32.600197, 39.231411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702070, 32.572319, 39.548676>,  <30.847271, 32.555592, 39.739037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702070, 32.572319, 39.548676>,  <30.460068, 32.600197, 39.231411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702070, 32.572319, 39.548676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615377, 0.673053, -0.410258,
		-0.505250, 0.736304, 0.450087,
		0.605007, -0.069691, 0.793165,
		30.883572, 32.551411, 39.786625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601294, 33.234474, 39.454002>,  <30.460068, 32.600197, 39.231411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601294, 33.234474, 39.454002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910656, 33.029369, 39.603088>,  <31.096273, 32.906307, 39.692539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910656, 33.029369, 39.603088>,  <30.601294, 33.234474, 39.454002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910656, 33.029369, 39.603088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621418, 0.729423, -0.285976,
		-0.125228, 0.452787, 0.882781,
		0.773407, -0.512763, 0.372714,
		31.142677, 32.875542, 39.714901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007511, 33.759266, 39.768028>,  <30.601294, 33.234474, 39.454002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007511, 33.759266, 39.768028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234247, 33.446060, 39.665588>,  <31.370289, 33.258137, 39.604126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234247, 33.446060, 39.665588>,  <31.007511, 33.759266, 39.768028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234247, 33.446060, 39.665588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644668, 0.615141, -0.453878,
		0.512926, 0.092180, 0.853469,
		0.566842, -0.783010, -0.256096,
		31.404301, 33.211159, 39.588760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687168, 33.972198, 39.784626>,  <31.007511, 33.759266, 39.768028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687168, 33.972198, 39.784626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726759, 33.641853, 39.562584>,  <31.750513, 33.443645, 39.429359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726759, 33.641853, 39.562584>,  <31.687168, 33.972198, 39.784626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726759, 33.641853, 39.562584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651577, 0.475415, -0.591124,
		0.752098, -0.303188, 0.585172,
		0.098978, -0.825868, -0.555109,
		31.756453, 33.394093, 39.396049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385117, 33.932068, 39.630867>,  <31.687168, 33.972198, 39.784626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385117, 33.932068, 39.630867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225410, 33.691959, 39.353664>,  <32.129585, 33.547894, 39.187344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225410, 33.691959, 39.353664>,  <32.385117, 33.932068, 39.630867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225410, 33.691959, 39.353664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702684, 0.285167, -0.651855,
		0.588914, -0.747229, 0.307944,
		-0.399269, -0.600274, -0.693004,
		32.105629, 33.511879, 39.145763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001106, 33.624935, 40.007385>,  <32.385117, 33.932068, 39.630867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001106, 33.624935, 40.007385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177410, 33.873482, 40.266502>,  <33.283192, 34.022610, 40.421974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177410, 33.873482, 40.266502>,  <33.001106, 33.624935, 40.007385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177410, 33.873482, 40.266502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777877, -0.095722, 0.621084,
		0.447930, -0.777649, 0.441158,
		0.440757, 0.621369, 0.647792,
		33.309639, 34.059891, 40.460838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070251, 33.363667, 40.716858>,  <33.001106, 33.624935, 40.007385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070251, 33.363667, 40.716858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048962, 33.760212, 40.764809>,  <33.036186, 33.998138, 40.793579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.048962, 33.760212, 40.764809>,  <33.070251, 33.363667, 40.716858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048962, 33.760212, 40.764809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531983, -0.129742, 0.836756,
		0.845080, -0.019232, 0.534293,
		-0.053228, 0.991361, 0.119873,
		33.032993, 34.057621, 40.800770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386723, 33.504009, 41.415211>,  <33.070251, 33.363667, 40.716858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386723, 33.504009, 41.415211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166943, 33.822475, 41.313835>,  <33.035076, 34.013554, 41.253010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166943, 33.822475, 41.313835>,  <33.386723, 33.504009, 41.415211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166943, 33.822475, 41.313835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482251, -0.054489, 0.874337,
		0.682304, 0.602626, 0.413888,
		-0.549451, 0.796161, -0.253439,
		33.002106, 34.061325, 41.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413643, 34.052166, 41.924183>,  <33.386723, 33.504009, 41.415211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413643, 34.052166, 41.924183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067108, 34.103199, 41.731026>,  <32.859188, 34.133820, 41.615131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067108, 34.103199, 41.731026>,  <33.413643, 34.052166, 41.924183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067108, 34.103199, 41.731026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485789, 0.009416, 0.874025,
		0.116053, 0.991784, 0.053818,
		-0.866337, 0.127578, -0.482891,
		32.807205, 34.141472, 41.586159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015419, 34.439045, 42.344715>,  <33.413643, 34.052166, 41.924183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015419, 34.439045, 42.344715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756443, 34.296803, 42.075089>,  <32.601059, 34.211456, 41.913311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756443, 34.296803, 42.075089>,  <33.015419, 34.439045, 42.344715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756443, 34.296803, 42.075089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643470, -0.218867, 0.733515,
		-0.408372, 0.908649, -0.087117,
		-0.647440, -0.355604, -0.674067,
		32.562210, 34.190121, 41.872868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447845, 34.698906, 42.564503>,  <33.015419, 34.439045, 42.344715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447845, 34.698906, 42.564503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295170, 34.434349, 42.306236>,  <32.203564, 34.275616, 42.151276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295170, 34.434349, 42.306236>,  <32.447845, 34.698906, 42.564503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295170, 34.434349, 42.306236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708734, -0.238978, 0.663766,
		-0.593306, 0.710954, -0.377535,
		-0.381685, -0.661388, -0.645664,
		32.180664, 34.235931, 42.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686481, 34.797394, 42.602180>,  <32.447845, 34.698906, 42.564503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686481, 34.797394, 42.602180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787739, 34.439735, 42.454441>,  <31.848494, 34.225140, 42.365799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787739, 34.439735, 42.454441>,  <31.686481, 34.797394, 42.602180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787739, 34.439735, 42.454441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681179, -0.435837, 0.588252,
		-0.686959, 0.102677, -0.719406,
		0.253143, -0.894150, -0.369344,
		31.863682, 34.171490, 42.343639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049295, 34.489822, 42.433739>,  <31.686481, 34.797394, 42.602180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049295, 34.489822, 42.433739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328276, 34.206856, 42.479572>,  <31.495665, 34.037075, 42.507072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328276, 34.206856, 42.479572>,  <31.049295, 34.489822, 42.433739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328276, 34.206856, 42.479572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592589, -0.479391, 0.647320,
		-0.402991, -0.519375, -0.753556,
		0.697450, -0.707413, 0.114586,
		31.537512, 33.994633, 42.513950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665823, 33.882839, 42.298038>,  <31.049295, 34.489822, 42.433739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665823, 33.882839, 42.298038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988264, 33.776108, 42.509319>,  <31.181728, 33.712067, 42.636089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988264, 33.776108, 42.509319>,  <30.665823, 33.882839, 42.298038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988264, 33.776108, 42.509319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578555, -0.542966, 0.608656,
		0.124388, -0.796234, -0.592063,
		0.806103, -0.266831, 0.528204,
		31.230095, 33.696060, 42.667782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454126, 33.218792, 42.657597>,  <30.665823, 33.882839, 42.298038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454126, 33.218792, 42.657597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786322, 33.314129, 42.858982>,  <30.985640, 33.371330, 42.979813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.786322, 33.314129, 42.858982>,  <30.454126, 33.218792, 42.657597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786322, 33.314129, 42.858982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306109, -0.559851, 0.769977,
		0.465388, -0.793573, -0.391989,
		0.830489, 0.238347, 0.503468,
		31.035469, 33.385632, 43.010021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719868, 32.595512, 42.932499>,  <30.454126, 33.218792, 42.657597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719868, 32.595512, 42.932499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859476, 32.896179, 43.156349>,  <30.943241, 33.076580, 43.290661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859476, 32.896179, 43.156349>,  <30.719868, 32.595512, 42.932499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859476, 32.896179, 43.156349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298968, -0.476662, 0.826687,
		0.888146, -0.455841, 0.058360,
		0.349020, 0.751667, 0.559627,
		30.964182, 33.121677, 43.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936617, 32.188599, 43.469276>,  <30.719868, 32.595512, 42.932499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936617, 32.188599, 43.469276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937269, 32.557159, 43.624718>,  <30.937660, 32.778297, 43.717983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.937269, 32.557159, 43.624718>,  <30.936617, 32.188599, 43.469276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937269, 32.557159, 43.624718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257494, -0.375110, 0.890499,
		0.966278, -0.101513, 0.236645,
		0.001629, 0.921405, 0.388600,
		30.937757, 32.833580, 43.741299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422729, 32.215321, 44.011791>,  <30.936617, 32.188599, 43.469276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422729, 32.215321, 44.011791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.168156, 32.513008, 44.092869>,  <31.015411, 32.691620, 44.141514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.168156, 32.513008, 44.092869>,  <31.422729, 32.215321, 44.011791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168156, 32.513008, 44.092869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166596, -0.389206, 0.905960,
		0.753124, 0.542818, 0.371689,
		-0.636435, 0.744223, 0.202690,
		30.977224, 32.736275, 44.153675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539610, 32.415123, 44.669460>,  <31.422729, 32.215321, 44.011791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539610, 32.415123, 44.669460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.162218, 32.494579, 44.563339>,  <30.935783, 32.542255, 44.499668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.162218, 32.494579, 44.563339>,  <31.539610, 32.415123, 44.669460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162218, 32.494579, 44.563339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319994, -0.337568, 0.885241,
		0.086291, 0.920103, 0.382053,
		-0.943482, 0.198643, -0.265298,
		30.879173, 32.554173, 44.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047253, 33.024689, 44.875320>,  <31.539610, 32.415123, 44.669460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047253, 33.024689, 44.875320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312962, 33.154125, 45.144848>,  <32.472385, 33.231785, 45.306564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312962, 33.154125, 45.144848>,  <32.047253, 33.024689, 44.875320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312962, 33.154125, 45.144848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551918, 0.395618, -0.734079,
		-0.504116, 0.859521, 0.084202,
		0.664269, 0.323588, 0.673823,
		32.512241, 33.251202, 45.346996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235493, 33.704807, 44.651745>,  <32.047253, 33.024689, 44.875320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235493, 33.704807, 44.651745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524548, 33.610050, 44.911488>,  <32.697983, 33.553196, 45.067333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.524548, 33.610050, 44.911488>,  <32.235493, 33.704807, 44.651745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524548, 33.610050, 44.911488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671613, 0.462821, -0.578561,
		-0.163478, 0.854211, 0.493557,
		0.722642, -0.236897, 0.649360,
		32.741341, 33.538982, 45.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574078, 34.267094, 44.698776>,  <32.235493, 33.704807, 44.651745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574078, 34.267094, 44.698776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.837288, 33.993420, 44.824566>,  <32.995216, 33.829216, 44.900040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.837288, 33.993420, 44.824566>,  <32.574078, 34.267094, 44.698776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837288, 33.993420, 44.824566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667951, 0.337571, -0.663239,
		0.347618, 0.646485, 0.679131,
		0.658030, -0.684180, 0.314475,
		33.034698, 33.788166, 44.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288475, 34.663292, 44.914204>,  <32.574078, 34.267094, 44.698776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288475, 34.663292, 44.914204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344494, 34.280254, 44.813492>,  <33.378105, 34.050430, 44.753063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344494, 34.280254, 44.813492>,  <33.288475, 34.663292, 44.914204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344494, 34.280254, 44.813492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675880, 0.278284, -0.682455,
		0.723583, -0.074594, 0.686195,
		0.140050, -0.957598, -0.251778,
		33.386509, 33.992973, 44.737957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961716, 34.662785, 44.834431>,  <33.288475, 34.663292, 44.914204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961716, 34.662785, 44.834431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849331, 34.326488, 44.649296>,  <33.781898, 34.124710, 44.538216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849331, 34.326488, 44.649296>,  <33.961716, 34.662785, 44.834431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849331, 34.326488, 44.649296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834999, 0.023597, -0.549746,
		0.473114, -0.540927, 0.695386,
		-0.280963, -0.840739, -0.462837,
		33.765041, 34.074268, 44.510445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541134, 34.234756, 44.897877>,  <33.961716, 34.662785, 44.834431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541134, 34.234756, 44.897877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353474, 34.043030, 44.601189>,  <34.240875, 33.927994, 44.423176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353474, 34.043030, 44.601189>,  <34.541134, 34.234756, 44.897877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353474, 34.043030, 44.601189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822966, 0.067373, -0.564081,
		0.320346, -0.875052, 0.362854,
		-0.469153, -0.479317, -0.741721,
		34.212727, 33.899235, 44.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937199, 33.667381, 44.657887>,  <34.541134, 34.234756, 44.897877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937199, 33.667381, 44.657887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689453, 33.742596, 44.352985>,  <34.540806, 33.787724, 44.170044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689453, 33.742596, 44.352985>,  <34.937199, 33.667381, 44.657887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689453, 33.742596, 44.352985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783467, 0.085330, -0.615548,
		-0.050703, -0.978448, -0.200171,
		-0.619362, 0.188037, -0.762255,
		34.503643, 33.799007, 44.124310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227127, 33.330280, 43.970882>,  <34.937199, 33.667381, 44.657887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227127, 33.330280, 43.970882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969414, 33.607380, 43.841267>,  <34.814785, 33.773640, 43.763496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969414, 33.607380, 43.841267>,  <35.227127, 33.330280, 43.970882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969414, 33.607380, 43.841267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617082, 0.220587, -0.755349,
		-0.451784, -0.686619, -0.569601,
		-0.644283, 0.692745, -0.324043,
		34.776131, 33.815205, 43.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120411, 33.258438, 43.211555>,  <35.227127, 33.330280, 43.970882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120411, 33.258438, 43.211555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050255, 33.643009, 43.296303>,  <35.008160, 33.873753, 43.347153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050255, 33.643009, 43.296303>,  <35.120411, 33.258438, 43.211555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050255, 33.643009, 43.296303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631658, 0.274967, -0.724846,
		-0.755146, 0.006695, -0.655522,
		-0.175394, 0.961430, 0.211869,
		34.997635, 33.931438, 43.359863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979832, 33.565304, 42.518391>,  <35.120411, 33.258438, 43.211555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979832, 33.565304, 42.518391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092682, 33.876129, 42.743454>,  <35.160393, 34.062626, 42.878490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092682, 33.876129, 42.743454>,  <34.979832, 33.565304, 42.518391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092682, 33.876129, 42.743454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696412, 0.237507, -0.677201,
		-0.659862, 0.582894, -0.474149,
		0.282122, 0.777062, 0.562656,
		35.177319, 34.109249, 42.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124077, 34.088261, 42.021370>,  <34.979832, 33.565304, 42.518391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124077, 34.088261, 42.021370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307549, 34.181309, 42.364414>,  <35.417633, 34.237137, 42.570240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307549, 34.181309, 42.364414>,  <35.124077, 34.088261, 42.021370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307549, 34.181309, 42.364414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747123, 0.421531, -0.513924,
		-0.481060, 0.876469, 0.019551,
		0.458680, 0.232621, 0.857613,
		35.445152, 34.251095, 42.621696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094707, 34.860073, 42.055458>,  <35.124077, 34.088261, 42.021370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094707, 34.860073, 42.055458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400513, 34.713791, 42.267792>,  <35.583996, 34.626022, 42.395191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400513, 34.713791, 42.267792>,  <35.094707, 34.860073, 42.055458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400513, 34.713791, 42.267792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641370, 0.349067, -0.683225,
		0.064567, 0.862791, 0.501421,
		0.764510, -0.365710, 0.530830,
		35.629868, 34.604076, 42.427040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478168, 35.440964, 42.096348>,  <35.094707, 34.860073, 42.055458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478168, 35.440964, 42.096348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702950, 35.114403, 42.149551>,  <35.837818, 34.918465, 42.181473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702950, 35.114403, 42.149551>,  <35.478168, 35.440964, 42.096348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702950, 35.114403, 42.149551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650454, 0.336812, -0.680784,
		0.510996, 0.469086, 0.720306,
		0.561954, -0.816404, 0.133009,
		35.871536, 34.869480, 42.189453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076538, 35.603989, 41.784836>,  <35.478168, 35.440964, 42.096348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076538, 35.603989, 41.784836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167465, 35.222977, 41.865849>,  <36.222023, 34.994370, 41.914455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167465, 35.222977, 41.865849>,  <36.076538, 35.603989, 41.784836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167465, 35.222977, 41.865849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755507, 0.041275, -0.653839,
		0.614440, 0.301643, 0.729024,
		0.227317, -0.952527, 0.202532,
		36.235661, 34.937218, 41.926609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.300468, 41.071266, 27.789406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255127, 41.376999, 28.043320>,  <25.227922, 41.560436, 28.195669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255127, 41.376999, 28.043320>,  <25.300468, 41.071266, 27.789406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255127, 41.376999, 28.043320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057367, -0.642874, 0.763821,
		0.991897, 0.050166, 0.116720,
		-0.113354, 0.764328, 0.634787,
		25.221121, 41.606297, 28.233755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944908, 41.153591, 28.214718>,  <25.300468, 41.071266, 27.789406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944908, 41.153591, 28.214718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.624752, 41.304893, 28.400749>,  <25.432659, 41.395676, 28.512369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.624752, 41.304893, 28.400749>,  <25.944908, 41.153591, 28.214718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624752, 41.304893, 28.400749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163101, -0.609136, 0.776113,
		0.576867, 0.697047, 0.425852,
		-0.800389, 0.378257, 0.465080,
		25.384636, 41.418369, 28.540274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133625, 41.197182, 28.941612>,  <25.944908, 41.153591, 28.214718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133625, 41.197182, 28.941612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734364, 41.221474, 28.941975>,  <25.494806, 41.236050, 28.942192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734364, 41.221474, 28.941975>,  <26.133625, 41.197182, 28.941612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734364, 41.221474, 28.941975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034207, -0.574433, 0.817837,
		0.050189, 0.816296, 0.575450,
		-0.998154, 0.060731, 0.000907,
		25.434917, 41.239693, 28.942247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970945, 41.250916, 29.703384>,  <26.133625, 41.197182, 28.941612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970945, 41.250916, 29.703384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633186, 41.143669, 29.517866>,  <25.430531, 41.079323, 29.406555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633186, 41.143669, 29.517866>,  <25.970945, 41.250916, 29.703384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633186, 41.143669, 29.517866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161973, -0.697456, 0.698083,
		-0.510644, 0.664583, 0.545503,
		-0.844398, -0.268115, -0.463796,
		25.379868, 41.063236, 29.378727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408869, 41.117149, 30.234524>,  <25.970945, 41.250916, 29.703384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408869, 41.117149, 30.234524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290617, 40.917778, 29.908537>,  <25.219666, 40.798157, 29.712944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.290617, 40.917778, 29.908537>,  <25.408869, 41.117149, 30.234524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290617, 40.917778, 29.908537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331972, -0.746332, 0.576873,
		-0.895767, 0.441087, 0.055173,
		-0.295628, -0.498428, -0.814968,
		25.201929, 40.768250, 29.664047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664572, 40.991032, 30.338028>,  <25.408869, 41.117149, 30.234524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664572, 40.991032, 30.338028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.789482, 40.725887, 30.065823>,  <24.864428, 40.566799, 29.902500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.789482, 40.725887, 30.065823>,  <24.664572, 40.991032, 30.338028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789482, 40.725887, 30.065823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386256, -0.743045, 0.546526,
		-0.867924, 0.092187, -0.488067,
		0.312273, -0.662862, -0.680514,
		24.883163, 40.527027, 29.861668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131971, 40.518562, 30.277945>,  <24.664572, 40.991032, 30.338028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131971, 40.518562, 30.277945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.439749, 40.306278, 30.135786>,  <24.624414, 40.178909, 30.050491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.439749, 40.306278, 30.135786>,  <24.131971, 40.518562, 30.277945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439749, 40.306278, 30.135786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274710, -0.777301, 0.565983,
		-0.576623, -0.337860, -0.743879,
		0.769442, -0.530710, -0.355397,
		24.670582, 40.147064, 30.029167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.912148, 39.849743, 30.160292>,  <24.131971, 40.518562, 30.277945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.912148, 39.849743, 30.160292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.306883, 39.789635, 30.136381>,  <24.543724, 39.753571, 30.122034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.306883, 39.789635, 30.136381>,  <23.912148, 39.849743, 30.160292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306883, 39.789635, 30.136381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104662, -0.875196, 0.472311,
		-0.123291, -0.459838, -0.879402,
		0.986836, -0.150272, -0.059776,
		24.602934, 39.744553, 30.118448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.011131, 39.112652, 29.993504>,  <23.912148, 39.849743, 30.160292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.011131, 39.112652, 29.993504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.357985, 39.239586, 30.147064>,  <24.566095, 39.315746, 30.239201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.357985, 39.239586, 30.147064>,  <24.011131, 39.112652, 29.993504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357985, 39.239586, 30.147064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017526, -0.750846, 0.660244,
		0.497771, -0.579247, -0.645521,
		0.867132, 0.317337, 0.383902,
		24.618124, 39.334785, 30.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555090, 38.541428, 29.942316>,  <24.011131, 39.112652, 29.993504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555090, 38.541428, 29.942316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.659447, 38.792793, 30.235447>,  <24.722061, 38.943611, 30.411325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.659447, 38.792793, 30.235447>,  <24.555090, 38.541428, 29.942316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659447, 38.792793, 30.235447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131448, -0.775169, 0.617927,
		0.956377, -0.064884, -0.284839,
		0.260892, 0.628413, 0.732826,
		24.737715, 38.981316, 30.455294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325369, 38.414936, 30.118460>,  <24.555090, 38.541428, 29.942316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325369, 38.414936, 30.118460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.186283, 38.578487, 30.455959>,  <25.102833, 38.676617, 30.658459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.186283, 38.578487, 30.455959>,  <25.325369, 38.414936, 30.118460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186283, 38.578487, 30.455959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344249, -0.781379, 0.520519,
		0.872117, 0.471452, 0.130940,
		-0.347713, 0.408877, 0.843750,
		25.081968, 38.701149, 30.709084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844498, 38.501415, 30.606560>,  <25.325369, 38.414936, 30.118460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844498, 38.501415, 30.606560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.530987, 38.512451, 30.854731>,  <25.342880, 38.519073, 31.003633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.530987, 38.512451, 30.854731>,  <25.844498, 38.501415, 30.606560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530987, 38.512451, 30.854731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414525, -0.720662, 0.555711,
		0.462452, 0.692737, 0.553401,
		-0.783777, 0.027591, 0.620429,
		25.295855, 38.520729, 31.040859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175438, 38.608307, 31.170607>,  <25.844498, 38.501415, 30.606560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175438, 38.608307, 31.170607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814932, 38.481106, 31.288317>,  <25.598629, 38.404785, 31.358942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814932, 38.481106, 31.288317>,  <26.175438, 38.608307, 31.170607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814932, 38.481106, 31.288317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429117, -0.561342, 0.707639,
		-0.059842, 0.764048, 0.642378,
		-0.901264, -0.318002, 0.294275,
		25.544552, 38.385704, 31.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153923, 38.432533, 31.924696>,  <26.175438, 38.608307, 31.170607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153923, 38.432533, 31.924696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.812958, 38.243313, 31.835598>,  <25.608379, 38.129780, 31.782139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.812958, 38.243313, 31.835598>,  <26.153923, 38.432533, 31.924696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812958, 38.243313, 31.835598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201661, -0.690477, 0.694676,
		-0.482417, 0.547232, 0.683968,
		-0.852412, -0.473053, -0.222743,
		25.557234, 38.101398, 31.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956827, 38.234165, 32.526402>,  <26.153923, 38.432533, 31.924696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956827, 38.234165, 32.526402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744678, 37.992203, 32.288815>,  <25.617390, 37.847023, 32.146263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744678, 37.992203, 32.288815>,  <25.956827, 38.234165, 32.526402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744678, 37.992203, 32.288815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133461, -0.751461, 0.646138,
		-0.837195, 0.263421, 0.479284,
		-0.530370, -0.604910, -0.593963,
		25.585567, 37.810730, 32.110626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413162, 37.852913, 32.890602>,  <25.956827, 38.234165, 32.526402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413162, 37.852913, 32.890602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.499624, 37.633678, 32.567398>,  <25.551502, 37.502140, 32.373474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.499624, 37.633678, 32.567398>,  <25.413162, 37.852913, 32.890602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499624, 37.633678, 32.567398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422590, -0.693523, 0.583476,
		-0.880167, -0.467579, 0.081705,
		0.216156, -0.548084, -0.808010,
		25.564470, 37.469254, 32.324997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211872, 37.143192, 33.058174>,  <25.413162, 37.852913, 32.890602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211872, 37.143192, 33.058174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.468716, 37.111431, 32.753178>,  <25.622822, 37.092377, 32.570179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.468716, 37.111431, 32.753178>,  <25.211872, 37.143192, 33.058174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468716, 37.111431, 32.753178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421809, -0.793934, 0.437888,
		-0.640135, -0.602798, -0.476301,
		0.642110, -0.079399, -0.762490,
		25.661348, 37.087612, 32.524429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277533, 36.566853, 32.796642>,  <25.211872, 37.143192, 33.058174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277533, 36.566853, 32.796642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.640617, 36.699062, 32.693249>,  <25.858469, 36.778389, 32.631214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.640617, 36.699062, 32.693249>,  <25.277533, 36.566853, 32.796642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640617, 36.699062, 32.693249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383506, -0.903467, 0.191498,
		-0.170234, -0.272954, -0.946846,
		0.907714, 0.330521, -0.258480,
		25.912931, 36.798218, 32.615704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565071, 35.970367, 32.259781>,  <25.277533, 36.566853, 32.796642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565071, 35.970367, 32.259781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854309, 36.191395, 32.425575>,  <26.027851, 36.324013, 32.525051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854309, 36.191395, 32.425575>,  <25.565071, 35.970367, 32.259781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854309, 36.191395, 32.425575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535958, -0.827364, 0.167985,
		0.435757, 0.100680, -0.894415,
		0.723094, 0.552569, 0.414490,
		26.071238, 36.357166, 32.549923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100889, 35.599045, 32.099663>,  <25.565071, 35.970367, 32.259781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100889, 35.599045, 32.099663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247391, 35.838329, 32.384762>,  <26.335291, 35.981899, 32.555820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247391, 35.838329, 32.384762>,  <26.100889, 35.599045, 32.099663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247391, 35.838329, 32.384762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605269, -0.734936, 0.305808,
		0.706759, 0.319400, -0.631250,
		0.366253, 0.598208, 0.712745,
		26.357267, 36.017792, 32.598587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853886, 35.468243, 32.121792>,  <26.100889, 35.599045, 32.099663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853886, 35.468243, 32.121792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755785, 35.647167, 32.465828>,  <26.696924, 35.754524, 32.672249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.755785, 35.647167, 32.465828>,  <26.853886, 35.468243, 32.121792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755785, 35.647167, 32.465828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609015, -0.619190, 0.495686,
		0.754289, 0.645378, -0.120563,
		-0.245253, 0.447315, 0.860093,
		26.682209, 35.781361, 32.723854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378410, 35.453285, 32.753956>,  <26.853886, 35.468243, 32.121792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378410, 35.453285, 32.753956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756960, 35.567612, 32.814209>,  <27.984089, 35.636208, 32.850361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756960, 35.567612, 32.814209>,  <27.378410, 35.453285, 32.753956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756960, 35.567612, 32.814209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155183, 0.811072, -0.563987,
		-0.283367, 0.510366, 0.811929,
		0.946373, 0.285813, 0.150631,
		28.040873, 35.653355, 32.859398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366047, 36.227821, 32.833054>,  <27.378410, 35.453285, 32.753956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366047, 36.227821, 32.833054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741472, 36.119621, 32.747334>,  <27.966728, 36.054699, 32.695900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741472, 36.119621, 32.747334>,  <27.366047, 36.227821, 32.833054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741472, 36.119621, 32.747334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120557, 0.838850, -0.530845,
		0.323363, 0.472396, 0.819925,
		0.938564, -0.270504, -0.214302,
		28.023041, 36.038471, 32.683044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749428, 36.783779, 32.846127>,  <27.366047, 36.227821, 32.833054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749428, 36.783779, 32.846127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994947, 36.557892, 32.625458>,  <28.142260, 36.422359, 32.493057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994947, 36.557892, 32.625458>,  <27.749428, 36.783779, 32.846127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994947, 36.557892, 32.625458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144650, 0.767413, -0.624623,
		0.776097, 0.303593, 0.552724,
		0.613799, -0.564720, -0.551672,
		28.179087, 36.388477, 32.459957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351284, 37.220222, 32.798351>,  <27.749428, 36.783779, 32.846127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351284, 37.220222, 32.798351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379251, 36.947365, 32.507206>,  <28.396032, 36.783649, 32.332520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379251, 36.947365, 32.507206>,  <28.351284, 37.220222, 32.798351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379251, 36.947365, 32.507206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282228, 0.713368, -0.641446,
		0.956796, -0.160574, 0.242399,
		0.069920, -0.682145, -0.727866,
		28.400227, 36.742722, 32.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082920, 37.279644, 32.473122>,  <28.351284, 37.220222, 32.798351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082920, 37.279644, 32.473122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856163, 37.084984, 32.207249>,  <28.720110, 36.968189, 32.047726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856163, 37.084984, 32.207249>,  <29.082920, 37.279644, 32.473122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856163, 37.084984, 32.207249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330677, 0.604577, -0.724665,
		0.754512, -0.630602, -0.181805,
		-0.566890, -0.486650, -0.664686,
		28.686096, 36.938988, 32.007843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547237, 37.215412, 31.840816>,  <29.082920, 37.279644, 32.473122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547237, 37.215412, 31.840816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185982, 37.155685, 31.679800>,  <28.969229, 37.119850, 31.583189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185982, 37.155685, 31.679800>,  <29.547237, 37.215412, 31.840816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185982, 37.155685, 31.679800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270054, 0.531321, -0.802975,
		0.333777, -0.833908, -0.439534,
		-0.903141, -0.149317, -0.402543,
		28.915039, 37.110889, 31.559036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680588, 36.861580, 31.147923>,  <29.547237, 37.215412, 31.840816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680588, 36.861580, 31.147923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.319477, 37.032597, 31.129160>,  <29.102810, 37.135208, 31.117903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.319477, 37.032597, 31.129160>,  <29.680588, 36.861580, 31.147923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319477, 37.032597, 31.129160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300040, 0.547871, -0.780905,
		-0.308175, -0.719056, -0.622886,
		-0.902776, 0.427546, -0.046905,
		29.048645, 37.160862, 31.115088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487736, 36.809841, 30.437389>,  <29.680588, 36.861580, 31.147923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487736, 36.809841, 30.437389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241394, 37.089462, 30.582747>,  <29.093588, 37.257233, 30.669960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.241394, 37.089462, 30.582747>,  <29.487736, 36.809841, 30.437389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241394, 37.089462, 30.582747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335516, 0.650028, -0.681830,
		-0.712847, -0.297985, -0.634866,
		-0.615856, 0.699048, 0.363392,
		29.056637, 37.299175, 30.691765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916697, 37.021671, 29.952814>,  <29.487736, 36.809841, 30.437389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916697, 37.021671, 29.952814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939398, 37.338074, 30.196480>,  <28.953018, 37.527916, 30.342680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939398, 37.338074, 30.196480>,  <28.916697, 37.021671, 29.952814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939398, 37.338074, 30.196480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005719, 0.610395, -0.792076,
		-0.998372, 0.041470, 0.039166,
		0.056753, 0.791011, 0.609164,
		28.956425, 37.575378, 30.379229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442238, 37.493607, 29.770481>,  <28.916697, 37.021671, 29.952814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442238, 37.493607, 29.770481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677320, 37.742725, 29.977060>,  <28.818371, 37.892197, 30.101007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677320, 37.742725, 29.977060>,  <28.442238, 37.493607, 29.770481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677320, 37.742725, 29.977060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206400, 0.732611, -0.648599,
		-0.782303, 0.274592, 0.559108,
		0.587709, 0.622801, 0.516448,
		28.853634, 37.929565, 30.131994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083582, 38.227135, 29.770603>,  <28.442238, 37.493607, 29.770481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083582, 38.227135, 29.770603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471380, 38.271175, 29.858200>,  <28.704060, 38.297600, 29.910759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.471380, 38.271175, 29.858200>,  <28.083582, 38.227135, 29.770603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471380, 38.271175, 29.858200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040601, 0.808958, -0.586463,
		-0.241728, 0.577463, 0.779810,
		0.969494, 0.110104, 0.218993,
		28.762228, 38.304207, 29.923899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118946, 38.929443, 29.891014>,  <28.083582, 38.227135, 29.770603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118946, 38.929443, 29.891014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499258, 38.826908, 29.821381>,  <28.727446, 38.765388, 29.779600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499258, 38.826908, 29.821381>,  <28.118946, 38.929443, 29.891014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499258, 38.826908, 29.821381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066594, 0.717727, -0.693133,
		0.302622, 0.647425, 0.699472,
		0.950781, -0.256338, -0.174086,
		28.784492, 38.750008, 29.769156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528854, 39.650238, 29.823925>,  <28.118946, 38.929443, 29.891014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528854, 39.650238, 29.823925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772520, 39.363239, 29.688805>,  <28.918720, 39.191040, 29.607733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772520, 39.363239, 29.688805>,  <28.528854, 39.650238, 29.823925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772520, 39.363239, 29.688805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408508, 0.648995, -0.641815,
		0.679733, 0.252978, 0.688451,
		0.609166, -0.717501, -0.337800,
		28.955271, 39.147987, 29.587465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109674, 39.818089, 30.044638>,  <28.528854, 39.650238, 29.823925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109674, 39.818089, 30.044638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155012, 39.610664, 29.705639>,  <29.182215, 39.486210, 29.502239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155012, 39.610664, 29.705639>,  <29.109674, 39.818089, 30.044638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155012, 39.610664, 29.705639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385002, 0.809272, -0.443680,
		0.915929, -0.276001, 0.291371,
		0.113342, -0.518558, -0.847497,
		29.189014, 39.455097, 29.451389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767326, 39.986332, 29.779520>,  <29.109674, 39.818089, 30.044638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767326, 39.986332, 29.779520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572571, 39.821800, 29.471300>,  <29.455717, 39.723080, 29.286369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572571, 39.821800, 29.471300>,  <29.767326, 39.986332, 29.779520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572571, 39.821800, 29.471300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093422, 0.852591, -0.514160,
		0.868454, -0.322325, -0.376689,
		-0.486888, -0.411333, -0.770548,
		29.426504, 39.698399, 29.240135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150757, 40.238182, 29.133108>,  <29.767326, 39.986332, 29.779520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150757, 40.238182, 29.133108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794506, 40.115971, 28.998390>,  <29.580755, 40.042645, 28.917561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794506, 40.115971, 28.998390>,  <30.150757, 40.238182, 29.133108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794506, 40.115971, 28.998390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003264, 0.736329, -0.676615,
		0.454719, -0.603712, -0.654799,
		-0.890629, -0.305533, -0.336793,
		29.527317, 40.024311, 28.897352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125656, 40.195290, 28.255138>,  <30.150757, 40.238182, 29.133108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125656, 40.195290, 28.255138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758442, 40.251213, 28.403549>,  <29.538113, 40.284767, 28.492596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758442, 40.251213, 28.403549>,  <30.125656, 40.195290, 28.255138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758442, 40.251213, 28.403549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103658, 0.818594, -0.564941,
		-0.382706, -0.557096, -0.737007,
		-0.918036, 0.139810, 0.371028,
		29.483030, 40.293156, 28.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572481, 40.347527, 27.690765>,  <30.125656, 40.195290, 28.255138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572481, 40.347527, 27.690765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384241, 40.504017, 28.007113>,  <29.271297, 40.597912, 28.196920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384241, 40.504017, 28.007113>,  <29.572481, 40.347527, 27.690765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384241, 40.504017, 28.007113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370169, 0.726093, -0.579452,
		-0.800944, -0.565445, -0.196878,
		-0.470600, 0.391230, 0.790869,
		29.243061, 40.621387, 28.244373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054100, 40.700542, 27.401766>,  <29.572481, 40.347527, 27.690765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054100, 40.700542, 27.401766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059452, 40.837669, 27.777489>,  <29.062664, 40.919945, 28.002922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059452, 40.837669, 27.777489>,  <29.054100, 40.700542, 27.401766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059452, 40.837669, 27.777489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334074, 0.886941, -0.318950,
		-0.942452, -0.309530, 0.126396,
		0.013382, 0.342821, 0.939305,
		29.063467, 40.940517, 28.059280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410318, 40.990459, 27.549311>,  <29.054100, 40.700542, 27.401766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410318, 40.990459, 27.549311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672115, 41.150345, 27.806019>,  <28.829193, 41.246277, 27.960043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672115, 41.150345, 27.806019>,  <28.410318, 40.990459, 27.549311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672115, 41.150345, 27.806019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305399, 0.916260, -0.259226,
		-0.691645, -0.026334, 0.721758,
		0.654491, 0.399716, 0.641769,
		28.868464, 41.270260, 27.998550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010677, 41.323284, 27.931852>,  <28.410318, 40.990459, 27.549311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010677, 41.323284, 27.931852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384787, 41.464611, 27.940191>,  <28.609251, 41.549408, 27.945194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384787, 41.464611, 27.940191>,  <28.010677, 41.323284, 27.931852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384787, 41.464611, 27.940191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344617, 0.922502, -0.173867,
		-0.080664, 0.155427, 0.984549,
		0.935271, 0.353317, 0.020849,
		28.665367, 41.570606, 27.946445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.766403, 28.823280, 46.139282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389137, 28.777088, 46.014637>,  <36.162777, 28.749372, 45.939850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389137, 28.777088, 46.014637>,  <36.766403, 28.823280, 46.139282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389137, 28.777088, 46.014637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284923, -0.201642, 0.937102,
		-0.171054, 0.972627, 0.157278,
		-0.943165, -0.115483, -0.311615,
		36.106190, 28.742443, 45.921154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308922, 29.281683, 46.600594>,  <36.766403, 28.823280, 46.139282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308922, 29.281683, 46.600594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072304, 28.999361, 46.444691>,  <35.930332, 28.829967, 46.351147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072304, 28.999361, 46.444691>,  <36.308922, 29.281683, 46.600594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072304, 28.999361, 46.444691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363938, -0.197620, 0.910217,
		-0.719461, 0.680283, -0.139969,
		-0.591545, -0.705806, -0.389761,
		35.894840, 28.787619, 46.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588120, 29.476904, 46.710239>,  <36.308922, 29.281683, 46.600594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588120, 29.476904, 46.710239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559967, 29.085123, 46.634636>,  <35.543076, 28.850056, 46.589275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559967, 29.085123, 46.634636>,  <35.588120, 29.476904, 46.710239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559967, 29.085123, 46.634636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687297, -0.089712, 0.720816,
		-0.722959, 0.180636, -0.666859,
		-0.070380, -0.979450, -0.189008,
		35.538853, 28.791288, 46.577934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882954, 29.255714, 46.745205>,  <35.588120, 29.476904, 46.710239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882954, 29.255714, 46.745205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067230, 28.906422, 46.808743>,  <35.177795, 28.696846, 46.846867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067230, 28.906422, 46.808743>,  <34.882954, 29.255714, 46.745205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067230, 28.906422, 46.808743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695028, -0.243631, 0.676446,
		-0.551994, -0.422035, -0.719159,
		0.460693, -0.873230, 0.158843,
		35.205437, 28.644453, 46.856396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368458, 28.744102, 46.867535>,  <34.882954, 29.255714, 46.745205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368458, 28.744102, 46.867535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706367, 28.576250, 47.000359>,  <34.909115, 28.475538, 47.080051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706367, 28.576250, 47.000359>,  <34.368458, 28.744102, 46.867535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706367, 28.576250, 47.000359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445277, -0.207093, 0.871115,
		-0.296778, -0.883756, -0.361799,
		0.844779, -0.419628, 0.332056,
		34.959801, 28.450361, 47.099976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151806, 28.161890, 47.147106>,  <34.368458, 28.744102, 46.867535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151806, 28.161890, 47.147106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498531, 28.235847, 47.332340>,  <34.706566, 28.280222, 47.443481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.498531, 28.235847, 47.332340>,  <34.151806, 28.161890, 47.147106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498531, 28.235847, 47.332340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425409, -0.210260, 0.880237,
		0.260118, -0.960003, -0.103601,
		0.866813, 0.184892, 0.463086,
		34.758575, 28.291315, 47.471268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234135, 27.605606, 47.602394>,  <34.151806, 28.161890, 47.147106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234135, 27.605606, 47.602394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461575, 27.891060, 47.766064>,  <34.598038, 28.062332, 47.864265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461575, 27.891060, 47.766064>,  <34.234135, 27.605606, 47.602394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461575, 27.891060, 47.766064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433698, -0.162601, 0.886266,
		0.699003, -0.681385, 0.217048,
		0.568596, 0.713636, 0.409174,
		34.632153, 28.105150, 47.888817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273972, 27.439774, 48.298565>,  <34.234135, 27.605606, 47.602394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273972, 27.439774, 48.298565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418625, 27.811834, 48.323978>,  <34.505417, 28.035070, 48.339226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418625, 27.811834, 48.323978>,  <34.273972, 27.439774, 48.298565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418625, 27.811834, 48.323978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446554, 0.112989, 0.887594,
		0.818418, -0.349358, 0.456224,
		0.361637, 0.930152, 0.063535,
		34.527115, 28.090879, 48.343040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563148, 27.530539, 49.004345>,  <34.273972, 27.439774, 48.298565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563148, 27.530539, 49.004345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477795, 27.895849, 48.865555>,  <34.426582, 28.115036, 48.782280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477795, 27.895849, 48.865555>,  <34.563148, 27.530539, 49.004345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477795, 27.895849, 48.865555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530120, 0.190085, 0.826342,
		0.820634, 0.360264, 0.443586,
		-0.213383, 0.913278, -0.346973,
		34.413780, 28.169832, 48.761463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623371, 27.902525, 49.648712>,  <34.563148, 27.530539, 49.004345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623371, 27.902525, 49.648712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429901, 28.113802, 49.369549>,  <34.313820, 28.240568, 49.202053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429901, 28.113802, 49.369549>,  <34.623371, 27.902525, 49.648712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429901, 28.113802, 49.369549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573577, 0.411010, 0.708576,
		0.661109, 0.743024, 0.104161,
		-0.483678, 0.528191, -0.697904,
		34.284798, 28.272259, 49.160179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490849, 28.486570, 49.983002>,  <34.623371, 27.902525, 49.648712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490849, 28.486570, 49.983002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229225, 28.486227, 49.680424>,  <34.072250, 28.486021, 49.498878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229225, 28.486227, 49.680424>,  <34.490849, 28.486570, 49.983002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229225, 28.486227, 49.680424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700120, 0.379327, 0.604932,
		0.286420, 0.925262, -0.248703,
		-0.654061, -0.000857, -0.756442,
		34.033009, 28.485970, 49.453491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106087, 29.204996, 50.075012>,  <34.490849, 28.486570, 49.983002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106087, 29.204996, 50.075012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903049, 28.953981, 49.838860>,  <33.781227, 28.803373, 49.697166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903049, 28.953981, 49.838860>,  <34.106087, 29.204996, 50.075012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903049, 28.953981, 49.838860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857581, 0.301875, 0.416444,
		-0.083113, 0.717683, -0.691392,
		-0.507589, -0.627537, -0.590382,
		33.750774, 28.765720, 49.661743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540535, 29.510002, 49.947544>,  <34.106087, 29.204996, 50.075012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540535, 29.510002, 49.947544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451275, 29.136045, 49.837139>,  <33.397720, 28.911673, 49.770897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451275, 29.136045, 49.837139>,  <33.540535, 29.510002, 49.947544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451275, 29.136045, 49.837139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938903, 0.130018, 0.318679,
		-0.262043, 0.330264, -0.906785,
		-0.223147, -0.934891, -0.276016,
		33.384331, 28.855577, 49.754333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895363, 29.744476, 49.947830>,  <33.540535, 29.510002, 49.947544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895363, 29.744476, 49.947830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902081, 29.349533, 50.010880>,  <32.906113, 29.112568, 50.048710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902081, 29.349533, 50.010880>,  <32.895363, 29.744476, 49.947830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902081, 29.349533, 50.010880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907712, 0.051046, 0.416476,
		-0.419257, -0.150067, -0.895379,
		0.016794, -0.987357, 0.157619,
		32.907120, 29.053326, 50.058167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873016, 30.370823, 49.691303>,  <32.895363, 29.744476, 49.947830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873016, 30.370823, 49.691303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265266, 30.433119, 49.738823>,  <33.500618, 30.470497, 49.767334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265266, 30.433119, 49.738823>,  <32.873016, 30.370823, 49.691303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265266, 30.433119, 49.738823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172991, -0.973076, -0.152308,
		0.091880, 0.169908, -0.981167,
		0.980628, 0.155739, 0.118799,
		33.559456, 30.479841, 49.774464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204197, 30.330523, 49.399342>,  <32.873016, 30.370823, 49.691303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204197, 30.330523, 49.399342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934229, 30.544451, 49.602695>,  <31.772249, 30.672808, 49.724709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934229, 30.544451, 49.602695>,  <32.204197, 30.330523, 49.399342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934229, 30.544451, 49.602695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101892, 0.614815, -0.782062,
		-0.730823, -0.579628, -0.360456,
		-0.674919, 0.534821, 0.508381,
		31.731752, 30.704897, 49.755211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673594, 30.335278, 48.936398>,  <32.204197, 30.330523, 49.399342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673594, 30.335278, 48.936398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622036, 30.637434, 49.193386>,  <31.591103, 30.818727, 49.347580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.622036, 30.637434, 49.193386>,  <31.673594, 30.335278, 48.936398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622036, 30.637434, 49.193386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054199, 0.652275, -0.756043,
		-0.990176, -0.062627, -0.125015,
		-0.128893, 0.755391, 0.642473,
		31.583368, 30.864052, 49.386127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005327, 30.719406, 48.752232>,  <31.673594, 30.335278, 48.936398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005327, 30.719406, 48.752232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249649, 30.975586, 48.938454>,  <31.396242, 31.129293, 49.050186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249649, 30.975586, 48.938454>,  <31.005327, 30.719406, 48.752232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249649, 30.975586, 48.938454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092190, 0.641510, -0.761555,
		-0.786395, 0.422243, 0.450882,
		0.610806, 0.640449, 0.465554,
		31.432892, 31.167721, 49.078121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642467, 31.287722, 48.687012>,  <31.005327, 30.719406, 48.752232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642467, 31.287722, 48.687012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.005291, 31.418369, 48.793266>,  <31.222986, 31.496758, 48.857018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.005291, 31.418369, 48.793266>,  <30.642467, 31.287722, 48.687012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005291, 31.418369, 48.793266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121795, 0.807564, -0.577068,
		-0.402998, 0.491082, 0.772289,
		0.907060, 0.326618, 0.265635,
		31.277409, 31.516356, 48.872955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594761, 32.013737, 48.722656>,  <30.642467, 31.287722, 48.687012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594761, 32.013737, 48.722656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.989326, 31.958359, 48.687283>,  <31.226067, 31.925133, 48.666058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.989326, 31.958359, 48.687283>,  <30.594761, 32.013737, 48.722656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989326, 31.958359, 48.687283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021196, 0.641072, -0.767188,
		0.162905, 0.754891, 0.635297,
		0.986414, -0.138445, -0.088433,
		31.285252, 31.916826, 48.660751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865606, 32.643650, 48.573048>,  <30.594761, 32.013737, 48.722656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865606, 32.643650, 48.573048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185957, 32.428959, 48.466824>,  <31.378168, 32.300144, 48.403088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185957, 32.428959, 48.466824>,  <30.865606, 32.643650, 48.573048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185957, 32.428959, 48.466824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069056, 0.523284, -0.849355,
		0.594832, 0.661892, 0.456151,
		0.800878, -0.536724, -0.265559,
		31.426220, 32.267941, 48.387157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446732, 33.112213, 48.458679>,  <30.865606, 32.643650, 48.573048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446732, 33.112213, 48.458679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517616, 32.785557, 48.238972>,  <31.560146, 32.589565, 48.107147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517616, 32.785557, 48.238972>,  <31.446732, 33.112213, 48.458679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517616, 32.785557, 48.238972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209392, 0.576613, -0.789729,
		0.961640, 0.024936, 0.273180,
		0.177212, -0.816637, -0.549273,
		31.570780, 32.540565, 48.074188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129147, 33.266487, 48.187527>,  <31.446732, 33.112213, 48.458679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129147, 33.266487, 48.187527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955372, 32.966766, 47.987602>,  <31.851107, 32.786934, 47.867645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.955372, 32.966766, 47.987602>,  <32.129147, 33.266487, 48.187527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955372, 32.966766, 47.987602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339855, 0.377528, -0.861377,
		0.834123, -0.544080, 0.090640,
		-0.434439, -0.749299, -0.499814,
		31.825041, 32.741978, 47.837658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626255, 33.012127, 47.630440>,  <32.129147, 33.266487, 48.187527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626255, 33.012127, 47.630440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287498, 32.856796, 47.485123>,  <32.084244, 32.763599, 47.397930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287498, 32.856796, 47.485123>,  <32.626255, 33.012127, 47.630440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287498, 32.856796, 47.485123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229526, 0.349330, -0.908453,
		0.479682, -0.852745, -0.206714,
		-0.846890, -0.388322, -0.363295,
		32.033432, 32.740299, 47.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760471, 32.494183, 47.096375>,  <32.626255, 33.012127, 47.630440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760471, 32.494183, 47.096375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387665, 32.616508, 47.018585>,  <32.163982, 32.689903, 46.971912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387665, 32.616508, 47.018585>,  <32.760471, 32.494183, 47.096375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387665, 32.616508, 47.018585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233219, 0.095368, -0.967736,
		-0.277406, -0.947301, -0.160207,
		-0.932016, 0.305819, -0.194473,
		32.108059, 32.708256, 46.960243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540688, 32.174267, 46.549900>,  <32.760471, 32.494183, 47.096375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540688, 32.174267, 46.549900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309319, 32.500561, 46.549820>,  <32.170498, 32.696339, 46.549770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.309319, 32.500561, 46.549820>,  <32.540688, 32.174267, 46.549900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309319, 32.500561, 46.549820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263266, 0.186443, -0.946536,
		-0.772085, -0.547553, -0.322599,
		-0.578425, 0.815736, -0.000202,
		32.135792, 32.745281, 46.549759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066822, 32.106178, 45.997616>,  <32.540688, 32.174267, 46.549900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066822, 32.106178, 45.997616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119919, 32.497478, 46.061382>,  <32.151775, 32.732258, 46.099644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119919, 32.497478, 46.061382>,  <32.066822, 32.106178, 45.997616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119919, 32.497478, 46.061382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429965, 0.088088, -0.898538,
		-0.893035, 0.187815, -0.408919,
		0.132738, 0.978246, 0.159420,
		32.159740, 32.790951, 46.109207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140400, 32.399773, 45.394508>,  <32.066822, 32.106178, 45.997616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140400, 32.399773, 45.394508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259071, 32.729610, 45.587181>,  <32.330273, 32.927513, 45.702785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259071, 32.729610, 45.587181>,  <32.140400, 32.399773, 45.394508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259071, 32.729610, 45.587181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488767, 0.302213, -0.818397,
		-0.820421, 0.478229, -0.313378,
		0.296674, 0.824599, 0.481685,
		32.348072, 32.976990, 45.731686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345051, 32.553341, 45.328831>,  <32.140400, 32.399773, 45.394508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345051, 32.553341, 45.328831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001244, 32.533749, 45.125328>,  <30.794960, 32.521992, 45.003227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.001244, 32.533749, 45.125328>,  <31.345051, 32.553341, 45.328831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001244, 32.533749, 45.125328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414531, -0.515484, 0.749960,
		-0.298991, 0.855498, 0.422762,
		-0.859516, -0.048983, -0.508755,
		30.743389, 32.519054, 44.972702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844873, 32.702000, 45.772419>,  <31.345051, 32.553341, 45.328831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844873, 32.702000, 45.772419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647741, 32.507732, 45.483631>,  <30.529461, 32.391171, 45.310360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647741, 32.507732, 45.483631>,  <30.844873, 32.702000, 45.772419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647741, 32.507732, 45.483631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489039, -0.531678, 0.691490,
		-0.719693, 0.693860, 0.024515,
		-0.492831, -0.485672, -0.721970,
		30.499891, 32.362030, 45.267040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116938, 32.597061, 45.988422>,  <30.844873, 32.702000, 45.772419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116938, 32.597061, 45.988422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205381, 32.319775, 45.714031>,  <30.258448, 32.153404, 45.549397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205381, 32.319775, 45.714031>,  <30.116938, 32.597061, 45.988422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205381, 32.319775, 45.714031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427204, -0.701155, 0.570858,
		-0.876703, 0.166831, -0.451175,
		0.221107, -0.693217, -0.685975,
		30.271713, 32.111809, 45.508240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615404, 32.170013, 46.056175>,  <30.116938, 32.597061, 45.988422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615404, 32.170013, 46.056175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845995, 31.935850, 45.828152>,  <29.984350, 31.795351, 45.691338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845995, 31.935850, 45.828152>,  <29.615404, 32.170013, 46.056175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845995, 31.935850, 45.828152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262249, -0.793296, 0.549461,
		-0.773885, -0.167255, -0.610841,
		0.576478, -0.585412, -0.570058,
		30.018938, 31.760227, 45.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184420, 31.713968, 45.735889>,  <29.615404, 32.170013, 46.056175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184420, 31.713968, 45.735889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545366, 31.541800, 45.727177>,  <29.761934, 31.438499, 45.721947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545366, 31.541800, 45.727177>,  <29.184420, 31.713968, 45.735889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545366, 31.541800, 45.727177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365817, -0.791690, 0.489289,
		-0.227847, -0.433549, -0.871849,
		0.902365, -0.430421, -0.021785,
		29.816076, 31.412674, 45.720642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083883, 31.033873, 45.643410>,  <29.184420, 31.713968, 45.735889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083883, 31.033873, 45.643410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455503, 31.029177, 45.791317>,  <29.678476, 31.026360, 45.880062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455503, 31.029177, 45.791317>,  <29.083883, 31.033873, 45.643410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455503, 31.029177, 45.791317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298676, -0.613603, 0.730948,
		0.218307, -0.789528, -0.573575,
		0.929051, -0.011741, 0.369767,
		29.734219, 31.025654, 45.902248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303221, 30.366119, 45.677654>,  <29.083883, 31.033873, 45.643410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303221, 30.366119, 45.677654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.560781, 30.540218, 45.929352>,  <29.715319, 30.644678, 46.080372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.560781, 30.540218, 45.929352>,  <29.303221, 30.366119, 45.677654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560781, 30.540218, 45.929352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224761, -0.678535, 0.699337,
		0.731349, -0.591735, -0.339084,
		0.643903, 0.435247, 0.629246,
		29.753952, 30.670792, 46.118126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287695, 29.793873, 45.277676>,  <29.303221, 30.366119, 45.677654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287695, 29.793873, 45.277676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096045, 29.490013, 45.101776>,  <28.981054, 29.307697, 44.996239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096045, 29.490013, 45.101776>,  <29.287695, 29.793873, 45.277676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096045, 29.490013, 45.101776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372368, 0.277764, -0.885545,
		0.794847, -0.588034, 0.149785,
		-0.479125, -0.759647, -0.439744,
		28.952307, 29.262119, 44.969852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814817, 29.537489, 44.885830>,  <29.287695, 29.793873, 45.277676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814817, 29.537489, 44.885830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.464487, 29.406075, 44.744415>,  <29.254288, 29.327225, 44.659565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.464487, 29.406075, 44.744415>,  <29.814817, 29.537489, 44.885830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464487, 29.406075, 44.744415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288730, 0.230303, -0.929298,
		0.386731, -0.915982, -0.106846,
		-0.875828, -0.328538, -0.353537,
		29.201738, 29.307514, 44.638355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010729, 29.127607, 44.417004>,  <29.814817, 29.537489, 44.885830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010729, 29.127607, 44.417004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.647240, 29.254923, 44.308994>,  <29.429146, 29.331312, 44.244190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.647240, 29.254923, 44.308994>,  <30.010729, 29.127607, 44.417004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647240, 29.254923, 44.308994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336334, 0.175267, -0.925289,
		-0.247184, -0.931651, -0.266321,
		-0.908724, 0.318290, -0.270023,
		29.374622, 29.350410, 44.227989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086977, 29.105467, 43.783710>,  <30.010729, 29.127607, 44.417004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086977, 29.105467, 43.783710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.717434, 29.258387, 43.790997>,  <29.495708, 29.350138, 43.795368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.717434, 29.258387, 43.790997>,  <30.086977, 29.105467, 43.783710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717434, 29.258387, 43.790997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085615, 0.252814, -0.963720,
		-0.373034, -0.888782, -0.266295,
		-0.923859, 0.382299, 0.018215,
		29.440275, 29.373075, 43.796459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698706, 28.921513, 43.120190>,  <30.086977, 29.105467, 43.783710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698706, 28.921513, 43.120190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.503359, 29.246807, 43.246773>,  <29.386150, 29.441984, 43.322723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.503359, 29.246807, 43.246773>,  <29.698706, 28.921513, 43.120190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503359, 29.246807, 43.246773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010887, 0.356942, -0.934063,
		-0.872571, -0.459611, -0.165465,
		-0.488367, 0.813235, 0.316461,
		29.356850, 29.490778, 43.341713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169088, 29.029490, 42.643028>,  <29.698706, 28.921513, 43.120190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169088, 29.029490, 42.643028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.220964, 29.380329, 42.828014>,  <29.252090, 29.590834, 42.939007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.220964, 29.380329, 42.828014>,  <29.169088, 29.029490, 42.643028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220964, 29.380329, 42.828014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208594, 0.480103, -0.852050,
		-0.969365, 0.014034, 0.245222,
		0.129690, 0.877100, 0.462468,
		29.259871, 29.643459, 42.966755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638186, 29.441341, 42.387604>,  <29.169088, 29.029490, 42.643028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638186, 29.441341, 42.387604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.940315, 29.671724, 42.512669>,  <29.121593, 29.809954, 42.587708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.940315, 29.671724, 42.512669>,  <28.638186, 29.441341, 42.387604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940315, 29.671724, 42.512669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009288, 0.467636, -0.883873,
		-0.655284, 0.670516, 0.347868,
		0.755326, 0.575956, 0.312662,
		29.166912, 29.844511, 42.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.309956, 27.854300, 45.787670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002838, 28.104317, 45.843975>,  <30.818567, 28.254328, 45.877758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002838, 28.104317, 45.843975>,  <31.309956, 27.854300, 45.787670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002838, 28.104317, 45.843975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239057, 0.075644, 0.968055,
		0.594428, 0.776916, -0.207500,
		-0.767793, 0.625043, 0.140762,
		30.772501, 28.291830, 45.886204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584061, 28.464941, 46.132221>,  <31.309956, 27.854300, 45.787670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584061, 28.464941, 46.132221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188852, 28.447668, 46.191486>,  <30.951727, 28.437304, 46.227043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188852, 28.447668, 46.191486>,  <31.584061, 28.464941, 46.132221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188852, 28.447668, 46.191486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147269, 0.023143, 0.988826,
		-0.046128, 0.998799, -0.016506,
		-0.988020, -0.043182, 0.148160,
		30.892447, 28.434713, 46.235935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088463, 28.106586, 46.620281>,  <31.584061, 28.464941, 46.132221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088463, 28.106586, 46.620281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283203, 27.788624, 46.765110>,  <32.400047, 27.597847, 46.852009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283203, 27.788624, 46.765110>,  <32.088463, 28.106586, 46.620281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283203, 27.788624, 46.765110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312125, -0.228834, -0.922070,
		0.815815, 0.561925, 0.136702,
		0.486852, -0.794906, 0.362076,
		32.429260, 27.550152, 46.873734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681499, 28.115767, 46.247257>,  <32.088463, 28.106586, 46.620281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681499, 28.115767, 46.247257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687027, 27.745991, 46.399689>,  <32.690342, 27.524126, 46.491146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.687027, 27.745991, 46.399689>,  <32.681499, 28.115767, 46.247257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687027, 27.745991, 46.399689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416703, -0.341117, -0.842614,
		0.908938, 0.170441, 0.380502,
		0.013820, -0.924440, 0.381077,
		32.691174, 27.468658, 46.514011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356033, 27.780828, 46.014271>,  <32.681499, 28.115767, 46.247257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356033, 27.780828, 46.014271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.135578, 27.461302, 46.110722>,  <33.003304, 27.269587, 46.168591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.135578, 27.461302, 46.110722>,  <33.356033, 27.780828, 46.014271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135578, 27.461302, 46.110722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230887, -0.423688, -0.875888,
		0.801835, -0.427061, 0.417947,
		-0.551137, -0.798816, 0.241125,
		32.970238, 27.221657, 46.183060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762020, 27.138905, 45.906227>,  <33.356033, 27.780828, 46.014271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762020, 27.138905, 45.906227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387230, 27.000904, 45.884129>,  <33.162357, 26.918104, 45.870869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387230, 27.000904, 45.884129>,  <33.762020, 27.138905, 45.906227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387230, 27.000904, 45.884129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265789, -0.601163, -0.753631,
		0.226792, -0.720817, 0.654972,
		-0.936975, -0.345002, -0.055246,
		33.106136, 26.897404, 45.867554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856949, 26.631670, 45.467194>,  <33.762020, 27.138905, 45.906227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856949, 26.631670, 45.467194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457726, 26.637436, 45.491432>,  <33.218193, 26.640896, 45.505974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457726, 26.637436, 45.491432>,  <33.856949, 26.631670, 45.467194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457726, 26.637436, 45.491432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059393, -0.513257, -0.856177,
		0.018758, -0.858114, 0.513117,
		-0.998058, 0.014415, 0.060594,
		33.158306, 26.641760, 45.509609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523804, 25.898174, 45.280052>,  <33.856949, 26.631670, 45.467194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523804, 25.898174, 45.280052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239502, 26.168264, 45.201168>,  <33.068920, 26.330318, 45.153835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239502, 26.168264, 45.201168>,  <33.523804, 25.898174, 45.280052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239502, 26.168264, 45.201168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154153, -0.423051, -0.892897,
		-0.686339, -0.604231, 0.404775,
		-0.710757, 0.675228, -0.197212,
		33.026276, 26.370832, 45.142006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994694, 25.563580, 44.923054>,  <33.523804, 25.898174, 45.280052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994694, 25.563580, 44.923054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.970203, 25.950169, 44.823307>,  <32.955509, 26.182121, 44.763458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.970203, 25.950169, 44.823307>,  <32.994694, 25.563580, 44.923054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970203, 25.950169, 44.823307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155017, -0.237601, -0.958914,
		-0.986013, -0.097363, -0.135273,
		-0.061221, 0.966471, -0.249370,
		32.951836, 26.240110, 44.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685760, 25.553049, 44.304367>,  <32.994694, 25.563580, 44.923054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685760, 25.553049, 44.304367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878036, 25.903587, 44.316677>,  <32.993404, 26.113911, 44.324062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.878036, 25.903587, 44.316677>,  <32.685760, 25.553049, 44.304367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878036, 25.903587, 44.316677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117549, -0.029615, -0.992625,
		-0.868973, 0.480768, -0.117249,
		0.480694, 0.876348, 0.030779,
		33.022243, 26.166492, 44.325912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624481, 25.727156, 43.624893>,  <32.685760, 25.553049, 44.304367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624481, 25.727156, 43.624893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.900845, 25.972900, 43.777313>,  <33.066662, 26.120348, 43.868763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.900845, 25.972900, 43.777313>,  <32.624481, 25.727156, 43.624893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900845, 25.972900, 43.777313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381129, 0.138346, -0.914112,
		-0.614313, 0.776800, -0.138567,
		0.690912, 0.614363, 0.381048,
		33.108120, 26.157209, 43.891628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583946, 26.434763, 43.326096>,  <32.624481, 25.727156, 43.624893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583946, 26.434763, 43.326096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959057, 26.401827, 43.461029>,  <33.184124, 26.382065, 43.541988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.959057, 26.401827, 43.461029>,  <32.583946, 26.434763, 43.326096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959057, 26.401827, 43.461029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346322, 0.292146, -0.891466,
		-0.025146, 0.952823, 0.302484,
		0.937778, -0.082340, 0.337330,
		33.240391, 26.377125, 43.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181454, 26.908257, 43.158386>,  <32.583946, 26.434763, 43.326096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181454, 26.908257, 43.158386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843121, 26.890501, 42.945744>,  <31.640121, 26.879847, 42.818157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843121, 26.890501, 42.945744>,  <32.181454, 26.908257, 43.158386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843121, 26.890501, 42.945744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529764, -0.047094, 0.846837,
		-0.062626, 0.997904, 0.016317,
		-0.845830, -0.044390, -0.531603,
		31.589371, 26.877184, 42.786263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656805, 27.405401, 43.403519>,  <32.181454, 26.908257, 43.158386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656805, 27.405401, 43.403519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474630, 27.102959, 43.215527>,  <31.365326, 26.921494, 43.102730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474630, 27.102959, 43.215527>,  <31.656805, 27.405401, 43.403519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474630, 27.102959, 43.215527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578444, -0.149975, 0.801817,
		-0.676743, 0.637035, -0.369060,
		-0.455436, -0.756105, -0.469983,
		31.337999, 26.876127, 43.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945133, 27.560814, 43.503979>,  <31.656805, 27.405401, 43.403519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945133, 27.560814, 43.503979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.966303, 27.172863, 43.408871>,  <30.979004, 26.940092, 43.351807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.966303, 27.172863, 43.408871>,  <30.945133, 27.560814, 43.503979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966303, 27.172863, 43.408871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679193, -0.209510, 0.703421,
		-0.732049, 0.124266, -0.669823,
		0.052923, -0.969878, -0.237773,
		30.982180, 26.881899, 43.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217651, 27.332983, 43.592220>,  <30.945133, 27.560814, 43.503979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217651, 27.332983, 43.592220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458033, 27.013283, 43.589260>,  <30.602261, 26.821463, 43.587486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458033, 27.013283, 43.589260>,  <30.217651, 27.332983, 43.592220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458033, 27.013283, 43.589260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518884, -0.397151, 0.756988,
		-0.607961, -0.451074, -0.653387,
		0.600951, -0.799252, -0.007398,
		30.638317, 26.773508, 43.587040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762508, 26.805548, 43.663990>,  <30.217651, 27.332983, 43.592220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762508, 26.805548, 43.663990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112606, 26.646273, 43.773819>,  <30.322664, 26.550707, 43.839718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112606, 26.646273, 43.773819>,  <29.762508, 26.805548, 43.663990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112606, 26.646273, 43.773819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450584, -0.464877, 0.762144,
		-0.175834, -0.790782, -0.586299,
		0.875246, -0.398188, 0.274572,
		30.375179, 26.526815, 43.856190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553560, 26.113762, 43.764927>,  <29.762508, 26.805548, 43.663990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553560, 26.113762, 43.764927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893002, 26.178745, 43.966312>,  <30.096666, 26.217735, 44.087143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893002, 26.178745, 43.966312>,  <29.553560, 26.113762, 43.764927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893002, 26.178745, 43.966312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382434, -0.469176, 0.796001,
		0.365532, -0.868033, -0.336015,
		0.848605, 0.162460, 0.503464,
		30.147583, 26.227484, 44.117352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699383, 25.621828, 44.173134>,  <29.553560, 26.113762, 43.764927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699383, 25.621828, 44.173134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.954206, 25.870770, 44.355049>,  <30.107101, 26.020134, 44.464199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.954206, 25.870770, 44.355049>,  <29.699383, 25.621828, 44.173134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954206, 25.870770, 44.355049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249420, -0.391829, 0.885584,
		0.729344, -0.677604, -0.094392,
		0.637061, 0.622352, 0.454786,
		30.145325, 26.057476, 44.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095470, 25.224360, 44.604351>,  <29.699383, 25.621828, 44.173134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095470, 25.224360, 44.604351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086306, 25.594940, 44.754639>,  <30.080807, 25.817289, 44.844810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.086306, 25.594940, 44.754639>,  <30.095470, 25.224360, 44.604351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086306, 25.594940, 44.754639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436667, -0.347345, 0.829864,
		0.899332, -0.145051, 0.412508,
		-0.022910, 0.926451, 0.375717,
		30.079433, 25.872875, 44.867355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439026, 25.257959, 45.298687>,  <30.095470, 25.224360, 44.604351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439026, 25.257959, 45.298687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.203098, 25.580969, 45.300293>,  <30.061541, 25.774775, 45.301258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.203098, 25.580969, 45.300293>,  <30.439026, 25.257959, 45.298687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203098, 25.580969, 45.300293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328724, -0.244642, 0.912190,
		0.737599, 0.536707, 0.409747,
		-0.589820, 0.807525, 0.004019,
		30.026152, 25.823227, 45.301498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594875, 25.649029, 45.902905>,  <30.439026, 25.257959, 45.298687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594875, 25.649029, 45.902905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.219959, 25.741945, 45.798965>,  <29.995008, 25.797695, 45.736603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.219959, 25.741945, 45.798965>,  <30.594875, 25.649029, 45.902905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219959, 25.741945, 45.798965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260472, 0.028553, 0.965059,
		0.231597, 0.972227, 0.033744,
		-0.937292, 0.232294, -0.259851,
		29.938772, 25.811634, 45.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440954, 26.074249, 46.409168>,  <30.594875, 25.649029, 45.902905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440954, 26.074249, 46.409168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094339, 25.958727, 46.246342>,  <29.886370, 25.889414, 46.148643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.094339, 25.958727, 46.246342>,  <30.440954, 26.074249, 46.409168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094339, 25.958727, 46.246342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480650, 0.263089, 0.836516,
		-0.134496, 0.920530, -0.366791,
		-0.866537, -0.288806, -0.407068,
		29.834377, 25.872086, 46.124222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033546, 26.479259, 46.819130>,  <30.440954, 26.074249, 46.409168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033546, 26.479259, 46.819130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785431, 26.213131, 46.652954>,  <29.636562, 26.053453, 46.553249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.785431, 26.213131, 46.652954>,  <30.033546, 26.479259, 46.819130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785431, 26.213131, 46.652954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499574, -0.073220, 0.863171,
		-0.604705, 0.742958, -0.286960,
		-0.620289, -0.665322, -0.415438,
		29.599344, 26.013535, 46.528324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346323, 26.762341, 46.831108>,  <30.033546, 26.479259, 46.819130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346323, 26.762341, 46.831108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.343683, 26.362612, 46.845581>,  <29.342100, 26.122774, 46.854267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.343683, 26.362612, 46.845581>,  <29.346323, 26.762341, 46.831108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343683, 26.362612, 46.845581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676682, 0.031105, 0.735618,
		-0.736246, -0.019630, -0.676429,
		-0.006600, -0.999323, 0.036184,
		29.341703, 26.062815, 46.856438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752043, 26.678507, 47.104004>,  <29.346323, 26.762341, 46.831108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752043, 26.678507, 47.104004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.913536, 26.312635, 47.111675>,  <29.010431, 26.093113, 47.116276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.913536, 26.312635, 47.111675>,  <28.752043, 26.678507, 47.104004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913536, 26.312635, 47.111675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617181, -0.256828, 0.743725,
		-0.675343, -0.312100, -0.668210,
		0.403732, -0.914677, 0.019175,
		29.034657, 26.038233, 47.117428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480289, 26.756117, 46.389343>,  <28.752043, 26.678507, 47.104004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480289, 26.756117, 46.389343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224346, 26.985231, 46.594284>,  <28.070780, 27.122700, 46.717247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224346, 26.985231, 46.594284>,  <28.480289, 26.756117, 46.389343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224346, 26.985231, 46.594284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294612, 0.798583, -0.524851,
		-0.709780, -0.184885, -0.679728,
		-0.639856, 0.572785, 0.512349,
		28.032389, 27.157066, 46.747990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046911, 27.055063, 45.905502>,  <28.480289, 26.756117, 46.389343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046911, 27.055063, 45.905502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.017740, 27.283663, 46.232445>,  <28.000237, 27.420822, 46.428612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.017740, 27.283663, 46.232445>,  <28.046911, 27.055063, 45.905502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017740, 27.283663, 46.232445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166026, 0.815060, -0.555078,
		-0.983421, 0.095222, -0.154325,
		-0.072929, 0.571497, 0.817357,
		27.995861, 27.455112, 46.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590208, 27.487925, 45.748158>,  <28.046911, 27.055063, 45.905502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590208, 27.487925, 45.748158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.812464, 27.681721, 46.018425>,  <27.945818, 27.797998, 46.180588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.812464, 27.681721, 46.018425>,  <27.590208, 27.487925, 45.748158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812464, 27.681721, 46.018425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272154, 0.661912, -0.698430,
		-0.785619, 0.571962, 0.235929,
		0.555640, 0.484491, 0.675672,
		27.979156, 27.827068, 46.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399981, 28.196558, 45.778046>,  <27.590208, 27.487925, 45.748158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399981, 28.196558, 45.778046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.785023, 28.160046, 45.880070>,  <28.016048, 28.138138, 45.941284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.785023, 28.160046, 45.880070>,  <27.399981, 28.196558, 45.778046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785023, 28.160046, 45.880070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244320, 0.699260, -0.671820,
		-0.117028, 0.709015, 0.695415,
		0.962607, -0.091282, 0.255060,
		28.073805, 28.132662, 45.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684240, 28.843391, 45.835453>,  <27.399981, 28.196558, 45.778046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684240, 28.843391, 45.835453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.020805, 28.627268, 45.831627>,  <28.222744, 28.497593, 45.829330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.020805, 28.627268, 45.831627>,  <27.684240, 28.843391, 45.835453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020805, 28.627268, 45.831627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423476, 0.670259, -0.609443,
		0.335699, 0.508743, 0.792772,
		0.841412, -0.540310, -0.009565,
		28.273230, 28.465176, 45.828758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313824, 29.348068, 46.015438>,  <27.684240, 28.843391, 45.835453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313824, 29.348068, 46.015438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.467333, 29.035439, 45.818722>,  <28.559439, 28.847860, 45.700691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.467333, 29.035439, 45.818722>,  <28.313824, 29.348068, 46.015438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467333, 29.035439, 45.818722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503113, 0.623560, -0.598373,
		0.774335, -0.017788, 0.632526,
		0.383774, -0.781573, -0.491794,
		28.582464, 28.800966, 45.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105810, 29.466249, 46.030064>,  <28.313824, 29.348068, 46.015438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105810, 29.466249, 46.030064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.962059, 29.267080, 45.714363>,  <28.875809, 29.147579, 45.524940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.962059, 29.267080, 45.714363>,  <29.105810, 29.466249, 46.030064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962059, 29.267080, 45.714363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457281, 0.643294, -0.614058,
		0.813476, -0.581587, -0.003492,
		-0.359375, -0.497925, -0.789253,
		28.854246, 29.117702, 45.477589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781799, 29.677252, 45.973095>,  <29.105810, 29.466249, 46.030064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781799, 29.677252, 45.973095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.841793, 29.994677, 46.208981>,  <29.877789, 30.185131, 46.350513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.841793, 29.994677, 46.208981>,  <29.781799, 29.677252, 45.973095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841793, 29.994677, 46.208981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033247, -0.600172, 0.799180,
		0.988129, -0.100258, -0.116400,
		0.149985, 0.793563, 0.589714,
		29.886789, 30.232746, 46.385895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420383, 29.576353, 46.444157>,  <29.781799, 29.677252, 45.973095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420383, 29.576353, 46.444157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198029, 29.843752, 46.641785>,  <30.064615, 30.004190, 46.760361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198029, 29.843752, 46.641785>,  <30.420383, 29.576353, 46.444157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198029, 29.843752, 46.641785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133485, -0.514858, 0.846819,
		0.820470, 0.536686, 0.196968,
		-0.555887, 0.668498, 0.494066,
		30.031263, 30.044302, 46.790005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765707, 29.603178, 47.060596>,  <30.420383, 29.576353, 46.444157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765707, 29.603178, 47.060596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415424, 29.775661, 47.147495>,  <30.205256, 29.879152, 47.199635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415424, 29.775661, 47.147495>,  <30.765707, 29.603178, 47.060596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415424, 29.775661, 47.147495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063142, -0.343803, 0.936916,
		0.478700, 0.834180, 0.273842,
		-0.875705, 0.431211, 0.217251,
		30.152714, 29.905025, 47.212669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869381, 30.007799, 47.707741>,  <30.765707, 29.603178, 47.060596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869381, 30.007799, 47.707741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480452, 29.923189, 47.668049>,  <30.247095, 29.872423, 47.644234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480452, 29.923189, 47.668049>,  <30.869381, 30.007799, 47.707741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480452, 29.923189, 47.668049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043216, -0.254567, 0.966089,
		-0.229613, 0.943638, 0.238380,
		-0.972322, -0.211525, -0.099232,
		30.188755, 29.859732, 47.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475216, 30.273081, 48.346745>,  <30.869381, 30.007799, 47.707741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475216, 30.273081, 48.346745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.238337, 29.992037, 48.188938>,  <30.096209, 29.823410, 48.094254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.238337, 29.992037, 48.188938>,  <30.475216, 30.273081, 48.346745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238337, 29.992037, 48.188938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192223, -0.352287, 0.915939,
		-0.782529, 0.618252, 0.073567,
		-0.592198, -0.702608, -0.394517,
		30.060677, 29.781254, 48.070583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884628, 30.187967, 48.778290>,  <30.475216, 30.273081, 48.346745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884628, 30.187967, 48.778290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.873369, 29.854345, 48.557903>,  <29.866613, 29.654173, 48.425671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.873369, 29.854345, 48.557903>,  <29.884628, 30.187967, 48.778290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873369, 29.854345, 48.557903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265617, -0.525127, 0.808510,
		-0.963668, 0.169102, -0.206758,
		-0.028147, -0.834054, -0.550964,
		29.864925, 29.604130, 48.392612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174541, 30.046068, 48.793491>,  <29.884628, 30.187967, 48.778290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174541, 30.046068, 48.793491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401501, 29.725029, 48.719845>,  <29.537676, 29.532406, 48.675655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401501, 29.725029, 48.719845>,  <29.174541, 30.046068, 48.793491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401501, 29.725029, 48.719845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248582, -0.380112, 0.890911,
		-0.785026, -0.459734, -0.415186,
		0.567399, -0.802596, -0.184116,
		29.571720, 29.484251, 48.664612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849073, 29.431721, 49.088463>,  <29.174541, 30.046068, 48.793491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849073, 29.431721, 49.088463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.224503, 29.302704, 49.039402>,  <29.449760, 29.225294, 49.009964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.224503, 29.302704, 49.039402>,  <28.849073, 29.431721, 49.088463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224503, 29.302704, 49.039402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037423, -0.448477, 0.893010,
		-0.343039, -0.833568, -0.433000,
		0.938575, -0.322542, -0.122651,
		29.506075, 29.205940, 49.002605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841677, 28.701267, 49.228539>,  <28.849073, 29.431721, 49.088463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841677, 28.701267, 49.228539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.227488, 28.789213, 49.286987>,  <29.458973, 28.841982, 49.322056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.227488, 28.789213, 49.286987>,  <28.841677, 28.701267, 49.228539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227488, 28.789213, 49.286987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100348, -0.206596, 0.973267,
		0.244176, -0.953403, -0.177204,
		0.964525, 0.219866, 0.146118,
		29.516846, 28.855173, 49.330822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.230099, 34.165741, 36.876125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563496, 34.075802, 37.078007>,  <36.763535, 34.021839, 37.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563496, 34.075802, 37.078007>,  <36.230099, 34.165741, 36.876125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563496, 34.075802, 37.078007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545117, -0.185579, 0.817562,
		-0.090166, -0.956558, -0.277248,
		0.833497, -0.224849, 0.504704,
		36.813545, 34.008347, 37.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156689, 33.476425, 37.312740>,  <36.230099, 34.165741, 36.876125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156689, 33.476425, 37.312740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417927, 33.721062, 37.491367>,  <36.574669, 33.867844, 37.598545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417927, 33.721062, 37.491367>,  <36.156689, 33.476425, 37.312740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417927, 33.721062, 37.491367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483684, -0.116859, 0.867407,
		0.582685, -0.782495, 0.219497,
		0.653091, 0.611592, 0.446572,
		36.613853, 33.904541, 37.625340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304478, 33.190357, 37.936043>,  <36.156689, 33.476425, 37.312740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304478, 33.190357, 37.936043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413872, 33.567581, 38.011776>,  <36.479507, 33.793915, 38.057217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413872, 33.567581, 38.011776>,  <36.304478, 33.190357, 37.936043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413872, 33.567581, 38.011776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635288, 0.029304, 0.771719,
		0.722227, -0.331335, 0.607128,
		0.273489, 0.943058, 0.189330,
		36.495918, 33.850498, 38.068573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345341, 33.235172, 38.615273>,  <36.304478, 33.190357, 37.936043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345341, 33.235172, 38.615273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334797, 33.626701, 38.534061>,  <36.328472, 33.861618, 38.485336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334797, 33.626701, 38.534061>,  <36.345341, 33.235172, 38.615273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334797, 33.626701, 38.534061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695116, 0.128015, 0.707408,
		0.718414, 0.159772, 0.677019,
		-0.026355, 0.978818, -0.203028,
		36.326889, 33.920345, 38.473152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437939, 33.645870, 39.229191>,  <36.345341, 33.235172, 38.615273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437939, 33.645870, 39.229191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240875, 33.895184, 38.986275>,  <36.122639, 34.044773, 38.840523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240875, 33.895184, 38.986275>,  <36.437939, 33.645870, 39.229191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240875, 33.895184, 38.986275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622484, 0.235259, 0.746436,
		0.608112, 0.745769, 0.272081,
		-0.492659, 0.623283, -0.607293,
		36.093079, 34.082169, 38.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194206, 34.148495, 39.628216>,  <36.437939, 33.645870, 39.229191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194206, 34.148495, 39.628216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970295, 34.205936, 39.301773>,  <35.835949, 34.240402, 39.105907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970295, 34.205936, 39.301773>,  <36.194206, 34.148495, 39.628216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970295, 34.205936, 39.301773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778025, 0.247855, 0.577274,
		0.285175, 0.958095, -0.027016,
		-0.559779, 0.143605, -0.816104,
		35.802361, 34.249020, 39.056942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876144, 34.754211, 39.787102>,  <36.194206, 34.148495, 39.628216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876144, 34.754211, 39.787102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660393, 34.571587, 39.504086>,  <35.530941, 34.462009, 39.334274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660393, 34.571587, 39.504086>,  <35.876144, 34.754211, 39.787102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660393, 34.571587, 39.504086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794068, -0.003840, 0.607817,
		-0.280226, 0.889681, -0.360474,
		-0.539379, -0.456567, -0.707543,
		35.498581, 34.434616, 39.291824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292267, 35.172569, 39.845638>,  <35.876144, 34.754211, 39.787102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292267, 35.172569, 39.845638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177063, 34.841961, 39.652184>,  <35.107941, 34.643597, 39.536110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177063, 34.841961, 39.652184>,  <35.292267, 35.172569, 39.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177063, 34.841961, 39.652184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928593, 0.117632, 0.351961,
		-0.234013, 0.550474, -0.801384,
		-0.288014, -0.826523, -0.483640,
		35.090660, 34.594006, 39.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691929, 35.373962, 39.615589>,  <35.292267, 35.172569, 39.845638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691929, 35.373962, 39.615589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681454, 34.976093, 39.575726>,  <34.675167, 34.737370, 39.551807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681454, 34.976093, 39.575726>,  <34.691929, 35.373962, 39.615589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681454, 34.976093, 39.575726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937710, -0.010106, 0.347271,
		-0.346429, 0.102545, -0.932454,
		-0.026187, -0.994677, -0.099659,
		34.673599, 34.677689, 39.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022671, 35.245438, 39.374928>,  <34.691929, 35.373962, 39.615589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022671, 35.245438, 39.374928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141094, 34.893814, 39.524384>,  <34.212147, 34.682838, 39.614056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141094, 34.893814, 39.524384>,  <34.022671, 35.245438, 39.374928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141094, 34.893814, 39.524384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810305, -0.024032, 0.585515,
		-0.505723, -0.476109, -0.719420,
		0.296058, -0.879058, 0.373641,
		34.229912, 34.630096, 39.636475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397545, 34.741692, 39.377781>,  <34.022671, 35.245438, 39.374928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397545, 34.741692, 39.377781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660934, 34.597538, 39.642063>,  <33.818970, 34.511047, 39.800632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660934, 34.597538, 39.642063>,  <33.397545, 34.741692, 39.377781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660934, 34.597538, 39.642063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747408, -0.210176, 0.630244,
		-0.088263, -0.908819, -0.407747,
		0.658477, -0.360380, 0.660708,
		33.858479, 34.489422, 39.840275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099491, 34.253159, 39.625744>,  <33.397545, 34.741692, 39.377781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099491, 34.253159, 39.625744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368107, 34.316761, 39.915226>,  <33.529278, 34.354923, 40.088913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368107, 34.316761, 39.915226>,  <33.099491, 34.253159, 39.625744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368107, 34.316761, 39.915226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723227, -0.071774, 0.686871,
		0.161160, -0.984665, 0.066798,
		0.671543, 0.159006, 0.723703,
		33.569569, 34.364464, 40.132336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032059, 33.681946, 39.203438>,  <33.099491, 34.253159, 39.625744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032059, 33.681946, 39.203438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713985, 33.612682, 38.970993>,  <32.523140, 33.571125, 38.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713985, 33.612682, 38.970993>,  <33.032059, 33.681946, 39.203438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713985, 33.612682, 38.970993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528814, 0.270908, -0.804341,
		0.296707, -0.946903, -0.123853,
		-0.795186, -0.173159, -0.581115,
		32.475430, 33.560734, 38.796658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291264, 33.333221, 38.629211>,  <33.032059, 33.681946, 39.203438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291264, 33.333221, 38.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937191, 33.445522, 38.480812>,  <32.724747, 33.512905, 38.391773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937191, 33.445522, 38.480812>,  <33.291264, 33.333221, 38.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937191, 33.445522, 38.480812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451699, 0.327520, -0.829879,
		-0.111484, -0.902168, -0.416730,
		-0.885178, 0.280754, -0.370995,
		32.671638, 33.529747, 38.369514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229721, 32.974983, 38.000309>,  <33.291264, 33.333221, 38.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229721, 32.974983, 38.000309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005791, 33.306427, 38.001648>,  <32.871433, 33.505291, 38.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005791, 33.306427, 38.001648>,  <33.229721, 32.974983, 38.000309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005791, 33.306427, 38.001648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282054, 0.194352, -0.939507,
		-0.779131, -0.525014, -0.342515,
		-0.559822, 0.828606, 0.003343,
		32.837845, 33.555008, 38.002651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870255, 32.967232, 37.397808>,  <33.229721, 32.974983, 38.000309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870255, 32.967232, 37.397808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888966, 33.353756, 37.499039>,  <32.900192, 33.585670, 37.559776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888966, 33.353756, 37.499039>,  <32.870255, 32.967232, 37.397808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888966, 33.353756, 37.499039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148731, 0.243794, -0.958355,
		-0.987771, 0.082472, -0.132316,
		0.046780, 0.966314, 0.253079,
		32.903000, 33.643650, 37.574963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341442, 33.370510, 36.928215>,  <32.870255, 32.967232, 37.397808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341442, 33.370510, 36.928215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621395, 33.609299, 37.085083>,  <32.789368, 33.752571, 37.179203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621395, 33.609299, 37.085083>,  <32.341442, 33.370510, 36.928215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621395, 33.609299, 37.085083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238402, 0.322324, -0.916118,
		-0.673298, 0.734668, 0.083270,
		0.699882, 0.596968, 0.392166,
		32.831360, 33.788387, 37.202732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365963, 33.930870, 36.514557>,  <32.341442, 33.370510, 36.928215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365963, 33.930870, 36.514557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715294, 33.997967, 36.697491>,  <32.924892, 34.038227, 36.807251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715294, 33.997967, 36.697491>,  <32.365963, 33.930870, 36.514557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715294, 33.997967, 36.697491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392212, 0.314672, -0.864379,
		-0.288907, 0.934261, 0.209021,
		0.873329, 0.167745, 0.457339,
		32.977291, 34.048290, 36.834694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550087, 34.552208, 36.180195>,  <32.365963, 33.930870, 36.514557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550087, 34.552208, 36.180195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888000, 34.405006, 36.335587>,  <33.090748, 34.316685, 36.428822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888000, 34.405006, 36.335587>,  <32.550087, 34.552208, 36.180195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888000, 34.405006, 36.335587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522171, 0.408215, -0.748798,
		0.116977, 0.835424, 0.537014,
		0.844780, -0.368005, 0.388482,
		33.141434, 34.294605, 36.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048725, 35.037075, 36.060291>,  <32.550087, 34.552208, 36.180195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048725, 35.037075, 36.060291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264019, 34.705055, 36.118694>,  <33.393196, 34.505844, 36.153736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264019, 34.705055, 36.118694>,  <33.048725, 35.037075, 36.060291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264019, 34.705055, 36.118694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526048, 0.195525, -0.827674,
		0.658463, 0.522291, 0.541885,
		0.538238, -0.830050, 0.146004,
		33.425491, 34.456039, 36.162495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775970, 35.218315, 36.000385>,  <33.048725, 35.037075, 36.060291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775970, 35.218315, 36.000385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735332, 34.825043, 35.939674>,  <33.710949, 34.589081, 35.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735332, 34.825043, 35.939674>,  <33.775970, 35.218315, 36.000385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735332, 34.825043, 35.939674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571434, 0.067210, -0.817891,
		0.814335, -0.169824, 0.554994,
		-0.101596, -0.983180, -0.151775,
		33.704853, 34.530090, 35.894142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490582, 35.123798, 35.721691>,  <33.775970, 35.218315, 36.000385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490582, 35.123798, 35.721691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268436, 34.810596, 35.609638>,  <34.135151, 34.622673, 35.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268436, 34.810596, 35.609638>,  <34.490582, 35.123798, 35.721691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268436, 34.810596, 35.609638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443928, 0.005712, -0.896044,
		0.703209, -0.621987, 0.344427,
		-0.555360, -0.783007, -0.280134,
		34.101830, 34.575695, 35.525597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027206, 34.473190, 35.525967>,  <34.490582, 35.123798, 35.721691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027206, 34.473190, 35.525967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682583, 34.377777, 35.346718>,  <34.475807, 34.320530, 35.239170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682583, 34.377777, 35.346718>,  <35.027206, 34.473190, 35.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682583, 34.377777, 35.346718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481686, -0.105408, -0.869982,
		0.160281, -0.965398, 0.205712,
		-0.861562, -0.238530, -0.448124,
		34.424114, 34.306217, 35.212280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099770, 33.947117, 35.133232>,  <35.027206, 34.473190, 35.525967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099770, 33.947117, 35.133232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747631, 34.068790, 34.987648>,  <34.536350, 34.141796, 34.900299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747631, 34.068790, 34.987648>,  <35.099770, 33.947117, 35.133232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747631, 34.068790, 34.987648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376958, -0.017098, -0.926073,
		-0.287923, -0.952459, -0.099613,
		-0.880343, 0.304188, -0.363960,
		34.483528, 34.160046, 34.878460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817165, 33.471420, 34.645588>,  <35.099770, 33.947117, 35.133232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817165, 33.471420, 34.645588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647396, 33.816631, 34.536011>,  <34.545536, 34.023758, 34.470264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647396, 33.816631, 34.536011>,  <34.817165, 33.471420, 34.645588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647396, 33.816631, 34.536011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427441, -0.075745, -0.900865,
		-0.798224, -0.499439, -0.336747,
		-0.424420, 0.863032, -0.273942,
		34.520069, 34.075542, 34.453827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331573, 33.256432, 34.136551>,  <34.817165, 33.471420, 34.645588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331573, 33.256432, 34.136551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313709, 33.490677, 33.812809>,  <35.302990, 33.631226, 33.618565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313709, 33.490677, 33.812809>,  <35.331573, 33.256432, 34.136551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313709, 33.490677, 33.812809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998871, -0.013070, 0.045666,
		0.016164, 0.810483, 0.585539,
		-0.044665, 0.585616, -0.809357,
		35.300308, 33.666363, 33.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693764, 32.964375, 34.065723>,  <35.331573, 33.256432, 34.136551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693764, 32.964375, 34.065723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765560, 32.606457, 33.902199>,  <34.808640, 32.391708, 33.804085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765560, 32.606457, 33.902199>,  <34.693764, 32.964375, 34.065723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765560, 32.606457, 33.902199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661568, -0.417354, 0.623011,
		-0.728086, 0.158633, -0.666878,
		0.179495, -0.894791, -0.408816,
		34.819408, 32.338020, 33.779552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072472, 32.509567, 33.886192>,  <34.693764, 32.964375, 34.065723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072472, 32.509567, 33.886192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365372, 32.254295, 33.981300>,  <34.541111, 32.101131, 34.038364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365372, 32.254295, 33.981300>,  <34.072472, 32.509567, 33.886192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365372, 32.254295, 33.981300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611327, -0.462077, 0.642467,
		-0.300144, -0.615800, -0.728494,
		0.732252, -0.638181, 0.237765,
		34.585049, 32.062840, 34.052631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669140, 31.855667, 33.927177>,  <34.072472, 32.509567, 33.886192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669140, 31.855667, 33.927177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025753, 31.799894, 34.099560>,  <34.239723, 31.766430, 34.202991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025753, 31.799894, 34.099560>,  <33.669140, 31.855667, 33.927177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025753, 31.799894, 34.099560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429276, -0.563679, 0.705683,
		0.144528, -0.814140, -0.562394,
		0.891535, -0.139431, 0.430958,
		34.293213, 31.758064, 34.228848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810246, 31.116497, 34.006458>,  <33.669140, 31.855667, 33.927177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810246, 31.116497, 34.006458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040504, 31.300436, 34.276917>,  <34.178658, 31.410799, 34.439190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040504, 31.300436, 34.276917>,  <33.810246, 31.116497, 34.006458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040504, 31.300436, 34.276917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406312, -0.556722, 0.724549,
		0.709608, -0.691808, -0.133631,
		0.575644, 0.459850, 0.676145,
		34.213200, 31.438391, 34.479759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292999, 30.534477, 34.314621>,  <33.810246, 31.116497, 34.006458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292999, 30.534477, 34.314621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249619, 30.852932, 34.552750>,  <34.223591, 31.044004, 34.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249619, 30.852932, 34.552750>,  <34.292999, 30.534477, 34.314621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249619, 30.852932, 34.552750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090735, -0.604280, 0.791589,
		0.989952, 0.031832, 0.137771,
		-0.108450, 0.796136, 0.595320,
		34.217083, 31.091772, 34.731346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527935, 30.247616, 34.888237>,  <34.292999, 30.534477, 34.314621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527935, 30.247616, 34.888237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355961, 30.568043, 35.054825>,  <34.252777, 30.760300, 35.154778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355961, 30.568043, 35.054825>,  <34.527935, 30.247616, 34.888237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355961, 30.568043, 35.054825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079000, -0.492886, 0.866500,
		0.899395, 0.339641, 0.275195,
		-0.429938, 0.801067, 0.416467,
		34.226978, 30.808363, 35.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771721, 30.284166, 35.484695>,  <34.527935, 30.247616, 34.888237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771721, 30.284166, 35.484695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445210, 30.512342, 35.521114>,  <34.249302, 30.649248, 35.542965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445210, 30.512342, 35.521114>,  <34.771721, 30.284166, 35.484695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445210, 30.512342, 35.521114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240151, -0.478460, 0.844632,
		0.525377, 0.667587, 0.527547,
		-0.816276, 0.570442, 0.091050,
		34.200325, 30.683475, 35.548428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765114, 30.710602, 36.184208>,  <34.771721, 30.284166, 35.484695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765114, 30.710602, 36.184208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393948, 30.640951, 36.052361>,  <34.171246, 30.599161, 35.973251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393948, 30.640951, 36.052361>,  <34.765114, 30.710602, 36.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393948, 30.640951, 36.052361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224514, -0.444820, 0.867023,
		-0.297593, 0.878530, 0.373662,
		-0.927918, -0.174128, -0.329618,
		34.115574, 30.588713, 35.953476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298698, 30.884727, 36.755615>,  <34.765114, 30.710602, 36.184208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298698, 30.884727, 36.755615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071434, 30.671274, 36.505039>,  <33.935074, 30.543203, 36.354694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071434, 30.671274, 36.505039>,  <34.298698, 30.884727, 36.755615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071434, 30.671274, 36.505039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348961, -0.533176, 0.770681,
		-0.745263, 0.656476, 0.116715,
		-0.568163, -0.533631, -0.626441,
		33.900986, 30.511185, 36.317108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545963, 30.946785, 37.014954>,  <34.298698, 30.884727, 36.755615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545963, 30.946785, 37.014954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608818, 30.603374, 36.819717>,  <33.646530, 30.397327, 36.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608818, 30.603374, 36.819717>,  <33.545963, 30.946785, 37.014954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608818, 30.603374, 36.819717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434595, -0.503922, 0.746452,
		-0.886812, 0.094827, -0.452297,
		0.157139, -0.858528, -0.488095,
		33.655960, 30.345816, 36.673290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116901, 30.583002, 37.339439>,  <33.545963, 30.946785, 37.014954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116901, 30.583002, 37.339439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292763, 30.293962, 37.126064>,  <33.398277, 30.120539, 36.998039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292763, 30.293962, 37.126064>,  <33.116901, 30.583002, 37.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292763, 30.293962, 37.126064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426060, -0.690633, 0.584380,
		-0.790685, -0.029643, -0.611506,
		0.439649, -0.722597, -0.533443,
		33.424656, 30.077183, 36.966030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576065, 30.117353, 37.120289>,  <33.116901, 30.583002, 37.339439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576065, 30.117353, 37.120289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926453, 29.924593, 37.111835>,  <33.136684, 29.808937, 37.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926453, 29.924593, 37.111835>,  <32.576065, 30.117353, 37.120289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926453, 29.924593, 37.111835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346856, -0.659728, 0.666671,
		-0.335209, -0.576655, -0.745053,
		0.875971, -0.481901, -0.021131,
		33.189243, 29.780024, 37.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383213, 29.377201, 36.973919>,  <32.576065, 30.117353, 37.120289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383213, 29.377201, 36.973919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750309, 29.379919, 37.132767>,  <32.970566, 29.381550, 37.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750309, 29.379919, 37.132767>,  <32.383213, 29.377201, 36.973919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750309, 29.379919, 37.132767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331087, -0.539211, 0.774360,
		0.219393, -0.842143, -0.492607,
		0.917741, 0.006793, 0.397122,
		33.025631, 29.381956, 37.251904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310795, 28.824448, 37.306835>,  <32.383213, 29.377201, 36.973919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310795, 28.824448, 37.306835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659775, 28.977087, 37.428955>,  <32.869164, 29.068670, 37.502228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659775, 28.977087, 37.428955>,  <32.310795, 28.824448, 37.306835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659775, 28.977087, 37.428955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111306, -0.453142, 0.884462,
		0.475854, -0.805633, -0.352871,
		0.872453, 0.381598, 0.305301,
		32.921509, 29.091566, 37.520546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813927, 28.293125, 37.474922>,  <32.310795, 28.824448, 37.306835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813927, 28.293125, 37.474922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911198, 28.613096, 37.694366>,  <32.969563, 28.805079, 37.826035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911198, 28.613096, 37.694366>,  <32.813927, 28.293125, 37.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911198, 28.613096, 37.694366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196969, -0.513084, 0.835433,
		0.949772, -0.311221, 0.032789,
		0.243181, 0.799929, 0.548614,
		32.984154, 28.853075, 37.858952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214600, 28.072788, 37.973061>,  <32.813927, 28.293125, 37.474922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214600, 28.072788, 37.973061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086018, 28.423927, 38.115078>,  <33.008869, 28.634611, 38.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086018, 28.423927, 38.115078>,  <33.214600, 28.072788, 37.973061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086018, 28.423927, 38.115078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093330, -0.402489, 0.910655,
		0.942316, 0.259594, 0.211310,
		-0.321451, 0.877846, 0.355044,
		32.989582, 28.687281, 38.221592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716145, 28.180449, 38.583797>,  <33.214600, 28.072788, 37.973061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716145, 28.180449, 38.583797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388115, 28.408108, 38.607639>,  <33.191299, 28.544703, 38.621944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388115, 28.408108, 38.607639>,  <33.716145, 28.180449, 38.583797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388115, 28.408108, 38.607639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169329, -0.340822, 0.924753,
		0.546634, 0.748272, 0.375872,
		-0.820073, 0.569148, 0.059600,
		33.142094, 28.578852, 38.625519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754471, 28.476133, 39.235683>,  <33.716145, 28.180449, 38.583797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754471, 28.476133, 39.235683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369190, 28.502489, 39.131454>,  <33.138023, 28.518303, 39.068916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369190, 28.502489, 39.131454>,  <33.754471, 28.476133, 39.235683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369190, 28.502489, 39.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268753, -0.223734, 0.936864,
		0.003430, 0.972420, 0.233209,
		-0.963203, 0.065889, -0.260573,
		33.080231, 28.522257, 39.053284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424320, 28.791557, 39.798748>,  <33.754471, 28.476133, 39.235683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424320, 28.791557, 39.798748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122692, 28.634176, 39.588390>,  <32.941715, 28.539747, 39.462173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122692, 28.634176, 39.588390>,  <33.424320, 28.791557, 39.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122692, 28.634176, 39.588390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451230, -0.271475, 0.850114,
		-0.477249, 0.878348, 0.027173,
		-0.754072, -0.393455, -0.525898,
		32.896469, 28.516140, 39.430622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828621, 29.095406, 40.091305>,  <33.424320, 28.791557, 39.798748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828621, 29.095406, 40.091305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724331, 28.764078, 39.892948>,  <32.661758, 28.565281, 39.773933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724331, 28.764078, 39.892948>,  <32.828621, 29.095406, 40.091305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724331, 28.764078, 39.892948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483985, -0.332302, 0.809527,
		-0.835333, 0.451068, -0.314255,
		-0.260724, -0.828319, -0.495893,
		32.646114, 28.515583, 39.744179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150146, 28.913988, 40.318611>,  <32.828621, 29.095406, 40.091305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150146, 28.913988, 40.318611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281334, 28.562580, 40.179676>,  <32.360046, 28.351736, 40.096317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281334, 28.562580, 40.179676>,  <32.150146, 28.913988, 40.318611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281334, 28.562580, 40.179676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528958, -0.475404, 0.702990,
		-0.782716, -0.046830, -0.620615,
		0.327964, -0.878521, -0.347335,
		32.379723, 28.299025, 40.075474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588604, 28.457613, 40.296783>,  <32.150146, 28.913988, 40.318611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588604, 28.457613, 40.296783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898867, 28.205364, 40.286434>,  <32.085026, 28.054014, 40.280224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898867, 28.205364, 40.286434>,  <31.588604, 28.457613, 40.296783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898867, 28.205364, 40.286434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487966, -0.625181, 0.609129,
		-0.400306, -0.459851, -0.792649,
		0.775658, -0.630623, -0.025872,
		32.131565, 28.016178, 40.278671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335587, 27.802397, 40.223492>,  <31.588604, 28.457613, 40.296783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335587, 27.802397, 40.223492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701277, 27.735563, 40.371155>,  <31.920691, 27.695463, 40.459751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701277, 27.735563, 40.371155>,  <31.335587, 27.802397, 40.223492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701277, 27.735563, 40.371155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381701, -0.660897, 0.646158,
		0.136011, -0.731641, -0.667984,
		0.914224, -0.167085, 0.369157,
		31.975544, 27.685438, 40.481903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326862, 27.131277, 40.390770>,  <31.335587, 27.802397, 40.223492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326862, 27.131277, 40.390770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626959, 27.253675, 40.625206>,  <31.807016, 27.327114, 40.765869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626959, 27.253675, 40.625206>,  <31.326862, 27.131277, 40.390770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626959, 27.253675, 40.625206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332540, -0.591528, 0.734515,
		0.571447, -0.745963, -0.342034,
		0.750243, 0.305997, 0.586089,
		31.852032, 27.345474, 40.801033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453726, 26.580454, 40.818241>,  <31.326862, 27.131277, 40.390770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453726, 26.580454, 40.818241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677511, 26.859686, 40.996986>,  <31.811783, 27.027225, 41.104233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677511, 26.859686, 40.996986>,  <31.453726, 26.580454, 40.818241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677511, 26.859686, 40.996986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131425, -0.457601, 0.879391,
		0.818369, -0.550716, -0.164266,
		0.559463, 0.698078, 0.446865,
		31.845350, 27.069109, 41.131046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791368, 26.193863, 41.254433>,  <31.453726, 26.580454, 40.818241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791368, 26.193863, 41.254433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824818, 26.570225, 41.385704>,  <31.844887, 26.796041, 41.464466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824818, 26.570225, 41.385704>,  <31.791368, 26.193863, 41.254433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824818, 26.570225, 41.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177869, -0.309952, 0.933966,
		0.980494, -0.136476, 0.141438,
		0.083625, 0.940906, 0.328181,
		31.849905, 26.852497, 41.484158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205605, 26.265440, 41.917374>,  <31.791368, 26.193863, 41.254433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205605, 26.265440, 41.917374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976770, 26.593302, 41.905445>,  <31.839470, 26.790018, 41.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976770, 26.593302, 41.905445>,  <32.205605, 26.265440, 41.917374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976770, 26.593302, 41.905445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393411, -0.242315, 0.886855,
		0.719687, 0.519087, 0.461085,
		-0.572082, 0.819654, -0.029824,
		31.805145, 26.839197, 41.896500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462902, 26.601088, 42.497147>,  <32.205605, 26.265440, 41.917374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462902, 26.601088, 42.497147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083466, 26.709833, 42.432312>,  <31.855804, 26.775082, 42.393410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083466, 26.709833, 42.432312>,  <32.462902, 26.601088, 42.497147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083466, 26.709833, 42.432312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179507, -0.040301, 0.982931,
		0.260692, 0.961491, 0.087030,
		-0.948587, 0.271865, -0.162088,
		31.798889, 26.791393, 42.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961651, 26.904232, 42.925137>,  <32.462902, 26.601088, 42.497147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961651, 26.904232, 42.925137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237698, 26.658569, 43.078262>,  <33.403324, 26.511171, 43.170139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237698, 26.658569, 43.078262>,  <32.961651, 26.904232, 42.925137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237698, 26.658569, 43.078262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451560, -0.047939, -0.890952,
		0.565536, 0.787727, 0.244245,
		0.690117, -0.614157, 0.382817,
		33.444733, 26.474321, 43.193108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578728, 27.200470, 42.676743>,  <32.961651, 26.904232, 42.925137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578728, 27.200470, 42.676743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653847, 26.820648, 42.777206>,  <33.698917, 26.592756, 42.837482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653847, 26.820648, 42.777206>,  <33.578728, 27.200470, 42.676743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653847, 26.820648, 42.777206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617789, -0.084599, -0.781780,
		0.763590, 0.301979, 0.570736,
		0.187797, -0.949554, 0.251158,
		33.710186, 26.535782, 42.852554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324398, 27.104158, 42.772339>,  <33.578728, 27.200470, 42.676743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324398, 27.104158, 42.772339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191967, 26.737898, 42.681152>,  <34.112507, 26.518141, 42.626442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191967, 26.737898, 42.681152>,  <34.324398, 27.104158, 42.772339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191967, 26.737898, 42.681152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775497, -0.126402, -0.618568,
		0.537578, -0.381582, 0.751934,
		-0.331081, -0.915651, -0.227965,
		34.092644, 26.463203, 42.612762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943253, 26.731598, 42.718777>,  <34.324398, 27.104158, 42.772339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943253, 26.731598, 42.718777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653572, 26.534912, 42.525383>,  <34.479763, 26.416901, 42.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653572, 26.534912, 42.525383>,  <34.943253, 26.731598, 42.718777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653572, 26.534912, 42.525383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605723, -0.118482, -0.786804,
		0.329598, -0.862659, 0.383647,
		-0.724199, -0.491713, -0.483481,
		34.436314, 26.387398, 42.380341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325500, 26.161327, 42.363400>,  <34.943253, 26.731598, 42.718777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325500, 26.161327, 42.363400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963757, 26.222557, 42.204052>,  <34.746708, 26.259295, 42.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963757, 26.222557, 42.204052>,  <35.325500, 26.161327, 42.363400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963757, 26.222557, 42.204052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408492, 0.040299, -0.911872,
		-0.123530, -0.987393, -0.098974,
		-0.904364, 0.153074, -0.398364,
		34.692448, 26.268478, 42.084541>
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
